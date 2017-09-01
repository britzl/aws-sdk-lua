local sync = require "aws-sdk.utils.sync"

local M = {}

local credentials = {}




function M.provider(provider)
	assert(provider.get, "Expected provider to have a get function")
	assert(provider.refresh, "Expected provider to have a refresh function")
	credentials.provider = provider
end

function M.refresh_async()
	assert(credentials.provider, "You must set a credentials provider before refreshing credentials")
	credentials.provider.refresh(function(access_key, secret_access_key, security_token)
		M.set(access_key, secret_access_key, security_token)
	end)
end

function M.refresh_sync()
	assert(credentials.provider, "You must set a credentials provider before refreshing credentials")
	M.set(sync(function(done)
		credentials.provider.refresh(done)
	end))
end

function M.set(access_key, secret_access_key, security_token)
	print("set", access_key, secret_access_key)
	assert(access_key, "You must provide an access key")
	assert(secret_access_key, "You must provide a secret access key")
	credentials.access_key = access_key
	credentials.secret_access_key = secret_access_key
	credentials.security_token = security_token
end

function M.get()
	return credentials.access_key, credentials.secret_access_key, credentials.security_token
end

function M.is_empty()
	return credentials.access_key == nil and credentials.secret_access_key == nil
end

return M
