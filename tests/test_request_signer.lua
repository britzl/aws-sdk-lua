local mock = require "deftest.mock"
local request_headers = require "aws-sdk.core.request_headers"
local strut = require "aws-sdk.utils.strut"





return function()
	local request_signer
	local credentials
	
	
	describe("request_signer", function()
		before(function()
			request_signer = require "aws-sdk.core.request_signer"
			credentials = require "aws-sdk.core.credentials"

			mock.mock(request_signer)
			mock.mock(credentials)
		end)

		after(function()
			mock.unmock(request_signer)
			mock.unmock(credentials)
			package.loaded["aws-sdk.core.request_signer"] = nil
			package.loaded["aws-sdk.core.credentials"] = nil
		end)

		-- http://docs.aws.amazon.com/general/latest/gr/signature-v4-examples.html#signature-v4-examples-other
		it("should create a valid signature key", function()
			local key = "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"
			local date_stamp = "20120215"
			local region_name = "us-east-1"
			local service_name = "iam"
			local kSigning, kService, kRegion, kDate = request_signer.get_signature_key(key, date_stamp, region_name, service_name)
			assert(kSigning == "f4780e2d9f65fa895f9c67b32ce1baf0b0d8a43505a000a1a9e090d414db404d")
			assert(kService == "f72cfd46f26bc4643f06a11eabb6c0ba18780c19a8da0c31ace671265e3c87fa")
			assert(kRegion == "69daa0209cd9c5ff5c8ced464a696fd4252e981430b10e3d3fd8e2f197d7a70c")
			assert(kDate == "969fbb94feb542b71ede6f87fe4d5fa29c789342b0f407474670f0c2489e0a0d")
		end)
	
		
		local function run_test(path, name)
			local request = io.open(path .. "/" .. name .. "/" .. name .. ".req", "rb"):read("*a")
			local expected_authorization = io.open(path .. "/" .. name .. "/" .. name .. ".authz", "rb"):read("*a")
			
			credentials.get.replace(function()
				return "AKIDEXAMPLE", "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"
			end)

			local lines = {}
			if request:sub(-1) ~= "\n" then request = request .. "\n" end
			for line in request:gmatch("(.-)\n") do
				table.insert(lines, line)
			end

			local method, uri, version = table.remove(lines, 1):match("(.*) (.*) (.*)")
			assert(method and uri and version, "Unable to split request header")
			local headers = {}
			while true do
				local line = table.remove(lines, 1)
				if not line or line == "" then
					break
				else
					local key, value = line:match("(.*):(.*)")
					key = strut.trim(key)
					value = strut.trim(value)
					if not headers[key] then
						headers[key] = value
					else
						headers[key] = headers[key] .. "," .. value
					end
				end
			end
			local post_data = table.concat(lines, "\n")
				
			local authorization = request_signer.sign_request_v4(method, uri, post_data, headers, "service", "us-east-1")
			return authorization == expected_authorization,
				("%s:\nExpected %s\nActual:     %s"):format(name, expected_authorization, authorization)
		end
				
		it("should sign POST requests properly", function()
			assert(run_test("tests/aws-sig-v4-test-suite", "post-header-key-case"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-header-key-sort"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-header-value-case"))
			assert(run_test("tests/aws-sig-v4-test-suite/post-sts-token", "post-sts-header-after"))
			assert(run_test("tests/aws-sig-v4-test-suite/post-sts-token", "post-sts-header-before"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-vanilla"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-vanilla-empty-query-value"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-vanilla-query"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-x-www-form-urlencoded"))
			assert(run_test("tests/aws-sig-v4-test-suite", "post-x-www-form-urlencoded-parameters"))
		end)
				
		it("should sign GET requests properly", function()
			assert(run_test("tests/aws-sig-v4-test-suite", "get-header-key-duplicate"))
			--assert(run_test("tests/aws-sig-v4-test-suite", "get-header-value-multiline"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-header-value-order"))
			--assert(run_test("tests/aws-sig-v4-test-suite", "get-header-value-trim"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-unreserved"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-utf8"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-empty-query-key"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-query"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-query-order-key"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-query-order-key-case"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-query-order-value"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-query-unreserved"))
			assert(run_test("tests/aws-sig-v4-test-suite", "get-vanilla-utf8-query"))
		end)
	end)
end