--- Module to manage the credentials used when communicating with AWS services

local sync = require "aws-sdk.utils.sync"

local M = {}

local credentials = {}


--- Set a credentials provider
-- Use one of the providers in the credentials folder or create your own
-- @param provider A credentials provider. Must provide the functions get and refresh
function M.provider(provider)
	assert(provider.get, "Expected provider to have a get function")
	assert(provider.refresh, "Expected provider to have a refresh function")
	credentials.provider = provider
end

--- Refresh credentials from the provider async
function M.refresh_async()
	assert(credentials.provider, "You must set a credentials provider before refreshing credentials")
	credentials.provider.refresh(function(access_key, secret_access_key, security_token)
		M.set(access_key, secret_access_key, security_token)
	end)
end

--- Refresh credentials from the provider and wait until done
function M.refresh_sync()
	assert(credentials.provider, "You must set a credentials provider before refreshing credentials")
	M.set(sync(function(done)
		credentials.provider.refresh(done)
	end))
end

--- Manually set credentials
-- @param access_key
-- @param secret_access_key
-- @param security_token Optional security token
function M.set(access_key, secret_access_key, security_token)
	assert(access_key, "You must provide an access key")
	assert(secret_access_key, "You must provide a secret access key")
	credentials.access_key = access_key
	credentials.secret_access_key = secret_access_key
	credentials.security_token = security_token
end

--- Get credentials
-- Credentials must either have been set manually or set from the assigned
-- provider as a result of calling refresh_sync() or refresh_async()
-- @return access_key
-- @return secret_access_key
-- @return security_token
function M.get()
	return credentials.access_key, credentials.secret_access_key, credentials.security_token
end


--- Check if credentials exist
-- @return true if credentials exist
function M.is_empty()
	return credentials.access_key == nil and credentials.secret_access_key == nil
end

return M
