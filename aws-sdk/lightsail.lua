--- GENERATED CODE - DO NOT MODIFY
-- Amazon Lightsail (lightsail-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "lightsail",
	service_abbreviation = "",
	service_full_name = "Amazon Lightsail",
	signature_version = "v4",
	target_prefix = "Lightsail_20161128",
	timestamp_format = "",
	global_endpoint = "",
	uid = "lightsail-2016-11-28",
}

local keys = {}
local asserts = {}

keys.GetInstanceAccessDetailsResult = { ["accessDetails"] = true, nil }

function asserts.AssertGetInstanceAccessDetailsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessDetailsResult to be of type 'table'")
	if struct["accessDetails"] then asserts.AssertInstanceAccessDetails(struct["accessDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceAccessDetailsResult[k], "GetInstanceAccessDetailsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessDetailsResult
--  
-- @param _accessDetails [InstanceAccessDetails] <p>An array of key-value pairs containing information about a get instance access request.</p>
function M.GetInstanceAccessDetailsResult(_accessDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessDetailsResult")
	local t = { 
		["accessDetails"] = _accessDetails,
	}
	asserts.AssertGetInstanceAccessDetailsResult(t)
	return t
end

keys.MonthlyTransfer = { ["gbPerMonthAllocated"] = true, nil }

function asserts.AssertMonthlyTransfer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MonthlyTransfer to be of type 'table'")
	if struct["gbPerMonthAllocated"] then asserts.Assertinteger(struct["gbPerMonthAllocated"]) end
	for k,_ in pairs(struct) do
		assert(keys.MonthlyTransfer[k], "MonthlyTransfer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MonthlyTransfer
-- <p>Describes the monthly data transfer in and out of your virtual private server (or <i>instance</i>).</p>
-- @param _gbPerMonthAllocated [integer] <p>The amount allocated per month (in GB).</p>
function M.MonthlyTransfer(_gbPerMonthAllocated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MonthlyTransfer")
	local t = { 
		["gbPerMonthAllocated"] = _gbPerMonthAllocated,
	}
	asserts.AssertMonthlyTransfer(t)
	return t
end

keys.StopInstanceRequest = { ["instanceName"] = true, nil }

function asserts.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopInstanceRequest[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance (a virtual private server) to stop.</p>
-- Required parameter: instanceName
function M.StopInstanceRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertStopInstanceRequest(t)
	return t
end

keys.InstanceState = { ["code"] = true, ["name"] = true, nil }

function asserts.AssertInstanceState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceState to be of type 'table'")
	if struct["code"] then asserts.Assertinteger(struct["code"]) end
	if struct["name"] then asserts.Assertstring(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceState[k], "InstanceState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceState
-- <p>Describes the virtual private server (or <i>instance</i>) status.</p>
-- @param _code [integer] <p>The status code for the instance.</p>
-- @param _name [string] <p>The state of the instance (e.g., <code>running</code> or <code>pending</code>).</p>
function M.InstanceState(_code, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceState")
	local t = { 
		["code"] = _code,
		["name"] = _name,
	}
	asserts.AssertInstanceState(t)
	return t
end

keys.PeerVpcResult = { ["operation"] = true, nil }

function asserts.AssertPeerVpcResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PeerVpcResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.PeerVpcResult[k], "PeerVpcResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PeerVpcResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.PeerVpcResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PeerVpcResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertPeerVpcResult(t)
	return t
end

keys.UnauthenticatedException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertUnauthenticatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthenticatedException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthenticatedException[k], "UnauthenticatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthenticatedException
-- <p>Lightsail throws this exception when the user has not been authenticated.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.UnauthenticatedException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthenticatedException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertUnauthenticatedException(t)
	return t
end

keys.GetKeyPairResult = { ["keyPair"] = true, nil }

function asserts.AssertGetKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairResult to be of type 'table'")
	if struct["keyPair"] then asserts.AssertKeyPair(struct["keyPair"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPairResult[k], "GetKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairResult
--  
-- @param _keyPair [KeyPair] <p>An array of key-value pairs containing information about the key pair.</p>
function M.GetKeyPairResult(_keyPair, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairResult")
	local t = { 
		["keyPair"] = _keyPair,
	}
	asserts.AssertGetKeyPairResult(t)
	return t
end

keys.CreateInstancesRequest = { ["userData"] = true, ["availabilityZone"] = true, ["customImageName"] = true, ["instanceNames"] = true, ["blueprintId"] = true, ["keyPairName"] = true, ["bundleId"] = true, nil }

function asserts.AssertCreateInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesRequest to be of type 'table'")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["blueprintId"], "Expected key blueprintId to exist in table")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["userData"] then asserts.Assertstring(struct["userData"]) end
	if struct["availabilityZone"] then asserts.Assertstring(struct["availabilityZone"]) end
	if struct["customImageName"] then asserts.AssertResourceName(struct["customImageName"]) end
	if struct["instanceNames"] then asserts.AssertStringList(struct["instanceNames"]) end
	if struct["blueprintId"] then asserts.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	if struct["bundleId"] then asserts.AssertNonEmptyString(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstancesRequest[k], "CreateInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesRequest
--  
-- @param _userData [string] <p>A launch script you can create that configures a server with additional user data. For example, you might want to run <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- @param _availabilityZone [string] <p>The Availability Zone in which to create your instance. Use the following format: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- @param _customImageName [ResourceName] <p>(Deprecated) The name for your custom image.</p> <note> <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.</p> </note>
-- @param _instanceNames [StringList] <p>The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: <code>["MyFirstInstance","MySecondInstance"]</code> </p>
-- @param _blueprintId [NonEmptyString] <p>The ID for a virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>). Use the get blueprints operation to return a list of available images (or <i>blueprints</i>).</p>
-- @param _keyPairName [ResourceName] <p>The name of your key pair.</p>
-- @param _bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- Required parameter: instanceNames
-- Required parameter: availabilityZone
-- Required parameter: blueprintId
-- Required parameter: bundleId
function M.CreateInstancesRequest(_userData, _availabilityZone, _customImageName, _instanceNames, _blueprintId, _keyPairName, _bundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesRequest")
	local t = { 
		["userData"] = _userData,
		["availabilityZone"] = _availabilityZone,
		["customImageName"] = _customImageName,
		["instanceNames"] = _instanceNames,
		["blueprintId"] = _blueprintId,
		["keyPairName"] = _keyPairName,
		["bundleId"] = _bundleId,
	}
	asserts.AssertCreateInstancesRequest(t)
	return t
end

keys.DetachStaticIpRequest = { ["staticIpName"] = true, nil }

function asserts.AssertDetachStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then asserts.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachStaticIpRequest[k], "DetachStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachStaticIpRequest
--  
-- @param _staticIpName [ResourceName] <p>The name of the static IP to detach from the instance.</p>
-- Required parameter: staticIpName
function M.DetachStaticIpRequest(_staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachStaticIpRequest")
	local t = { 
		["staticIpName"] = _staticIpName,
	}
	asserts.AssertDetachStaticIpRequest(t)
	return t
end

keys.StartInstanceRequest = { ["instanceName"] = true, nil }

function asserts.AssertStartInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartInstanceRequest[k], "StartInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance (a virtual private server) to start.</p>
-- Required parameter: instanceName
function M.StartInstanceRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertStartInstanceRequest(t)
	return t
end

keys.GetInstancePortStatesResult = { ["portStates"] = true, nil }

function asserts.AssertGetInstancePortStatesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancePortStatesResult to be of type 'table'")
	if struct["portStates"] then asserts.AssertInstancePortStateList(struct["portStates"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancePortStatesResult[k], "GetInstancePortStatesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancePortStatesResult
--  
-- @param _portStates [InstancePortStateList] <p>Information about the port states resulting from your request.</p>
function M.GetInstancePortStatesResult(_portStates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancePortStatesResult")
	local t = { 
		["portStates"] = _portStates,
	}
	asserts.AssertGetInstancePortStatesResult(t)
	return t
end

keys.GetInstanceStateRequest = { ["instanceName"] = true, nil }

function asserts.AssertGetInstanceStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceStateRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceStateRequest[k], "GetInstanceStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceStateRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance to get state information about.</p>
-- Required parameter: instanceName
function M.GetInstanceStateRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceStateRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertGetInstanceStateRequest(t)
	return t
end

keys.CreateKeyPairResult = { ["keyPair"] = true, ["publicKeyBase64"] = true, ["operation"] = true, ["privateKeyBase64"] = true, nil }

function asserts.AssertCreateKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyPairResult to be of type 'table'")
	if struct["keyPair"] then asserts.AssertKeyPair(struct["keyPair"]) end
	if struct["publicKeyBase64"] then asserts.AssertBase64(struct["publicKeyBase64"]) end
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	if struct["privateKeyBase64"] then asserts.AssertBase64(struct["privateKeyBase64"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyPairResult[k], "CreateKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyPairResult
--  
-- @param _keyPair [KeyPair] <p>An array of key-value pairs containing information about the new key pair you just created.</p>
-- @param _publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the results of your create key pair request.</p>
-- @param _privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
function M.CreateKeyPairResult(_keyPair, _publicKeyBase64, _operation, _privateKeyBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyPairResult")
	local t = { 
		["keyPair"] = _keyPair,
		["publicKeyBase64"] = _publicKeyBase64,
		["operation"] = _operation,
		["privateKeyBase64"] = _privateKeyBase64,
	}
	asserts.AssertCreateKeyPairResult(t)
	return t
end

keys.GetStaticIpResult = { ["staticIp"] = true, nil }

function asserts.AssertGetStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpResult to be of type 'table'")
	if struct["staticIp"] then asserts.AssertStaticIp(struct["staticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStaticIpResult[k], "GetStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpResult
--  
-- @param _staticIp [StaticIp] <p>An array of key-value pairs containing information about the requested static IP.</p>
function M.GetStaticIpResult(_staticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpResult")
	local t = { 
		["staticIp"] = _staticIp,
	}
	asserts.AssertGetStaticIpResult(t)
	return t
end

keys.CreateDomainResult = { ["operation"] = true, nil }

function asserts.AssertCreateDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainResult[k], "CreateDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the domain resource you created.</p>
function M.CreateDomainResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertCreateDomainResult(t)
	return t
end

keys.ReleaseStaticIpResult = { ["operations"] = true, nil }

function asserts.AssertReleaseStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReleaseStaticIpResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReleaseStaticIpResult[k], "ReleaseStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReleaseStaticIpResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.ReleaseStaticIpResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReleaseStaticIpResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertReleaseStaticIpResult(t)
	return t
end

keys.StartInstanceResult = { ["operations"] = true, nil }

function asserts.AssertStartInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartInstanceResult[k], "StartInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.StartInstanceResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertStartInstanceResult(t)
	return t
end

keys.GetInstanceResult = { ["instance"] = true, nil }

function asserts.AssertGetInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceResult to be of type 'table'")
	if struct["instance"] then asserts.AssertInstance(struct["instance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceResult[k], "GetInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceResult
--  
-- @param _instance [Instance] <p>An array of key-value pairs containing information about the specified instance.</p>
function M.GetInstanceResult(_instance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceResult")
	local t = { 
		["instance"] = _instance,
	}
	asserts.AssertGetInstanceResult(t)
	return t
end

keys.MetricDatapoint = { ["sampleCount"] = true, ["timestamp"] = true, ["average"] = true, ["maximum"] = true, ["minimum"] = true, ["sum"] = true, ["unit"] = true, nil }

function asserts.AssertMetricDatapoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDatapoint to be of type 'table'")
	if struct["sampleCount"] then asserts.Assertdouble(struct["sampleCount"]) end
	if struct["timestamp"] then asserts.Asserttimestamp(struct["timestamp"]) end
	if struct["average"] then asserts.Assertdouble(struct["average"]) end
	if struct["maximum"] then asserts.Assertdouble(struct["maximum"]) end
	if struct["minimum"] then asserts.Assertdouble(struct["minimum"]) end
	if struct["sum"] then asserts.Assertdouble(struct["sum"]) end
	if struct["unit"] then asserts.AssertMetricUnit(struct["unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDatapoint[k], "MetricDatapoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDatapoint
-- <p>Describes the metric data point.</p>
-- @param _sampleCount [double] <p>The sample count.</p>
-- @param _timestamp [timestamp] <p>The timestamp (e.g., <code>1479816991.349</code>).</p>
-- @param _average [double] <p>The average.</p>
-- @param _maximum [double] <p>The maximum.</p>
-- @param _minimum [double] <p>The minimum.</p>
-- @param _sum [double] <p>The sum.</p>
-- @param _unit [MetricUnit] <p>The unit. </p>
function M.MetricDatapoint(_sampleCount, _timestamp, _average, _maximum, _minimum, _sum, _unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricDatapoint")
	local t = { 
		["sampleCount"] = _sampleCount,
		["timestamp"] = _timestamp,
		["average"] = _average,
		["maximum"] = _maximum,
		["minimum"] = _minimum,
		["sum"] = _sum,
		["unit"] = _unit,
	}
	asserts.AssertMetricDatapoint(t)
	return t
end

keys.Region = { ["availabilityZones"] = true, ["displayName"] = true, ["description"] = true, ["continentCode"] = true, ["name"] = true, nil }

function asserts.AssertRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Region to be of type 'table'")
	if struct["availabilityZones"] then asserts.AssertAvailabilityZoneList(struct["availabilityZones"]) end
	if struct["displayName"] then asserts.Assertstring(struct["displayName"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	if struct["continentCode"] then asserts.Assertstring(struct["continentCode"]) end
	if struct["name"] then asserts.AssertRegionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Region[k], "Region contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Region
-- <p>Describes the AWS Region.</p>
-- @param _availabilityZones [AvailabilityZoneList] <p>The Availability Zones. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- @param _displayName [string] <p>The display name (e.g., <code>Virginia</code>).</p>
-- @param _description [string] <p>The description of the AWS Region (e.g., <code>This region is recommended to serve users in the eastern United States and eastern Canada</code>).</p>
-- @param _continentCode [string] <p>The continent code (e.g., <code>NA</code>, meaning North America).</p>
-- @param _name [RegionName] <p>The region name (e.g., <code>us-east-1</code>).</p>
function M.Region(_availabilityZones, _displayName, _description, _continentCode, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Region")
	local t = { 
		["availabilityZones"] = _availabilityZones,
		["displayName"] = _displayName,
		["description"] = _description,
		["continentCode"] = _continentCode,
		["name"] = _name,
	}
	asserts.AssertRegion(t)
	return t
end

keys.PutInstancePublicPortsRequest = { ["instanceName"] = true, ["portInfos"] = true, nil }

function asserts.AssertPutInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfos"], "Expected key portInfos to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["portInfos"] then asserts.AssertPortInfoList(struct["portInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutInstancePublicPortsRequest[k], "PutInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInstancePublicPortsRequest
--  
-- @param _instanceName [ResourceName] <p>The Lightsail instance name of the public port(s) you are setting.</p>
-- @param _portInfos [PortInfoList] <p>Specifies information about the public port(s).</p>
-- Required parameter: portInfos
-- Required parameter: instanceName
function M.PutInstancePublicPortsRequest(_instanceName, _portInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = _instanceName,
		["portInfos"] = _portInfos,
	}
	asserts.AssertPutInstancePublicPortsRequest(t)
	return t
end

keys.RebootInstanceResult = { ["operations"] = true, nil }

function asserts.AssertRebootInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootInstanceResult[k], "RebootInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.RebootInstanceResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertRebootInstanceResult(t)
	return t
end

keys.CreateInstanceSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceSnapshotResult[k], "CreateInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceSnapshotResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances snapshot request.</p>
function M.CreateInstanceSnapshotResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceSnapshotResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertCreateInstanceSnapshotResult(t)
	return t
end

keys.Instance = { ["username"] = true, ["isStaticIp"] = true, ["networking"] = true, ["name"] = true, ["ipv6Address"] = true, ["resourceType"] = true, ["supportCode"] = true, ["blueprintName"] = true, ["hardware"] = true, ["privateIpAddress"] = true, ["state"] = true, ["arn"] = true, ["publicIpAddress"] = true, ["blueprintId"] = true, ["bundleId"] = true, ["sshKeyName"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["username"] then asserts.AssertNonEmptyString(struct["username"]) end
	if struct["isStaticIp"] then asserts.Assertboolean(struct["isStaticIp"]) end
	if struct["networking"] then asserts.AssertInstanceNetworking(struct["networking"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["ipv6Address"] then asserts.AssertIpV6Address(struct["ipv6Address"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["blueprintName"] then asserts.AssertNonEmptyString(struct["blueprintName"]) end
	if struct["hardware"] then asserts.AssertInstanceHardware(struct["hardware"]) end
	if struct["privateIpAddress"] then asserts.AssertIpAddress(struct["privateIpAddress"]) end
	if struct["state"] then asserts.AssertInstanceState(struct["state"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["publicIpAddress"] then asserts.AssertIpAddress(struct["publicIpAddress"]) end
	if struct["blueprintId"] then asserts.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["bundleId"] then asserts.AssertNonEmptyString(struct["bundleId"]) end
	if struct["sshKeyName"] then asserts.AssertResourceName(struct["sshKeyName"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an instance (a virtual private server).</p>
-- @param _username [NonEmptyString] <p>The user name for connecting to the instance (e.g., <code>ec2-user</code>).</p>
-- @param _isStaticIp [boolean] <p>A Boolean value indicating whether this instance has a static IP assigned to it.</p>
-- @param _networking [InstanceNetworking] <p>Information about the public ports and monthly data transfer rates for the instance.</p>
-- @param _name [ResourceName] <p>The name the user gave the instance (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- @param _ipv6Address [IpV6Address] <p>The IPv6 address of the instance.</p>
-- @param _resourceType [ResourceType] <p>The type of resource (usually <code>Instance</code>).</p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _blueprintName [NonEmptyString] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
-- @param _hardware [InstanceHardware] <p>The size of the vCPU and the amount of RAM for the instance.</p>
-- @param _privateIpAddress [IpAddress] <p>The private IP address of the instance.</p>
-- @param _state [InstanceState] <p>The status code and the state (e.g., <code>running</code>) for the instance.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>
-- @param _publicIpAddress [IpAddress] <p>The public IP address of the instance.</p>
-- @param _blueprintId [NonEmptyString] <p>The blueprint ID (e.g., <code>os_amlinux_2016_03</code>).</p>
-- @param _bundleId [NonEmptyString] <p>The bundle for the instance (e.g., <code>micro_1_0</code>).</p>
-- @param _sshKeyName [ResourceName] <p>The name of the SSH key being used to connect to the instance (e.g., <code>LightsailDefaultKeyPair</code>).</p>
-- @param _createdAt [IsoDate] <p>The timestamp when the instance was created (e.g., <code>1479734909.17</code>).</p>
-- @param _location [ResourceLocation] <p>The region name and availability zone where the instance is located.</p>
function M.Instance(_username, _isStaticIp, _networking, _name, _ipv6Address, _resourceType, _supportCode, _blueprintName, _hardware, _privateIpAddress, _state, _arn, _publicIpAddress, _blueprintId, _bundleId, _sshKeyName, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["username"] = _username,
		["isStaticIp"] = _isStaticIp,
		["networking"] = _networking,
		["name"] = _name,
		["ipv6Address"] = _ipv6Address,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["blueprintName"] = _blueprintName,
		["hardware"] = _hardware,
		["privateIpAddress"] = _privateIpAddress,
		["state"] = _state,
		["arn"] = _arn,
		["publicIpAddress"] = _publicIpAddress,
		["blueprintId"] = _blueprintId,
		["bundleId"] = _bundleId,
		["sshKeyName"] = _sshKeyName,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertInstance(t)
	return t
end

keys.GetDomainRequest = { ["domainName"] = true, nil }

function asserts.AssertGetDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainRequest[k], "GetDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainRequest
--  
-- @param _domainName [DomainName] <p>The domain name for which your want to return information about.</p>
-- Required parameter: domainName
function M.GetDomainRequest(_domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainRequest")
	local t = { 
		["domainName"] = _domainName,
	}
	asserts.AssertGetDomainRequest(t)
	return t
end

keys.UpdateDomainEntryRequest = { ["domainEntry"] = true, ["domainName"] = true, nil }

function asserts.AssertUpdateDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then asserts.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainEntryRequest[k], "UpdateDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainEntryRequest
--  
-- @param _domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry.</p>
-- @param _domainName [DomainName] <p>The name of the domain recordset to update.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.UpdateDomainEntryRequest(_domainEntry, _domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainEntryRequest")
	local t = { 
		["domainEntry"] = _domainEntry,
		["domainName"] = _domainName,
	}
	asserts.AssertUpdateDomainEntryRequest(t)
	return t
end

keys.InstanceSnapshot = { ["fromInstanceName"] = true, ["name"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["fromInstanceArn"] = true, ["state"] = true, ["arn"] = true, ["progress"] = true, ["fromBundleId"] = true, ["fromBlueprintId"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertInstanceSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSnapshot to be of type 'table'")
	if struct["fromInstanceName"] then asserts.AssertResourceName(struct["fromInstanceName"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["fromInstanceArn"] then asserts.AssertNonEmptyString(struct["fromInstanceArn"]) end
	if struct["state"] then asserts.AssertInstanceSnapshotState(struct["state"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["progress"] then asserts.Assertstring(struct["progress"]) end
	if struct["fromBundleId"] then asserts.Assertstring(struct["fromBundleId"]) end
	if struct["fromBlueprintId"] then asserts.Assertstring(struct["fromBlueprintId"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceSnapshot[k], "InstanceSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceSnapshot
-- <p>Describes the snapshot of the virtual private server, or <i>instance</i>.</p>
-- @param _fromInstanceName [ResourceName] <p>The instance from which the snapshot was created.</p>
-- @param _name [ResourceName] <p>The name of the snapshot.</p>
-- @param _sizeInGb [integer] <p>The size in GB of the SSD.</p>
-- @param _resourceType [ResourceType] <p>The type of resource (usually <code>InstanceSnapshot</code>).</p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _fromInstanceArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>
-- @param _state [InstanceSnapshotState] <p>The state the snapshot is in.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the snapshot (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>
-- @param _progress [string] <p>The progress of the snapshot.</p>
-- @param _fromBundleId [string] <p>The bundle ID from which you created the snapshot (e.g., <code>micro_1_0</code>).</p>
-- @param _fromBlueprintId [string] <p>The blueprint ID from which you created the snapshot (e.g., <code>os_debian_8_3</code>). A blueprint is a virtual private server (or <i>instance</i>) image used to create instances quickly.</p>
-- @param _createdAt [IsoDate] <p>The timestamp when the snapshot was created (e.g., <code>1479907467.024</code>).</p>
-- @param _location [ResourceLocation] <p>The region name and availability zone where you created the snapshot.</p>
function M.InstanceSnapshot(_fromInstanceName, _name, _sizeInGb, _resourceType, _supportCode, _fromInstanceArn, _state, _arn, _progress, _fromBundleId, _fromBlueprintId, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceSnapshot")
	local t = { 
		["fromInstanceName"] = _fromInstanceName,
		["name"] = _name,
		["sizeInGb"] = _sizeInGb,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["fromInstanceArn"] = _fromInstanceArn,
		["state"] = _state,
		["arn"] = _arn,
		["progress"] = _progress,
		["fromBundleId"] = _fromBundleId,
		["fromBlueprintId"] = _fromBlueprintId,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertInstanceSnapshot(t)
	return t
end

keys.Operation = { ["status"] = true, ["resourceType"] = true, ["isTerminal"] = true, ["operationDetails"] = true, ["statusChangedAt"] = true, ["errorCode"] = true, ["errorDetails"] = true, ["location"] = true, ["operationType"] = true, ["resourceName"] = true, ["id"] = true, ["createdAt"] = true, nil }

function asserts.AssertOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Operation to be of type 'table'")
	if struct["status"] then asserts.AssertOperationStatus(struct["status"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["isTerminal"] then asserts.Assertboolean(struct["isTerminal"]) end
	if struct["operationDetails"] then asserts.Assertstring(struct["operationDetails"]) end
	if struct["statusChangedAt"] then asserts.AssertIsoDate(struct["statusChangedAt"]) end
	if struct["errorCode"] then asserts.Assertstring(struct["errorCode"]) end
	if struct["errorDetails"] then asserts.Assertstring(struct["errorDetails"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	if struct["operationType"] then asserts.AssertOperationType(struct["operationType"]) end
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Operation[k], "Operation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Operation
-- <p>Describes the API operation.</p>
-- @param _status [OperationStatus] <p>The status of the operation. </p>
-- @param _resourceType [ResourceType] <p>The resource type. </p>
-- @param _isTerminal [boolean] <p>A Boolean value indicating whether the operation is terminal.</p>
-- @param _operationDetails [string] <p>Details about the operation (e.g., <code>Debian-1GB-Virginia-1</code>).</p>
-- @param _statusChangedAt [IsoDate] <p>The timestamp when the status was changed (e.g., <code>1479816991.349</code>).</p>
-- @param _errorCode [string] <p>The error code.</p>
-- @param _errorDetails [string] <p>The error details.</p>
-- @param _location [ResourceLocation] <p>The region and Availability Zone.</p>
-- @param _operationType [OperationType] <p>The type of operation. </p>
-- @param _resourceName [ResourceName] <p>The resource name.</p>
-- @param _id [NonEmptyString] <p>The ID of the operation.</p>
-- @param _createdAt [IsoDate] <p>The timestamp when the operation was initialized (e.g., <code>1479816991.349</code>).</p>
function M.Operation(_status, _resourceType, _isTerminal, _operationDetails, _statusChangedAt, _errorCode, _errorDetails, _location, _operationType, _resourceName, _id, _createdAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Operation")
	local t = { 
		["status"] = _status,
		["resourceType"] = _resourceType,
		["isTerminal"] = _isTerminal,
		["operationDetails"] = _operationDetails,
		["statusChangedAt"] = _statusChangedAt,
		["errorCode"] = _errorCode,
		["errorDetails"] = _errorDetails,
		["location"] = _location,
		["operationType"] = _operationType,
		["resourceName"] = _resourceName,
		["id"] = _id,
		["createdAt"] = _createdAt,
	}
	asserts.AssertOperation(t)
	return t
end

keys.Disk = { ["name"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["attachmentState"] = true, ["attachedTo"] = true, ["iops"] = true, ["gbInUse"] = true, ["arn"] = true, ["isAttached"] = true, ["path"] = true, ["isSystemDisk"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertDisk(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Disk to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["attachmentState"] then asserts.Assertstring(struct["attachmentState"]) end
	if struct["attachedTo"] then asserts.Assertstring(struct["attachedTo"]) end
	if struct["iops"] then asserts.Assertinteger(struct["iops"]) end
	if struct["gbInUse"] then asserts.Assertinteger(struct["gbInUse"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["isAttached"] then asserts.Assertboolean(struct["isAttached"]) end
	if struct["path"] then asserts.Assertstring(struct["path"]) end
	if struct["isSystemDisk"] then asserts.Assertboolean(struct["isSystemDisk"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.Disk[k], "Disk contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Disk
-- <p>Describes the hard disk (an SSD).</p>
-- @param _name [ResourceName] <p>The name of the disk.</p>
-- @param _sizeInGb [integer] <p>The size of the disk in GB.</p>
-- @param _resourceType [ResourceType] <p>The resource type of the disk. </p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _attachmentState [string] <p>The attachment state of the disk.</p>
-- @param _attachedTo [string] <p>The resources to which the disk is attached.</p>
-- @param _iops [integer] <p>The input/output operations per second (IOPS) of the disk.</p>
-- @param _gbInUse [integer] <p>The number of GB in use by the disk.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the disk.</p>
-- @param _isAttached [boolean] <p>A Boolean value indicating whether the disk is attached.</p>
-- @param _path [string] <p>The disk path.</p>
-- @param _isSystemDisk [boolean] <p>A Boolean value indicating whether this disk is a system disk (has an operating system loaded on it).</p>
-- @param _createdAt [IsoDate] <p>The date when the disk was created.</p>
-- @param _location [ResourceLocation] <p>The region and Availability Zone where the disk is located.</p>
function M.Disk(_name, _sizeInGb, _resourceType, _supportCode, _attachmentState, _attachedTo, _iops, _gbInUse, _arn, _isAttached, _path, _isSystemDisk, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Disk")
	local t = { 
		["name"] = _name,
		["sizeInGb"] = _sizeInGb,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["attachmentState"] = _attachmentState,
		["attachedTo"] = _attachedTo,
		["iops"] = _iops,
		["gbInUse"] = _gbInUse,
		["arn"] = _arn,
		["isAttached"] = _isAttached,
		["path"] = _path,
		["isSystemDisk"] = _isSystemDisk,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertDisk(t)
	return t
end

keys.AttachStaticIpResult = { ["operations"] = true, nil }

function asserts.AssertAttachStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachStaticIpResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachStaticIpResult[k], "AttachStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachStaticIpResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about your API operations.</p>
function M.AttachStaticIpResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachStaticIpResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertAttachStaticIpResult(t)
	return t
end

keys.DeleteDomainRequest = { ["domainName"] = true, nil }

function asserts.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainRequest[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
--  
-- @param _domainName [DomainName] <p>The specific domain name to delete.</p>
-- Required parameter: domainName
function M.DeleteDomainRequest(_domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["domainName"] = _domainName,
	}
	asserts.AssertDeleteDomainRequest(t)
	return t
end

keys.InstanceAccessDetails = { ["username"] = true, ["certKey"] = true, ["instanceName"] = true, ["privateKey"] = true, ["expiresAt"] = true, ["protocol"] = true, ["password"] = true, ["ipAddress"] = true, nil }

function asserts.AssertInstanceAccessDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAccessDetails to be of type 'table'")
	if struct["username"] then asserts.Assertstring(struct["username"]) end
	if struct["certKey"] then asserts.Assertstring(struct["certKey"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["privateKey"] then asserts.Assertstring(struct["privateKey"]) end
	if struct["expiresAt"] then asserts.AssertIsoDate(struct["expiresAt"]) end
	if struct["protocol"] then asserts.AssertInstanceAccessProtocol(struct["protocol"]) end
	if struct["password"] then asserts.Assertstring(struct["password"]) end
	if struct["ipAddress"] then asserts.AssertIpAddress(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAccessDetails[k], "InstanceAccessDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAccessDetails
-- <p>The parameters for gaining temporary access to one of your Amazon Lightsail instances.</p>
-- @param _username [string] <p>The user name to use when logging in to the Amazon Lightsail instance.</p>
-- @param _certKey [string] <p>For SSH access, the public key to use when accessing your instance For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey-cert.pub</code>.</p>
-- @param _instanceName [ResourceName] <p>The name of this Amazon Lightsail instance.</p>
-- @param _privateKey [string] <p>For SSH access, the temporary private key. For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey</code>).</p>
-- @param _expiresAt [IsoDate] <p>For SSH access, the date on which the temporary keys expire.</p>
-- @param _protocol [InstanceAccessProtocol] <p>The protocol for these Amazon Lightsail instance access details.</p>
-- @param _password [string] <p>For RDP access, the temporary password of the Amazon EC2 instance.</p>
-- @param _ipAddress [IpAddress] <p>The public IP address of the Amazon Lightsail instance.</p>
function M.InstanceAccessDetails(_username, _certKey, _instanceName, _privateKey, _expiresAt, _protocol, _password, _ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAccessDetails")
	local t = { 
		["username"] = _username,
		["certKey"] = _certKey,
		["instanceName"] = _instanceName,
		["privateKey"] = _privateKey,
		["expiresAt"] = _expiresAt,
		["protocol"] = _protocol,
		["password"] = _password,
		["ipAddress"] = _ipAddress,
	}
	asserts.AssertInstanceAccessDetails(t)
	return t
end

keys.GetKeyPairRequest = { ["keyPairName"] = true, nil }

function asserts.AssertGetKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPairRequest[k], "GetKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairRequest
--  
-- @param _keyPairName [ResourceName] <p>The name of the key pair for which you are requesting information.</p>
-- Required parameter: keyPairName
function M.GetKeyPairRequest(_keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairRequest")
	local t = { 
		["keyPairName"] = _keyPairName,
	}
	asserts.AssertGetKeyPairRequest(t)
	return t
end

keys.DeleteKeyPairRequest = { ["keyPairName"] = true, nil }

function asserts.AssertDeleteKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteKeyPairRequest[k], "DeleteKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteKeyPairRequest
--  
-- @param _keyPairName [ResourceName] <p>The name of the key pair to delete.</p>
-- Required parameter: keyPairName
function M.DeleteKeyPairRequest(_keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteKeyPairRequest")
	local t = { 
		["keyPairName"] = _keyPairName,
	}
	asserts.AssertDeleteKeyPairRequest(t)
	return t
end

keys.GetOperationRequest = { ["operationId"] = true, nil }

function asserts.AssertGetOperationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationRequest to be of type 'table'")
	assert(struct["operationId"], "Expected key operationId to exist in table")
	if struct["operationId"] then asserts.AssertNonEmptyString(struct["operationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationRequest[k], "GetOperationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationRequest
--  
-- @param _operationId [NonEmptyString] <p>A GUID used to identify the operation.</p>
-- Required parameter: operationId
function M.GetOperationRequest(_operationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationRequest")
	local t = { 
		["operationId"] = _operationId,
	}
	asserts.AssertGetOperationRequest(t)
	return t
end

keys.GetBlueprintsResult = { ["nextPageToken"] = true, ["blueprints"] = true, nil }

function asserts.AssertGetBlueprintsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlueprintsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["blueprints"] then asserts.AssertBlueprintList(struct["blueprints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBlueprintsResult[k], "GetBlueprintsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlueprintsResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
-- @param _blueprints [BlueprintList] <p>An array of key-value pairs that contains information about the available blueprints.</p>
function M.GetBlueprintsResult(_nextPageToken, _blueprints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlueprintsResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["blueprints"] = _blueprints,
	}
	asserts.AssertGetBlueprintsResult(t)
	return t
end

keys.CreateInstancesResult = { ["operations"] = true, nil }

function asserts.AssertCreateInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstancesResult[k], "CreateInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances request.</p>
function M.CreateInstancesResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertCreateInstancesResult(t)
	return t
end

keys.DetachStaticIpResult = { ["operations"] = true, nil }

function asserts.AssertDetachStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachStaticIpResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachStaticIpResult[k], "DetachStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachStaticIpResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your detach static IP request.</p>
function M.DetachStaticIpResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachStaticIpResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertDetachStaticIpResult(t)
	return t
end

keys.InstancePortInfo = { ["protocol"] = true, ["accessType"] = true, ["commonName"] = true, ["accessFrom"] = true, ["fromPort"] = true, ["accessDirection"] = true, ["toPort"] = true, nil }

function asserts.AssertInstancePortInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePortInfo to be of type 'table'")
	if struct["protocol"] then asserts.AssertNetworkProtocol(struct["protocol"]) end
	if struct["accessType"] then asserts.AssertPortAccessType(struct["accessType"]) end
	if struct["commonName"] then asserts.Assertstring(struct["commonName"]) end
	if struct["accessFrom"] then asserts.Assertstring(struct["accessFrom"]) end
	if struct["fromPort"] then asserts.AssertPort(struct["fromPort"]) end
	if struct["accessDirection"] then asserts.AssertAccessDirection(struct["accessDirection"]) end
	if struct["toPort"] then asserts.AssertPort(struct["toPort"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstancePortInfo[k], "InstancePortInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePortInfo
-- <p>Describes information about the instance ports.</p>
-- @param _protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
-- @param _accessType [PortAccessType] <p>The type of access (<code>Public</code> or <code>Private</code>).</p>
-- @param _commonName [string] <p>The common name.</p>
-- @param _accessFrom [string] <p>The location from which access is allowed (e.g., <code>Anywhere (0.0.0.0/0)</code>).</p>
-- @param _fromPort [Port] <p>The first port in the range.</p>
-- @param _accessDirection [AccessDirection] <p>The access direction (<code>inbound</code> or <code>outbound</code>).</p>
-- @param _toPort [Port] <p>The last port in the range.</p>
function M.InstancePortInfo(_protocol, _accessType, _commonName, _accessFrom, _fromPort, _accessDirection, _toPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePortInfo")
	local t = { 
		["protocol"] = _protocol,
		["accessType"] = _accessType,
		["commonName"] = _commonName,
		["accessFrom"] = _accessFrom,
		["fromPort"] = _fromPort,
		["accessDirection"] = _accessDirection,
		["toPort"] = _toPort,
	}
	asserts.AssertInstancePortInfo(t)
	return t
end

keys.GetInstancesResult = { ["nextPageToken"] = true, ["instances"] = true, nil }

function asserts.AssertGetInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["instances"] then asserts.AssertInstanceList(struct["instances"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancesResult[k], "GetInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
-- @param _instances [InstanceList] <p>An array of key-value pairs containing information about your instances.</p>
function M.GetInstancesResult(_nextPageToken, _instances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancesResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["instances"] = _instances,
	}
	asserts.AssertGetInstancesResult(t)
	return t
end

keys.GetInstanceSnapshotRequest = { ["instanceSnapshotName"] = true, nil }

function asserts.AssertGetInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	if struct["instanceSnapshotName"] then asserts.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceSnapshotRequest[k], "GetInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotRequest
--  
-- @param _instanceSnapshotName [ResourceName] <p>The name of the snapshot for which you are requesting information.</p>
-- Required parameter: instanceSnapshotName
function M.GetInstanceSnapshotRequest(_instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotRequest")
	local t = { 
		["instanceSnapshotName"] = _instanceSnapshotName,
	}
	asserts.AssertGetInstanceSnapshotRequest(t)
	return t
end

keys.ReleaseStaticIpRequest = { ["staticIpName"] = true, nil }

function asserts.AssertReleaseStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReleaseStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then asserts.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReleaseStaticIpRequest[k], "ReleaseStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReleaseStaticIpRequest
--  
-- @param _staticIpName [ResourceName] <p>The name of the static IP to delete.</p>
-- Required parameter: staticIpName
function M.ReleaseStaticIpRequest(_staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReleaseStaticIpRequest")
	local t = { 
		["staticIpName"] = _staticIpName,
	}
	asserts.AssertReleaseStaticIpRequest(t)
	return t
end

keys.GetOperationsForResourceRequest = { ["resourceName"] = true, ["pageToken"] = true, nil }

function asserts.AssertGetOperationsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsForResourceRequest to be of type 'table'")
	assert(struct["resourceName"], "Expected key resourceName to exist in table")
	if struct["resourceName"] then asserts.AssertResourceName(struct["resourceName"]) end
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationsForResourceRequest[k], "GetOperationsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsForResourceRequest
--  
-- @param _resourceName [ResourceName] <p>The name of the resource for which you are requesting information.</p>
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get operations for resource request.</p>
-- Required parameter: resourceName
function M.GetOperationsForResourceRequest(_resourceName, _pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsForResourceRequest")
	local t = { 
		["resourceName"] = _resourceName,
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetOperationsForResourceRequest(t)
	return t
end

keys.GetOperationResult = { ["operation"] = true, nil }

function asserts.AssertGetOperationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationResult[k], "GetOperationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the results of your get operation request.</p>
function M.GetOperationResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertGetOperationResult(t)
	return t
end

keys.GetInstanceMetricDataRequest = { ["statistics"] = true, ["period"] = true, ["startTime"] = true, ["endTime"] = true, ["instanceName"] = true, ["unit"] = true, ["metricName"] = true, nil }

function asserts.AssertGetInstanceMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceMetricDataRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["period"], "Expected key period to exist in table")
	assert(struct["startTime"], "Expected key startTime to exist in table")
	assert(struct["endTime"], "Expected key endTime to exist in table")
	assert(struct["unit"], "Expected key unit to exist in table")
	assert(struct["statistics"], "Expected key statistics to exist in table")
	if struct["statistics"] then asserts.AssertMetricStatisticList(struct["statistics"]) end
	if struct["period"] then asserts.AssertMetricPeriod(struct["period"]) end
	if struct["startTime"] then asserts.Asserttimestamp(struct["startTime"]) end
	if struct["endTime"] then asserts.Asserttimestamp(struct["endTime"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["unit"] then asserts.AssertMetricUnit(struct["unit"]) end
	if struct["metricName"] then asserts.AssertInstanceMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceMetricDataRequest[k], "GetInstanceMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceMetricDataRequest
--  
-- @param _statistics [MetricStatisticList] <p>The instance statistics. </p>
-- @param _period [MetricPeriod] <p>The time period for which you are requesting data.</p>
-- @param _startTime [timestamp] <p>The start time of the time period.</p>
-- @param _endTime [timestamp] <p>The end time of the time period.</p>
-- @param _instanceName [ResourceName] <p>The name of the instance for which you want to get metrics data.</p>
-- @param _unit [MetricUnit] <p>The unit. The list of valid values is below.</p>
-- @param _metricName [InstanceMetricName] <p>The metric name to get data about. </p>
-- Required parameter: instanceName
-- Required parameter: metricName
-- Required parameter: period
-- Required parameter: startTime
-- Required parameter: endTime
-- Required parameter: unit
-- Required parameter: statistics
function M.GetInstanceMetricDataRequest(_statistics, _period, _startTime, _endTime, _instanceName, _unit, _metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceMetricDataRequest")
	local t = { 
		["statistics"] = _statistics,
		["period"] = _period,
		["startTime"] = _startTime,
		["endTime"] = _endTime,
		["instanceName"] = _instanceName,
		["unit"] = _unit,
		["metricName"] = _metricName,
	}
	asserts.AssertGetInstanceMetricDataRequest(t)
	return t
end

keys.GetRegionsResult = { ["regions"] = true, nil }

function asserts.AssertGetRegionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegionsResult to be of type 'table'")
	if struct["regions"] then asserts.AssertRegionList(struct["regions"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegionsResult[k], "GetRegionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegionsResult
--  
-- @param _regions [RegionList] <p>An array of key-value pairs containing information about your get regions request.</p>
function M.GetRegionsResult(_regions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegionsResult")
	local t = { 
		["regions"] = _regions,
	}
	asserts.AssertGetRegionsResult(t)
	return t
end

keys.IsVpcPeeredRequest = { nil }

function asserts.AssertIsVpcPeeredRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IsVpcPeeredRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IsVpcPeeredRequest[k], "IsVpcPeeredRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IsVpcPeeredRequest
--  
function M.IsVpcPeeredRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IsVpcPeeredRequest")
	local t = { 
	}
	asserts.AssertIsVpcPeeredRequest(t)
	return t
end

keys.NotFoundException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>Lightsail throws this exception when it cannot find a resource.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.NotFoundException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.OpenInstancePublicPortsResult = { ["operation"] = true, nil }

function asserts.AssertOpenInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.OpenInstancePublicPortsResult[k], "OpenInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenInstancePublicPortsResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.OpenInstancePublicPortsResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenInstancePublicPortsResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertOpenInstancePublicPortsResult(t)
	return t
end

keys.GetInstanceSnapshotsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetInstanceSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceSnapshotsRequest[k], "GetInstanceSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotsRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
function M.GetInstanceSnapshotsRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotsRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetInstanceSnapshotsRequest(t)
	return t
end

keys.GetOperationsResult = { ["operations"] = true, ["nextPageToken"] = true, nil }

function asserts.AssertGetOperationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationsResult[k], "GetOperationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations request.</p>
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
function M.GetOperationsResult(_operations, _nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsResult")
	local t = { 
		["operations"] = _operations,
		["nextPageToken"] = _nextPageToken,
	}
	asserts.AssertGetOperationsResult(t)
	return t
end

keys.UnpeerVpcRequest = { nil }

function asserts.AssertUnpeerVpcRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnpeerVpcRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnpeerVpcRequest[k], "UnpeerVpcRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnpeerVpcRequest
--  
function M.UnpeerVpcRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnpeerVpcRequest")
	local t = { 
	}
	asserts.AssertUnpeerVpcRequest(t)
	return t
end

keys.UnpeerVpcResult = { ["operation"] = true, nil }

function asserts.AssertUnpeerVpcResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnpeerVpcResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnpeerVpcResult[k], "UnpeerVpcResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnpeerVpcResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.UnpeerVpcResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnpeerVpcResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertUnpeerVpcResult(t)
	return t
end

keys.DeleteDomainResult = { ["operation"] = true, nil }

function asserts.AssertDeleteDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainResult[k], "DeleteDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain request.</p>
function M.DeleteDomainResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertDeleteDomainResult(t)
	return t
end

keys.GetKeyPairsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetKeyPairsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPairsRequest[k], "GetKeyPairsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairsRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
function M.GetKeyPairsRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairsRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetKeyPairsRequest(t)
	return t
end

keys.ImportKeyPairRequest = { ["publicKeyBase64"] = true, ["keyPairName"] = true, nil }

function asserts.AssertImportKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	assert(struct["publicKeyBase64"], "Expected key publicKeyBase64 to exist in table")
	if struct["publicKeyBase64"] then asserts.AssertBase64(struct["publicKeyBase64"]) end
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyPairRequest[k], "ImportKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyPairRequest
--  
-- @param _publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param _keyPairName [ResourceName] <p>The name of the key pair for which you want to import the public key.</p>
-- Required parameter: keyPairName
-- Required parameter: publicKeyBase64
function M.ImportKeyPairRequest(_publicKeyBase64, _keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyPairRequest")
	local t = { 
		["publicKeyBase64"] = _publicKeyBase64,
		["keyPairName"] = _keyPairName,
	}
	asserts.AssertImportKeyPairRequest(t)
	return t
end

keys.PutInstancePublicPortsResult = { ["operation"] = true, nil }

function asserts.AssertPutInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutInstancePublicPortsResult[k], "PutInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInstancePublicPortsResult
--  
-- @param _operation [Operation] <p>Describes metadata about the operation you just executed.</p>
function M.PutInstancePublicPortsResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInstancePublicPortsResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertPutInstancePublicPortsResult(t)
	return t
end

keys.DeleteInstanceSnapshotRequest = { ["instanceSnapshotName"] = true, nil }

function asserts.AssertDeleteInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	if struct["instanceSnapshotName"] then asserts.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceSnapshotRequest[k], "DeleteInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceSnapshotRequest
--  
-- @param _instanceSnapshotName [ResourceName] <p>The name of the snapshot to delete.</p>
-- Required parameter: instanceSnapshotName
function M.DeleteInstanceSnapshotRequest(_instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceSnapshotRequest")
	local t = { 
		["instanceSnapshotName"] = _instanceSnapshotName,
	}
	asserts.AssertDeleteInstanceSnapshotRequest(t)
	return t
end

keys.GetOperationsForResourceResult = { ["operations"] = true, ["nextPageToken"] = true, ["nextPageCount"] = true, nil }

function asserts.AssertGetOperationsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsForResourceResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["nextPageCount"] then asserts.Assertstring(struct["nextPageCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationsForResourceResult[k], "GetOperationsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsForResourceResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations for resource request.</p>
-- @param _nextPageToken [string] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param _nextPageCount [string] <p>(Deprecated) Returns the number of pages of results that remain.</p> <note> <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the API. It is now deprecated, and the API returns the <code>nextPageToken</code> parameter instead.</p> </note>
function M.GetOperationsForResourceResult(_operations, _nextPageToken, _nextPageCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsForResourceResult")
	local t = { 
		["operations"] = _operations,
		["nextPageToken"] = _nextPageToken,
		["nextPageCount"] = _nextPageCount,
	}
	asserts.AssertGetOperationsForResourceResult(t)
	return t
end

keys.GetStaticIpsResult = { ["nextPageToken"] = true, ["staticIps"] = true, nil }

function asserts.AssertGetStaticIpsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["staticIps"] then asserts.AssertStaticIpList(struct["staticIps"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStaticIpsResult[k], "GetStaticIpsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpsResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
-- @param _staticIps [StaticIpList] <p>An array of key-value pairs containing information about your get static IPs request.</p>
function M.GetStaticIpsResult(_nextPageToken, _staticIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpsResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["staticIps"] = _staticIps,
	}
	asserts.AssertGetStaticIpsResult(t)
	return t
end

keys.Domain = { ["domainEntries"] = true, ["name"] = true, ["resourceType"] = true, ["supportCode"] = true, ["arn"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertDomain(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Domain to be of type 'table'")
	if struct["domainEntries"] then asserts.AssertDomainEntryList(struct["domainEntries"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.Domain[k], "Domain contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Domain
-- <p>Describes a domain where you are storing recordsets in Lightsail.</p>
-- @param _domainEntries [DomainEntryList] <p>An array of key-value pairs containing information about the domain entries.</p>
-- @param _name [ResourceName] <p>The name of the domain.</p>
-- @param _resourceType [ResourceType] <p>The resource type. </p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the domain recordset (e.g., <code>arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE</code>).</p>
-- @param _createdAt [IsoDate] <p>The date when the domain recordset was created.</p>
-- @param _location [ResourceLocation] <p>The AWS Region and Availability Zones where the domain recordset was created.</p>
function M.Domain(_domainEntries, _name, _resourceType, _supportCode, _arn, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Domain")
	local t = { 
		["domainEntries"] = _domainEntries,
		["name"] = _name,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["arn"] = _arn,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertDomain(t)
	return t
end

keys.AvailabilityZone = { ["state"] = true, ["zoneName"] = true, nil }

function asserts.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["state"] then asserts.AssertNonEmptyString(struct["state"]) end
	if struct["zoneName"] then asserts.AssertNonEmptyString(struct["zoneName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZone[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Describes an Availability Zone.</p>
-- @param _state [NonEmptyString] <p>The state of the Availability Zone.</p>
-- @param _zoneName [NonEmptyString] <p>The name of the Availability Zone. The format is <code>us-east-1a</code> (case-sensitive).</p>
function M.AvailabilityZone(_state, _zoneName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["state"] = _state,
		["zoneName"] = _zoneName,
	}
	asserts.AssertAvailabilityZone(t)
	return t
end

keys.InstanceHardware = { ["cpuCount"] = true, ["disks"] = true, ["ramSizeInGb"] = true, nil }

function asserts.AssertInstanceHardware(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceHardware to be of type 'table'")
	if struct["cpuCount"] then asserts.Assertinteger(struct["cpuCount"]) end
	if struct["disks"] then asserts.AssertDiskList(struct["disks"]) end
	if struct["ramSizeInGb"] then asserts.Assertfloat(struct["ramSizeInGb"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceHardware[k], "InstanceHardware contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceHardware
-- <p>Describes the hardware for the instance.</p>
-- @param _cpuCount [integer] <p>The number of vCPUs the instance has.</p>
-- @param _disks [DiskList] <p>The disks attached to the instance.</p>
-- @param _ramSizeInGb [float] <p>The amount of RAM in GB on the instance (e.g., <code>1.0</code>).</p>
function M.InstanceHardware(_cpuCount, _disks, _ramSizeInGb, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceHardware")
	local t = { 
		["cpuCount"] = _cpuCount,
		["disks"] = _disks,
		["ramSizeInGb"] = _ramSizeInGb,
	}
	asserts.AssertInstanceHardware(t)
	return t
end

keys.PeerVpcRequest = { nil }

function asserts.AssertPeerVpcRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PeerVpcRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PeerVpcRequest[k], "PeerVpcRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PeerVpcRequest
--  
function M.PeerVpcRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PeerVpcRequest")
	local t = { 
	}
	asserts.AssertPeerVpcRequest(t)
	return t
end

keys.StopInstanceResult = { ["operations"] = true, nil }

function asserts.AssertStopInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopInstanceResult[k], "StopInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.StopInstanceResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertStopInstanceResult(t)
	return t
end

keys.KeyPair = { ["name"] = true, ["resourceType"] = true, ["supportCode"] = true, ["arn"] = true, ["fingerprint"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertKeyPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPair to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["fingerprint"] then asserts.AssertBase64(struct["fingerprint"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPair[k], "KeyPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPair
-- <p>Describes the SSH key pair.</p>
-- @param _name [ResourceName] <p>The friendly name of the SSH key pair.</p>
-- @param _resourceType [ResourceType] <p>The resource type (usually <code>KeyPair</code>).</p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the key pair (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>
-- @param _fingerprint [Base64] <p>The RSA fingerprint of the key pair.</p>
-- @param _createdAt [IsoDate] <p>The timestamp when the key pair was created (e.g., <code>1479816991.349</code>).</p>
-- @param _location [ResourceLocation] <p>The region name and Availability Zone where the key pair was created.</p>
function M.KeyPair(_name, _resourceType, _supportCode, _arn, _fingerprint, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPair")
	local t = { 
		["name"] = _name,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["arn"] = _arn,
		["fingerprint"] = _fingerprint,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertKeyPair(t)
	return t
end

keys.GetActiveNamesRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetActiveNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActiveNamesRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetActiveNamesRequest[k], "GetActiveNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActiveNamesRequest
--  
-- @param _pageToken [string] <p>A token used for paginating results from your get active names request.</p>
function M.GetActiveNamesRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActiveNamesRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetActiveNamesRequest(t)
	return t
end

keys.CloseInstancePublicPortsRequest = { ["instanceName"] = true, ["portInfo"] = true, nil }

function asserts.AssertCloseInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfo"], "Expected key portInfo to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["portInfo"] then asserts.AssertPortInfo(struct["portInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloseInstancePublicPortsRequest[k], "CloseInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseInstancePublicPortsRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance on which you're attempting to close the public ports.</p>
-- @param _portInfo [PortInfo] <p>Information about the public port you are trying to close.</p>
-- Required parameter: portInfo
-- Required parameter: instanceName
function M.CloseInstancePublicPortsRequest(_instanceName, _portInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = _instanceName,
		["portInfo"] = _portInfo,
	}
	asserts.AssertCloseInstancePublicPortsRequest(t)
	return t
end

keys.PortInfo = { ["toPort"] = true, ["fromPort"] = true, ["protocol"] = true, nil }

function asserts.AssertPortInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortInfo to be of type 'table'")
	if struct["toPort"] then asserts.AssertPort(struct["toPort"]) end
	if struct["fromPort"] then asserts.AssertPort(struct["fromPort"]) end
	if struct["protocol"] then asserts.AssertNetworkProtocol(struct["protocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.PortInfo[k], "PortInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortInfo
-- <p>Describes information about the ports on your virtual private server (or <i>instance</i>).</p>
-- @param _toPort [Port] <p>The last port in the range.</p>
-- @param _fromPort [Port] <p>The first port in the range.</p>
-- @param _protocol [NetworkProtocol] <p>The protocol. </p>
function M.PortInfo(_toPort, _fromPort, _protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortInfo")
	local t = { 
		["toPort"] = _toPort,
		["fromPort"] = _fromPort,
		["protocol"] = _protocol,
	}
	asserts.AssertPortInfo(t)
	return t
end

keys.CreateDomainEntryRequest = { ["domainEntry"] = true, ["domainName"] = true, nil }

function asserts.AssertCreateDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then asserts.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainEntryRequest[k], "CreateDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainEntryRequest
--  
-- @param _domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry request.</p>
-- @param _domainName [DomainName] <p>The domain name (e.g., <code>example.com</code>) for which you want to create the domain entry.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.CreateDomainEntryRequest(_domainEntry, _domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainEntryRequest")
	local t = { 
		["domainEntry"] = _domainEntry,
		["domainName"] = _domainName,
	}
	asserts.AssertCreateDomainEntryRequest(t)
	return t
end

keys.CreateDomainEntryResult = { ["operation"] = true, nil }

function asserts.AssertCreateDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainEntryResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainEntryResult[k], "CreateDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainEntryResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the operation.</p>
function M.CreateDomainEntryResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainEntryResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertCreateDomainEntryResult(t)
	return t
end

keys.GetInstanceRequest = { ["instanceName"] = true, nil }

function asserts.AssertGetInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceRequest[k], "GetInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance.</p>
-- Required parameter: instanceName
function M.GetInstanceRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertGetInstanceRequest(t)
	return t
end

keys.GetBundlesRequest = { ["includeInactive"] = true, ["pageToken"] = true, nil }

function asserts.AssertGetBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBundlesRequest to be of type 'table'")
	if struct["includeInactive"] then asserts.Assertboolean(struct["includeInactive"]) end
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBundlesRequest[k], "GetBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBundlesRequest
--  
-- @param _includeInactive [boolean] <p>A Boolean value that indicates whether to include inactive bundle results in your request.</p>
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get bundles request.</p>
function M.GetBundlesRequest(_includeInactive, _pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBundlesRequest")
	local t = { 
		["includeInactive"] = _includeInactive,
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetBundlesRequest(t)
	return t
end

keys.ImportKeyPairResult = { ["operation"] = true, nil }

function asserts.AssertImportKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyPairResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyPairResult[k], "ImportKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyPairResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
function M.ImportKeyPairResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyPairResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertImportKeyPairResult(t)
	return t
end

keys.RebootInstanceRequest = { ["instanceName"] = true, nil }

function asserts.AssertRebootInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootInstanceRequest[k], "RebootInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance to reboot.</p>
-- Required parameter: instanceName
function M.RebootInstanceRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertRebootInstanceRequest(t)
	return t
end

keys.OpenInstancePublicPortsRequest = { ["instanceName"] = true, ["portInfo"] = true, nil }

function asserts.AssertOpenInstancePublicPortsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenInstancePublicPortsRequest to be of type 'table'")
	assert(struct["portInfo"], "Expected key portInfo to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["portInfo"] then asserts.AssertPortInfo(struct["portInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.OpenInstancePublicPortsRequest[k], "OpenInstancePublicPortsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenInstancePublicPortsRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance for which you want to open the public ports.</p>
-- @param _portInfo [PortInfo] <p>An array of key-value pairs containing information about the port mappings.</p>
-- Required parameter: portInfo
-- Required parameter: instanceName
function M.OpenInstancePublicPortsRequest(_instanceName, _portInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenInstancePublicPortsRequest")
	local t = { 
		["instanceName"] = _instanceName,
		["portInfo"] = _portInfo,
	}
	asserts.AssertOpenInstancePublicPortsRequest(t)
	return t
end

keys.Blueprint = { ["group"] = true, ["description"] = true, ["productUrl"] = true, ["version"] = true, ["licenseUrl"] = true, ["versionCode"] = true, ["blueprintId"] = true, ["minPower"] = true, ["type"] = true, ["isActive"] = true, ["name"] = true, nil }

function asserts.AssertBlueprint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Blueprint to be of type 'table'")
	if struct["group"] then asserts.AssertNonEmptyString(struct["group"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	if struct["productUrl"] then asserts.Assertstring(struct["productUrl"]) end
	if struct["version"] then asserts.Assertstring(struct["version"]) end
	if struct["licenseUrl"] then asserts.Assertstring(struct["licenseUrl"]) end
	if struct["versionCode"] then asserts.Assertstring(struct["versionCode"]) end
	if struct["blueprintId"] then asserts.AssertNonEmptyString(struct["blueprintId"]) end
	if struct["minPower"] then asserts.Assertinteger(struct["minPower"]) end
	if struct["type"] then asserts.AssertBlueprintType(struct["type"]) end
	if struct["isActive"] then asserts.Assertboolean(struct["isActive"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Blueprint[k], "Blueprint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Blueprint
-- <p>Describes a blueprint (a virtual private server image).</p>
-- @param _group [NonEmptyString] <p>The group name of the blueprint (e.g., <code>amazon-linux</code>).</p>
-- @param _description [string] <p>The description of the blueprint.</p>
-- @param _productUrl [string] <p>The product URL to learn more about the image or blueprint.</p>
-- @param _version [string] <p>The version number of the operating system, application, or stack (e.g., <code>2016.03.0</code>).</p>
-- @param _licenseUrl [string] <p>The end-user license agreement URL for the image or blueprint.</p>
-- @param _versionCode [string] <p>The version code.</p>
-- @param _blueprintId [NonEmptyString] <p>The ID for the virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>).</p>
-- @param _minPower [integer] <p>The minimum machine size required to run this blueprint. <code>0</code> indicates that the blueprint runs on all instances.</p>
-- @param _type [BlueprintType] <p>The type of the blueprint (e.g., <code>os</code> or <code>app</code>).</p>
-- @param _isActive [boolean] <p>A Boolean value indicating whether the blueprint is active. When you update your blueprints, you will inactivate old blueprints and keep the most recent versions active.</p>
-- @param _name [ResourceName] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
function M.Blueprint(_group, _description, _productUrl, _version, _licenseUrl, _versionCode, _blueprintId, _minPower, _type, _isActive, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Blueprint")
	local t = { 
		["group"] = _group,
		["description"] = _description,
		["productUrl"] = _productUrl,
		["version"] = _version,
		["licenseUrl"] = _licenseUrl,
		["versionCode"] = _versionCode,
		["blueprintId"] = _blueprintId,
		["minPower"] = _minPower,
		["type"] = _type,
		["isActive"] = _isActive,
		["name"] = _name,
	}
	asserts.AssertBlueprint(t)
	return t
end

keys.GetInstancesRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancesRequest[k], "GetInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
function M.GetInstancesRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancesRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetInstancesRequest(t)
	return t
end

keys.ResourceLocation = { ["availabilityZone"] = true, ["regionName"] = true, nil }

function asserts.AssertResourceLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLocation to be of type 'table'")
	if struct["availabilityZone"] then asserts.Assertstring(struct["availabilityZone"]) end
	if struct["regionName"] then asserts.AssertRegionName(struct["regionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceLocation[k], "ResourceLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLocation
-- <p>Describes the resource location.</p>
-- @param _availabilityZone [string] <p>The Availability Zone. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- @param _regionName [RegionName] <p>The AWS Region name.</p>
function M.ResourceLocation(_availabilityZone, _regionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceLocation")
	local t = { 
		["availabilityZone"] = _availabilityZone,
		["regionName"] = _regionName,
	}
	asserts.AssertResourceLocation(t)
	return t
end

keys.CreateDomainRequest = { ["domainName"] = true, nil }

function asserts.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainRequest[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
--  
-- @param _domainName [DomainName] <p>The domain name to manage (e.g., <code>example.com</code>).</p> <note> <p>You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain.</p> </note>
-- Required parameter: domainName
function M.CreateDomainRequest(_domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["domainName"] = _domainName,
	}
	asserts.AssertCreateDomainRequest(t)
	return t
end

keys.Bundle = { ["name"] = true, ["power"] = true, ["price"] = true, ["ramSizeInGb"] = true, ["diskSizeInGb"] = true, ["transferPerMonthInGb"] = true, ["cpuCount"] = true, ["instanceType"] = true, ["isActive"] = true, ["bundleId"] = true, nil }

function asserts.AssertBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bundle to be of type 'table'")
	if struct["name"] then asserts.Assertstring(struct["name"]) end
	if struct["power"] then asserts.Assertinteger(struct["power"]) end
	if struct["price"] then asserts.Assertfloat(struct["price"]) end
	if struct["ramSizeInGb"] then asserts.Assertfloat(struct["ramSizeInGb"]) end
	if struct["diskSizeInGb"] then asserts.Assertinteger(struct["diskSizeInGb"]) end
	if struct["transferPerMonthInGb"] then asserts.Assertinteger(struct["transferPerMonthInGb"]) end
	if struct["cpuCount"] then asserts.Assertinteger(struct["cpuCount"]) end
	if struct["instanceType"] then asserts.Assertstring(struct["instanceType"]) end
	if struct["isActive"] then asserts.Assertboolean(struct["isActive"]) end
	if struct["bundleId"] then asserts.AssertNonEmptyString(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Bundle[k], "Bundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bundle
-- <p>Describes a bundle, which is a set of specs describing your virtual private server (or <i>instance</i>).</p>
-- @param _name [string] <p>A friendly name for the bundle (e.g., <code>Micro</code>).</p>
-- @param _power [integer] <p>The power of the bundle (e.g., <code>500</code>).</p>
-- @param _price [float] <p>The price in US dollars (e.g., <code>5.0</code>).</p>
-- @param _ramSizeInGb [float] <p>The amount of RAM in GB (e.g., <code>2.0</code>).</p>
-- @param _diskSizeInGb [integer] <p>The size of the SSD (e.g., <code>30</code>).</p>
-- @param _transferPerMonthInGb [integer] <p>The data transfer rate per month in GB (e.g., <code>2000</code>).</p>
-- @param _cpuCount [integer] <p>The number of vCPUs included in the bundle (e.g., <code>2</code>).</p>
-- @param _instanceType [string] <p>The Amazon EC2 instance type (e.g., <code>t2.micro</code>).</p>
-- @param _isActive [boolean] <p>A Boolean value indicating whether the bundle is active.</p>
-- @param _bundleId [NonEmptyString] <p>The bundle ID (e.g., <code>micro_1_0</code>).</p>
function M.Bundle(_name, _power, _price, _ramSizeInGb, _diskSizeInGb, _transferPerMonthInGb, _cpuCount, _instanceType, _isActive, _bundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Bundle")
	local t = { 
		["name"] = _name,
		["power"] = _power,
		["price"] = _price,
		["ramSizeInGb"] = _ramSizeInGb,
		["diskSizeInGb"] = _diskSizeInGb,
		["transferPerMonthInGb"] = _transferPerMonthInGb,
		["cpuCount"] = _cpuCount,
		["instanceType"] = _instanceType,
		["isActive"] = _isActive,
		["bundleId"] = _bundleId,
	}
	asserts.AssertBundle(t)
	return t
end

keys.DeleteInstanceResult = { ["operations"] = true, nil }

function asserts.AssertDeleteInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceResult[k], "DeleteInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance request.</p>
function M.DeleteInstanceResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertDeleteInstanceResult(t)
	return t
end

keys.InvalidInputException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p> <note> <p>Domain-related APIs are only available in the N. Virginia (us-east-1) Region. Please set your Region configuration to us-east-1 to create, view, or edit these resources.</p> </note>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.InvalidInputException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.AccountSetupInProgressException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertAccountSetupInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountSetupInProgressException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountSetupInProgressException[k], "AccountSetupInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountSetupInProgressException
-- <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.AccountSetupInProgressException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountSetupInProgressException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertAccountSetupInProgressException(t)
	return t
end

keys.DeleteDomainEntryResult = { ["operation"] = true, nil }

function asserts.AssertDeleteDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainEntryResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainEntryResult[k], "DeleteDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainEntryResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain entry request.</p>
function M.DeleteDomainEntryResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainEntryResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertDeleteDomainEntryResult(t)
	return t
end

keys.CreateKeyPairRequest = { ["keyPairName"] = true, nil }

function asserts.AssertCreateKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyPairRequest to be of type 'table'")
	assert(struct["keyPairName"], "Expected key keyPairName to exist in table")
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyPairRequest[k], "CreateKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyPairRequest
--  
-- @param _keyPairName [ResourceName] <p>The name for your new key pair.</p>
-- Required parameter: keyPairName
function M.CreateKeyPairRequest(_keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyPairRequest")
	local t = { 
		["keyPairName"] = _keyPairName,
	}
	asserts.AssertCreateKeyPairRequest(t)
	return t
end

keys.DeleteDomainEntryRequest = { ["domainEntry"] = true, ["domainName"] = true, nil }

function asserts.AssertDeleteDomainEntryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainEntryRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["domainEntry"], "Expected key domainEntry to exist in table")
	if struct["domainEntry"] then asserts.AssertDomainEntry(struct["domainEntry"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainEntryRequest[k], "DeleteDomainEntryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainEntryRequest
--  
-- @param _domainEntry [DomainEntry] <p>An array of key-value pairs containing information about your domain entries.</p>
-- @param _domainName [DomainName] <p>The name of the domain entry to delete.</p>
-- Required parameter: domainName
-- Required parameter: domainEntry
function M.DeleteDomainEntryRequest(_domainEntry, _domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainEntryRequest")
	local t = { 
		["domainEntry"] = _domainEntry,
		["domainName"] = _domainName,
	}
	asserts.AssertDeleteDomainEntryRequest(t)
	return t
end

keys.DomainEntry = { ["type"] = true, ["options"] = true, ["target"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertDomainEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainEntry to be of type 'table'")
	if struct["type"] then asserts.AssertDomainEntryType(struct["type"]) end
	if struct["options"] then asserts.AssertDomainEntryOptions(struct["options"]) end
	if struct["target"] then asserts.Assertstring(struct["target"]) end
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainEntry[k], "DomainEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainEntry
-- <p>Describes a domain recordset entry.</p>
-- @param _type [DomainEntryType] <p>The type of domain entry (e.g., <code>SOA</code> or <code>NS</code>).</p>
-- @param _options [DomainEntryOptions] <p>The options for the domain entry.</p>
-- @param _target [string] <p>The target AWS name server (e.g., <code>ns-111.awsdns-22.com.</code>).</p>
-- @param _id [NonEmptyString] <p>The ID of the domain recordset entry.</p>
-- @param _name [DomainName] <p>The name of the domain.</p>
function M.DomainEntry(_type, _options, _target, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainEntry")
	local t = { 
		["type"] = _type,
		["options"] = _options,
		["target"] = _target,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertDomainEntry(t)
	return t
end

keys.GetStaticIpRequest = { ["staticIpName"] = true, nil }

function asserts.AssertGetStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then asserts.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStaticIpRequest[k], "GetStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpRequest
--  
-- @param _staticIpName [ResourceName] <p>The name of the static IP in Lightsail.</p>
-- Required parameter: staticIpName
function M.GetStaticIpRequest(_staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpRequest")
	local t = { 
		["staticIpName"] = _staticIpName,
	}
	asserts.AssertGetStaticIpRequest(t)
	return t
end

keys.DownloadDefaultKeyPairResult = { ["publicKeyBase64"] = true, ["privateKeyBase64"] = true, nil }

function asserts.AssertDownloadDefaultKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDefaultKeyPairResult to be of type 'table'")
	if struct["publicKeyBase64"] then asserts.AssertBase64(struct["publicKeyBase64"]) end
	if struct["privateKeyBase64"] then asserts.AssertBase64(struct["privateKeyBase64"]) end
	for k,_ in pairs(struct) do
		assert(keys.DownloadDefaultKeyPairResult[k], "DownloadDefaultKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDefaultKeyPairResult
--  
-- @param _publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- @param _privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
function M.DownloadDefaultKeyPairResult(_publicKeyBase64, _privateKeyBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDefaultKeyPairResult")
	local t = { 
		["publicKeyBase64"] = _publicKeyBase64,
		["privateKeyBase64"] = _privateKeyBase64,
	}
	asserts.AssertDownloadDefaultKeyPairResult(t)
	return t
end

keys.CreateInstancesFromSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateInstancesFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesFromSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstancesFromSnapshotResult[k], "CreateInstancesFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesFromSnapshotResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances from snapshot request.</p>
function M.CreateInstancesFromSnapshotResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesFromSnapshotResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertCreateInstancesFromSnapshotResult(t)
	return t
end

keys.DownloadDefaultKeyPairRequest = { nil }

function asserts.AssertDownloadDefaultKeyPairRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDefaultKeyPairRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DownloadDefaultKeyPairRequest[k], "DownloadDefaultKeyPairRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDefaultKeyPairRequest
--  
function M.DownloadDefaultKeyPairRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDefaultKeyPairRequest")
	local t = { 
	}
	asserts.AssertDownloadDefaultKeyPairRequest(t)
	return t
end

keys.IsVpcPeeredResult = { ["isPeered"] = true, nil }

function asserts.AssertIsVpcPeeredResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IsVpcPeeredResult to be of type 'table'")
	if struct["isPeered"] then asserts.Assertboolean(struct["isPeered"]) end
	for k,_ in pairs(struct) do
		assert(keys.IsVpcPeeredResult[k], "IsVpcPeeredResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IsVpcPeeredResult
--  
-- @param _isPeered [boolean] <p>Returns <code>true</code> if the Lightsail VPC is peered; otherwise, <code>false</code>.</p>
function M.IsVpcPeeredResult(_isPeered, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IsVpcPeeredResult")
	local t = { 
		["isPeered"] = _isPeered,
	}
	asserts.AssertIsVpcPeeredResult(t)
	return t
end

keys.StaticIp = { ["name"] = true, ["resourceType"] = true, ["supportCode"] = true, ["attachedTo"] = true, ["arn"] = true, ["isAttached"] = true, ["ipAddress"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertStaticIp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticIp to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["attachedTo"] then asserts.AssertResourceName(struct["attachedTo"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["isAttached"] then asserts.Assertboolean(struct["isAttached"]) end
	if struct["ipAddress"] then asserts.AssertIpAddress(struct["ipAddress"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.StaticIp[k], "StaticIp contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticIp
-- <p>Describes the static IP.</p>
-- @param _name [ResourceName] <p>The name of the static IP (e.g., <code>StaticIP-Virginia-EXAMPLE</code>).</p>
-- @param _resourceType [ResourceType] <p>The resource type (usually <code>StaticIp</code>).</p>
-- @param _supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- @param _attachedTo [ResourceName] <p>The instance where the static IP is attached (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the static IP (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>
-- @param _isAttached [boolean] <p>A Boolean value indicating whether the static IP is attached.</p>
-- @param _ipAddress [IpAddress] <p>The static IP address.</p>
-- @param _createdAt [IsoDate] <p>The timestamp when the static IP was created (e.g., <code>1479735304.222</code>).</p>
-- @param _location [ResourceLocation] <p>The region and Availability Zone where the static IP was created.</p>
function M.StaticIp(_name, _resourceType, _supportCode, _attachedTo, _arn, _isAttached, _ipAddress, _createdAt, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StaticIp")
	local t = { 
		["name"] = _name,
		["resourceType"] = _resourceType,
		["supportCode"] = _supportCode,
		["attachedTo"] = _attachedTo,
		["arn"] = _arn,
		["isAttached"] = _isAttached,
		["ipAddress"] = _ipAddress,
		["createdAt"] = _createdAt,
		["location"] = _location,
	}
	asserts.AssertStaticIp(t)
	return t
end

keys.DeleteInstanceRequest = { ["instanceName"] = true, nil }

function asserts.AssertDeleteInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceRequest[k], "DeleteInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance to delete.</p>
-- Required parameter: instanceName
function M.DeleteInstanceRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertDeleteInstanceRequest(t)
	return t
end

keys.GetInstancePortStatesRequest = { ["instanceName"] = true, nil }

function asserts.AssertGetInstancePortStatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancePortStatesRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancePortStatesRequest[k], "GetInstancePortStatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancePortStatesRequest
--  
-- @param _instanceName [ResourceName] <p>The name of the instance.</p>
-- Required parameter: instanceName
function M.GetInstancePortStatesRequest(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstancePortStatesRequest")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertGetInstancePortStatesRequest(t)
	return t
end

keys.CloseInstancePublicPortsResult = { ["operation"] = true, nil }

function asserts.AssertCloseInstancePublicPortsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseInstancePublicPortsResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloseInstancePublicPortsResult[k], "CloseInstancePublicPortsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseInstancePublicPortsResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs that contains information about the operation.</p>
function M.CloseInstancePublicPortsResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseInstancePublicPortsResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertCloseInstancePublicPortsResult(t)
	return t
end

keys.GetInstanceAccessDetailsRequest = { ["protocol"] = true, ["instanceName"] = true, nil }

function asserts.AssertGetInstanceAccessDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessDetailsRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["protocol"] then asserts.AssertInstanceAccessProtocol(struct["protocol"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceAccessDetailsRequest[k], "GetInstanceAccessDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessDetailsRequest
--  
-- @param _protocol [InstanceAccessProtocol] <p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>
-- @param _instanceName [ResourceName] <p>The name of the instance to access.</p>
-- Required parameter: instanceName
function M.GetInstanceAccessDetailsRequest(_protocol, _instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessDetailsRequest")
	local t = { 
		["protocol"] = _protocol,
		["instanceName"] = _instanceName,
	}
	asserts.AssertGetInstanceAccessDetailsRequest(t)
	return t
end

keys.GetInstanceSnapshotResult = { ["instanceSnapshot"] = true, nil }

function asserts.AssertGetInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotResult to be of type 'table'")
	if struct["instanceSnapshot"] then asserts.AssertInstanceSnapshot(struct["instanceSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceSnapshotResult[k], "GetInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotResult
--  
-- @param _instanceSnapshot [InstanceSnapshot] <p>An array of key-value pairs containing information about the results of your get instance snapshot request.</p>
function M.GetInstanceSnapshotResult(_instanceSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotResult")
	local t = { 
		["instanceSnapshot"] = _instanceSnapshot,
	}
	asserts.AssertGetInstanceSnapshotResult(t)
	return t
end

keys.GetOperationsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationsRequest[k], "GetOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationsRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
function M.GetOperationsRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationsRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetOperationsRequest(t)
	return t
end

keys.GetBundlesResult = { ["nextPageToken"] = true, ["bundles"] = true, nil }

function asserts.AssertGetBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBundlesResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["bundles"] then asserts.AssertBundleList(struct["bundles"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBundlesResult[k], "GetBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBundlesResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- @param _bundles [BundleList] <p>An array of key-value pairs that contains information about the available bundles.</p>
function M.GetBundlesResult(_nextPageToken, _bundles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBundlesResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["bundles"] = _bundles,
	}
	asserts.AssertGetBundlesResult(t)
	return t
end

keys.InstanceNetworking = { ["monthlyTransfer"] = true, ["ports"] = true, nil }

function asserts.AssertInstanceNetworking(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNetworking to be of type 'table'")
	if struct["monthlyTransfer"] then asserts.AssertMonthlyTransfer(struct["monthlyTransfer"]) end
	if struct["ports"] then asserts.AssertInstancePortInfoList(struct["ports"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceNetworking[k], "InstanceNetworking contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNetworking
-- <p>Describes monthly data transfer rates and port information for an instance.</p>
-- @param _monthlyTransfer [MonthlyTransfer] <p>The amount of data in GB allocated for monthly data transfers.</p>
-- @param _ports [InstancePortInfoList] <p>An array of key-value pairs containing information about the ports on the instance.</p>
function M.InstanceNetworking(_monthlyTransfer, _ports, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNetworking")
	local t = { 
		["monthlyTransfer"] = _monthlyTransfer,
		["ports"] = _ports,
	}
	asserts.AssertInstanceNetworking(t)
	return t
end

keys.UpdateDomainEntryResult = { ["operations"] = true, nil }

function asserts.AssertUpdateDomainEntryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainEntryResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainEntryResult[k], "UpdateDomainEntryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainEntryResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
function M.UpdateDomainEntryResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainEntryResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertUpdateDomainEntryResult(t)
	return t
end

keys.ServiceException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceException[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>A general service exception.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.ServiceException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertServiceException(t)
	return t
end

keys.DeleteKeyPairResult = { ["operation"] = true, nil }

function asserts.AssertDeleteKeyPairResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteKeyPairResult to be of type 'table'")
	if struct["operation"] then asserts.AssertOperation(struct["operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteKeyPairResult[k], "DeleteKeyPairResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteKeyPairResult
--  
-- @param _operation [Operation] <p>An array of key-value pairs containing information about the results of your delete key pair request.</p>
function M.DeleteKeyPairResult(_operation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteKeyPairResult")
	local t = { 
		["operation"] = _operation,
	}
	asserts.AssertDeleteKeyPairResult(t)
	return t
end

keys.DeleteInstanceSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertDeleteInstanceSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceSnapshotResult[k], "DeleteInstanceSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceSnapshotResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance snapshot request.</p>
function M.DeleteInstanceSnapshotResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceSnapshotResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertDeleteInstanceSnapshotResult(t)
	return t
end

keys.GetDomainsResult = { ["domains"] = true, ["nextPageToken"] = true, nil }

function asserts.AssertGetDomainsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainsResult to be of type 'table'")
	if struct["domains"] then asserts.AssertDomainList(struct["domains"]) end
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainsResult[k], "GetDomainsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainsResult
--  
-- @param _domains [DomainList] <p>An array of key-value pairs containing information about each of the domain entries in the user's account.</p>
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
function M.GetDomainsResult(_domains, _nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainsResult")
	local t = { 
		["domains"] = _domains,
		["nextPageToken"] = _nextPageToken,
	}
	asserts.AssertGetDomainsResult(t)
	return t
end

keys.GetRegionsRequest = { ["includeAvailabilityZones"] = true, nil }

function asserts.AssertGetRegionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegionsRequest to be of type 'table'")
	if struct["includeAvailabilityZones"] then asserts.Assertboolean(struct["includeAvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegionsRequest[k], "GetRegionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegionsRequest
--  
-- @param _includeAvailabilityZones [boolean] <p>A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., <code>us-east-1a</code>.</p>
function M.GetRegionsRequest(_includeAvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegionsRequest")
	local t = { 
		["includeAvailabilityZones"] = _includeAvailabilityZones,
	}
	asserts.AssertGetRegionsRequest(t)
	return t
end

keys.GetActiveNamesResult = { ["nextPageToken"] = true, ["activeNames"] = true, nil }

function asserts.AssertGetActiveNamesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActiveNamesResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["activeNames"] then asserts.AssertStringList(struct["activeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetActiveNamesResult[k], "GetActiveNamesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActiveNamesResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- @param _activeNames [StringList] <p>The list of active names returned by the get active names request.</p>
function M.GetActiveNamesResult(_nextPageToken, _activeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActiveNamesResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["activeNames"] = _activeNames,
	}
	asserts.AssertGetActiveNamesResult(t)
	return t
end

keys.AllocateStaticIpRequest = { ["staticIpName"] = true, nil }

function asserts.AssertAllocateStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	if struct["staticIpName"] then asserts.AssertResourceName(struct["staticIpName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocateStaticIpRequest[k], "AllocateStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateStaticIpRequest
--  
-- @param _staticIpName [ResourceName] <p>The name of the static IP address.</p>
-- Required parameter: staticIpName
function M.AllocateStaticIpRequest(_staticIpName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateStaticIpRequest")
	local t = { 
		["staticIpName"] = _staticIpName,
	}
	asserts.AssertAllocateStaticIpRequest(t)
	return t
end

keys.AllocateStaticIpResult = { ["operations"] = true, nil }

function asserts.AssertAllocateStaticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateStaticIpResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocateStaticIpResult[k], "AllocateStaticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateStaticIpResult
--  
-- @param _operations [OperationList] <p>An array of key-value pairs containing information about the static IP address you allocated.</p>
function M.AllocateStaticIpResult(_operations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateStaticIpResult")
	local t = { 
		["operations"] = _operations,
	}
	asserts.AssertAllocateStaticIpResult(t)
	return t
end

keys.GetBlueprintsRequest = { ["includeInactive"] = true, ["pageToken"] = true, nil }

function asserts.AssertGetBlueprintsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlueprintsRequest to be of type 'table'")
	if struct["includeInactive"] then asserts.Assertboolean(struct["includeInactive"]) end
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBlueprintsRequest[k], "GetBlueprintsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlueprintsRequest
--  
-- @param _includeInactive [boolean] <p>A Boolean value indicating whether to include inactive results in your request.</p>
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
function M.GetBlueprintsRequest(_includeInactive, _pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlueprintsRequest")
	local t = { 
		["includeInactive"] = _includeInactive,
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetBlueprintsRequest(t)
	return t
end

keys.GetInstanceSnapshotsResult = { ["nextPageToken"] = true, ["instanceSnapshots"] = true, nil }

function asserts.AssertGetInstanceSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceSnapshotsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["instanceSnapshots"] then asserts.AssertInstanceSnapshotList(struct["instanceSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceSnapshotsResult[k], "GetInstanceSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceSnapshotsResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
-- @param _instanceSnapshots [InstanceSnapshotList] <p>An array of key-value pairs containing information about the results of your get instance snapshots request.</p>
function M.GetInstanceSnapshotsResult(_nextPageToken, _instanceSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceSnapshotsResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["instanceSnapshots"] = _instanceSnapshots,
	}
	asserts.AssertGetInstanceSnapshotsResult(t)
	return t
end

keys.AccessDeniedException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.AccessDeniedException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertAccessDeniedException(t)
	return t
end

keys.InstancePortState = { ["toPort"] = true, ["fromPort"] = true, ["state"] = true, ["protocol"] = true, nil }

function asserts.AssertInstancePortState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePortState to be of type 'table'")
	if struct["toPort"] then asserts.AssertPort(struct["toPort"]) end
	if struct["fromPort"] then asserts.AssertPort(struct["fromPort"]) end
	if struct["state"] then asserts.AssertPortState(struct["state"]) end
	if struct["protocol"] then asserts.AssertNetworkProtocol(struct["protocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstancePortState[k], "InstancePortState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePortState
-- <p>Describes the port state.</p>
-- @param _toPort [Port] <p>The last port in the range.</p>
-- @param _fromPort [Port] <p>The first port in the range.</p>
-- @param _state [PortState] <p>Specifies whether the instance port is <code>open</code> or <code>closed</code>.</p>
-- @param _protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
function M.InstancePortState(_toPort, _fromPort, _state, _protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePortState")
	local t = { 
		["toPort"] = _toPort,
		["fromPort"] = _fromPort,
		["state"] = _state,
		["protocol"] = _protocol,
	}
	asserts.AssertInstancePortState(t)
	return t
end

keys.GetStaticIpsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetStaticIpsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStaticIpsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStaticIpsRequest[k], "GetStaticIpsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStaticIpsRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
function M.GetStaticIpsRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStaticIpsRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetStaticIpsRequest(t)
	return t
end

keys.OperationFailureException = { ["docs"] = true, ["message"] = true, ["code"] = true, ["tip"] = true, nil }

function asserts.AssertOperationFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationFailureException to be of type 'table'")
	if struct["docs"] then asserts.Assertstring(struct["docs"]) end
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["tip"] then asserts.Assertstring(struct["tip"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationFailureException[k], "OperationFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationFailureException
-- <p>Lightsail throws this exception when an operation fails to execute.</p>
-- @param _docs [string] 
-- @param _message [string] 
-- @param _code [string] 
-- @param _tip [string] 
function M.OperationFailureException(_docs, _message, _code, _tip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationFailureException")
	local t = { 
		["docs"] = _docs,
		["message"] = _message,
		["code"] = _code,
		["tip"] = _tip,
	}
	asserts.AssertOperationFailureException(t)
	return t
end

keys.GetKeyPairsResult = { ["nextPageToken"] = true, ["keyPairs"] = true, nil }

function asserts.AssertGetKeyPairsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPairsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["keyPairs"] then asserts.AssertKeyPairList(struct["keyPairs"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPairsResult[k], "GetKeyPairsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPairsResult
--  
-- @param _nextPageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
-- @param _keyPairs [KeyPairList] <p>An array of key-value pairs containing information about the key pairs.</p>
function M.GetKeyPairsResult(_nextPageToken, _keyPairs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPairsResult")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["keyPairs"] = _keyPairs,
	}
	asserts.AssertGetKeyPairsResult(t)
	return t
end

keys.GetInstanceMetricDataResult = { ["metricData"] = true, ["metricName"] = true, nil }

function asserts.AssertGetInstanceMetricDataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceMetricDataResult to be of type 'table'")
	if struct["metricData"] then asserts.AssertMetricDatapointList(struct["metricData"]) end
	if struct["metricName"] then asserts.AssertInstanceMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceMetricDataResult[k], "GetInstanceMetricDataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceMetricDataResult
--  
-- @param _metricData [MetricDatapointList] <p>An array of key-value pairs containing information about the results of your get instance metric data request.</p>
-- @param _metricName [InstanceMetricName] <p>The metric name to return data for. </p>
function M.GetInstanceMetricDataResult(_metricData, _metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceMetricDataResult")
	local t = { 
		["metricData"] = _metricData,
		["metricName"] = _metricName,
	}
	asserts.AssertGetInstanceMetricDataResult(t)
	return t
end

keys.GetDomainResult = { ["domain"] = true, nil }

function asserts.AssertGetDomainResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainResult to be of type 'table'")
	if struct["domain"] then asserts.AssertDomain(struct["domain"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainResult[k], "GetDomainResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainResult
--  
-- @param _domain [Domain] <p>An array of key-value pairs containing information about your get domain request.</p>
function M.GetDomainResult(_domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainResult")
	local t = { 
		["domain"] = _domain,
	}
	asserts.AssertGetDomainResult(t)
	return t
end

keys.GetInstanceStateResult = { ["state"] = true, nil }

function asserts.AssertGetInstanceStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceStateResult to be of type 'table'")
	if struct["state"] then asserts.AssertInstanceState(struct["state"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceStateResult[k], "GetInstanceStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceStateResult
--  
-- @param _state [InstanceState] <p>The state of the instance.</p>
function M.GetInstanceStateResult(_state, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceStateResult")
	local t = { 
		["state"] = _state,
	}
	asserts.AssertGetInstanceStateResult(t)
	return t
end

keys.AttachStaticIpRequest = { ["staticIpName"] = true, ["instanceName"] = true, nil }

function asserts.AssertAttachStaticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachStaticIpRequest to be of type 'table'")
	assert(struct["staticIpName"], "Expected key staticIpName to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["staticIpName"] then asserts.AssertResourceName(struct["staticIpName"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachStaticIpRequest[k], "AttachStaticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachStaticIpRequest
--  
-- @param _staticIpName [ResourceName] <p>The name of the static IP.</p>
-- @param _instanceName [ResourceName] <p>The instance name to which you want to attach the static IP address.</p>
-- Required parameter: staticIpName
-- Required parameter: instanceName
function M.AttachStaticIpRequest(_staticIpName, _instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachStaticIpRequest")
	local t = { 
		["staticIpName"] = _staticIpName,
		["instanceName"] = _instanceName,
	}
	asserts.AssertAttachStaticIpRequest(t)
	return t
end

keys.CreateInstancesFromSnapshotRequest = { ["userData"] = true, ["availabilityZone"] = true, ["instanceNames"] = true, ["instanceSnapshotName"] = true, ["bundleId"] = true, ["keyPairName"] = true, nil }

function asserts.AssertCreateInstancesFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstancesFromSnapshotRequest to be of type 'table'")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["userData"] then asserts.Assertstring(struct["userData"]) end
	if struct["availabilityZone"] then asserts.Assertstring(struct["availabilityZone"]) end
	if struct["instanceNames"] then asserts.AssertStringList(struct["instanceNames"]) end
	if struct["instanceSnapshotName"] then asserts.AssertResourceName(struct["instanceSnapshotName"]) end
	if struct["bundleId"] then asserts.AssertNonEmptyString(struct["bundleId"]) end
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstancesFromSnapshotRequest[k], "CreateInstancesFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesFromSnapshotRequest
--  
-- @param _userData [string] <p>You can create a launch script that configures a server with additional user data. For example, <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- @param _availabilityZone [string] <p>The Availability Zone where you want to create your instances. Use the following formatting: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- @param _instanceNames [StringList] <p>The names for your new instances.</p>
-- @param _instanceSnapshotName [ResourceName] <p>The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.</p>
-- @param _bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- @param _keyPairName [ResourceName] <p>The name for your key pair.</p>
-- Required parameter: instanceNames
-- Required parameter: availabilityZone
-- Required parameter: instanceSnapshotName
-- Required parameter: bundleId
function M.CreateInstancesFromSnapshotRequest(_userData, _availabilityZone, _instanceNames, _instanceSnapshotName, _bundleId, _keyPairName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstancesFromSnapshotRequest")
	local t = { 
		["userData"] = _userData,
		["availabilityZone"] = _availabilityZone,
		["instanceNames"] = _instanceNames,
		["instanceSnapshotName"] = _instanceSnapshotName,
		["bundleId"] = _bundleId,
		["keyPairName"] = _keyPairName,
	}
	asserts.AssertCreateInstancesFromSnapshotRequest(t)
	return t
end

keys.GetDomainsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainsRequest[k], "GetDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainsRequest
--  
-- @param _pageToken [string] <p>A token used for advancing to the next page of results from your get domains request.</p>
function M.GetDomainsRequest(_pageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainsRequest")
	local t = { 
		["pageToken"] = _pageToken,
	}
	asserts.AssertGetDomainsRequest(t)
	return t
end

keys.CreateInstanceSnapshotRequest = { ["instanceName"] = true, ["instanceSnapshotName"] = true, nil }

function asserts.AssertCreateInstanceSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceSnapshotRequest to be of type 'table'")
	assert(struct["instanceSnapshotName"], "Expected key instanceSnapshotName to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["instanceSnapshotName"] then asserts.AssertResourceName(struct["instanceSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceSnapshotRequest[k], "CreateInstanceSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceSnapshotRequest
--  
-- @param _instanceName [ResourceName] <p>The Lightsail instance on which to base your snapshot.</p>
-- @param _instanceSnapshotName [ResourceName] <p>The name for your new snapshot.</p>
-- Required parameter: instanceSnapshotName
-- Required parameter: instanceName
function M.CreateInstanceSnapshotRequest(_instanceName, _instanceSnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceSnapshotRequest")
	local t = { 
		["instanceName"] = _instanceName,
		["instanceSnapshotName"] = _instanceSnapshotName,
	}
	asserts.AssertCreateInstanceSnapshotRequest(t)
	return t
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertDomainEntryType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainEntryType to be of type 'string'")
end

--  
function M.DomainEntryType(str)
	asserts.AssertDomainEntryType(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertRegionName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionName to be of type 'string'")
end

--  
function M.RegionName(str)
	asserts.AssertRegionName(str)
	return str
end

function asserts.AssertInstanceSnapshotState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceSnapshotState to be of type 'string'")
end

--  
function M.InstanceSnapshotState(str)
	asserts.AssertInstanceSnapshotState(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertDomainEntryOptionsKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainEntryOptionsKeys to be of type 'string'")
end

--  
function M.DomainEntryOptionsKeys(str)
	asserts.AssertDomainEntryOptionsKeys(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
end

--  
function M.DomainName(str)
	asserts.AssertDomainName(str)
	return str
end

function asserts.AssertInstanceMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceMetricName to be of type 'string'")
end

--  
function M.InstanceMetricName(str)
	asserts.AssertInstanceMetricName(str)
	return str
end

function asserts.AssertPortAccessType(str)
	assert(str)
	assert(type(str) == "string", "Expected PortAccessType to be of type 'string'")
end

--  
function M.PortAccessType(str)
	asserts.AssertPortAccessType(str)
	return str
end

function asserts.AssertNetworkProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkProtocol to be of type 'string'")
end

--  
function M.NetworkProtocol(str)
	asserts.AssertNetworkProtocol(str)
	return str
end

function asserts.AssertMetricStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricStatistic to be of type 'string'")
end

--  
function M.MetricStatistic(str)
	asserts.AssertMetricStatistic(str)
	return str
end

function asserts.AssertIpV6Address(str)
	assert(str)
	assert(type(str) == "string", "Expected IpV6Address to be of type 'string'")
end

--  
function M.IpV6Address(str)
	asserts.AssertIpV6Address(str)
	return str
end

function asserts.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	asserts.AssertOperationType(str)
	return str
end

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertAccessDirection(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessDirection to be of type 'string'")
end

--  
function M.AccessDirection(str)
	asserts.AssertAccessDirection(str)
	return str
end

function asserts.AssertOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationStatus to be of type 'string'")
end

--  
function M.OperationStatus(str)
	asserts.AssertOperationStatus(str)
	return str
end

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
	return str
end

function asserts.AssertBlueprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlueprintType to be of type 'string'")
end

--  
function M.BlueprintType(str)
	asserts.AssertBlueprintType(str)
	return str
end

function asserts.AssertBase64(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64 to be of type 'string'")
end

--  
function M.Base64(str)
	asserts.AssertBase64(str)
	return str
end

function asserts.AssertInstanceAccessProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAccessProtocol to be of type 'string'")
end

--  
function M.InstanceAccessProtocol(str)
	asserts.AssertInstanceAccessProtocol(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertPortState(str)
	assert(str)
	assert(type(str) == "string", "Expected PortState to be of type 'string'")
end

--  
function M.PortState(str)
	asserts.AssertPortState(str)
	return str
end

function asserts.Assertfloat(float)
	assert(float)
	assert(type(float) == "number", "Expected float to be of type 'number'")
end

function M.float(float)
	asserts.Assertfloat(float)
	return float
end

function asserts.Assertdouble(double)
	assert(double)
	assert(type(double) == "number", "Expected double to be of type 'number'")
end

function M.double(double)
	asserts.Assertdouble(double)
	return double
end

function asserts.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	asserts.Assertinteger(integer)
	return integer
end

function asserts.AssertMetricPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MetricPeriod to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.MetricPeriod(integer)
	asserts.AssertMetricPeriod(integer)
	return integer
end

function asserts.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
end

function M.Port(integer)
	asserts.AssertPort(integer)
	return integer
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.AssertDomainEntryOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected DomainEntryOptions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDomainEntryOptionsKeys(k)
		asserts.Assertstring(v)
	end
end

function M.DomainEntryOptions(map)
	asserts.AssertDomainEntryOptions(map)
	return map
end

function asserts.AssertIsoDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IsoDate to be of type 'string'")
end

function M.IsoDate(timestamp)
	asserts.AssertIsoDate(timestamp)
	return timestamp
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	asserts.AssertInstanceList(list)
	return list
end

function asserts.AssertBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBundle(v)
	end
end

--  
-- List of Bundle objects
function M.BundleList(list)
	asserts.AssertBundleList(list)
	return list
end

function asserts.AssertBlueprintList(list)
	assert(list)
	assert(type(list) == "table", "Expected BlueprintList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBlueprint(v)
	end
end

--  
-- List of Blueprint objects
function M.BlueprintList(list)
	asserts.AssertBlueprintList(list)
	return list
end

function asserts.AssertStaticIpList(list)
	assert(list)
	assert(type(list) == "table", "Expected StaticIpList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStaticIp(v)
	end
end

--  
-- List of StaticIp objects
function M.StaticIpList(list)
	asserts.AssertStaticIpList(list)
	return list
end

function asserts.AssertMetricStatisticList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricStatisticList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricStatistic(v)
	end
end

--  
-- List of MetricStatistic objects
function M.MetricStatisticList(list)
	asserts.AssertMetricStatisticList(list)
	return list
end

function asserts.AssertDiskList(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDisk(v)
	end
end

--  
-- List of Disk objects
function M.DiskList(list)
	asserts.AssertDiskList(list)
	return list
end

function asserts.AssertRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected RegionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRegion(v)
	end
end

--  
-- List of Region objects
function M.RegionList(list)
	asserts.AssertRegionList(list)
	return list
end

function asserts.AssertMetricDatapointList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDatapointList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDatapoint(v)
	end
end

--  
-- List of MetricDatapoint objects
function M.MetricDatapointList(list)
	asserts.AssertMetricDatapointList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertDomainEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainEntry(v)
	end
end

--  
-- List of DomainEntry objects
function M.DomainEntryList(list)
	asserts.AssertDomainEntryList(list)
	return list
end

function asserts.AssertInstancePortStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePortStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstancePortState(v)
	end
end

--  
-- List of InstancePortState objects
function M.InstancePortStateList(list)
	asserts.AssertInstancePortStateList(list)
	return list
end

function asserts.AssertPortInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected PortInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPortInfo(v)
	end
end

--  
-- List of PortInfo objects
function M.PortInfoList(list)
	asserts.AssertPortInfoList(list)
	return list
end

function asserts.AssertOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperation(v)
	end
end

--  
-- List of Operation objects
function M.OperationList(list)
	asserts.AssertOperationList(list)
	return list
end

function asserts.AssertInstanceSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceSnapshot(v)
	end
end

--  
-- List of InstanceSnapshot objects
function M.InstanceSnapshotList(list)
	asserts.AssertInstanceSnapshotList(list)
	return list
end

function asserts.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZoneList(list)
	asserts.AssertAvailabilityZoneList(list)
	return list
end

function asserts.AssertDomainList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomain(v)
	end
end

--  
-- List of Domain objects
function M.DomainList(list)
	asserts.AssertDomainList(list)
	return list
end

function asserts.AssertKeyPairList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPairList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyPair(v)
	end
end

--  
-- List of KeyPair objects
function M.KeyPairList(list)
	asserts.AssertKeyPairList(list)
	return list
end

function asserts.AssertInstancePortInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePortInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstancePortInfo(v)
	end
end

--  
-- List of InstancePortInfo objects
function M.InstancePortInfoList(list)
	asserts.AssertInstancePortInfoList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "lightsail.amazonaws.com"
		end
	end
	local ss = { "lightsail" }
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call GetDomain asynchronously, invoking a callback when done
-- @param GetDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainAsync(GetDomainRequest, cb)
	assert(GetDomainRequest, "You must provide a GetDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainRequest
-- @return response
-- @return error_message
function M.GetDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetKeyPair asynchronously, invoking a callback when done
-- @param GetKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPairAsync(GetKeyPairRequest, cb)
	assert(GetKeyPairRequest, "You must provide a GetKeyPairRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetKeyPairRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetKeyPair synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetKeyPairRequest
-- @return response
-- @return error_message
function M.GetKeyPairSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceMetricData asynchronously, invoking a callback when done
-- @param GetInstanceMetricDataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceMetricDataAsync(GetInstanceMetricDataRequest, cb)
	assert(GetInstanceMetricDataRequest, "You must provide a GetInstanceMetricDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceMetricData",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceMetricDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceMetricDataRequest
-- @return response
-- @return error_message
function M.GetInstanceMetricDataSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceMetricDataAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStaticIps asynchronously, invoking a callback when done
-- @param GetStaticIpsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStaticIpsAsync(GetStaticIpsRequest, cb)
	assert(GetStaticIpsRequest, "You must provide a GetStaticIpsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetStaticIps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetStaticIpsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStaticIps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStaticIpsRequest
-- @return response
-- @return error_message
function M.GetStaticIpsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperationsForResource asynchronously, invoking a callback when done
-- @param GetOperationsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationsForResourceAsync(GetOperationsForResourceRequest, cb)
	assert(GetOperationsForResourceRequest, "You must provide a GetOperationsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperationsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOperationsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOperationsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOperationsForResourceRequest
-- @return response
-- @return error_message
function M.GetOperationsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CloseInstancePublicPorts asynchronously, invoking a callback when done
-- @param CloseInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CloseInstancePublicPortsAsync(CloseInstancePublicPortsRequest, cb)
	assert(CloseInstancePublicPortsRequest, "You must provide a CloseInstancePublicPortsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CloseInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CloseInstancePublicPortsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CloseInstancePublicPorts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CloseInstancePublicPortsRequest
-- @return response
-- @return error_message
function M.CloseInstancePublicPortsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloseInstancePublicPortsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetActiveNames asynchronously, invoking a callback when done
-- @param GetActiveNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetActiveNamesAsync(GetActiveNamesRequest, cb)
	assert(GetActiveNamesRequest, "You must provide a GetActiveNamesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetActiveNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetActiveNamesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetActiveNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetActiveNamesRequest
-- @return response
-- @return error_message
function M.GetActiveNamesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetActiveNamesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstances asynchronously, invoking a callback when done
-- @param GetInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstancesAsync(GetInstancesRequest, cb)
	assert(GetInstancesRequest, "You must provide a GetInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstancesRequest
-- @return response
-- @return error_message
function M.GetInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutInstancePublicPorts asynchronously, invoking a callback when done
-- @param PutInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutInstancePublicPortsAsync(PutInstancePublicPortsRequest, cb)
	assert(PutInstancePublicPortsRequest, "You must provide a PutInstancePublicPortsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.PutInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutInstancePublicPortsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutInstancePublicPorts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutInstancePublicPortsRequest
-- @return response
-- @return error_message
function M.PutInstancePublicPortsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutInstancePublicPortsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstance asynchronously, invoking a callback when done
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceAsync(DeleteInstanceRequest, cb)
	assert(DeleteInstanceRequest, "You must provide a DeleteInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInstanceRequest
-- @return response
-- @return error_message
function M.DeleteInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachStaticIp asynchronously, invoking a callback when done
-- @param AttachStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachStaticIpAsync(AttachStaticIpRequest, cb)
	assert(AttachStaticIpRequest, "You must provide a AttachStaticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AttachStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachStaticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachStaticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachStaticIpRequest
-- @return response
-- @return error_message
function M.AttachStaticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachStaticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStaticIp asynchronously, invoking a callback when done
-- @param GetStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStaticIpAsync(GetStaticIpRequest, cb)
	assert(GetStaticIpRequest, "You must provide a GetStaticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetStaticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStaticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStaticIpRequest
-- @return response
-- @return error_message
function M.GetStaticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateKeyPair asynchronously, invoking a callback when done
-- @param CreateKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeyPairAsync(CreateKeyPairRequest, cb)
	assert(CreateKeyPairRequest, "You must provide a CreateKeyPairRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateKeyPairRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateKeyPair synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateKeyPairRequest
-- @return response
-- @return error_message
function M.CreateKeyPairSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateKeyPairAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomainEntry asynchronously, invoking a callback when done
-- @param CreateDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainEntryAsync(CreateDomainEntryRequest, cb)
	assert(CreateDomainEntryRequest, "You must provide a CreateDomainEntryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDomainEntryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomainEntry synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainEntryRequest
-- @return response
-- @return error_message
function M.CreateDomainEntrySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainEntryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportKeyPair asynchronously, invoking a callback when done
-- @param ImportKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportKeyPairAsync(ImportKeyPairRequest, cb)
	assert(ImportKeyPairRequest, "You must provide a ImportKeyPairRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.ImportKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportKeyPairRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportKeyPair synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportKeyPairRequest
-- @return response
-- @return error_message
function M.ImportKeyPairSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportKeyPairAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstancesFromSnapshot asynchronously, invoking a callback when done
-- @param CreateInstancesFromSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstancesFromSnapshotAsync(CreateInstancesFromSnapshotRequest, cb)
	assert(CreateInstancesFromSnapshotRequest, "You must provide a CreateInstancesFromSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstancesFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstancesFromSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstancesFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstancesFromSnapshotRequest
-- @return response
-- @return error_message
function M.CreateInstancesFromSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesFromSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceSnapshot asynchronously, invoking a callback when done
-- @param GetInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceSnapshotAsync(GetInstanceSnapshotRequest, cb)
	assert(GetInstanceSnapshotRequest, "You must provide a GetInstanceSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceSnapshotRequest
-- @return response
-- @return error_message
function M.GetInstanceSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperation asynchronously, invoking a callback when done
-- @param GetOperationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationAsync(GetOperationRequest, cb)
	assert(GetOperationRequest, "You must provide a GetOperationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOperationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOperation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOperationRequest
-- @return response
-- @return error_message
function M.GetOperationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstanceSnapshot asynchronously, invoking a callback when done
-- @param DeleteInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceSnapshotAsync(DeleteInstanceSnapshotRequest, cb)
	assert(DeleteInstanceSnapshotRequest, "You must provide a DeleteInstanceSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInstanceSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInstanceSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInstanceSnapshotRequest
-- @return response
-- @return error_message
function M.DeleteInstanceSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call OpenInstancePublicPorts asynchronously, invoking a callback when done
-- @param OpenInstancePublicPortsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.OpenInstancePublicPortsAsync(OpenInstancePublicPortsRequest, cb)
	assert(OpenInstancePublicPortsRequest, "You must provide a OpenInstancePublicPortsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.OpenInstancePublicPorts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", OpenInstancePublicPortsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call OpenInstancePublicPorts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param OpenInstancePublicPortsRequest
-- @return response
-- @return error_message
function M.OpenInstancePublicPortsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.OpenInstancePublicPortsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartInstance asynchronously, invoking a callback when done
-- @param StartInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartInstanceAsync(StartInstanceRequest, cb)
	assert(StartInstanceRequest, "You must provide a StartInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StartInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartInstanceRequest
-- @return response
-- @return error_message
function M.StartInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainEntry asynchronously, invoking a callback when done
-- @param UpdateDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainEntryAsync(UpdateDomainEntryRequest, cb)
	assert(UpdateDomainEntryRequest, "You must provide a UpdateDomainEntryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UpdateDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDomainEntryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDomainEntry synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDomainEntryRequest
-- @return response
-- @return error_message
function M.UpdateDomainEntrySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainEntryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstancePortStates asynchronously, invoking a callback when done
-- @param GetInstancePortStatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstancePortStatesAsync(GetInstancePortStatesRequest, cb)
	assert(GetInstancePortStatesRequest, "You must provide a GetInstancePortStatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstancePortStates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstancePortStatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstancePortStates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstancePortStatesRequest
-- @return response
-- @return error_message
function M.GetInstancePortStatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancePortStatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBlueprints asynchronously, invoking a callback when done
-- @param GetBlueprintsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBlueprintsAsync(GetBlueprintsRequest, cb)
	assert(GetBlueprintsRequest, "You must provide a GetBlueprintsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetBlueprints",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetBlueprintsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBlueprints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBlueprintsRequest
-- @return response
-- @return error_message
function M.GetBlueprintsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBlueprintsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomain asynchronously, invoking a callback when done
-- @param CreateDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainRequest
-- @return response
-- @return error_message
function M.CreateDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DownloadDefaultKeyPair asynchronously, invoking a callback when done
-- @param DownloadDefaultKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DownloadDefaultKeyPairAsync(DownloadDefaultKeyPairRequest, cb)
	assert(DownloadDefaultKeyPairRequest, "You must provide a DownloadDefaultKeyPairRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DownloadDefaultKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DownloadDefaultKeyPairRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DownloadDefaultKeyPair synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DownloadDefaultKeyPairRequest
-- @return response
-- @return error_message
function M.DownloadDefaultKeyPairSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DownloadDefaultKeyPairAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomainEntry asynchronously, invoking a callback when done
-- @param DeleteDomainEntryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainEntryAsync(DeleteDomainEntryRequest, cb)
	assert(DeleteDomainEntryRequest, "You must provide a DeleteDomainEntryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDomainEntry",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDomainEntryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomainEntry synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainEntryRequest
-- @return response
-- @return error_message
function M.DeleteDomainEntrySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainEntryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperations asynchronously, invoking a callback when done
-- @param GetOperationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationsAsync(GetOperationsRequest, cb)
	assert(GetOperationsRequest, "You must provide a GetOperationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetOperations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOperationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOperations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOperationsRequest
-- @return response
-- @return error_message
function M.GetOperationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBundles asynchronously, invoking a callback when done
-- @param GetBundlesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBundlesAsync(GetBundlesRequest, cb)
	assert(GetBundlesRequest, "You must provide a GetBundlesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetBundles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetBundlesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBundles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBundlesRequest
-- @return response
-- @return error_message
function M.GetBundlesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBundlesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstance asynchronously, invoking a callback when done
-- @param GetInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAsync(GetInstanceRequest, cb)
	assert(GetInstanceRequest, "You must provide a GetInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceRequest
-- @return response
-- @return error_message
function M.GetInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceState asynchronously, invoking a callback when done
-- @param GetInstanceStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceStateAsync(GetInstanceStateRequest, cb)
	assert(GetInstanceStateRequest, "You must provide a GetInstanceStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceStateRequest
-- @return response
-- @return error_message
function M.GetInstanceStateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceStateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstanceSnapshot asynchronously, invoking a callback when done
-- @param CreateInstanceSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstanceSnapshotAsync(CreateInstanceSnapshotRequest, cb)
	assert(CreateInstanceSnapshotRequest, "You must provide a CreateInstanceSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstanceSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstanceSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstanceSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstanceSnapshotRequest
-- @return response
-- @return error_message
function M.CreateInstanceSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocateStaticIp asynchronously, invoking a callback when done
-- @param AllocateStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocateStaticIpAsync(AllocateStaticIpRequest, cb)
	assert(AllocateStaticIpRequest, "You must provide a AllocateStaticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AllocateStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AllocateStaticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AllocateStaticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AllocateStaticIpRequest
-- @return response
-- @return error_message
function M.AllocateStaticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocateStaticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetKeyPairs asynchronously, invoking a callback when done
-- @param GetKeyPairsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPairsAsync(GetKeyPairsRequest, cb)
	assert(GetKeyPairsRequest, "You must provide a GetKeyPairsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetKeyPairs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetKeyPairsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetKeyPairs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetKeyPairsRequest
-- @return response
-- @return error_message
function M.GetKeyPairsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootInstance asynchronously, invoking a callback when done
-- @param RebootInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootInstanceAsync(RebootInstanceRequest, cb)
	assert(RebootInstanceRequest, "You must provide a RebootInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.RebootInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootInstanceRequest
-- @return response
-- @return error_message
function M.RebootInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRegions asynchronously, invoking a callback when done
-- @param GetRegionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRegionsAsync(GetRegionsRequest, cb)
	assert(GetRegionsRequest, "You must provide a GetRegionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRegions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRegionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRegions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRegionsRequest
-- @return response
-- @return error_message
function M.GetRegionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceSnapshots asynchronously, invoking a callback when done
-- @param GetInstanceSnapshotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceSnapshotsAsync(GetInstanceSnapshotsRequest, cb)
	assert(GetInstanceSnapshotsRequest, "You must provide a GetInstanceSnapshotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceSnapshotsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceSnapshotsRequest
-- @return response
-- @return error_message
function M.GetInstanceSnapshotsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopInstance asynchronously, invoking a callback when done
-- @param StopInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopInstanceAsync(StopInstanceRequest, cb)
	assert(StopInstanceRequest, "You must provide a StopInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StopInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopInstanceRequest
-- @return response
-- @return error_message
function M.StopInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceAccessDetails asynchronously, invoking a callback when done
-- @param GetInstanceAccessDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAccessDetailsAsync(GetInstanceAccessDetailsRequest, cb)
	assert(GetInstanceAccessDetailsRequest, "You must provide a GetInstanceAccessDetailsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetInstanceAccessDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceAccessDetailsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceAccessDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceAccessDetailsRequest
-- @return response
-- @return error_message
function M.GetInstanceAccessDetailsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAccessDetailsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomains asynchronously, invoking a callback when done
-- @param GetDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainsAsync(GetDomainsRequest, cb)
	assert(GetDomainsRequest, "You must provide a GetDomainsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDomainsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainsRequest
-- @return response
-- @return error_message
function M.GetDomainsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PeerVpc asynchronously, invoking a callback when done
-- @param PeerVpcRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PeerVpcAsync(PeerVpcRequest, cb)
	assert(PeerVpcRequest, "You must provide a PeerVpcRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.PeerVpc",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PeerVpcRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PeerVpc synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PeerVpcRequest
-- @return response
-- @return error_message
function M.PeerVpcSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PeerVpcAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReleaseStaticIp asynchronously, invoking a callback when done
-- @param ReleaseStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReleaseStaticIpAsync(ReleaseStaticIpRequest, cb)
	assert(ReleaseStaticIpRequest, "You must provide a ReleaseStaticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.ReleaseStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ReleaseStaticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReleaseStaticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReleaseStaticIpRequest
-- @return response
-- @return error_message
function M.ReleaseStaticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReleaseStaticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call IsVpcPeered asynchronously, invoking a callback when done
-- @param IsVpcPeeredRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IsVpcPeeredAsync(IsVpcPeeredRequest, cb)
	assert(IsVpcPeeredRequest, "You must provide a IsVpcPeeredRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.IsVpcPeered",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", IsVpcPeeredRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IsVpcPeered synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IsVpcPeeredRequest
-- @return response
-- @return error_message
function M.IsVpcPeeredSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IsVpcPeeredAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachStaticIp asynchronously, invoking a callback when done
-- @param DetachStaticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachStaticIpAsync(DetachStaticIpRequest, cb)
	assert(DetachStaticIpRequest, "You must provide a DetachStaticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DetachStaticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachStaticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachStaticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachStaticIpRequest
-- @return response
-- @return error_message
function M.DetachStaticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachStaticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstances asynchronously, invoking a callback when done
-- @param CreateInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstancesAsync(CreateInstancesRequest, cb)
	assert(CreateInstancesRequest, "You must provide a CreateInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstancesRequest
-- @return response
-- @return error_message
function M.CreateInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnpeerVpc asynchronously, invoking a callback when done
-- @param UnpeerVpcRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnpeerVpcAsync(UnpeerVpcRequest, cb)
	assert(UnpeerVpcRequest, "You must provide a UnpeerVpcRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UnpeerVpc",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnpeerVpcRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnpeerVpc synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnpeerVpcRequest
-- @return response
-- @return error_message
function M.UnpeerVpcSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnpeerVpcAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomain asynchronously, invoking a callback when done
-- @param DeleteDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainRequest
-- @return response
-- @return error_message
function M.DeleteDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteKeyPair asynchronously, invoking a callback when done
-- @param DeleteKeyPairRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteKeyPairAsync(DeleteKeyPairRequest, cb)
	assert(DeleteKeyPairRequest, "You must provide a DeleteKeyPairRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteKeyPair",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteKeyPairRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteKeyPair synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteKeyPairRequest
-- @return response
-- @return error_message
function M.DeleteKeyPairSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteKeyPairAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
