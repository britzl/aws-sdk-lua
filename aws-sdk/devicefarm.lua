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

local ListUploadsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListUploadsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUploadsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListUploadsRequest_keys[k], "ListUploadsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUploadsRequest
-- <p>Represents a request to the list uploads operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list uploads.</p>
-- Required parameter: arn
function M.ListUploadsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUploadsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListUploadsRequest(t)
	return t
end

local ListDevicesRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicesRequest_keys[k], "ListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesRequest
-- <p>Represents the result of a list devices request.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project.</p>
function M.ListDevicesRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListDevicesRequest(t)
	return t
end

local DeleteProjectRequest_keys = { "arn" = true, nil }

function M.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProjectRequest_keys[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
-- <p>Represents a request to the delete project operation.</p>
-- @param arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm project you wish to delete.</p>
-- Required parameter: arn
function M.DeleteProjectRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteProjectRequest(t)
	return t
end

local RenewOfferingResult_keys = { "offeringTransaction" = true, nil }

function M.AssertRenewOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewOfferingResult to be of type 'table'")
	if struct["offeringTransaction"] then M.AssertOfferingTransaction(struct["offeringTransaction"]) end
	for k,_ in pairs(struct) do
		assert(RenewOfferingResult_keys[k], "RenewOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewOfferingResult
-- <p>The result of a renewal offering.</p>
-- @param offeringTransaction [OfferingTransaction] <p>Represents the status of the offering transaction for the renewal.</p>
function M.RenewOfferingResult(offeringTransaction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewOfferingResult")
	local t = { 
		["offeringTransaction"] = offeringTransaction,
	}
	M.AssertRenewOfferingResult(t)
	return t
end

local ListSamplesRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListSamplesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSamplesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListSamplesRequest_keys[k], "ListSamplesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSamplesRequest
-- <p>Represents a request to the list samples operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list samples.</p>
-- Required parameter: arn
function M.ListSamplesRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSamplesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListSamplesRequest(t)
	return t
end

local DeviceMinutes_keys = { "unmetered" = true, "total" = true, "metered" = true, nil }

function M.AssertDeviceMinutes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceMinutes to be of type 'table'")
	if struct["unmetered"] then M.AssertDouble(struct["unmetered"]) end
	if struct["total"] then M.AssertDouble(struct["total"]) end
	if struct["metered"] then M.AssertDouble(struct["metered"]) end
	for k,_ in pairs(struct) do
		assert(DeviceMinutes_keys[k], "DeviceMinutes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceMinutes
-- <p>Represents the total (metered or unmetered) minutes used by the resource to run tests. Contains the sum of minutes consumed by all children.</p>
-- @param unmetered [Double] <p>When specified, represents only the sum of unmetered minutes used by the resource to run tests.</p>
-- @param total [Double] <p>When specified, represents the total minutes used by the resource to run tests.</p>
-- @param metered [Double] <p>When specified, represents only the sum of metered minutes used by the resource to run tests.</p>
function M.DeviceMinutes(unmetered, total, metered, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceMinutes")
	local t = { 
		["unmetered"] = unmetered,
		["total"] = total,
		["metered"] = metered,
	}
	M.AssertDeviceMinutes(t)
	return t
end

local CreateUploadResult_keys = { "upload" = true, nil }

function M.AssertCreateUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUploadResult to be of type 'table'")
	if struct["upload"] then M.AssertUpload(struct["upload"]) end
	for k,_ in pairs(struct) do
		assert(CreateUploadResult_keys[k], "CreateUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUploadResult
-- <p>Represents the result of a create upload request.</p>
-- @param upload [Upload] <p>The newly created upload.</p>
function M.CreateUploadResult(upload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUploadResult")
	local t = { 
		["upload"] = upload,
	}
	M.AssertCreateUploadResult(t)
	return t
end

local UniqueProblem_keys = { "message" = true, "problems" = true, nil }

function M.AssertUniqueProblem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UniqueProblem to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["problems"] then M.AssertProblems(struct["problems"]) end
	for k,_ in pairs(struct) do
		assert(UniqueProblem_keys[k], "UniqueProblem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UniqueProblem
-- <p>A collection of one or more problems, grouped by their result.</p>
-- @param message [Message] <p>A message about the unique problems' result.</p>
-- @param problems [Problems] <p>Information about the problems.</p>
function M.UniqueProblem(message, problems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UniqueProblem")
	local t = { 
		["message"] = message,
		["problems"] = problems,
	}
	M.AssertUniqueProblem(t)
	return t
end

local Test_keys = { "status" = true, "name" = true, "created" = true, "started" = true, "deviceMinutes" = true, "stopped" = true, "result" = true, "message" = true, "type" = true, "arn" = true, "counters" = true, nil }

function M.AssertTest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Test to be of type 'table'")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["started"] then M.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then M.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then M.AssertDateTime(struct["stopped"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertTestType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then M.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(Test_keys[k], "Test contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Test
-- <p>Represents a condition that is evaluated.</p>
-- @param status [ExecutionStatus] <p>The test's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- @param name [Name] <p>The test's name.</p>
-- @param created [DateTime] <p>When the test was created.</p>
-- @param started [DateTime] <p>The test's start time.</p>
-- @param deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test.</p>
-- @param stopped [DateTime] <p>The test's stop time.</p>
-- @param result [ExecutionResult] <p>The test's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param message [Message] <p>A message about the test's result.</p>
-- @param type [TestType] <p>The test's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The test's ARN.</p>
-- @param counters [Counters] <p>The test's result counters.</p>
function M.Test(status, name, created, started, deviceMinutes, stopped, result, message, type, arn, counters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Test")
	local t = { 
		["status"] = status,
		["name"] = name,
		["created"] = created,
		["started"] = started,
		["deviceMinutes"] = deviceMinutes,
		["stopped"] = stopped,
		["result"] = result,
		["message"] = message,
		["type"] = type,
		["arn"] = arn,
		["counters"] = counters,
	}
	M.AssertTest(t)
	return t
end

local Suite_keys = { "status" = true, "name" = true, "created" = true, "started" = true, "deviceMinutes" = true, "stopped" = true, "result" = true, "message" = true, "type" = true, "arn" = true, "counters" = true, nil }

function M.AssertSuite(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Suite to be of type 'table'")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["started"] then M.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then M.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then M.AssertDateTime(struct["stopped"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertTestType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then M.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(Suite_keys[k], "Suite contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Suite
-- <p>Represents a collection of one or more tests.</p>
-- @param status [ExecutionStatus] <p>The suite's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- @param name [Name] <p>The suite's name.</p>
-- @param created [DateTime] <p>When the suite was created.</p>
-- @param started [DateTime] <p>The suite's start time.</p>
-- @param deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test suite.</p>
-- @param stopped [DateTime] <p>The suite's stop time.</p>
-- @param result [ExecutionResult] <p>The suite's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param message [Message] <p>A message about the suite's result.</p>
-- @param type [TestType] <p>The suite's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The suite's ARN.</p>
-- @param counters [Counters] <p>The suite's result counters.</p>
function M.Suite(status, name, created, started, deviceMinutes, stopped, result, message, type, arn, counters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Suite")
	local t = { 
		["status"] = status,
		["name"] = name,
		["created"] = created,
		["started"] = started,
		["deviceMinutes"] = deviceMinutes,
		["stopped"] = stopped,
		["result"] = result,
		["message"] = message,
		["type"] = type,
		["arn"] = arn,
		["counters"] = counters,
	}
	M.AssertSuite(t)
	return t
end

local CPU_keys = { "frequency" = true, "architecture" = true, "clock" = true, nil }

function M.AssertCPU(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CPU to be of type 'table'")
	if struct["frequency"] then M.AssertString(struct["frequency"]) end
	if struct["architecture"] then M.AssertString(struct["architecture"]) end
	if struct["clock"] then M.AssertDouble(struct["clock"]) end
	for k,_ in pairs(struct) do
		assert(CPU_keys[k], "CPU contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CPU
-- <p>Represents the amount of CPU that an app is using on a physical device.</p> <p>Note that this does not represent system-wide CPU usage.</p>
-- @param frequency [String] <p>The CPU's frequency.</p>
-- @param architecture [String] <p>The CPU's architecture, for example x86 or ARM.</p>
-- @param clock [Double] <p>The clock speed of the device's CPU, expressed in hertz (Hz). For example, a 1.2 GHz CPU is expressed as 1200000000.</p>
function M.CPU(frequency, architecture, clock, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CPU")
	local t = { 
		["frequency"] = frequency,
		["architecture"] = architecture,
		["clock"] = clock,
	}
	M.AssertCPU(t)
	return t
end

local DeleteUploadResult_keys = { nil }

function M.AssertDeleteUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUploadResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteUploadResult_keys[k], "DeleteUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUploadResult
-- <p>Represents the result of a delete upload request.</p>
function M.DeleteUploadResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUploadResult")
	local t = { 
	}
	M.AssertDeleteUploadResult(t)
	return t
end

local DeleteRemoteAccessSessionResult_keys = { nil }

function M.AssertDeleteRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRemoteAccessSessionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteRemoteAccessSessionResult_keys[k], "DeleteRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRemoteAccessSessionResult
-- <p>The response from the server when a request is made to delete the remote access session.</p>
function M.DeleteRemoteAccessSessionResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRemoteAccessSessionResult")
	local t = { 
	}
	M.AssertDeleteRemoteAccessSessionResult(t)
	return t
end

local ListRemoteAccessSessionsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListRemoteAccessSessionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRemoteAccessSessionsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListRemoteAccessSessionsRequest_keys[k], "ListRemoteAccessSessionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRemoteAccessSessionsRequest
-- <p>Represents the request to return information about the remote access session.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.</p>
-- Required parameter: arn
function M.ListRemoteAccessSessionsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRemoteAccessSessionsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListRemoteAccessSessionsRequest(t)
	return t
end

local ListProjectsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListProjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsRequest_keys[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
-- <p>Represents a request to the list projects operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.</p>
function M.ListProjectsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListProjectsRequest(t)
	return t
end

local GetProjectRequest_keys = { "arn" = true, nil }

function M.AssertGetProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetProjectRequest_keys[k], "GetProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProjectRequest
-- <p>Represents a request to the get project operation.</p>
-- @param arn [AmazonResourceName] <p>The project's ARN.</p>
-- Required parameter: arn
function M.GetProjectRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetProjectRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetProjectRequest(t)
	return t
end

local ListProjectsResult_keys = { "nextToken" = true, "projects" = true, nil }

function M.AssertListProjectsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["projects"] then M.AssertProjects(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsResult_keys[k], "ListProjectsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResult
-- <p>Represents the result of a list projects request.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param projects [Projects] <p>Information about the projects.</p>
function M.ListProjectsResult(nextToken, projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsResult")
	local t = { 
		["nextToken"] = nextToken,
		["projects"] = projects,
	}
	M.AssertListProjectsResult(t)
	return t
end

local ListOfferingTransactionsRequest_keys = { "nextToken" = true, nil }

function M.AssertListOfferingTransactionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingTransactionsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingTransactionsRequest_keys[k], "ListOfferingTransactionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingTransactionsRequest
-- <p>Represents the request to list the offering transaction history.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListOfferingTransactionsRequest(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingTransactionsRequest")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingTransactionsRequest(t)
	return t
end

local AccountSettings_keys = { "maxSlots" = true, "unmeteredRemoteAccessDevices" = true, "maxJobTimeoutMinutes" = true, "trialMinutes" = true, "defaultJobTimeoutMinutes" = true, "awsAccountNumber" = true, "unmeteredDevices" = true, nil }

function M.AssertAccountSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountSettings to be of type 'table'")
	if struct["maxSlots"] then M.AssertMaxSlotMap(struct["maxSlots"]) end
	if struct["unmeteredRemoteAccessDevices"] then M.AssertPurchasedDevicesMap(struct["unmeteredRemoteAccessDevices"]) end
	if struct["maxJobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["maxJobTimeoutMinutes"]) end
	if struct["trialMinutes"] then M.AssertTrialMinutes(struct["trialMinutes"]) end
	if struct["defaultJobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["awsAccountNumber"] then M.AssertAWSAccountNumber(struct["awsAccountNumber"]) end
	if struct["unmeteredDevices"] then M.AssertPurchasedDevicesMap(struct["unmeteredDevices"]) end
	for k,_ in pairs(struct) do
		assert(AccountSettings_keys[k], "AccountSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountSettings
-- <p>A container for account-level settings within AWS Device Farm.</p>
-- @param maxSlots [MaxSlotMap] <p>The maximum number of device slots that the AWS account can purchase. Each maximum is expressed as an <code>offering-id:number</code> pair, where the <code>offering-id</code> represents one of the IDs returned by the <code>ListOfferings</code> command.</p>
-- @param unmeteredRemoteAccessDevices [PurchasedDevicesMap] <p>Returns the unmetered remote access devices you have purchased or want to purchase.</p>
-- @param maxJobTimeoutMinutes [JobTimeoutMinutes] <p>The maximum number of minutes a test run will execute before it times out.</p>
-- @param trialMinutes [TrialMinutes] <p>Information about an AWS account's usage of free trial device minutes.</p>
-- @param defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The default number of minutes (at the account level) a test run will execute before it times out. Default value is 60 minutes.</p>
-- @param awsAccountNumber [AWSAccountNumber] <p>The AWS account number specified in the <code>AccountSettings</code> container.</p>
-- @param unmeteredDevices [PurchasedDevicesMap] <p>Returns the unmetered devices you have purchased or want to purchase.</p>
function M.AccountSettings(maxSlots, unmeteredRemoteAccessDevices, maxJobTimeoutMinutes, trialMinutes, defaultJobTimeoutMinutes, awsAccountNumber, unmeteredDevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountSettings")
	local t = { 
		["maxSlots"] = maxSlots,
		["unmeteredRemoteAccessDevices"] = unmeteredRemoteAccessDevices,
		["maxJobTimeoutMinutes"] = maxJobTimeoutMinutes,
		["trialMinutes"] = trialMinutes,
		["defaultJobTimeoutMinutes"] = defaultJobTimeoutMinutes,
		["awsAccountNumber"] = awsAccountNumber,
		["unmeteredDevices"] = unmeteredDevices,
	}
	M.AssertAccountSettings(t)
	return t
end

local UpdateDevicePoolResult_keys = { "devicePool" = true, nil }

function M.AssertUpdateDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then M.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDevicePoolResult_keys[k], "UpdateDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevicePoolResult
-- <p>Represents the result of an update device pool request.</p>
-- @param devicePool [DevicePool] <p>The device pool you just updated.</p>
function M.UpdateDevicePoolResult(devicePool, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDevicePoolResult")
	local t = { 
		["devicePool"] = devicePool,
	}
	M.AssertUpdateDevicePoolResult(t)
	return t
end

local OfferingTransaction_keys = { "offeringPromotionId" = true, "offeringStatus" = true, "cost" = true, "createdOn" = true, "transactionId" = true, nil }

function M.AssertOfferingTransaction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingTransaction to be of type 'table'")
	if struct["offeringPromotionId"] then M.AssertOfferingPromotionIdentifier(struct["offeringPromotionId"]) end
	if struct["offeringStatus"] then M.AssertOfferingStatus(struct["offeringStatus"]) end
	if struct["cost"] then M.AssertMonetaryAmount(struct["cost"]) end
	if struct["createdOn"] then M.AssertDateTime(struct["createdOn"]) end
	if struct["transactionId"] then M.AssertTransactionIdentifier(struct["transactionId"]) end
	for k,_ in pairs(struct) do
		assert(OfferingTransaction_keys[k], "OfferingTransaction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingTransaction
-- <p>Represents the metadata of an offering transaction.</p>
-- @param offeringPromotionId [OfferingPromotionIdentifier] <p>The ID that corresponds to a device offering promotion.</p>
-- @param offeringStatus [OfferingStatus] <p>The status of an offering transaction.</p>
-- @param cost [MonetaryAmount] <p>The cost of an offering transaction.</p>
-- @param createdOn [DateTime] <p>The date on which an offering transaction was created.</p>
-- @param transactionId [TransactionIdentifier] <p>The transaction ID of the offering transaction.</p>
function M.OfferingTransaction(offeringPromotionId, offeringStatus, cost, createdOn, transactionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OfferingTransaction")
	local t = { 
		["offeringPromotionId"] = offeringPromotionId,
		["offeringStatus"] = offeringStatus,
		["cost"] = cost,
		["createdOn"] = createdOn,
		["transactionId"] = transactionId,
	}
	M.AssertOfferingTransaction(t)
	return t
end

local ServiceAccountException_keys = { "message" = true, nil }

function M.AssertServiceAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceAccountException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceAccountException_keys[k], "ServiceAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceAccountException
-- <p>There was a problem with the service account.</p>
-- @param message [Message] <p>Any additional information about the exception.</p>
function M.ServiceAccountException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceAccountException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceAccountException(t)
	return t
end

local UpdateDevicePoolRequest_keys = { "rules" = true, "name" = true, "arn" = true, "description" = true, nil }

function M.AssertUpdateDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["rules"] then M.AssertRules(struct["rules"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDevicePoolRequest_keys[k], "UpdateDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevicePoolRequest
-- <p>Represents a request to the update device pool operation.</p>
-- @param rules [Rules] <p>Represents the rules you wish to modify for the device pool. Updating rules is optional; however, if you choose to update rules for your request, the update will replace the existing rules.</p>
-- @param name [Name] <p>A string representing the name of the device pool you wish to update.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resourc Name (ARN) of the Device Farm device pool you wish to update.</p>
-- @param description [Message] <p>A description of the device pool you wish to update.</p>
-- Required parameter: arn
function M.UpdateDevicePoolRequest(rules, name, arn, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDevicePoolRequest")
	local t = { 
		["rules"] = rules,
		["name"] = name,
		["arn"] = arn,
		["description"] = description,
	}
	M.AssertUpdateDevicePoolRequest(t)
	return t
end

local OfferingPromotion_keys = { "id" = true, "description" = true, nil }

function M.AssertOfferingPromotion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingPromotion to be of type 'table'")
	if struct["id"] then M.AssertOfferingPromotionIdentifier(struct["id"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(OfferingPromotion_keys[k], "OfferingPromotion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingPromotion
-- <p>Represents information about an offering promotion.</p>
-- @param id [OfferingPromotionIdentifier] <p>The ID of the offering promotion.</p>
-- @param description [Message] <p>A string describing the offering promotion.</p>
function M.OfferingPromotion(id, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OfferingPromotion")
	local t = { 
		["id"] = id,
		["description"] = description,
	}
	M.AssertOfferingPromotion(t)
	return t
end

local UpdateProjectRequest_keys = { "defaultJobTimeoutMinutes" = true, "name" = true, "arn" = true, nil }

function M.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["defaultJobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProjectRequest_keys[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
-- <p>Represents a request to the update project operation.</p>
-- @param defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The number of minutes a test run in the project will execute before it times out.</p>
-- @param name [Name] <p>A string representing the new name of the project that you are updating.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project whose name you wish to update.</p>
-- Required parameter: arn
function M.UpdateProjectRequest(defaultJobTimeoutMinutes, name, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectRequest")
	local t = { 
		["defaultJobTimeoutMinutes"] = defaultJobTimeoutMinutes,
		["name"] = name,
		["arn"] = arn,
	}
	M.AssertUpdateProjectRequest(t)
	return t
end

local GetSuiteResult_keys = { "suite" = true, nil }

function M.AssertGetSuiteResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSuiteResult to be of type 'table'")
	if struct["suite"] then M.AssertSuite(struct["suite"]) end
	for k,_ in pairs(struct) do
		assert(GetSuiteResult_keys[k], "GetSuiteResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSuiteResult
-- <p>Represents the result of a get suite request.</p>
-- @param suite [Suite] <p>A collection of one or more tests.</p>
function M.GetSuiteResult(suite, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSuiteResult")
	local t = { 
		["suite"] = suite,
	}
	M.AssertGetSuiteResult(t)
	return t
end

local GetJobResult_keys = { "job" = true, nil }

function M.AssertGetJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobResult to be of type 'table'")
	if struct["job"] then M.AssertJob(struct["job"]) end
	for k,_ in pairs(struct) do
		assert(GetJobResult_keys[k], "GetJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobResult
-- <p>Represents the result of a get job request.</p>
-- @param job [Job] <p>An object containing information about the requested job.</p>
function M.GetJobResult(job, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobResult")
	local t = { 
		["job"] = job,
	}
	M.AssertGetJobResult(t)
	return t
end

local Project_keys = { "defaultJobTimeoutMinutes" = true, "name" = true, "arn" = true, "created" = true, nil }

function M.AssertProject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Project to be of type 'table'")
	if struct["defaultJobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(Project_keys[k], "Project contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Project
-- <p>Represents an operating-system neutral workspace for running and managing tests.</p>
-- @param defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>The default number of minutes (at the project level) a test run will execute before it times out. Default value is 60 minutes.</p>
-- @param name [Name] <p>The project's name.</p>
-- @param arn [AmazonResourceName] <p>The project's ARN.</p>
-- @param created [DateTime] <p>When the project was created.</p>
function M.Project(defaultJobTimeoutMinutes, name, arn, created, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Project")
	local t = { 
		["defaultJobTimeoutMinutes"] = defaultJobTimeoutMinutes,
		["name"] = name,
		["arn"] = arn,
		["created"] = created,
	}
	M.AssertProject(t)
	return t
end

local GetRemoteAccessSessionResult_keys = { "remoteAccessSession" = true, nil }

function M.AssertGetRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then M.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(GetRemoteAccessSessionResult_keys[k], "GetRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRemoteAccessSessionResult
-- <p>Represents the response from the server that lists detailed information about the remote access session.</p>
-- @param remoteAccessSession [RemoteAccessSession] <p>A container that lists detailed information about the remote access session.</p>
function M.GetRemoteAccessSessionResult(remoteAccessSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRemoteAccessSessionResult")
	local t = { 
		["remoteAccessSession"] = remoteAccessSession,
	}
	M.AssertGetRemoteAccessSessionResult(t)
	return t
end

local StopRunResult_keys = { "run" = true, nil }

function M.AssertStopRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRunResult to be of type 'table'")
	if struct["run"] then M.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(StopRunResult_keys[k], "StopRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRunResult
-- <p>Represents the results of your stop run attempt.</p>
-- @param run [Run] <p>The run that was stopped.</p>
function M.StopRunResult(run, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRunResult")
	local t = { 
		["run"] = run,
	}
	M.AssertStopRunResult(t)
	return t
end

local GetRemoteAccessSessionRequest_keys = { "arn" = true, nil }

function M.AssertGetRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetRemoteAccessSessionRequest_keys[k], "GetRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRemoteAccessSessionRequest
-- <p>Represents the request to get information about the specified remote access session.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you want to get session information.</p>
-- Required parameter: arn
function M.GetRemoteAccessSessionRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRemoteAccessSessionRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetRemoteAccessSessionRequest(t)
	return t
end

local ListOfferingPromotionsResult_keys = { "offeringPromotions" = true, "nextToken" = true, nil }

function M.AssertListOfferingPromotionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingPromotionsResult to be of type 'table'")
	if struct["offeringPromotions"] then M.AssertOfferingPromotions(struct["offeringPromotions"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingPromotionsResult_keys[k], "ListOfferingPromotionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingPromotionsResult
--  
-- @param offeringPromotions [OfferingPromotions] <p>Information about the offering promotions.</p>
-- @param nextToken [PaginationToken] <p>An identifier to be used in the next call to this operation, to return the next set of items in the list.</p>
function M.ListOfferingPromotionsResult(offeringPromotions, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingPromotionsResult")
	local t = { 
		["offeringPromotions"] = offeringPromotions,
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingPromotionsResult(t)
	return t
end

local GetProjectResult_keys = { "project" = true, nil }

function M.AssertGetProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProjectResult to be of type 'table'")
	if struct["project"] then M.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(GetProjectResult_keys[k], "GetProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProjectResult
-- <p>Represents the result of a get project request.</p>
-- @param project [Project] <p>The project you wish to get information about.</p>
function M.GetProjectResult(project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetProjectResult")
	local t = { 
		["project"] = project,
	}
	M.AssertGetProjectResult(t)
	return t
end

local Radios_keys = { "gps" = true, "wifi" = true, "nfc" = true, "bluetooth" = true, nil }

function M.AssertRadios(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Radios to be of type 'table'")
	if struct["gps"] then M.AssertBoolean(struct["gps"]) end
	if struct["wifi"] then M.AssertBoolean(struct["wifi"]) end
	if struct["nfc"] then M.AssertBoolean(struct["nfc"]) end
	if struct["bluetooth"] then M.AssertBoolean(struct["bluetooth"]) end
	for k,_ in pairs(struct) do
		assert(Radios_keys[k], "Radios contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Radios
-- <p>Represents the set of radios and their states on a device. Examples of radios include Wi-Fi, GPS, Bluetooth, and NFC.</p>
-- @param gps [Boolean] <p>True if GPS is enabled at the beginning of the test; otherwise, false.</p>
-- @param wifi [Boolean] <p>True if Wi-Fi is enabled at the beginning of the test; otherwise, false.</p>
-- @param nfc [Boolean] <p>True if NFC is enabled at the beginning of the test; otherwise, false.</p>
-- @param bluetooth [Boolean] <p>True if Bluetooth is enabled at the beginning of the test; otherwise, false.</p>
function M.Radios(gps, wifi, nfc, bluetooth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Radios")
	local t = { 
		["gps"] = gps,
		["wifi"] = wifi,
		["nfc"] = nfc,
		["bluetooth"] = bluetooth,
	}
	M.AssertRadios(t)
	return t
end

local DeleteRunRequest_keys = { "arn" = true, nil }

function M.AssertDeleteRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRunRequest_keys[k], "DeleteRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRunRequest
-- <p>Represents a request to the delete run operation.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) for the run you wish to delete.</p>
-- Required parameter: arn
function M.DeleteRunRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRunRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteRunRequest(t)
	return t
end

local ScheduleRunTest_keys = { "filter" = true, "type" = true, "parameters" = true, "testPackageArn" = true, nil }

function M.AssertScheduleRunTest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunTest to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["filter"] then M.AssertFilter(struct["filter"]) end
	if struct["type"] then M.AssertTestType(struct["type"]) end
	if struct["parameters"] then M.AssertTestParameters(struct["parameters"]) end
	if struct["testPackageArn"] then M.AssertAmazonResourceName(struct["testPackageArn"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleRunTest_keys[k], "ScheduleRunTest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunTest
-- <p>Represents additional test settings.</p>
-- @param filter [Filter] <p>The test's filter.</p>
-- @param type [TestType] <p>The test's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param parameters [TestParameters] <p>The test's parameters, such as the following test framework parameters and fixture settings:</p> <p>For Calabash tests:</p> <ul> <li> <p>profile: A cucumber profile, for example, "my_profile_name".</p> </li> <li> <p>tags: You can limit execution to features or scenarios that have (or don't have) certain tags, for example, "@smoke" or "@smoke,~@wip".</p> </li> </ul> <p>For Appium tests (all types):</p> <ul> <li> <p>appium_version: The Appium version. Currently supported values are "1.4.16", "1.6.3", "latest", and "default".</p> <ul> <li> <p>“latest” will run the latest Appium version supported by Device Farm (1.6.3).</p> </li> <li> <p>For “default”, Device Farm will choose a compatible version of Appium for the device. The current behavior is to run 1.4.16 on Android devices and iOS 9 and earlier, 1.6.3 for iOS 10 and later.</p> </li> <li> <p>This behavior is subject to change.</p> </li> </ul> </li> </ul> <p>For Fuzz tests (Android only):</p> <ul> <li> <p>event_count: The number of events, between 1 and 10000, that the UI fuzz test should perform.</p> </li> <li> <p>throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should wait between events.</p> </li> <li> <p>seed: A seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.</p> </li> </ul> <p>For Explorer tests:</p> <ul> <li> <p>username: A username to use if the Explorer encounters a login form. If not supplied, no username will be inserted.</p> </li> <li> <p>password: A password to use if the Explorer encounters a login form. If not supplied, no password will be inserted.</p> </li> </ul> <p>For Instrumentation:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test case: "com.android.abc.Test1"</p> </li> <li> <p>Running a single test: "com.android.abc.Test1#smoke"</p> </li> <li> <p>Running multiple tests: "com.android.abc.Test1,com.android.abc.Test2"</p> </li> </ul> </li> </ul> <p>For XCTest and XCTestUI:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test class: "LoginTests"</p> </li> <li> <p>Running a multiple test classes: "LoginTests,SmokeTests"</p> </li> <li> <p>Running a single test: "LoginTests/testValid"</p> </li> <li> <p>Running multiple tests: "LoginTests/testValid,LoginTests/testInvalid"</p> </li> </ul> </li> </ul> <p>For UIAutomator:</p> <ul> <li> <p>filter: A test filter string. Examples:</p> <ul> <li> <p>Running a single test case: "com.android.abc.Test1"</p> </li> <li> <p>Running a single test: "com.android.abc.Test1#smoke"</p> </li> <li> <p>Running multiple tests: "com.android.abc.Test1,com.android.abc.Test2"</p> </li> </ul> </li> </ul>
-- @param testPackageArn [AmazonResourceName] <p>The ARN of the uploaded test that will be run.</p>
-- Required parameter: type
function M.ScheduleRunTest(filter, type, parameters, testPackageArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleRunTest")
	local t = { 
		["filter"] = filter,
		["type"] = type,
		["parameters"] = parameters,
		["testPackageArn"] = testPackageArn,
	}
	M.AssertScheduleRunTest(t)
	return t
end

local DeleteRemoteAccessSessionRequest_keys = { "arn" = true, nil }

function M.AssertDeleteRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRemoteAccessSessionRequest_keys[k], "DeleteRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRemoteAccessSessionRequest
-- <p>Represents the request to delete the specified remote access session.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the sesssion for which you want to delete remote access.</p>
-- Required parameter: arn
function M.DeleteRemoteAccessSessionRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRemoteAccessSessionRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteRemoteAccessSessionRequest(t)
	return t
end

local GetRunResult_keys = { "run" = true, nil }

function M.AssertGetRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRunResult to be of type 'table'")
	if struct["run"] then M.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(GetRunResult_keys[k], "GetRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRunResult
-- <p>Represents the result of a get run request.</p>
-- @param run [Run] <p>The run you wish to get results from.</p>
function M.GetRunResult(run, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRunResult")
	local t = { 
		["run"] = run,
	}
	M.AssertGetRunResult(t)
	return t
end

local ListTestsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListTestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTestsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListTestsRequest_keys[k], "ListTestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTestsRequest
-- <p>Represents a request to the list tests operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The tests' ARNs.</p>
-- Required parameter: arn
function M.ListTestsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTestsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListTestsRequest(t)
	return t
end

local DeleteNetworkProfileResult_keys = { nil }

function M.AssertDeleteNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNetworkProfileResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteNetworkProfileResult_keys[k], "DeleteNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNetworkProfileResult
--  
function M.DeleteNetworkProfileResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNetworkProfileResult")
	local t = { 
	}
	M.AssertDeleteNetworkProfileResult(t)
	return t
end

local CreateProjectRequest_keys = { "defaultJobTimeoutMinutes" = true, "name" = true, nil }

function M.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["defaultJobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["defaultJobTimeoutMinutes"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectRequest_keys[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
-- <p>Represents a request to the create project operation.</p>
-- @param defaultJobTimeoutMinutes [JobTimeoutMinutes] <p>Sets the execution timeout value (in minutes) for a project. All test runs in this project will use the specified execution timeout value unless overridden when scheduling a run.</p>
-- @param name [Name] <p>The project's name.</p>
-- Required parameter: name
function M.CreateProjectRequest(defaultJobTimeoutMinutes, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectRequest")
	local t = { 
		["defaultJobTimeoutMinutes"] = defaultJobTimeoutMinutes,
		["name"] = name,
	}
	M.AssertCreateProjectRequest(t)
	return t
end

local OfferingStatus_keys = { "effectiveOn" = true, "type" = true, "offering" = true, "quantity" = true, nil }

function M.AssertOfferingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OfferingStatus to be of type 'table'")
	if struct["effectiveOn"] then M.AssertDateTime(struct["effectiveOn"]) end
	if struct["type"] then M.AssertOfferingTransactionType(struct["type"]) end
	if struct["offering"] then M.AssertOffering(struct["offering"]) end
	if struct["quantity"] then M.AssertInteger(struct["quantity"]) end
	for k,_ in pairs(struct) do
		assert(OfferingStatus_keys[k], "OfferingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OfferingStatus
-- <p>The status of the offering.</p>
-- @param effectiveOn [DateTime] <p>The date on which the offering is effective.</p>
-- @param type [OfferingTransactionType] <p>The type specified for the offering status.</p>
-- @param offering [Offering] <p>Represents the metadata of an offering status.</p>
-- @param quantity [Integer] <p>The number of available devices in the offering.</p>
function M.OfferingStatus(effectiveOn, type, offering, quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OfferingStatus")
	local t = { 
		["effectiveOn"] = effectiveOn,
		["type"] = type,
		["offering"] = offering,
		["quantity"] = quantity,
	}
	M.AssertOfferingStatus(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A limit was exceeded.</p>
-- @param message [Message] <p>Any additional information about the exception.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListUploadsResult_keys = { "nextToken" = true, "uploads" = true, nil }

function M.AssertListUploadsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUploadsResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["uploads"] then M.AssertUploads(struct["uploads"]) end
	for k,_ in pairs(struct) do
		assert(ListUploadsResult_keys[k], "ListUploadsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUploadsResult
-- <p>Represents the result of a list uploads request.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param uploads [Uploads] <p>Information about the uploads.</p>
function M.ListUploadsResult(nextToken, uploads, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUploadsResult")
	local t = { 
		["nextToken"] = nextToken,
		["uploads"] = uploads,
	}
	M.AssertListUploadsResult(t)
	return t
end

local ListSuitesResult_keys = { "suites" = true, "nextToken" = true, nil }

function M.AssertListSuitesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSuitesResult to be of type 'table'")
	if struct["suites"] then M.AssertSuites(struct["suites"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListSuitesResult_keys[k], "ListSuitesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSuitesResult
-- <p>Represents the result of a list suites request.</p>
-- @param suites [Suites] <p>Information about the suites.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
function M.ListSuitesResult(suites, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSuitesResult")
	local t = { 
		["suites"] = suites,
		["nextToken"] = nextToken,
	}
	M.AssertListSuitesResult(t)
	return t
end

local CreateUploadRequest_keys = { "contentType" = true, "type" = true, "name" = true, "projectArn" = true, nil }

function M.AssertCreateUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUploadRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["contentType"] then M.AssertContentType(struct["contentType"]) end
	if struct["type"] then M.AssertUploadType(struct["type"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["projectArn"] then M.AssertAmazonResourceName(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateUploadRequest_keys[k], "CreateUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUploadRequest
-- <p>Represents a request to the create upload operation.</p>
-- @param contentType [ContentType] <p>The upload's content type (for example, "application/octet-stream").</p>
-- @param type [UploadType] <p>The upload's upload type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>ANDROID_APP: An Android upload.</p> </li> <li> <p>IOS_APP: An iOS upload.</p> </li> <li> <p>WEB_APP: A web appliction upload.</p> </li> <li> <p>EXTERNAL_DATA: An external data upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>CALABASH_TEST_PACKAGE: A Calabash test package upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.</p> </li> <li> <p>UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.</p> </li> <li> <p>UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.</p> </li> <li> <p>XCTEST_TEST_PACKAGE: An XCode test package upload.</p> </li> <li> <p>XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.</p> </li> </ul> <p> <b>Note</b> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS Device Farm throws an <code>ArgumentException</code> error.</p>
-- @param name [Name] <p>The upload's file name. The name should not contain the '/' character. If uploading an iOS app, the file name needs to end with the <code>.ipa</code> extension. If uploading an Android app, the file name needs to end with the <code>.apk</code> extension. For all others, the file name must end with the <code>.zip</code> file extension.</p>
-- @param projectArn [AmazonResourceName] <p>The ARN of the project for the upload.</p>
-- Required parameter: projectArn
-- Required parameter: name
-- Required parameter: type
function M.CreateUploadRequest(contentType, type, name, projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUploadRequest")
	local t = { 
		["contentType"] = contentType,
		["type"] = type,
		["name"] = name,
		["projectArn"] = projectArn,
	}
	M.AssertCreateUploadRequest(t)
	return t
end

local ListSamplesResult_keys = { "nextToken" = true, "samples" = true, nil }

function M.AssertListSamplesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSamplesResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["samples"] then M.AssertSamples(struct["samples"]) end
	for k,_ in pairs(struct) do
		assert(ListSamplesResult_keys[k], "ListSamplesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSamplesResult
-- <p>Represents the result of a list samples request.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param samples [Samples] <p>Information about the samples.</p>
function M.ListSamplesResult(nextToken, samples, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSamplesResult")
	local t = { 
		["nextToken"] = nextToken,
		["samples"] = samples,
	}
	M.AssertListSamplesResult(t)
	return t
end

local ArgumentException_keys = { "message" = true, nil }

function M.AssertArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArgumentException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ArgumentException_keys[k], "ArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArgumentException
-- <p>An invalid argument was specified.</p>
-- @param message [Message] <p>Any additional information about the exception.</p>
function M.ArgumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArgumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertArgumentException(t)
	return t
end

local ListUniqueProblemsResult_keys = { "nextToken" = true, "uniqueProblems" = true, nil }

function M.AssertListUniqueProblemsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUniqueProblemsResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["uniqueProblems"] then M.AssertUniqueProblemsByExecutionResultMap(struct["uniqueProblems"]) end
	for k,_ in pairs(struct) do
		assert(ListUniqueProblemsResult_keys[k], "ListUniqueProblemsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUniqueProblemsResult
-- <p>Represents the result of a list unique problems request.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param uniqueProblems [UniqueProblemsByExecutionResultMap] <p>Information about the unique problems.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
function M.ListUniqueProblemsResult(nextToken, uniqueProblems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUniqueProblemsResult")
	local t = { 
		["nextToken"] = nextToken,
		["uniqueProblems"] = uniqueProblems,
	}
	M.AssertListUniqueProblemsResult(t)
	return t
end

local GetDeviceResult_keys = { "device" = true, nil }

function M.AssertGetDeviceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceResult to be of type 'table'")
	if struct["device"] then M.AssertDevice(struct["device"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceResult_keys[k], "GetDeviceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceResult
-- <p>Represents the result of a get device request.</p>
-- @param device [Device] <p>An object containing information about the requested device.</p>
function M.GetDeviceResult(device, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceResult")
	local t = { 
		["device"] = device,
	}
	M.AssertGetDeviceResult(t)
	return t
end

local RenewOfferingRequest_keys = { "quantity" = true, "offeringId" = true, nil }

function M.AssertRenewOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewOfferingRequest to be of type 'table'")
	if struct["quantity"] then M.AssertInteger(struct["quantity"]) end
	if struct["offeringId"] then M.AssertOfferingIdentifier(struct["offeringId"]) end
	for k,_ in pairs(struct) do
		assert(RenewOfferingRequest_keys[k], "RenewOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewOfferingRequest
-- <p>A request representing an offering renewal.</p>
-- @param quantity [Integer] <p>The quantity requested in an offering renewal.</p>
-- @param offeringId [OfferingIdentifier] <p>The ID of a request to renew an offering.</p>
function M.RenewOfferingRequest(quantity, offeringId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewOfferingRequest")
	local t = { 
		["quantity"] = quantity,
		["offeringId"] = offeringId,
	}
	M.AssertRenewOfferingRequest(t)
	return t
end

local Run_keys = { "status" = true, "name" = true, "networkProfile" = true, "created" = true, "started" = true, "totalJobs" = true, "completedJobs" = true, "deviceMinutes" = true, "platform" = true, "stopped" = true, "result" = true, "message" = true, "billingMethod" = true, "type" = true, "arn" = true, "counters" = true, nil }

function M.AssertRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Run to be of type 'table'")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["networkProfile"] then M.AssertNetworkProfile(struct["networkProfile"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["started"] then M.AssertDateTime(struct["started"]) end
	if struct["totalJobs"] then M.AssertInteger(struct["totalJobs"]) end
	if struct["completedJobs"] then M.AssertInteger(struct["completedJobs"]) end
	if struct["deviceMinutes"] then M.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["platform"] then M.AssertDevicePlatform(struct["platform"]) end
	if struct["stopped"] then M.AssertDateTime(struct["stopped"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["billingMethod"] then M.AssertBillingMethod(struct["billingMethod"]) end
	if struct["type"] then M.AssertTestType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then M.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(Run_keys[k], "Run contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Run
-- <p>Represents an app on a set of devices with a specific test and configuration.</p>
-- @param status [ExecutionStatus] <p>The run's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- @param name [Name] <p>The run's name.</p>
-- @param networkProfile [NetworkProfile] <p>The network profile being used for a test run.</p>
-- @param created [DateTime] <p>When the run was created.</p>
-- @param started [DateTime] <p>The run's start time.</p>
-- @param totalJobs [Integer] <p>The total number of jobs for the run.</p>
-- @param completedJobs [Integer] <p>The total number of completed jobs.</p>
-- @param deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the test run.</p>
-- @param platform [DevicePlatform] <p>The run's platform.</p> <p>Allowed values include:</p> <ul> <li> <p>ANDROID: The Android platform.</p> </li> <li> <p>IOS: The iOS platform.</p> </li> </ul>
-- @param stopped [DateTime] <p>The run's stop time.</p>
-- @param result [ExecutionResult] <p>The run's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param message [Message] <p>A message about the run's result.</p>
-- @param billingMethod [BillingMethod] <p>Specifies the billing method for a test run: <code>metered</code> or <code>unmetered</code>. If the parameter is not specified, the default value is <code>metered</code>.</p>
-- @param type [TestType] <p>The run's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The run's ARN.</p>
-- @param counters [Counters] <p>The run's result counters.</p>
function M.Run(status, name, networkProfile, created, started, totalJobs, completedJobs, deviceMinutes, platform, stopped, result, message, billingMethod, type, arn, counters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Run")
	local t = { 
		["status"] = status,
		["name"] = name,
		["networkProfile"] = networkProfile,
		["created"] = created,
		["started"] = started,
		["totalJobs"] = totalJobs,
		["completedJobs"] = completedJobs,
		["deviceMinutes"] = deviceMinutes,
		["platform"] = platform,
		["stopped"] = stopped,
		["result"] = result,
		["message"] = message,
		["billingMethod"] = billingMethod,
		["type"] = type,
		["arn"] = arn,
		["counters"] = counters,
	}
	M.AssertRun(t)
	return t
end

local ListJobsResult_keys = { "nextToken" = true, "jobs" = true, nil }

function M.AssertListJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["jobs"] then M.AssertJobs(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsResult_keys[k], "ListJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResult
-- <p>Represents the result of a list jobs request.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param jobs [Jobs] <p>Information about the jobs.</p>
function M.ListJobsResult(nextToken, jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsResult")
	local t = { 
		["nextToken"] = nextToken,
		["jobs"] = jobs,
	}
	M.AssertListJobsResult(t)
	return t
end

local ListArtifactsRequest_keys = { "nextToken" = true, "type" = true, "arn" = true, nil }

function M.AssertListArtifactsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListArtifactsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then M.AssertArtifactCategory(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListArtifactsRequest_keys[k], "ListArtifactsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListArtifactsRequest
-- <p>Represents a request to the list artifacts operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param type [ArtifactCategory] <p>The artifacts' type.</p> <p>Allowed values include:</p> <ul> <li> <p>FILE: The artifacts are files.</p> </li> <li> <p>LOG: The artifacts are logs.</p> </li> <li> <p>SCREENSHOT: The artifacts are screenshots.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The Run, Job, Suite, or Test ARN.</p>
-- Required parameter: arn
-- Required parameter: type
function M.ListArtifactsRequest(nextToken, type, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListArtifactsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["type"] = type,
		["arn"] = arn,
	}
	M.AssertListArtifactsRequest(t)
	return t
end

local GetUploadResult_keys = { "upload" = true, nil }

function M.AssertGetUploadResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUploadResult to be of type 'table'")
	if struct["upload"] then M.AssertUpload(struct["upload"]) end
	for k,_ in pairs(struct) do
		assert(GetUploadResult_keys[k], "GetUploadResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUploadResult
-- <p>Represents the result of a get upload request.</p>
-- @param upload [Upload] <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
function M.GetUploadResult(upload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUploadResult")
	local t = { 
		["upload"] = upload,
	}
	M.AssertGetUploadResult(t)
	return t
end

local Job_keys = { "status" = true, "name" = true, "created" = true, "started" = true, "deviceMinutes" = true, "stopped" = true, "result" = true, "device" = true, "message" = true, "type" = true, "arn" = true, "counters" = true, nil }

function M.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["started"] then M.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then M.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then M.AssertDateTime(struct["stopped"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["device"] then M.AssertDevice(struct["device"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertTestType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["counters"] then M.AssertCounters(struct["counters"]) end
	for k,_ in pairs(struct) do
		assert(Job_keys[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>Represents a device.</p>
-- @param status [ExecutionStatus] <p>The job's status.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- @param name [Name] <p>The job's name.</p>
-- @param created [DateTime] <p>When the job was created.</p>
-- @param started [DateTime] <p>The job's start time.</p>
-- @param deviceMinutes [DeviceMinutes] <p>Represents the total (metered or unmetered) minutes used by the job.</p>
-- @param stopped [DateTime] <p>The job's stop time.</p>
-- @param result [ExecutionResult] <p>The job's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param device [Device] <p>The device (phone or tablet).</p>
-- @param message [Message] <p>A message about the job's result.</p>
-- @param type [TestType] <p>The job's type.</p> <p>Allowed values include the following:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The job's ARN.</p>
-- @param counters [Counters] <p>The job's result counters.</p>
function M.Job(status, name, created, started, deviceMinutes, stopped, result, device, message, type, arn, counters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Job")
	local t = { 
		["status"] = status,
		["name"] = name,
		["created"] = created,
		["started"] = started,
		["deviceMinutes"] = deviceMinutes,
		["stopped"] = stopped,
		["result"] = result,
		["device"] = device,
		["message"] = message,
		["type"] = type,
		["arn"] = arn,
		["counters"] = counters,
	}
	M.AssertJob(t)
	return t
end

local ListArtifactsResult_keys = { "artifacts" = true, "nextToken" = true, nil }

function M.AssertListArtifactsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListArtifactsResult to be of type 'table'")
	if struct["artifacts"] then M.AssertArtifacts(struct["artifacts"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListArtifactsResult_keys[k], "ListArtifactsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListArtifactsResult
-- <p>Represents the result of a list artifacts operation.</p>
-- @param artifacts [Artifacts] <p>Information about the artifacts.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
function M.ListArtifactsResult(artifacts, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListArtifactsResult")
	local t = { 
		["artifacts"] = artifacts,
		["nextToken"] = nextToken,
	}
	M.AssertListArtifactsResult(t)
	return t
end

local CreateDevicePoolResult_keys = { "devicePool" = true, nil }

function M.AssertCreateDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then M.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(CreateDevicePoolResult_keys[k], "CreateDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevicePoolResult
-- <p>Represents the result of a create device pool request.</p>
-- @param devicePool [DevicePool] <p>The newly created device pool.</p>
function M.CreateDevicePoolResult(devicePool, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDevicePoolResult")
	local t = { 
		["devicePool"] = devicePool,
	}
	M.AssertCreateDevicePoolResult(t)
	return t
end

local ScheduleRunResult_keys = { "run" = true, nil }

function M.AssertScheduleRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunResult to be of type 'table'")
	if struct["run"] then M.AssertRun(struct["run"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleRunResult_keys[k], "ScheduleRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunResult
-- <p>Represents the result of a schedule run request.</p>
-- @param run [Run] <p>Information about the scheduled run.</p>
function M.ScheduleRunResult(run, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleRunResult")
	local t = { 
		["run"] = run,
	}
	M.AssertScheduleRunResult(t)
	return t
end

local ListSuitesRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListSuitesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSuitesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListSuitesRequest_keys[k], "ListSuitesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSuitesRequest
-- <p>Represents a request to the list suites operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The suites' ARNs.</p>
-- Required parameter: arn
function M.ListSuitesRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSuitesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListSuitesRequest(t)
	return t
end

local NotFoundException_keys = { "message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The specified entity was not found.</p>
-- @param message [Message] <p>Any additional information about the exception.</p>
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local GetAccountSettingsResult_keys = { "accountSettings" = true, nil }

function M.AssertGetAccountSettingsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResult to be of type 'table'")
	if struct["accountSettings"] then M.AssertAccountSettings(struct["accountSettings"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountSettingsResult_keys[k], "GetAccountSettingsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResult
-- <p>Represents the account settings return values from the <code>GetAccountSettings</code> request.</p>
-- @param accountSettings [AccountSettings] <p>The account settings.</p>
function M.GetAccountSettingsResult(accountSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSettingsResult")
	local t = { 
		["accountSettings"] = accountSettings,
	}
	M.AssertGetAccountSettingsResult(t)
	return t
end

local CreateDevicePoolRequest_keys = { "rules" = true, "name" = true, "projectArn" = true, "description" = true, nil }

function M.AssertCreateDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevicePoolRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["rules"], "Expected key rules to exist in table")
	if struct["rules"] then M.AssertRules(struct["rules"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["projectArn"] then M.AssertAmazonResourceName(struct["projectArn"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateDevicePoolRequest_keys[k], "CreateDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevicePoolRequest
-- <p>Represents a request to the create device pool operation.</p>
-- @param rules [Rules] <p>The device pool's rules.</p>
-- @param name [Name] <p>The device pool's name.</p>
-- @param projectArn [AmazonResourceName] <p>The ARN of the project for the device pool.</p>
-- @param description [Message] <p>The device pool's description.</p>
-- Required parameter: projectArn
-- Required parameter: name
-- Required parameter: rules
function M.CreateDevicePoolRequest(rules, name, projectArn, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDevicePoolRequest")
	local t = { 
		["rules"] = rules,
		["name"] = name,
		["projectArn"] = projectArn,
		["description"] = description,
	}
	M.AssertCreateDevicePoolRequest(t)
	return t
end

local RecurringCharge_keys = { "cost" = true, "frequency" = true, nil }

function M.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["cost"] then M.AssertMonetaryAmount(struct["cost"]) end
	if struct["frequency"] then M.AssertRecurringChargeFrequency(struct["frequency"]) end
	for k,_ in pairs(struct) do
		assert(RecurringCharge_keys[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- <p>Specifies whether charges for devices will be recurring.</p>
-- @param cost [MonetaryAmount] <p>The cost of the recurring charge.</p>
-- @param frequency [RecurringChargeFrequency] <p>The frequency in which charges will recur.</p>
function M.RecurringCharge(cost, frequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["cost"] = cost,
		["frequency"] = frequency,
	}
	M.AssertRecurringCharge(t)
	return t
end

local CreateProjectResult_keys = { "project" = true, nil }

function M.AssertCreateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResult to be of type 'table'")
	if struct["project"] then M.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectResult_keys[k], "CreateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResult
-- <p>Represents the result of a create project request.</p>
-- @param project [Project] <p>The newly created project.</p>
function M.CreateProjectResult(project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectResult")
	local t = { 
		["project"] = project,
	}
	M.AssertCreateProjectResult(t)
	return t
end

local Upload_keys = { "status" = true, "contentType" = true, "name" = true, "created" = true, "url" = true, "message" = true, "type" = true, "arn" = true, "metadata" = true, nil }

function M.AssertUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Upload to be of type 'table'")
	if struct["status"] then M.AssertUploadStatus(struct["status"]) end
	if struct["contentType"] then M.AssertContentType(struct["contentType"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["url"] then M.AssertURL(struct["url"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertUploadType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["metadata"] then M.AssertMetadata(struct["metadata"]) end
	for k,_ in pairs(struct) do
		assert(Upload_keys[k], "Upload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Upload
-- <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
-- @param status [UploadStatus] <p>The upload's status.</p> <p>Must be one of the following values:</p> <ul> <li> <p>FAILED: A failed status.</p> </li> <li> <p>INITIALIZED: An initialized status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SUCCEEDED: A succeeded status.</p> </li> </ul>
-- @param contentType [ContentType] <p>The upload's content type (for example, "application/octet-stream").</p>
-- @param name [Name] <p>The upload's file name.</p>
-- @param created [DateTime] <p>When the upload was created.</p>
-- @param url [URL] <p>The pre-signed Amazon S3 URL that was used to store a file through a corresponding PUT request.</p>
-- @param message [Message] <p>A message about the upload's result.</p>
-- @param type [UploadType] <p>The upload's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>ANDROID_APP: An Android upload.</p> </li> <li> <p>IOS_APP: An iOS upload.</p> </li> <li> <p>WEB_APP: A web appliction upload.</p> </li> <li> <p>EXTERNAL_DATA: An external data upload.</p> </li> <li> <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.</p> </li> <li> <p>APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.</p> </li> <li> <p>CALABASH_TEST_PACKAGE: A Calabash test package upload.</p> </li> <li> <p>INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.</p> </li> <li> <p>UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.</p> </li> <li> <p>UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.</p> </li> <li> <p>XCTEST_TEST_PACKAGE: An XCode test package upload.</p> </li> <li> <p>XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The upload's ARN.</p>
-- @param metadata [Metadata] <p>The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.</p>
function M.Upload(status, contentType, name, created, url, message, type, arn, metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Upload")
	local t = { 
		["status"] = status,
		["contentType"] = contentType,
		["name"] = name,
		["created"] = created,
		["url"] = url,
		["message"] = message,
		["type"] = type,
		["arn"] = arn,
		["metadata"] = metadata,
	}
	M.AssertUpload(t)
	return t
end

local DeleteDevicePoolRequest_keys = { "arn" = true, nil }

function M.AssertDeleteDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDevicePoolRequest_keys[k], "DeleteDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevicePoolRequest
-- <p>Represents a request to the delete device pool operation.</p>
-- @param arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool you wish to delete.</p>
-- Required parameter: arn
function M.DeleteDevicePoolRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDevicePoolRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteDevicePoolRequest(t)
	return t
end

local ListOfferingsRequest_keys = { "nextToken" = true, nil }

function M.AssertListOfferingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingsRequest_keys[k], "ListOfferingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsRequest
-- <p>Represents the request to list all offerings.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListOfferingsRequest(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingsRequest")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingsRequest(t)
	return t
end

local ListNetworkProfilesRequest_keys = { "nextToken" = true, "type" = true, "arn" = true, nil }

function M.AssertListNetworkProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNetworkProfilesRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then M.AssertNetworkProfileType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListNetworkProfilesRequest_keys[k], "ListNetworkProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNetworkProfilesRequest
--  
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param type [NetworkProfileType] <p>The type of network profile you wish to return information about. Valid values are listed below.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list network profiles.</p>
-- Required parameter: arn
function M.ListNetworkProfilesRequest(nextToken, type, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNetworkProfilesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["type"] = type,
		["arn"] = arn,
	}
	M.AssertListNetworkProfilesRequest(t)
	return t
end

local DeleteUploadRequest_keys = { "arn" = true, nil }

function M.AssertDeleteUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUploadRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUploadRequest_keys[k], "DeleteUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUploadRequest
-- <p>Represents a request to the delete upload operation.</p>
-- @param arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm upload you wish to delete.</p>
-- Required parameter: arn
function M.DeleteUploadRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUploadRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteUploadRequest(t)
	return t
end

local GetDeviceRequest_keys = { "arn" = true, nil }

function M.AssertGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceRequest_keys[k], "GetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceRequest
-- <p>Represents a request to the get device request.</p>
-- @param arn [AmazonResourceName] <p>The device type's ARN.</p>
-- Required parameter: arn
function M.GetDeviceRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetDeviceRequest(t)
	return t
end

local StopRemoteAccessSessionResult_keys = { "remoteAccessSession" = true, nil }

function M.AssertStopRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then M.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(StopRemoteAccessSessionResult_keys[k], "StopRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRemoteAccessSessionResult
-- <p>Represents the response from the server that describes the remote access session when AWS Device Farm stops the session.</p>
-- @param remoteAccessSession [RemoteAccessSession] <p>A container representing the metadata from the service about the remote access session you are stopping.</p>
function M.StopRemoteAccessSessionResult(remoteAccessSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRemoteAccessSessionResult")
	local t = { 
		["remoteAccessSession"] = remoteAccessSession,
	}
	M.AssertStopRemoteAccessSessionResult(t)
	return t
end

local IdempotencyException_keys = { "message" = true, nil }

function M.AssertIdempotencyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotencyException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(IdempotencyException_keys[k], "IdempotencyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotencyException
-- <p>An entity with the same name already exists.</p>
-- @param message [Message] <p>Any additional information about the exception.</p>
function M.IdempotencyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotencyException")
	local t = { 
		["message"] = message,
	}
	M.AssertIdempotencyException(t)
	return t
end

local IncompatibilityMessage_keys = { "message" = true, "type" = true, nil }

function M.AssertIncompatibilityMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibilityMessage to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertDeviceAttribute(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(IncompatibilityMessage_keys[k], "IncompatibilityMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibilityMessage
-- <p>Represents information about incompatibility.</p>
-- @param message [Message] <p>A message about the incompatibility.</p>
-- @param type [DeviceAttribute] <p>The type of incompatibility.</p> <p>Allowed values include:</p> <ul> <li> <p>ARN: The ARN.</p> </li> <li> <p>FORM_FACTOR: The form factor (for example, phone or tablet).</p> </li> <li> <p>MANUFACTURER: The manufacturer.</p> </li> <li> <p>PLATFORM: The platform (for example, Android or iOS).</p> </li> <li> <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.</p> </li> <li> <p>APPIUM_VERSION: The Appium version for the test.</p> </li> </ul>
function M.IncompatibilityMessage(message, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibilityMessage")
	local t = { 
		["message"] = message,
		["type"] = type,
	}
	M.AssertIncompatibilityMessage(t)
	return t
end

local GetTestRequest_keys = { "arn" = true, nil }

function M.AssertGetTestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTestRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetTestRequest_keys[k], "GetTestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTestRequest
-- <p>Represents a request to the get test operation.</p>
-- @param arn [AmazonResourceName] <p>The test's ARN.</p>
-- Required parameter: arn
function M.GetTestRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTestRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetTestRequest(t)
	return t
end

local ListDevicesResult_keys = { "nextToken" = true, "devices" = true, nil }

function M.AssertListDevicesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["devices"] then M.AssertDevices(struct["devices"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicesResult_keys[k], "ListDevicesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesResult
-- <p>Represents the result of a list devices operation.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
-- @param devices [Devices] <p>Information about the devices.</p>
function M.ListDevicesResult(nextToken, devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicesResult")
	local t = { 
		["nextToken"] = nextToken,
		["devices"] = devices,
	}
	M.AssertListDevicesResult(t)
	return t
end

local UpdateNetworkProfileResult_keys = { "networkProfile" = true, nil }

function M.AssertUpdateNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then M.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNetworkProfileResult_keys[k], "UpdateNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNetworkProfileResult
--  
-- @param networkProfile [NetworkProfile] <p>A list of the available network profiles.</p>
function M.UpdateNetworkProfileResult(networkProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNetworkProfileResult")
	local t = { 
		["networkProfile"] = networkProfile,
	}
	M.AssertUpdateNetworkProfileResult(t)
	return t
end

local GetDevicePoolCompatibilityRequest_keys = { "devicePoolArn" = true, "testType" = true, "test" = true, "appArn" = true, nil }

function M.AssertGetDevicePoolCompatibilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolCompatibilityRequest to be of type 'table'")
	assert(struct["devicePoolArn"], "Expected key devicePoolArn to exist in table")
	if struct["devicePoolArn"] then M.AssertAmazonResourceName(struct["devicePoolArn"]) end
	if struct["testType"] then M.AssertTestType(struct["testType"]) end
	if struct["test"] then M.AssertScheduleRunTest(struct["test"]) end
	if struct["appArn"] then M.AssertAmazonResourceName(struct["appArn"]) end
	for k,_ in pairs(struct) do
		assert(GetDevicePoolCompatibilityRequest_keys[k], "GetDevicePoolCompatibilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolCompatibilityRequest
-- <p>Represents a request to the get device pool compatibility operation.</p>
-- @param devicePoolArn [AmazonResourceName] <p>The device pool's ARN.</p>
-- @param testType [TestType] <p>The test type for the specified device pool.</p> <p>Allowed values include the following:</p> <ul> <li> <p>BUILTIN_FUZZ: The built-in fuzz type.</p> </li> <li> <p>BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.</p> </li> <li> <p>APPIUM_JAVA_JUNIT: The Appium Java JUnit type.</p> </li> <li> <p>APPIUM_JAVA_TESTNG: The Appium Java TestNG type.</p> </li> <li> <p>APPIUM_PYTHON: The Appium Python type.</p> </li> <li> <p>APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.</p> </li> <li> <p>APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.</p> </li> <li> <p>APPIUM_WEB_PYTHON: The Appium Python type for Web apps.</p> </li> <li> <p>CALABASH: The Calabash type.</p> </li> <li> <p>INSTRUMENTATION: The Instrumentation type.</p> </li> <li> <p>UIAUTOMATION: The uiautomation type.</p> </li> <li> <p>UIAUTOMATOR: The uiautomator type.</p> </li> <li> <p>XCTEST: The XCode test type.</p> </li> <li> <p>XCTEST_UI: The XCode UI test type.</p> </li> </ul>
-- @param test [ScheduleRunTest] <p>Information about the uploaded test to be run against the device pool.</p>
-- @param appArn [AmazonResourceName] <p>The ARN of the app that is associated with the specified device pool.</p>
-- Required parameter: devicePoolArn
function M.GetDevicePoolCompatibilityRequest(devicePoolArn, testType, test, appArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDevicePoolCompatibilityRequest")
	local t = { 
		["devicePoolArn"] = devicePoolArn,
		["testType"] = testType,
		["test"] = test,
		["appArn"] = appArn,
	}
	M.AssertGetDevicePoolCompatibilityRequest(t)
	return t
end

local DeleteRunResult_keys = { nil }

function M.AssertDeleteRunResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRunResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteRunResult_keys[k], "DeleteRunResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRunResult
-- <p>Represents the result of a delete run request.</p>
function M.DeleteRunResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRunResult")
	local t = { 
	}
	M.AssertDeleteRunResult(t)
	return t
end

local CreateRemoteAccessSessionRequest_keys = { "configuration" = true, "deviceArn" = true, "projectArn" = true, "name" = true, nil }

function M.AssertCreateRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["deviceArn"], "Expected key deviceArn to exist in table")
	if struct["configuration"] then M.AssertCreateRemoteAccessSessionConfiguration(struct["configuration"]) end
	if struct["deviceArn"] then M.AssertAmazonResourceName(struct["deviceArn"]) end
	if struct["projectArn"] then M.AssertAmazonResourceName(struct["projectArn"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateRemoteAccessSessionRequest_keys[k], "CreateRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionRequest
-- <p>Creates and submits a request to start a remote access session.</p>
-- @param configuration [CreateRemoteAccessSessionConfiguration] <p>The configuration information for the remote access session request.</p>
-- @param deviceArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the device for which you want to create a remote access session.</p>
-- @param projectArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to create a remote access session.</p>
-- @param name [Name] <p>The name of the remote access session that you wish to create.</p>
-- Required parameter: projectArn
-- Required parameter: deviceArn
function M.CreateRemoteAccessSessionRequest(configuration, deviceArn, projectArn, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRemoteAccessSessionRequest")
	local t = { 
		["configuration"] = configuration,
		["deviceArn"] = deviceArn,
		["projectArn"] = projectArn,
		["name"] = name,
	}
	M.AssertCreateRemoteAccessSessionRequest(t)
	return t
end

local GetNetworkProfileResult_keys = { "networkProfile" = true, nil }

function M.AssertGetNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then M.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(GetNetworkProfileResult_keys[k], "GetNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNetworkProfileResult
--  
-- @param networkProfile [NetworkProfile] <p>The network profile.</p>
function M.GetNetworkProfileResult(networkProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNetworkProfileResult")
	local t = { 
		["networkProfile"] = networkProfile,
	}
	M.AssertGetNetworkProfileResult(t)
	return t
end

local DevicePoolCompatibilityResult_keys = { "device" = true, "compatible" = true, "incompatibilityMessages" = true, nil }

function M.AssertDevicePoolCompatibilityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevicePoolCompatibilityResult to be of type 'table'")
	if struct["device"] then M.AssertDevice(struct["device"]) end
	if struct["compatible"] then M.AssertBoolean(struct["compatible"]) end
	if struct["incompatibilityMessages"] then M.AssertIncompatibilityMessages(struct["incompatibilityMessages"]) end
	for k,_ in pairs(struct) do
		assert(DevicePoolCompatibilityResult_keys[k], "DevicePoolCompatibilityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevicePoolCompatibilityResult
-- <p>Represents a device pool compatibility result.</p>
-- @param device [Device] <p>The device (phone or tablet) that you wish to return information about.</p>
-- @param compatible [Boolean] <p>Whether the result was compatible with the device pool.</p>
-- @param incompatibilityMessages [IncompatibilityMessages] <p>Information about the compatibility.</p>
function M.DevicePoolCompatibilityResult(device, compatible, incompatibilityMessages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DevicePoolCompatibilityResult")
	local t = { 
		["device"] = device,
		["compatible"] = compatible,
		["incompatibilityMessages"] = incompatibilityMessages,
	}
	M.AssertDevicePoolCompatibilityResult(t)
	return t
end

local GetJobRequest_keys = { "arn" = true, nil }

function M.AssertGetJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetJobRequest_keys[k], "GetJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRequest
-- <p>Represents a request to the get job operation.</p>
-- @param arn [AmazonResourceName] <p>The job's ARN.</p>
-- Required parameter: arn
function M.GetJobRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetJobRequest(t)
	return t
end

local PurchaseOfferingResult_keys = { "offeringTransaction" = true, nil }

function M.AssertPurchaseOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingResult to be of type 'table'")
	if struct["offeringTransaction"] then M.AssertOfferingTransaction(struct["offeringTransaction"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseOfferingResult_keys[k], "PurchaseOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingResult
-- <p>The result of the purchase offering (e.g., success or failure).</p>
-- @param offeringTransaction [OfferingTransaction] <p>Represents the offering transaction for the purchase result.</p>
function M.PurchaseOfferingResult(offeringTransaction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseOfferingResult")
	local t = { 
		["offeringTransaction"] = offeringTransaction,
	}
	M.AssertPurchaseOfferingResult(t)
	return t
end

local Counters_keys = { "skipped" = true, "warned" = true, "failed" = true, "stopped" = true, "passed" = true, "errored" = true, "total" = true, nil }

function M.AssertCounters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Counters to be of type 'table'")
	if struct["skipped"] then M.AssertInteger(struct["skipped"]) end
	if struct["warned"] then M.AssertInteger(struct["warned"]) end
	if struct["failed"] then M.AssertInteger(struct["failed"]) end
	if struct["stopped"] then M.AssertInteger(struct["stopped"]) end
	if struct["passed"] then M.AssertInteger(struct["passed"]) end
	if struct["errored"] then M.AssertInteger(struct["errored"]) end
	if struct["total"] then M.AssertInteger(struct["total"]) end
	for k,_ in pairs(struct) do
		assert(Counters_keys[k], "Counters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Counters
-- <p>Represents entity counters.</p>
-- @param skipped [Integer] <p>The number of skipped entities.</p>
-- @param warned [Integer] <p>The number of warned entities.</p>
-- @param failed [Integer] <p>The number of failed entities.</p>
-- @param stopped [Integer] <p>The number of stopped entities.</p>
-- @param passed [Integer] <p>The number of passed entities.</p>
-- @param errored [Integer] <p>The number of errored entities.</p>
-- @param total [Integer] <p>The total number of entities.</p>
function M.Counters(skipped, warned, failed, stopped, passed, errored, total, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Counters")
	local t = { 
		["skipped"] = skipped,
		["warned"] = warned,
		["failed"] = failed,
		["stopped"] = stopped,
		["passed"] = passed,
		["errored"] = errored,
		["total"] = total,
	}
	M.AssertCounters(t)
	return t
end

local InstallToRemoteAccessSessionResult_keys = { "appUpload" = true, nil }

function M.AssertInstallToRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstallToRemoteAccessSessionResult to be of type 'table'")
	if struct["appUpload"] then M.AssertUpload(struct["appUpload"]) end
	for k,_ in pairs(struct) do
		assert(InstallToRemoteAccessSessionResult_keys[k], "InstallToRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstallToRemoteAccessSessionResult
-- <p>Represents the response from the server after AWS Device Farm makes a request to install to a remote access session.</p>
-- @param appUpload [Upload] <p>An app to upload or that has been uploaded.</p>
function M.InstallToRemoteAccessSessionResult(appUpload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstallToRemoteAccessSessionResult")
	local t = { 
		["appUpload"] = appUpload,
	}
	M.AssertInstallToRemoteAccessSessionResult(t)
	return t
end

local MonetaryAmount_keys = { "amount" = true, "currencyCode" = true, nil }

function M.AssertMonetaryAmount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MonetaryAmount to be of type 'table'")
	if struct["amount"] then M.AssertDouble(struct["amount"]) end
	if struct["currencyCode"] then M.AssertCurrencyCode(struct["currencyCode"]) end
	for k,_ in pairs(struct) do
		assert(MonetaryAmount_keys[k], "MonetaryAmount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MonetaryAmount
-- <p>A number representing the monetary amount for an offering or transaction.</p>
-- @param amount [Double] <p>The numerical amount of an offering or transaction.</p>
-- @param currencyCode [CurrencyCode] <p>The currency code of a monetary amount. For example, <code>USD</code> means "U.S. dollars."</p>
function M.MonetaryAmount(amount, currencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MonetaryAmount")
	local t = { 
		["amount"] = amount,
		["currencyCode"] = currencyCode,
	}
	M.AssertMonetaryAmount(t)
	return t
end

local ListJobsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsRequest_keys[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
-- <p>Represents a request to the list jobs operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The jobs' ARNs.</p>
-- Required parameter: arn
function M.ListJobsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListJobsRequest(t)
	return t
end

local UpdateNetworkProfileRequest_keys = { "name" = true, "downlinkLossPercent" = true, "uplinkLossPercent" = true, "uplinkJitterMs" = true, "downlinkJitterMs" = true, "arn" = true, "uplinkDelayMs" = true, "uplinkBandwidthBits" = true, "downlinkDelayMs" = true, "type" = true, "downlinkBandwidthBits" = true, "description" = true, nil }

function M.AssertUpdateNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then M.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then M.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then M.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then M.AssertLong(struct["downlinkJitterMs"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["uplinkDelayMs"] then M.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then M.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then M.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then M.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then M.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNetworkProfileRequest_keys[k], "UpdateNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNetworkProfileRequest
--  
-- @param name [Name] <p>The name of the network profile about which you are returning information.</p>
-- @param downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project that you wish to update network profile settings.</p>
-- @param uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param type [NetworkProfileType] <p>The type of network profile you wish to return information about. Valid values are listed below.</p>
-- @param downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param description [Message] <p>The descriptoin of the network profile about which you are returning information.</p>
-- Required parameter: arn
function M.UpdateNetworkProfileRequest(name, downlinkLossPercent, uplinkLossPercent, uplinkJitterMs, downlinkJitterMs, arn, uplinkDelayMs, uplinkBandwidthBits, downlinkDelayMs, type, downlinkBandwidthBits, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNetworkProfileRequest")
	local t = { 
		["name"] = name,
		["downlinkLossPercent"] = downlinkLossPercent,
		["uplinkLossPercent"] = uplinkLossPercent,
		["uplinkJitterMs"] = uplinkJitterMs,
		["downlinkJitterMs"] = downlinkJitterMs,
		["arn"] = arn,
		["uplinkDelayMs"] = uplinkDelayMs,
		["uplinkBandwidthBits"] = uplinkBandwidthBits,
		["downlinkDelayMs"] = downlinkDelayMs,
		["type"] = type,
		["downlinkBandwidthBits"] = downlinkBandwidthBits,
		["description"] = description,
	}
	M.AssertUpdateNetworkProfileRequest(t)
	return t
end

local RemoteAccessSession_keys = { "status" = true, "endpoint" = true, "name" = true, "created" = true, "started" = true, "deviceMinutes" = true, "stopped" = true, "result" = true, "device" = true, "message" = true, "billingMethod" = true, "arn" = true, nil }

function M.AssertRemoteAccessSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoteAccessSession to be of type 'table'")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["endpoint"] then M.AssertString(struct["endpoint"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["created"] then M.AssertDateTime(struct["created"]) end
	if struct["started"] then M.AssertDateTime(struct["started"]) end
	if struct["deviceMinutes"] then M.AssertDeviceMinutes(struct["deviceMinutes"]) end
	if struct["stopped"] then M.AssertDateTime(struct["stopped"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["device"] then M.AssertDevice(struct["device"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["billingMethod"] then M.AssertBillingMethod(struct["billingMethod"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(RemoteAccessSession_keys[k], "RemoteAccessSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoteAccessSession
-- <p>Represents information about the remote access session.</p>
-- @param status [ExecutionStatus] <p>The status of the remote access session. Can be any of the following:</p> <ul> <li> <p>PENDING: A pending status.</p> </li> <li> <p>PENDING_CONCURRENCY: A pending concurrency status.</p> </li> <li> <p>PENDING_DEVICE: A pending device status.</p> </li> <li> <p>PROCESSING: A processing status.</p> </li> <li> <p>SCHEDULING: A scheduling status.</p> </li> <li> <p>PREPARING: A preparing status.</p> </li> <li> <p>RUNNING: A running status.</p> </li> <li> <p>COMPLETED: A completed status.</p> </li> <li> <p>STOPPING: A stopping status.</p> </li> </ul>
-- @param endpoint [String] <p>The endpoint for the remote access sesssion.</p>
-- @param name [Name] <p>The name of the remote access session.</p>
-- @param created [DateTime] <p>The date and time the remote access session was created.</p>
-- @param started [DateTime] <p>The date and time the remote access session was started.</p>
-- @param deviceMinutes [DeviceMinutes] <p>The number of minutes a device is used in a remote access sesssion (including setup and teardown minutes).</p>
-- @param stopped [DateTime] <p>The date and time the remote access session was stopped.</p>
-- @param result [ExecutionResult] <p>The result of the remote access session. Can be any of the following:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param device [Device] <p>The device (phone or tablet) used in the remote access session.</p>
-- @param message [Message] <p>A message about the remote access session.</p>
-- @param billingMethod [BillingMethod] <p>The billing method of the remote access session. Possible values include <code>METERED</code> or <code>UNMETERED</code>. For more information about metered devices, see <a href="http://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology">AWS Device Farm terminology</a>."</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session.</p>
function M.RemoteAccessSession(status, endpoint, name, created, started, deviceMinutes, stopped, result, device, message, billingMethod, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoteAccessSession")
	local t = { 
		["status"] = status,
		["endpoint"] = endpoint,
		["name"] = name,
		["created"] = created,
		["started"] = started,
		["deviceMinutes"] = deviceMinutes,
		["stopped"] = stopped,
		["result"] = result,
		["device"] = device,
		["message"] = message,
		["billingMethod"] = billingMethod,
		["arn"] = arn,
	}
	M.AssertRemoteAccessSession(t)
	return t
end

local Device_keys = { "formFactor" = true, "name" = true, "remoteAccessEnabled" = true, "resolution" = true, "image" = true, "fleetName" = true, "fleetType" = true, "platform" = true, "carrier" = true, "radio" = true, "heapSize" = true, "memory" = true, "model" = true, "os" = true, "cpu" = true, "arn" = true, "manufacturer" = true, nil }

function M.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["formFactor"] then M.AssertDeviceFormFactor(struct["formFactor"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["remoteAccessEnabled"] then M.AssertBoolean(struct["remoteAccessEnabled"]) end
	if struct["resolution"] then M.AssertResolution(struct["resolution"]) end
	if struct["image"] then M.AssertString(struct["image"]) end
	if struct["fleetName"] then M.AssertString(struct["fleetName"]) end
	if struct["fleetType"] then M.AssertString(struct["fleetType"]) end
	if struct["platform"] then M.AssertDevicePlatform(struct["platform"]) end
	if struct["carrier"] then M.AssertString(struct["carrier"]) end
	if struct["radio"] then M.AssertString(struct["radio"]) end
	if struct["heapSize"] then M.AssertLong(struct["heapSize"]) end
	if struct["memory"] then M.AssertLong(struct["memory"]) end
	if struct["model"] then M.AssertString(struct["model"]) end
	if struct["os"] then M.AssertString(struct["os"]) end
	if struct["cpu"] then M.AssertCPU(struct["cpu"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["manufacturer"] then M.AssertString(struct["manufacturer"]) end
	for k,_ in pairs(struct) do
		assert(Device_keys[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
-- <p>Represents a device type that an app is tested against.</p>
-- @param formFactor [DeviceFormFactor] <p>The device's form factor.</p> <p>Allowed values include:</p> <ul> <li> <p>PHONE: The phone form factor.</p> </li> <li> <p>TABLET: The tablet form factor.</p> </li> </ul>
-- @param name [Name] <p>The device's display name.</p>
-- @param remoteAccessEnabled [Boolean] <p>Specifies whether remote access has been enabled for the specified device.</p>
-- @param resolution [Resolution] <p>The resolution of the device.</p>
-- @param image [String] <p>The device's image name.</p>
-- @param fleetName [String] <p>The name of the fleet to which this device belongs.</p>
-- @param fleetType [String] <p>The type of fleet to which this device belongs. Possible values for fleet type are PRIVATE and PUBLIC.</p>
-- @param platform [DevicePlatform] <p>The device's platform.</p> <p>Allowed values include:</p> <ul> <li> <p>ANDROID: The Android platform.</p> </li> <li> <p>IOS: The iOS platform.</p> </li> </ul>
-- @param carrier [String] <p>The device's carrier.</p>
-- @param radio [String] <p>The device's radio.</p>
-- @param heapSize [Long] <p>The device's heap size, expressed in bytes.</p>
-- @param memory [Long] <p>The device's total memory size, expressed in bytes.</p>
-- @param model [String] <p>The device's model name.</p>
-- @param os [String] <p>The device's operating system type.</p>
-- @param cpu [CPU] <p>Information about the device's CPU.</p>
-- @param arn [AmazonResourceName] <p>The device's ARN.</p>
-- @param manufacturer [String] <p>The device's manufacturer name.</p>
function M.Device(formFactor, name, remoteAccessEnabled, resolution, image, fleetName, fleetType, platform, carrier, radio, heapSize, memory, model, os, cpu, arn, manufacturer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Device")
	local t = { 
		["formFactor"] = formFactor,
		["name"] = name,
		["remoteAccessEnabled"] = remoteAccessEnabled,
		["resolution"] = resolution,
		["image"] = image,
		["fleetName"] = fleetName,
		["fleetType"] = fleetType,
		["platform"] = platform,
		["carrier"] = carrier,
		["radio"] = radio,
		["heapSize"] = heapSize,
		["memory"] = memory,
		["model"] = model,
		["os"] = os,
		["cpu"] = cpu,
		["arn"] = arn,
		["manufacturer"] = manufacturer,
	}
	M.AssertDevice(t)
	return t
end

local DeleteNetworkProfileRequest_keys = { "arn" = true, nil }

function M.AssertDeleteNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteNetworkProfileRequest_keys[k], "DeleteNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNetworkProfileRequest
--  
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile you want to delete.</p>
-- Required parameter: arn
function M.DeleteNetworkProfileRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNetworkProfileRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertDeleteNetworkProfileRequest(t)
	return t
end

local InstallToRemoteAccessSessionRequest_keys = { "appArn" = true, "remoteAccessSessionArn" = true, nil }

function M.AssertInstallToRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstallToRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["remoteAccessSessionArn"], "Expected key remoteAccessSessionArn to exist in table")
	assert(struct["appArn"], "Expected key appArn to exist in table")
	if struct["appArn"] then M.AssertAmazonResourceName(struct["appArn"]) end
	if struct["remoteAccessSessionArn"] then M.AssertAmazonResourceName(struct["remoteAccessSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(InstallToRemoteAccessSessionRequest_keys[k], "InstallToRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstallToRemoteAccessSessionRequest
-- <p>Represents the request to install an Android application (in .apk format) or an iOS application (in .ipa format) as part of a remote access session.</p>
-- @param appArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the app about which you are requesting information.</p>
-- @param remoteAccessSessionArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.</p>
-- Required parameter: remoteAccessSessionArn
-- Required parameter: appArn
function M.InstallToRemoteAccessSessionRequest(appArn, remoteAccessSessionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstallToRemoteAccessSessionRequest")
	local t = { 
		["appArn"] = appArn,
		["remoteAccessSessionArn"] = remoteAccessSessionArn,
	}
	M.AssertInstallToRemoteAccessSessionRequest(t)
	return t
end

local DeleteProjectResult_keys = { nil }

function M.AssertDeleteProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteProjectResult_keys[k], "DeleteProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResult
-- <p>Represents the result of a delete project request.</p>
function M.DeleteProjectResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectResult")
	local t = { 
	}
	M.AssertDeleteProjectResult(t)
	return t
end

local ListUniqueProblemsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListUniqueProblemsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUniqueProblemsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListUniqueProblemsRequest_keys[k], "ListUniqueProblemsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUniqueProblemsRequest
-- <p>Represents a request to the list unique problems operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The unique problems' ARNs.</p>
-- Required parameter: arn
function M.ListUniqueProblemsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUniqueProblemsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListUniqueProblemsRequest(t)
	return t
end

local ScheduleRunRequest_keys = { "name" = true, "test" = true, "executionConfiguration" = true, "devicePoolArn" = true, "configuration" = true, "appArn" = true, "projectArn" = true, nil }

function M.AssertScheduleRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["devicePoolArn"], "Expected key devicePoolArn to exist in table")
	assert(struct["test"], "Expected key test to exist in table")
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["test"] then M.AssertScheduleRunTest(struct["test"]) end
	if struct["executionConfiguration"] then M.AssertExecutionConfiguration(struct["executionConfiguration"]) end
	if struct["devicePoolArn"] then M.AssertAmazonResourceName(struct["devicePoolArn"]) end
	if struct["configuration"] then M.AssertScheduleRunConfiguration(struct["configuration"]) end
	if struct["appArn"] then M.AssertAmazonResourceName(struct["appArn"]) end
	if struct["projectArn"] then M.AssertAmazonResourceName(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleRunRequest_keys[k], "ScheduleRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunRequest
-- <p>Represents a request to the schedule run operation.</p>
-- @param name [Name] <p>The name for the run to be scheduled.</p>
-- @param test [ScheduleRunTest] <p>Information about the test for the run to be scheduled.</p>
-- @param executionConfiguration [ExecutionConfiguration] <p>Specifies configuration information about a test run, such as the execution timeout (in minutes).</p>
-- @param devicePoolArn [AmazonResourceName] <p>The ARN of the device pool for the run to be scheduled.</p>
-- @param configuration [ScheduleRunConfiguration] <p>Information about the settings for the run to be scheduled.</p>
-- @param appArn [AmazonResourceName] <p>The ARN of the app to schedule a run.</p>
-- @param projectArn [AmazonResourceName] <p>The ARN of the project for the run to be scheduled.</p>
-- Required parameter: projectArn
-- Required parameter: devicePoolArn
-- Required parameter: test
function M.ScheduleRunRequest(name, test, executionConfiguration, devicePoolArn, configuration, appArn, projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleRunRequest")
	local t = { 
		["name"] = name,
		["test"] = test,
		["executionConfiguration"] = executionConfiguration,
		["devicePoolArn"] = devicePoolArn,
		["configuration"] = configuration,
		["appArn"] = appArn,
		["projectArn"] = projectArn,
	}
	M.AssertScheduleRunRequest(t)
	return t
end

local ListDevicePoolsRequest_keys = { "nextToken" = true, "type" = true, "arn" = true, nil }

function M.AssertListDevicePoolsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicePoolsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["type"] then M.AssertDevicePoolType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicePoolsRequest_keys[k], "ListDevicePoolsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicePoolsRequest
-- <p>Represents the result of a list device pools request.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param type [DevicePoolType] <p>The device pools' type.</p> <p>Allowed values include:</p> <ul> <li> <p>CURATED: A device pool that is created and managed by AWS Device Farm.</p> </li> <li> <p>PRIVATE: A device pool that is created and managed by the device pool developer.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The project ARN.</p>
-- Required parameter: arn
function M.ListDevicePoolsRequest(nextToken, type, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicePoolsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["type"] = type,
		["arn"] = arn,
	}
	M.AssertListDevicePoolsRequest(t)
	return t
end

local UpdateProjectResult_keys = { "project" = true, nil }

function M.AssertUpdateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResult to be of type 'table'")
	if struct["project"] then M.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProjectResult_keys[k], "UpdateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResult
-- <p>Represents the result of an update project request.</p>
-- @param project [Project] <p>The project you wish to update.</p>
function M.UpdateProjectResult(project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectResult")
	local t = { 
		["project"] = project,
	}
	M.AssertUpdateProjectResult(t)
	return t
end

local Problem_keys = { "run" = true, "device" = true, "job" = true, "result" = true, "test" = true, "suite" = true, "message" = true, nil }

function M.AssertProblem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Problem to be of type 'table'")
	if struct["run"] then M.AssertProblemDetail(struct["run"]) end
	if struct["device"] then M.AssertDevice(struct["device"]) end
	if struct["job"] then M.AssertProblemDetail(struct["job"]) end
	if struct["result"] then M.AssertExecutionResult(struct["result"]) end
	if struct["test"] then M.AssertProblemDetail(struct["test"]) end
	if struct["suite"] then M.AssertProblemDetail(struct["suite"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(Problem_keys[k], "Problem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Problem
-- <p>Represents a specific warning or failure.</p>
-- @param run [ProblemDetail] <p>Information about the associated run.</p>
-- @param device [Device] <p>Information about the associated device.</p>
-- @param job [ProblemDetail] <p>Information about the associated job.</p>
-- @param result [ExecutionResult] <p>The problem's result.</p> <p>Allowed values include:</p> <ul> <li> <p>PENDING: A pending condition.</p> </li> <li> <p>PASSED: A passing condition.</p> </li> <li> <p>WARNED: A warning condition.</p> </li> <li> <p>FAILED: A failed condition.</p> </li> <li> <p>SKIPPED: A skipped condition.</p> </li> <li> <p>ERRORED: An error condition.</p> </li> <li> <p>STOPPED: A stopped condition.</p> </li> </ul>
-- @param test [ProblemDetail] <p>Information about the associated test.</p>
-- @param suite [ProblemDetail] <p>Information about the associated suite.</p>
-- @param message [Message] <p>A message about the problem's result.</p>
function M.Problem(run, device, job, result, test, suite, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Problem")
	local t = { 
		["run"] = run,
		["device"] = device,
		["job"] = job,
		["result"] = result,
		["test"] = test,
		["suite"] = suite,
		["message"] = message,
	}
	M.AssertProblem(t)
	return t
end

local CreateRemoteAccessSessionResult_keys = { "remoteAccessSession" = true, nil }

function M.AssertCreateRemoteAccessSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionResult to be of type 'table'")
	if struct["remoteAccessSession"] then M.AssertRemoteAccessSession(struct["remoteAccessSession"]) end
	for k,_ in pairs(struct) do
		assert(CreateRemoteAccessSessionResult_keys[k], "CreateRemoteAccessSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionResult
-- <p>Represents the server response from a request to create a remote access session.</p>
-- @param remoteAccessSession [RemoteAccessSession] <p>A container that describes the remote access session when the request to create a remote access session is sent.</p>
function M.CreateRemoteAccessSessionResult(remoteAccessSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRemoteAccessSessionResult")
	local t = { 
		["remoteAccessSession"] = remoteAccessSession,
	}
	M.AssertCreateRemoteAccessSessionResult(t)
	return t
end

local CreateRemoteAccessSessionConfiguration_keys = { "billingMethod" = true, nil }

function M.AssertCreateRemoteAccessSessionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRemoteAccessSessionConfiguration to be of type 'table'")
	if struct["billingMethod"] then M.AssertBillingMethod(struct["billingMethod"]) end
	for k,_ in pairs(struct) do
		assert(CreateRemoteAccessSessionConfiguration_keys[k], "CreateRemoteAccessSessionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRemoteAccessSessionConfiguration
-- <p>Creates the configuration settings for a remote access session, including the device model and type.</p>
-- @param billingMethod [BillingMethod] <p>Returns the billing method for purposes of configuring a remote access session.</p>
function M.CreateRemoteAccessSessionConfiguration(billingMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRemoteAccessSessionConfiguration")
	local t = { 
		["billingMethod"] = billingMethod,
	}
	M.AssertCreateRemoteAccessSessionConfiguration(t)
	return t
end

local GetTestResult_keys = { "test" = true, nil }

function M.AssertGetTestResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTestResult to be of type 'table'")
	if struct["test"] then M.AssertTest(struct["test"]) end
	for k,_ in pairs(struct) do
		assert(GetTestResult_keys[k], "GetTestResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTestResult
-- <p>Represents the result of a get test request.</p>
-- @param test [Test] <p>A test condition that is evaluated.</p>
function M.GetTestResult(test, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTestResult")
	local t = { 
		["test"] = test,
	}
	M.AssertGetTestResult(t)
	return t
end

local ScheduleRunConfiguration_keys = { "radios" = true, "locale" = true, "networkProfileArn" = true, "location" = true, "extraDataPackageArn" = true, "auxiliaryApps" = true, "billingMethod" = true, nil }

function M.AssertScheduleRunConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleRunConfiguration to be of type 'table'")
	if struct["radios"] then M.AssertRadios(struct["radios"]) end
	if struct["locale"] then M.AssertString(struct["locale"]) end
	if struct["networkProfileArn"] then M.AssertAmazonResourceName(struct["networkProfileArn"]) end
	if struct["location"] then M.AssertLocation(struct["location"]) end
	if struct["extraDataPackageArn"] then M.AssertAmazonResourceName(struct["extraDataPackageArn"]) end
	if struct["auxiliaryApps"] then M.AssertAmazonResourceNames(struct["auxiliaryApps"]) end
	if struct["billingMethod"] then M.AssertBillingMethod(struct["billingMethod"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleRunConfiguration_keys[k], "ScheduleRunConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleRunConfiguration
-- <p>Represents the settings for a run. Includes things like location, radio states, auxiliary apps, and network profiles.</p>
-- @param radios [Radios] <p>Information about the radio states for the run.</p>
-- @param locale [String] <p>Information about the locale that is used for the run.</p>
-- @param networkProfileArn [AmazonResourceName] <p>Reserved for internal use.</p>
-- @param location [Location] <p>Information about the location that is used for the run.</p>
-- @param extraDataPackageArn [AmazonResourceName] <p>The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm will extract to external data for Android or the app's sandbox for iOS.</p>
-- @param auxiliaryApps [AmazonResourceNames] <p>A list of auxiliary apps for the run.</p>
-- @param billingMethod [BillingMethod] <p>Specifies the billing method for a test run: <code>metered</code> or <code>unmetered</code>. If the parameter is not specified, the default value is <code>metered</code>.</p>
function M.ScheduleRunConfiguration(radios, locale, networkProfileArn, location, extraDataPackageArn, auxiliaryApps, billingMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleRunConfiguration")
	local t = { 
		["radios"] = radios,
		["locale"] = locale,
		["networkProfileArn"] = networkProfileArn,
		["location"] = location,
		["extraDataPackageArn"] = extraDataPackageArn,
		["auxiliaryApps"] = auxiliaryApps,
		["billingMethod"] = billingMethod,
	}
	M.AssertScheduleRunConfiguration(t)
	return t
end

local NetworkProfile_keys = { "name" = true, "downlinkLossPercent" = true, "uplinkLossPercent" = true, "uplinkJitterMs" = true, "downlinkJitterMs" = true, "arn" = true, "uplinkDelayMs" = true, "uplinkBandwidthBits" = true, "downlinkDelayMs" = true, "type" = true, "downlinkBandwidthBits" = true, "description" = true, nil }

function M.AssertNetworkProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkProfile to be of type 'table'")
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then M.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then M.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then M.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then M.AssertLong(struct["downlinkJitterMs"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["uplinkDelayMs"] then M.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then M.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then M.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then M.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then M.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(NetworkProfile_keys[k], "NetworkProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkProfile
-- <p>An array of settings that describes characteristics of a network profile.</p>
-- @param name [Name] <p>The name of the network profile.</p>
-- @param downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile.</p>
-- @param uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param type [NetworkProfileType] <p>The type of network profile. Valid values are listed below.</p>
-- @param downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param description [Message] <p>The description of the network profile.</p>
function M.NetworkProfile(name, downlinkLossPercent, uplinkLossPercent, uplinkJitterMs, downlinkJitterMs, arn, uplinkDelayMs, uplinkBandwidthBits, downlinkDelayMs, type, downlinkBandwidthBits, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkProfile")
	local t = { 
		["name"] = name,
		["downlinkLossPercent"] = downlinkLossPercent,
		["uplinkLossPercent"] = uplinkLossPercent,
		["uplinkJitterMs"] = uplinkJitterMs,
		["downlinkJitterMs"] = downlinkJitterMs,
		["arn"] = arn,
		["uplinkDelayMs"] = uplinkDelayMs,
		["uplinkBandwidthBits"] = uplinkBandwidthBits,
		["downlinkDelayMs"] = downlinkDelayMs,
		["type"] = type,
		["downlinkBandwidthBits"] = downlinkBandwidthBits,
		["description"] = description,
	}
	M.AssertNetworkProfile(t)
	return t
end

local Location_keys = { "latitude" = true, "longitude" = true, nil }

function M.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	assert(struct["latitude"], "Expected key latitude to exist in table")
	assert(struct["longitude"], "Expected key longitude to exist in table")
	if struct["latitude"] then M.AssertDouble(struct["latitude"]) end
	if struct["longitude"] then M.AssertDouble(struct["longitude"]) end
	for k,_ in pairs(struct) do
		assert(Location_keys[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>Represents a latitude and longitude pair, expressed in geographic coordinate system degrees (for example 47.6204, -122.3491).</p> <p>Elevation is currently not supported.</p>
-- @param latitude [Double] <p>The latitude.</p>
-- @param longitude [Double] <p>The longitude.</p>
-- Required parameter: latitude
-- Required parameter: longitude
function M.Location(latitude, longitude, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Location")
	local t = { 
		["latitude"] = latitude,
		["longitude"] = longitude,
	}
	M.AssertLocation(t)
	return t
end

local GetRunRequest_keys = { "arn" = true, nil }

function M.AssertGetRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetRunRequest_keys[k], "GetRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRunRequest
-- <p>Represents a request to the get run operation.</p>
-- @param arn [AmazonResourceName] <p>The run's ARN.</p>
-- Required parameter: arn
function M.GetRunRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRunRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetRunRequest(t)
	return t
end

local Resolution_keys = { "width" = true, "height" = true, nil }

function M.AssertResolution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resolution to be of type 'table'")
	if struct["width"] then M.AssertInteger(struct["width"]) end
	if struct["height"] then M.AssertInteger(struct["height"]) end
	for k,_ in pairs(struct) do
		assert(Resolution_keys[k], "Resolution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resolution
-- <p>Represents the screen resolution of a device in height and width, expressed in pixels.</p>
-- @param width [Integer] <p>The screen resolution's width, expressed in pixels.</p>
-- @param height [Integer] <p>The screen resolution's height, expressed in pixels.</p>
function M.Resolution(width, height, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resolution")
	local t = { 
		["width"] = width,
		["height"] = height,
	}
	M.AssertResolution(t)
	return t
end

local PurchaseOfferingRequest_keys = { "offeringPromotionId" = true, "quantity" = true, "offeringId" = true, nil }

function M.AssertPurchaseOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingRequest to be of type 'table'")
	if struct["offeringPromotionId"] then M.AssertOfferingPromotionIdentifier(struct["offeringPromotionId"]) end
	if struct["quantity"] then M.AssertInteger(struct["quantity"]) end
	if struct["offeringId"] then M.AssertOfferingIdentifier(struct["offeringId"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseOfferingRequest_keys[k], "PurchaseOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingRequest
-- <p>Represents a request for a purchase offering.</p>
-- @param offeringPromotionId [OfferingPromotionIdentifier] <p>The ID of the offering promotion to be applied to the purchase.</p>
-- @param quantity [Integer] <p>The number of device slots you wish to purchase in an offering request.</p>
-- @param offeringId [OfferingIdentifier] <p>The ID of the offering.</p>
function M.PurchaseOfferingRequest(offeringPromotionId, quantity, offeringId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseOfferingRequest")
	local t = { 
		["offeringPromotionId"] = offeringPromotionId,
		["quantity"] = quantity,
		["offeringId"] = offeringId,
	}
	M.AssertPurchaseOfferingRequest(t)
	return t
end

local CreateNetworkProfileResult_keys = { "networkProfile" = true, nil }

function M.AssertCreateNetworkProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNetworkProfileResult to be of type 'table'")
	if struct["networkProfile"] then M.AssertNetworkProfile(struct["networkProfile"]) end
	for k,_ in pairs(struct) do
		assert(CreateNetworkProfileResult_keys[k], "CreateNetworkProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNetworkProfileResult
--  
-- @param networkProfile [NetworkProfile] <p>The network profile that is returned by the create network profile request.</p>
function M.CreateNetworkProfileResult(networkProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNetworkProfileResult")
	local t = { 
		["networkProfile"] = networkProfile,
	}
	M.AssertCreateNetworkProfileResult(t)
	return t
end

local TrialMinutes_keys = { "total" = true, "remaining" = true, nil }

function M.AssertTrialMinutes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrialMinutes to be of type 'table'")
	if struct["total"] then M.AssertDouble(struct["total"]) end
	if struct["remaining"] then M.AssertDouble(struct["remaining"]) end
	for k,_ in pairs(struct) do
		assert(TrialMinutes_keys[k], "TrialMinutes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrialMinutes
-- <p>Represents information about free trial device minutes for an AWS account.</p>
-- @param total [Double] <p>The total number of free trial minutes that the account started with.</p>
-- @param remaining [Double] <p>The number of free trial minutes remaining in the account.</p>
function M.TrialMinutes(total, remaining, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrialMinutes")
	local t = { 
		["total"] = total,
		["remaining"] = remaining,
	}
	M.AssertTrialMinutes(t)
	return t
end

local GetOfferingStatusRequest_keys = { "nextToken" = true, nil }

function M.AssertGetOfferingStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOfferingStatusRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetOfferingStatusRequest_keys[k], "GetOfferingStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOfferingStatusRequest
-- <p>Represents the request to retrieve the offering status for the specified customer or account.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.GetOfferingStatusRequest(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOfferingStatusRequest")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertGetOfferingStatusRequest(t)
	return t
end

local GetOfferingStatusResult_keys = { "current" = true, "nextPeriod" = true, "nextToken" = true, nil }

function M.AssertGetOfferingStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOfferingStatusResult to be of type 'table'")
	if struct["current"] then M.AssertOfferingStatusMap(struct["current"]) end
	if struct["nextPeriod"] then M.AssertOfferingStatusMap(struct["nextPeriod"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetOfferingStatusResult_keys[k], "GetOfferingStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOfferingStatusResult
-- <p>Returns the status result for a device offering.</p>
-- @param current [OfferingStatusMap] <p>When specified, gets the offering status for the current period.</p>
-- @param nextPeriod [OfferingStatusMap] <p>When specified, gets the offering status for the next period.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.GetOfferingStatusResult(current, nextPeriod, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOfferingStatusResult")
	local t = { 
		["current"] = current,
		["nextPeriod"] = nextPeriod,
		["nextToken"] = nextToken,
	}
	M.AssertGetOfferingStatusResult(t)
	return t
end

local ListOfferingTransactionsResult_keys = { "offeringTransactions" = true, "nextToken" = true, nil }

function M.AssertListOfferingTransactionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingTransactionsResult to be of type 'table'")
	if struct["offeringTransactions"] then M.AssertOfferingTransactions(struct["offeringTransactions"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingTransactionsResult_keys[k], "ListOfferingTransactionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingTransactionsResult
-- <p>Returns the transaction log of the specified offerings.</p>
-- @param offeringTransactions [OfferingTransactions] <p>The audit log of subscriptions you have purchased and modified through AWS Device Farm.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListOfferingTransactionsResult(offeringTransactions, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingTransactionsResult")
	local t = { 
		["offeringTransactions"] = offeringTransactions,
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingTransactionsResult(t)
	return t
end

local Offering_keys = { "recurringCharges" = true, "platform" = true, "type" = true, "id" = true, "description" = true, nil }

function M.AssertOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Offering to be of type 'table'")
	if struct["recurringCharges"] then M.AssertRecurringCharges(struct["recurringCharges"]) end
	if struct["platform"] then M.AssertDevicePlatform(struct["platform"]) end
	if struct["type"] then M.AssertOfferingType(struct["type"]) end
	if struct["id"] then M.AssertOfferingIdentifier(struct["id"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(Offering_keys[k], "Offering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Offering
-- <p>Represents the metadata of a device offering.</p>
-- @param recurringCharges [RecurringCharges] <p>Specifies whether there are recurring charges for the offering.</p>
-- @param platform [DevicePlatform] <p>The platform of the device (e.g., ANDROID or IOS).</p>
-- @param type [OfferingType] <p>The type of offering (e.g., "RECURRING") for a device.</p>
-- @param id [OfferingIdentifier] <p>The ID that corresponds to a device offering.</p>
-- @param description [Message] <p>A string describing the offering.</p>
function M.Offering(recurringCharges, platform, type, id, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Offering")
	local t = { 
		["recurringCharges"] = recurringCharges,
		["platform"] = platform,
		["type"] = type,
		["id"] = id,
		["description"] = description,
	}
	M.AssertOffering(t)
	return t
end

local ListTestsResult_keys = { "tests" = true, "nextToken" = true, nil }

function M.AssertListTestsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTestsResult to be of type 'table'")
	if struct["tests"] then M.AssertTests(struct["tests"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTestsResult_keys[k], "ListTestsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTestsResult
-- <p>Represents the result of a list tests request.</p>
-- @param tests [Tests] <p>Information about the tests.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
function M.ListTestsResult(tests, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTestsResult")
	local t = { 
		["tests"] = tests,
		["nextToken"] = nextToken,
	}
	M.AssertListTestsResult(t)
	return t
end

local ExecutionConfiguration_keys = { "jobTimeoutMinutes" = true, "appPackagesCleanup" = true, "accountsCleanup" = true, nil }

function M.AssertExecutionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionConfiguration to be of type 'table'")
	if struct["jobTimeoutMinutes"] then M.AssertJobTimeoutMinutes(struct["jobTimeoutMinutes"]) end
	if struct["appPackagesCleanup"] then M.AssertAppPackagesCleanup(struct["appPackagesCleanup"]) end
	if struct["accountsCleanup"] then M.AssertAccountsCleanup(struct["accountsCleanup"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionConfiguration_keys[k], "ExecutionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionConfiguration
-- <p>Represents configuration information about a test run, such as the execution timeout (in minutes).</p>
-- @param jobTimeoutMinutes [JobTimeoutMinutes] <p>The number of minutes a test run will execute before it times out.</p>
-- @param appPackagesCleanup [AppPackagesCleanup] <p>True if app package cleanup is enabled at the beginning of the test; otherwise, false.</p>
-- @param accountsCleanup [AccountsCleanup] <p>True if account cleanup is enabled at the beginning of the test; otherwise, false.</p>
function M.ExecutionConfiguration(jobTimeoutMinutes, appPackagesCleanup, accountsCleanup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionConfiguration")
	local t = { 
		["jobTimeoutMinutes"] = jobTimeoutMinutes,
		["appPackagesCleanup"] = appPackagesCleanup,
		["accountsCleanup"] = accountsCleanup,
	}
	M.AssertExecutionConfiguration(t)
	return t
end

local Artifact_keys = { "url" = true, "extension" = true, "type" = true, "name" = true, "arn" = true, nil }

function M.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["url"] then M.AssertURL(struct["url"]) end
	if struct["extension"] then M.AssertString(struct["extension"]) end
	if struct["type"] then M.AssertArtifactType(struct["type"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(Artifact_keys[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- <p>Represents the output of a test. Examples of artifacts include logs and screenshots.</p>
-- @param url [URL] <p>The pre-signed Amazon S3 URL that can be used with a corresponding GET request to download the artifact's file.</p>
-- @param extension [String] <p>The artifact's file extension.</p>
-- @param type [ArtifactType] <p>The artifact's type.</p> <p>Allowed values include the following:</p> <ul> <li> <p>UNKNOWN: An unknown type.</p> </li> <li> <p>SCREENSHOT: The screenshot type.</p> </li> <li> <p>DEVICE_LOG: The device log type.</p> </li> <li> <p>MESSAGE_LOG: The message log type.</p> </li> <li> <p>RESULT_LOG: The result log type.</p> </li> <li> <p>SERVICE_LOG: The service log type.</p> </li> <li> <p>WEBKIT_LOG: The web kit log type.</p> </li> <li> <p>INSTRUMENTATION_OUTPUT: The instrumentation type.</p> </li> <li> <p>EXERCISER_MONKEY_OUTPUT: For Android, the artifact (log) generated by an Android fuzz test.</p> </li> <li> <p>CALABASH_JSON_OUTPUT: The Calabash JSON output type.</p> </li> <li> <p>CALABASH_PRETTY_OUTPUT: The Calabash pretty output type.</p> </li> <li> <p>CALABASH_STANDARD_OUTPUT: The Calabash standard output type.</p> </li> <li> <p>CALABASH_JAVA_XML_OUTPUT: The Calabash Java XML output type.</p> </li> <li> <p>AUTOMATION_OUTPUT: The automation output type.</p> </li> <li> <p>APPIUM_SERVER_OUTPUT: The Appium server output type.</p> </li> <li> <p>APPIUM_JAVA_OUTPUT: The Appium Java output type.</p> </li> <li> <p>APPIUM_JAVA_XML_OUTPUT: The Appium Java XML output type.</p> </li> <li> <p>APPIUM_PYTHON_OUTPUT: The Appium Python output type.</p> </li> <li> <p>APPIUM_PYTHON_XML_OUTPUT: The Appium Python XML output type.</p> </li> <li> <p>EXPLORER_EVENT_LOG: The Explorer event log output type.</p> </li> <li> <p>EXPLORER_SUMMARY_LOG: The Explorer summary log output type.</p> </li> <li> <p>APPLICATION_CRASH_REPORT: The application crash report output type.</p> </li> <li> <p>XCTEST_LOG: The XCode test output type.</p> </li> </ul>
-- @param name [Name] <p>The artifact's name.</p>
-- @param arn [AmazonResourceName] <p>The artifact's ARN.</p>
function M.Artifact(url, extension, type, name, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Artifact")
	local t = { 
		["url"] = url,
		["extension"] = extension,
		["type"] = type,
		["name"] = name,
		["arn"] = arn,
	}
	M.AssertArtifact(t)
	return t
end

local GetAccountSettingsRequest_keys = { nil }

function M.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetAccountSettingsRequest_keys[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
-- <p>Represents the request sent to retrieve the account settings.</p>
function M.GetAccountSettingsRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSettingsRequest")
	local t = { 
	}
	M.AssertGetAccountSettingsRequest(t)
	return t
end

local GetDevicePoolRequest_keys = { "arn" = true, nil }

function M.AssertGetDevicePoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetDevicePoolRequest_keys[k], "GetDevicePoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolRequest
-- <p>Represents a request to the get device pool operation.</p>
-- @param arn [AmazonResourceName] <p>The device pool's ARN.</p>
-- Required parameter: arn
function M.GetDevicePoolRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDevicePoolRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetDevicePoolRequest(t)
	return t
end

local GetNetworkProfileRequest_keys = { "arn" = true, nil }

function M.AssertGetNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNetworkProfileRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetNetworkProfileRequest_keys[k], "GetNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNetworkProfileRequest
--  
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the network profile you want to return information about.</p>
-- Required parameter: arn
function M.GetNetworkProfileRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNetworkProfileRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetNetworkProfileRequest(t)
	return t
end

local ListOfferingsResult_keys = { "offerings" = true, "nextToken" = true, nil }

function M.AssertListOfferingsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsResult to be of type 'table'")
	if struct["offerings"] then M.AssertOfferings(struct["offerings"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingsResult_keys[k], "ListOfferingsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsResult
-- <p>Represents the return values of the list of offerings.</p>
-- @param offerings [Offerings] <p>A value representing the list offering results.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListOfferingsResult(offerings, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingsResult")
	local t = { 
		["offerings"] = offerings,
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingsResult(t)
	return t
end

local GetUploadRequest_keys = { "arn" = true, nil }

function M.AssertGetUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUploadRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetUploadRequest_keys[k], "GetUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUploadRequest
-- <p>Represents a request to the get upload operation.</p>
-- @param arn [AmazonResourceName] <p>The upload's ARN.</p>
-- Required parameter: arn
function M.GetUploadRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUploadRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetUploadRequest(t)
	return t
end

local ListOfferingPromotionsRequest_keys = { "nextToken" = true, nil }

function M.AssertListOfferingPromotionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingPromotionsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListOfferingPromotionsRequest_keys[k], "ListOfferingPromotionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingPromotionsRequest
--  
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListOfferingPromotionsRequest(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOfferingPromotionsRequest")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListOfferingPromotionsRequest(t)
	return t
end

local ListRunsResult_keys = { "runs" = true, "nextToken" = true, nil }

function M.AssertListRunsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRunsResult to be of type 'table'")
	if struct["runs"] then M.AssertRuns(struct["runs"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListRunsResult_keys[k], "ListRunsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRunsResult
-- <p>Represents the result of a list runs request.</p>
-- @param runs [Runs] <p>Information about the runs.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
function M.ListRunsResult(runs, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRunsResult")
	local t = { 
		["runs"] = runs,
		["nextToken"] = nextToken,
	}
	M.AssertListRunsResult(t)
	return t
end

local StopRunRequest_keys = { "arn" = true, nil }

function M.AssertStopRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRunRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(StopRunRequest_keys[k], "StopRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRunRequest
-- <p>Represents the request to stop a specific run.</p>
-- @param arn [AmazonResourceName] <p>Represents the Amazon Resource Name (ARN) of the Device Farm run you wish to stop.</p>
-- Required parameter: arn
function M.StopRunRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRunRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertStopRunRequest(t)
	return t
end

local ListRunsRequest_keys = { "nextToken" = true, "arn" = true, nil }

function M.AssertListRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRunsRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ListRunsRequest_keys[k], "ListRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRunsRequest
-- <p>Represents a request to the list runs operation.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to list runs.</p>
-- Required parameter: arn
function M.ListRunsRequest(nextToken, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRunsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["arn"] = arn,
	}
	M.AssertListRunsRequest(t)
	return t
end

local NotEligibleException_keys = { "message" = true, nil }

function M.AssertNotEligibleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotEligibleException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotEligibleException_keys[k], "NotEligibleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotEligibleException
-- <p>Exception gets thrown when a user is not eligible to perform the specified transaction.</p>
-- @param message [Message] <p>The HTTP response code of a Not Eligible exception.</p>
function M.NotEligibleException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotEligibleException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotEligibleException(t)
	return t
end

local GetSuiteRequest_keys = { "arn" = true, nil }

function M.AssertGetSuiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSuiteRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(GetSuiteRequest_keys[k], "GetSuiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSuiteRequest
-- <p>Represents a request to the get suite operation.</p>
-- @param arn [AmazonResourceName] <p>The suite's ARN.</p>
-- Required parameter: arn
function M.GetSuiteRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSuiteRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertGetSuiteRequest(t)
	return t
end

local Rule_keys = { "operator" = true, "attribute" = true, "value" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["operator"] then M.AssertRuleOperator(struct["operator"]) end
	if struct["attribute"] then M.AssertDeviceAttribute(struct["attribute"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>Represents a condition for a device pool.</p>
-- @param operator [RuleOperator] <p>The rule's operator.</p> <ul> <li> <p>EQUALS: The equals operator.</p> </li> <li> <p>GREATER_THAN: The greater-than operator.</p> </li> <li> <p>IN: The in operator.</p> </li> <li> <p>LESS_THAN: The less-than operator.</p> </li> <li> <p>NOT_IN: The not-in operator.</p> </li> <li> <p>CONTAINS: The contains operator.</p> </li> </ul>
-- @param attribute [DeviceAttribute] <p>The rule's stringified attribute. For example, specify the value as <code>"\"abc\""</code>.</p> <p>Allowed values include:</p> <ul> <li> <p>ARN: The ARN.</p> </li> <li> <p>FORM_FACTOR: The form factor (for example, phone or tablet).</p> </li> <li> <p>MANUFACTURER: The manufacturer.</p> </li> <li> <p>PLATFORM: The platform (for example, Android or iOS).</p> </li> <li> <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.</p> </li> <li> <p>APPIUM_VERSION: The Appium version for the test.</p> </li> </ul>
-- @param value [String] <p>The rule's value.</p>
function M.Rule(operator, attribute, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["operator"] = operator,
		["attribute"] = attribute,
		["value"] = value,
	}
	M.AssertRule(t)
	return t
end

local ListDevicePoolsResult_keys = { "devicePools" = true, "nextToken" = true, nil }

function M.AssertListDevicePoolsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicePoolsResult to be of type 'table'")
	if struct["devicePools"] then M.AssertDevicePools(struct["devicePools"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicePoolsResult_keys[k], "ListDevicePoolsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicePoolsResult
-- <p>Represents the result of a list device pools request.</p>
-- @param devicePools [DevicePools] <p>Information about the device pools.</p>
-- @param nextToken [PaginationToken] <p>If the number of items that are returned is significantly large, this is an identifier that is also returned, which can be used in a subsequent call to this operation to return the next set of items in the list.</p>
function M.ListDevicePoolsResult(devicePools, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicePoolsResult")
	local t = { 
		["devicePools"] = devicePools,
		["nextToken"] = nextToken,
	}
	M.AssertListDevicePoolsResult(t)
	return t
end

local ProblemDetail_keys = { "name" = true, "arn" = true, nil }

function M.AssertProblemDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProblemDetail to be of type 'table'")
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(ProblemDetail_keys[k], "ProblemDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProblemDetail
-- <p>Information about a problem detail.</p>
-- @param name [Name] <p>The problem detail's name.</p>
-- @param arn [AmazonResourceName] <p>The problem detail's ARN.</p>
function M.ProblemDetail(name, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProblemDetail")
	local t = { 
		["name"] = name,
		["arn"] = arn,
	}
	M.AssertProblemDetail(t)
	return t
end

local StopRemoteAccessSessionRequest_keys = { "arn" = true, nil }

function M.AssertStopRemoteAccessSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRemoteAccessSessionRequest to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(StopRemoteAccessSessionRequest_keys[k], "StopRemoteAccessSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRemoteAccessSessionRequest
-- <p>Represents the request to stop the remote access session.</p>
-- @param arn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the remote access session you wish to stop.</p>
-- Required parameter: arn
function M.StopRemoteAccessSessionRequest(arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRemoteAccessSessionRequest")
	local t = { 
		["arn"] = arn,
	}
	M.AssertStopRemoteAccessSessionRequest(t)
	return t
end

local CreateNetworkProfileRequest_keys = { "name" = true, "downlinkLossPercent" = true, "uplinkLossPercent" = true, "uplinkJitterMs" = true, "downlinkJitterMs" = true, "projectArn" = true, "uplinkDelayMs" = true, "uplinkBandwidthBits" = true, "downlinkDelayMs" = true, "type" = true, "downlinkBandwidthBits" = true, "description" = true, nil }

function M.AssertCreateNetworkProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNetworkProfileRequest to be of type 'table'")
	assert(struct["projectArn"], "Expected key projectArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["downlinkLossPercent"] then M.AssertPercentInteger(struct["downlinkLossPercent"]) end
	if struct["uplinkLossPercent"] then M.AssertPercentInteger(struct["uplinkLossPercent"]) end
	if struct["uplinkJitterMs"] then M.AssertLong(struct["uplinkJitterMs"]) end
	if struct["downlinkJitterMs"] then M.AssertLong(struct["downlinkJitterMs"]) end
	if struct["projectArn"] then M.AssertAmazonResourceName(struct["projectArn"]) end
	if struct["uplinkDelayMs"] then M.AssertLong(struct["uplinkDelayMs"]) end
	if struct["uplinkBandwidthBits"] then M.AssertLong(struct["uplinkBandwidthBits"]) end
	if struct["downlinkDelayMs"] then M.AssertLong(struct["downlinkDelayMs"]) end
	if struct["type"] then M.AssertNetworkProfileType(struct["type"]) end
	if struct["downlinkBandwidthBits"] then M.AssertLong(struct["downlinkBandwidthBits"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateNetworkProfileRequest_keys[k], "CreateNetworkProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNetworkProfileRequest
--  
-- @param name [Name] <p>The name you wish to specify for the new network profile.</p>
-- @param downlinkLossPercent [PercentInteger] <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkLossPercent [PercentInteger] <p>Proportion of transmitted packets that fail to arrive from 0 to 100 percent.</p>
-- @param uplinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param downlinkJitterMs [Long] <p>Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.</p>
-- @param projectArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the project for which you want to create a network profile.</p>
-- @param uplinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param uplinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param downlinkDelayMs [Long] <p>Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.</p>
-- @param type [NetworkProfileType] <p>The type of network profile you wish to create. Valid values are listed below.</p>
-- @param downlinkBandwidthBits [Long] <p>The data throughput rate in bits per second, as an integer from 0 to 104857600.</p>
-- @param description [Message] <p>The description of the network profile.</p>
-- Required parameter: projectArn
-- Required parameter: name
function M.CreateNetworkProfileRequest(name, downlinkLossPercent, uplinkLossPercent, uplinkJitterMs, downlinkJitterMs, projectArn, uplinkDelayMs, uplinkBandwidthBits, downlinkDelayMs, type, downlinkBandwidthBits, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNetworkProfileRequest")
	local t = { 
		["name"] = name,
		["downlinkLossPercent"] = downlinkLossPercent,
		["uplinkLossPercent"] = uplinkLossPercent,
		["uplinkJitterMs"] = uplinkJitterMs,
		["downlinkJitterMs"] = downlinkJitterMs,
		["projectArn"] = projectArn,
		["uplinkDelayMs"] = uplinkDelayMs,
		["uplinkBandwidthBits"] = uplinkBandwidthBits,
		["downlinkDelayMs"] = downlinkDelayMs,
		["type"] = type,
		["downlinkBandwidthBits"] = downlinkBandwidthBits,
		["description"] = description,
	}
	M.AssertCreateNetworkProfileRequest(t)
	return t
end

local ListRemoteAccessSessionsResult_keys = { "nextToken" = true, "remoteAccessSessions" = true, nil }

function M.AssertListRemoteAccessSessionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRemoteAccessSessionsResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["remoteAccessSessions"] then M.AssertRemoteAccessSessions(struct["remoteAccessSessions"]) end
	for k,_ in pairs(struct) do
		assert(ListRemoteAccessSessionsResult_keys[k], "ListRemoteAccessSessionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRemoteAccessSessionsResult
-- <p>Represents the response from the server after AWS Device Farm makes a request to return information about the remote access session.</p>
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param remoteAccessSessions [RemoteAccessSessions] <p>A container representing the metadata from the service about each remote access session you are requesting.</p>
function M.ListRemoteAccessSessionsResult(nextToken, remoteAccessSessions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRemoteAccessSessionsResult")
	local t = { 
		["nextToken"] = nextToken,
		["remoteAccessSessions"] = remoteAccessSessions,
	}
	M.AssertListRemoteAccessSessionsResult(t)
	return t
end

local ListNetworkProfilesResult_keys = { "nextToken" = true, "networkProfiles" = true, nil }

function M.AssertListNetworkProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNetworkProfilesResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["networkProfiles"] then M.AssertNetworkProfiles(struct["networkProfiles"]) end
	for k,_ in pairs(struct) do
		assert(ListNetworkProfilesResult_keys[k], "ListNetworkProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNetworkProfilesResult
--  
-- @param nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param networkProfiles [NetworkProfiles] <p>A list of the available network profiles.</p>
function M.ListNetworkProfilesResult(nextToken, networkProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNetworkProfilesResult")
	local t = { 
		["nextToken"] = nextToken,
		["networkProfiles"] = networkProfiles,
	}
	M.AssertListNetworkProfilesResult(t)
	return t
end

local Sample_keys = { "url" = true, "type" = true, "arn" = true, nil }

function M.AssertSample(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Sample to be of type 'table'")
	if struct["url"] then M.AssertURL(struct["url"]) end
	if struct["type"] then M.AssertSampleType(struct["type"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(Sample_keys[k], "Sample contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Sample
-- <p>Represents a sample of performance data.</p>
-- @param url [URL] <p>The pre-signed Amazon S3 URL that can be used with a corresponding GET request to download the sample's file.</p>
-- @param type [SampleType] <p>The sample's type.</p> <p>Must be one of the following values:</p> <ul> <li> <p>CPU: A CPU sample type. This is expressed as the app processing CPU time (including child processes) as reported by process, as a percentage.</p> </li> <li> <p>MEMORY: A memory usage sample type. This is expressed as the total proportional set size of an app process, in kilobytes.</p> </li> <li> <p>NATIVE_AVG_DRAWTIME</p> </li> <li> <p>NATIVE_FPS</p> </li> <li> <p>NATIVE_FRAMES</p> </li> <li> <p>NATIVE_MAX_DRAWTIME</p> </li> <li> <p>NATIVE_MIN_DRAWTIME</p> </li> <li> <p>OPENGL_AVG_DRAWTIME</p> </li> <li> <p>OPENGL_FPS</p> </li> <li> <p>OPENGL_FRAMES</p> </li> <li> <p>OPENGL_MAX_DRAWTIME</p> </li> <li> <p>OPENGL_MIN_DRAWTIME</p> </li> <li> <p>RX</p> </li> <li> <p>RX_RATE: The total number of bytes per second (TCP and UDP) that are sent, by app process.</p> </li> <li> <p>THREADS: A threads sample type. This is expressed as the total number of threads per app process.</p> </li> <li> <p>TX</p> </li> <li> <p>TX_RATE: The total number of bytes per second (TCP and UDP) that are received, by app process.</p> </li> </ul>
-- @param arn [AmazonResourceName] <p>The sample's ARN.</p>
function M.Sample(url, type, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Sample")
	local t = { 
		["url"] = url,
		["type"] = type,
		["arn"] = arn,
	}
	M.AssertSample(t)
	return t
end

local DevicePool_keys = { "rules" = true, "type" = true, "name" = true, "arn" = true, "description" = true, nil }

function M.AssertDevicePool(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevicePool to be of type 'table'")
	if struct["rules"] then M.AssertRules(struct["rules"]) end
	if struct["type"] then M.AssertDevicePoolType(struct["type"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["arn"] then M.AssertAmazonResourceName(struct["arn"]) end
	if struct["description"] then M.AssertMessage(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(DevicePool_keys[k], "DevicePool contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevicePool
-- <p>Represents a collection of device types.</p>
-- @param rules [Rules] <p>Information about the device pool's rules.</p>
-- @param type [DevicePoolType] <p>The device pool's type.</p> <p>Allowed values include:</p> <ul> <li> <p>CURATED: A device pool that is created and managed by AWS Device Farm.</p> </li> <li> <p>PRIVATE: A device pool that is created and managed by the device pool developer.</p> </li> </ul>
-- @param name [Name] <p>The device pool's name.</p>
-- @param arn [AmazonResourceName] <p>The device pool's ARN.</p>
-- @param description [Message] <p>The device pool's description.</p>
function M.DevicePool(rules, type, name, arn, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DevicePool")
	local t = { 
		["rules"] = rules,
		["type"] = type,
		["name"] = name,
		["arn"] = arn,
		["description"] = description,
	}
	M.AssertDevicePool(t)
	return t
end

local GetDevicePoolResult_keys = { "devicePool" = true, nil }

function M.AssertGetDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolResult to be of type 'table'")
	if struct["devicePool"] then M.AssertDevicePool(struct["devicePool"]) end
	for k,_ in pairs(struct) do
		assert(GetDevicePoolResult_keys[k], "GetDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolResult
-- <p>Represents the result of a get device pool request.</p>
-- @param devicePool [DevicePool] <p>An object containing information about the requested device pool.</p>
function M.GetDevicePoolResult(devicePool, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDevicePoolResult")
	local t = { 
		["devicePool"] = devicePool,
	}
	M.AssertGetDevicePoolResult(t)
	return t
end

local GetDevicePoolCompatibilityResult_keys = { "compatibleDevices" = true, "incompatibleDevices" = true, nil }

function M.AssertGetDevicePoolCompatibilityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicePoolCompatibilityResult to be of type 'table'")
	if struct["compatibleDevices"] then M.AssertDevicePoolCompatibilityResults(struct["compatibleDevices"]) end
	if struct["incompatibleDevices"] then M.AssertDevicePoolCompatibilityResults(struct["incompatibleDevices"]) end
	for k,_ in pairs(struct) do
		assert(GetDevicePoolCompatibilityResult_keys[k], "GetDevicePoolCompatibilityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicePoolCompatibilityResult
-- <p>Represents the result of describe device pool compatibility request.</p>
-- @param compatibleDevices [DevicePoolCompatibilityResults] <p>Information about compatible devices.</p>
-- @param incompatibleDevices [DevicePoolCompatibilityResults] <p>Information about incompatible devices.</p>
function M.GetDevicePoolCompatibilityResult(compatibleDevices, incompatibleDevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDevicePoolCompatibilityResult")
	local t = { 
		["compatibleDevices"] = compatibleDevices,
		["incompatibleDevices"] = incompatibleDevices,
	}
	M.AssertGetDevicePoolCompatibilityResult(t)
	return t
end

local DeleteDevicePoolResult_keys = { nil }

function M.AssertDeleteDevicePoolResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevicePoolResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteDevicePoolResult_keys[k], "DeleteDevicePoolResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevicePoolResult
-- <p>Represents the result of a delete device pool request.</p>
function M.DeleteDevicePoolResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDevicePoolResult")
	local t = { 
	}
	M.AssertDeleteDevicePoolResult(t)
	return t
end

function M.AssertDevicePlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected DevicePlatform to be of type 'string'")
end

--  
function M.DevicePlatform(str)
	M.AssertDevicePlatform(str)
	return str
end

function M.AssertTransactionIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected TransactionIdentifier to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.TransactionIdentifier(str)
	M.AssertTransactionIdentifier(str)
	return str
end

function M.AssertAmazonResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceName to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.AmazonResourceName(str)
	M.AssertAmazonResourceName(str)
	return str
end

function M.AssertBillingMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected BillingMethod to be of type 'string'")
end

--  
function M.BillingMethod(str)
	M.AssertBillingMethod(str)
	return str
end

function M.AssertCurrencyCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrencyCode to be of type 'string'")
end

--  
function M.CurrencyCode(str)
	M.AssertCurrencyCode(str)
	return str
end

function M.AssertSampleType(str)
	assert(str)
	assert(type(str) == "string", "Expected SampleType to be of type 'string'")
end

--  
function M.SampleType(str)
	M.AssertSampleType(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertDevicePoolType(str)
	assert(str)
	assert(type(str) == "string", "Expected DevicePoolType to be of type 'string'")
end

--  
function M.DevicePoolType(str)
	M.AssertDevicePoolType(str)
	return str
end

function M.AssertArtifactCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactCategory to be of type 'string'")
end

--  
function M.ArtifactCategory(str)
	M.AssertArtifactCategory(str)
	return str
end

function M.AssertOfferingTransactionType(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingTransactionType to be of type 'string'")
end

--  
function M.OfferingTransactionType(str)
	M.AssertOfferingTransactionType(str)
	return str
end

function M.AssertUploadType(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadType to be of type 'string'")
end

--  
function M.UploadType(str)
	M.AssertUploadType(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertURL(str)
	assert(str)
	assert(type(str) == "string", "Expected URL to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.URL(str)
	M.AssertURL(str)
	return str
end

function M.AssertDeviceFormFactor(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceFormFactor to be of type 'string'")
end

--  
function M.DeviceFormFactor(str)
	M.AssertDeviceFormFactor(str)
	return str
end

function M.AssertArtifactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactType to be of type 'string'")
end

--  
function M.ArtifactType(str)
	M.AssertArtifactType(str)
	return str
end

function M.AssertRecurringChargeFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected RecurringChargeFrequency to be of type 'string'")
end

--  
function M.RecurringChargeFrequency(str)
	M.AssertRecurringChargeFrequency(str)
	return str
end

function M.AssertDeviceAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceAttribute to be of type 'string'")
end

--  
function M.DeviceAttribute(str)
	M.AssertDeviceAttribute(str)
	return str
end

function M.AssertNetworkProfileType(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkProfileType to be of type 'string'")
end

--  
function M.NetworkProfileType(str)
	M.AssertNetworkProfileType(str)
	return str
end

function M.AssertExecutionResult(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionResult to be of type 'string'")
end

--  
function M.ExecutionResult(str)
	M.AssertExecutionResult(str)
	return str
end

function M.AssertFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Filter to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.Filter(str)
	M.AssertFilter(str)
	return str
end

function M.AssertOfferingIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingIdentifier to be of type 'string'")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.OfferingIdentifier(str)
	M.AssertOfferingIdentifier(str)
	return str
end

function M.AssertExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionStatus to be of type 'string'")
end

--  
function M.ExecutionStatus(str)
	M.AssertExecutionStatus(str)
	return str
end

function M.AssertOfferingType(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingType to be of type 'string'")
end

--  
function M.OfferingType(str)
	M.AssertOfferingType(str)
	return str
end

function M.AssertOfferingPromotionIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingPromotionIdentifier to be of type 'string'")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.OfferingPromotionIdentifier(str)
	M.AssertOfferingPromotionIdentifier(str)
	return str
end

function M.AssertTestType(str)
	assert(str)
	assert(type(str) == "string", "Expected TestType to be of type 'string'")
end

--  
function M.TestType(str)
	M.AssertTestType(str)
	return str
end

function M.AssertAWSAccountNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountNumber to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.AWSAccountNumber(str)
	M.AssertAWSAccountNumber(str)
	return str
end

function M.AssertRuleOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleOperator to be of type 'string'")
end

--  
function M.RuleOperator(str)
	M.AssertRuleOperator(str)
	return str
end

function M.AssertMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected Metadata to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.Metadata(str)
	M.AssertMetadata(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ContentType(str)
	M.AssertContentType(str)
	return str
end

function M.AssertUploadStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadStatus to be of type 'string'")
end

--  
function M.UploadStatus(str)
	M.AssertUploadStatus(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertJobTimeoutMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected JobTimeoutMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.JobTimeoutMinutes(integer)
	M.AssertJobTimeoutMinutes(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertPercentInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PercentInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PercentInteger(integer)
	M.AssertPercentInteger(integer)
	return integer
end

function M.AssertAppPackagesCleanup(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AppPackagesCleanup to be of type 'boolean'")
end

function M.AppPackagesCleanup(boolean)
	M.AssertAppPackagesCleanup(boolean)
	return boolean
end

function M.AssertAccountsCleanup(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AccountsCleanup to be of type 'boolean'")
end

function M.AccountsCleanup(boolean)
	M.AssertAccountsCleanup(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertOfferingStatusMap(map)
	assert(map)
	assert(type(map) == "table", "Expected OfferingStatusMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertOfferingIdentifier(k)
		M.AssertOfferingStatus(v)
	end
end

function M.OfferingStatusMap(map)
	M.AssertOfferingStatusMap(map)
	return map
end

function M.AssertMaxSlotMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MaxSlotMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertInteger(v)
	end
end

function M.MaxSlotMap(map)
	M.AssertMaxSlotMap(map)
	return map
end

function M.AssertTestParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected TestParameters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.TestParameters(map)
	M.AssertTestParameters(map)
	return map
end

function M.AssertPurchasedDevicesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PurchasedDevicesMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDevicePlatform(k)
		M.AssertInteger(v)
	end
end

function M.PurchasedDevicesMap(map)
	M.AssertPurchasedDevicesMap(map)
	return map
end

function M.AssertUniqueProblemsByExecutionResultMap(map)
	assert(map)
	assert(type(map) == "table", "Expected UniqueProblemsByExecutionResultMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertExecutionResult(k)
		M.AssertUniqueProblems(v)
	end
end

function M.UniqueProblemsByExecutionResultMap(map)
	M.AssertUniqueProblemsByExecutionResultMap(map)
	return map
end

function M.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	M.AssertDateTime(timestamp)
	return timestamp
end

function M.AssertArtifacts(list)
	assert(list)
	assert(type(list) == "table", "Expected Artifacts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArtifact(v)
	end
end

--  
-- List of Artifact objects
function M.Artifacts(list)
	M.AssertArtifacts(list)
	return list
end

function M.AssertRemoteAccessSessions(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoteAccessSessions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRemoteAccessSession(v)
	end
end

--  
-- List of RemoteAccessSession objects
function M.RemoteAccessSessions(list)
	M.AssertRemoteAccessSessions(list)
	return list
end

function M.AssertJobs(list)
	assert(list)
	assert(type(list) == "table", "Expected Jobs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.Jobs(list)
	M.AssertJobs(list)
	return list
end

function M.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	M.AssertRules(list)
	return list
end

function M.AssertSamples(list)
	assert(list)
	assert(type(list) == "table", "Expected Samples to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSample(v)
	end
end

--  
-- List of Sample objects
function M.Samples(list)
	M.AssertSamples(list)
	return list
end

function M.AssertAmazonResourceNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AmazonResourceNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAmazonResourceName(v)
	end
end

--  
-- List of AmazonResourceName objects
function M.AmazonResourceNames(list)
	M.AssertAmazonResourceNames(list)
	return list
end

function M.AssertProjects(list)
	assert(list)
	assert(type(list) == "table", "Expected Projects to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProject(v)
	end
end

--  
-- List of Project objects
function M.Projects(list)
	M.AssertProjects(list)
	return list
end

function M.AssertOfferings(list)
	assert(list)
	assert(type(list) == "table", "Expected Offerings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOffering(v)
	end
end

--  
-- List of Offering objects
function M.Offerings(list)
	M.AssertOfferings(list)
	return list
end

function M.AssertDevicePools(list)
	assert(list)
	assert(type(list) == "table", "Expected DevicePools to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDevicePool(v)
	end
end

--  
-- List of DevicePool objects
function M.DevicePools(list)
	M.AssertDevicePools(list)
	return list
end

function M.AssertProblems(list)
	assert(list)
	assert(type(list) == "table", "Expected Problems to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProblem(v)
	end
end

--  
-- List of Problem objects
function M.Problems(list)
	M.AssertProblems(list)
	return list
end

function M.AssertSuites(list)
	assert(list)
	assert(type(list) == "table", "Expected Suites to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSuite(v)
	end
end

--  
-- List of Suite objects
function M.Suites(list)
	M.AssertSuites(list)
	return list
end

function M.AssertTests(list)
	assert(list)
	assert(type(list) == "table", "Expected Tests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTest(v)
	end
end

--  
-- List of Test objects
function M.Tests(list)
	M.AssertTests(list)
	return list
end

function M.AssertOfferingPromotions(list)
	assert(list)
	assert(type(list) == "table", "Expected OfferingPromotions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOfferingPromotion(v)
	end
end

--  
-- List of OfferingPromotion objects
function M.OfferingPromotions(list)
	M.AssertOfferingPromotions(list)
	return list
end

function M.AssertNetworkProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkProfiles to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNetworkProfile(v)
	end
end

--  
-- List of NetworkProfile objects
function M.NetworkProfiles(list)
	M.AssertNetworkProfiles(list)
	return list
end

function M.AssertDevices(list)
	assert(list)
	assert(type(list) == "table", "Expected Devices to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDevice(v)
	end
end

--  
-- List of Device objects
function M.Devices(list)
	M.AssertDevices(list)
	return list
end

function M.AssertUploads(list)
	assert(list)
	assert(type(list) == "table", "Expected Uploads to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUpload(v)
	end
end

--  
-- List of Upload objects
function M.Uploads(list)
	M.AssertUploads(list)
	return list
end

function M.AssertIncompatibilityMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected IncompatibilityMessages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIncompatibilityMessage(v)
	end
end

--  
-- List of IncompatibilityMessage objects
function M.IncompatibilityMessages(list)
	M.AssertIncompatibilityMessages(list)
	return list
end

function M.AssertDevicePoolCompatibilityResults(list)
	assert(list)
	assert(type(list) == "table", "Expected DevicePoolCompatibilityResults to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDevicePoolCompatibilityResult(v)
	end
end

--  
-- List of DevicePoolCompatibilityResult objects
function M.DevicePoolCompatibilityResults(list)
	M.AssertDevicePoolCompatibilityResults(list)
	return list
end

function M.AssertOfferingTransactions(list)
	assert(list)
	assert(type(list) == "table", "Expected OfferingTransactions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOfferingTransaction(v)
	end
end

--  
-- List of OfferingTransaction objects
function M.OfferingTransactions(list)
	M.AssertOfferingTransactions(list)
	return list
end

function M.AssertUniqueProblems(list)
	assert(list)
	assert(type(list) == "table", "Expected UniqueProblems to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUniqueProblem(v)
	end
end

--  
-- List of UniqueProblem objects
function M.UniqueProblems(list)
	M.AssertUniqueProblems(list)
	return list
end

function M.AssertRuns(list)
	assert(list)
	assert(type(list) == "table", "Expected Runs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRun(v)
	end
end

--  
-- List of Run objects
function M.Runs(list)
	M.AssertRuns(list)
	return list
end

function M.AssertRecurringCharges(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringCharges to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringCharges(list)
	M.AssertRecurringCharges(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListSamples
-- @param ListSamplesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSamplesAsync(ListSamplesRequest, cb)
	assert(ListSamplesRequest, "You must provide a ListSamplesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListSamples",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSamplesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurchaseOffering
-- @param PurchaseOfferingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseOfferingAsync(PurchaseOfferingRequest, cb)
	assert(PurchaseOfferingRequest, "You must provide a PurchaseOfferingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.PurchaseOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurchaseOfferingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUpload
-- @param GetUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUploadAsync(GetUploadRequest, cb)
	assert(GetUploadRequest, "You must provide a GetUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOfferingPromotions
-- @param ListOfferingPromotionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOfferingPromotionsAsync(ListOfferingPromotionsRequest, cb)
	assert(ListOfferingPromotionsRequest, "You must provide a ListOfferingPromotionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferingPromotions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOfferingPromotionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDevicePool
-- @param UpdateDevicePoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDevicePoolAsync(UpdateDevicePoolRequest, cb)
	assert(UpdateDevicePoolRequest, "You must provide a UpdateDevicePoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateDevicePool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDevicePoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopRun
-- @param StopRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopRunAsync(StopRunRequest, cb)
	assert(StopRunRequest, "You must provide a StopRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.StopRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRemoteAccessSession
-- @param CreateRemoteAccessSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRemoteAccessSessionAsync(CreateRemoteAccessSessionRequest, cb)
	assert(CreateRemoteAccessSessionRequest, "You must provide a CreateRemoteAccessSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateRemoteAccessSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRemoteAccessSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOfferings
-- @param ListOfferingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOfferingsAsync(ListOfferingsRequest, cb)
	assert(ListOfferingsRequest, "You must provide a ListOfferingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOfferingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTest
-- @param GetTestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTestAsync(GetTestRequest, cb)
	assert(GetTestRequest, "You must provide a GetTestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetTest",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteNetworkProfile
-- @param DeleteNetworkProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteNetworkProfileAsync(DeleteNetworkProfileRequest, cb)
	assert(DeleteNetworkProfileRequest, "You must provide a DeleteNetworkProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteNetworkProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteNetworkProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProjects
-- @param ListProjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProjectsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListNetworkProfiles
-- @param ListNetworkProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListNetworkProfilesAsync(ListNetworkProfilesRequest, cb)
	assert(ListNetworkProfilesRequest, "You must provide a ListNetworkProfilesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListNetworkProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListNetworkProfilesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUpload
-- @param DeleteUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUploadAsync(DeleteUploadRequest, cb)
	assert(DeleteUploadRequest, "You must provide a DeleteUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSuite
-- @param GetSuiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSuiteAsync(GetSuiteRequest, cb)
	assert(GetSuiteRequest, "You must provide a GetSuiteRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetSuite",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSuiteRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRemoteAccessSession
-- @param DeleteRemoteAccessSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRemoteAccessSessionAsync(DeleteRemoteAccessSessionRequest, cb)
	assert(DeleteRemoteAccessSessionRequest, "You must provide a DeleteRemoteAccessSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteRemoteAccessSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRemoteAccessSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRun
-- @param DeleteRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRunAsync(DeleteRunRequest, cb)
	assert(DeleteRunRequest, "You must provide a DeleteRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOfferingTransactions
-- @param ListOfferingTransactionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOfferingTransactionsAsync(ListOfferingTransactionsRequest, cb)
	assert(ListOfferingTransactionsRequest, "You must provide a ListOfferingTransactionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListOfferingTransactions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOfferingTransactionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetProject
-- @param GetProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetProjectAsync(GetProjectRequest, cb)
	assert(GetProjectRequest, "You must provide a GetProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InstallToRemoteAccessSession
-- @param InstallToRemoteAccessSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InstallToRemoteAccessSessionAsync(InstallToRemoteAccessSessionRequest, cb)
	assert(InstallToRemoteAccessSessionRequest, "You must provide a InstallToRemoteAccessSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.InstallToRemoteAccessSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", InstallToRemoteAccessSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUniqueProblems
-- @param ListUniqueProblemsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUniqueProblemsAsync(ListUniqueProblemsRequest, cb)
	assert(ListUniqueProblemsRequest, "You must provide a ListUniqueProblemsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListUniqueProblems",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUniqueProblemsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDevicePools
-- @param ListDevicePoolsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDevicePoolsAsync(ListDevicePoolsRequest, cb)
	assert(ListDevicePoolsRequest, "You must provide a ListDevicePoolsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListDevicePools",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDevicePoolsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUpload
-- @param CreateUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUploadAsync(CreateUploadRequest, cb)
	assert(CreateUploadRequest, "You must provide a CreateUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDevicePoolCompatibility
-- @param GetDevicePoolCompatibilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDevicePoolCompatibilityAsync(GetDevicePoolCompatibilityRequest, cb)
	assert(GetDevicePoolCompatibilityRequest, "You must provide a GetDevicePoolCompatibilityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevicePoolCompatibility",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDevicePoolCompatibilityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDevicePool
-- @param DeleteDevicePoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDevicePoolAsync(DeleteDevicePoolRequest, cb)
	assert(DeleteDevicePoolRequest, "You must provide a DeleteDevicePoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteDevicePool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDevicePoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTests
-- @param ListTestsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTestsAsync(ListTestsRequest, cb)
	assert(ListTestsRequest, "You must provide a ListTestsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListTests",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTestsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProject
-- @param UpdateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSuites
-- @param ListSuitesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSuitesAsync(ListSuitesRequest, cb)
	assert(ListSuitesRequest, "You must provide a ListSuitesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListSuites",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSuitesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDevicePool
-- @param GetDevicePoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDevicePoolAsync(GetDevicePoolRequest, cb)
	assert(GetDevicePoolRequest, "You must provide a GetDevicePoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevicePool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDevicePoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopRemoteAccessSession
-- @param StopRemoteAccessSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopRemoteAccessSessionAsync(StopRemoteAccessSessionRequest, cb)
	assert(StopRemoteAccessSessionRequest, "You must provide a StopRemoteAccessSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.StopRemoteAccessSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopRemoteAccessSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RenewOffering
-- @param RenewOfferingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RenewOfferingAsync(RenewOfferingRequest, cb)
	assert(RenewOfferingRequest, "You must provide a RenewOfferingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.RenewOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RenewOfferingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRemoteAccessSession
-- @param GetRemoteAccessSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRemoteAccessSessionAsync(GetRemoteAccessSessionRequest, cb)
	assert(GetRemoteAccessSessionRequest, "You must provide a GetRemoteAccessSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetRemoteAccessSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRemoteAccessSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListJobs
-- @param ListJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRun
-- @param GetRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRunAsync(GetRunRequest, cb)
	assert(GetRunRequest, "You must provide a GetRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUploads
-- @param ListUploadsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUploadsAsync(ListUploadsRequest, cb)
	assert(ListUploadsRequest, "You must provide a ListUploadsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListUploads",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUploadsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateNetworkProfile
-- @param UpdateNetworkProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateNetworkProfileAsync(UpdateNetworkProfileRequest, cb)
	assert(UpdateNetworkProfileRequest, "You must provide a UpdateNetworkProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.UpdateNetworkProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateNetworkProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRemoteAccessSessions
-- @param ListRemoteAccessSessionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRemoteAccessSessionsAsync(ListRemoteAccessSessionsRequest, cb)
	assert(ListRemoteAccessSessionsRequest, "You must provide a ListRemoteAccessSessionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListRemoteAccessSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRemoteAccessSessionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetNetworkProfile
-- @param GetNetworkProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetNetworkProfileAsync(GetNetworkProfileRequest, cb)
	assert(GetNetworkProfileRequest, "You must provide a GetNetworkProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetNetworkProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetNetworkProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateNetworkProfile
-- @param CreateNetworkProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateNetworkProfileAsync(CreateNetworkProfileRequest, cb)
	assert(CreateNetworkProfileRequest, "You must provide a CreateNetworkProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateNetworkProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateNetworkProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDevices
-- @param ListDevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDevicesAsync(ListDevicesRequest, cb)
	assert(ListDevicesRequest, "You must provide a ListDevicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDevicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDevice
-- @param GetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDevicePool
-- @param CreateDevicePoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDevicePoolAsync(CreateDevicePoolRequest, cb)
	assert(CreateDevicePoolRequest, "You must provide a CreateDevicePoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateDevicePool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDevicePoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ScheduleRun
-- @param ScheduleRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ScheduleRunAsync(ScheduleRunRequest, cb)
	assert(ScheduleRunRequest, "You must provide a ScheduleRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ScheduleRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScheduleRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListArtifacts
-- @param ListArtifactsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListArtifactsAsync(ListArtifactsRequest, cb)
	assert(ListArtifactsRequest, "You must provide a ListArtifactsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListArtifacts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListArtifactsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProject
-- @param CreateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.CreateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetJob
-- @param GetJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetJobAsync(GetJobRequest, cb)
	assert(GetJobRequest, "You must provide a GetJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteProject
-- @param DeleteProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.DeleteProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRuns
-- @param ListRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRunsAsync(ListRunsRequest, cb)
	assert(ListRunsRequest, "You must provide a ListRunsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.ListRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRunsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountSettings
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetAccountSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAccountSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOfferingStatus
-- @param GetOfferingStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOfferingStatusAsync(GetOfferingStatusRequest, cb)
	assert(GetOfferingStatusRequest, "You must provide a GetOfferingStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DeviceFarm_20150623.GetOfferingStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOfferingStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
