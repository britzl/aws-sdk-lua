return function()
	local content_type
	
	describe("content type", function()
		before(function()
			content_type = require "aws-sdk.core.content_type"
		end)

		after(function()
			package.loaded["aws-sdk.core.content_type"] = nil
		end)

		it("should handle unknown protocols without crashing", function()
			local ct, err = content_type.from_protocol("foobar", "-1234")
			assert(ct == nil and err, "Expected no content type and an error")
		end)
		
		it("should handle protocol 'json'", function()
			assert(content_type.from_protocol("json", "1.1") == content_type.AMZN_JSON_CONTENT_TYPE_1_1)
			assert(content_type.from_protocol("json", "1.2") == content_type.AMZN_JSON_CONTENT_TYPE_1_0)
			assert(content_type.from_protocol("json", "1.0") == content_type.AMZN_JSON_CONTENT_TYPE_1_0)
		end)
		
		it("should handle protocol 'rest-json'", function()
			assert(content_type.from_protocol("rest-json", "1.1") == content_type.AMZN_JSON_CONTENT_TYPE_1_1)
			assert(content_type.from_protocol("rest-json", "1.2") == content_type.AMZN_JSON_CONTENT_TYPE_1_0)
			assert(content_type.from_protocol("rest-json", "1.0") == content_type.AMZN_JSON_CONTENT_TYPE_1_0)
		end)
		
		it("should handle protocol 'rest-xml'", function()
			assert(content_type.from_protocol("rest-xml", "1.0") == content_type.AMZN_XML_CONTENT_TYPE)
			assert(content_type.from_protocol("rest-xml", "1.1") == content_type.AMZN_XML_CONTENT_TYPE)
			assert(content_type.from_protocol("rest-xml", nil) == content_type.AMZN_XML_CONTENT_TYPE)
		end)
		
		it("should handle protocol 'query'", function()
			assert(content_type.from_protocol("query", "1.0") == content_type.FORM_CONTENT_TYPE)
			assert(content_type.from_protocol("query", "1.1") == content_type.FORM_CONTENT_TYPE)
			assert(content_type.from_protocol("query", nil) == content_type.FORM_CONTENT_TYPE)
		end)
	end)
end