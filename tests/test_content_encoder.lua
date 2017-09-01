return function()
	local content_encoder
	
	describe("content encoder", function()
		before(function()
			content_encoder = require "aws-sdk.core.content_encoder"
		end)

		after(function()
			package.loaded["aws-sdk.core.content_encoder"] = nil
		end)

		it("should encode data to json when protocol is set to 'json'", function()
			local tests = {
				{
					name = "empty table", data = {}, expected = "{}",
				},
				{
					name = "some data", data = { "foo", "bar" }, expected = '["foo","bar"]',
				},
			}
			
			for _,test in pairs(tests) do
				local actual = content_encoder.encode("json", test.data)
				assert(actual == test.expected, ("Expected '%s' but got '%s' when encoding data for test %s"):format(test.expected, tostring(actual), test.name))
			end			
		end)

		it("should handle an unknown protocol", function()
			local data = {}
			local actual = content_encoder.encode("foobar", data)
			assert(actual == data, "Expected to get the same data back when the protocol is unknown")
		end)
	end)
end