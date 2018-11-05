local cognito = require "aws-sdk.cognitoidentity"

local M = {}

local function refresh(identity_id, cb)
	local input = cognito.GetCredentialsForIdentityInput({ IdentityId = identity_id })
	cognito.GetCredentialsForIdentityAsync(input, function(response, error_message)
		print("GetCredentialsForIdentityInput")
		pprint(response)
		if not error_message then
			cb(response)
		else
			cb(nil, error_message)
		end
	end)
end



function M.from_cognito_identity(identity_id)
	assert(identity_id, "You must provide an identity id")

	local provider = {}

	local access_key_id
	local secret_access_key
	local session_token

	function provider.get()
		return access_key_id, secret_access_key, session_token
	end

	function provider.refresh(cb)
		refresh(identity_id, function(response, error_message)
			if not error_message then
				access_key_id = response.Credentials.AccessKeyId
				secret_access_key = response.Credentials.SecretKey
				session_token = response.Credentials.SessionToken
				if cb then cb(access_key_id, secret_access_key, session_token) end
			else
				if cb then cb(nil, nil) end
			end
		end)
	end

	return provider
end


function M.from_cognito_identity_pool(identity_pool_id)
	assert(identity_pool_id, "You must provide an identity pool id")

	local provider = {}

	local access_key_id
	local secret_access_key
	local session_token

	function provider.get()
		return access_key_id, secret_access_key, session_token
	end

	function provider.refresh(cb)
		local get_id_input = cognito.GetIdInput({ IdentityPoolId = identity_pool_id })
		cognito.GetIdAsync(get_id_input, function(response, error_message)
			if error_message then
				if cb then cb(nil, error_message) end
				return
			end
			refresh(response.IdentityId, function(response, error_message)
				if not error_message then
					access_key_id = response.Credentials.AccessKeyId
					secret_access_key = response.Credentials.SecretKey
					session_token = response.Credentials.SessionToken
					if cb then cb(access_key_id, secret_access_key, session_token) end
				else
					if cb then cb(nil, nil) end
				end
			end)
		end)
	end


	return provider
end


return M
