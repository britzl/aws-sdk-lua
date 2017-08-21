local M = {}

local credentials = {}

function M.set(access_key, secret_access_key)
	assert(access_key, "You must provide an access key")
	assert(secret_access_key, "You must provide a secret access key")
	credentials.access_key = access_key
	credentials.secret_access_key = secret_access_key
end

function M.get()
	return credentials.access_key, credentials.secret_access_key
end

return M
