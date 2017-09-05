local json = require "aws-sdk.utils.json"

local M = {}


function M.from_defold_game_project()
	local provider = {}

	local access_key_id
	local secret_access_key

	function provider.get()
		return access_key_id, secret_access_key
	end

	function provider.refresh(cb)
		access_key_id = sys.get_config("aws.access_key_id")
		secret_access_key = sys.get_config("aws.secret_access_key")
		assert(access_key_id and secret_access_key, "aws.access_key_id or aws.secret_access_key missing")
		if cb then cb(access_key_id, secret_access_key) end
	end

	return provider
end


function M.from_env(prefix)
	prefix = prefix or "AWS_"

	local provider = {}

	local access_key_id
	local secret_access_key

	function provider.get()
		return access_key_id, secret_access_key
	end

	function provider.refresh(cb)
		access_key_id = os.getenv(prefix .. "ACCESS_KEY_ID")
		secret_access_key = os.getenv(prefix .. "SECRET_ACCESS_KEY")
		assert(access_key_id and secret_access_key, ("%sACCESS_KEY_ID or %sSECRET_ACCESS_KEY missing"):format(prefix, prefix))
		if cb then cb(access_key_id, secret_access_key) end
	end

	return provider
end


function M.from_json_file(filename)
	local provider = {}

	local access_key_id
	local secret_access_key

	function provider.get()
		return access_key_id, secret_access_key
	end

	function provider.refresh(cb)
		local ok, accessKeyId, secretAccessKey = pcall(function()
			local f = io.open(filename, "rb")
			local data = json.decode(f:read("*a"))
			f:close()
			return data.accessKeyId, data.secretAccessKey
		end)
		access_key_id = ok and accessKeyId
		secret_access_key = ok and secretAccessKey
		assert(access_key_id and secret_access_key, ("Unable to read credentials from %s"):format(filename))
		if cb then cb(access_key_id, secret_access_key) end
	end

	return provider
end


return M
