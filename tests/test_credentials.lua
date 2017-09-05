local mock = require "deftest.mock"

return function()
	local credentials

	local ok_provider = { get = function() end, refresh = function() end }
	local bad_provider1 = { get = function() end }
	local bad_provider2 = { refresh = function() end }
	local bad_provider3 = {}

	describe("credentials", function()
		before(function()
			credentials = require "aws-sdk.core.credentials"
			mock.mock(ok_provider)
		end)

		after(function()
			package.loaded["aws-sdk.core.credentials"] = nil
			mock.unmock(ok_provider)
		end)

		it("should accept valid credential providers and reject invalid ones", function()
			assert_not_error(function() credentials.provider(ok_provider) end)
			assert_error(function() credentials.provider(bad_provider1) end)
			assert_error(function() credentials.provider(bad_provider2) end)
			assert_error(function() credentials.provider(bad_provider3) end)
		end)
		
		it("should be possible to refresh credentials from provider", function()
			local provider = {
				get = function() end,
				refresh = function(fn)
					fn("fooaccess", "barsecret", "token")
				end
			}
			
			mock.mock(provider)
			credentials.provider(provider)
			credentials.refresh_sync()
			assert(provider.refresh.calls == 1)
			credentials.refresh_sync()
			assert(provider.refresh.calls == 2)

			local access, secret, token = credentials.get()
			assert(access == "fooaccess")
			assert(secret == "barsecret")
			assert(token == "token")
		end)
		
		it("should be possible to set credentials manually", function()
			credentials.set("fooaccess", "barsecret", "token")
			local access, secret, token = credentials.get()
			assert(access == "fooaccess")
			assert(secret == "barsecret")
			assert(token == "token")
		end)
		
		it("should be possible to replace existing credentials", function()
			credentials.set("fooaccess", "barsecret", "token")
			credentials.set("a", "b", "c")
			local access, secret, token = credentials.get()
			assert(access == "a" and secret == "b" and token == "c")
		end)
		
		it("should be possible to set credentials manually and omitt token", function()
			credentials.set("fooaccess", "barsecret")
			local access, secret, token = credentials.get()
			assert(access == "fooaccess")
			assert(secret == "barsecret")
			assert(token == nil)
		end)
		
		it("should be possible to replace existing credentials and omitt token", function()
			credentials.set("fooaccess", "barsecret", "token")
			credentials.set("a", "b")
			local access, secret, token = credentials.get()
			assert(access == "a" and secret == "b" and token == nil)
		end)
		
		
		it("should be possible to check if no credentials exists", function()
			assert(credentials.is_empty())
			credentials.set("fooaccess", "barsecret", "token")
			assert(not credentials.is_empty())
		end)
	end)
end