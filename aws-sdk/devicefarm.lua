--- GENERATED CODE - DO NOT MODIFY
-- AWS Device Farm (devicefarm-2015-06-23)

local M = {}

M.metadata = {
	api_version = "2015-06-23",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "devicefarm",
	service_abbreviation = "",
	service_full_name = "AWS Device Farm",
	signature_version = "v4",
	target_prefix = "DeviceFarm_20150623",
	timestamp_format = "",
	global_endpoint = "",
	uid = "devicefarm-2015-06-23",
}

local keys = {}
local asserts = {}

keys.ListUploadsRequest = { ["nextToken"] = true, ["type"] = true, ["arn"] = true, nil }

function asserts.AssertListUploadsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUploadsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then asserts.AssertUploadType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUploadsRequest[k], "ListUploadsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUploadsRequest
-- <p>Represents a request to the list uploads operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * type [UploadType] <p>The type of upload.</p> <p>Must be one of the following values:</p> <ul> <li> <p>ANDROID_APP: An Android upload.</p> </li> <li> <p>IOS_APP: An iOS upload.</p> </li> <li> <p>WEB_APP: A web appliction upload.</p> </li> <li> <p>EXTERNAL_DATA: An external data upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>CALABASH_TEST_PACKAGE: A Calabash test package upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.</p> </li> <li> <p>UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.</p> </li> <li> <p>UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.</p> </li> <li> <p>XCTEST_TEST_PACKAGE: An XCode test package upload.</p> </li> <li> <p>XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_SPEC: An Appium Java JUnit test spec upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_SPEC: An Appium Java TestNG test spec upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_SPEC: An Appium Python test spec upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC: An Appium Java JUnit test spec upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC: An Appium Java TestNG test spec upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_SPEC: An Appium Python test spec upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_SPEC: An instrumentation test spec upload.</p> </li> <li> <p>XCTEST_UI_TEST_SPEC: An XCode UI test spec upload.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list uploads.</p>
-- Required key: arn
-- @return ListUploadsRequest structure as a key-value pair table
function M.ListUploadsRequest(args)
	assert(args, "You must provide an argument table when creating ListUploadsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["type"] = args["type"],
		["arn"] = args["arn"],
	}
	asserts.AssertListUploadsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesRequest[k], "ListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesRequest
-- <p>Represents the result of a list devices request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project.</p>
-- @return ListDevicesRequest structure as a key-value pair table
function M.ListDevicesRequest(args)
	assert(args, "You must provide an argument table when creating ListDevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListDevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectRequest[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
-- <p>Represents a request to the delete project operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm project you wish to delete.</p>
-- Required key: arn
-- @return DeleteProjectRequest structure as a key-value pair table
function M.DeleteProjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RenewOfferingResult = { ["offeringTransaction"] = true, nil }

function asserts.AssertRenewOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewOfferingResult to be of type 'table'")
	if struct["offeringTransaction"] then asserts.AssertOfferingTransaction(struct["offeringTransaction"]) end
	for k,_ in pairs(struct) do
		assert(keys.RenewOfferingResult[k], "RenewOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewOfferingResult
-- <p>The result of a renewal offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringTransaction [OfferingTransaction] <p>Represents the status of the offering transaction for the renewal.</p>
-- @return RenewOfferingResult structure as a key-value pair table
function M.RenewOfferingResult(args)
	assert(args, "You must provide an argument table when creating RenewOfferingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringTransaction"] = args["offeringTransaction"],
	}
	asserts.AssertRenewOfferingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSamplesRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListSamplesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSamplesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSamplesRequest[k], "ListSamplesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSamplesRequest
-- <p>Represents a request to the list samples operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list samples.</p>
-- Required key: arn
-- @return ListSamplesRequest structure as a key-value pair table
function M.ListSamplesRequest(args)
	assert(args, "You must provide an argument table when creating ListSamplesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListSamplesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceMinutes = { ["unmetered"] = true, ["total"] = true, ["metered"] = true, nil }

function asserts.AssertDeviceMinutes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceMinutes to be of type 'table'")
	if struct["unmetered"] then asserts.AssertDouble(struct["unmetered"]) end
	if struct["total"] then asserts.AssertDouble(struct["total"]) end
	if struct["metered"] then asserts.AssertDouble(struct["metered"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceMinutes[k], "DeviceMinutes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceMinutes
-- <p>Represents the total (metered or unmetered) minutes used by the resource to run tests. Contains the sum of minutes consumed by all children.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * unmetered [Double] <p>When specified, represents only the sum of unmetered minutes used by the resource to run tests.</p>
-- * total [Double] <p>When specified, represents the total minutes used by the resource to run tests.</p>
-- * metered [Double] <p>When specified, represents only the sum of metered minutes used by the resource to run tests.</p>
-- @return DeviceMinutes structure as a key-value pair table
function M.DeviceMinutes(args)
	assert(args, "You must provide an argument table when creating DeviceMinutes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["unmetered"] = args["unmetered"],
		["total"] = args["total"],
		["metered"] = args["metered"],
	}
	asserts.AssertDeviceMinutes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseOfferingResult = { ["offeringTransaction"] = true, nil }

function asserts.AssertPurchaseOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingResult to be of type 'table'")
	if struct["offeringTransaction"] then asserts.AssertOfferingTransaction(struct["offeringTransaction"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseOfferingResult[k], "PurchaseOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingResult
-- <p>The result of the purchase offering (e.g., success or failure).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringTransaction [OfferingTransaction] <p>Represents the offering transaction for the purchase result.</p>
-- @return PurchaseOfferingResult structure as a key-value pair table
function M.PurchaseOfferingResult(args)
	assert(args, "You must provide an argument table when creating PurchaseOfferingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringTransaction"] = args["offeringTransaction"],
	}
	asserts.AssertPurchaseOfferingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUploadResult = { ["upload"] = true, nil }

function asserts.AssertCreateUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUploadResult to be of type 'table'")
	if struct["upload"] then asserts.AssertUpload(struct["upload"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUploadResult[k], "CreateUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUploadResult
-- <p>Represents the result of a create upload request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * upload [Upload] <p>The newly created upload.</p>
-- @return CreateUploadResult structure as a key-value pair table
function M.CreateUploadResult(args)
	assert(args, "You must provide an argument table when creating CreateUploadResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["upload"] = args["upload"],
	}
	asserts.AssertCreateUploadResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Test = { ["status"] = true, ["name"] = true, ["created"] = true, ["started"] = true, ["deviceMinutes"] = true, ["stopped"] = true, ["result"] = true, ["message"] = true, ["type"] = true, ["arn"] = true, ["counters"] = true, nil }

function asserts.AssertTest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Test to be of type 'table'")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["started"] then asserts.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then asserts.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then asserts.AssertDateTime(struct["stopped"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertTestType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then asserts.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Test[k], "Test contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Test
-- <p>Represents a condition that is evaluated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The test's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- * name [Name] <p>The test's name.</p>
-- * created [DateTime] <p>When the test was created.</p>
-- * started [DateTime] <p>The test's start time.</p>
-- * deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test.</p>
-- * stopped [DateTime] <p>The test's stop time.</p>
-- * result [ExecutionResult] <p>The test's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * message [Message] <p>A message about the test's result.</p>
-- * type [TestType] <p>The test's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The test's ARN.</p>
-- * counters [Counters] <p>The test's result counters.</p>
-- @return Test structure as a key-value pair table
function M.Test(args)
	assert(args, "You must provide an argument table when creating Test")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["created"] = args["created"],
		["started"] = args["started"],
		["deviceMinutes"] = args["deviceMinutes"],
		["stopped"] = args["stopped"],
		["result"] = args["result"],
		["message"] = args["message"],
		["type"] = args["type"],
		["arn"] = args["arn"],
		["counters"] = args["counters"],
	}
	asserts.AssertTest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Suite = { ["status"] = true, ["name"] = true, ["created"] = true, ["started"] = true, ["deviceMinutes"] = true, ["stopped"] = true, ["result"] = true, ["message"] = true, ["type"] = true, ["arn"] = true, ["counters"] = true, nil }

function asserts.AssertSuite(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Suite to be of type 'table'")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["started"] then asserts.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then asserts.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then asserts.AssertDateTime(struct["stopped"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertTestType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then asserts.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Suite[k], "Suite contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Suite
-- <p>Represents a collection of one or more tests.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The suite's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- * name [Name] <p>The suite's name.</p>
-- * created [DateTime] <p>When the suite was created.</p>
-- * started [DateTime] <p>The suite's start time.</p>
-- * deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test suite.</p>
-- * stopped [DateTime] <p>The suite's stop time.</p>
-- * result [ExecutionResult] <p>The suite's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * message [Message] <p>A message about the suite's result.</p>
-- * type [TestType] <p>The suite's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The suite's ARN.</p>
-- * counters [Counters] <p>The suite's result counters.</p>
-- @return Suite structure as a key-value pair table
function M.Suite(args)
	assert(args, "You must provide an argument table when creating Suite")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["created"] = args["created"],
		["started"] = args["started"],
		["deviceMinutes"] = args["deviceMinutes"],
		["stopped"] = args["stopped"],
		["result"] = args["result"],
		["message"] = args["message"],
		["type"] = args["type"],
		["arn"] = args["arn"],
		["counters"] = args["counters"],
	}
	asserts.AssertSuite(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CPU = { ["frequency"] = true, ["architecture"] = true, ["clock"] = true, nil }

function asserts.AssertCPU(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CPU to be of type 'table'")
	if struct["frequency"] then asserts.AssertString(struct["frequency"]) end
	if struct["architecture"] then asserts.AssertString(struct["architecture"]) end
	if struct["clock"] then asserts.AssertDouble(struct["clock"]) end
	for k,_ in pairs(struct) do
		assert(keys.CPU[k], "CPU contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CPU
-- <p>Represents the amount of CPU that an app is using on a physical device.</p> <p>Note that this does not represent system-wide CPU usage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * frequency [String] <p>The CPU's frequency.</p>
-- * architecture [String] <p>The CPU's architecture, for example x86 or ARM.</p>
-- * clock [Double] <p>The clock speed of the device's CPU, expressed in hertz (Hz). For example, a 1.2 GHz CPU is expressed as 1200000000.</p>
-- @return CPU structure as a key-value pair table
function M.CPU(args)
	assert(args, "You must provide an argument table when creating CPU")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["frequency"] = args["frequency"],
		["architecture"] = args["architecture"],
		["clock"] = args["clock"],
	}
	asserts.AssertCPU(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUploadResult = { nil }

function asserts.AssertDeleteUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUploadResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUploadResult[k], "DeleteUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUploadResult
-- <p>Represents the result of a delete upload request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUploadResult structure as a key-value pair table
function M.DeleteUploadResult(args)
	assert(args, "You must provide an argument table when creating DeleteUploadResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUploadResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRemoteAccessSessionResult = { nil }

function asserts.AssertDeleteRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRemoteAccessSessionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRemoteAccessSessionResult[k], "DeleteRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRemoteAccessSessionResult
-- <p>The response from the server when a request is made to delete the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRemoteAccessSessionResult structure as a key-value pair table
function M.DeleteRemoteAccessSessionResult(args)
	assert(args, "You must provide an argument table when creating DeleteRemoteAccessSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteRemoteAccessSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRemoteAccessSessionsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListRemoteAccessSessionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRemoteAccessSessionsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRemoteAccessSessionsRequest[k], "ListRemoteAccessSessionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRemoteAccessSessionsRequest
-- <p>Represents the request to return information about the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.</p>
-- Required key: arn
-- @return ListRemoteAccessSessionsRequest structure as a key-value pair table
function M.ListRemoteAccessSessionsRequest(args)
	assert(args, "You must provide an argument table when creating ListRemoteAccessSessionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListRemoteAccessSessionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListProjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsRequest[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
-- <p>Represents a request to the list projects operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.</p>
-- @return ListProjectsRequest structure as a key-value pair table
function M.ListProjectsRequest(args)
	assert(args, "You must provide an argument table when creating ListProjectsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListProjectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInstanceProfileResult = { ["instanceProfile"] = true, nil }

function asserts.AssertCreateInstanceProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileResult to be of type 'table'")
	if struct["instanceProfile"] then asserts.AssertInstanceProfile(struct["instanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceProfileResult[k], "CreateInstanceProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceProfile [InstanceProfile] <p>An object containing information about your instance profile.</p>
-- @return CreateInstanceProfileResult structure as a key-value pair table
function M.CreateInstanceProfileResult(args)
	assert(args, "You must provide an argument table when creating CreateInstanceProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceProfile"] = args["instanceProfile"],
	}
	asserts.AssertCreateInstanceProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstanceProfileResult = { ["instanceProfile"] = true, nil }

function asserts.AssertGetInstanceProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileResult to be of type 'table'")
	if struct["instanceProfile"] then asserts.AssertInstanceProfile(struct["instanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceProfileResult[k], "GetInstanceProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceProfile [InstanceProfile] <p>An object containing information about your instance profile.</p>
-- @return GetInstanceProfileResult structure as a key-value pair table
function M.GetInstanceProfileResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceProfile"] = args["instanceProfile"],
	}
	asserts.AssertGetInstanceProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsResult = { ["nextToken"] = true, ["projects"] = true, nil }

function asserts.AssertListProjectsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["projects"] then asserts.AssertProjects(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsResult[k], "ListProjectsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResult
-- <p>Represents the result of a list projects request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * projects [Projects] <p>Information about the projects.</p>
-- @return ListProjectsResult structure as a key-value pair table
function M.ListProjectsResult(args)
	assert(args, "You must provide an argument table when creating ListProjectsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["projects"] = args["projects"],
	}
	asserts.AssertListProjectsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingTransactionsRequest = { ["nextToken"] = true, nil }

function asserts.AssertListOfferingTransactionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingTransactionsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingTransactionsRequest[k], "ListOfferingTransactionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingTransactionsRequest
-- <p>Represents the request to list the offering transaction history.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListOfferingTransactionsRequest structure as a key-value pair table
function M.ListOfferingTransactionsRequest(args)
	assert(args, "You must provide an argument table when creating ListOfferingTransactionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingTransactionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountSettings = { ["maxSlots"] = true, ["skipAppResign"] = true, ["unmeteredRemoteAccessDevices"] = true, ["maxJobTimeoutMinutes"] = true, ["trialMinutes"] = true, ["defaultJobTimeoutMinutes"] = true, ["awsAccountNumber"] = true, ["unmeteredDevices"] = true, nil }

function asserts.AssertAccountSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountSettings to be of type 'table'")
	if struct["maxSlots"] then asserts.AssertMaxSlotMap(struct["maxSlots"]) end
	if struct["skipAppResign"] then asserts.AssertSkipAppResign(struct["skipAppResign"]) end
	if struct["unmeteredRemoteAccessDevices"] then asserts.AssertPurchasedDevicesMap(struct["unmeteredRemoteAccessDevices"]) end
	if struct["maxJobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["maxJobTimeoutMinutes"]) end
	if struct["trialMinutes"] then asserts.AssertTrialMinutes(struct["trialMinutes"]) end
	if struct["defaultJobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["awsAccountNumber"] then asserts.AssertAWSAccountNumber(struct["awsAccountNumber"]) end
	if struct["unmeteredDevices"] then asserts.AssertPurchasedDevicesMap(struct["unmeteredDevices"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountSettings[k], "AccountSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountSettings
-- <p>A container for account-level settings within AWS Device Farm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * maxSlots [MaxSlotMap] <p>The maximum number of device slots that the AWS account can purchase. Each maximum is expressed as an <code>offering-id:number</code> pair, where the <code>offering-id</code> represents one of the IDs returned by the <code>ListOfferings</code> command.</p>
-- * skipAppResign [SkipAppResign] <p>When set to <code>true</code>, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.</p> <p>For more information about how Device Farm re-signs your app(s), see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a> in the <i>AWS Device Farm FAQs</i>.</p>
-- * unmeteredRemoteAccessDevices [PurchasedDevicesMap] <p>Returns the unmetered remote access devices you have purchased or want to purchase.</p>
-- * maxJobTimeoutMinutes [JobTimeoutMinutes] <p>The maximum number of minutes a test run will execute before it times out.</p>
-- * trialMinutes [TrialMinutes] <p>Information about an AWS account's usage of free trial device minutes.</p>
-- * defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The default number of minutes (at the account level) a test run will execute before it times out. Default value is 60 minutes.</p>
-- * awsAccountNumber [AWSAccountNumber] <p>The AWS account number specified in the <code>AccountSettings</code> container.</p>
-- * unmeteredDevices [PurchasedDevicesMap] <p>Returns the unmetered devices you have purchased or want to purchase.</p>
-- @return AccountSettings structure as a key-value pair table
function M.AccountSettings(args)
	assert(args, "You must provide an argument table when creating AccountSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["maxSlots"] = args["maxSlots"],
		["skipAppResign"] = args["skipAppResign"],
		["unmeteredRemoteAccessDevices"] = args["unmeteredRemoteAccessDevices"],
		["maxJobTimeoutMinutes"] = args["maxJobTimeoutMinutes"],
		["trialMinutes"] = args["trialMinutes"],
		["defaultJobTimeoutMinutes"] = args["defaultJobTimeoutMinutes"],
		["awsAccountNumber"] = args["awsAccountNumber"],
		["unmeteredDevices"] = args["unmeteredDevices"],
	}
	asserts.AssertAccountSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDevicePoolResult = { ["devicePool"] = true, nil }

function asserts.AssertUpdateDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then asserts.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDevicePoolResult[k], "UpdateDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevicePoolResult
-- <p>Represents the result of an update device pool request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devicePool [DevicePool] <p>The device pool you just updated.</p>
-- @return UpdateDevicePoolResult structure as a key-value pair table
function M.UpdateDevicePoolResult(args)
	assert(args, "You must provide an argument table when creating UpdateDevicePoolResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devicePool"] = args["devicePool"],
	}
	asserts.AssertUpdateDevicePoolResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomerArtifactPaths = { ["deviceHostPaths"] = true, ["iosPaths"] = true, ["androidPaths"] = true, nil }

function asserts.AssertCustomerArtifactPaths(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomerArtifactPaths to be of type 'table'")
	if struct["deviceHostPaths"] then asserts.AssertDeviceHostPaths(struct["deviceHostPaths"]) end
	if struct["iosPaths"] then asserts.AssertIosPaths(struct["iosPaths"]) end
	if struct["androidPaths"] then asserts.AssertAndroidPaths(struct["androidPaths"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomerArtifactPaths[k], "CustomerArtifactPaths contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomerArtifactPaths
-- <p>A JSON object specifying the paths where the artifacts generated by the customer's tests, on the device or in the test environment, will be pulled from.</p> <p>Specify <code>deviceHostPaths</code> and optionally specify either <code>iosPaths</code> or <code>androidPaths</code>.</p> <p>For web app tests, you can specify both <code>iosPaths</code> and <code>androidPaths</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceHostPaths [DeviceHostPaths] <p>Comma-separated list of paths in the test execution environment where the artifacts generated by the customer's tests will be pulled from.</p>
-- * iosPaths [IosPaths] <p>Comma-separated list of paths on the iOS device where the artifacts generated by the customer's tests will be pulled from.</p>
-- * androidPaths [AndroidPaths] <p>Comma-separated list of paths on the Android device where the artifacts generated by the customer's tests will be pulled from.</p>
-- @return CustomerArtifactPaths structure as a key-value pair table
function M.CustomerArtifactPaths(args)
	assert(args, "You must provide an argument table when creating CustomerArtifactPaths")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceHostPaths"] = args["deviceHostPaths"],
		["iosPaths"] = args["iosPaths"],
		["androidPaths"] = args["androidPaths"],
	}
	asserts.AssertCustomerArtifactPaths(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OfferingTransaction = { ["offeringPromotionId"] = true, ["offeringStatus"] = true, ["cost"] = true, ["createdOn"] = true, ["transactionId"] = true, nil }

function asserts.AssertOfferingTransaction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingTransaction to be of type 'table'")
	if struct["offeringPromotionId"] then asserts.AssertOfferingPromotionIdentifier(struct["offeringPromotionId"]) end
	if struct["offeringStatus"] then asserts.AssertOfferingStatus(struct["offeringStatus"]) end
	if struct["cost"] then asserts.AssertMonetaryAmount(struct["cost"]) end
	if struct["createdOn"] then asserts.AssertDateTime(struct["createdOn"]) end
	if struct["transactionId"] then asserts.AssertTransactionIdentifier(struct["transactionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.OfferingTransaction[k], "OfferingTransaction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingTransaction
-- <p>Represents the metadata of an offering transaction.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringPromotionId [OfferingPromotionIdentifier] <p>The ID that corresponds to a device offering promotion.</p>
-- * offeringStatus [OfferingStatus] <p>The status of an offering transaction.</p>
-- * cost [MonetaryAmount] <p>The cost of an offering transaction.</p>
-- * createdOn [DateTime] <p>The date on which an offering transaction was created.</p>
-- * transactionId [TransactionIdentifier] <p>The transaction ID of the offering transaction.</p>
-- @return OfferingTransaction structure as a key-value pair table
function M.OfferingTransaction(args)
	assert(args, "You must provide an argument table when creating OfferingTransaction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringPromotionId"] = args["offeringPromotionId"],
		["offeringStatus"] = args["offeringStatus"],
		["cost"] = args["cost"],
		["createdOn"] = args["createdOn"],
		["transactionId"] = args["transactionId"],
	}
	asserts.AssertOfferingTransaction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceAccountException = { ["message"] = true, nil }

function asserts.AssertServiceAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceAccountException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceAccountException[k], "ServiceAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceAccountException
-- <p>There was a problem with the service account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>Any additional information about the exception.</p>
-- @return ServiceAccountException structure as a key-value pair table
function M.ServiceAccountException(args)
	assert(args, "You must provide an argument table when creating ServiceAccountException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceAccountException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVPCEConfigurationResult = { nil }

function asserts.AssertDeleteVPCEConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCEConfigurationResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteVPCEConfigurationResult[k], "DeleteVPCEConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCEConfigurationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteVPCEConfigurationResult structure as a key-value pair table
function M.DeleteVPCEConfigurationResult(args)
	assert(args, "You must provide an argument table when creating DeleteVPCEConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteVPCEConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDevicePoolRequest = { ["rules"] = true, ["name"] = true, ["arn"] = true, ["description"] = true, nil }

function asserts.AssertUpdateDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["rules"] then asserts.AssertRules(struct["rules"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDevicePoolRequest[k], "UpdateDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevicePoolRequest
-- <p>Represents a request to the update device pool operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rules [Rules] <p>Represents the rules you wish to modify for the device pool. Updating rules is optional; however, if you choose to update rules for your request, the update will replace the existing rules.</p>
-- * name [Name] <p>A string representing the name of the device pool you wish to update.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resourc Name (ARN) of the Device Farm device pool you wish to update.</p>
-- * description [Message] <p>A description of the device pool you wish to update.</p>
-- Required key: arn
-- @return UpdateDevicePoolRequest structure as a key-value pair table
function M.UpdateDevicePoolRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDevicePoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rules"] = args["rules"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateDevicePoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OfferingPromotion = { ["id"] = true, ["description"] = true, nil }

function asserts.AssertOfferingPromotion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingPromotion to be of type 'table'")
	if struct["id"] then asserts.AssertOfferingPromotionIdentifier(struct["id"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.OfferingPromotion[k], "OfferingPromotion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingPromotion
-- <p>Represents information about an offering promotion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [OfferingPromotionIdentifier] <p>The ID of the offering promotion.</p>
-- * description [Message] <p>A string describing the offering promotion.</p>
-- @return OfferingPromotion structure as a key-value pair table
function M.OfferingPromotion(args)
	assert(args, "You must provide an argument table when creating OfferingPromotion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertOfferingPromotion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectRequest = { ["defaultJobTimeoutMinutes"] = true, ["name"] = true, ["arn"] = true, nil }

function asserts.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["defaultJobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectRequest[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
-- <p>Represents a request to the update project operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The number of minutes a test run in the project will execute before it times out.</p>
-- * name [Name] <p>A string representing the new name of the project that you are updating.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project whose name you wish to update.</p>
-- Required key: arn
-- @return UpdateProjectRequest structure as a key-value pair table
function M.UpdateProjectRequest(args)
	assert(args, "You must provide an argument table when creating UpdateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultJobTimeoutMinutes"] = args["defaultJobTimeoutMinutes"],
		["name"] = args["name"],
		["arn"] = args["arn"],
	}
	asserts.AssertUpdateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSuiteResult = { ["suite"] = true, nil }

function asserts.AssertGetSuiteResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSuiteResult to be of type 'table'")
	if struct["suite"] then asserts.AssertSuite(struct["suite"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSuiteResult[k], "GetSuiteResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSuiteResult
-- <p>Represents the result of a get suite request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * suite [Suite] <p>A collection of one or more tests.</p>
-- @return GetSuiteResult structure as a key-value pair table
function M.GetSuiteResult(args)
	assert(args, "You must provide an argument table when creating GetSuiteResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["suite"] = args["suite"],
	}
	asserts.AssertGetSuiteResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobResult = { ["job"] = true, nil }

function asserts.AssertGetJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobResult to be of type 'table'")
	if struct["job"] then asserts.AssertJob(struct["job"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobResult[k], "GetJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobResult
-- <p>Represents the result of a get job request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * job [Job] <p>An object containing information about the requested job.</p>
-- @return GetJobResult structure as a key-value pair table
function M.GetJobResult(args)
	assert(args, "You must provide an argument table when creating GetJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["job"] = args["job"],
	}
	asserts.AssertGetJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Project = { ["defaultJobTimeoutMinutes"] = true, ["name"] = true, ["arn"] = true, ["created"] = true, nil }

function asserts.AssertProject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Project to be of type 'table'")
	if struct["defaultJobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(keys.Project[k], "Project contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Project
-- <p>Represents an operating-system neutral workspace for running and managing tests.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The default number of minutes (at the project level) a test run will execute before it times out. Default value is 60 minutes.</p>
-- * name [Name] <p>The project's name.</p>
-- * arn [AmazonResourceName] <p>The project's ARN.</p>
-- * created [DateTime] <p>When the project was created.</p>
-- @return Project structure as a key-value pair table
function M.Project(args)
	assert(args, "You must provide an argument table when creating Project")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultJobTimeoutMinutes"] = args["defaultJobTimeoutMinutes"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["created"] = args["created"],
	}
	asserts.AssertProject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceInstancesResult = { ["deviceInstances"] = true, ["nextToken"] = true, nil }

function asserts.AssertListDeviceInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceInstancesResult to be of type 'table'")
	if struct["deviceInstances"] then asserts.AssertDeviceInstances(struct["deviceInstances"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceInstancesResult[k], "ListDeviceInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceInstancesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceInstances [DeviceInstances] <p>An object containing information about your device instances.</p>
-- * nextToken [PaginationToken] <p>An identifier that can be used in the next call to this operation to return the next set of items in the list.</p>
-- @return ListDeviceInstancesResult structure as a key-value pair table
function M.ListDeviceInstancesResult(args)
	assert(args, "You must provide an argument table when creating ListDeviceInstancesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceInstances"] = args["deviceInstances"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListDeviceInstancesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRemoteAccessSessionResult = { ["remoteAccessSession"] = true, nil }

function asserts.AssertGetRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then asserts.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRemoteAccessSessionResult[k], "GetRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRemoteAccessSessionResult
-- <p>Represents the response from the server that lists detailed information about the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * remoteAccessSession [RemoteAccessSession] <p>A container that lists detailed information about the remote access session.</p>
-- @return GetRemoteAccessSessionResult structure as a key-value pair table
function M.GetRemoteAccessSessionResult(args)
	assert(args, "You must provide an argument table when creating GetRemoteAccessSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["remoteAccessSession"] = args["remoteAccessSession"],
	}
	asserts.AssertGetRemoteAccessSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInstanceProfileRequest = { ["rebootAfterUse"] = true, ["excludeAppPackagesFromCleanup"] = true, ["description"] = true, ["packageCleanup"] = true, ["arn"] = true, ["name"] = true, nil }

function asserts.AssertUpdateInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInstanceProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["rebootAfterUse"] then asserts.AssertBoolean(struct["rebootAfterUse"]) end
	if struct["excludeAppPackagesFromCleanup"] then asserts.AssertPackageIds(struct["excludeAppPackagesFromCleanup"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	if struct["packageCleanup"] then asserts.AssertBoolean(struct["packageCleanup"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInstanceProfileRequest[k], "UpdateInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInstanceProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rebootAfterUse [Boolean] <p>The updated choice for whether you want to reboot the device after use. The default value is <code>true</code>.</p>
-- * excludeAppPackagesFromCleanup [PackageIds] <p>An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.</p> <p>The list of packages is only considered if you set <code>packageCleanup</code> to <code>true</code>.</p>
-- * description [Message] <p>The updated description for your instance profile.</p>
-- * packageCleanup [Boolean] <p>The updated choice for whether you want to specify package cleanup. The default value is <code>false</code> for private devices.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance profile.</p>
-- * name [Name] <p>The updated name for your instance profile.</p>
-- Required key: arn
-- @return UpdateInstanceProfileRequest structure as a key-value pair table
function M.UpdateInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rebootAfterUse"] = args["rebootAfterUse"],
		["excludeAppPackagesFromCleanup"] = args["excludeAppPackagesFromCleanup"],
		["description"] = args["description"],
		["packageCleanup"] = args["packageCleanup"],
		["arn"] = args["arn"],
		["name"] = args["name"],
	}
	asserts.AssertUpdateInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRunResult = { ["run"] = true, nil }

function asserts.AssertStopRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRunResult to be of type 'table'")
	if struct["run"] then asserts.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRunResult[k], "StopRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRunResult
-- <p>Represents the results of your stop run attempt.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * run [Run] <p>The run that was stopped.</p>
-- @return StopRunResult structure as a key-value pair table
function M.StopRunResult(args)
	assert(args, "You must provide an argument table when creating StopRunResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["run"] = args["run"],
	}
	asserts.AssertStopRunResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceInstanceResult = { ["deviceInstance"] = true, nil }

function asserts.AssertUpdateDeviceInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceInstanceResult to be of type 'table'")
	if struct["deviceInstance"] then asserts.AssertDeviceInstance(struct["deviceInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceInstanceResult[k], "UpdateDeviceInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceInstance [DeviceInstance] <p>An object containing information about your device instance.</p>
-- @return UpdateDeviceInstanceResult structure as a key-value pair table
function M.UpdateDeviceInstanceResult(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceInstance"] = args["deviceInstance"],
	}
	asserts.AssertUpdateDeviceInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRemoteAccessSessionRequest = { ["arn"] = true, nil }

function asserts.AssertGetRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRemoteAccessSessionRequest[k], "GetRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRemoteAccessSessionRequest
-- <p>Represents the request to get information about the specified remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you want to get session information.</p>
-- Required key: arn
-- @return GetRemoteAccessSessionRequest structure as a key-value pair table
function M.GetRemoteAccessSessionRequest(args)
	assert(args, "You must provide an argument table when creating GetRemoteAccessSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetRemoteAccessSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingPromotionsResult = { ["offeringPromotions"] = true, ["nextToken"] = true, nil }

function asserts.AssertListOfferingPromotionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingPromotionsResult to be of type 'table'")
	if struct["offeringPromotions"] then asserts.AssertOfferingPromotions(struct["offeringPromotions"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingPromotionsResult[k], "ListOfferingPromotionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingPromotionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringPromotions [OfferingPromotions] <p>Information about the offering promotions.</p>
-- * nextToken [PaginationToken] <p>An identifier to be used in the next call to this operation, to return the next set of items in the list.</p>
-- @return ListOfferingPromotionsResult structure as a key-value pair table
function M.ListOfferingPromotionsResult(args)
	assert(args, "You must provide an argument table when creating ListOfferingPromotionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringPromotions"] = args["offeringPromotions"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingPromotionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetProjectResult = { ["project"] = true, nil }

function asserts.AssertGetProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProjectResult to be of type 'table'")
	if struct["project"] then asserts.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProjectResult[k], "GetProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProjectResult
-- <p>Represents the result of a get project request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [Project] <p>The project you wish to get information about.</p>
-- @return GetProjectResult structure as a key-value pair table
function M.GetProjectResult(args)
	assert(args, "You must provide an argument table when creating GetProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertGetProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetProjectRequest = { ["arn"] = true, nil }

function asserts.AssertGetProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProjectRequest[k], "GetProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProjectRequest
-- <p>Represents a request to the get project operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The project's ARN.</p>
-- Required key: arn
-- @return GetProjectRequest structure as a key-value pair table
function M.GetProjectRequest(args)
	assert(args, "You must provide an argument table when creating GetProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Radios = { ["gps"] = true, ["wifi"] = true, ["nfc"] = true, ["bluetooth"] = true, nil }

function asserts.AssertRadios(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Radios to be of type 'table'")
	if struct["gps"] then asserts.AssertBoolean(struct["gps"]) end
	if struct["wifi"] then asserts.AssertBoolean(struct["wifi"]) end
	if struct["nfc"] then asserts.AssertBoolean(struct["nfc"]) end
	if struct["bluetooth"] then asserts.AssertBoolean(struct["bluetooth"]) end
	for k,_ in pairs(struct) do
		assert(keys.Radios[k], "Radios contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Radios
-- <p>Represents the set of radios and their states on a device. Examples of radios include Wi-Fi, GPS, Bluetooth, and NFC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * gps [Boolean] <p>True if GPS is enabled at the beginning of the test; otherwise, false.</p>
-- * wifi [Boolean] <p>True if Wi-Fi is enabled at the beginning of the test; otherwise, false.</p>
-- * nfc [Boolean] <p>True if NFC is enabled at the beginning of the test; otherwise, false.</p>
-- * bluetooth [Boolean] <p>True if Bluetooth is enabled at the beginning of the test; otherwise, false.</p>
-- @return Radios structure as a key-value pair table
function M.Radios(args)
	assert(args, "You must provide an argument table when creating Radios")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["gps"] = args["gps"],
		["wifi"] = args["wifi"],
		["nfc"] = args["nfc"],
		["bluetooth"] = args["bluetooth"],
	}
	asserts.AssertRadios(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRunRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRunRequest[k], "DeleteRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRunRequest
-- <p>Represents a request to the delete run operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) for the run you wish to delete.</p>
-- Required key: arn
-- @return DeleteRunRequest structure as a key-value pair table
function M.DeleteRunRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleRunTest = { ["filter"] = true, ["type"] = true, ["testSpecArn"] = true, ["parameters"] = true, ["testPackageArn"] = true, nil }

function asserts.AssertScheduleRunTest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunTest to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["filter"] then asserts.AssertFilter(struct["filter"]) end
	if struct["type"] then asserts.AssertTestType(struct["type"]) end
	if struct["testSpecArn"] then asserts.AssertAmazonResourceName(struct["testSpecArn"]) end
	if struct["parameters"] then asserts.AssertTestParameters(struct["parameters"]) end
	if struct["testPackageArn"] then asserts.AssertAmazonResourceName(struct["testPackageArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleRunTest[k], "ScheduleRunTest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunTest
-- <p>Represents additional test settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [Filter] <p>The test's filter.</p>
-- * type [TestType] <p>The test's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * testSpecArn [AmazonResourceName] <p>The ARN of the YAML-formatted test specification.</p>
-- * parameters [TestParameters] <p>The test's parameters, such as the following test framework parameters and fixture settings:</p> <p>For Calabash tests:</p> <ul> <li> <p>profile: A cucumber profile, for example, "my_profile_name".</p> </li> <li> <p>tags: You can limit execution to features or scenarios that have (or don't have) certain tags, for example, "@smoke" or "@smoke,~@wip".</p> </li> </ul> <p>For Appium tests (all types):</p> <ul> <li> <p>appium_version: The Appium version. Currently supported values are "1.4.16", "1.6.3", "latest", and "default".</p> <ul> <li> <p>“latest” will run the latest Appium version supported by Device Farm (1.6.3).</p> </li> <li> <p>For “default”, Device Farm will choose a compatible version of Appium for the device. The current behavior is to run 1.4.16 on Android devices and iOS 9 and earlier, 1.6.3 for iOS 10 and later.</p> </li> <li> <p>This behavior is subject to change.</p> </li> </ul> </li> </ul> <p>For Fuzz tests (Android only):</p> <ul> <li> <p>event_count: The number of events, between 1 and 10000, that the UI fuzz test should perform.</p> </li> <li> <p>throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should wait between events.</p> </li> <li> <p>seed: A seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.</p> </li> </ul> <p>For Explorer tests:</p> <ul> <li> <p>username: A username to use if the Explorer encounters a login form. If not supplied, no username will be inserted.</p> </li> <li> <p>password: A password to use if the Explorer encounters a login form. If not supplied, no password will be inserted.</p> </li> </ul> <p>For Instrumentation:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test case: "com.android.abc.Test1"</p> </li> <li> <p>Running a single test: "com.android.abc.Test1#smoke"</p> </li> <li> <p>Running multiple tests: "com.android.abc.Test1,com.android.abc.Test2"</p> </li> </ul> </li> </ul> <p>For XCTest and XCTestUI:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test class: "LoginTests"</p> </li> <li> <p>Running a multiple test classes: "LoginTests,SmokeTests"</p> </li> <li> <p>Running a single test: "LoginTests/testValid"</p> </li> <li> <p>Running multiple tests: "LoginTests/testValid,LoginTests/testInvalid"</p> </li> </ul> </li> </ul> <p>For UIAutomator:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test case: "com.android.abc.Test1"</p> </li> <li> <p>Running a single test: "com.android.abc.Test1#smoke"</p> </li> <li> <p>Running multiple tests: "com.android.abc.Test1,com.android.abc.Test2"</p> </li> </ul> </li> </ul>
-- * testPackageArn [AmazonResourceName] <p>The ARN of the uploaded test that will be run.</p>
-- Required key: type
-- @return ScheduleRunTest structure as a key-value pair table
function M.ScheduleRunTest(args)
	assert(args, "You must provide an argument table when creating ScheduleRunTest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["type"] = args["type"],
		["testSpecArn"] = args["testSpecArn"],
		["parameters"] = args["parameters"],
		["testPackageArn"] = args["testPackageArn"],
	}
	asserts.AssertScheduleRunTest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRemoteAccessSessionRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRemoteAccessSessionRequest[k], "DeleteRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRemoteAccessSessionRequest
-- <p>Represents the request to delete the specified remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the sesssion for which you want to delete remote access.</p>
-- Required key: arn
-- @return DeleteRemoteAccessSessionRequest structure as a key-value pair table
function M.DeleteRemoteAccessSessionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRemoteAccessSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteRemoteAccessSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOperationException = { ["message"] = true, nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>There was an error with the update request, or you do not have sufficient permissions to update this VPC endpoint configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- @return InvalidOperationException structure as a key-value pair table
function M.InvalidOperationException(args)
	assert(args, "You must provide an argument table when creating InvalidOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceProfile = { ["rebootAfterUse"] = true, ["description"] = true, ["name"] = true, ["packageCleanup"] = true, ["arn"] = true, ["excludeAppPackagesFromCleanup"] = true, nil }

function asserts.AssertInstanceProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceProfile to be of type 'table'")
	if struct["rebootAfterUse"] then asserts.AssertBoolean(struct["rebootAfterUse"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["packageCleanup"] then asserts.AssertBoolean(struct["packageCleanup"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["excludeAppPackagesFromCleanup"] then asserts.AssertPackageIds(struct["excludeAppPackagesFromCleanup"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceProfile[k], "InstanceProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceProfile
-- <p>Represents the instance profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rebootAfterUse [Boolean] <p>When set to <code>true</code>, Device Farm will reboot the instance after a test run. The default value is <code>true</code>.</p>
-- * description [Message] <p>The description of the instance profile.</p>
-- * name [Name] <p>The name of the instance profile.</p>
-- * packageCleanup [Boolean] <p>When set to <code>true</code>, Device Farm will remove app packages after a test run. The default value is <code>false</code> for private devices.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance profile.</p>
-- * excludeAppPackagesFromCleanup [PackageIds] <p>An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.</p> <p>The list of packages is only considered if you set <code>packageCleanup</code> to <code>true</code>.</p>
-- @return InstanceProfile structure as a key-value pair table
function M.InstanceProfile(args)
	assert(args, "You must provide an argument table when creating InstanceProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rebootAfterUse"] = args["rebootAfterUse"],
		["description"] = args["description"],
		["name"] = args["name"],
		["packageCleanup"] = args["packageCleanup"],
		["arn"] = args["arn"],
		["excludeAppPackagesFromCleanup"] = args["excludeAppPackagesFromCleanup"],
	}
	asserts.AssertInstanceProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRunResult = { ["run"] = true, nil }

function asserts.AssertGetRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRunResult to be of type 'table'")
	if struct["run"] then asserts.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRunResult[k], "GetRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRunResult
-- <p>Represents the result of a get run request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * run [Run] <p>The run you wish to get results from.</p>
-- @return GetRunResult structure as a key-value pair table
function M.GetRunResult(args)
	assert(args, "You must provide an argument table when creating GetRunResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["run"] = args["run"],
	}
	asserts.AssertGetRunResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTestsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListTestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTestsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTestsRequest[k], "ListTestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTestsRequest
-- <p>Represents a request to the list tests operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The test suite's Amazon Resource Name (ARN).</p>
-- Required key: arn
-- @return ListTestsRequest structure as a key-value pair table
function M.ListTestsRequest(args)
	assert(args, "You must provide an argument table when creating ListTestsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListTestsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInstanceProfileRequest = { ["rebootAfterUse"] = true, ["packageCleanup"] = true, ["excludeAppPackagesFromCleanup"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertCreateInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["rebootAfterUse"] then asserts.AssertBoolean(struct["rebootAfterUse"]) end
	if struct["packageCleanup"] then asserts.AssertBoolean(struct["packageCleanup"]) end
	if struct["excludeAppPackagesFromCleanup"] then asserts.AssertPackageIds(struct["excludeAppPackagesFromCleanup"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceProfileRequest[k], "CreateInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rebootAfterUse [Boolean] <p>When set to <code>true</code>, Device Farm will reboot the instance after a test run. The default value is <code>true</code>.</p>
-- * packageCleanup [Boolean] <p>When set to <code>true</code>, Device Farm will remove app packages after a test run. The default value is <code>false</code> for private devices.</p>
-- * excludeAppPackagesFromCleanup [PackageIds] <p>An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.</p> <p>The list of packages is only considered if you set <code>packageCleanup</code> to <code>true</code>.</p>
-- * name [Name] <p>The name of your instance profile.</p>
-- * description [Message] <p>The description of your instance profile.</p>
-- Required key: name
-- @return CreateInstanceProfileRequest structure as a key-value pair table
function M.CreateInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rebootAfterUse"] = args["rebootAfterUse"],
		["packageCleanup"] = args["packageCleanup"],
		["excludeAppPackagesFromCleanup"] = args["excludeAppPackagesFromCleanup"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNetworkProfileResult = { nil }

function asserts.AssertDeleteNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNetworkProfileResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteNetworkProfileResult[k], "DeleteNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNetworkProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteNetworkProfileResult structure as a key-value pair table
function M.DeleteNetworkProfileResult(args)
	assert(args, "You must provide an argument table when creating DeleteNetworkProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteNetworkProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectRequest = { ["defaultJobTimeoutMinutes"] = true, ["name"] = true, nil }

function asserts.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["defaultJobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectRequest[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
-- <p>Represents a request to the create project operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>Sets the execution timeout value (in minutes) for a project. All test runs in this project will use the specified execution timeout value unless overridden when scheduling a run.</p>
-- * name [Name] <p>The project's name.</p>
-- Required key: name
-- @return CreateProjectRequest structure as a key-value pair table
function M.CreateProjectRequest(args)
	assert(args, "You must provide an argument table when creating CreateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultJobTimeoutMinutes"] = args["defaultJobTimeoutMinutes"],
		["name"] = args["name"],
	}
	asserts.AssertCreateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OfferingStatus = { ["effectiveOn"] = true, ["type"] = true, ["offering"] = true, ["quantity"] = true, nil }

function asserts.AssertOfferingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingStatus to be of type 'table'")
	if struct["effectiveOn"] then asserts.AssertDateTime(struct["effectiveOn"]) end
	if struct["type"] then asserts.AssertOfferingTransactionType(struct["type"]) end
	if struct["offering"] then asserts.AssertOffering(struct["offering"]) end
	if struct["quantity"] then asserts.AssertInteger(struct["quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.OfferingStatus[k], "OfferingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingStatus
-- <p>The status of the offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * effectiveOn [DateTime] <p>The date on which the offering is effective.</p>
-- * type [OfferingTransactionType] <p>The type specified for the offering status.</p>
-- * offering [Offering] <p>Represents the metadata of an offering status.</p>
-- * quantity [Integer] <p>The number of available devices in the offering.</p>
-- @return OfferingStatus structure as a key-value pair table
function M.OfferingStatus(args)
	assert(args, "You must provide an argument table when creating OfferingStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["effectiveOn"] = args["effectiveOn"],
		["type"] = args["type"],
		["offering"] = args["offering"],
		["quantity"] = args["quantity"],
	}
	asserts.AssertOfferingStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A limit was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>Any additional information about the exception.</p>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVPCEConfigurationRequest = { ["vpceConfigurationName"] = true, ["serviceDnsName"] = true, ["vpceServiceName"] = true, ["vpceConfigurationDescription"] = true, nil }

function asserts.AssertCreateVPCEConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCEConfigurationRequest to be of type 'table'")
	assert(struct["vpceConfigurationName"], "Expected key vpceConfigurationName to exist in table")
	assert(struct["vpceServiceName"], "Expected key vpceServiceName to exist in table")
	assert(struct["serviceDnsName"], "Expected key serviceDnsName to exist in table")
	if struct["vpceConfigurationName"] then asserts.AssertVPCEConfigurationName(struct["vpceConfigurationName"]) end
	if struct["serviceDnsName"] then asserts.AssertServiceDnsName(struct["serviceDnsName"]) end
	if struct["vpceServiceName"] then asserts.AssertVPCEServiceName(struct["vpceServiceName"]) end
	if struct["vpceConfigurationDescription"] then asserts.AssertVPCEConfigurationDescription(struct["vpceConfigurationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVPCEConfigurationRequest[k], "CreateVPCEConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCEConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfigurationName [VPCEConfigurationName] <p>The friendly name you give to your VPC endpoint configuration, to manage your configurations more easily.</p>
-- * serviceDnsName [ServiceDnsName] <p>The DNS name of the service running in your VPC that you want Device Farm to test.</p>
-- * vpceServiceName [VPCEServiceName] <p>The name of the VPC endpoint service running inside your AWS account that you want Device Farm to test.</p>
-- * vpceConfigurationDescription [VPCEConfigurationDescription] <p>An optional description, providing more details about your VPC endpoint configuration.</p>
-- Required key: vpceConfigurationName
-- Required key: vpceServiceName
-- Required key: serviceDnsName
-- @return CreateVPCEConfigurationRequest structure as a key-value pair table
function M.CreateVPCEConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating CreateVPCEConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfigurationName"] = args["vpceConfigurationName"],
		["serviceDnsName"] = args["serviceDnsName"],
		["vpceServiceName"] = args["vpceServiceName"],
		["vpceConfigurationDescription"] = args["vpceConfigurationDescription"],
	}
	asserts.AssertCreateVPCEConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UniqueProblem = { ["message"] = true, ["problems"] = true, nil }

function asserts.AssertUniqueProblem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UniqueProblem to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["problems"] then asserts.AssertProblems(struct["problems"]) end
	for k,_ in pairs(struct) do
		assert(keys.UniqueProblem[k], "UniqueProblem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UniqueProblem
-- <p>A collection of one or more problems, grouped by their result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>A message about the unique problems' result.</p>
-- * problems [Problems] <p>Information about the problems.</p>
-- @return UniqueProblem structure as a key-value pair table
function M.UniqueProblem(args)
	assert(args, "You must provide an argument table when creating UniqueProblem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["problems"] = args["problems"],
	}
	asserts.AssertUniqueProblem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUploadsResult = { ["nextToken"] = true, ["uploads"] = true, nil }

function asserts.AssertListUploadsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUploadsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["uploads"] then asserts.AssertUploads(struct["uploads"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUploadsResult[k], "ListUploadsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUploadsResult
-- <p>Represents the result of a list uploads request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * uploads [Uploads] <p>Information about the uploads.</p>
-- @return ListUploadsResult structure as a key-value pair table
function M.ListUploadsResult(args)
	assert(args, "You must provide an argument table when creating ListUploadsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["uploads"] = args["uploads"],
	}
	asserts.AssertListUploadsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstanceProfilesResult = { ["nextToken"] = true, ["instanceProfiles"] = true, nil }

function asserts.AssertListInstanceProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["instanceProfiles"] then asserts.AssertInstanceProfiles(struct["instanceProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesResult[k], "ListInstanceProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that can be used in the next call to this operation to return the next set of items in the list.</p>
-- * instanceProfiles [InstanceProfiles] <p>An object containing information about your instance profiles.</p>
-- @return ListInstanceProfilesResult structure as a key-value pair table
function M.ListInstanceProfilesResult(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["instanceProfiles"] = args["instanceProfiles"],
	}
	asserts.AssertListInstanceProfilesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSuitesResult = { ["suites"] = true, ["nextToken"] = true, nil }

function asserts.AssertListSuitesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSuitesResult to be of type 'table'")
	if struct["suites"] then asserts.AssertSuites(struct["suites"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSuitesResult[k], "ListSuitesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSuitesResult
-- <p>Represents the result of a list suites request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * suites [Suites] <p>Information about the suites.</p>
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @return ListSuitesResult structure as a key-value pair table
function M.ListSuitesResult(args)
	assert(args, "You must provide an argument table when creating ListSuitesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["suites"] = args["suites"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListSuitesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUploadRequest = { ["contentType"] = true, ["type"] = true, ["name"] = true, ["projectArn"] = true, nil }

function asserts.AssertCreateUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUploadRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	if struct["type"] then asserts.AssertUploadType(struct["type"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["projectArn"] then asserts.AssertAmazonResourceName(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUploadRequest[k], "CreateUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUploadRequest
-- <p>Represents a request to the create upload operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentType [ContentType] <p>The upload's content type (for example, "application/octet-stream").</p>
-- * type [UploadType] <p>The upload's upload type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>ANDROID_APP: An Android upload.</p> </li> <li> <p>IOS_APP: An iOS upload.</p> </li> <li> <p>WEB_APP: A web application upload.</p> </li> <li> <p>EXTERNAL_DATA: An external data upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>CALABASH_TEST_PACKAGE: A Calabash test package upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.</p> </li> <li> <p>UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.</p> </li> <li> <p>UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.</p> </li> <li> <p>XCTEST_TEST_PACKAGE: An XCode test package upload.</p> </li> <li> <p>XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.</p> </li> </ul> <p> <b>Note</b> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS Device Farm throws an <code>ArgumentException</code> error.</p>
-- * name [Name] <p>The upload's file name. The name should not contain the '/' character. If uploading an iOS app, the file name needs to end with the <code>.ipa</code> extension. If uploading an Android app, the file name needs to end with the <code>.apk</code> extension. For all others, the file name must end with the <code>.zip</code> file extension.</p>
-- * projectArn [AmazonResourceName] <p>The ARN of the project for the upload.</p>
-- Required key: projectArn
-- Required key: name
-- Required key: type
-- @return CreateUploadRequest structure as a key-value pair table
function M.CreateUploadRequest(args)
	assert(args, "You must provide an argument table when creating CreateUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["contentType"] = args["contentType"],
		["type"] = args["type"],
		["name"] = args["name"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertCreateUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSamplesResult = { ["nextToken"] = true, ["samples"] = true, nil }

function asserts.AssertListSamplesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSamplesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["samples"] then asserts.AssertSamples(struct["samples"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSamplesResult[k], "ListSamplesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSamplesResult
-- <p>Represents the result of a list samples request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * samples [Samples] <p>Information about the samples.</p>
-- @return ListSamplesResult structure as a key-value pair table
function M.ListSamplesResult(args)
	assert(args, "You must provide an argument table when creating ListSamplesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["samples"] = args["samples"],
	}
	asserts.AssertListSamplesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArgumentException = { ["message"] = true, nil }

function asserts.AssertArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArgumentException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArgumentException[k], "ArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArgumentException
-- <p>An invalid argument was specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>Any additional information about the exception.</p>
-- @return ArgumentException structure as a key-value pair table
function M.ArgumentException(args)
	assert(args, "You must provide an argument table when creating ArgumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertArgumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUniqueProblemsResult = { ["nextToken"] = true, ["uniqueProblems"] = true, nil }

function asserts.AssertListUniqueProblemsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUniqueProblemsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["uniqueProblems"] then asserts.AssertUniqueProblemsByExecutionResultMap(struct["uniqueProblems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUniqueProblemsResult[k], "ListUniqueProblemsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUniqueProblemsResult
-- <p>Represents the result of a list unique problems request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * uniqueProblems [UniqueProblemsByExecutionResultMap] <p>Information about the unique problems.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @return ListUniqueProblemsResult structure as a key-value pair table
function M.ListUniqueProblemsResult(args)
	assert(args, "You must provide an argument table when creating ListUniqueProblemsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["uniqueProblems"] = args["uniqueProblems"],
	}
	asserts.AssertListUniqueProblemsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceResult = { ["device"] = true, nil }

function asserts.AssertGetDeviceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceResult to be of type 'table'")
	if struct["device"] then asserts.AssertDevice(struct["device"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceResult[k], "GetDeviceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceResult
-- <p>Represents the result of a get device request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * device [Device] <p>An object containing information about the requested device.</p>
-- @return GetDeviceResult structure as a key-value pair table
function M.GetDeviceResult(args)
	assert(args, "You must provide an argument table when creating GetDeviceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["device"] = args["device"],
	}
	asserts.AssertGetDeviceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RenewOfferingRequest = { ["quantity"] = true, ["offeringId"] = true, nil }

function asserts.AssertRenewOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewOfferingRequest to be of type 'table'")
	if struct["quantity"] then asserts.AssertInteger(struct["quantity"]) end
	if struct["offeringId"] then asserts.AssertOfferingIdentifier(struct["offeringId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RenewOfferingRequest[k], "RenewOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewOfferingRequest
-- <p>A request representing an offering renewal.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * quantity [Integer] <p>The quantity requested in an offering renewal.</p>
-- * offeringId [OfferingIdentifier] <p>The ID of a request to renew an offering.</p>
-- @return RenewOfferingRequest structure as a key-value pair table
function M.RenewOfferingRequest(args)
	assert(args, "You must provide an argument table when creating RenewOfferingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["quantity"] = args["quantity"],
		["offeringId"] = args["offeringId"],
	}
	asserts.AssertRenewOfferingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVPCEConfigurationsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListVPCEConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCEConfigurationsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVPCEConfigurationsRequest[k], "ListVPCEConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCEConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * maxResults [Integer] <p>An integer specifying the maximum number of items you want to return in the API response.</p>
-- @return ListVPCEConfigurationsRequest structure as a key-value pair table
function M.ListVPCEConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListVPCEConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListVPCEConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Run = { ["appUpload"] = true, ["radios"] = true, ["totalJobs"] = true, ["locale"] = true, ["completedJobs"] = true, ["seed"] = true, ["result"] = true, ["devicePoolArn"] = true, ["message"] = true, ["billingMethod"] = true, ["resultCode"] = true, ["arn"] = true, ["eventCount"] = true, ["webUrl"] = true, ["platform"] = true, ["location"] = true, ["type"] = true, ["counters"] = true, ["status"] = true, ["networkProfile"] = true, ["started"] = true, ["parsingResultUrl"] = true, ["testSpecArn"] = true, ["customerArtifactPaths"] = true, ["skipAppResign"] = true, ["name"] = true, ["created"] = true, ["deviceMinutes"] = true, ["stopped"] = true, ["jobTimeoutMinutes"] = true, nil }

function asserts.AssertRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Run to be of type 'table'")
	if struct["appUpload"] then asserts.AssertAmazonResourceName(struct["appUpload"]) end
	if struct["radios"] then asserts.AssertRadios(struct["radios"]) end
	if struct["totalJobs"] then asserts.AssertInteger(struct["totalJobs"]) end
	if struct["locale"] then asserts.AssertString(struct["locale"]) end
	if struct["completedJobs"] then asserts.AssertInteger(struct["completedJobs"]) end
	if struct["seed"] then asserts.AssertInteger(struct["seed"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["devicePoolArn"] then asserts.AssertAmazonResourceName(struct["devicePoolArn"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["billingMethod"] then asserts.AssertBillingMethod(struct["billingMethod"]) end
	if struct["resultCode"] then asserts.AssertExecutionResultCode(struct["resultCode"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["eventCount"] then asserts.AssertInteger(struct["eventCount"]) end
	if struct["webUrl"] then asserts.AssertString(struct["webUrl"]) end
	if struct["platform"] then asserts.AssertDevicePlatform(struct["platform"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["type"] then asserts.AssertTestType(struct["type"]) end
	if struct["counters"] then asserts.AssertCounters(struct["counters"]) end
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["networkProfile"] then asserts.AssertNetworkProfile(struct["networkProfile"]) end
	if struct["started"] then asserts.AssertDateTime(struct["started"]) end
	if struct["parsingResultUrl"] then asserts.AssertString(struct["parsingResultUrl"]) end
	if struct["testSpecArn"] then asserts.AssertAmazonResourceName(struct["testSpecArn"]) end
	if struct["customerArtifactPaths"] then asserts.AssertCustomerArtifactPaths(struct["customerArtifactPaths"]) end
	if struct["skipAppResign"] then asserts.AssertSkipAppResign(struct["skipAppResign"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["deviceMinutes"] then asserts.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then asserts.AssertDateTime(struct["stopped"]) end
	if struct["jobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["jobTimeoutMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Run[k], "Run contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Run
-- <p>Represents a test run on a set of devices with a given app package, test parameters, etc.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * appUpload [AmazonResourceName] <p>An app to upload or that has been uploaded.</p>
-- * radios [Radios] <p>Information about the radio states for the run.</p>
-- * totalJobs [Integer] <p>The total number of jobs for the run.</p>
-- * locale [String] <p>Information about the locale that is used for the run.</p>
-- * completedJobs [Integer] <p>The total number of completed jobs.</p>
-- * seed [Integer] <p>For fuzz tests, this is a seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.</p>
-- * result [ExecutionResult] <p>The run's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * devicePoolArn [AmazonResourceName] <p>The ARN of the device pool for the run.</p>
-- * message [Message] <p>A message about the run's result.</p>
-- * billingMethod [BillingMethod] <p>Specifies the billing method for a test run: <code>metered</code> or <code>unmetered</code>. If the parameter is not specified, the default value is <code>metered</code>.</p>
-- * resultCode [ExecutionResultCode] <p>Supporting field for the result field. Set only if <code>result</code> is <code>SKIPPED</code>. <code>PARSING_FAILED</code> if the result is skipped because of test package parsing failure.</p>
-- * arn [AmazonResourceName] <p>The run's ARN.</p>
-- * eventCount [Integer] <p>For fuzz tests, this is the number of events, between 1 and 10000, that the UI fuzz test should perform.</p>
-- * webUrl [String] <p>The Device Farm console URL for the recording of the run.</p>
-- * platform [DevicePlatform] <p>The run's platform.</p> <p>Allowed values include:</p> <ul> <li> <p>ANDROID: The Android platform.</p> </li> <li> <p>IOS: The iOS platform.</p> </li> </ul>
-- * location [Location] <p>Information about the location that is used for the run.</p>
-- * type [TestType] <p>The run's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * counters [Counters] <p>The run's result counters.</p>
-- * status [ExecutionStatus] <p>The run's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- * networkProfile [NetworkProfile] <p>The network profile being used for a test run.</p>
-- * started [DateTime] <p>The run's start time.</p>
-- * parsingResultUrl [String] <p>Read-only URL for an object in S3 bucket where you can get the parsing results of the test package. If the test package doesn't parse, the reason why it doesn't parse appears in the file that this URL points to.</p>
-- * testSpecArn [AmazonResourceName] <p>The ARN of the YAML-formatted test specification for the run.</p>
-- * customerArtifactPaths [CustomerArtifactPaths] <p>Output <code>CustomerArtifactPaths</code> object for the test run.</p>
-- * skipAppResign [SkipAppResign] <p>When set to <code>true</code>, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.</p> <p>For more information about how Device Farm re-signs your app(s), see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a> in the <i>AWS Device Farm FAQs</i>.</p>
-- * name [Name] <p>The run's name.</p>
-- * created [DateTime] <p>When the run was created.</p>
-- * deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test run.</p>
-- * stopped [DateTime] <p>The run's stop time.</p>
-- * jobTimeoutMinutes [JobTimeoutMinutes] <p>The number of minutes the job will execute before it times out.</p>
-- @return Run structure as a key-value pair table
function M.Run(args)
	assert(args, "You must provide an argument table when creating Run")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["appUpload"] = args["appUpload"],
		["radios"] = args["radios"],
		["totalJobs"] = args["totalJobs"],
		["locale"] = args["locale"],
		["completedJobs"] = args["completedJobs"],
		["seed"] = args["seed"],
		["result"] = args["result"],
		["devicePoolArn"] = args["devicePoolArn"],
		["message"] = args["message"],
		["billingMethod"] = args["billingMethod"],
		["resultCode"] = args["resultCode"],
		["arn"] = args["arn"],
		["eventCount"] = args["eventCount"],
		["webUrl"] = args["webUrl"],
		["platform"] = args["platform"],
		["location"] = args["location"],
		["type"] = args["type"],
		["counters"] = args["counters"],
		["status"] = args["status"],
		["networkProfile"] = args["networkProfile"],
		["started"] = args["started"],
		["parsingResultUrl"] = args["parsingResultUrl"],
		["testSpecArn"] = args["testSpecArn"],
		["customerArtifactPaths"] = args["customerArtifactPaths"],
		["skipAppResign"] = args["skipAppResign"],
		["name"] = args["name"],
		["created"] = args["created"],
		["deviceMinutes"] = args["deviceMinutes"],
		["stopped"] = args["stopped"],
		["jobTimeoutMinutes"] = args["jobTimeoutMinutes"],
	}
	asserts.AssertRun(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsResult = { ["nextToken"] = true, ["jobs"] = true, nil }

function asserts.AssertListJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["jobs"] then asserts.AssertJobs(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsResult[k], "ListJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResult
-- <p>Represents the result of a list jobs request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * jobs [Jobs] <p>Information about the jobs.</p>
-- @return ListJobsResult structure as a key-value pair table
function M.ListJobsResult(args)
	assert(args, "You must provide an argument table when creating ListJobsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["jobs"] = args["jobs"],
	}
	asserts.AssertListJobsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListArtifactsRequest = { ["nextToken"] = true, ["type"] = true, ["arn"] = true, nil }

function asserts.AssertListArtifactsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListArtifactsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then asserts.AssertArtifactCategory(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListArtifactsRequest[k], "ListArtifactsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListArtifactsRequest
-- <p>Represents a request to the list artifacts operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * type [ArtifactCategory] <p>The artifacts' type.</p> <p>Allowed values include:</p> <ul> <li> <p>FILE: The artifacts are files.</p> </li> <li> <p>LOG: The artifacts are logs.</p> </li> <li> <p>SCREENSHOT: The artifacts are screenshots.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The Run, Job, Suite, or Test ARN.</p>
-- Required key: arn
-- Required key: type
-- @return ListArtifactsRequest structure as a key-value pair table
function M.ListArtifactsRequest(args)
	assert(args, "You must provide an argument table when creating ListArtifactsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["type"] = args["type"],
		["arn"] = args["arn"],
	}
	asserts.AssertListArtifactsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUploadResult = { ["upload"] = true, nil }

function asserts.AssertGetUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUploadResult to be of type 'table'")
	if struct["upload"] then asserts.AssertUpload(struct["upload"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUploadResult[k], "GetUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUploadResult
-- <p>Represents the result of a get upload request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * upload [Upload] <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
-- @return GetUploadResult structure as a key-value pair table
function M.GetUploadResult(args)
	assert(args, "You must provide an argument table when creating GetUploadResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["upload"] = args["upload"],
	}
	asserts.AssertGetUploadResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVPCEConfigurationRequest = { ["arn"] = true, nil }

function asserts.AssertGetVPCEConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVPCEConfigurationRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVPCEConfigurationRequest[k], "GetVPCEConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVPCEConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to describe.</p>
-- Required key: arn
-- @return GetVPCEConfigurationRequest structure as a key-value pair table
function M.GetVPCEConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetVPCEConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetVPCEConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["status"] = true, ["instanceArn"] = true, ["videoCapture"] = true, ["name"] = true, ["created"] = true, ["started"] = true, ["videoEndpoint"] = true, ["deviceMinutes"] = true, ["stopped"] = true, ["result"] = true, ["device"] = true, ["message"] = true, ["type"] = true, ["arn"] = true, ["counters"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["instanceArn"] then asserts.AssertAmazonResourceName(struct["instanceArn"]) end
	if struct["videoCapture"] then asserts.AssertVideoCapture(struct["videoCapture"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["started"] then asserts.AssertDateTime(struct["started"]) end
	if struct["videoEndpoint"] then asserts.AssertString(struct["videoEndpoint"]) end
	if struct["deviceMinutes"] then asserts.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then asserts.AssertDateTime(struct["stopped"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["device"] then asserts.AssertDevice(struct["device"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertTestType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then asserts.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>Represents a device.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The job's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- * instanceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance.</p>
-- * videoCapture [VideoCapture] <p>This value is set to true if video capture is enabled; otherwise, it is set to false.</p>
-- * name [Name] <p>The job's name.</p>
-- * created [DateTime] <p>When the job was created.</p>
-- * started [DateTime] <p>The job's start time.</p>
-- * videoEndpoint [String] <p>The endpoint for streaming device video.</p>
-- * deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the job.</p>
-- * stopped [DateTime] <p>The job's stop time.</p>
-- * result [ExecutionResult] <p>The job's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * device [Device] <p>The device (phone or tablet).</p>
-- * message [Message] <p>A message about the job's result.</p>
-- * type [TestType] <p>The job's type.</p> <p>Allowed values include the following:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The job's ARN.</p>
-- * counters [Counters] <p>The job's result counters.</p>
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["instanceArn"] = args["instanceArn"],
		["videoCapture"] = args["videoCapture"],
		["name"] = args["name"],
		["created"] = args["created"],
		["started"] = args["started"],
		["videoEndpoint"] = args["videoEndpoint"],
		["deviceMinutes"] = args["deviceMinutes"],
		["stopped"] = args["stopped"],
		["result"] = args["result"],
		["device"] = args["device"],
		["message"] = args["message"],
		["type"] = args["type"],
		["arn"] = args["arn"],
		["counters"] = args["counters"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListArtifactsResult = { ["artifacts"] = true, ["nextToken"] = true, nil }

function asserts.AssertListArtifactsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListArtifactsResult to be of type 'table'")
	if struct["artifacts"] then asserts.AssertArtifacts(struct["artifacts"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListArtifactsResult[k], "ListArtifactsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListArtifactsResult
-- <p>Represents the result of a list artifacts operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * artifacts [Artifacts] <p>Information about the artifacts.</p>
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @return ListArtifactsResult structure as a key-value pair table
function M.ListArtifactsResult(args)
	assert(args, "You must provide an argument table when creating ListArtifactsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["artifacts"] = args["artifacts"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListArtifactsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDevicePoolResult = { ["devicePool"] = true, nil }

function asserts.AssertCreateDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then asserts.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDevicePoolResult[k], "CreateDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevicePoolResult
-- <p>Represents the result of a create device pool request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devicePool [DevicePool] <p>The newly created device pool.</p>
-- @return CreateDevicePoolResult structure as a key-value pair table
function M.CreateDevicePoolResult(args)
	assert(args, "You must provide an argument table when creating CreateDevicePoolResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devicePool"] = args["devicePool"],
	}
	asserts.AssertCreateDevicePoolResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleRunResult = { ["run"] = true, nil }

function asserts.AssertScheduleRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunResult to be of type 'table'")
	if struct["run"] then asserts.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleRunResult[k], "ScheduleRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunResult
-- <p>Represents the result of a schedule run request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * run [Run] <p>Information about the scheduled run.</p>
-- @return ScheduleRunResult structure as a key-value pair table
function M.ScheduleRunResult(args)
	assert(args, "You must provide an argument table when creating ScheduleRunResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["run"] = args["run"],
	}
	asserts.AssertScheduleRunResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSuitesRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListSuitesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSuitesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSuitesRequest[k], "ListSuitesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSuitesRequest
-- <p>Represents a request to the list suites operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The job's Amazon Resource Name (ARN).</p>
-- Required key: arn
-- @return ListSuitesRequest structure as a key-value pair table
function M.ListSuitesRequest(args)
	assert(args, "You must provide an argument table when creating ListSuitesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListSuitesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The specified entity was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>Any additional information about the exception.</p>
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInstanceProfileResult = { nil }

function asserts.AssertDeleteInstanceProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceProfileResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceProfileResult[k], "DeleteInstanceProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteInstanceProfileResult structure as a key-value pair table
function M.DeleteInstanceProfileResult(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteInstanceProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsResult = { ["accountSettings"] = true, nil }

function asserts.AssertGetAccountSettingsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResult to be of type 'table'")
	if struct["accountSettings"] then asserts.AssertAccountSettings(struct["accountSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsResult[k], "GetAccountSettingsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResult
-- <p>Represents the account settings return values from the <code>GetAccountSettings</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accountSettings [AccountSettings] <p>The account settings.</p>
-- @return GetAccountSettingsResult structure as a key-value pair table
function M.GetAccountSettingsResult(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["accountSettings"] = args["accountSettings"],
	}
	asserts.AssertGetAccountSettingsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceInstanceResult = { ["deviceInstance"] = true, nil }

function asserts.AssertGetDeviceInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceInstanceResult to be of type 'table'")
	if struct["deviceInstance"] then asserts.AssertDeviceInstance(struct["deviceInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceInstanceResult[k], "GetDeviceInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceInstance [DeviceInstance] <p>An object containing information about your device instance.</p>
-- @return GetDeviceInstanceResult structure as a key-value pair table
function M.GetDeviceInstanceResult(args)
	assert(args, "You must provide an argument table when creating GetDeviceInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceInstance"] = args["deviceInstance"],
	}
	asserts.AssertGetDeviceInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDevicePoolRequest = { ["rules"] = true, ["name"] = true, ["projectArn"] = true, ["description"] = true, nil }

function asserts.AssertCreateDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevicePoolRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["rules"], "Expected key rules to exist in table")
	if struct["rules"] then asserts.AssertRules(struct["rules"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["projectArn"] then asserts.AssertAmazonResourceName(struct["projectArn"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDevicePoolRequest[k], "CreateDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevicePoolRequest
-- <p>Represents a request to the create device pool operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rules [Rules] <p>The device pool's rules.</p>
-- * name [Name] <p>The device pool's name.</p>
-- * projectArn [AmazonResourceName] <p>The ARN of the project for the device pool.</p>
-- * description [Message] <p>The device pool's description.</p>
-- Required key: projectArn
-- Required key: name
-- Required key: rules
-- @return CreateDevicePoolRequest structure as a key-value pair table
function M.CreateDevicePoolRequest(args)
	assert(args, "You must provide an argument table when creating CreateDevicePoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rules"] = args["rules"],
		["name"] = args["name"],
		["projectArn"] = args["projectArn"],
		["description"] = args["description"],
	}
	asserts.AssertCreateDevicePoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecurringCharge = { ["cost"] = true, ["frequency"] = true, nil }

function asserts.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["cost"] then asserts.AssertMonetaryAmount(struct["cost"]) end
	if struct["frequency"] then asserts.AssertRecurringChargeFrequency(struct["frequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecurringCharge[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- <p>Specifies whether charges for devices will be recurring.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cost [MonetaryAmount] <p>The cost of the recurring charge.</p>
-- * frequency [RecurringChargeFrequency] <p>The frequency in which charges will recur.</p>
-- @return RecurringCharge structure as a key-value pair table
function M.RecurringCharge(args)
	assert(args, "You must provide an argument table when creating RecurringCharge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cost"] = args["cost"],
		["frequency"] = args["frequency"],
	}
	asserts.AssertRecurringCharge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectResult = { ["project"] = true, nil }

function asserts.AssertCreateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResult to be of type 'table'")
	if struct["project"] then asserts.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectResult[k], "CreateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResult
-- <p>Represents the result of a create project request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [Project] <p>The newly created project.</p>
-- @return CreateProjectResult structure as a key-value pair table
function M.CreateProjectResult(args)
	assert(args, "You must provide an argument table when creating CreateProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertCreateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Upload = { ["status"] = true, ["category"] = true, ["contentType"] = true, ["name"] = true, ["created"] = true, ["url"] = true, ["message"] = true, ["type"] = true, ["arn"] = true, ["metadata"] = true, nil }

function asserts.AssertUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Upload to be of type 'table'")
	if struct["status"] then asserts.AssertUploadStatus(struct["status"]) end
	if struct["category"] then asserts.AssertUploadCategory(struct["category"]) end
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["url"] then asserts.AssertURL(struct["url"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertUploadType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["metadata"] then asserts.AssertMetadata(struct["metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.Upload[k], "Upload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Upload
-- <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [UploadStatus] <p>The upload's status.</p> <p>Must be one of the following values:</p> <ul> <li> <p>FAILED: A failed status.</p> </li> <li> <p>INITIALIZED: An initialized status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SUCCEEDED: A succeeded status.</p> </li> </ul>
-- * category [UploadCategory] <p>The upload's category. Allowed values include:</p> <ul> <li> <p>CURATED: An upload managed by AWS Device Farm.</p> </li> <li> <p>PRIVATE: An upload managed by the AWS Device Farm customer.</p> </li> </ul>
-- * contentType [ContentType] <p>The upload's content type (for example, "application/octet-stream").</p>
-- * name [Name] <p>The upload's file name.</p>
-- * created [DateTime] <p>When the upload was created.</p>
-- * url [URL] <p>The pre-signed Amazon S3 URL that was used to store a file through a corresponding PUT request.</p>
-- * message [Message] <p>A message about the upload's result.</p>
-- * type [UploadType] <p>The upload's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>ANDROID_APP: An Android upload.</p> </li> <li> <p>IOS_APP: An iOS upload.</p> </li> <li> <p>WEB_APP: A web appliction upload.</p> </li> <li> <p>EXTERNAL_DATA: An external data upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>CALABASH_TEST_PACKAGE: A Calabash test package upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.</p> </li> <li> <p>UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.</p> </li> <li> <p>UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.</p> </li> <li> <p>XCTEST_TEST_PACKAGE: An XCode test package upload.</p> </li> <li> <p>XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The upload's ARN.</p>
-- * metadata [Metadata] <p>The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.</p>
-- @return Upload structure as a key-value pair table
function M.Upload(args)
	assert(args, "You must provide an argument table when creating Upload")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["category"] = args["category"],
		["contentType"] = args["contentType"],
		["name"] = args["name"],
		["created"] = args["created"],
		["url"] = args["url"],
		["message"] = args["message"],
		["type"] = args["type"],
		["arn"] = args["arn"],
		["metadata"] = args["metadata"],
	}
	asserts.AssertUpload(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingsRequest = { ["nextToken"] = true, nil }

function asserts.AssertListOfferingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingsRequest[k], "ListOfferingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsRequest
-- <p>Represents the request to list all offerings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListOfferingsRequest structure as a key-value pair table
function M.ListOfferingsRequest(args)
	assert(args, "You must provide an argument table when creating ListOfferingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNetworkProfilesRequest = { ["nextToken"] = true, ["type"] = true, ["arn"] = true, nil }

function asserts.AssertListNetworkProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNetworkProfilesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then asserts.AssertNetworkProfileType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNetworkProfilesRequest[k], "ListNetworkProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNetworkProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * type [NetworkProfileType] <p>The type of network profile you wish to return information about. Valid values are listed below.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list network profiles.</p>
-- Required key: arn
-- @return ListNetworkProfilesRequest structure as a key-value pair table
function M.ListNetworkProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListNetworkProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["type"] = args["type"],
		["arn"] = args["arn"],
	}
	asserts.AssertListNetworkProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUploadRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUploadRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUploadRequest[k], "DeleteUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUploadRequest
-- <p>Represents a request to the delete upload operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm upload you wish to delete.</p>
-- Required key: arn
-- @return DeleteUploadRequest structure as a key-value pair table
function M.DeleteUploadRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceRequest = { ["arn"] = true, nil }

function asserts.AssertGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceRequest[k], "GetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceRequest
-- <p>Represents a request to the get device request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The device type's ARN.</p>
-- Required key: arn
-- @return GetDeviceRequest structure as a key-value pair table
function M.GetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDevicePoolRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDevicePoolRequest[k], "DeleteDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevicePoolRequest
-- <p>Represents a request to the delete device pool operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool you wish to delete.</p>
-- Required key: arn
-- @return DeleteDevicePoolRequest structure as a key-value pair table
function M.DeleteDevicePoolRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDevicePoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteDevicePoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRemoteAccessSessionResult = { ["remoteAccessSession"] = true, nil }

function asserts.AssertStopRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then asserts.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRemoteAccessSessionResult[k], "StopRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRemoteAccessSessionResult
-- <p>Represents the response from the server that describes the remote access session when AWS Device Farm stops the session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * remoteAccessSession [RemoteAccessSession] <p>A container representing the metadata from the service about the remote access session you are stopping.</p>
-- @return StopRemoteAccessSessionResult structure as a key-value pair table
function M.StopRemoteAccessSessionResult(args)
	assert(args, "You must provide an argument table when creating StopRemoteAccessSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["remoteAccessSession"] = args["remoteAccessSession"],
	}
	asserts.AssertStopRemoteAccessSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRunRequest = { ["arn"] = true, nil }

function asserts.AssertStopRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRunRequest[k], "StopRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRunRequest
-- <p>Represents the request to stop a specific run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm run you wish to stop.</p>
-- Required key: arn
-- @return StopRunRequest structure as a key-value pair table
function M.StopRunRequest(args)
	assert(args, "You must provide an argument table when creating StopRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertStopRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IdempotencyException = { ["message"] = true, nil }

function asserts.AssertIdempotencyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotencyException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdempotencyException[k], "IdempotencyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotencyException
-- <p>An entity with the same name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>Any additional information about the exception.</p>
-- @return IdempotencyException structure as a key-value pair table
function M.IdempotencyException(args)
	assert(args, "You must provide an argument table when creating IdempotencyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertIdempotencyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncompatibilityMessage = { ["message"] = true, ["type"] = true, nil }

function asserts.AssertIncompatibilityMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibilityMessage to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertDeviceAttribute(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncompatibilityMessage[k], "IncompatibilityMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibilityMessage
-- <p>Represents information about incompatibility.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>A message about the incompatibility.</p>
-- * type [DeviceAttribute] <p>The type of incompatibility.</p> <p>Allowed values include:</p> <ul> <li> <p>ARN: The ARN.</p> </li> <li> <p>FORM_FACTOR: The form factor (for example, phone or tablet).</p> </li> <li> <p>MANUFACTURER: The manufacturer.</p> </li> <li> <p>PLATFORM: The platform (for example, Android or iOS).</p> </li> <li> <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.</p> </li> <li> <p>APPIUM_VERSION: The Appium version for the test.</p> </li> </ul>
-- @return IncompatibilityMessage structure as a key-value pair table
function M.IncompatibilityMessage(args)
	assert(args, "You must provide an argument table when creating IncompatibilityMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["type"] = args["type"],
	}
	asserts.AssertIncompatibilityMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MonetaryAmount = { ["amount"] = true, ["currencyCode"] = true, nil }

function asserts.AssertMonetaryAmount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MonetaryAmount to be of type 'table'")
	if struct["amount"] then asserts.AssertDouble(struct["amount"]) end
	if struct["currencyCode"] then asserts.AssertCurrencyCode(struct["currencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.MonetaryAmount[k], "MonetaryAmount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MonetaryAmount
-- <p>A number representing the monetary amount for an offering or transaction.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * amount [Double] <p>The numerical amount of an offering or transaction.</p>
-- * currencyCode [CurrencyCode] <p>The currency code of a monetary amount. For example, <code>USD</code> means "U.S. dollars."</p>
-- @return MonetaryAmount structure as a key-value pair table
function M.MonetaryAmount(args)
	assert(args, "You must provide an argument table when creating MonetaryAmount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["amount"] = args["amount"],
		["currencyCode"] = args["currencyCode"],
	}
	asserts.AssertMonetaryAmount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTestRequest = { ["arn"] = true, nil }

function asserts.AssertGetTestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTestRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTestRequest[k], "GetTestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTestRequest
-- <p>Represents a request to the get test operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The test's ARN.</p>
-- Required key: arn
-- @return GetTestRequest structure as a key-value pair table
function M.GetTestRequest(args)
	assert(args, "You must provide an argument table when creating GetTestRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetTestRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesResult = { ["nextToken"] = true, ["devices"] = true, nil }

function asserts.AssertListDevicesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["devices"] then asserts.AssertDevices(struct["devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesResult[k], "ListDevicesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesResult
-- <p>Represents the result of a list devices operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- * devices [Devices] <p>Information about the devices.</p>
-- @return ListDevicesResult structure as a key-value pair table
function M.ListDevicesResult(args)
	assert(args, "You must provide an argument table when creating ListDevicesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["devices"] = args["devices"],
	}
	asserts.AssertListDevicesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionConfiguration = { ["jobTimeoutMinutes"] = true, ["appPackagesCleanup"] = true, ["skipAppResign"] = true, ["videoCapture"] = true, ["accountsCleanup"] = true, nil }

function asserts.AssertExecutionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionConfiguration to be of type 'table'")
	if struct["jobTimeoutMinutes"] then asserts.AssertJobTimeoutMinutes(struct["jobTimeoutMinutes"]) end
	if struct["appPackagesCleanup"] then asserts.AssertAppPackagesCleanup(struct["appPackagesCleanup"]) end
	if struct["skipAppResign"] then asserts.AssertSkipAppResign(struct["skipAppResign"]) end
	if struct["videoCapture"] then asserts.AssertVideoCapture(struct["videoCapture"]) end
	if struct["accountsCleanup"] then asserts.AssertAccountsCleanup(struct["accountsCleanup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionConfiguration[k], "ExecutionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionConfiguration
-- <p>Represents configuration information about a test run, such as the execution timeout (in minutes).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobTimeoutMinutes [JobTimeoutMinutes] <p>The number of minutes a test run will execute before it times out.</p>
-- * appPackagesCleanup [AppPackagesCleanup] <p>True if app package cleanup is enabled at the beginning of the test; otherwise, false.</p>
-- * skipAppResign [SkipAppResign] <p>When set to <code>true</code>, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.</p> <p>For more information about how Device Farm re-signs your app(s), see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a> in the <i>AWS Device Farm FAQs</i>.</p>
-- * videoCapture [VideoCapture] <p>Set to true to enable video capture; otherwise, set to false. The default is true.</p>
-- * accountsCleanup [AccountsCleanup] <p>True if account cleanup is enabled at the beginning of the test; otherwise, false.</p>
-- @return ExecutionConfiguration structure as a key-value pair table
function M.ExecutionConfiguration(args)
	assert(args, "You must provide an argument table when creating ExecutionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobTimeoutMinutes"] = args["jobTimeoutMinutes"],
		["appPackagesCleanup"] = args["appPackagesCleanup"],
		["skipAppResign"] = args["skipAppResign"],
		["videoCapture"] = args["videoCapture"],
		["accountsCleanup"] = args["accountsCleanup"],
	}
	asserts.AssertExecutionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNetworkProfileResult = { ["networkProfile"] = true, nil }

function asserts.AssertUpdateNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then asserts.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNetworkProfileResult[k], "UpdateNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNetworkProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * networkProfile [NetworkProfile] <p>A list of the available network profiles.</p>
-- @return UpdateNetworkProfileResult structure as a key-value pair table
function M.UpdateNetworkProfileResult(args)
	assert(args, "You must provide an argument table when creating UpdateNetworkProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["networkProfile"] = args["networkProfile"],
	}
	asserts.AssertUpdateNetworkProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVPCEConfigurationRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteVPCEConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCEConfigurationRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVPCEConfigurationRequest[k], "DeleteVPCEConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCEConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to delete.</p>
-- Required key: arn
-- @return DeleteVPCEConfigurationRequest structure as a key-value pair table
function M.DeleteVPCEConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVPCEConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteVPCEConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicePoolCompatibilityRequest = { ["devicePoolArn"] = true, ["testType"] = true, ["test"] = true, ["appArn"] = true, ["configuration"] = true, nil }

function asserts.AssertGetDevicePoolCompatibilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolCompatibilityRequest to be of type 'table'")
	assert(struct["devicePoolArn"], "Expected key devicePoolArn to exist in table")
	if struct["devicePoolArn"] then asserts.AssertAmazonResourceName(struct["devicePoolArn"]) end
	if struct["testType"] then asserts.AssertTestType(struct["testType"]) end
	if struct["test"] then asserts.AssertScheduleRunTest(struct["test"]) end
	if struct["appArn"] then asserts.AssertAmazonResourceName(struct["appArn"]) end
	if struct["configuration"] then asserts.AssertScheduleRunConfiguration(struct["configuration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicePoolCompatibilityRequest[k], "GetDevicePoolCompatibilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolCompatibilityRequest
-- <p>Represents a request to the get device pool compatibility operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devicePoolArn [AmazonResourceName] <p>The device pool's ARN.</p>
-- * testType [TestType] <p>The test type for the specified device pool.</p> <p>Allowed values include the following:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- * test [ScheduleRunTest] <p>Information about the uploaded test to be run against the device pool.</p>
-- * appArn [AmazonResourceName] <p>The ARN of the app that is associated with the specified device pool.</p>
-- * configuration [ScheduleRunConfiguration] <p>An object containing information about the settings for a run.</p>
-- Required key: devicePoolArn
-- @return GetDevicePoolCompatibilityRequest structure as a key-value pair table
function M.GetDevicePoolCompatibilityRequest(args)
	assert(args, "You must provide an argument table when creating GetDevicePoolCompatibilityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devicePoolArn"] = args["devicePoolArn"],
		["testType"] = args["testType"],
		["test"] = args["test"],
		["appArn"] = args["appArn"],
		["configuration"] = args["configuration"],
	}
	asserts.AssertGetDevicePoolCompatibilityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRunResult = { nil }

function asserts.AssertDeleteRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRunResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRunResult[k], "DeleteRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRunResult
-- <p>Represents the result of a delete run request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRunResult structure as a key-value pair table
function M.DeleteRunResult(args)
	assert(args, "You must provide an argument table when creating DeleteRunResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteRunResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRemoteAccessSessionRequest = { ["instanceArn"] = true, ["skipAppResign"] = true, ["name"] = true, ["sshPublicKey"] = true, ["remoteRecordEnabled"] = true, ["deviceArn"] = true, ["clientId"] = true, ["interactionMode"] = true, ["remoteRecordAppArn"] = true, ["configuration"] = true, ["remoteDebugEnabled"] = true, ["projectArn"] = true, nil }

function asserts.AssertCreateRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["deviceArn"], "Expected key deviceArn to exist in table")
	if struct["instanceArn"] then asserts.AssertAmazonResourceName(struct["instanceArn"]) end
	if struct["skipAppResign"] then asserts.AssertBoolean(struct["skipAppResign"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["remoteRecordEnabled"] then asserts.AssertBoolean(struct["remoteRecordEnabled"]) end
	if struct["deviceArn"] then asserts.AssertAmazonResourceName(struct["deviceArn"]) end
	if struct["clientId"] then asserts.AssertClientId(struct["clientId"]) end
	if struct["interactionMode"] then asserts.AssertInteractionMode(struct["interactionMode"]) end
	if struct["remoteRecordAppArn"] then asserts.AssertAmazonResourceName(struct["remoteRecordAppArn"]) end
	if struct["configuration"] then asserts.AssertCreateRemoteAccessSessionConfiguration(struct["configuration"]) end
	if struct["remoteDebugEnabled"] then asserts.AssertBoolean(struct["remoteDebugEnabled"]) end
	if struct["projectArn"] then asserts.AssertAmazonResourceName(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRemoteAccessSessionRequest[k], "CreateRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionRequest
-- <p>Creates and submits a request to start a remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device instance for which you want to create a remote access session.</p>
-- * skipAppResign [Boolean] <p>When set to <code>true</code>, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.</p> <p>For more information about how Device Farm re-signs your app(s), see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a> in the <i>AWS Device Farm FAQs</i>.</p>
-- * name [Name] <p>The name of the remote access session that you wish to create.</p>
-- * sshPublicKey [SshPublicKey] <p>The public key of the <code>ssh</code> key pair you want to use for connecting to remote devices in your remote debugging session. This is only required if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>
-- * remoteRecordEnabled [Boolean] <p>Set to <code>true</code> to enable remote recording for the remote access session.</p>
-- * deviceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device for which you want to create a remote access session.</p>
-- * clientId [ClientId] <p>Unique identifier for the client. If you want access to multiple devices on the same client, you should pass the same <code>clientId</code> value in each call to <code>CreateRemoteAccessSession</code>. This is required only if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>
-- * interactionMode [InteractionMode] <p>The interaction mode of the remote access session. Valid values are:</p> <ul> <li> <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You <b>cannot</b> run XCUITest framework-based tests in this mode.</p> </li> <li> <p>NO_VIDEO: You are connected to the device but cannot interact with it or view the screen. This mode has the fastest test execution speed. You <b>can</b> run XCUITest framework-based tests in this mode.</p> </li> <li> <p>VIDEO_ONLY: You can view the screen but cannot touch or rotate it. You <b>can</b> run XCUITest framework-based tests and watch the screen in this mode.</p> </li> </ul>
-- * remoteRecordAppArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access session.</p>
-- * configuration [CreateRemoteAccessSessionConfiguration] <p>The configuration information for the remote access session request.</p>
-- * remoteDebugEnabled [Boolean] <p>Set to <code>true</code> if you want to access devices remotely for debugging in your remote access session.</p>
-- * projectArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to create a remote access session.</p>
-- Required key: projectArn
-- Required key: deviceArn
-- @return CreateRemoteAccessSessionRequest structure as a key-value pair table
function M.CreateRemoteAccessSessionRequest(args)
	assert(args, "You must provide an argument table when creating CreateRemoteAccessSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceArn"] = args["instanceArn"],
		["skipAppResign"] = args["skipAppResign"],
		["name"] = args["name"],
		["sshPublicKey"] = args["sshPublicKey"],
		["remoteRecordEnabled"] = args["remoteRecordEnabled"],
		["deviceArn"] = args["deviceArn"],
		["clientId"] = args["clientId"],
		["interactionMode"] = args["interactionMode"],
		["remoteRecordAppArn"] = args["remoteRecordAppArn"],
		["configuration"] = args["configuration"],
		["remoteDebugEnabled"] = args["remoteDebugEnabled"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertCreateRemoteAccessSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVPCEConfigurationResult = { ["vpceConfiguration"] = true, nil }

function asserts.AssertGetVPCEConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVPCEConfigurationResult to be of type 'table'")
	if struct["vpceConfiguration"] then asserts.AssertVPCEConfiguration(struct["vpceConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVPCEConfigurationResult[k], "GetVPCEConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVPCEConfigurationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfiguration [VPCEConfiguration] <p>An object containing information about your VPC endpoint configuration.</p>
-- @return GetVPCEConfigurationResult structure as a key-value pair table
function M.GetVPCEConfigurationResult(args)
	assert(args, "You must provide an argument table when creating GetVPCEConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfiguration"] = args["vpceConfiguration"],
	}
	asserts.AssertGetVPCEConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNetworkProfileResult = { ["networkProfile"] = true, nil }

function asserts.AssertGetNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then asserts.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNetworkProfileResult[k], "GetNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNetworkProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * networkProfile [NetworkProfile] <p>The network profile.</p>
-- @return GetNetworkProfileResult structure as a key-value pair table
function M.GetNetworkProfileResult(args)
	assert(args, "You must provide an argument table when creating GetNetworkProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["networkProfile"] = args["networkProfile"],
	}
	asserts.AssertGetNetworkProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsRequest[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
-- <p>Represents a request to the list jobs operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The run's Amazon Resource Name (ARN).</p>
-- Required key: arn
-- @return ListJobsRequest structure as a key-value pair table
function M.ListJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DevicePoolCompatibilityResult = { ["device"] = true, ["compatible"] = true, ["incompatibilityMessages"] = true, nil }

function asserts.AssertDevicePoolCompatibilityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevicePoolCompatibilityResult to be of type 'table'")
	if struct["device"] then asserts.AssertDevice(struct["device"]) end
	if struct["compatible"] then asserts.AssertBoolean(struct["compatible"]) end
	if struct["incompatibilityMessages"] then asserts.AssertIncompatibilityMessages(struct["incompatibilityMessages"]) end
	for k,_ in pairs(struct) do
		assert(keys.DevicePoolCompatibilityResult[k], "DevicePoolCompatibilityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevicePoolCompatibilityResult
-- <p>Represents a device pool compatibility result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * device [Device] <p>The device (phone or tablet) that you wish to return information about.</p>
-- * compatible [Boolean] <p>Whether the result was compatible with the device pool.</p>
-- * incompatibilityMessages [IncompatibilityMessages] <p>Information about the compatibility.</p>
-- @return DevicePoolCompatibilityResult structure as a key-value pair table
function M.DevicePoolCompatibilityResult(args)
	assert(args, "You must provide an argument table when creating DevicePoolCompatibilityResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["device"] = args["device"],
		["compatible"] = args["compatible"],
		["incompatibilityMessages"] = args["incompatibilityMessages"],
	}
	asserts.AssertDevicePoolCompatibilityResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUploadResult = { ["upload"] = true, nil }

function asserts.AssertUpdateUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUploadResult to be of type 'table'")
	if struct["upload"] then asserts.AssertUpload(struct["upload"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUploadResult[k], "UpdateUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUploadResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * upload [Upload] <p>A test spec uploaded to Device Farm.</p>
-- @return UpdateUploadResult structure as a key-value pair table
function M.UpdateUploadResult(args)
	assert(args, "You must provide an argument table when creating UpdateUploadResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["upload"] = args["upload"],
	}
	asserts.AssertUpdateUploadResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRequest = { ["arn"] = true, nil }

function asserts.AssertGetJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRequest[k], "GetJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRequest
-- <p>Represents a request to the get job operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The job's ARN.</p>
-- Required key: arn
-- @return GetJobRequest structure as a key-value pair table
function M.GetJobRequest(args)
	assert(args, "You must provide an argument table when creating GetJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVPCEConfigurationResult = { ["vpceConfiguration"] = true, nil }

function asserts.AssertCreateVPCEConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCEConfigurationResult to be of type 'table'")
	if struct["vpceConfiguration"] then asserts.AssertVPCEConfiguration(struct["vpceConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVPCEConfigurationResult[k], "CreateVPCEConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCEConfigurationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfiguration [VPCEConfiguration] <p>An object containing information about your VPC endpoint configuration.</p>
-- @return CreateVPCEConfigurationResult structure as a key-value pair table
function M.CreateVPCEConfigurationResult(args)
	assert(args, "You must provide an argument table when creating CreateVPCEConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfiguration"] = args["vpceConfiguration"],
	}
	asserts.AssertCreateVPCEConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Counters = { ["skipped"] = true, ["warned"] = true, ["failed"] = true, ["stopped"] = true, ["passed"] = true, ["errored"] = true, ["total"] = true, nil }

function asserts.AssertCounters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Counters to be of type 'table'")
	if struct["skipped"] then asserts.AssertInteger(struct["skipped"]) end
	if struct["warned"] then asserts.AssertInteger(struct["warned"]) end
	if struct["failed"] then asserts.AssertInteger(struct["failed"]) end
	if struct["stopped"] then asserts.AssertInteger(struct["stopped"]) end
	if struct["passed"] then asserts.AssertInteger(struct["passed"]) end
	if struct["errored"] then asserts.AssertInteger(struct["errored"]) end
	if struct["total"] then asserts.AssertInteger(struct["total"]) end
	for k,_ in pairs(struct) do
		assert(keys.Counters[k], "Counters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Counters
-- <p>Represents entity counters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * skipped [Integer] <p>The number of skipped entities.</p>
-- * warned [Integer] <p>The number of warned entities.</p>
-- * failed [Integer] <p>The number of failed entities.</p>
-- * stopped [Integer] <p>The number of stopped entities.</p>
-- * passed [Integer] <p>The number of passed entities.</p>
-- * errored [Integer] <p>The number of errored entities.</p>
-- * total [Integer] <p>The total number of entities.</p>
-- @return Counters structure as a key-value pair table
function M.Counters(args)
	assert(args, "You must provide an argument table when creating Counters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["skipped"] = args["skipped"],
		["warned"] = args["warned"],
		["failed"] = args["failed"],
		["stopped"] = args["stopped"],
		["passed"] = args["passed"],
		["errored"] = args["errored"],
		["total"] = args["total"],
	}
	asserts.AssertCounters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstallToRemoteAccessSessionResult = { ["appUpload"] = true, nil }

function asserts.AssertInstallToRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstallToRemoteAccessSessionResult to be of type 'table'")
	if struct["appUpload"] then asserts.AssertUpload(struct["appUpload"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstallToRemoteAccessSessionResult[k], "InstallToRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstallToRemoteAccessSessionResult
-- <p>Represents the response from the server after AWS Device Farm makes a request to install to a remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * appUpload [Upload] <p>An app to upload or that has been uploaded.</p>
-- @return InstallToRemoteAccessSessionResult structure as a key-value pair table
function M.InstallToRemoteAccessSessionResult(args)
	assert(args, "You must provide an argument table when creating InstallToRemoteAccessSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["appUpload"] = args["appUpload"],
	}
	asserts.AssertInstallToRemoteAccessSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceInstancesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListDeviceInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceInstancesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceInstancesRequest[k], "ListDeviceInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceInstancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * maxResults [Integer] <p>An integer specifying the maximum number of items you want to return in the API response.</p>
-- @return ListDeviceInstancesRequest structure as a key-value pair table
function M.ListDeviceInstancesRequest(args)
	assert(args, "You must provide an argument table when creating ListDeviceInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListDeviceInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstanceProfilesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListInstanceProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesRequest[k], "ListInstanceProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * maxResults [Integer] <p>An integer specifying the maximum number of items you want to return in the API response.</p>
-- @return ListInstanceProfilesRequest structure as a key-value pair table
function M.ListInstanceProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListInstanceProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rule = { ["operator"] = true, ["attribute"] = true, ["value"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["operator"] then asserts.AssertRuleOperator(struct["operator"]) end
	if struct["attribute"] then asserts.AssertDeviceAttribute(struct["attribute"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>Represents a condition for a device pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operator [RuleOperator] <p>The rule's operator.</p> <ul> <li> <p>EQUALS: The equals operator.</p> </li> <li> <p>GREATER_THAN: The greater-than operator.</p> </li> <li> <p>IN: The in operator.</p> </li> <li> <p>LESS_THAN: The less-than operator.</p> </li> <li> <p>NOT_IN: The not-in operator.</p> </li> <li> <p>CONTAINS: The contains operator.</p> </li> </ul>
-- * attribute [DeviceAttribute] <p>The rule's stringified attribute. For example, specify the value as <code>"\"abc\""</code>.</p> <p>Allowed values include:</p> <ul> <li> <p>ARN: The ARN.</p> </li> <li> <p>FORM_FACTOR: The form factor (for example, phone or tablet).</p> </li> <li> <p>MANUFACTURER: The manufacturer.</p> </li> <li> <p>PLATFORM: The platform (for example, Android or iOS).</p> </li> <li> <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.</p> </li> <li> <p>APPIUM_VERSION: The Appium version for the test.</p> </li> <li> <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.</p> </li> <li> <p>INSTANCE_LABELS: The label of the device instance.</p> </li> </ul>
-- * value [String] <p>The rule's value.</p>
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operator"] = args["operator"],
		["attribute"] = args["attribute"],
		["value"] = args["value"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNetworkProfileRequest = { ["name"] = true, ["downlinkLossPercent"] = true, ["uplinkLossPercent"] = true, ["uplinkJitterMs"] = true, ["downlinkJitterMs"] = true, ["arn"] = true, ["uplinkDelayMs"] = true, ["uplinkBandwidthBits"] = true, ["downlinkDelayMs"] = true, ["type"] = true, ["downlinkBandwidthBits"] = true, ["description"] = true, nil }

function asserts.AssertUpdateNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then asserts.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then asserts.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then asserts.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then asserts.AssertLong(struct["downlinkJitterMs"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["uplinkDelayMs"] then asserts.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then asserts.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then asserts.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then asserts.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then asserts.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNetworkProfileRequest[k], "UpdateNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNetworkProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name of the network profile about which you are returning information.</p>
-- * downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to update network profile settings.</p>
-- * uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * type [NetworkProfileType] <p>The type of network profile you wish to return information about. Valid values are listed below.</p>
-- * downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * description [Message] <p>The descriptoin of the network profile about which you are returning information.</p>
-- Required key: arn
-- @return UpdateNetworkProfileRequest structure as a key-value pair table
function M.UpdateNetworkProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateNetworkProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["downlinkLossPercent"] = args["downlinkLossPercent"],
		["uplinkLossPercent"] = args["uplinkLossPercent"],
		["uplinkJitterMs"] = args["uplinkJitterMs"],
		["downlinkJitterMs"] = args["downlinkJitterMs"],
		["arn"] = args["arn"],
		["uplinkDelayMs"] = args["uplinkDelayMs"],
		["uplinkBandwidthBits"] = args["uplinkBandwidthBits"],
		["downlinkDelayMs"] = args["downlinkDelayMs"],
		["type"] = args["type"],
		["downlinkBandwidthBits"] = args["downlinkBandwidthBits"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateNetworkProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUploadRequest = { ["editContent"] = true, ["contentType"] = true, ["name"] = true, ["arn"] = true, nil }

function asserts.AssertUpdateUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUploadRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["editContent"] then asserts.AssertBoolean(struct["editContent"]) end
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUploadRequest[k], "UpdateUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * editContent [Boolean] <p>Set to true if the YAML file has changed and needs to be updated; otherwise, set to false.</p>
-- * contentType [ContentType] <p>The upload's content type (for example, "application/x-yaml").</p>
-- * name [Name] <p>The upload's test spec file name. The name should not contain the '/' character. The test spec file name must end with the <code>.yaml</code> or <code>.yml</code> file extension.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the uploaded test spec.</p>
-- Required key: arn
-- @return UpdateUploadRequest structure as a key-value pair table
function M.UpdateUploadRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["editContent"] = args["editContent"],
		["contentType"] = args["contentType"],
		["name"] = args["name"],
		["arn"] = args["arn"],
	}
	asserts.AssertUpdateUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoteAccessSession = { ["status"] = true, ["instanceArn"] = true, ["endpoint"] = true, ["name"] = true, ["created"] = true, ["started"] = true, ["remoteRecordEnabled"] = true, ["clientId"] = true, ["deviceMinutes"] = true, ["deviceUdid"] = true, ["skipAppResign"] = true, ["stopped"] = true, ["result"] = true, ["interactionMode"] = true, ["device"] = true, ["remoteRecordAppArn"] = true, ["message"] = true, ["billingMethod"] = true, ["remoteDebugEnabled"] = true, ["arn"] = true, ["hostAddress"] = true, nil }

function asserts.AssertRemoteAccessSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoteAccessSession to be of type 'table'")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["instanceArn"] then asserts.AssertAmazonResourceName(struct["instanceArn"]) end
	if struct["endpoint"] then asserts.AssertString(struct["endpoint"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["created"] then asserts.AssertDateTime(struct["created"]) end
	if struct["started"] then asserts.AssertDateTime(struct["started"]) end
	if struct["remoteRecordEnabled"] then asserts.AssertBoolean(struct["remoteRecordEnabled"]) end
	if struct["clientId"] then asserts.AssertClientId(struct["clientId"]) end
	if struct["deviceMinutes"] then asserts.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["deviceUdid"] then asserts.AssertString(struct["deviceUdid"]) end
	if struct["skipAppResign"] then asserts.AssertSkipAppResign(struct["skipAppResign"]) end
	if struct["stopped"] then asserts.AssertDateTime(struct["stopped"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["interactionMode"] then asserts.AssertInteractionMode(struct["interactionMode"]) end
	if struct["device"] then asserts.AssertDevice(struct["device"]) end
	if struct["remoteRecordAppArn"] then asserts.AssertAmazonResourceName(struct["remoteRecordAppArn"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["billingMethod"] then asserts.AssertBillingMethod(struct["billingMethod"]) end
	if struct["remoteDebugEnabled"] then asserts.AssertBoolean(struct["remoteDebugEnabled"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["hostAddress"] then asserts.AssertHostAddress(struct["hostAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoteAccessSession[k], "RemoteAccessSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoteAccessSession
-- <p>Represents information about the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The status of the remote access session. Can be any of the following:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- * instanceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance.</p>
-- * endpoint [String] <p>The endpoint for the remote access sesssion.</p>
-- * name [Name] <p>The name of the remote access session.</p>
-- * created [DateTime] <p>The date and time the remote access session was created.</p>
-- * started [DateTime] <p>The date and time the remote access session was started.</p>
-- * remoteRecordEnabled [Boolean] <p>This flag is set to <code>true</code> if remote recording is enabled for the remote access session.</p>
-- * clientId [ClientId] <p>Unique identifier of your client for the remote access session. Only returned if remote debugging is enabled for the remote access session.</p>
-- * deviceMinutes [DeviceMinutes] <p>The number of minutes a device is used in a remote access sesssion (including setup and teardown minutes).</p>
-- * deviceUdid [String] <p>Unique device identifier for the remote device. Only returned if remote debugging is enabled for the remote access session.</p>
-- * skipAppResign [SkipAppResign] <p>When set to <code>true</code>, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.</p> <p>For more information about how Device Farm re-signs your app(s), see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a> in the <i>AWS Device Farm FAQs</i>.</p>
-- * stopped [DateTime] <p>The date and time the remote access session was stopped.</p>
-- * result [ExecutionResult] <p>The result of the remote access session. Can be any of the following:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * interactionMode [InteractionMode] <p>The interaction mode of the remote access session. Valid values are:</p> <ul> <li> <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You <b>cannot</b> run XCUITest framework-based tests in this mode.</p> </li> <li> <p>NO_VIDEO: You are connected to the device but cannot interact with it or view the screen. This mode has the fastest test execution speed. You <b>can</b> run XCUITest framework-based tests in this mode.</p> </li> <li> <p>VIDEO_ONLY: You can view the screen but cannot touch or rotate it. You <b>can</b> run XCUITest framework-based tests and watch the screen in this mode.</p> </li> </ul>
-- * device [Device] <p>The device (phone or tablet) used in the remote access session.</p>
-- * remoteRecordAppArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access session.</p>
-- * message [Message] <p>A message about the remote access session.</p>
-- * billingMethod [BillingMethod] <p>The billing method of the remote access session. Possible values include <code>METERED</code> or <code>UNMETERED</code>. For more information about metered devices, see <a href="http://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology">AWS Device Farm terminology</a>."</p>
-- * remoteDebugEnabled [Boolean] <p>This flag is set to <code>true</code> if remote debugging is enabled for the remote access session.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session.</p>
-- * hostAddress [HostAddress] <p>IP address of the EC2 host where you need to connect to remotely debug devices. Only returned if remote debugging is enabled for the remote access session.</p>
-- @return RemoteAccessSession structure as a key-value pair table
function M.RemoteAccessSession(args)
	assert(args, "You must provide an argument table when creating RemoteAccessSession")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["instanceArn"] = args["instanceArn"],
		["endpoint"] = args["endpoint"],
		["name"] = args["name"],
		["created"] = args["created"],
		["started"] = args["started"],
		["remoteRecordEnabled"] = args["remoteRecordEnabled"],
		["clientId"] = args["clientId"],
		["deviceMinutes"] = args["deviceMinutes"],
		["deviceUdid"] = args["deviceUdid"],
		["skipAppResign"] = args["skipAppResign"],
		["stopped"] = args["stopped"],
		["result"] = args["result"],
		["interactionMode"] = args["interactionMode"],
		["device"] = args["device"],
		["remoteRecordAppArn"] = args["remoteRecordAppArn"],
		["message"] = args["message"],
		["billingMethod"] = args["billingMethod"],
		["remoteDebugEnabled"] = args["remoteDebugEnabled"],
		["arn"] = args["arn"],
		["hostAddress"] = args["hostAddress"],
	}
	asserts.AssertRemoteAccessSession(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Device = { ["formFactor"] = true, ["fleetName"] = true, ["name"] = true, ["instances"] = true, ["remoteAccessEnabled"] = true, ["resolution"] = true, ["image"] = true, ["remoteDebugEnabled"] = true, ["fleetType"] = true, ["platform"] = true, ["carrier"] = true, ["radio"] = true, ["heapSize"] = true, ["memory"] = true, ["model"] = true, ["manufacturer"] = true, ["os"] = true, ["cpu"] = true, ["arn"] = true, ["modelId"] = true, nil }

function asserts.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["formFactor"] then asserts.AssertDeviceFormFactor(struct["formFactor"]) end
	if struct["fleetName"] then asserts.AssertString(struct["fleetName"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["instances"] then asserts.AssertDeviceInstances(struct["instances"]) end
	if struct["remoteAccessEnabled"] then asserts.AssertBoolean(struct["remoteAccessEnabled"]) end
	if struct["resolution"] then asserts.AssertResolution(struct["resolution"]) end
	if struct["image"] then asserts.AssertString(struct["image"]) end
	if struct["remoteDebugEnabled"] then asserts.AssertBoolean(struct["remoteDebugEnabled"]) end
	if struct["fleetType"] then asserts.AssertString(struct["fleetType"]) end
	if struct["platform"] then asserts.AssertDevicePlatform(struct["platform"]) end
	if struct["carrier"] then asserts.AssertString(struct["carrier"]) end
	if struct["radio"] then asserts.AssertString(struct["radio"]) end
	if struct["heapSize"] then asserts.AssertLong(struct["heapSize"]) end
	if struct["memory"] then asserts.AssertLong(struct["memory"]) end
	if struct["model"] then asserts.AssertString(struct["model"]) end
	if struct["manufacturer"] then asserts.AssertString(struct["manufacturer"]) end
	if struct["os"] then asserts.AssertString(struct["os"]) end
	if struct["cpu"] then asserts.AssertCPU(struct["cpu"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["modelId"] then asserts.AssertString(struct["modelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Device[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
-- <p>Represents a device type that an app is tested against.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * formFactor [DeviceFormFactor] <p>The device's form factor.</p> <p>Allowed values include:</p> <ul> <li> <p>PHONE: The phone form factor.</p> </li> <li> <p>TABLET: The tablet form factor.</p> </li> </ul>
-- * fleetName [String] <p>The name of the fleet to which this device belongs.</p>
-- * name [Name] <p>The device's display name.</p>
-- * instances [DeviceInstances] <p>The instances belonging to this device.</p>
-- * remoteAccessEnabled [Boolean] <p>Specifies whether remote access has been enabled for the specified device.</p>
-- * resolution [Resolution] <p>The resolution of the device.</p>
-- * image [String] <p>The device's image name.</p>
-- * remoteDebugEnabled [Boolean] <p>This flag is set to <code>true</code> if remote debugging is enabled for the device.</p>
-- * fleetType [String] <p>The type of fleet to which this device belongs. Possible values for fleet type are PRIVATE and PUBLIC.</p>
-- * platform [DevicePlatform] <p>The device's platform.</p> <p>Allowed values include:</p> <ul> <li> <p>ANDROID: The Android platform.</p> </li> <li> <p>IOS: The iOS platform.</p> </li> </ul>
-- * carrier [String] <p>The device's carrier.</p>
-- * radio [String] <p>The device's radio.</p>
-- * heapSize [Long] <p>The device's heap size, expressed in bytes.</p>
-- * memory [Long] <p>The device's total memory size, expressed in bytes.</p>
-- * model [String] <p>The device's model name.</p>
-- * manufacturer [String] <p>The device's manufacturer name.</p>
-- * os [String] <p>The device's operating system type.</p>
-- * cpu [CPU] <p>Information about the device's CPU.</p>
-- * arn [AmazonResourceName] <p>The device's ARN.</p>
-- * modelId [String] <p>The device's model ID.</p>
-- @return Device structure as a key-value pair table
function M.Device(args)
	assert(args, "You must provide an argument table when creating Device")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["formFactor"] = args["formFactor"],
		["fleetName"] = args["fleetName"],
		["name"] = args["name"],
		["instances"] = args["instances"],
		["remoteAccessEnabled"] = args["remoteAccessEnabled"],
		["resolution"] = args["resolution"],
		["image"] = args["image"],
		["remoteDebugEnabled"] = args["remoteDebugEnabled"],
		["fleetType"] = args["fleetType"],
		["platform"] = args["platform"],
		["carrier"] = args["carrier"],
		["radio"] = args["radio"],
		["heapSize"] = args["heapSize"],
		["memory"] = args["memory"],
		["model"] = args["model"],
		["manufacturer"] = args["manufacturer"],
		["os"] = args["os"],
		["cpu"] = args["cpu"],
		["arn"] = args["arn"],
		["modelId"] = args["modelId"],
	}
	asserts.AssertDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstanceProfileRequest = { ["arn"] = true, nil }

function asserts.AssertGetInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceProfileRequest[k], "GetInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of your instance profile.</p>
-- Required key: arn
-- @return GetInstanceProfileRequest structure as a key-value pair table
function M.GetInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNetworkProfileRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNetworkProfileRequest[k], "DeleteNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNetworkProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile you want to delete.</p>
-- Required key: arn
-- @return DeleteNetworkProfileRequest structure as a key-value pair table
function M.DeleteNetworkProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteNetworkProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteNetworkProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstallToRemoteAccessSessionRequest = { ["appArn"] = true, ["remoteAccessSessionArn"] = true, nil }

function asserts.AssertInstallToRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstallToRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["remoteAccessSessionArn"], "Expected key remoteAccessSessionArn to exist in table")
	assert(struct["appArn"], "Expected key appArn to exist in table")
	if struct["appArn"] then asserts.AssertAmazonResourceName(struct["appArn"]) end
	if struct["remoteAccessSessionArn"] then asserts.AssertAmazonResourceName(struct["remoteAccessSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstallToRemoteAccessSessionRequest[k], "InstallToRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstallToRemoteAccessSessionRequest
-- <p>Represents the request to install an Android application (in .apk format) or an iOS application (in .ipa format) as part of a remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * appArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the app about which you are requesting information.</p>
-- * remoteAccessSessionArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.</p>
-- Required key: remoteAccessSessionArn
-- Required key: appArn
-- @return InstallToRemoteAccessSessionRequest structure as a key-value pair table
function M.InstallToRemoteAccessSessionRequest(args)
	assert(args, "You must provide an argument table when creating InstallToRemoteAccessSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["appArn"] = args["appArn"],
		["remoteAccessSessionArn"] = args["remoteAccessSessionArn"],
	}
	asserts.AssertInstallToRemoteAccessSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInstanceProfileResult = { ["instanceProfile"] = true, nil }

function asserts.AssertUpdateInstanceProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInstanceProfileResult to be of type 'table'")
	if struct["instanceProfile"] then asserts.AssertInstanceProfile(struct["instanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInstanceProfileResult[k], "UpdateInstanceProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInstanceProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceProfile [InstanceProfile] <p>An object containing information about your instance profile.</p>
-- @return UpdateInstanceProfileResult structure as a key-value pair table
function M.UpdateInstanceProfileResult(args)
	assert(args, "You must provide an argument table when creating UpdateInstanceProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceProfile"] = args["instanceProfile"],
	}
	asserts.AssertUpdateInstanceProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsRequest = { nil }

function asserts.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsRequest[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
-- <p>Represents the request sent to retrieve the account settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountSettingsRequest structure as a key-value pair table
function M.GetAccountSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAccountSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUniqueProblemsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListUniqueProblemsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUniqueProblemsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUniqueProblemsRequest[k], "ListUniqueProblemsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUniqueProblemsRequest
-- <p>Represents a request to the list unique problems operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The unique problems' ARNs.</p>
-- Required key: arn
-- @return ListUniqueProblemsRequest structure as a key-value pair table
function M.ListUniqueProblemsRequest(args)
	assert(args, "You must provide an argument table when creating ListUniqueProblemsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListUniqueProblemsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleRunRequest = { ["name"] = true, ["test"] = true, ["executionConfiguration"] = true, ["devicePoolArn"] = true, ["configuration"] = true, ["appArn"] = true, ["projectArn"] = true, nil }

function asserts.AssertScheduleRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["devicePoolArn"], "Expected key devicePoolArn to exist in table")
	assert(struct["test"], "Expected key test to exist in table")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["test"] then asserts.AssertScheduleRunTest(struct["test"]) end
	if struct["executionConfiguration"] then asserts.AssertExecutionConfiguration(struct["executionConfiguration"]) end
	if struct["devicePoolArn"] then asserts.AssertAmazonResourceName(struct["devicePoolArn"]) end
	if struct["configuration"] then asserts.AssertScheduleRunConfiguration(struct["configuration"]) end
	if struct["appArn"] then asserts.AssertAmazonResourceName(struct["appArn"]) end
	if struct["projectArn"] then asserts.AssertAmazonResourceName(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleRunRequest[k], "ScheduleRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunRequest
-- <p>Represents a request to the schedule run operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name for the run to be scheduled.</p>
-- * test [ScheduleRunTest] <p>Information about the test for the run to be scheduled.</p>
-- * executionConfiguration [ExecutionConfiguration] <p>Specifies configuration information about a test run, such as the execution timeout (in minutes).</p>
-- * devicePoolArn [AmazonResourceName] <p>The ARN of the device pool for the run to be scheduled.</p>
-- * configuration [ScheduleRunConfiguration] <p>Information about the settings for the run to be scheduled.</p>
-- * appArn [AmazonResourceName] <p>The ARN of the app to schedule a run.</p>
-- * projectArn [AmazonResourceName] <p>The ARN of the project for the run to be scheduled.</p>
-- Required key: projectArn
-- Required key: devicePoolArn
-- Required key: test
-- @return ScheduleRunRequest structure as a key-value pair table
function M.ScheduleRunRequest(args)
	assert(args, "You must provide an argument table when creating ScheduleRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["test"] = args["test"],
		["executionConfiguration"] = args["executionConfiguration"],
		["devicePoolArn"] = args["devicePoolArn"],
		["configuration"] = args["configuration"],
		["appArn"] = args["appArn"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertScheduleRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicePoolsRequest = { ["nextToken"] = true, ["type"] = true, ["arn"] = true, nil }

function asserts.AssertListDevicePoolsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicePoolsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then asserts.AssertDevicePoolType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicePoolsRequest[k], "ListDevicePoolsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicePoolsRequest
-- <p>Represents the result of a list device pools request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * type [DevicePoolType] <p>The device pools' type.</p> <p>Allowed values include:</p> <ul> <li> <p>CURATED: A device pool that is created and managed by AWS Device Farm.</p> </li> <li> <p>PRIVATE: A device pool that is created and managed by the device pool developer.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The project ARN.</p>
-- Required key: arn
-- @return ListDevicePoolsRequest structure as a key-value pair table
function M.ListDevicePoolsRequest(args)
	assert(args, "You must provide an argument table when creating ListDevicePoolsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["type"] = args["type"],
		["arn"] = args["arn"],
	}
	asserts.AssertListDevicePoolsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectResult = { ["project"] = true, nil }

function asserts.AssertUpdateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResult to be of type 'table'")
	if struct["project"] then asserts.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectResult[k], "UpdateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResult
-- <p>Represents the result of an update project request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [Project] <p>The project you wish to update.</p>
-- @return UpdateProjectResult structure as a key-value pair table
function M.UpdateProjectResult(args)
	assert(args, "You must provide an argument table when creating UpdateProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertUpdateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Problem = { ["run"] = true, ["device"] = true, ["job"] = true, ["result"] = true, ["test"] = true, ["suite"] = true, ["message"] = true, nil }

function asserts.AssertProblem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Problem to be of type 'table'")
	if struct["run"] then asserts.AssertProblemDetail(struct["run"]) end
	if struct["device"] then asserts.AssertDevice(struct["device"]) end
	if struct["job"] then asserts.AssertProblemDetail(struct["job"]) end
	if struct["result"] then asserts.AssertExecutionResult(struct["result"]) end
	if struct["test"] then asserts.AssertProblemDetail(struct["test"]) end
	if struct["suite"] then asserts.AssertProblemDetail(struct["suite"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.Problem[k], "Problem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Problem
-- <p>Represents a specific warning or failure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * run [ProblemDetail] <p>Information about the associated run.</p>
-- * device [Device] <p>Information about the associated device.</p>
-- * job [ProblemDetail] <p>Information about the associated job.</p>
-- * result [ExecutionResult] <p>The problem's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- * test [ProblemDetail] <p>Information about the associated test.</p>
-- * suite [ProblemDetail] <p>Information about the associated suite.</p>
-- * message [Message] <p>A message about the problem's result.</p>
-- @return Problem structure as a key-value pair table
function M.Problem(args)
	assert(args, "You must provide an argument table when creating Problem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["run"] = args["run"],
		["device"] = args["device"],
		["job"] = args["job"],
		["result"] = args["result"],
		["test"] = args["test"],
		["suite"] = args["suite"],
		["message"] = args["message"],
	}
	asserts.AssertProblem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRemoteAccessSessionResult = { ["remoteAccessSession"] = true, nil }

function asserts.AssertCreateRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then asserts.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRemoteAccessSessionResult[k], "CreateRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionResult
-- <p>Represents the server response from a request to create a remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * remoteAccessSession [RemoteAccessSession] <p>A container that describes the remote access session when the request to create a remote access session is sent.</p>
-- @return CreateRemoteAccessSessionResult structure as a key-value pair table
function M.CreateRemoteAccessSessionResult(args)
	assert(args, "You must provide an argument table when creating CreateRemoteAccessSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["remoteAccessSession"] = args["remoteAccessSession"],
	}
	asserts.AssertCreateRemoteAccessSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRemoteAccessSessionConfiguration = { ["billingMethod"] = true, ["vpceConfigurationArns"] = true, nil }

function asserts.AssertCreateRemoteAccessSessionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionConfiguration to be of type 'table'")
	if struct["billingMethod"] then asserts.AssertBillingMethod(struct["billingMethod"]) end
	if struct["vpceConfigurationArns"] then asserts.AssertAmazonResourceNames(struct["vpceConfigurationArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRemoteAccessSessionConfiguration[k], "CreateRemoteAccessSessionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionConfiguration
-- <p>Configuration settings for a remote access session, including billing method.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * billingMethod [BillingMethod] <p>The billing method for the remote access session.</p>
-- * vpceConfigurationArns [AmazonResourceNames] <p>An array of Amazon Resource Names (ARNs) included in the VPC endpoint configuration.</p>
-- @return CreateRemoteAccessSessionConfiguration structure as a key-value pair table
function M.CreateRemoteAccessSessionConfiguration(args)
	assert(args, "You must provide an argument table when creating CreateRemoteAccessSessionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["billingMethod"] = args["billingMethod"],
		["vpceConfigurationArns"] = args["vpceConfigurationArns"],
	}
	asserts.AssertCreateRemoteAccessSessionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTestResult = { ["test"] = true, nil }

function asserts.AssertGetTestResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTestResult to be of type 'table'")
	if struct["test"] then asserts.AssertTest(struct["test"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTestResult[k], "GetTestResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTestResult
-- <p>Represents the result of a get test request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * test [Test] <p>A test condition that is evaluated.</p>
-- @return GetTestResult structure as a key-value pair table
function M.GetTestResult(args)
	assert(args, "You must provide an argument table when creating GetTestResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["test"] = args["test"],
	}
	asserts.AssertGetTestResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleRunConfiguration = { ["radios"] = true, ["locale"] = true, ["networkProfileArn"] = true, ["location"] = true, ["extraDataPackageArn"] = true, ["auxiliaryApps"] = true, ["billingMethod"] = true, ["vpceConfigurationArns"] = true, ["customerArtifactPaths"] = true, nil }

function asserts.AssertScheduleRunConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunConfiguration to be of type 'table'")
	if struct["radios"] then asserts.AssertRadios(struct["radios"]) end
	if struct["locale"] then asserts.AssertString(struct["locale"]) end
	if struct["networkProfileArn"] then asserts.AssertAmazonResourceName(struct["networkProfileArn"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["extraDataPackageArn"] then asserts.AssertAmazonResourceName(struct["extraDataPackageArn"]) end
	if struct["auxiliaryApps"] then asserts.AssertAmazonResourceNames(struct["auxiliaryApps"]) end
	if struct["billingMethod"] then asserts.AssertBillingMethod(struct["billingMethod"]) end
	if struct["vpceConfigurationArns"] then asserts.AssertAmazonResourceNames(struct["vpceConfigurationArns"]) end
	if struct["customerArtifactPaths"] then asserts.AssertCustomerArtifactPaths(struct["customerArtifactPaths"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleRunConfiguration[k], "ScheduleRunConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunConfiguration
-- <p>Represents the settings for a run. Includes things like location, radio states, auxiliary apps, and network profiles.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * radios [Radios] <p>Information about the radio states for the run.</p>
-- * locale [String] <p>Information about the locale that is used for the run.</p>
-- * networkProfileArn [AmazonResourceName] <p>Reserved for internal use.</p>
-- * location [Location] <p>Information about the location that is used for the run.</p>
-- * extraDataPackageArn [AmazonResourceName] <p>The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm will extract to external data for Android or the app's sandbox for iOS.</p>
-- * auxiliaryApps [AmazonResourceNames] <p>A list of auxiliary apps for the run.</p>
-- * billingMethod [BillingMethod] <p>Specifies the billing method for a test run: <code>metered</code> or <code>unmetered</code>. If the parameter is not specified, the default value is <code>metered</code>.</p>
-- * vpceConfigurationArns [AmazonResourceNames] <p>An array of Amazon Resource Names (ARNs) for your VPC endpoint configurations.</p>
-- * customerArtifactPaths [CustomerArtifactPaths] <p>Input <code>CustomerArtifactPaths</code> object for the scheduled run configuration.</p>
-- @return ScheduleRunConfiguration structure as a key-value pair table
function M.ScheduleRunConfiguration(args)
	assert(args, "You must provide an argument table when creating ScheduleRunConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["radios"] = args["radios"],
		["locale"] = args["locale"],
		["networkProfileArn"] = args["networkProfileArn"],
		["location"] = args["location"],
		["extraDataPackageArn"] = args["extraDataPackageArn"],
		["auxiliaryApps"] = args["auxiliaryApps"],
		["billingMethod"] = args["billingMethod"],
		["vpceConfigurationArns"] = args["vpceConfigurationArns"],
		["customerArtifactPaths"] = args["customerArtifactPaths"],
	}
	asserts.AssertScheduleRunConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceInstance = { ["status"] = true, ["udid"] = true, ["labels"] = true, ["deviceArn"] = true, ["instanceProfile"] = true, ["arn"] = true, nil }

function asserts.AssertDeviceInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceInstance to be of type 'table'")
	if struct["status"] then asserts.AssertInstanceStatus(struct["status"]) end
	if struct["udid"] then asserts.AssertString(struct["udid"]) end
	if struct["labels"] then asserts.AssertInstanceLabels(struct["labels"]) end
	if struct["deviceArn"] then asserts.AssertAmazonResourceName(struct["deviceArn"]) end
	if struct["instanceProfile"] then asserts.AssertInstanceProfile(struct["instanceProfile"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceInstance[k], "DeviceInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceInstance
-- <p>Represents the device instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [InstanceStatus] <p>The status of the device instance. Valid values are listed below.</p>
-- * udid [String] <p>Unique device identifier for the device instance.</p>
-- * labels [InstanceLabels] <p>An array of strings describing the device instance.</p>
-- * deviceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device.</p>
-- * instanceProfile [InstanceProfile] <p>A object containing information about the instance profile.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device instance.</p>
-- @return DeviceInstance structure as a key-value pair table
function M.DeviceInstance(args)
	assert(args, "You must provide an argument table when creating DeviceInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["udid"] = args["udid"],
		["labels"] = args["labels"],
		["deviceArn"] = args["deviceArn"],
		["instanceProfile"] = args["instanceProfile"],
		["arn"] = args["arn"],
	}
	asserts.AssertDeviceInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkProfile = { ["name"] = true, ["downlinkLossPercent"] = true, ["uplinkLossPercent"] = true, ["uplinkJitterMs"] = true, ["downlinkJitterMs"] = true, ["arn"] = true, ["uplinkDelayMs"] = true, ["uplinkBandwidthBits"] = true, ["downlinkDelayMs"] = true, ["type"] = true, ["downlinkBandwidthBits"] = true, ["description"] = true, nil }

function asserts.AssertNetworkProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkProfile to be of type 'table'")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then asserts.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then asserts.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then asserts.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then asserts.AssertLong(struct["downlinkJitterMs"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["uplinkDelayMs"] then asserts.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then asserts.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then asserts.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then asserts.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then asserts.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkProfile[k], "NetworkProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkProfile
-- <p>An array of settings that describes characteristics of a network profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name of the network profile.</p>
-- * downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile.</p>
-- * uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * type [NetworkProfileType] <p>The type of network profile. Valid values are listed below.</p>
-- * downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * description [Message] <p>The description of the network profile.</p>
-- @return NetworkProfile structure as a key-value pair table
function M.NetworkProfile(args)
	assert(args, "You must provide an argument table when creating NetworkProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["downlinkLossPercent"] = args["downlinkLossPercent"],
		["uplinkLossPercent"] = args["uplinkLossPercent"],
		["uplinkJitterMs"] = args["uplinkJitterMs"],
		["downlinkJitterMs"] = args["downlinkJitterMs"],
		["arn"] = args["arn"],
		["uplinkDelayMs"] = args["uplinkDelayMs"],
		["uplinkBandwidthBits"] = args["uplinkBandwidthBits"],
		["downlinkDelayMs"] = args["downlinkDelayMs"],
		["type"] = args["type"],
		["downlinkBandwidthBits"] = args["downlinkBandwidthBits"],
		["description"] = args["description"],
	}
	asserts.AssertNetworkProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVPCEConfigurationResult = { ["vpceConfiguration"] = true, nil }

function asserts.AssertUpdateVPCEConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVPCEConfigurationResult to be of type 'table'")
	if struct["vpceConfiguration"] then asserts.AssertVPCEConfiguration(struct["vpceConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVPCEConfigurationResult[k], "UpdateVPCEConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVPCEConfigurationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfiguration [VPCEConfiguration] <p>An object containing information about your VPC endpoint configuration.</p>
-- @return UpdateVPCEConfigurationResult structure as a key-value pair table
function M.UpdateVPCEConfigurationResult(args)
	assert(args, "You must provide an argument table when creating UpdateVPCEConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfiguration"] = args["vpceConfiguration"],
	}
	asserts.AssertUpdateVPCEConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Location = { ["latitude"] = true, ["longitude"] = true, nil }

function asserts.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	assert(struct["latitude"], "Expected key latitude to exist in table")
	assert(struct["longitude"], "Expected key longitude to exist in table")
	if struct["latitude"] then asserts.AssertDouble(struct["latitude"]) end
	if struct["longitude"] then asserts.AssertDouble(struct["longitude"]) end
	for k,_ in pairs(struct) do
		assert(keys.Location[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>Represents a latitude and longitude pair, expressed in geographic coordinate system degrees (for example 47.6204, -122.3491).</p> <p>Elevation is currently not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * latitude [Double] <p>The latitude.</p>
-- * longitude [Double] <p>The longitude.</p>
-- Required key: latitude
-- Required key: longitude
-- @return Location structure as a key-value pair table
function M.Location(args)
	assert(args, "You must provide an argument table when creating Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["latitude"] = args["latitude"],
		["longitude"] = args["longitude"],
	}
	asserts.AssertLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRunRequest = { ["arn"] = true, nil }

function asserts.AssertGetRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRunRequest[k], "GetRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRunRequest
-- <p>Represents a request to the get run operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The run's ARN.</p>
-- Required key: arn
-- @return GetRunRequest structure as a key-value pair table
function M.GetRunRequest(args)
	assert(args, "You must provide an argument table when creating GetRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resolution = { ["width"] = true, ["height"] = true, nil }

function asserts.AssertResolution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resolution to be of type 'table'")
	if struct["width"] then asserts.AssertInteger(struct["width"]) end
	if struct["height"] then asserts.AssertInteger(struct["height"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resolution[k], "Resolution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resolution
-- <p>Represents the screen resolution of a device in height and width, expressed in pixels.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * width [Integer] <p>The screen resolution's width, expressed in pixels.</p>
-- * height [Integer] <p>The screen resolution's height, expressed in pixels.</p>
-- @return Resolution structure as a key-value pair table
function M.Resolution(args)
	assert(args, "You must provide an argument table when creating Resolution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["width"] = args["width"],
		["height"] = args["height"],
	}
	asserts.AssertResolution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseOfferingRequest = { ["offeringPromotionId"] = true, ["quantity"] = true, ["offeringId"] = true, nil }

function asserts.AssertPurchaseOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingRequest to be of type 'table'")
	if struct["offeringPromotionId"] then asserts.AssertOfferingPromotionIdentifier(struct["offeringPromotionId"]) end
	if struct["quantity"] then asserts.AssertInteger(struct["quantity"]) end
	if struct["offeringId"] then asserts.AssertOfferingIdentifier(struct["offeringId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseOfferingRequest[k], "PurchaseOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingRequest
-- <p>Represents a request for a purchase offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringPromotionId [OfferingPromotionIdentifier] <p>The ID of the offering promotion to be applied to the purchase.</p>
-- * quantity [Integer] <p>The number of device slots you wish to purchase in an offering request.</p>
-- * offeringId [OfferingIdentifier] <p>The ID of the offering.</p>
-- @return PurchaseOfferingRequest structure as a key-value pair table
function M.PurchaseOfferingRequest(args)
	assert(args, "You must provide an argument table when creating PurchaseOfferingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringPromotionId"] = args["offeringPromotionId"],
		["quantity"] = args["quantity"],
		["offeringId"] = args["offeringId"],
	}
	asserts.AssertPurchaseOfferingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNetworkProfileResult = { ["networkProfile"] = true, nil }

function asserts.AssertCreateNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then asserts.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNetworkProfileResult[k], "CreateNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNetworkProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * networkProfile [NetworkProfile] <p>The network profile that is returned by the create network profile request.</p>
-- @return CreateNetworkProfileResult structure as a key-value pair table
function M.CreateNetworkProfileResult(args)
	assert(args, "You must provide an argument table when creating CreateNetworkProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["networkProfile"] = args["networkProfile"],
	}
	asserts.AssertCreateNetworkProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrialMinutes = { ["total"] = true, ["remaining"] = true, nil }

function asserts.AssertTrialMinutes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrialMinutes to be of type 'table'")
	if struct["total"] then asserts.AssertDouble(struct["total"]) end
	if struct["remaining"] then asserts.AssertDouble(struct["remaining"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrialMinutes[k], "TrialMinutes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrialMinutes
-- <p>Represents information about free trial device minutes for an AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * total [Double] <p>The total number of free trial minutes that the account started with.</p>
-- * remaining [Double] <p>The number of free trial minutes remaining in the account.</p>
-- @return TrialMinutes structure as a key-value pair table
function M.TrialMinutes(args)
	assert(args, "You must provide an argument table when creating TrialMinutes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["total"] = args["total"],
		["remaining"] = args["remaining"],
	}
	asserts.AssertTrialMinutes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceInstanceRequest = { ["arn"] = true, nil }

function asserts.AssertGetDeviceInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceInstanceRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceInstanceRequest[k], "GetDeviceInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance you're requesting information about.</p>
-- Required key: arn
-- @return GetDeviceInstanceRequest structure as a key-value pair table
function M.GetDeviceInstanceRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetDeviceInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOfferingStatusRequest = { ["nextToken"] = true, nil }

function asserts.AssertGetOfferingStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOfferingStatusRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOfferingStatusRequest[k], "GetOfferingStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOfferingStatusRequest
-- <p>Represents the request to retrieve the offering status for the specified customer or account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return GetOfferingStatusRequest structure as a key-value pair table
function M.GetOfferingStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetOfferingStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetOfferingStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOfferingStatusResult = { ["current"] = true, ["nextPeriod"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetOfferingStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOfferingStatusResult to be of type 'table'")
	if struct["current"] then asserts.AssertOfferingStatusMap(struct["current"]) end
	if struct["nextPeriod"] then asserts.AssertOfferingStatusMap(struct["nextPeriod"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOfferingStatusResult[k], "GetOfferingStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOfferingStatusResult
-- <p>Returns the status result for a device offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * current [OfferingStatusMap] <p>When specified, gets the offering status for the current period.</p>
-- * nextPeriod [OfferingStatusMap] <p>When specified, gets the offering status for the next period.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return GetOfferingStatusResult structure as a key-value pair table
function M.GetOfferingStatusResult(args)
	assert(args, "You must provide an argument table when creating GetOfferingStatusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["current"] = args["current"],
		["nextPeriod"] = args["nextPeriod"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetOfferingStatusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingTransactionsResult = { ["offeringTransactions"] = true, ["nextToken"] = true, nil }

function asserts.AssertListOfferingTransactionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingTransactionsResult to be of type 'table'")
	if struct["offeringTransactions"] then asserts.AssertOfferingTransactions(struct["offeringTransactions"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingTransactionsResult[k], "ListOfferingTransactionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingTransactionsResult
-- <p>Returns the transaction log of the specified offerings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offeringTransactions [OfferingTransactions] <p>The audit log of subscriptions you have purchased and modified through AWS Device Farm.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListOfferingTransactionsResult structure as a key-value pair table
function M.ListOfferingTransactionsResult(args)
	assert(args, "You must provide an argument table when creating ListOfferingTransactionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offeringTransactions"] = args["offeringTransactions"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingTransactionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Offering = { ["recurringCharges"] = true, ["platform"] = true, ["type"] = true, ["id"] = true, ["description"] = true, nil }

function asserts.AssertOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Offering to be of type 'table'")
	if struct["recurringCharges"] then asserts.AssertRecurringCharges(struct["recurringCharges"]) end
	if struct["platform"] then asserts.AssertDevicePlatform(struct["platform"]) end
	if struct["type"] then asserts.AssertOfferingType(struct["type"]) end
	if struct["id"] then asserts.AssertOfferingIdentifier(struct["id"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Offering[k], "Offering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Offering
-- <p>Represents the metadata of a device offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * recurringCharges [RecurringCharges] <p>Specifies whether there are recurring charges for the offering.</p>
-- * platform [DevicePlatform] <p>The platform of the device (e.g., ANDROID or IOS).</p>
-- * type [OfferingType] <p>The type of offering (e.g., "RECURRING") for a device.</p>
-- * id [OfferingIdentifier] <p>The ID that corresponds to a device offering.</p>
-- * description [Message] <p>A string describing the offering.</p>
-- @return Offering structure as a key-value pair table
function M.Offering(args)
	assert(args, "You must provide an argument table when creating Offering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["recurringCharges"] = args["recurringCharges"],
		["platform"] = args["platform"],
		["type"] = args["type"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVPCEConfigurationsResult = { ["nextToken"] = true, ["vpceConfigurations"] = true, nil }

function asserts.AssertListVPCEConfigurationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCEConfigurationsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["vpceConfigurations"] then asserts.AssertVPCEConfigurations(struct["vpceConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVPCEConfigurationsResult[k], "ListVPCEConfigurationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCEConfigurationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * vpceConfigurations [VPCEConfigurations] <p>An array of <code>VPCEConfiguration</code> objects containing information about your VPC endpoint configuration.</p>
-- @return ListVPCEConfigurationsResult structure as a key-value pair table
function M.ListVPCEConfigurationsResult(args)
	assert(args, "You must provide an argument table when creating ListVPCEConfigurationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["vpceConfigurations"] = args["vpceConfigurations"],
	}
	asserts.AssertListVPCEConfigurationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceInstanceRequest = { ["labels"] = true, ["profileArn"] = true, ["arn"] = true, nil }

function asserts.AssertUpdateDeviceInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceInstanceRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["labels"] then asserts.AssertInstanceLabels(struct["labels"]) end
	if struct["profileArn"] then asserts.AssertAmazonResourceName(struct["profileArn"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceInstanceRequest[k], "UpdateDeviceInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * labels [InstanceLabels] <p>An array of strings that you want to associate with the device instance.</p>
-- * profileArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the profile that you want to associate with the device instance.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device instance.</p>
-- Required key: arn
-- @return UpdateDeviceInstanceRequest structure as a key-value pair table
function M.UpdateDeviceInstanceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["labels"] = args["labels"],
		["profileArn"] = args["profileArn"],
		["arn"] = args["arn"],
	}
	asserts.AssertUpdateDeviceInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTestsResult = { ["tests"] = true, ["nextToken"] = true, nil }

function asserts.AssertListTestsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTestsResult to be of type 'table'")
	if struct["tests"] then asserts.AssertTests(struct["tests"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTestsResult[k], "ListTestsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTestsResult
-- <p>Represents the result of a list tests request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tests [Tests] <p>Information about the tests.</p>
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @return ListTestsResult structure as a key-value pair table
function M.ListTestsResult(args)
	assert(args, "You must provide an argument table when creating ListTestsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tests"] = args["tests"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListTestsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRemoteAccessSessionsResult = { ["nextToken"] = true, ["remoteAccessSessions"] = true, nil }

function asserts.AssertListRemoteAccessSessionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRemoteAccessSessionsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["remoteAccessSessions"] then asserts.AssertRemoteAccessSessions(struct["remoteAccessSessions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRemoteAccessSessionsResult[k], "ListRemoteAccessSessionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRemoteAccessSessionsResult
-- <p>Represents the response from the server after AWS Device Farm makes a request to return information about the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * remoteAccessSessions [RemoteAccessSessions] <p>A container representing the metadata from the service about each remote access session you are requesting.</p>
-- @return ListRemoteAccessSessionsResult structure as a key-value pair table
function M.ListRemoteAccessSessionsResult(args)
	assert(args, "You must provide an argument table when creating ListRemoteAccessSessionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["remoteAccessSessions"] = args["remoteAccessSessions"],
	}
	asserts.AssertListRemoteAccessSessionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Artifact = { ["url"] = true, ["extension"] = true, ["type"] = true, ["name"] = true, ["arn"] = true, nil }

function asserts.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["url"] then asserts.AssertURL(struct["url"]) end
	if struct["extension"] then asserts.AssertString(struct["extension"]) end
	if struct["type"] then asserts.AssertArtifactType(struct["type"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Artifact[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- <p>Represents the output of a test. Examples of artifacts include logs and screenshots.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * url [URL] <p>The pre-signed Amazon S3 URL that can be used with a corresponding GET request to download the artifact's file.</p>
-- * extension [String] <p>The artifact's file extension.</p>
-- * type [ArtifactType] <p>The artifact's type.</p> <p>Allowed values include the following:</p> <ul> <li> <p>UNKNOWN: An unknown type.</p> </li> <li> <p>SCREENSHOT: The screenshot type.</p> </li> <li> <p>DEVICE_LOG: The device log type.</p> </li> <li> <p>MESSAGE_LOG: The message log type.</p> </li> <li> <p>RESULT_LOG: The result log type.</p> </li> <li> <p>SERVICE_LOG: The service log type.</p> </li> <li> <p>WEBKIT_LOG: The web kit log type.</p> </li> <li> <p>INSTRUMENTATION_OUTPUT: The instrumentation type.</p> </li> <li> <p>EXERCISER_MONKEY_OUTPUT: For Android, the artifact (log) generated by an Android fuzz test.</p> </li> <li> <p>CALABASH_JSON_OUTPUT: The Calabash JSON output type.</p> </li> <li> <p>CALABASH_PRETTY_OUTPUT: The Calabash pretty output type.</p> </li> <li> <p>CALABASH_STANDARD_OUTPUT: The Calabash standard output type.</p> </li> <li> <p>CALABASH_JAVA_XML_OUTPUT: The Calabash Java XML output type.</p> </li> <li> <p>AUTOMATION_OUTPUT: The automation output type.</p> </li> <li> <p>APPIUM_SERVER_OUTPUT: The Appium server output type.</p> </li> <li> <p>APPIUM_JAVA_OUTPUT: The Appium Java output type.</p> </li> <li> <p>APPIUM_JAVA_XML_OUTPUT: The Appium Java XML output type.</p> </li> <li> <p>APPIUM_PYTHON_OUTPUT: The Appium Python output type.</p> </li> <li> <p>APPIUM_PYTHON_XML_OUTPUT: The Appium Python XML output type.</p> </li> <li> <p>EXPLORER_EVENT_LOG: The Explorer event log output type.</p> </li> <li> <p>EXPLORER_SUMMARY_LOG: The Explorer summary log output type.</p> </li> <li> <p>APPLICATION_CRASH_REPORT: The application crash report output type.</p> </li> <li> <p>XCTEST_LOG: The XCode test output type.</p> </li> </ul>
-- * name [Name] <p>The artifact's name.</p>
-- * arn [AmazonResourceName] <p>The artifact's ARN.</p>
-- @return Artifact structure as a key-value pair table
function M.Artifact(args)
	assert(args, "You must provide an argument table when creating Artifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["url"] = args["url"],
		["extension"] = args["extension"],
		["type"] = args["type"],
		["name"] = args["name"],
		["arn"] = args["arn"],
	}
	asserts.AssertArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectResult = { nil }

function asserts.AssertDeleteProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectResult[k], "DeleteProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResult
-- <p>Represents the result of a delete project request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProjectResult structure as a key-value pair table
function M.DeleteProjectResult(args)
	assert(args, "You must provide an argument table when creating DeleteProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInstanceProfileRequest = { ["arn"] = true, nil }

function asserts.AssertDeleteInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceProfileRequest[k], "DeleteInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the instance profile you are requesting to delete.</p>
-- Required key: arn
-- @return DeleteInstanceProfileRequest structure as a key-value pair table
function M.DeleteInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertDeleteInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicePoolRequest = { ["arn"] = true, nil }

function asserts.AssertGetDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicePoolRequest[k], "GetDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolRequest
-- <p>Represents a request to the get device pool operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The device pool's ARN.</p>
-- Required key: arn
-- @return GetDevicePoolRequest structure as a key-value pair table
function M.GetDevicePoolRequest(args)
	assert(args, "You must provide an argument table when creating GetDevicePoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetDevicePoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNetworkProfileRequest = { ["arn"] = true, nil }

function asserts.AssertGetNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNetworkProfileRequest[k], "GetNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNetworkProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile you want to return information about.</p>
-- Required key: arn
-- @return GetNetworkProfileRequest structure as a key-value pair table
function M.GetNetworkProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetNetworkProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetNetworkProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingsResult = { ["offerings"] = true, ["nextToken"] = true, nil }

function asserts.AssertListOfferingsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsResult to be of type 'table'")
	if struct["offerings"] then asserts.AssertOfferings(struct["offerings"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingsResult[k], "ListOfferingsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsResult
-- <p>Represents the return values of the list of offerings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * offerings [Offerings] <p>A value representing the list offering results.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListOfferingsResult structure as a key-value pair table
function M.ListOfferingsResult(args)
	assert(args, "You must provide an argument table when creating ListOfferingsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["offerings"] = args["offerings"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUploadRequest = { ["arn"] = true, nil }

function asserts.AssertGetUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUploadRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUploadRequest[k], "GetUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUploadRequest
-- <p>Represents a request to the get upload operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The upload's ARN.</p>
-- Required key: arn
-- @return GetUploadRequest structure as a key-value pair table
function M.GetUploadRequest(args)
	assert(args, "You must provide an argument table when creating GetUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopJobResult = { ["job"] = true, nil }

function asserts.AssertStopJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopJobResult to be of type 'table'")
	if struct["job"] then asserts.AssertJob(struct["job"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopJobResult[k], "StopJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopJobResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * job [Job] <p>The job that was stopped.</p>
-- @return StopJobResult structure as a key-value pair table
function M.StopJobResult(args)
	assert(args, "You must provide an argument table when creating StopJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["job"] = args["job"],
	}
	asserts.AssertStopJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingPromotionsRequest = { ["nextToken"] = true, nil }

function asserts.AssertListOfferingPromotionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingPromotionsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingPromotionsRequest[k], "ListOfferingPromotionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingPromotionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListOfferingPromotionsRequest structure as a key-value pair table
function M.ListOfferingPromotionsRequest(args)
	assert(args, "You must provide an argument table when creating ListOfferingPromotionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListOfferingPromotionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRunsResult = { ["runs"] = true, ["nextToken"] = true, nil }

function asserts.AssertListRunsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRunsResult to be of type 'table'")
	if struct["runs"] then asserts.AssertRuns(struct["runs"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRunsResult[k], "ListRunsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRunsResult
-- <p>Represents the result of a list runs request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * runs [Runs] <p>Information about the runs.</p>
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @return ListRunsResult structure as a key-value pair table
function M.ListRunsResult(args)
	assert(args, "You must provide an argument table when creating ListRunsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["runs"] = args["runs"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListRunsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopJobRequest = { ["arn"] = true, nil }

function asserts.AssertStopJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopJobRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopJobRequest[k], "StopJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm job you wish to stop.</p>
-- Required key: arn
-- @return StopJobRequest structure as a key-value pair table
function M.StopJobRequest(args)
	assert(args, "You must provide an argument table when creating StopJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertStopJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRunsRequest = { ["nextToken"] = true, ["arn"] = true, nil }

function asserts.AssertListRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRunsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRunsRequest[k], "ListRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRunsRequest
-- <p>Represents a request to the list runs operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list runs.</p>
-- Required key: arn
-- @return ListRunsRequest structure as a key-value pair table
function M.ListRunsRequest(args)
	assert(args, "You must provide an argument table when creating ListRunsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["arn"] = args["arn"],
	}
	asserts.AssertListRunsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotEligibleException = { ["message"] = true, nil }

function asserts.AssertNotEligibleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotEligibleException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotEligibleException[k], "NotEligibleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotEligibleException
-- <p>Exception gets thrown when a user is not eligible to perform the specified transaction.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>The HTTP response code of a Not Eligible exception.</p>
-- @return NotEligibleException structure as a key-value pair table
function M.NotEligibleException(args)
	assert(args, "You must provide an argument table when creating NotEligibleException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotEligibleException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSuiteRequest = { ["arn"] = true, nil }

function asserts.AssertGetSuiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSuiteRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSuiteRequest[k], "GetSuiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSuiteRequest
-- <p>Represents a request to the get suite operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The suite's ARN.</p>
-- Required key: arn
-- @return GetSuiteRequest structure as a key-value pair table
function M.GetSuiteRequest(args)
	assert(args, "You must provide an argument table when creating GetSuiteRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertGetSuiteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicePoolsResult = { ["devicePools"] = true, ["nextToken"] = true, nil }

function asserts.AssertListDevicePoolsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicePoolsResult to be of type 'table'")
	if struct["devicePools"] then asserts.AssertDevicePools(struct["devicePools"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicePoolsResult[k], "ListDevicePoolsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicePoolsResult
-- <p>Represents the result of a list device pools request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devicePools [DevicePools] <p>Information about the device pools.</p>
-- * nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @return ListDevicePoolsResult structure as a key-value pair table
function M.ListDevicePoolsResult(args)
	assert(args, "You must provide an argument table when creating ListDevicePoolsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devicePools"] = args["devicePools"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListDevicePoolsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProblemDetail = { ["name"] = true, ["arn"] = true, nil }

function asserts.AssertProblemDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProblemDetail to be of type 'table'")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProblemDetail[k], "ProblemDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProblemDetail
-- <p>Information about a problem detail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The problem detail's name.</p>
-- * arn [AmazonResourceName] <p>The problem detail's ARN.</p>
-- @return ProblemDetail structure as a key-value pair table
function M.ProblemDetail(args)
	assert(args, "You must provide an argument table when creating ProblemDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["arn"] = args["arn"],
	}
	asserts.AssertProblemDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRemoteAccessSessionRequest = { ["arn"] = true, nil }

function asserts.AssertStopRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRemoteAccessSessionRequest[k], "StopRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRemoteAccessSessionRequest
-- <p>Represents the request to stop the remote access session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session you wish to stop.</p>
-- Required key: arn
-- @return StopRemoteAccessSessionRequest structure as a key-value pair table
function M.StopRemoteAccessSessionRequest(args)
	assert(args, "You must provide an argument table when creating StopRemoteAccessSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertStopRemoteAccessSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNetworkProfileRequest = { ["name"] = true, ["downlinkLossPercent"] = true, ["uplinkLossPercent"] = true, ["uplinkJitterMs"] = true, ["downlinkJitterMs"] = true, ["projectArn"] = true, ["uplinkDelayMs"] = true, ["uplinkBandwidthBits"] = true, ["downlinkDelayMs"] = true, ["type"] = true, ["downlinkBandwidthBits"] = true, ["description"] = true, nil }

function asserts.AssertCreateNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNetworkProfileRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then asserts.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then asserts.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then asserts.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then asserts.AssertLong(struct["downlinkJitterMs"]) end
	if struct["projectArn"] then asserts.AssertAmazonResourceName(struct["projectArn"]) end
	if struct["uplinkDelayMs"] then asserts.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then asserts.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then asserts.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then asserts.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then asserts.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNetworkProfileRequest[k], "CreateNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNetworkProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name you wish to specify for the new network profile.</p>
-- * downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- * uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- * projectArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to create a network profile.</p>
-- * uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- * type [NetworkProfileType] <p>The type of network profile you wish to create. Valid values are listed below.</p>
-- * downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- * description [Message] <p>The description of the network profile.</p>
-- Required key: projectArn
-- Required key: name
-- @return CreateNetworkProfileRequest structure as a key-value pair table
function M.CreateNetworkProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateNetworkProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["downlinkLossPercent"] = args["downlinkLossPercent"],
		["uplinkLossPercent"] = args["uplinkLossPercent"],
		["uplinkJitterMs"] = args["uplinkJitterMs"],
		["downlinkJitterMs"] = args["downlinkJitterMs"],
		["projectArn"] = args["projectArn"],
		["uplinkDelayMs"] = args["uplinkDelayMs"],
		["uplinkBandwidthBits"] = args["uplinkBandwidthBits"],
		["downlinkDelayMs"] = args["downlinkDelayMs"],
		["type"] = args["type"],
		["downlinkBandwidthBits"] = args["downlinkBandwidthBits"],
		["description"] = args["description"],
	}
	asserts.AssertCreateNetworkProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNetworkProfilesResult = { ["nextToken"] = true, ["networkProfiles"] = true, nil }

function asserts.AssertListNetworkProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNetworkProfilesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["networkProfiles"] then asserts.AssertNetworkProfiles(struct["networkProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNetworkProfilesResult[k], "ListNetworkProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNetworkProfilesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * networkProfiles [NetworkProfiles] <p>A list of the available network profiles.</p>
-- @return ListNetworkProfilesResult structure as a key-value pair table
function M.ListNetworkProfilesResult(args)
	assert(args, "You must provide an argument table when creating ListNetworkProfilesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["networkProfiles"] = args["networkProfiles"],
	}
	asserts.AssertListNetworkProfilesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVPCEConfigurationRequest = { ["vpceConfigurationName"] = true, ["serviceDnsName"] = true, ["vpceConfigurationDescription"] = true, ["vpceServiceName"] = true, ["arn"] = true, nil }

function asserts.AssertUpdateVPCEConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVPCEConfigurationRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["vpceConfigurationName"] then asserts.AssertVPCEConfigurationName(struct["vpceConfigurationName"]) end
	if struct["serviceDnsName"] then asserts.AssertServiceDnsName(struct["serviceDnsName"]) end
	if struct["vpceConfigurationDescription"] then asserts.AssertVPCEConfigurationDescription(struct["vpceConfigurationDescription"]) end
	if struct["vpceServiceName"] then asserts.AssertVPCEServiceName(struct["vpceServiceName"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVPCEConfigurationRequest[k], "UpdateVPCEConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVPCEConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfigurationName [VPCEConfigurationName] <p>The friendly name you give to your VPC endpoint configuration, to manage your configurations more easily.</p>
-- * serviceDnsName [ServiceDnsName] <p>The DNS (domain) name used to connect to your private service in your Amazon VPC. The DNS name must not already be in use on the Internet.</p>
-- * vpceConfigurationDescription [VPCEConfigurationDescription] <p>An optional description, providing more details about your VPC endpoint configuration.</p>
-- * vpceServiceName [VPCEServiceName] <p>The name of the VPC endpoint service running inside your AWS account that you want Device Farm to test.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to update.</p>
-- Required key: arn
-- @return UpdateVPCEConfigurationRequest structure as a key-value pair table
function M.UpdateVPCEConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateVPCEConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfigurationName"] = args["vpceConfigurationName"],
		["serviceDnsName"] = args["serviceDnsName"],
		["vpceConfigurationDescription"] = args["vpceConfigurationDescription"],
		["vpceServiceName"] = args["vpceServiceName"],
		["arn"] = args["arn"],
	}
	asserts.AssertUpdateVPCEConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VPCEConfiguration = { ["vpceConfigurationName"] = true, ["serviceDnsName"] = true, ["vpceConfigurationDescription"] = true, ["vpceServiceName"] = true, ["arn"] = true, nil }

function asserts.AssertVPCEConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCEConfiguration to be of type 'table'")
	if struct["vpceConfigurationName"] then asserts.AssertVPCEConfigurationName(struct["vpceConfigurationName"]) end
	if struct["serviceDnsName"] then asserts.AssertServiceDnsName(struct["serviceDnsName"]) end
	if struct["vpceConfigurationDescription"] then asserts.AssertVPCEConfigurationDescription(struct["vpceConfigurationDescription"]) end
	if struct["vpceServiceName"] then asserts.AssertVPCEServiceName(struct["vpceServiceName"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCEConfiguration[k], "VPCEConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCEConfiguration
-- <p>Represents an Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpceConfigurationName [VPCEConfigurationName] <p>The friendly name you give to your VPC endpoint configuration, to manage your configurations more easily.</p>
-- * serviceDnsName [ServiceDnsName] <p>The DNS name that maps to the private IP address of the service you want to access.</p>
-- * vpceConfigurationDescription [VPCEConfigurationDescription] <p>An optional description, providing more details about your VPC endpoint configuration.</p>
-- * vpceServiceName [VPCEServiceName] <p>The name of the VPC endpoint service running inside your AWS account that you want Device Farm to test.</p>
-- * arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration.</p>
-- @return VPCEConfiguration structure as a key-value pair table
function M.VPCEConfiguration(args)
	assert(args, "You must provide an argument table when creating VPCEConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpceConfigurationName"] = args["vpceConfigurationName"],
		["serviceDnsName"] = args["serviceDnsName"],
		["vpceConfigurationDescription"] = args["vpceConfigurationDescription"],
		["vpceServiceName"] = args["vpceServiceName"],
		["arn"] = args["arn"],
	}
	asserts.AssertVPCEConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Sample = { ["url"] = true, ["type"] = true, ["arn"] = true, nil }

function asserts.AssertSample(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Sample to be of type 'table'")
	if struct["url"] then asserts.AssertURL(struct["url"]) end
	if struct["type"] then asserts.AssertSampleType(struct["type"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Sample[k], "Sample contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Sample
-- <p>Represents a sample of performance data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * url [URL] <p>The pre-signed Amazon S3 URL that can be used with a corresponding GET request to download the sample's file.</p>
-- * type [SampleType] <p>The sample's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>CPU: A CPU sample type. This is expressed as the app processing CPU time (including child processes) as reported by process, as a percentage.</p> </li> <li> <p>MEMORY: A memory usage sample type. This is expressed as the total proportional set size of an app process, in kilobytes.</p> </li> <li> <p>NATIVE_AVG_DRAWTIME</p> </li> <li> <p>NATIVE_FPS</p> </li> <li> <p>NATIVE_FRAMES</p> </li> <li> <p>NATIVE_MAX_DRAWTIME</p> </li> <li> <p>NATIVE_MIN_DRAWTIME</p> </li> <li> <p>OPENGL_AVG_DRAWTIME</p> </li> <li> <p>OPENGL_FPS</p> </li> <li> <p>OPENGL_FRAMES</p> </li> <li> <p>OPENGL_MAX_DRAWTIME</p> </li> <li> <p>OPENGL_MIN_DRAWTIME</p> </li> <li> <p>RX</p> </li> <li> <p>RX_RATE: The total number of bytes per second (TCP and UDP) that are sent, by app process.</p> </li> <li> <p>THREADS: A threads sample type. This is expressed as the total number of threads per app process.</p> </li> <li> <p>TX</p> </li> <li> <p>TX_RATE: The total number of bytes per second (TCP and UDP) that are received, by app process.</p> </li> </ul>
-- * arn [AmazonResourceName] <p>The sample's ARN.</p>
-- @return Sample structure as a key-value pair table
function M.Sample(args)
	assert(args, "You must provide an argument table when creating Sample")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["url"] = args["url"],
		["type"] = args["type"],
		["arn"] = args["arn"],
	}
	asserts.AssertSample(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DevicePool = { ["rules"] = true, ["type"] = true, ["name"] = true, ["arn"] = true, ["description"] = true, nil }

function asserts.AssertDevicePool(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevicePool to be of type 'table'")
	if struct["rules"] then asserts.AssertRules(struct["rules"]) end
	if struct["type"] then asserts.AssertDevicePoolType(struct["type"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["arn"] then asserts.AssertAmazonResourceName(struct["arn"]) end
	if struct["description"] then asserts.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DevicePool[k], "DevicePool contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevicePool
-- <p>Represents a collection of device types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rules [Rules] <p>Information about the device pool's rules.</p>
-- * type [DevicePoolType] <p>The device pool's type.</p> <p>Allowed values include:</p> <ul> <li> <p>CURATED: A device pool that is created and managed by AWS Device Farm.</p> </li> <li> <p>PRIVATE: A device pool that is created and managed by the device pool developer.</p> </li> </ul>
-- * name [Name] <p>The device pool's name.</p>
-- * arn [AmazonResourceName] <p>The device pool's ARN.</p>
-- * description [Message] <p>The device pool's description.</p>
-- @return DevicePool structure as a key-value pair table
function M.DevicePool(args)
	assert(args, "You must provide an argument table when creating DevicePool")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rules"] = args["rules"],
		["type"] = args["type"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["description"] = args["description"],
	}
	asserts.AssertDevicePool(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicePoolResult = { ["devicePool"] = true, nil }

function asserts.AssertGetDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then asserts.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicePoolResult[k], "GetDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolResult
-- <p>Represents the result of a get device pool request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devicePool [DevicePool] <p>An object containing information about the requested device pool.</p>
-- @return GetDevicePoolResult structure as a key-value pair table
function M.GetDevicePoolResult(args)
	assert(args, "You must provide an argument table when creating GetDevicePoolResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devicePool"] = args["devicePool"],
	}
	asserts.AssertGetDevicePoolResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicePoolCompatibilityResult = { ["compatibleDevices"] = true, ["incompatibleDevices"] = true, nil }

function asserts.AssertGetDevicePoolCompatibilityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolCompatibilityResult to be of type 'table'")
	if struct["compatibleDevices"] then asserts.AssertDevicePoolCompatibilityResults(struct["compatibleDevices"]) end
	if struct["incompatibleDevices"] then asserts.AssertDevicePoolCompatibilityResults(struct["incompatibleDevices"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicePoolCompatibilityResult[k], "GetDevicePoolCompatibilityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolCompatibilityResult
-- <p>Represents the result of describe device pool compatibility request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * compatibleDevices [DevicePoolCompatibilityResults] <p>Information about compatible devices.</p>
-- * incompatibleDevices [DevicePoolCompatibilityResults] <p>Information about incompatible devices.</p>
-- @return GetDevicePoolCompatibilityResult structure as a key-value pair table
function M.GetDevicePoolCompatibilityResult(args)
	assert(args, "You must provide an argument table when creating GetDevicePoolCompatibilityResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["compatibleDevices"] = args["compatibleDevices"],
		["incompatibleDevices"] = args["incompatibleDevices"],
	}
	asserts.AssertGetDevicePoolCompatibilityResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDevicePoolResult = { nil }

function asserts.AssertDeleteDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevicePoolResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDevicePoolResult[k], "DeleteDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevicePoolResult
-- <p>Represents the result of a delete device pool request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDevicePoolResult structure as a key-value pair table
function M.DeleteDevicePoolResult(args)
	assert(args, "You must provide an argument table when creating DeleteDevicePoolResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDevicePoolResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDevicePlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected DevicePlatform to be of type 'string'")
end

--  
function M.DevicePlatform(str)
	asserts.AssertDevicePlatform(str)
	return str
end

function asserts.AssertTransactionIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected TransactionIdentifier to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.TransactionIdentifier(str)
	asserts.AssertTransactionIdentifier(str)
	return str
end

function asserts.AssertAmazonResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceName to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.AmazonResourceName(str)
	asserts.AssertAmazonResourceName(str)
	return str
end

function asserts.AssertBillingMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected BillingMethod to be of type 'string'")
end

--  
function M.BillingMethod(str)
	asserts.AssertBillingMethod(str)
	return str
end

function asserts.AssertCurrencyCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrencyCode to be of type 'string'")
end

--  
function M.CurrencyCode(str)
	asserts.AssertCurrencyCode(str)
	return str
end

function asserts.AssertSampleType(str)
	assert(str)
	assert(type(str) == "string", "Expected SampleType to be of type 'string'")
end

--  
function M.SampleType(str)
	asserts.AssertSampleType(str)
	return str
end

function asserts.AssertVPCEConfigurationName(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCEConfigurationName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.VPCEConfigurationName(str)
	asserts.AssertVPCEConfigurationName(str)
	return str
end

function asserts.AssertOfferingTransactionType(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingTransactionType to be of type 'string'")
end

--  
function M.OfferingTransactionType(str)
	asserts.AssertOfferingTransactionType(str)
	return str
end

function asserts.AssertExecutionResultCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionResultCode to be of type 'string'")
end

--  
function M.ExecutionResultCode(str)
	asserts.AssertExecutionResultCode(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertInteractionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected InteractionMode to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.InteractionMode(str)
	asserts.AssertInteractionMode(str)
	return str
end

function asserts.AssertDevicePoolType(str)
	assert(str)
	assert(type(str) == "string", "Expected DevicePoolType to be of type 'string'")
end

--  
function M.DevicePoolType(str)
	asserts.AssertDevicePoolType(str)
	return str
end

function asserts.AssertArtifactCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactCategory to be of type 'string'")
end

--  
function M.ArtifactCategory(str)
	asserts.AssertArtifactCategory(str)
	return str
end

function asserts.AssertUploadType(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadType to be of type 'string'")
end

--  
function M.UploadType(str)
	asserts.AssertUploadType(str)
	return str
end

function asserts.AssertServiceDnsName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceDnsName to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ServiceDnsName(str)
	asserts.AssertServiceDnsName(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertURL(str)
	assert(str)
	assert(type(str) == "string", "Expected URL to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.URL(str)
	asserts.AssertURL(str)
	return str
end

function asserts.AssertDeviceFormFactor(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceFormFactor to be of type 'string'")
end

--  
function M.DeviceFormFactor(str)
	asserts.AssertDeviceFormFactor(str)
	return str
end

function asserts.AssertArtifactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactType to be of type 'string'")
end

--  
function M.ArtifactType(str)
	asserts.AssertArtifactType(str)
	return str
end

function asserts.AssertRecurringChargeFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected RecurringChargeFrequency to be of type 'string'")
end

--  
function M.RecurringChargeFrequency(str)
	asserts.AssertRecurringChargeFrequency(str)
	return str
end

function asserts.AssertDeviceAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceAttribute to be of type 'string'")
end

--  
function M.DeviceAttribute(str)
	asserts.AssertDeviceAttribute(str)
	return str
end

function asserts.AssertNetworkProfileType(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkProfileType to be of type 'string'")
end

--  
function M.NetworkProfileType(str)
	asserts.AssertNetworkProfileType(str)
	return str
end

function asserts.AssertVPCEServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCEServiceName to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.VPCEServiceName(str)
	asserts.AssertVPCEServiceName(str)
	return str
end

function asserts.AssertInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStatus to be of type 'string'")
end

--  
function M.InstanceStatus(str)
	asserts.AssertInstanceStatus(str)
	return str
end

function asserts.AssertSshPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SshPublicKey to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.SshPublicKey(str)
	asserts.AssertSshPublicKey(str)
	return str
end

function asserts.AssertFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Filter to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.Filter(str)
	asserts.AssertFilter(str)
	return str
end

function asserts.AssertOfferingIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingIdentifier to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.OfferingIdentifier(str)
	asserts.AssertOfferingIdentifier(str)
	return str
end

function asserts.AssertExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionStatus to be of type 'string'")
end

--  
function M.ExecutionStatus(str)
	asserts.AssertExecutionStatus(str)
	return str
end

function asserts.AssertExecutionResult(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionResult to be of type 'string'")
end

--  
function M.ExecutionResult(str)
	asserts.AssertExecutionResult(str)
	return str
end

function asserts.AssertOfferingType(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingType to be of type 'string'")
end

--  
function M.OfferingType(str)
	asserts.AssertOfferingType(str)
	return str
end

function asserts.AssertOfferingPromotionIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingPromotionIdentifier to be of type 'string'")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.OfferingPromotionIdentifier(str)
	asserts.AssertOfferingPromotionIdentifier(str)
	return str
end

function asserts.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ClientId(str)
	asserts.AssertClientId(str)
	return str
end

function asserts.AssertUploadCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadCategory to be of type 'string'")
end

--  
function M.UploadCategory(str)
	asserts.AssertUploadCategory(str)
	return str
end

function asserts.AssertAWSAccountNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountNumber to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.AWSAccountNumber(str)
	asserts.AssertAWSAccountNumber(str)
	return str
end

function asserts.AssertTestType(str)
	assert(str)
	assert(type(str) == "string", "Expected TestType to be of type 'string'")
end

--  
function M.TestType(str)
	asserts.AssertTestType(str)
	return str
end

function asserts.AssertRuleOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleOperator to be of type 'string'")
end

--  
function M.RuleOperator(str)
	asserts.AssertRuleOperator(str)
	return str
end

function asserts.AssertMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected Metadata to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.Metadata(str)
	asserts.AssertMetadata(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertVPCEConfigurationDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCEConfigurationDescription to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.VPCEConfigurationDescription(str)
	asserts.AssertVPCEConfigurationDescription(str)
	return str
end

function asserts.AssertHostAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected HostAddress to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.HostAddress(str)
	asserts.AssertHostAddress(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertUploadStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadStatus to be of type 'string'")
end

--  
function M.UploadStatus(str)
	asserts.AssertUploadStatus(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertJobTimeoutMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected JobTimeoutMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.JobTimeoutMinutes(integer)
	asserts.AssertJobTimeoutMinutes(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertPercentInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PercentInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PercentInteger(integer)
	asserts.AssertPercentInteger(integer)
	return integer
end

function asserts.AssertVideoCapture(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected VideoCapture to be of type 'boolean'")
end

function M.VideoCapture(boolean)
	asserts.AssertVideoCapture(boolean)
	return boolean
end

function asserts.AssertSkipAppResign(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SkipAppResign to be of type 'boolean'")
end

function M.SkipAppResign(boolean)
	asserts.AssertSkipAppResign(boolean)
	return boolean
end

function asserts.AssertAppPackagesCleanup(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AppPackagesCleanup to be of type 'boolean'")
end

function M.AppPackagesCleanup(boolean)
	asserts.AssertAppPackagesCleanup(boolean)
	return boolean
end

function asserts.AssertAccountsCleanup(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AccountsCleanup to be of type 'boolean'")
end

function M.AccountsCleanup(boolean)
	asserts.AssertAccountsCleanup(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertOfferingStatusMap(map)
	assert(map)
	assert(type(map) == "table", "Expected OfferingStatusMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertOfferingIdentifier(k)
		asserts.AssertOfferingStatus(v)
	end
end

function M.OfferingStatusMap(map)
	asserts.AssertOfferingStatusMap(map)
	return map
end

function asserts.AssertMaxSlotMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MaxSlotMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertInteger(v)
	end
end

function M.MaxSlotMap(map)
	asserts.AssertMaxSlotMap(map)
	return map
end

function asserts.AssertTestParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected TestParameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.TestParameters(map)
	asserts.AssertTestParameters(map)
	return map
end

function asserts.AssertPurchasedDevicesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PurchasedDevicesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDevicePlatform(k)
		asserts.AssertInteger(v)
	end
end

function M.PurchasedDevicesMap(map)
	asserts.AssertPurchasedDevicesMap(map)
	return map
end

function asserts.AssertUniqueProblemsByExecutionResultMap(map)
	assert(map)
	assert(type(map) == "table", "Expected UniqueProblemsByExecutionResultMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertExecutionResult(k)
		asserts.AssertUniqueProblems(v)
	end
end

function M.UniqueProblemsByExecutionResultMap(map)
	asserts.AssertUniqueProblemsByExecutionResultMap(map)
	return map
end

function asserts.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	asserts.AssertDateTime(timestamp)
	return timestamp
end

function asserts.AssertArtifacts(list)
	assert(list)
	assert(type(list) == "table", "Expected Artifacts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArtifact(v)
	end
end

--  
-- List of Artifact objects
function M.Artifacts(list)
	asserts.AssertArtifacts(list)
	return list
end

function asserts.AssertRemoteAccessSessions(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoteAccessSessions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRemoteAccessSession(v)
	end
end

--  
-- List of RemoteAccessSession objects
function M.RemoteAccessSessions(list)
	asserts.AssertRemoteAccessSessions(list)
	return list
end

function asserts.AssertInstanceProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceProfiles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceProfile(v)
	end
end

--  
-- List of InstanceProfile objects
function M.InstanceProfiles(list)
	asserts.AssertInstanceProfiles(list)
	return list
end

function asserts.AssertJobs(list)
	assert(list)
	assert(type(list) == "table", "Expected Jobs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.Jobs(list)
	asserts.AssertJobs(list)
	return list
end

function asserts.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	asserts.AssertRules(list)
	return list
end

function asserts.AssertIncompatibilityMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected IncompatibilityMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIncompatibilityMessage(v)
	end
end

--  
-- List of IncompatibilityMessage objects
function M.IncompatibilityMessages(list)
	asserts.AssertIncompatibilityMessages(list)
	return list
end

function asserts.AssertAmazonResourceNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AmazonResourceNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAmazonResourceName(v)
	end
end

--  
-- List of AmazonResourceName objects
function M.AmazonResourceNames(list)
	asserts.AssertAmazonResourceNames(list)
	return list
end

function asserts.AssertAndroidPaths(list)
	assert(list)
	assert(type(list) == "table", "Expected AndroidPaths to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AndroidPaths(list)
	asserts.AssertAndroidPaths(list)
	return list
end

function asserts.AssertProjects(list)
	assert(list)
	assert(type(list) == "table", "Expected Projects to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProject(v)
	end
end

--  
-- List of Project objects
function M.Projects(list)
	asserts.AssertProjects(list)
	return list
end

function asserts.AssertOfferings(list)
	assert(list)
	assert(type(list) == "table", "Expected Offerings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOffering(v)
	end
end

--  
-- List of Offering objects
function M.Offerings(list)
	asserts.AssertOfferings(list)
	return list
end

function asserts.AssertPackageIds(list)
	assert(list)
	assert(type(list) == "table", "Expected PackageIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.PackageIds(list)
	asserts.AssertPackageIds(list)
	return list
end

function asserts.AssertProblems(list)
	assert(list)
	assert(type(list) == "table", "Expected Problems to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProblem(v)
	end
end

--  
-- List of Problem objects
function M.Problems(list)
	asserts.AssertProblems(list)
	return list
end

function asserts.AssertSuites(list)
	assert(list)
	assert(type(list) == "table", "Expected Suites to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSuite(v)
	end
end

--  
-- List of Suite objects
function M.Suites(list)
	asserts.AssertSuites(list)
	return list
end

function asserts.AssertTests(list)
	assert(list)
	assert(type(list) == "table", "Expected Tests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTest(v)
	end
end

--  
-- List of Test objects
function M.Tests(list)
	asserts.AssertTests(list)
	return list
end

function asserts.AssertOfferingPromotions(list)
	assert(list)
	assert(type(list) == "table", "Expected OfferingPromotions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOfferingPromotion(v)
	end
end

--  
-- List of OfferingPromotion objects
function M.OfferingPromotions(list)
	asserts.AssertOfferingPromotions(list)
	return list
end

function asserts.AssertNetworkProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkProfiles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNetworkProfile(v)
	end
end

--  
-- List of NetworkProfile objects
function M.NetworkProfiles(list)
	asserts.AssertNetworkProfiles(list)
	return list
end

function asserts.AssertInstanceLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceLabels to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.InstanceLabels(list)
	asserts.AssertInstanceLabels(list)
	return list
end

function asserts.AssertDevices(list)
	assert(list)
	assert(type(list) == "table", "Expected Devices to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDevice(v)
	end
end

--  
-- List of Device objects
function M.Devices(list)
	asserts.AssertDevices(list)
	return list
end

function asserts.AssertDeviceHostPaths(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceHostPaths to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DeviceHostPaths(list)
	asserts.AssertDeviceHostPaths(list)
	return list
end

function asserts.AssertDevicePools(list)
	assert(list)
	assert(type(list) == "table", "Expected DevicePools to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDevicePool(v)
	end
end

--  
-- List of DevicePool objects
function M.DevicePools(list)
	asserts.AssertDevicePools(list)
	return list
end

function asserts.AssertVPCEConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected VPCEConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVPCEConfiguration(v)
	end
end

--  
-- List of VPCEConfiguration objects
function M.VPCEConfigurations(list)
	asserts.AssertVPCEConfigurations(list)
	return list
end

function asserts.AssertIosPaths(list)
	assert(list)
	assert(type(list) == "table", "Expected IosPaths to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.IosPaths(list)
	asserts.AssertIosPaths(list)
	return list
end

function asserts.AssertDeviceInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceInstances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceInstance(v)
	end
end

--  
-- List of DeviceInstance objects
function M.DeviceInstances(list)
	asserts.AssertDeviceInstances(list)
	return list
end

function asserts.AssertDevicePoolCompatibilityResults(list)
	assert(list)
	assert(type(list) == "table", "Expected DevicePoolCompatibilityResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDevicePoolCompatibilityResult(v)
	end
end

--  
-- List of DevicePoolCompatibilityResult objects
function M.DevicePoolCompatibilityResults(list)
	asserts.AssertDevicePoolCompatibilityResults(list)
	return list
end

function asserts.AssertOfferingTransactions(list)
	assert(list)
	assert(type(list) == "table", "Expected OfferingTransactions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOfferingTransaction(v)
	end
end

--  
-- List of OfferingTransaction objects
function M.OfferingTransactions(list)
	asserts.AssertOfferingTransactions(list)
	return list
end

function asserts.AssertUniqueProblems(list)
	assert(list)
	assert(type(list) == "table", "Expected UniqueProblems to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUniqueProblem(v)
	end
end

--  
-- List of UniqueProblem objects
function M.UniqueProblems(list)
	asserts.AssertUniqueProblems(list)
	return list
end

function asserts.AssertRuns(list)
	assert(list)
	assert(type(list) == "table", "Expected Runs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRun(v)
	end
end

--  
-- List of Run objects
function M.Runs(list)
	asserts.AssertRuns(list)
	return list
end

function asserts.AssertSamples(list)
	assert(list)
	assert(type(list) == "table", "Expected Samples to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSample(v)
	end
end

--  
-- List of Sample objects
function M.Samples(list)
	asserts.AssertSamples(list)
	return list
end

function asserts.AssertRecurringCharges(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringCharges to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringCharges(list)
	asserts.AssertRecurringCharges(list)
	return list
end

function asserts.AssertUploads(list)
	assert(list)
	assert(type(list) == "table", "Expected Uploads to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpload(v)
	end
end

--  
-- List of Upload objects
function M.Uploads(list)
	asserts.AssertUploads(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "devicefarm.amazonaws.com"
		end
	end
	local ss = { "devicefarm" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ListSamples asynchronously, invoking a callback when done
-- @param ListSamplesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSamplesAsync(ListSamplesRequest, cb)
	assert(ListSamplesRequest, "You must provide a ListSamplesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListSamples",
	}
	for header,value in pairs(ListSamplesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSamplesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSamples synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSamplesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSamplesSync(ListSamplesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSamplesAsync(ListSamplesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseOffering asynchronously, invoking a callback when done
-- @param PurchaseOfferingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseOfferingAsync(PurchaseOfferingRequest, cb)
	assert(PurchaseOfferingRequest, "You must provide a PurchaseOfferingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.PurchaseOffering",
	}
	for header,value in pairs(PurchaseOfferingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PurchaseOfferingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseOfferingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PurchaseOfferingSync(PurchaseOfferingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseOfferingAsync(PurchaseOfferingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUpload asynchronously, invoking a callback when done
-- @param GetUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUploadAsync(GetUploadRequest, cb)
	assert(GetUploadRequest, "You must provide a GetUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetUpload",
	}
	for header,value in pairs(GetUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUploadSync(GetUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUploadAsync(GetUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOfferingPromotions asynchronously, invoking a callback when done
-- @param ListOfferingPromotionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOfferingPromotionsAsync(ListOfferingPromotionsRequest, cb)
	assert(ListOfferingPromotionsRequest, "You must provide a ListOfferingPromotionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferingPromotions",
	}
	for header,value in pairs(ListOfferingPromotionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOfferingPromotionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOfferingPromotions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOfferingPromotionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOfferingPromotionsSync(ListOfferingPromotionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOfferingPromotionsAsync(ListOfferingPromotionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDevicePool asynchronously, invoking a callback when done
-- @param UpdateDevicePoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDevicePoolAsync(UpdateDevicePoolRequest, cb)
	assert(UpdateDevicePoolRequest, "You must provide a UpdateDevicePoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateDevicePool",
	}
	for header,value in pairs(UpdateDevicePoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDevicePoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDevicePool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDevicePoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDevicePoolSync(UpdateDevicePoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDevicePoolAsync(UpdateDevicePoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopRun asynchronously, invoking a callback when done
-- @param StopRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopRunAsync(StopRunRequest, cb)
	assert(StopRunRequest, "You must provide a StopRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.StopRun",
	}
	for header,value in pairs(StopRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopRunSync(StopRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopRunAsync(StopRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRemoteAccessSession asynchronously, invoking a callback when done
-- @param CreateRemoteAccessSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRemoteAccessSessionAsync(CreateRemoteAccessSessionRequest, cb)
	assert(CreateRemoteAccessSessionRequest, "You must provide a CreateRemoteAccessSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateRemoteAccessSession",
	}
	for header,value in pairs(CreateRemoteAccessSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRemoteAccessSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRemoteAccessSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRemoteAccessSessionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRemoteAccessSessionSync(CreateRemoteAccessSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRemoteAccessSessionAsync(CreateRemoteAccessSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstanceProfile asynchronously, invoking a callback when done
-- @param DeleteInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInstanceProfileAsync(DeleteInstanceProfileRequest, cb)
	assert(DeleteInstanceProfileRequest, "You must provide a DeleteInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteInstanceProfile",
	}
	for header,value in pairs(DeleteInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInstanceProfileSync(DeleteInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceProfileAsync(DeleteInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOfferings asynchronously, invoking a callback when done
-- @param ListOfferingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOfferingsAsync(ListOfferingsRequest, cb)
	assert(ListOfferingsRequest, "You must provide a ListOfferingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferings",
	}
	for header,value in pairs(ListOfferingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOfferingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOfferingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOfferingsSync(ListOfferingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOfferingsAsync(ListOfferingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeviceInstances asynchronously, invoking a callback when done
-- @param ListDeviceInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeviceInstancesAsync(ListDeviceInstancesRequest, cb)
	assert(ListDeviceInstancesRequest, "You must provide a ListDeviceInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListDeviceInstances",
	}
	for header,value in pairs(ListDeviceInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeviceInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeviceInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceInstancesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeviceInstancesSync(ListDeviceInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceInstancesAsync(ListDeviceInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTest asynchronously, invoking a callback when done
-- @param GetTestRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTestAsync(GetTestRequest, cb)
	assert(GetTestRequest, "You must provide a GetTestRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetTest",
	}
	for header,value in pairs(GetTestRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTestRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTestRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTestSync(GetTestRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTestAsync(GetTestRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNetworkProfile asynchronously, invoking a callback when done
-- @param DeleteNetworkProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNetworkProfileAsync(DeleteNetworkProfileRequest, cb)
	assert(DeleteNetworkProfileRequest, "You must provide a DeleteNetworkProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteNetworkProfile",
	}
	for header,value in pairs(DeleteNetworkProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNetworkProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNetworkProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNetworkProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNetworkProfileSync(DeleteNetworkProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNetworkProfileAsync(DeleteNetworkProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListProjects",
	}
	for header,value in pairs(ListProjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProjectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProjectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListProjectsSync(ListProjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(ListProjectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListNetworkProfiles asynchronously, invoking a callback when done
-- @param ListNetworkProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListNetworkProfilesAsync(ListNetworkProfilesRequest, cb)
	assert(ListNetworkProfilesRequest, "You must provide a ListNetworkProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListNetworkProfiles",
	}
	for header,value in pairs(ListNetworkProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListNetworkProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListNetworkProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListNetworkProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListNetworkProfilesSync(ListNetworkProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListNetworkProfilesAsync(ListNetworkProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInstanceProfile asynchronously, invoking a callback when done
-- @param UpdateInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateInstanceProfileAsync(UpdateInstanceProfileRequest, cb)
	assert(UpdateInstanceProfileRequest, "You must provide a UpdateInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateInstanceProfile",
	}
	for header,value in pairs(UpdateInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateInstanceProfileSync(UpdateInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInstanceProfileAsync(UpdateInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVPCEConfiguration asynchronously, invoking a callback when done
-- @param UpdateVPCEConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVPCEConfigurationAsync(UpdateVPCEConfigurationRequest, cb)
	assert(UpdateVPCEConfigurationRequest, "You must provide a UpdateVPCEConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateVPCEConfiguration",
	}
	for header,value in pairs(UpdateVPCEConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateVPCEConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVPCEConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVPCEConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateVPCEConfigurationSync(UpdateVPCEConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVPCEConfigurationAsync(UpdateVPCEConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUpload asynchronously, invoking a callback when done
-- @param DeleteUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUploadAsync(DeleteUploadRequest, cb)
	assert(DeleteUploadRequest, "You must provide a DeleteUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteUpload",
	}
	for header,value in pairs(DeleteUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUploadSync(DeleteUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUploadAsync(DeleteUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSuite asynchronously, invoking a callback when done
-- @param GetSuiteRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSuiteAsync(GetSuiteRequest, cb)
	assert(GetSuiteRequest, "You must provide a GetSuiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetSuite",
	}
	for header,value in pairs(GetSuiteRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSuiteRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSuite synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSuiteRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSuiteSync(GetSuiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSuiteAsync(GetSuiteRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRemoteAccessSession asynchronously, invoking a callback when done
-- @param DeleteRemoteAccessSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRemoteAccessSessionAsync(DeleteRemoteAccessSessionRequest, cb)
	assert(DeleteRemoteAccessSessionRequest, "You must provide a DeleteRemoteAccessSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteRemoteAccessSession",
	}
	for header,value in pairs(DeleteRemoteAccessSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRemoteAccessSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRemoteAccessSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRemoteAccessSessionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRemoteAccessSessionSync(DeleteRemoteAccessSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRemoteAccessSessionAsync(DeleteRemoteAccessSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceProfile asynchronously, invoking a callback when done
-- @param GetInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInstanceProfileAsync(GetInstanceProfileRequest, cb)
	assert(GetInstanceProfileRequest, "You must provide a GetInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetInstanceProfile",
	}
	for header,value in pairs(GetInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInstanceProfileSync(GetInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceProfileAsync(GetInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRun asynchronously, invoking a callback when done
-- @param DeleteRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRunAsync(DeleteRunRequest, cb)
	assert(DeleteRunRequest, "You must provide a DeleteRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteRun",
	}
	for header,value in pairs(DeleteRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRunSync(DeleteRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRunAsync(DeleteRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOfferingTransactions asynchronously, invoking a callback when done
-- @param ListOfferingTransactionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOfferingTransactionsAsync(ListOfferingTransactionsRequest, cb)
	assert(ListOfferingTransactionsRequest, "You must provide a ListOfferingTransactionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferingTransactions",
	}
	for header,value in pairs(ListOfferingTransactionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOfferingTransactionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOfferingTransactions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOfferingTransactionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOfferingTransactionsSync(ListOfferingTransactionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOfferingTransactionsAsync(ListOfferingTransactionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetProject asynchronously, invoking a callback when done
-- @param GetProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetProjectAsync(GetProjectRequest, cb)
	assert(GetProjectRequest, "You must provide a GetProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetProject",
	}
	for header,value in pairs(GetProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetProjectSync(GetProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetProjectAsync(GetProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InstallToRemoteAccessSession asynchronously, invoking a callback when done
-- @param InstallToRemoteAccessSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InstallToRemoteAccessSessionAsync(InstallToRemoteAccessSessionRequest, cb)
	assert(InstallToRemoteAccessSessionRequest, "You must provide a InstallToRemoteAccessSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.InstallToRemoteAccessSession",
	}
	for header,value in pairs(InstallToRemoteAccessSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InstallToRemoteAccessSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InstallToRemoteAccessSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InstallToRemoteAccessSessionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InstallToRemoteAccessSessionSync(InstallToRemoteAccessSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InstallToRemoteAccessSessionAsync(InstallToRemoteAccessSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstanceProfiles asynchronously, invoking a callback when done
-- @param ListInstanceProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstanceProfilesAsync(ListInstanceProfilesRequest, cb)
	assert(ListInstanceProfilesRequest, "You must provide a ListInstanceProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListInstanceProfiles",
	}
	for header,value in pairs(ListInstanceProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstanceProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstanceProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstanceProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstanceProfilesSync(ListInstanceProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstanceProfilesAsync(ListInstanceProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUpload asynchronously, invoking a callback when done
-- @param UpdateUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUploadAsync(UpdateUploadRequest, cb)
	assert(UpdateUploadRequest, "You must provide a UpdateUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateUpload",
	}
	for header,value in pairs(UpdateUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUploadSync(UpdateUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUploadAsync(UpdateUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUniqueProblems asynchronously, invoking a callback when done
-- @param ListUniqueProblemsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUniqueProblemsAsync(ListUniqueProblemsRequest, cb)
	assert(ListUniqueProblemsRequest, "You must provide a ListUniqueProblemsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListUniqueProblems",
	}
	for header,value in pairs(ListUniqueProblemsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUniqueProblemsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUniqueProblems synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUniqueProblemsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUniqueProblemsSync(ListUniqueProblemsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUniqueProblemsAsync(ListUniqueProblemsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDevicePools asynchronously, invoking a callback when done
-- @param ListDevicePoolsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDevicePoolsAsync(ListDevicePoolsRequest, cb)
	assert(ListDevicePoolsRequest, "You must provide a ListDevicePoolsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListDevicePools",
	}
	for header,value in pairs(ListDevicePoolsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDevicePoolsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDevicePools synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDevicePoolsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDevicePoolsSync(ListDevicePoolsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDevicePoolsAsync(ListDevicePoolsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUpload asynchronously, invoking a callback when done
-- @param CreateUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUploadAsync(CreateUploadRequest, cb)
	assert(CreateUploadRequest, "You must provide a CreateUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateUpload",
	}
	for header,value in pairs(CreateUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUploadSync(CreateUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUploadAsync(CreateUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVPCEConfiguration asynchronously, invoking a callback when done
-- @param GetVPCEConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVPCEConfigurationAsync(GetVPCEConfigurationRequest, cb)
	assert(GetVPCEConfigurationRequest, "You must provide a GetVPCEConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetVPCEConfiguration",
	}
	for header,value in pairs(GetVPCEConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetVPCEConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVPCEConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVPCEConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetVPCEConfigurationSync(GetVPCEConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVPCEConfigurationAsync(GetVPCEConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevicePoolCompatibility asynchronously, invoking a callback when done
-- @param GetDevicePoolCompatibilityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDevicePoolCompatibilityAsync(GetDevicePoolCompatibilityRequest, cb)
	assert(GetDevicePoolCompatibilityRequest, "You must provide a GetDevicePoolCompatibilityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevicePoolCompatibility",
	}
	for header,value in pairs(GetDevicePoolCompatibilityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDevicePoolCompatibilityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevicePoolCompatibility synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDevicePoolCompatibilityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDevicePoolCompatibilitySync(GetDevicePoolCompatibilityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDevicePoolCompatibilityAsync(GetDevicePoolCompatibilityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDevicePool asynchronously, invoking a callback when done
-- @param DeleteDevicePoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDevicePoolAsync(DeleteDevicePoolRequest, cb)
	assert(DeleteDevicePoolRequest, "You must provide a DeleteDevicePoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteDevicePool",
	}
	for header,value in pairs(DeleteDevicePoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDevicePoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDevicePool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDevicePoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDevicePoolSync(DeleteDevicePoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDevicePoolAsync(DeleteDevicePoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeviceInstance asynchronously, invoking a callback when done
-- @param UpdateDeviceInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeviceInstanceAsync(UpdateDeviceInstanceRequest, cb)
	assert(UpdateDeviceInstanceRequest, "You must provide a UpdateDeviceInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateDeviceInstance",
	}
	for header,value in pairs(UpdateDeviceInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDeviceInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeviceInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceInstanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDeviceInstanceSync(UpdateDeviceInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceInstanceAsync(UpdateDeviceInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTests asynchronously, invoking a callback when done
-- @param ListTestsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTestsAsync(ListTestsRequest, cb)
	assert(ListTestsRequest, "You must provide a ListTestsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListTests",
	}
	for header,value in pairs(ListTestsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTestsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTests synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTestsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTestsSync(ListTestsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTestsAsync(ListTestsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateProject",
	}
	for header,value in pairs(UpdateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProjectSync(UpdateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(UpdateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSuites asynchronously, invoking a callback when done
-- @param ListSuitesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSuitesAsync(ListSuitesRequest, cb)
	assert(ListSuitesRequest, "You must provide a ListSuitesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListSuites",
	}
	for header,value in pairs(ListSuitesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSuitesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSuites synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSuitesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSuitesSync(ListSuitesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSuitesAsync(ListSuitesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevicePool asynchronously, invoking a callback when done
-- @param GetDevicePoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDevicePoolAsync(GetDevicePoolRequest, cb)
	assert(GetDevicePoolRequest, "You must provide a GetDevicePoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevicePool",
	}
	for header,value in pairs(GetDevicePoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDevicePoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevicePool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDevicePoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDevicePoolSync(GetDevicePoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDevicePoolAsync(GetDevicePoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDevices asynchronously, invoking a callback when done
-- @param ListDevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDevicesAsync(ListDevicesRequest, cb)
	assert(ListDevicesRequest, "You must provide a ListDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListDevices",
	}
	for header,value in pairs(ListDevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDevicesSync(ListDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDevicesAsync(ListDevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVPCEConfigurations asynchronously, invoking a callback when done
-- @param ListVPCEConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVPCEConfigurationsAsync(ListVPCEConfigurationsRequest, cb)
	assert(ListVPCEConfigurationsRequest, "You must provide a ListVPCEConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListVPCEConfigurations",
	}
	for header,value in pairs(ListVPCEConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVPCEConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVPCEConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVPCEConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListVPCEConfigurationsSync(ListVPCEConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVPCEConfigurationsAsync(ListVPCEConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopRemoteAccessSession asynchronously, invoking a callback when done
-- @param StopRemoteAccessSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopRemoteAccessSessionAsync(StopRemoteAccessSessionRequest, cb)
	assert(StopRemoteAccessSessionRequest, "You must provide a StopRemoteAccessSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.StopRemoteAccessSession",
	}
	for header,value in pairs(StopRemoteAccessSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopRemoteAccessSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopRemoteAccessSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopRemoteAccessSessionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopRemoteAccessSessionSync(StopRemoteAccessSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopRemoteAccessSessionAsync(StopRemoteAccessSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RenewOffering asynchronously, invoking a callback when done
-- @param RenewOfferingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RenewOfferingAsync(RenewOfferingRequest, cb)
	assert(RenewOfferingRequest, "You must provide a RenewOfferingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.RenewOffering",
	}
	for header,value in pairs(RenewOfferingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RenewOfferingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RenewOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RenewOfferingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RenewOfferingSync(RenewOfferingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RenewOfferingAsync(RenewOfferingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRemoteAccessSession asynchronously, invoking a callback when done
-- @param GetRemoteAccessSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRemoteAccessSessionAsync(GetRemoteAccessSessionRequest, cb)
	assert(GetRemoteAccessSessionRequest, "You must provide a GetRemoteAccessSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetRemoteAccessSession",
	}
	for header,value in pairs(GetRemoteAccessSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRemoteAccessSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRemoteAccessSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRemoteAccessSessionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRemoteAccessSessionSync(GetRemoteAccessSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRemoteAccessSessionAsync(GetRemoteAccessSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteProject",
	}
	for header,value in pairs(DeleteProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProjectSync(DeleteProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(DeleteProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListJobs",
	}
	for header,value in pairs(ListJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRun asynchronously, invoking a callback when done
-- @param GetRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRunAsync(GetRunRequest, cb)
	assert(GetRunRequest, "You must provide a GetRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetRun",
	}
	for header,value in pairs(GetRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRunSync(GetRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRunAsync(GetRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVPCEConfiguration asynchronously, invoking a callback when done
-- @param CreateVPCEConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateVPCEConfigurationAsync(CreateVPCEConfigurationRequest, cb)
	assert(CreateVPCEConfigurationRequest, "You must provide a CreateVPCEConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateVPCEConfiguration",
	}
	for header,value in pairs(CreateVPCEConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateVPCEConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVPCEConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVPCEConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateVPCEConfigurationSync(CreateVPCEConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVPCEConfigurationAsync(CreateVPCEConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNetworkProfile asynchronously, invoking a callback when done
-- @param UpdateNetworkProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNetworkProfileAsync(UpdateNetworkProfileRequest, cb)
	assert(UpdateNetworkProfileRequest, "You must provide a UpdateNetworkProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateNetworkProfile",
	}
	for header,value in pairs(UpdateNetworkProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNetworkProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNetworkProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNetworkProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNetworkProfileSync(UpdateNetworkProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNetworkProfileAsync(UpdateNetworkProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopJob asynchronously, invoking a callback when done
-- @param StopJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopJobAsync(StopJobRequest, cb)
	assert(StopJobRequest, "You must provide a StopJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.StopJob",
	}
	for header,value in pairs(StopJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopJobSync(StopJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopJobAsync(StopJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRemoteAccessSessions asynchronously, invoking a callback when done
-- @param ListRemoteAccessSessionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRemoteAccessSessionsAsync(ListRemoteAccessSessionsRequest, cb)
	assert(ListRemoteAccessSessionsRequest, "You must provide a ListRemoteAccessSessionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListRemoteAccessSessions",
	}
	for header,value in pairs(ListRemoteAccessSessionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRemoteAccessSessionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRemoteAccessSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRemoteAccessSessionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRemoteAccessSessionsSync(ListRemoteAccessSessionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRemoteAccessSessionsAsync(ListRemoteAccessSessionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetNetworkProfile asynchronously, invoking a callback when done
-- @param GetNetworkProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetNetworkProfileAsync(GetNetworkProfileRequest, cb)
	assert(GetNetworkProfileRequest, "You must provide a GetNetworkProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetNetworkProfile",
	}
	for header,value in pairs(GetNetworkProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetNetworkProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetNetworkProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetNetworkProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetNetworkProfileSync(GetNetworkProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetNetworkProfileAsync(GetNetworkProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOfferingStatus asynchronously, invoking a callback when done
-- @param GetOfferingStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetOfferingStatusAsync(GetOfferingStatusRequest, cb)
	assert(GetOfferingStatusRequest, "You must provide a GetOfferingStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetOfferingStatus",
	}
	for header,value in pairs(GetOfferingStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOfferingStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOfferingStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOfferingStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetOfferingStatusSync(GetOfferingStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOfferingStatusAsync(GetOfferingStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeviceInstance asynchronously, invoking a callback when done
-- @param GetDeviceInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeviceInstanceAsync(GetDeviceInstanceRequest, cb)
	assert(GetDeviceInstanceRequest, "You must provide a GetDeviceInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDeviceInstance",
	}
	for header,value in pairs(GetDeviceInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeviceInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeviceInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceInstanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeviceInstanceSync(GetDeviceInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceInstanceAsync(GetDeviceInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevice asynchronously, invoking a callback when done
-- @param GetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevice",
	}
	for header,value in pairs(GetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeviceSync(GetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceAsync(GetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDevicePool asynchronously, invoking a callback when done
-- @param CreateDevicePoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDevicePoolAsync(CreateDevicePoolRequest, cb)
	assert(CreateDevicePoolRequest, "You must provide a CreateDevicePoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateDevicePool",
	}
	for header,value in pairs(CreateDevicePoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDevicePoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDevicePool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDevicePoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDevicePoolSync(CreateDevicePoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDevicePoolAsync(CreateDevicePoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ScheduleRun asynchronously, invoking a callback when done
-- @param ScheduleRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ScheduleRunAsync(ScheduleRunRequest, cb)
	assert(ScheduleRunRequest, "You must provide a ScheduleRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ScheduleRun",
	}
	for header,value in pairs(ScheduleRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScheduleRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ScheduleRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScheduleRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ScheduleRunSync(ScheduleRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScheduleRunAsync(ScheduleRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListArtifacts asynchronously, invoking a callback when done
-- @param ListArtifactsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListArtifactsAsync(ListArtifactsRequest, cb)
	assert(ListArtifactsRequest, "You must provide a ListArtifactsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListArtifacts",
	}
	for header,value in pairs(ListArtifactsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListArtifactsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListArtifacts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListArtifactsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListArtifactsSync(ListArtifactsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListArtifactsAsync(ListArtifactsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateProject",
	}
	for header,value in pairs(CreateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProjectSync(CreateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(CreateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJob asynchronously, invoking a callback when done
-- @param GetJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobAsync(GetJobRequest, cb)
	assert(GetJobRequest, "You must provide a GetJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetJob",
	}
	for header,value in pairs(GetJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobSync(GetJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobAsync(GetJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVPCEConfiguration asynchronously, invoking a callback when done
-- @param DeleteVPCEConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVPCEConfigurationAsync(DeleteVPCEConfigurationRequest, cb)
	assert(DeleteVPCEConfigurationRequest, "You must provide a DeleteVPCEConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteVPCEConfiguration",
	}
	for header,value in pairs(DeleteVPCEConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVPCEConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVPCEConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVPCEConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVPCEConfigurationSync(DeleteVPCEConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVPCEConfigurationAsync(DeleteVPCEConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstanceProfile asynchronously, invoking a callback when done
-- @param CreateInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInstanceProfileAsync(CreateInstanceProfileRequest, cb)
	assert(CreateInstanceProfileRequest, "You must provide a CreateInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateInstanceProfile",
	}
	for header,value in pairs(CreateInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInstanceProfileSync(CreateInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceProfileAsync(CreateInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRuns asynchronously, invoking a callback when done
-- @param ListRunsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRunsAsync(ListRunsRequest, cb)
	assert(ListRunsRequest, "You must provide a ListRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListRuns",
	}
	for header,value in pairs(ListRunsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRunsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRuns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRunsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRunsSync(ListRunsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRunsAsync(ListRunsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUploads asynchronously, invoking a callback when done
-- @param ListUploadsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUploadsAsync(ListUploadsRequest, cb)
	assert(ListUploadsRequest, "You must provide a ListUploadsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListUploads",
	}
	for header,value in pairs(ListUploadsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUploadsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUploads synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUploadsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUploadsSync(ListUploadsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUploadsAsync(ListUploadsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSettings asynchronously, invoking a callback when done
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetAccountSettings",
	}
	for header,value in pairs(GetAccountSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAccountSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSettingsSync(GetAccountSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSettingsAsync(GetAccountSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNetworkProfile asynchronously, invoking a callback when done
-- @param CreateNetworkProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNetworkProfileAsync(CreateNetworkProfileRequest, cb)
	assert(CreateNetworkProfileRequest, "You must provide a CreateNetworkProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateNetworkProfile",
	}
	for header,value in pairs(CreateNetworkProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNetworkProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNetworkProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNetworkProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNetworkProfileSync(CreateNetworkProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNetworkProfileAsync(CreateNetworkProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
