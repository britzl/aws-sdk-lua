local mock = require "deftest.mock"
local mockfs = require "deftest.mock.fs"

return function()
	local basic

	describe("basic credentials", function()
		before(function()
			basic = require "aws-sdk.core.credentials.basic"
			mock.mock(sys)
			mock.mock(os)
			mockfs.mock()
		end)

		after(function()
			package.loaded["aws-sdk.core.credentials.basic"] = nil
			mock.unmock(sys)
			mock.unmock(os)
			mockfs.unmock()
		end)

		it("should should be able to read credentials from game.project", function()
			sys.get_config.replace(function(key, default)
				if key == "aws.access_key_id" then
					return "fooaccess"
				elseif key == "aws.secret_access_key" then
					return "foosecret"
				else
					return sys.get_config.original(key, default)
				end
			end)
			
			local provider = basic.from_defold_game_project()
			assert(provider.get and provider.refresh, "The provider doesn't have a get and/or refresh function")

			provider.refresh()
			local access_key_id, secret_access_key, token = provider.get()
			assert(access_key_id == "fooaccess", "Problem getting access_key_id")
			assert(secret_access_key == "foosecret", "Problem getting secret_access_key")
			assert(not token, "Didn't expect a token")
		end)
		
		it("should fail to refresh credentials from game.project if none are defined", function()
			sys.get_config.replace(function(key, default)
				return nil
			end)
			local provider = basic.from_defold_game_project()
			assert_error(provider.refresh)
		end)
		
		it("should be able to read credentials from system environment with default prefix", function()
			os.getenv.replace(function(key)
				if key == "AWS_ACCESS_KEY_ID" then
					return "fooaccess"
				elseif key == "AWS_SECRET_ACCESS_KEY" then
					return "foosecret"
				else
					return os.getenv.original(key)
				end
			end)

			local provider = basic.from_env()
			assert(provider.get and provider.refresh, "The provider doesn't have a get and/or refresh function")

			provider.refresh()
			local access_key_id, secret_access_key, token = provider.get()
			assert(access_key_id == "fooaccess", "Problem getting access_key_id")
			assert(secret_access_key == "foosecret", "Problem getting secret_access_key")
			assert(not token, "Didn't expect a token")
		end)
		
		it("should be able to read credentials from system environment with a custom prefix", function()
			os.getenv.replace(function(key)
				if key == "PREFIX_ACCESS_KEY_ID" then
					return "fooaccess"
				elseif key == "PREFIX_SECRET_ACCESS_KEY" then
					return "foosecret"
				else
					return os.getenv.original(key)
				end
			end)

			local provider = basic.from_env("PREFIX_")
			assert(provider.get and provider.refresh, "The provider doesn't have a get and/or refresh function")

			provider.refresh()
			local access_key_id, secret_access_key, token = provider.get()
			assert(access_key_id == "fooaccess", "Problem getting access_key_id")
			assert(secret_access_key == "foosecret", "Problem getting secret_access_key")
			assert(not token, "Didn't expect a token")
		end)
			
		it("should fail to refresh credentials from system environment if none are set", function()
			os.getenv.replace(function(key)
				return nil
			end)
			local provider = basic.from_env()
			assert_error(provider.refresh)
		end)
	
		it("should be able to read credentials from a json file", function()
			mockfs.set_file("credentials", '{ "accessKeyId": "fooaccess", "secretAccessKey": "foosecret" }')
			
			local provider = basic.from_json_file("credentials")
			assert(provider.get and provider.refresh, "The provider doesn't have a get and/or refresh function")

			provider.refresh()
			local access_key_id, secret_access_key, token = provider.get()
			assert(access_key_id == "fooaccess", "Problem getting accessKeyId from json")
			assert(secret_access_key == "foosecret", "Problem getting secretAccessKey from json")
			assert(not token, "Didn't expect a token")
		end)
		
		it("should fail to refresh credentials from json file if file doesn't exist", function()
			mockfs.set_file("credentials", nil)
			local provider = basic.from_json_file("credentials")
			assert_error(provider.refresh)
		end)
	end)
end