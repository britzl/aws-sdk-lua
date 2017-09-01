local mock = require "deftest.mock"

return function()
	local credentials

	local ok_provider = { get = function() end, refresh = function() end }
	local bad_provider1 = { get = function() end }
	local bad_provider2 = { refresh = function() end }
	local bad_provider3 = {}

	describe("content type", function()
		before(function()
			credentials = require "aws-sdk.core.credentials"
			mock.mock(ok_provider)
		end)

		after(function()
			package.loaded["aws-sdk.core.credentials"] = nil
			mock.unmock(ok_provider)
		end)

		it("should accept valid credential providers and reject invalid ones", function()
			local ok, err = pcall(function() credentials.provider(ok_provider) end)
			assert(ok and not err)
			local ok, err = pcall(function() credentials.provider(bad_provider1) end)
			assert(not ok and err)
			local ok, err = pcall(function() credentials.provider(bad_provider2) end)
			assert(not ok and err)
			local ok, err = pcall(function() credentials.provider(bad_provider3) end)
			assert(not ok and err)
		end)
		
		it("should refresh credentials upon request", function()
			local provider = {
				get = function() end,
				refresh = function(fn)
					fn("fooaccess", "barsecret", "token")
				end
			}
			
			credentials.provider(provider)
			credentials.refresh_sync()
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
		
		
		it("should be possible to check if no credentials exists", function()
			assert(credentials.is_empty())
		end)
	end)
end