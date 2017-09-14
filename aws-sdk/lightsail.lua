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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accessDetails [InstanceAccessDetails] <p>An array of key-value pairs containing information about a get instance access request.</p>
-- @return GetInstanceAccessDetailsResult structure as a key-value pair table
function M.GetInstanceAccessDetailsResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceAccessDetailsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["accessDetails"] = args["accessDetails"],
	}
	asserts.AssertGetInstanceAccessDetailsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * gbPerMonthAllocated [integer] <p>The amount allocated per month (in GB).</p>
-- @return MonthlyTransfer structure as a key-value pair table
function M.MonthlyTransfer(args)
	assert(args, "You must provide an argument table when creating MonthlyTransfer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["gbPerMonthAllocated"] = args["gbPerMonthAllocated"],
	}
	asserts.AssertMonthlyTransfer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance (a virtual private server) to stop.</p>
-- Required key: instanceName
-- @return StopInstanceRequest structure as a key-value pair table
function M.StopInstanceRequest(args)
	assert(args, "You must provide an argument table when creating StopInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertStopInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * code [integer] <p>The status code for the instance.</p>
-- * name [string] <p>The state of the instance (e.g., <code>running</code> or <code>pending</code>).</p>
-- @return InstanceState structure as a key-value pair table
function M.InstanceState(args)
	assert(args, "You must provide an argument table when creating InstanceState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["code"] = args["code"],
		["name"] = args["name"],
	}
	asserts.AssertInstanceState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return PeerVpcResult structure as a key-value pair table
function M.PeerVpcResult(args)
	assert(args, "You must provide an argument table when creating PeerVpcResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertPeerVpcResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return UnauthenticatedException structure as a key-value pair table
function M.UnauthenticatedException(args)
	assert(args, "You must provide an argument table when creating UnauthenticatedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertUnauthenticatedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyPair [KeyPair] <p>An array of key-value pairs containing information about the key pair.</p>
-- @return GetKeyPairResult structure as a key-value pair table
function M.GetKeyPairResult(args)
	assert(args, "You must provide an argument table when creating GetKeyPairResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["keyPair"] = args["keyPair"],
	}
	asserts.AssertGetKeyPairResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userData [string] <p>A launch script you can create that configures a server with additional user data. For example, you might want to run <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- * availabilityZone [string] <p>The Availability Zone in which to create your instance. Use the following format: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- * customImageName [ResourceName] <p>(Deprecated) The name for your custom image.</p> <note> <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.</p> </note>
-- * instanceNames [StringList] <p>The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: <code>["MyFirstInstance","MySecondInstance"]</code> </p>
-- * blueprintId [NonEmptyString] <p>The ID for a virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>). Use the get blueprints operation to return a list of available images (or <i>blueprints</i>).</p>
-- * keyPairName [ResourceName] <p>The name of your key pair.</p>
-- * bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- Required key: instanceNames
-- Required key: availabilityZone
-- Required key: blueprintId
-- Required key: bundleId
-- @return CreateInstancesRequest structure as a key-value pair table
function M.CreateInstancesRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["userData"] = args["userData"],
		["availabilityZone"] = args["availabilityZone"],
		["customImageName"] = args["customImageName"],
		["instanceNames"] = args["instanceNames"],
		["blueprintId"] = args["blueprintId"],
		["keyPairName"] = args["keyPairName"],
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertCreateInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIpName [ResourceName] <p>The name of the static IP to detach from the instance.</p>
-- Required key: staticIpName
-- @return DetachStaticIpRequest structure as a key-value pair table
function M.DetachStaticIpRequest(args)
	assert(args, "You must provide an argument table when creating DetachStaticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIpName"] = args["staticIpName"],
	}
	asserts.AssertDetachStaticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance (a virtual private server) to start.</p>
-- Required key: instanceName
-- @return StartInstanceRequest structure as a key-value pair table
function M.StartInstanceRequest(args)
	assert(args, "You must provide an argument table when creating StartInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertStartInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * portStates [InstancePortStateList] <p>Information about the port states resulting from your request.</p>
-- @return GetInstancePortStatesResult structure as a key-value pair table
function M.GetInstancePortStatesResult(args)
	assert(args, "You must provide an argument table when creating GetInstancePortStatesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["portStates"] = args["portStates"],
	}
	asserts.AssertGetInstancePortStatesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance to get state information about.</p>
-- Required key: instanceName
-- @return GetInstanceStateRequest structure as a key-value pair table
function M.GetInstanceStateRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertGetInstanceStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyPair [KeyPair] <p>An array of key-value pairs containing information about the new key pair you just created.</p>
-- * publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- * operation [Operation] <p>An array of key-value pairs containing information about the results of your create key pair request.</p>
-- * privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
-- @return CreateKeyPairResult structure as a key-value pair table
function M.CreateKeyPairResult(args)
	assert(args, "You must provide an argument table when creating CreateKeyPairResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["keyPair"] = args["keyPair"],
		["publicKeyBase64"] = args["publicKeyBase64"],
		["operation"] = args["operation"],
		["privateKeyBase64"] = args["privateKeyBase64"],
	}
	asserts.AssertCreateKeyPairResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIp [StaticIp] <p>An array of key-value pairs containing information about the requested static IP.</p>
-- @return GetStaticIpResult structure as a key-value pair table
function M.GetStaticIpResult(args)
	assert(args, "You must provide an argument table when creating GetStaticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIp"] = args["staticIp"],
	}
	asserts.AssertGetStaticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the domain resource you created.</p>
-- @return CreateDomainResult structure as a key-value pair table
function M.CreateDomainResult(args)
	assert(args, "You must provide an argument table when creating CreateDomainResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertCreateDomainResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return ReleaseStaticIpResult structure as a key-value pair table
function M.ReleaseStaticIpResult(args)
	assert(args, "You must provide an argument table when creating ReleaseStaticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertReleaseStaticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return StartInstanceResult structure as a key-value pair table
function M.StartInstanceResult(args)
	assert(args, "You must provide an argument table when creating StartInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertStartInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instance [Instance] <p>An array of key-value pairs containing information about the specified instance.</p>
-- @return GetInstanceResult structure as a key-value pair table
function M.GetInstanceResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instance"] = args["instance"],
	}
	asserts.AssertGetInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sampleCount [double] <p>The sample count.</p>
-- * timestamp [timestamp] <p>The timestamp (e.g., <code>1479816991.349</code>).</p>
-- * average [double] <p>The average.</p>
-- * maximum [double] <p>The maximum.</p>
-- * minimum [double] <p>The minimum.</p>
-- * sum [double] <p>The sum.</p>
-- * unit [MetricUnit] <p>The unit. </p>
-- @return MetricDatapoint structure as a key-value pair table
function M.MetricDatapoint(args)
	assert(args, "You must provide an argument table when creating MetricDatapoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sampleCount"] = args["sampleCount"],
		["timestamp"] = args["timestamp"],
		["average"] = args["average"],
		["maximum"] = args["maximum"],
		["minimum"] = args["minimum"],
		["sum"] = args["sum"],
		["unit"] = args["unit"],
	}
	asserts.AssertMetricDatapoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * availabilityZones [AvailabilityZoneList] <p>The Availability Zones. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- * displayName [string] <p>The display name (e.g., <code>Virginia</code>).</p>
-- * description [string] <p>The description of the AWS Region (e.g., <code>This region is recommended to serve users in the eastern United States and eastern Canada</code>).</p>
-- * continentCode [string] <p>The continent code (e.g., <code>NA</code>, meaning North America).</p>
-- * name [RegionName] <p>The region name (e.g., <code>us-east-1</code>).</p>
-- @return Region structure as a key-value pair table
function M.Region(args)
	assert(args, "You must provide an argument table when creating Region")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["availabilityZones"] = args["availabilityZones"],
		["displayName"] = args["displayName"],
		["description"] = args["description"],
		["continentCode"] = args["continentCode"],
		["name"] = args["name"],
	}
	asserts.AssertRegion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The Lightsail instance name of the public port(s) you are setting.</p>
-- * portInfos [PortInfoList] <p>Specifies information about the public port(s).</p>
-- Required key: portInfos
-- Required key: instanceName
-- @return PutInstancePublicPortsRequest structure as a key-value pair table
function M.PutInstancePublicPortsRequest(args)
	assert(args, "You must provide an argument table when creating PutInstancePublicPortsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
		["portInfos"] = args["portInfos"],
	}
	asserts.AssertPutInstancePublicPortsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return RebootInstanceResult structure as a key-value pair table
function M.RebootInstanceResult(args)
	assert(args, "You must provide an argument table when creating RebootInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertRebootInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances snapshot request.</p>
-- @return CreateInstanceSnapshotResult structure as a key-value pair table
function M.CreateInstanceSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateInstanceSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateInstanceSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * username [NonEmptyString] <p>The user name for connecting to the instance (e.g., <code>ec2-user</code>).</p>
-- * isStaticIp [boolean] <p>A Boolean value indicating whether this instance has a static IP assigned to it.</p>
-- * networking [InstanceNetworking] <p>Information about the public ports and monthly data transfer rates for the instance.</p>
-- * name [ResourceName] <p>The name the user gave the instance (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- * ipv6Address [IpV6Address] <p>The IPv6 address of the instance.</p>
-- * resourceType [ResourceType] <p>The type of resource (usually <code>Instance</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * blueprintName [NonEmptyString] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
-- * hardware [InstanceHardware] <p>The size of the vCPU and the amount of RAM for the instance.</p>
-- * privateIpAddress [IpAddress] <p>The private IP address of the instance.</p>
-- * state [InstanceState] <p>The status code and the state (e.g., <code>running</code>) for the instance.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>
-- * publicIpAddress [IpAddress] <p>The public IP address of the instance.</p>
-- * blueprintId [NonEmptyString] <p>The blueprint ID (e.g., <code>os_amlinux_2016_03</code>).</p>
-- * bundleId [NonEmptyString] <p>The bundle for the instance (e.g., <code>micro_1_0</code>).</p>
-- * sshKeyName [ResourceName] <p>The name of the SSH key being used to connect to the instance (e.g., <code>LightsailDefaultKeyPair</code>).</p>
-- * createdAt [IsoDate] <p>The timestamp when the instance was created (e.g., <code>1479734909.17</code>).</p>
-- * location [ResourceLocation] <p>The region name and availability zone where the instance is located.</p>
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["username"] = args["username"],
		["isStaticIp"] = args["isStaticIp"],
		["networking"] = args["networking"],
		["name"] = args["name"],
		["ipv6Address"] = args["ipv6Address"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["blueprintName"] = args["blueprintName"],
		["hardware"] = args["hardware"],
		["privateIpAddress"] = args["privateIpAddress"],
		["state"] = args["state"],
		["arn"] = args["arn"],
		["publicIpAddress"] = args["publicIpAddress"],
		["blueprintId"] = args["blueprintId"],
		["bundleId"] = args["bundleId"],
		["sshKeyName"] = args["sshKeyName"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The domain name for which your want to return information about.</p>
-- Required key: domainName
-- @return GetDomainRequest structure as a key-value pair table
function M.GetDomainRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry.</p>
-- * domainName [DomainName] <p>The name of the domain recordset to update.</p>
-- Required key: domainName
-- Required key: domainEntry
-- @return UpdateDomainEntryRequest structure as a key-value pair table
function M.UpdateDomainEntryRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDomainEntryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainEntry"] = args["domainEntry"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertUpdateDomainEntryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fromInstanceName [ResourceName] <p>The instance from which the snapshot was created.</p>
-- * name [ResourceName] <p>The name of the snapshot.</p>
-- * sizeInGb [integer] <p>The size in GB of the SSD.</p>
-- * resourceType [ResourceType] <p>The type of resource (usually <code>InstanceSnapshot</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * fromInstanceArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>
-- * state [InstanceSnapshotState] <p>The state the snapshot is in.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the snapshot (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>
-- * progress [string] <p>The progress of the snapshot.</p>
-- * fromBundleId [string] <p>The bundle ID from which you created the snapshot (e.g., <code>micro_1_0</code>).</p>
-- * fromBlueprintId [string] <p>The blueprint ID from which you created the snapshot (e.g., <code>os_debian_8_3</code>). A blueprint is a virtual private server (or <i>instance</i>) image used to create instances quickly.</p>
-- * createdAt [IsoDate] <p>The timestamp when the snapshot was created (e.g., <code>1479907467.024</code>).</p>
-- * location [ResourceLocation] <p>The region name and availability zone where you created the snapshot.</p>
-- @return InstanceSnapshot structure as a key-value pair table
function M.InstanceSnapshot(args)
	assert(args, "You must provide an argument table when creating InstanceSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fromInstanceName"] = args["fromInstanceName"],
		["name"] = args["name"],
		["sizeInGb"] = args["sizeInGb"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["fromInstanceArn"] = args["fromInstanceArn"],
		["state"] = args["state"],
		["arn"] = args["arn"],
		["progress"] = args["progress"],
		["fromBundleId"] = args["fromBundleId"],
		["fromBlueprintId"] = args["fromBlueprintId"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertInstanceSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [OperationStatus] <p>The status of the operation. </p>
-- * resourceType [ResourceType] <p>The resource type. </p>
-- * isTerminal [boolean] <p>A Boolean value indicating whether the operation is terminal.</p>
-- * operationDetails [string] <p>Details about the operation (e.g., <code>Debian-1GB-Virginia-1</code>).</p>
-- * statusChangedAt [IsoDate] <p>The timestamp when the status was changed (e.g., <code>1479816991.349</code>).</p>
-- * errorCode [string] <p>The error code.</p>
-- * errorDetails [string] <p>The error details.</p>
-- * location [ResourceLocation] <p>The region and Availability Zone.</p>
-- * operationType [OperationType] <p>The type of operation. </p>
-- * resourceName [ResourceName] <p>The resource name.</p>
-- * id [NonEmptyString] <p>The ID of the operation.</p>
-- * createdAt [IsoDate] <p>The timestamp when the operation was initialized (e.g., <code>1479816991.349</code>).</p>
-- @return Operation structure as a key-value pair table
function M.Operation(args)
	assert(args, "You must provide an argument table when creating Operation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["resourceType"] = args["resourceType"],
		["isTerminal"] = args["isTerminal"],
		["operationDetails"] = args["operationDetails"],
		["statusChangedAt"] = args["statusChangedAt"],
		["errorCode"] = args["errorCode"],
		["errorDetails"] = args["errorDetails"],
		["location"] = args["location"],
		["operationType"] = args["operationType"],
		["resourceName"] = args["resourceName"],
		["id"] = args["id"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The name of the disk.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB.</p>
-- * resourceType [ResourceType] <p>The resource type of the disk. </p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * attachmentState [string] <p>The attachment state of the disk.</p>
-- * attachedTo [string] <p>The resources to which the disk is attached.</p>
-- * iops [integer] <p>The input/output operations per second (IOPS) of the disk.</p>
-- * gbInUse [integer] <p>The number of GB in use by the disk.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the disk.</p>
-- * isAttached [boolean] <p>A Boolean value indicating whether the disk is attached.</p>
-- * path [string] <p>The disk path.</p>
-- * isSystemDisk [boolean] <p>A Boolean value indicating whether this disk is a system disk (has an operating system loaded on it).</p>
-- * createdAt [IsoDate] <p>The date when the disk was created.</p>
-- * location [ResourceLocation] <p>The region and Availability Zone where the disk is located.</p>
-- @return Disk structure as a key-value pair table
function M.Disk(args)
	assert(args, "You must provide an argument table when creating Disk")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["sizeInGb"] = args["sizeInGb"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["attachmentState"] = args["attachmentState"],
		["attachedTo"] = args["attachedTo"],
		["iops"] = args["iops"],
		["gbInUse"] = args["gbInUse"],
		["arn"] = args["arn"],
		["isAttached"] = args["isAttached"],
		["path"] = args["path"],
		["isSystemDisk"] = args["isSystemDisk"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertDisk(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about your API operations.</p>
-- @return AttachStaticIpResult structure as a key-value pair table
function M.AttachStaticIpResult(args)
	assert(args, "You must provide an argument table when creating AttachStaticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertAttachStaticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The specific domain name to delete.</p>
-- Required key: domainName
-- @return DeleteDomainRequest structure as a key-value pair table
function M.DeleteDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * username [string] <p>The user name to use when logging in to the Amazon Lightsail instance.</p>
-- * certKey [string] <p>For SSH access, the public key to use when accessing your instance For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey-cert.pub</code>.</p>
-- * instanceName [ResourceName] <p>The name of this Amazon Lightsail instance.</p>
-- * privateKey [string] <p>For SSH access, the temporary private key. For OpenSSH clients (e.g., command line SSH), you should save this value to <code>tempkey</code>).</p>
-- * expiresAt [IsoDate] <p>For SSH access, the date on which the temporary keys expire.</p>
-- * protocol [InstanceAccessProtocol] <p>The protocol for these Amazon Lightsail instance access details.</p>
-- * password [string] <p>For RDP access, the temporary password of the Amazon EC2 instance.</p>
-- * ipAddress [IpAddress] <p>The public IP address of the Amazon Lightsail instance.</p>
-- @return InstanceAccessDetails structure as a key-value pair table
function M.InstanceAccessDetails(args)
	assert(args, "You must provide an argument table when creating InstanceAccessDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["username"] = args["username"],
		["certKey"] = args["certKey"],
		["instanceName"] = args["instanceName"],
		["privateKey"] = args["privateKey"],
		["expiresAt"] = args["expiresAt"],
		["protocol"] = args["protocol"],
		["password"] = args["password"],
		["ipAddress"] = args["ipAddress"],
	}
	asserts.AssertInstanceAccessDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyPairName [ResourceName] <p>The name of the key pair for which you are requesting information.</p>
-- Required key: keyPairName
-- @return GetKeyPairRequest structure as a key-value pair table
function M.GetKeyPairRequest(args)
	assert(args, "You must provide an argument table when creating GetKeyPairRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertGetKeyPairRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyPairName [ResourceName] <p>The name of the key pair to delete.</p>
-- Required key: keyPairName
-- @return DeleteKeyPairRequest structure as a key-value pair table
function M.DeleteKeyPairRequest(args)
	assert(args, "You must provide an argument table when creating DeleteKeyPairRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertDeleteKeyPairRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operationId [NonEmptyString] <p>A GUID used to identify the operation.</p>
-- Required key: operationId
-- @return GetOperationRequest structure as a key-value pair table
function M.GetOperationRequest(args)
	assert(args, "You must provide an argument table when creating GetOperationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operationId"] = args["operationId"],
	}
	asserts.AssertGetOperationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
-- * blueprints [BlueprintList] <p>An array of key-value pairs that contains information about the available blueprints.</p>
-- @return GetBlueprintsResult structure as a key-value pair table
function M.GetBlueprintsResult(args)
	assert(args, "You must provide an argument table when creating GetBlueprintsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["blueprints"] = args["blueprints"],
	}
	asserts.AssertGetBlueprintsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances request.</p>
-- @return CreateInstancesResult structure as a key-value pair table
function M.CreateInstancesResult(args)
	assert(args, "You must provide an argument table when creating CreateInstancesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateInstancesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your detach static IP request.</p>
-- @return DetachStaticIpResult structure as a key-value pair table
function M.DetachStaticIpResult(args)
	assert(args, "You must provide an argument table when creating DetachStaticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDetachStaticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
-- * accessType [PortAccessType] <p>The type of access (<code>Public</code> or <code>Private</code>).</p>
-- * commonName [string] <p>The common name.</p>
-- * accessFrom [string] <p>The location from which access is allowed (e.g., <code>Anywhere (0.0.0.0/0)</code>).</p>
-- * fromPort [Port] <p>The first port in the range.</p>
-- * accessDirection [AccessDirection] <p>The access direction (<code>inbound</code> or <code>outbound</code>).</p>
-- * toPort [Port] <p>The last port in the range.</p>
-- @return InstancePortInfo structure as a key-value pair table
function M.InstancePortInfo(args)
	assert(args, "You must provide an argument table when creating InstancePortInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["protocol"] = args["protocol"],
		["accessType"] = args["accessType"],
		["commonName"] = args["commonName"],
		["accessFrom"] = args["accessFrom"],
		["fromPort"] = args["fromPort"],
		["accessDirection"] = args["accessDirection"],
		["toPort"] = args["toPort"],
	}
	asserts.AssertInstancePortInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
-- * instances [InstanceList] <p>An array of key-value pairs containing information about your instances.</p>
-- @return GetInstancesResult structure as a key-value pair table
function M.GetInstancesResult(args)
	assert(args, "You must provide an argument table when creating GetInstancesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["instances"] = args["instances"],
	}
	asserts.AssertGetInstancesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceSnapshotName [ResourceName] <p>The name of the snapshot for which you are requesting information.</p>
-- Required key: instanceSnapshotName
-- @return GetInstanceSnapshotRequest structure as a key-value pair table
function M.GetInstanceSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceSnapshotName"] = args["instanceSnapshotName"],
	}
	asserts.AssertGetInstanceSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIpName [ResourceName] <p>The name of the static IP to delete.</p>
-- Required key: staticIpName
-- @return ReleaseStaticIpRequest structure as a key-value pair table
function M.ReleaseStaticIpRequest(args)
	assert(args, "You must provide an argument table when creating ReleaseStaticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIpName"] = args["staticIpName"],
	}
	asserts.AssertReleaseStaticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceName [ResourceName] <p>The name of the resource for which you are requesting information.</p>
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get operations for resource request.</p>
-- Required key: resourceName
-- @return GetOperationsForResourceRequest structure as a key-value pair table
function M.GetOperationsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating GetOperationsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceName"] = args["resourceName"],
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetOperationsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the results of your get operation request.</p>
-- @return GetOperationResult structure as a key-value pair table
function M.GetOperationResult(args)
	assert(args, "You must provide an argument table when creating GetOperationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertGetOperationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statistics [MetricStatisticList] <p>The instance statistics. </p>
-- * period [MetricPeriod] <p>The time period for which you are requesting data.</p>
-- * startTime [timestamp] <p>The start time of the time period.</p>
-- * endTime [timestamp] <p>The end time of the time period.</p>
-- * instanceName [ResourceName] <p>The name of the instance for which you want to get metrics data.</p>
-- * unit [MetricUnit] <p>The unit. The list of valid values is below.</p>
-- * metricName [InstanceMetricName] <p>The metric name to get data about. </p>
-- Required key: instanceName
-- Required key: metricName
-- Required key: period
-- Required key: startTime
-- Required key: endTime
-- Required key: unit
-- Required key: statistics
-- @return GetInstanceMetricDataRequest structure as a key-value pair table
function M.GetInstanceMetricDataRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceMetricDataRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["statistics"] = args["statistics"],
		["period"] = args["period"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
		["instanceName"] = args["instanceName"],
		["unit"] = args["unit"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertGetInstanceMetricDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * regions [RegionList] <p>An array of key-value pairs containing information about your get regions request.</p>
-- @return GetRegionsResult structure as a key-value pair table
function M.GetRegionsResult(args)
	assert(args, "You must provide an argument table when creating GetRegionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["regions"] = args["regions"],
	}
	asserts.AssertGetRegionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IsVpcPeeredRequest structure as a key-value pair table
function M.IsVpcPeeredRequest(args)
	assert(args, "You must provide an argument table when creating IsVpcPeeredRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIsVpcPeeredRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
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
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return OpenInstancePublicPortsResult structure as a key-value pair table
function M.OpenInstancePublicPortsResult(args)
	assert(args, "You must provide an argument table when creating OpenInstancePublicPortsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertOpenInstancePublicPortsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
-- @return GetInstanceSnapshotsRequest structure as a key-value pair table
function M.GetInstanceSnapshotsRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceSnapshotsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetInstanceSnapshotsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations request.</p>
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
-- @return GetOperationsResult structure as a key-value pair table
function M.GetOperationsResult(args)
	assert(args, "You must provide an argument table when creating GetOperationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
		["nextPageToken"] = args["nextPageToken"],
	}
	asserts.AssertGetOperationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnpeerVpcRequest structure as a key-value pair table
function M.UnpeerVpcRequest(args)
	assert(args, "You must provide an argument table when creating UnpeerVpcRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnpeerVpcRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return UnpeerVpcResult structure as a key-value pair table
function M.UnpeerVpcResult(args)
	assert(args, "You must provide an argument table when creating UnpeerVpcResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertUnpeerVpcResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain request.</p>
-- @return DeleteDomainResult structure as a key-value pair table
function M.DeleteDomainResult(args)
	assert(args, "You must provide an argument table when creating DeleteDomainResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertDeleteDomainResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
-- @return GetKeyPairsRequest structure as a key-value pair table
function M.GetKeyPairsRequest(args)
	assert(args, "You must provide an argument table when creating GetKeyPairsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetKeyPairsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- * keyPairName [ResourceName] <p>The name of the key pair for which you want to import the public key.</p>
-- Required key: keyPairName
-- Required key: publicKeyBase64
-- @return ImportKeyPairRequest structure as a key-value pair table
function M.ImportKeyPairRequest(args)
	assert(args, "You must provide an argument table when creating ImportKeyPairRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["publicKeyBase64"] = args["publicKeyBase64"],
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertImportKeyPairRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>Describes metadata about the operation you just executed.</p>
-- @return PutInstancePublicPortsResult structure as a key-value pair table
function M.PutInstancePublicPortsResult(args)
	assert(args, "You must provide an argument table when creating PutInstancePublicPortsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertPutInstancePublicPortsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceSnapshotName [ResourceName] <p>The name of the snapshot to delete.</p>
-- Required key: instanceSnapshotName
-- @return DeleteInstanceSnapshotRequest structure as a key-value pair table
function M.DeleteInstanceSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceSnapshotName"] = args["instanceSnapshotName"],
	}
	asserts.AssertDeleteInstanceSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your get operations for resource request.</p>
-- * nextPageToken [string] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * nextPageCount [string] <p>(Deprecated) Returns the number of pages of results that remain.</p> <note> <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the API. It is now deprecated, and the API returns the <code>nextPageToken</code> parameter instead.</p> </note>
-- @return GetOperationsForResourceResult structure as a key-value pair table
function M.GetOperationsForResourceResult(args)
	assert(args, "You must provide an argument table when creating GetOperationsForResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
		["nextPageToken"] = args["nextPageToken"],
		["nextPageCount"] = args["nextPageCount"],
	}
	asserts.AssertGetOperationsForResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
-- * staticIps [StaticIpList] <p>An array of key-value pairs containing information about your get static IPs request.</p>
-- @return GetStaticIpsResult structure as a key-value pair table
function M.GetStaticIpsResult(args)
	assert(args, "You must provide an argument table when creating GetStaticIpsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["staticIps"] = args["staticIps"],
	}
	asserts.AssertGetStaticIpsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainEntries [DomainEntryList] <p>An array of key-value pairs containing information about the domain entries.</p>
-- * name [ResourceName] <p>The name of the domain.</p>
-- * resourceType [ResourceType] <p>The resource type. </p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the domain recordset (e.g., <code>arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE</code>).</p>
-- * createdAt [IsoDate] <p>The date when the domain recordset was created.</p>
-- * location [ResourceLocation] <p>The AWS Region and Availability Zones where the domain recordset was created.</p>
-- @return Domain structure as a key-value pair table
function M.Domain(args)
	assert(args, "You must provide an argument table when creating Domain")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainEntries"] = args["domainEntries"],
		["name"] = args["name"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["arn"] = args["arn"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertDomain(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [NonEmptyString] <p>The state of the Availability Zone.</p>
-- * zoneName [NonEmptyString] <p>The name of the Availability Zone. The format is <code>us-east-1a</code> (case-sensitive).</p>
-- @return AvailabilityZone structure as a key-value pair table
function M.AvailabilityZone(args)
	assert(args, "You must provide an argument table when creating AvailabilityZone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
		["zoneName"] = args["zoneName"],
	}
	asserts.AssertAvailabilityZone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cpuCount [integer] <p>The number of vCPUs the instance has.</p>
-- * disks [DiskList] <p>The disks attached to the instance.</p>
-- * ramSizeInGb [float] <p>The amount of RAM in GB on the instance (e.g., <code>1.0</code>).</p>
-- @return InstanceHardware structure as a key-value pair table
function M.InstanceHardware(args)
	assert(args, "You must provide an argument table when creating InstanceHardware")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cpuCount"] = args["cpuCount"],
		["disks"] = args["disks"],
		["ramSizeInGb"] = args["ramSizeInGb"],
	}
	asserts.AssertInstanceHardware(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PeerVpcRequest structure as a key-value pair table
function M.PeerVpcRequest(args)
	assert(args, "You must provide an argument table when creating PeerVpcRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPeerVpcRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return StopInstanceResult structure as a key-value pair table
function M.StopInstanceResult(args)
	assert(args, "You must provide an argument table when creating StopInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertStopInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The friendly name of the SSH key pair.</p>
-- * resourceType [ResourceType] <p>The resource type (usually <code>KeyPair</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the key pair (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>
-- * fingerprint [Base64] <p>The RSA fingerprint of the key pair.</p>
-- * createdAt [IsoDate] <p>The timestamp when the key pair was created (e.g., <code>1479816991.349</code>).</p>
-- * location [ResourceLocation] <p>The region name and Availability Zone where the key pair was created.</p>
-- @return KeyPair structure as a key-value pair table
function M.KeyPair(args)
	assert(args, "You must provide an argument table when creating KeyPair")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["arn"] = args["arn"],
		["fingerprint"] = args["fingerprint"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertKeyPair(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for paginating results from your get active names request.</p>
-- @return GetActiveNamesRequest structure as a key-value pair table
function M.GetActiveNamesRequest(args)
	assert(args, "You must provide an argument table when creating GetActiveNamesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetActiveNamesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance on which you're attempting to close the public ports.</p>
-- * portInfo [PortInfo] <p>Information about the public port you are trying to close.</p>
-- Required key: portInfo
-- Required key: instanceName
-- @return CloseInstancePublicPortsRequest structure as a key-value pair table
function M.CloseInstancePublicPortsRequest(args)
	assert(args, "You must provide an argument table when creating CloseInstancePublicPortsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
		["portInfo"] = args["portInfo"],
	}
	asserts.AssertCloseInstancePublicPortsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * toPort [Port] <p>The last port in the range.</p>
-- * fromPort [Port] <p>The first port in the range.</p>
-- * protocol [NetworkProtocol] <p>The protocol. </p>
-- @return PortInfo structure as a key-value pair table
function M.PortInfo(args)
	assert(args, "You must provide an argument table when creating PortInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["toPort"] = args["toPort"],
		["fromPort"] = args["fromPort"],
		["protocol"] = args["protocol"],
	}
	asserts.AssertPortInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainEntry [DomainEntry] <p>An array of key-value pairs containing information about the domain entry request.</p>
-- * domainName [DomainName] <p>The domain name (e.g., <code>example.com</code>) for which you want to create the domain entry.</p>
-- Required key: domainName
-- Required key: domainEntry
-- @return CreateDomainEntryRequest structure as a key-value pair table
function M.CreateDomainEntryRequest(args)
	assert(args, "You must provide an argument table when creating CreateDomainEntryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainEntry"] = args["domainEntry"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertCreateDomainEntryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the operation.</p>
-- @return CreateDomainEntryResult structure as a key-value pair table
function M.CreateDomainEntryResult(args)
	assert(args, "You must provide an argument table when creating CreateDomainEntryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertCreateDomainEntryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance.</p>
-- Required key: instanceName
-- @return GetInstanceRequest structure as a key-value pair table
function M.GetInstanceRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertGetInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeInactive [boolean] <p>A Boolean value that indicates whether to include inactive bundle results in your request.</p>
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get bundles request.</p>
-- @return GetBundlesRequest structure as a key-value pair table
function M.GetBundlesRequest(args)
	assert(args, "You must provide an argument table when creating GetBundlesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["includeInactive"] = args["includeInactive"],
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetBundlesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return ImportKeyPairResult structure as a key-value pair table
function M.ImportKeyPairResult(args)
	assert(args, "You must provide an argument table when creating ImportKeyPairResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertImportKeyPairResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance to reboot.</p>
-- Required key: instanceName
-- @return RebootInstanceRequest structure as a key-value pair table
function M.RebootInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RebootInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertRebootInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance for which you want to open the public ports.</p>
-- * portInfo [PortInfo] <p>An array of key-value pairs containing information about the port mappings.</p>
-- Required key: portInfo
-- Required key: instanceName
-- @return OpenInstancePublicPortsRequest structure as a key-value pair table
function M.OpenInstancePublicPortsRequest(args)
	assert(args, "You must provide an argument table when creating OpenInstancePublicPortsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
		["portInfo"] = args["portInfo"],
	}
	asserts.AssertOpenInstancePublicPortsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * group [NonEmptyString] <p>The group name of the blueprint (e.g., <code>amazon-linux</code>).</p>
-- * description [string] <p>The description of the blueprint.</p>
-- * productUrl [string] <p>The product URL to learn more about the image or blueprint.</p>
-- * version [string] <p>The version number of the operating system, application, or stack (e.g., <code>2016.03.0</code>).</p>
-- * licenseUrl [string] <p>The end-user license agreement URL for the image or blueprint.</p>
-- * versionCode [string] <p>The version code.</p>
-- * blueprintId [NonEmptyString] <p>The ID for the virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>).</p>
-- * minPower [integer] <p>The minimum machine size required to run this blueprint. <code>0</code> indicates that the blueprint runs on all instances.</p>
-- * type [BlueprintType] <p>The type of the blueprint (e.g., <code>os</code> or <code>app</code>).</p>
-- * isActive [boolean] <p>A Boolean value indicating whether the blueprint is active. When you update your blueprints, you will inactivate old blueprints and keep the most recent versions active.</p>
-- * name [ResourceName] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
-- @return Blueprint structure as a key-value pair table
function M.Blueprint(args)
	assert(args, "You must provide an argument table when creating Blueprint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["group"] = args["group"],
		["description"] = args["description"],
		["productUrl"] = args["productUrl"],
		["version"] = args["version"],
		["licenseUrl"] = args["licenseUrl"],
		["versionCode"] = args["versionCode"],
		["blueprintId"] = args["blueprintId"],
		["minPower"] = args["minPower"],
		["type"] = args["type"],
		["isActive"] = args["isActive"],
		["name"] = args["name"],
	}
	asserts.AssertBlueprint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get instances request.</p>
-- @return GetInstancesRequest structure as a key-value pair table
function M.GetInstancesRequest(args)
	assert(args, "You must provide an argument table when creating GetInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * availabilityZone [string] <p>The Availability Zone. Follows the format <code>us-east-1a</code> (case-sensitive).</p>
-- * regionName [RegionName] <p>The AWS Region name.</p>
-- @return ResourceLocation structure as a key-value pair table
function M.ResourceLocation(args)
	assert(args, "You must provide an argument table when creating ResourceLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["availabilityZone"] = args["availabilityZone"],
		["regionName"] = args["regionName"],
	}
	asserts.AssertResourceLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The domain name to manage (e.g., <code>example.com</code>).</p> <note> <p>You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain.</p> </note>
-- Required key: domainName
-- @return CreateDomainRequest structure as a key-value pair table
function M.CreateDomainRequest(args)
	assert(args, "You must provide an argument table when creating CreateDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertCreateDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [string] <p>A friendly name for the bundle (e.g., <code>Micro</code>).</p>
-- * power [integer] <p>The power of the bundle (e.g., <code>500</code>).</p>
-- * price [float] <p>The price in US dollars (e.g., <code>5.0</code>).</p>
-- * ramSizeInGb [float] <p>The amount of RAM in GB (e.g., <code>2.0</code>).</p>
-- * diskSizeInGb [integer] <p>The size of the SSD (e.g., <code>30</code>).</p>
-- * transferPerMonthInGb [integer] <p>The data transfer rate per month in GB (e.g., <code>2000</code>).</p>
-- * cpuCount [integer] <p>The number of vCPUs included in the bundle (e.g., <code>2</code>).</p>
-- * instanceType [string] <p>The Amazon EC2 instance type (e.g., <code>t2.micro</code>).</p>
-- * isActive [boolean] <p>A Boolean value indicating whether the bundle is active.</p>
-- * bundleId [NonEmptyString] <p>The bundle ID (e.g., <code>micro_1_0</code>).</p>
-- @return Bundle structure as a key-value pair table
function M.Bundle(args)
	assert(args, "You must provide an argument table when creating Bundle")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["power"] = args["power"],
		["price"] = args["price"],
		["ramSizeInGb"] = args["ramSizeInGb"],
		["diskSizeInGb"] = args["diskSizeInGb"],
		["transferPerMonthInGb"] = args["transferPerMonthInGb"],
		["cpuCount"] = args["cpuCount"],
		["instanceType"] = args["instanceType"],
		["isActive"] = args["isActive"],
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertBundle(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance request.</p>
-- @return DeleteInstanceResult structure as a key-value pair table
function M.DeleteInstanceResult(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return InvalidInputException structure as a key-value pair table
function M.InvalidInputException(args)
	assert(args, "You must provide an argument table when creating InvalidInputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return AccountSetupInProgressException structure as a key-value pair table
function M.AccountSetupInProgressException(args)
	assert(args, "You must provide an argument table when creating AccountSetupInProgressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertAccountSetupInProgressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the results of your delete domain entry request.</p>
-- @return DeleteDomainEntryResult structure as a key-value pair table
function M.DeleteDomainEntryResult(args)
	assert(args, "You must provide an argument table when creating DeleteDomainEntryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertDeleteDomainEntryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyPairName [ResourceName] <p>The name for your new key pair.</p>
-- Required key: keyPairName
-- @return CreateKeyPairRequest structure as a key-value pair table
function M.CreateKeyPairRequest(args)
	assert(args, "You must provide an argument table when creating CreateKeyPairRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertCreateKeyPairRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainEntry [DomainEntry] <p>An array of key-value pairs containing information about your domain entries.</p>
-- * domainName [DomainName] <p>The name of the domain entry to delete.</p>
-- Required key: domainName
-- Required key: domainEntry
-- @return DeleteDomainEntryRequest structure as a key-value pair table
function M.DeleteDomainEntryRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDomainEntryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainEntry"] = args["domainEntry"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteDomainEntryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [DomainEntryType] <p>The type of domain entry (e.g., <code>SOA</code> or <code>NS</code>).</p>
-- * options [DomainEntryOptions] <p>The options for the domain entry.</p>
-- * target [string] <p>The target AWS name server (e.g., <code>ns-111.awsdns-22.com.</code>).</p>
-- * id [NonEmptyString] <p>The ID of the domain recordset entry.</p>
-- * name [DomainName] <p>The name of the domain.</p>
-- @return DomainEntry structure as a key-value pair table
function M.DomainEntry(args)
	assert(args, "You must provide an argument table when creating DomainEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["options"] = args["options"],
		["target"] = args["target"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertDomainEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIpName [ResourceName] <p>The name of the static IP in Lightsail.</p>
-- Required key: staticIpName
-- @return GetStaticIpRequest structure as a key-value pair table
function M.GetStaticIpRequest(args)
	assert(args, "You must provide an argument table when creating GetStaticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIpName"] = args["staticIpName"],
	}
	asserts.AssertGetStaticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * publicKeyBase64 [Base64] <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
-- * privateKeyBase64 [Base64] <p>A base64-encoded RSA private key.</p>
-- @return DownloadDefaultKeyPairResult structure as a key-value pair table
function M.DownloadDefaultKeyPairResult(args)
	assert(args, "You must provide an argument table when creating DownloadDefaultKeyPairResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["publicKeyBase64"] = args["publicKeyBase64"],
		["privateKeyBase64"] = args["privateKeyBase64"],
	}
	asserts.AssertDownloadDefaultKeyPairResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your create instances from snapshot request.</p>
-- @return CreateInstancesFromSnapshotResult structure as a key-value pair table
function M.CreateInstancesFromSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateInstancesFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateInstancesFromSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DownloadDefaultKeyPairRequest structure as a key-value pair table
function M.DownloadDefaultKeyPairRequest(args)
	assert(args, "You must provide an argument table when creating DownloadDefaultKeyPairRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDownloadDefaultKeyPairRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * isPeered [boolean] <p>Returns <code>true</code> if the Lightsail VPC is peered; otherwise, <code>false</code>.</p>
-- @return IsVpcPeeredResult structure as a key-value pair table
function M.IsVpcPeeredResult(args)
	assert(args, "You must provide an argument table when creating IsVpcPeeredResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["isPeered"] = args["isPeered"],
	}
	asserts.AssertIsVpcPeeredResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The name of the static IP (e.g., <code>StaticIP-Virginia-EXAMPLE</code>).</p>
-- * resourceType [ResourceType] <p>The resource type (usually <code>StaticIp</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * attachedTo [ResourceName] <p>The instance where the static IP is attached (e.g., <code>Amazon_Linux-1GB-Virginia-1</code>).</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the static IP (e.g., <code>arn:aws:lightsail:us-east-1:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>
-- * isAttached [boolean] <p>A Boolean value indicating whether the static IP is attached.</p>
-- * ipAddress [IpAddress] <p>The static IP address.</p>
-- * createdAt [IsoDate] <p>The timestamp when the static IP was created (e.g., <code>1479735304.222</code>).</p>
-- * location [ResourceLocation] <p>The region and Availability Zone where the static IP was created.</p>
-- @return StaticIp structure as a key-value pair table
function M.StaticIp(args)
	assert(args, "You must provide an argument table when creating StaticIp")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["attachedTo"] = args["attachedTo"],
		["arn"] = args["arn"],
		["isAttached"] = args["isAttached"],
		["ipAddress"] = args["ipAddress"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertStaticIp(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance to delete.</p>
-- Required key: instanceName
-- @return DeleteInstanceRequest structure as a key-value pair table
function M.DeleteInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertDeleteInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The name of the instance.</p>
-- Required key: instanceName
-- @return GetInstancePortStatesRequest structure as a key-value pair table
function M.GetInstancePortStatesRequest(args)
	assert(args, "You must provide an argument table when creating GetInstancePortStatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertGetInstancePortStatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs that contains information about the operation.</p>
-- @return CloseInstancePublicPortsResult structure as a key-value pair table
function M.CloseInstancePublicPortsResult(args)
	assert(args, "You must provide an argument table when creating CloseInstancePublicPortsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertCloseInstancePublicPortsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * protocol [InstanceAccessProtocol] <p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>
-- * instanceName [ResourceName] <p>The name of the instance to access.</p>
-- Required key: instanceName
-- @return GetInstanceAccessDetailsRequest structure as a key-value pair table
function M.GetInstanceAccessDetailsRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceAccessDetailsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["protocol"] = args["protocol"],
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertGetInstanceAccessDetailsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceSnapshot [InstanceSnapshot] <p>An array of key-value pairs containing information about the results of your get instance snapshot request.</p>
-- @return GetInstanceSnapshotResult structure as a key-value pair table
function M.GetInstanceSnapshotResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceSnapshot"] = args["instanceSnapshot"],
	}
	asserts.AssertGetInstanceSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get operations request.</p>
-- @return GetOperationsRequest structure as a key-value pair table
function M.GetOperationsRequest(args)
	assert(args, "You must provide an argument table when creating GetOperationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetOperationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- * bundles [BundleList] <p>An array of key-value pairs that contains information about the available bundles.</p>
-- @return GetBundlesResult structure as a key-value pair table
function M.GetBundlesResult(args)
	assert(args, "You must provide an argument table when creating GetBundlesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["bundles"] = args["bundles"],
	}
	asserts.AssertGetBundlesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * monthlyTransfer [MonthlyTransfer] <p>The amount of data in GB allocated for monthly data transfers.</p>
-- * ports [InstancePortInfoList] <p>An array of key-value pairs containing information about the ports on the instance.</p>
-- @return InstanceNetworking structure as a key-value pair table
function M.InstanceNetworking(args)
	assert(args, "You must provide an argument table when creating InstanceNetworking")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["monthlyTransfer"] = args["monthlyTransfer"],
		["ports"] = args["ports"],
	}
	asserts.AssertInstanceNetworking(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operation.</p>
-- @return UpdateDomainEntryResult structure as a key-value pair table
function M.UpdateDomainEntryResult(args)
	assert(args, "You must provide an argument table when creating UpdateDomainEntryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertUpdateDomainEntryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return ServiceException structure as a key-value pair table
function M.ServiceException(args)
	assert(args, "You must provide an argument table when creating ServiceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertServiceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operation [Operation] <p>An array of key-value pairs containing information about the results of your delete key pair request.</p>
-- @return DeleteKeyPairResult structure as a key-value pair table
function M.DeleteKeyPairResult(args)
	assert(args, "You must provide an argument table when creating DeleteKeyPairResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operation"] = args["operation"],
	}
	asserts.AssertDeleteKeyPairResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the results of your delete instance snapshot request.</p>
-- @return DeleteInstanceSnapshotResult structure as a key-value pair table
function M.DeleteInstanceSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteInstanceSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domains [DomainList] <p>An array of key-value pairs containing information about each of the domain entries in the user's account.</p>
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- @return GetDomainsResult structure as a key-value pair table
function M.GetDomainsResult(args)
	assert(args, "You must provide an argument table when creating GetDomainsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domains"] = args["domains"],
		["nextPageToken"] = args["nextPageToken"],
	}
	asserts.AssertGetDomainsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeAvailabilityZones [boolean] <p>A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., <code>us-east-1a</code>.</p>
-- @return GetRegionsRequest structure as a key-value pair table
function M.GetRegionsRequest(args)
	assert(args, "You must provide an argument table when creating GetRegionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["includeAvailabilityZones"] = args["includeAvailabilityZones"],
	}
	asserts.AssertGetRegionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get active names request.</p>
-- * activeNames [StringList] <p>The list of active names returned by the get active names request.</p>
-- @return GetActiveNamesResult structure as a key-value pair table
function M.GetActiveNamesResult(args)
	assert(args, "You must provide an argument table when creating GetActiveNamesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["activeNames"] = args["activeNames"],
	}
	asserts.AssertGetActiveNamesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIpName [ResourceName] <p>The name of the static IP address.</p>
-- Required key: staticIpName
-- @return AllocateStaticIpRequest structure as a key-value pair table
function M.AllocateStaticIpRequest(args)
	assert(args, "You must provide an argument table when creating AllocateStaticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIpName"] = args["staticIpName"],
	}
	asserts.AssertAllocateStaticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An array of key-value pairs containing information about the static IP address you allocated.</p>
-- @return AllocateStaticIpResult structure as a key-value pair table
function M.AllocateStaticIpResult(args)
	assert(args, "You must provide an argument table when creating AllocateStaticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertAllocateStaticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeInactive [boolean] <p>A Boolean value indicating whether to include inactive results in your request.</p>
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get blueprints request.</p>
-- @return GetBlueprintsRequest structure as a key-value pair table
function M.GetBlueprintsRequest(args)
	assert(args, "You must provide an argument table when creating GetBlueprintsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["includeInactive"] = args["includeInactive"],
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetBlueprintsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get instance snapshots request.</p>
-- * instanceSnapshots [InstanceSnapshotList] <p>An array of key-value pairs containing information about the results of your get instance snapshots request.</p>
-- @return GetInstanceSnapshotsResult structure as a key-value pair table
function M.GetInstanceSnapshotsResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceSnapshotsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["instanceSnapshots"] = args["instanceSnapshots"],
	}
	asserts.AssertGetInstanceSnapshotsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return AccessDeniedException structure as a key-value pair table
function M.AccessDeniedException(args)
	assert(args, "You must provide an argument table when creating AccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertAccessDeniedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * toPort [Port] <p>The last port in the range.</p>
-- * fromPort [Port] <p>The first port in the range.</p>
-- * state [PortState] <p>Specifies whether the instance port is <code>open</code> or <code>closed</code>.</p>
-- * protocol [NetworkProtocol] <p>The protocol being used. Can be one of the following.</p> <ul> <li> <p> <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and error-checked delivery of streamed data between applications running on hosts communicating by an IP network. If you have an application that doesn't require reliable data stream service, use UDP instead.</p> </li> <li> <p> <code>all</code> - All transport layer protocol types. For more general information, see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on Wikipedia.</p> </li> <li> <p> <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior communications are not required to set up transmission channels or data paths. Applications that don't require reliable data stream service can use UDP, which provides a connectionless datagram service that emphasizes reduced latency over reliability. If you do require reliable data stream service, use TCP instead.</p> </li> </ul>
-- @return InstancePortState structure as a key-value pair table
function M.InstancePortState(args)
	assert(args, "You must provide an argument table when creating InstancePortState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["toPort"] = args["toPort"],
		["fromPort"] = args["fromPort"],
		["state"] = args["state"],
		["protocol"] = args["protocol"],
	}
	asserts.AssertInstancePortState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
-- @return GetStaticIpsRequest structure as a key-value pair table
function M.GetStaticIpsRequest(args)
	assert(args, "You must provide an argument table when creating GetStaticIpsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetStaticIpsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * docs [string] 
-- * message [string] 
-- * code [string] 
-- * tip [string] 
-- @return OperationFailureException structure as a key-value pair table
function M.OperationFailureException(args)
	assert(args, "You must provide an argument table when creating OperationFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["docs"] = args["docs"],
		["message"] = args["message"],
		["code"] = args["code"],
		["tip"] = args["tip"],
	}
	asserts.AssertOperationFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get key pairs request.</p>
-- * keyPairs [KeyPairList] <p>An array of key-value pairs containing information about the key pairs.</p>
-- @return GetKeyPairsResult structure as a key-value pair table
function M.GetKeyPairsResult(args)
	assert(args, "You must provide an argument table when creating GetKeyPairsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["keyPairs"] = args["keyPairs"],
	}
	asserts.AssertGetKeyPairsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * metricData [MetricDatapointList] <p>An array of key-value pairs containing information about the results of your get instance metric data request.</p>
-- * metricName [InstanceMetricName] <p>The metric name to return data for. </p>
-- @return GetInstanceMetricDataResult structure as a key-value pair table
function M.GetInstanceMetricDataResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceMetricDataResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["metricData"] = args["metricData"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertGetInstanceMetricDataResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [Domain] <p>An array of key-value pairs containing information about your get domain request.</p>
-- @return GetDomainResult structure as a key-value pair table
function M.GetDomainResult(args)
	assert(args, "You must provide an argument table when creating GetDomainResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
	}
	asserts.AssertGetDomainResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [InstanceState] <p>The state of the instance.</p>
-- @return GetInstanceStateResult structure as a key-value pair table
function M.GetInstanceStateResult(args)
	assert(args, "You must provide an argument table when creating GetInstanceStateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
	}
	asserts.AssertGetInstanceStateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * staticIpName [ResourceName] <p>The name of the static IP.</p>
-- * instanceName [ResourceName] <p>The instance name to which you want to attach the static IP address.</p>
-- Required key: staticIpName
-- Required key: instanceName
-- @return AttachStaticIpRequest structure as a key-value pair table
function M.AttachStaticIpRequest(args)
	assert(args, "You must provide an argument table when creating AttachStaticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["staticIpName"] = args["staticIpName"],
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertAttachStaticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userData [string] <p>You can create a launch script that configures a server with additional user data. For example, <code>apt-get –y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps">Dev Guide</a>.</p> </note>
-- * availabilityZone [string] <p>The Availability Zone where you want to create your instances. Use the following formatting: <code>us-east-1a</code> (case sensitive). You can get a list of availability zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include availability zones</code> parameter to your request.</p>
-- * instanceNames [StringList] <p>The names for your new instances.</p>
-- * instanceSnapshotName [ResourceName] <p>The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.</p>
-- * bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
-- * keyPairName [ResourceName] <p>The name for your key pair.</p>
-- Required key: instanceNames
-- Required key: availabilityZone
-- Required key: instanceSnapshotName
-- Required key: bundleId
-- @return CreateInstancesFromSnapshotRequest structure as a key-value pair table
function M.CreateInstancesFromSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstancesFromSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["userData"] = args["userData"],
		["availabilityZone"] = args["availabilityZone"],
		["instanceNames"] = args["instanceNames"],
		["instanceSnapshotName"] = args["instanceSnapshotName"],
		["bundleId"] = args["bundleId"],
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertCreateInstancesFromSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your get domains request.</p>
-- @return GetDomainsRequest structure as a key-value pair table
function M.GetDomainsRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetDomainsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [ResourceName] <p>The Lightsail instance on which to base your snapshot.</p>
-- * instanceSnapshotName [ResourceName] <p>The name for your new snapshot.</p>
-- Required key: instanceSnapshotName
-- Required key: instanceName
-- @return CreateInstanceSnapshotRequest structure as a key-value pair table
function M.CreateInstanceSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstanceSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
		["instanceSnapshotName"] = args["instanceSnapshotName"],
	}
	asserts.AssertCreateInstanceSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
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
	for header,value in pairs(GetDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetDomainSync(GetDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainAsync(GetDomainRequest, function(response, error_message)
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
	for header,value in pairs(GetKeyPairRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetKeyPairSync(GetKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairAsync(GetKeyPairRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceMetricDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceMetricDataSync(GetInstanceMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceMetricDataAsync(GetInstanceMetricDataRequest, function(response, error_message)
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
	for header,value in pairs(GetStaticIpsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetStaticIpsSync(GetStaticIpsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpsAsync(GetStaticIpsRequest, function(response, error_message)
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
	for header,value in pairs(GetOperationsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetOperationsForResourceSync(GetOperationsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsForResourceAsync(GetOperationsForResourceRequest, function(response, error_message)
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
	for header,value in pairs(CloseInstancePublicPortsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CloseInstancePublicPortsSync(CloseInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloseInstancePublicPortsAsync(CloseInstancePublicPortsRequest, function(response, error_message)
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
	for header,value in pairs(GetActiveNamesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetActiveNamesSync(GetActiveNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetActiveNamesAsync(GetActiveNamesRequest, function(response, error_message)
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
	for header,value in pairs(GetInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstancesSync(GetInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancesAsync(GetInstancesRequest, function(response, error_message)
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
	for header,value in pairs(PutInstancePublicPortsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.PutInstancePublicPortsSync(PutInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutInstancePublicPortsAsync(PutInstancePublicPortsRequest, function(response, error_message)
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
	for header,value in pairs(DeleteInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteInstanceSync(DeleteInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceAsync(DeleteInstanceRequest, function(response, error_message)
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
	for header,value in pairs(AttachStaticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.AttachStaticIpSync(AttachStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachStaticIpAsync(AttachStaticIpRequest, function(response, error_message)
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
	for header,value in pairs(GetStaticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetStaticIpSync(GetStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpAsync(GetStaticIpRequest, function(response, error_message)
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
	for header,value in pairs(CreateKeyPairRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateKeyPairSync(CreateKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateKeyPairAsync(CreateKeyPairRequest, function(response, error_message)
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
	for header,value in pairs(CreateDomainEntryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateDomainEntrySync(CreateDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainEntryAsync(CreateDomainEntryRequest, function(response, error_message)
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
	for header,value in pairs(ImportKeyPairRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.ImportKeyPairSync(ImportKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportKeyPairAsync(ImportKeyPairRequest, function(response, error_message)
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
	for header,value in pairs(CreateInstancesFromSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateInstancesFromSnapshotSync(CreateInstancesFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesFromSnapshotAsync(CreateInstancesFromSnapshotRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceSnapshotSync(GetInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotAsync(GetInstanceSnapshotRequest, function(response, error_message)
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
	for header,value in pairs(GetOperationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetOperationSync(GetOperationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationAsync(GetOperationRequest, function(response, error_message)
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
	for header,value in pairs(DeleteInstanceSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteInstanceSnapshotSync(DeleteInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceSnapshotAsync(DeleteInstanceSnapshotRequest, function(response, error_message)
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
	for header,value in pairs(OpenInstancePublicPortsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.OpenInstancePublicPortsSync(OpenInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.OpenInstancePublicPortsAsync(OpenInstancePublicPortsRequest, function(response, error_message)
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
	for header,value in pairs(StartInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.StartInstanceSync(StartInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartInstanceAsync(StartInstanceRequest, function(response, error_message)
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
	for header,value in pairs(UpdateDomainEntryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.UpdateDomainEntrySync(UpdateDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainEntryAsync(UpdateDomainEntryRequest, function(response, error_message)
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
	for header,value in pairs(GetInstancePortStatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstancePortStatesSync(GetInstancePortStatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancePortStatesAsync(GetInstancePortStatesRequest, function(response, error_message)
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
	for header,value in pairs(GetBlueprintsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetBlueprintsSync(GetBlueprintsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBlueprintsAsync(GetBlueprintsRequest, function(response, error_message)
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
	for header,value in pairs(CreateDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateDomainSync(CreateDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(CreateDomainRequest, function(response, error_message)
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
	for header,value in pairs(DownloadDefaultKeyPairRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DownloadDefaultKeyPairSync(DownloadDefaultKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DownloadDefaultKeyPairAsync(DownloadDefaultKeyPairRequest, function(response, error_message)
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
	for header,value in pairs(DeleteDomainEntryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteDomainEntrySync(DeleteDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainEntryAsync(DeleteDomainEntryRequest, function(response, error_message)
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
	for header,value in pairs(GetOperationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetOperationsSync(GetOperationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsAsync(GetOperationsRequest, function(response, error_message)
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
	for header,value in pairs(GetBundlesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetBundlesSync(GetBundlesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBundlesAsync(GetBundlesRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceSync(GetInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAsync(GetInstanceRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceStateSync(GetInstanceStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceStateAsync(GetInstanceStateRequest, function(response, error_message)
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
	for header,value in pairs(CreateInstanceSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateInstanceSnapshotSync(CreateInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceSnapshotAsync(CreateInstanceSnapshotRequest, function(response, error_message)
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
	for header,value in pairs(AllocateStaticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.AllocateStaticIpSync(AllocateStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocateStaticIpAsync(AllocateStaticIpRequest, function(response, error_message)
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
	for header,value in pairs(GetKeyPairsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetKeyPairsSync(GetKeyPairsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairsAsync(GetKeyPairsRequest, function(response, error_message)
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
	for header,value in pairs(RebootInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.RebootInstanceSync(RebootInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootInstanceAsync(RebootInstanceRequest, function(response, error_message)
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
	for header,value in pairs(GetRegionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetRegionsSync(GetRegionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegionsAsync(GetRegionsRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceSnapshotsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceSnapshotsSync(GetInstanceSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotsAsync(GetInstanceSnapshotsRequest, function(response, error_message)
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
	for header,value in pairs(StopInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.StopInstanceSync(StopInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopInstanceAsync(StopInstanceRequest, function(response, error_message)
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
	for header,value in pairs(GetInstanceAccessDetailsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetInstanceAccessDetailsSync(GetInstanceAccessDetailsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAccessDetailsAsync(GetInstanceAccessDetailsRequest, function(response, error_message)
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
	for header,value in pairs(GetDomainsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.GetDomainsSync(GetDomainsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainsAsync(GetDomainsRequest, function(response, error_message)
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
	for header,value in pairs(PeerVpcRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.PeerVpcSync(PeerVpcRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PeerVpcAsync(PeerVpcRequest, function(response, error_message)
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
	for header,value in pairs(ReleaseStaticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.ReleaseStaticIpSync(ReleaseStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReleaseStaticIpAsync(ReleaseStaticIpRequest, function(response, error_message)
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
	for header,value in pairs(IsVpcPeeredRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.IsVpcPeeredSync(IsVpcPeeredRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IsVpcPeeredAsync(IsVpcPeeredRequest, function(response, error_message)
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
	for header,value in pairs(DetachStaticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DetachStaticIpSync(DetachStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachStaticIpAsync(DetachStaticIpRequest, function(response, error_message)
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
	for header,value in pairs(CreateInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateInstancesSync(CreateInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesAsync(CreateInstancesRequest, function(response, error_message)
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
	for header,value in pairs(UnpeerVpcRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.UnpeerVpcSync(UnpeerVpcRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnpeerVpcAsync(UnpeerVpcRequest, function(response, error_message)
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
	for header,value in pairs(DeleteDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteDomainSync(DeleteDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(DeleteDomainRequest, function(response, error_message)
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
	for header,value in pairs(DeleteKeyPairRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteKeyPairSync(DeleteKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteKeyPairAsync(DeleteKeyPairRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
