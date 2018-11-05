--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT 1-Click Devices Service (devices-2018-05-14)

local M = {}

M.metadata = {
	api_version = "2018-05-14",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "devices.iot1click",
	service_abbreviation = "",
	service_full_name = "AWS IoT 1-Click Devices Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "devices-2018-05-14",
}

local keys = {}
local asserts = {}

keys.InvalidRequestException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>The 400 error message returned by the web server.</p>
-- * Code [__string] <p>400</p>
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesRequest = { ["NextToken"] = true, ["DeviceType"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["DeviceType"] then asserts.Assert__string(struct["DeviceType"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesRequest[k], "ListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to retrieve the next set of results.</p>
-- * DeviceType [__string] <p>The type of the device, such as "button".</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return per request. If not set, a default value
-- of 100 is used.</p>
-- @return ListDevicesRequest structure as a key-value pair table
function M.ListDevicesRequest(args)
	assert(args, "You must provide an argument table when creating ListDevicesRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["deviceType"] = args["DeviceType"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DeviceType"] = args["DeviceType"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PreconditionFailedException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertPreconditionFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionFailedException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreconditionFailedException[k], "PreconditionFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionFailedException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>An error message explaining the error or its remedy.</p>
-- * Code [__string] <p>412</p>
-- @return PreconditionFailedException structure as a key-value pair table
function M.PreconditionFailedException(args)
	assert(args, "You must provide an argument table when creating PreconditionFailedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertPreconditionFailedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateDeviceClaimResponse = { ["State"] = true, nil }

function asserts.AssertInitiateDeviceClaimResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDeviceClaimResponse to be of type 'table'")
	if struct["State"] then asserts.Assert__string(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateDeviceClaimResponse[k], "InitiateDeviceClaimResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDeviceClaimResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [__string] <p>The device's final claim state.</p>
-- @return InitiateDeviceClaimResponse structure as a key-value pair table
function M.InitiateDeviceClaimResponse(args)
	assert(args, "You must provide an argument table when creating InitiateDeviceClaimResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
	}
	asserts.AssertInitiateDeviceClaimResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RangeNotSatisfiableException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertRangeNotSatisfiableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RangeNotSatisfiableException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.RangeNotSatisfiableException[k], "RangeNotSatisfiableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RangeNotSatisfiableException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>The requested number of results specified by nextToken cannot be
-- satisfied.</p>
-- * Code [__string] <p>416</p>
-- @return RangeNotSatisfiableException structure as a key-value pair table
function M.RangeNotSatisfiableException(args)
	assert(args, "You must provide an argument table when creating RangeNotSatisfiableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertRangeNotSatisfiableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FinalizeDeviceClaimRequest = { ["DeviceId"] = true, nil }

function asserts.AssertFinalizeDeviceClaimRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FinalizeDeviceClaimRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FinalizeDeviceClaimRequest[k], "FinalizeDeviceClaimRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FinalizeDeviceClaimRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return FinalizeDeviceClaimRequest structure as a key-value pair table
function M.FinalizeDeviceClaimRequest(args)
	assert(args, "You must provide an argument table when creating FinalizeDeviceClaimRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertFinalizeDeviceClaimRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceMethodsResponse = { ["DeviceMethods"] = true, nil }

function asserts.AssertGetDeviceMethodsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceMethodsResponse to be of type 'table'")
	if struct["DeviceMethods"] then asserts.Assert__listOfDeviceMethod(struct["DeviceMethods"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceMethodsResponse[k], "GetDeviceMethodsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceMethodsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceMethods [__listOfDeviceMethod] <p>List of available device APIs.</p>
-- @return GetDeviceMethodsResponse structure as a key-value pair table
function M.GetDeviceMethodsResponse(args)
	assert(args, "You must provide an argument table when creating GetDeviceMethodsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceMethods"] = args["DeviceMethods"],
	}
	asserts.AssertGetDeviceMethodsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceEvent = { ["Device"] = true, ["StdEvent"] = true, nil }

function asserts.AssertDeviceEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceEvent to be of type 'table'")
	if struct["Device"] then asserts.AssertDevice(struct["Device"]) end
	if struct["StdEvent"] then asserts.Assert__string(struct["StdEvent"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceEvent[k], "DeviceEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [Device] <p>An object representing the device associated with the event.</p>
-- * StdEvent [__string] <p>A serialized JSON object representing the device-type specific event.</p>
-- @return DeviceEvent structure as a key-value pair table
function M.DeviceEvent(args)
	assert(args, "You must provide an argument table when creating DeviceEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
		["StdEvent"] = args["StdEvent"],
	}
	asserts.AssertDeviceEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Empty = { nil }

function asserts.AssertEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Empty to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Empty[k], "Empty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Empty
-- <p>On success, an empty object is returned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Empty structure as a key-value pair table
function M.Empty(args)
	assert(args, "You must provide an argument table when creating Empty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEmpty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceClaimResponse = { ["State"] = true, nil }

function asserts.AssertDeviceClaimResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceClaimResponse to be of type 'table'")
	if struct["State"] then asserts.Assert__string(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceClaimResponse[k], "DeviceClaimResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceClaimResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [__string] <p>The device's final claim state.</p>
-- @return DeviceClaimResponse structure as a key-value pair table
function M.DeviceClaimResponse(args)
	assert(args, "You must provide an argument table when creating DeviceClaimResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
	}
	asserts.AssertDeviceClaimResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceStateRequest = { ["Enabled"] = true, ["DeviceId"] = true, nil }

function asserts.AssertUpdateDeviceStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStateRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceStateRequest[k], "UpdateDeviceStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [__boolean] <p>If true, the device is enabled. If false, the device is
-- disabled.</p>
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return UpdateDeviceStateRequest structure as a key-value pair table
function M.UpdateDeviceStateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceStateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertUpdateDeviceStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceEventsResponse = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertListDeviceEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceEventsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Events"] then asserts.Assert__listOfDeviceEvent(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceEventsResponse[k], "ListDeviceEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to retrieve the next set of results.</p>
-- * Events [__listOfDeviceEvent] <p>An array of zero or more elements describing the event(s) associated with the
-- device.</p>
-- @return ListDeviceEventsResponse structure as a key-value pair table
function M.ListDeviceEventsResponse(args)
	assert(args, "You must provide an argument table when creating ListDeviceEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Events"] = args["Events"],
	}
	asserts.AssertListDeviceEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>The requested device could not be found.</p>
-- * Code [__string] <p>404</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnclaimDeviceResponse = { ["State"] = true, nil }

function asserts.AssertUnclaimDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnclaimDeviceResponse to be of type 'table'")
	if struct["State"] then asserts.Assert__string(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnclaimDeviceResponse[k], "UnclaimDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnclaimDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [__string] <p>The device's final claim state.</p>
-- @return UnclaimDeviceResponse structure as a key-value pair table
function M.UnclaimDeviceResponse(args)
	assert(args, "You must provide an argument table when creating UnclaimDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
	}
	asserts.AssertUnclaimDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceEventsRequest = { ["ToTimeStamp"] = true, ["NextToken"] = true, ["DeviceId"] = true, ["MaxResults"] = true, ["FromTimeStamp"] = true, nil }

function asserts.AssertListDeviceEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceEventsRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	assert(struct["FromTimeStamp"], "Expected key FromTimeStamp to exist in table")
	assert(struct["ToTimeStamp"], "Expected key ToTimeStamp to exist in table")
	if struct["ToTimeStamp"] then asserts.Assert__timestampIso8601(struct["ToTimeStamp"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["FromTimeStamp"] then asserts.Assert__timestampIso8601(struct["FromTimeStamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceEventsRequest[k], "ListDeviceEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ToTimeStamp [__timestampIso8601] <p>The end date for the device event query, in ISO8061 format. For example,
-- 2018-03-28T15:45:12.880Z
-- </p>
-- * NextToken [__string] <p>The token to retrieve the next set of results.</p>
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return per request. If not set, a default value
-- of 100 is used.</p>
-- * FromTimeStamp [__timestampIso8601] <p>The start date for the device event query, in ISO8061 format. For example,
-- 2018-03-28T15:45:12.880Z
-- </p>
-- Required key: DeviceId
-- Required key: FromTimeStamp
-- Required key: ToTimeStamp
-- @return ListDeviceEventsRequest structure as a key-value pair table
function M.ListDeviceEventsRequest(args)
	assert(args, "You must provide an argument table when creating ListDeviceEventsRequest")
    local query_args = { 
        ["toTimeStamp"] = args["ToTimeStamp"],
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
        ["fromTimeStamp"] = args["FromTimeStamp"],
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ToTimeStamp"] = args["ToTimeStamp"],
		["NextToken"] = args["NextToken"],
		["DeviceId"] = args["DeviceId"],
		["MaxResults"] = args["MaxResults"],
		["FromTimeStamp"] = args["FromTimeStamp"],
	}
	asserts.AssertListDeviceEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceMethod = { ["MethodName"] = true, ["DeviceType"] = true, nil }

function asserts.AssertDeviceMethod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceMethod to be of type 'table'")
	if struct["MethodName"] then asserts.Assert__string(struct["MethodName"]) end
	if struct["DeviceType"] then asserts.Assert__string(struct["DeviceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceMethod[k], "DeviceMethod contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceMethod
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MethodName [__string] <p>The name of the method applicable to the deviceType.</p>
-- * DeviceType [__string] <p>The type of the device, such as "button".</p>
-- @return DeviceMethod structure as a key-value pair table
function M.DeviceMethod(args)
	assert(args, "You must provide an argument table when creating DeviceMethod")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MethodName"] = args["MethodName"],
		["DeviceType"] = args["DeviceType"],
	}
	asserts.AssertDeviceMethod(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeDeviceMethodResponse = { ["DeviceMethodResponse"] = true, nil }

function asserts.AssertInvokeDeviceMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeDeviceMethodResponse to be of type 'table'")
	if struct["DeviceMethodResponse"] then asserts.Assert__string(struct["DeviceMethodResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeDeviceMethodResponse[k], "InvokeDeviceMethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeDeviceMethodResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceMethodResponse [__string] <p>A JSON encoded string containing the device method response.</p>
-- @return InvokeDeviceMethodResponse structure as a key-value pair table
function M.InvokeDeviceMethodResponse(args)
	assert(args, "You must provide an argument table when creating InvokeDeviceMethodResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceMethodResponse"] = args["DeviceMethodResponse"],
	}
	asserts.AssertInvokeDeviceMethodResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClaimDevicesByClaimCodeResponse = { ["ClaimCode"] = true, ["Total"] = true, nil }

function asserts.AssertClaimDevicesByClaimCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClaimDevicesByClaimCodeResponse to be of type 'table'")
	if struct["ClaimCode"] then asserts.Assert__stringMin12Max40(struct["ClaimCode"]) end
	if struct["Total"] then asserts.Assert__integer(struct["Total"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClaimDevicesByClaimCodeResponse[k], "ClaimDevicesByClaimCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClaimDevicesByClaimCodeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClaimCode [__stringMin12Max40] <p>The claim code provided by the device manufacturer.</p>
-- * Total [__integer] <p>The total number of devices associated with the claim code that has been processed
-- in the claim request.</p>
-- @return ClaimDevicesByClaimCodeResponse structure as a key-value pair table
function M.ClaimDevicesByClaimCodeResponse(args)
	assert(args, "You must provide an argument table when creating ClaimDevicesByClaimCodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClaimCode"] = args["ClaimCode"],
		["Total"] = args["Total"],
	}
	asserts.AssertClaimDevicesByClaimCodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Device = { ["Attributes"] = true, ["Type"] = true, ["DeviceId"] = true, nil }

function asserts.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Device[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>The user specified attributes associated with the device for an event.</p>
-- * Type [__string] <p>The device type, such as "button".</p>
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
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
		["Attributes"] = args["Attributes"],
		["Type"] = args["Type"],
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeviceRequest = { ["DeviceId"] = true, nil }

function asserts.AssertDescribeDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeviceRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeviceRequest[k], "DescribeDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return DescribeDeviceRequest structure as a key-value pair table
function M.DescribeDeviceRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertDescribeDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceEventsResponse = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertDeviceEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceEventsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Events"] then asserts.Assert__listOfDeviceEvent(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceEventsResponse[k], "DeviceEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to retrieve the next set of results.</p>
-- * Events [__listOfDeviceEvent] <p>An array of zero or more elements describing the event(s) associated with the
-- device.</p>
-- @return DeviceEventsResponse structure as a key-value pair table
function M.DeviceEventsResponse(args)
	assert(args, "You must provide an argument table when creating DeviceEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Events"] = args["Events"],
	}
	asserts.AssertDeviceEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceMethodsRequest = { ["DeviceId"] = true, nil }

function asserts.AssertGetDeviceMethodsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceMethodsRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceMethodsRequest[k], "GetDeviceMethodsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceMethodsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return GetDeviceMethodsRequest structure as a key-value pair table
function M.GetDeviceMethodsRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceMethodsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertGetDeviceMethodsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnclaimDeviceRequest = { ["DeviceId"] = true, nil }

function asserts.AssertUnclaimDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnclaimDeviceRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnclaimDeviceRequest[k], "UnclaimDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnclaimDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return UnclaimDeviceRequest structure as a key-value pair table
function M.UnclaimDeviceRequest(args)
	assert(args, "You must provide an argument table when creating UnclaimDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertUnclaimDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalFailureException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>The 500 error message returned by the web server.</p>
-- * Code [__string] <p>500</p>
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provide an argument table when creating InternalFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertInternalFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClaimDevicesByClaimCodeRequest = { ["ClaimCode"] = true, nil }

function asserts.AssertClaimDevicesByClaimCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClaimDevicesByClaimCodeRequest to be of type 'table'")
	assert(struct["ClaimCode"], "Expected key ClaimCode to exist in table")
	if struct["ClaimCode"] then asserts.Assert__string(struct["ClaimCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClaimDevicesByClaimCodeRequest[k], "ClaimDevicesByClaimCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClaimDevicesByClaimCodeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClaimCode [__string] <p>The claim code, starting with "C-", as provided by the device manufacturer.</p>
-- Required key: ClaimCode
-- @return ClaimDevicesByClaimCodeRequest structure as a key-value pair table
function M.ClaimDevicesByClaimCodeRequest(args)
	assert(args, "You must provide an argument table when creating ClaimDevicesByClaimCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{claimCode}"] = args["ClaimCode"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ClaimCode"] = args["ClaimCode"],
	}
	asserts.AssertClaimDevicesByClaimCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesResponse = { ["NextToken"] = true, ["Devices"] = true, nil }

function asserts.AssertListDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Devices"] then asserts.Assert__listOfDeviceDescription(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesResponse[k], "ListDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to retrieve the next set of results.</p>
-- * Devices [__listOfDeviceDescription] <p>A list of devices.</p>
-- @return ListDevicesResponse structure as a key-value pair table
function M.ListDevicesResponse(args)
	assert(args, "You must provide an argument table when creating ListDevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertListDevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Attributes = { nil }

function asserts.AssertAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attributes to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Attributes[k], "Attributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attributes
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Attributes structure as a key-value pair table
function M.Attributes(args)
	assert(args, "You must provide an argument table when creating Attributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceConflictException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConflictException[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>An error message explaining the error or its remedy.</p>
-- * Code [__string] <p>409</p>
-- @return ResourceConflictException structure as a key-value pair table
function M.ResourceConflictException(args)
	assert(args, "You must provide an argument table when creating ResourceConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertResourceConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceDescription = { ["Attributes"] = true, ["Type"] = true, ["Enabled"] = true, ["DeviceId"] = true, ["RemainingLife"] = true, nil }

function asserts.AssertDeviceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceDescription to be of type 'table'")
	if struct["Attributes"] then asserts.AssertDeviceAttributes(struct["Attributes"]) end
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	if struct["RemainingLife"] then asserts.Assert__doubleMin0Max100(struct["RemainingLife"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceDescription[k], "DeviceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceDescription
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [DeviceAttributes] <p>An array of zero or more elements of DeviceAttribute objects
-- providing user specified device attributes.</p>
-- * Type [__string] <p>The type of the device, such as "button".</p>
-- * Enabled [__boolean] <p>A Boolean value indicating whether or not the device is enabled.</p>
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- * RemainingLife [__doubleMin0Max100] <p>A value between 0 and 1 inclusive, representing the fraction of life remaining for
-- the device.</p>
-- @return DeviceDescription structure as a key-value pair table
function M.DeviceDescription(args)
	assert(args, "You must provide an argument table when creating DeviceDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Type"] = args["Type"],
		["Enabled"] = args["Enabled"],
		["DeviceId"] = args["DeviceId"],
		["RemainingLife"] = args["RemainingLife"],
	}
	asserts.AssertDeviceDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceStateResponse = { nil }

function asserts.AssertUpdateDeviceStateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceStateResponse[k], "UpdateDeviceStateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDeviceStateResponse structure as a key-value pair table
function M.UpdateDeviceStateResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceStateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDeviceStateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FinalizeDeviceClaimResponse = { ["State"] = true, nil }

function asserts.AssertFinalizeDeviceClaimResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FinalizeDeviceClaimResponse to be of type 'table'")
	if struct["State"] then asserts.Assert__string(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.FinalizeDeviceClaimResponse[k], "FinalizeDeviceClaimResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FinalizeDeviceClaimResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [__string] <p>The device's final claim state.</p>
-- @return FinalizeDeviceClaimResponse structure as a key-value pair table
function M.FinalizeDeviceClaimResponse(args)
	assert(args, "You must provide an argument table when creating FinalizeDeviceClaimResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
	}
	asserts.AssertFinalizeDeviceClaimResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeDeviceMethodRequest = { ["DeviceMethod"] = true, ["DeviceMethodParameters"] = true, ["DeviceId"] = true, nil }

function asserts.AssertInvokeDeviceMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeDeviceMethodRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceMethod"] then asserts.AssertDeviceMethod(struct["DeviceMethod"]) end
	if struct["DeviceMethodParameters"] then asserts.Assert__string(struct["DeviceMethodParameters"]) end
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeDeviceMethodRequest[k], "InvokeDeviceMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeDeviceMethodRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceMethod [DeviceMethod] <p>The device method to invoke.</p>
-- * DeviceMethodParameters [__string] <p>A JSON encoded string containing the device method request parameters.</p>
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return InvokeDeviceMethodRequest structure as a key-value pair table
function M.InvokeDeviceMethodRequest(args)
	assert(args, "You must provide an argument table when creating InvokeDeviceMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceMethod"] = args["DeviceMethod"],
		["DeviceMethodParameters"] = args["DeviceMethodParameters"],
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertInvokeDeviceMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeviceResponse = { ["DeviceDescription"] = true, nil }

function asserts.AssertDescribeDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeviceResponse to be of type 'table'")
	if struct["DeviceDescription"] then asserts.AssertDeviceDescription(struct["DeviceDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeviceResponse[k], "DescribeDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDescription [DeviceDescription] <p>Device details.</p>
-- @return DescribeDeviceResponse structure as a key-value pair table
function M.DescribeDeviceResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDescription"] = args["DeviceDescription"],
	}
	asserts.AssertDescribeDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForbiddenException = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertForbiddenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForbiddenException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForbiddenException[k], "ForbiddenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForbiddenException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] <p>The 403 error message returned by the web server.</p>
-- * Code [__string] <p>403</p>
-- @return ForbiddenException structure as a key-value pair table
function M.ForbiddenException(args)
	assert(args, "You must provide an argument table when creating ForbiddenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertForbiddenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateDeviceClaimRequest = { ["DeviceId"] = true, nil }

function asserts.AssertInitiateDeviceClaimRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDeviceClaimRequest to be of type 'table'")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["DeviceId"] then asserts.Assert__string(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateDeviceClaimRequest[k], "InitiateDeviceClaimRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDeviceClaimRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [__string] <p>The unique identifier of the device.</p>
-- Required key: DeviceId
-- @return InitiateDeviceClaimRequest structure as a key-value pair table
function M.InitiateDeviceClaimRequest(args)
	assert(args, "You must provide an argument table when creating InitiateDeviceClaimRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deviceId}"] = args["DeviceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertInitiateDeviceClaimRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.Assert__stringMin12Max40(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin12Max40 to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.__stringMin12Max40(str)
	asserts.Assert__stringMin12Max40(str)
	return str
end

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	asserts.Assert__string(str)
	return str
end

function asserts.Assert__doubleMin0Max100(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMin0Max100 to be of type 'number'")
end

function M.__doubleMin0Max100(double)
	asserts.Assert__doubleMin0Max100(double)
	return double
end

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
	return double
end

function asserts.Assert__long(long)
	assert(long)
	assert(type(long) == "number", "Expected __long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__long(long)
	asserts.Assert__long(long)
	return long
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	asserts.Assert__integer(integer)
	return integer
end

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.AssertDeviceAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected DeviceAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.Assert__string(v)
	end
end

function M.DeviceAttributes(map)
	asserts.AssertDeviceAttributes(map)
	return map
end

function asserts.Assert__timestampIso8601(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampIso8601 to be of type 'string'")
end

function M.__timestampIso8601(timestamp)
	asserts.Assert__timestampIso8601(timestamp)
	return timestamp
end

function asserts.Assert__timestampUnix(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampUnix to be of type 'string'")
end

function M.__timestampUnix(timestamp)
	asserts.Assert__timestampUnix(timestamp)
	return timestamp
end

function asserts.Assert__listOfDeviceMethod(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfDeviceMethod to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceMethod(v)
	end
end

--  
-- List of DeviceMethod objects
function M.__listOfDeviceMethod(list)
	asserts.Assert__listOfDeviceMethod(list)
	return list
end

function asserts.Assert__listOfDeviceDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfDeviceDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceDescription(v)
	end
end

--  
-- List of DeviceDescription objects
function M.__listOfDeviceDescription(list)
	asserts.Assert__listOfDeviceDescription(list)
	return list
end

function asserts.Assert__listOfDeviceEvent(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfDeviceEvent to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceEvent(v)
	end
end

--  
-- List of DeviceEvent objects
function M.__listOfDeviceEvent(list)
	asserts.Assert__listOfDeviceEvent(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "devices.iot1click.amazonaws.com"
		end
	end
	local ss = { "devices.iot1click" }
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
--- Call DescribeDevice asynchronously, invoking a callback when done
-- @param DescribeDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDeviceAsync(DescribeDeviceRequest, cb)
	assert(DescribeDeviceRequest, "You must provide a DescribeDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDevice",
	}
	for header,value in pairs(DescribeDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}", DescribeDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDeviceSync(DescribeDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeviceAsync(DescribeDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeviceState asynchronously, invoking a callback when done
-- @param UpdateDeviceStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeviceStateAsync(UpdateDeviceStateRequest, cb)
	assert(UpdateDeviceStateRequest, "You must provide a UpdateDeviceStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDeviceState",
	}
	for header,value in pairs(UpdateDeviceStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/state", UpdateDeviceStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeviceState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDeviceStateSync(UpdateDeviceStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceStateAsync(UpdateDeviceStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnclaimDevice asynchronously, invoking a callback when done
-- @param UnclaimDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnclaimDeviceAsync(UnclaimDeviceRequest, cb)
	assert(UnclaimDeviceRequest, "You must provide a UnclaimDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UnclaimDevice",
	}
	for header,value in pairs(UnclaimDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/unclaim", UnclaimDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnclaimDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnclaimDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UnclaimDeviceSync(UnclaimDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnclaimDeviceAsync(UnclaimDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeviceMethods asynchronously, invoking a callback when done
-- @param GetDeviceMethodsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeviceMethodsAsync(GetDeviceMethodsRequest, cb)
	assert(GetDeviceMethodsRequest, "You must provide a GetDeviceMethodsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeviceMethods",
	}
	for header,value in pairs(GetDeviceMethodsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/methods", GetDeviceMethodsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeviceMethods synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceMethodsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeviceMethodsSync(GetDeviceMethodsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceMethodsAsync(GetDeviceMethodsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ClaimDevicesByClaimCode asynchronously, invoking a callback when done
-- @param ClaimDevicesByClaimCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ClaimDevicesByClaimCodeAsync(ClaimDevicesByClaimCodeRequest, cb)
	assert(ClaimDevicesByClaimCodeRequest, "You must provide a ClaimDevicesByClaimCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ClaimDevicesByClaimCode",
	}
	for header,value in pairs(ClaimDevicesByClaimCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/claims/{claimCode}", ClaimDevicesByClaimCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ClaimDevicesByClaimCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ClaimDevicesByClaimCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ClaimDevicesByClaimCodeSync(ClaimDevicesByClaimCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ClaimDevicesByClaimCodeAsync(ClaimDevicesByClaimCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InvokeDeviceMethod asynchronously, invoking a callback when done
-- @param InvokeDeviceMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InvokeDeviceMethodAsync(InvokeDeviceMethodRequest, cb)
	assert(InvokeDeviceMethodRequest, "You must provide a InvokeDeviceMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InvokeDeviceMethod",
	}
	for header,value in pairs(InvokeDeviceMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/methods", InvokeDeviceMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InvokeDeviceMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InvokeDeviceMethodRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InvokeDeviceMethodSync(InvokeDeviceMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InvokeDeviceMethodAsync(InvokeDeviceMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateDeviceClaim asynchronously, invoking a callback when done
-- @param InitiateDeviceClaimRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateDeviceClaimAsync(InitiateDeviceClaimRequest, cb)
	assert(InitiateDeviceClaimRequest, "You must provide a InitiateDeviceClaimRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InitiateDeviceClaim",
	}
	for header,value in pairs(InitiateDeviceClaimRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/initiate-claim", InitiateDeviceClaimRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateDeviceClaim synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateDeviceClaimRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateDeviceClaimSync(InitiateDeviceClaimRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateDeviceClaimAsync(InitiateDeviceClaimRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call FinalizeDeviceClaim asynchronously, invoking a callback when done
-- @param FinalizeDeviceClaimRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.FinalizeDeviceClaimAsync(FinalizeDeviceClaimRequest, cb)
	assert(FinalizeDeviceClaimRequest, "You must provide a FinalizeDeviceClaimRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FinalizeDeviceClaim",
	}
	for header,value in pairs(FinalizeDeviceClaimRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/finalize-claim", FinalizeDeviceClaimRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FinalizeDeviceClaim synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FinalizeDeviceClaimRequest
-- @return response
-- @return error_type
-- @return error_message
function M.FinalizeDeviceClaimSync(FinalizeDeviceClaimRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FinalizeDeviceClaimAsync(FinalizeDeviceClaimRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ListDevices",
	}
	for header,value in pairs(ListDevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/devices", ListDevicesRequest, headers, settings, cb)
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

--- Call ListDeviceEvents asynchronously, invoking a callback when done
-- @param ListDeviceEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeviceEventsAsync(ListDeviceEventsRequest, cb)
	assert(ListDeviceEventsRequest, "You must provide a ListDeviceEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDeviceEvents",
	}
	for header,value in pairs(ListDeviceEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/devices/{deviceId}/events", ListDeviceEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeviceEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeviceEventsSync(ListDeviceEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceEventsAsync(ListDeviceEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
