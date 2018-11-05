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

keys.RebootRelationalDatabaseRequest = { ["relationalDatabaseName"] = true, nil }

function asserts.AssertRebootRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootRelationalDatabaseRequest[k], "RebootRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database to reboot.</p>
-- Required key: relationalDatabaseName
-- @return RebootRelationalDatabaseRequest structure as a key-value pair table
function M.RebootRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating RebootRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
	}
	asserts.AssertRebootRelationalDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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

keys.InstanceSnapshot = { ["fromInstanceName"] = true, ["fromAttachedDisks"] = true, ["name"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["fromInstanceArn"] = true, ["state"] = true, ["arn"] = true, ["progress"] = true, ["fromBundleId"] = true, ["fromBlueprintId"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertInstanceSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSnapshot to be of type 'table'")
	if struct["fromInstanceName"] then asserts.AssertResourceName(struct["fromInstanceName"]) end
	if struct["fromAttachedDisks"] then asserts.AssertDiskList(struct["fromAttachedDisks"]) end
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
-- * fromAttachedDisks [DiskList] <p>An array of disk objects containing information about all block storage disks.</p>
-- * name [ResourceName] <p>The name of the snapshot.</p>
-- * sizeInGb [integer] <p>The size in GB of the SSD.</p>
-- * resourceType [ResourceType] <p>The type of resource (usually <code>InstanceSnapshot</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * fromInstanceArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., <code>arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>
-- * state [InstanceSnapshotState] <p>The state the snapshot is in.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the snapshot (e.g., <code>arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>
-- * progress [string] <p>The progress of the snapshot.</p>
-- * fromBundleId [string] <p>The bundle ID from which you created the snapshot (e.g., <code>micro_1_0</code>).</p>
-- * fromBlueprintId [string] <p>The blueprint ID from which you created the snapshot (e.g., <code>os_debian_8_3</code>). A blueprint is a virtual private server (or <i>instance</i>) image used to create instances quickly.</p>
-- * createdAt [IsoDate] <p>The timestamp when the snapshot was created (e.g., <code>1479907467.024</code>).</p>
-- * location [ResourceLocation] <p>The region name and Availability Zone where you created the snapshot.</p>
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
		["fromAttachedDisks"] = args["fromAttachedDisks"],
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

keys.GetRelationalDatabaseParametersResult = { ["nextPageToken"] = true, ["parameters"] = true, nil }

function asserts.AssertGetRelationalDatabaseParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseParametersResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["parameters"] then asserts.AssertRelationalDatabaseParameterList(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseParametersResult[k], "GetRelationalDatabaseParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get static IPs request.</p>
-- * parameters [RelationalDatabaseParameterList] <p>An object describing the result of your get relational database parameters request.</p>
-- @return GetRelationalDatabaseParametersResult structure as a key-value pair table
function M.GetRelationalDatabaseParametersResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertGetRelationalDatabaseParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerTlsCertificateSummary = { ["name"] = true, ["isAttached"] = true, nil }

function asserts.AssertLoadBalancerTlsCertificateSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTlsCertificateSummary to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["isAttached"] then asserts.Assertboolean(struct["isAttached"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTlsCertificateSummary[k], "LoadBalancerTlsCertificateSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTlsCertificateSummary
-- <p>Provides a summary of SSL/TLS certificate metadata.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The name of the SSL/TLS certificate.</p>
-- * isAttached [boolean] <p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load balancer.</p>
-- @return LoadBalancerTlsCertificateSummary structure as a key-value pair table
function M.LoadBalancerTlsCertificateSummary(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTlsCertificateSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["isAttached"] = args["isAttached"],
	}
	asserts.AssertLoadBalancerTlsCertificateSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertDeleteRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRelationalDatabaseResult[k], "DeleteRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your delete relational database request.</p>
-- @return DeleteRelationalDatabaseResult structure as a key-value pair table
function M.DeleteRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating DeleteRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteRelationalDatabaseResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerRequest = { ["instancePort"] = true, ["certificateName"] = true, ["certificateDomainName"] = true, ["healthCheckPath"] = true, ["certificateAlternativeNames"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertCreateLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["instancePort"], "Expected key instancePort to exist in table")
	if struct["instancePort"] then asserts.AssertPort(struct["instancePort"]) end
	if struct["certificateName"] then asserts.AssertResourceName(struct["certificateName"]) end
	if struct["certificateDomainName"] then asserts.AssertDomainName(struct["certificateDomainName"]) end
	if struct["healthCheckPath"] then asserts.Assertstring(struct["healthCheckPath"]) end
	if struct["certificateAlternativeNames"] then asserts.AssertDomainNameList(struct["certificateAlternativeNames"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerRequest[k], "CreateLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instancePort [Port] <p>The instance port where you're creating your load balancer.</p>
-- * certificateName [ResourceName] <p>The name of the SSL/TLS certificate.</p> <p>If you specify <code>certificateName</code>, then <code>certificateDomainName</code> is required (and vice-versa).</p>
-- * certificateDomainName [DomainName] <p>The domain name with which your certificate is associated (e.g., <code>example.com</code>).</p> <p>If you specify <code>certificateDomainName</code>, then <code>certificateName</code> is required (and vice-versa).</p>
-- * healthCheckPath [string] <p>The path you provided to perform the load balancer health check. If you didn't specify a health check path, Lightsail uses the root path of your website (e.g., <code>"/"</code>).</p> <p>You may want to specify a custom health check path other than the root of your application if your home page loads slowly or has a lot of media or scripting on it.</p>
-- * certificateAlternativeNames [DomainNameList] <p>The optional alternative domains and subdomains to use with your SSL/TLS certificate (e.g., <code>www.example.com</code>, <code>example.com</code>, <code>m.example.com</code>, <code>blog.example.com</code>).</p>
-- * loadBalancerName [ResourceName] <p>The name of your load balancer.</p>
-- Required key: loadBalancerName
-- Required key: instancePort
-- @return CreateLoadBalancerRequest structure as a key-value pair table
function M.CreateLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instancePort"] = args["instancePort"],
		["certificateName"] = args["certificateName"],
		["certificateDomainName"] = args["certificateDomainName"],
		["healthCheckPath"] = args["healthCheckPath"],
		["certificateAlternativeNames"] = args["certificateAlternativeNames"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertCreateLoadBalancerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRelationalDatabaseFromSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateRelationalDatabaseFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseFromSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseFromSnapshotResult[k], "CreateRelationalDatabaseFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseFromSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your create relational database from snapshot request.</p>
-- @return CreateRelationalDatabaseFromSnapshotResult structure as a key-value pair table
function M.CreateRelationalDatabaseFromSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateRelationalDatabaseFromSnapshotResult(all_args)
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
-- * userData [string] <p>A launch script you can create that configures a server with additional user data. For example, you might want to run <code>apt-get -y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image">Dev Guide</a>.</p> </note>
-- * availabilityZone [string] <p>The Availability Zone in which to create your instance. Use the following format: <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include Availability Zones</code> parameter to your request.</p>
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

keys.AttachInstancesToLoadBalancerRequest = { ["instanceNames"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertAttachInstancesToLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachInstancesToLoadBalancerRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then asserts.AssertResourceNameList(struct["instanceNames"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachInstancesToLoadBalancerRequest[k], "AttachInstancesToLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachInstancesToLoadBalancerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceNames [ResourceNameList] <p>An array of strings representing the instance name(s) you want to attach to your load balancer.</p> <p>An instance must be <code>running</code> before you can attach it to your load balancer.</p> <p>There are no additional limits on the number of instances you can attach to your load balancer, aside from the limit of Lightsail instances you can create in your account (20).</p>
-- * loadBalancerName [ResourceName] <p>The name of the load balancer.</p>
-- Required key: loadBalancerName
-- Required key: instanceNames
-- @return AttachInstancesToLoadBalancerRequest structure as a key-value pair table
function M.AttachInstancesToLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating AttachInstancesToLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceNames"] = args["instanceNames"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertAttachInstancesToLoadBalancerRequest(all_args)
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

keys.DeleteRelationalDatabaseSnapshotRequest = { ["relationalDatabaseSnapshotName"] = true, nil }

function asserts.AssertDeleteRelationalDatabaseSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRelationalDatabaseSnapshotRequest to be of type 'table'")
	assert(struct["relationalDatabaseSnapshotName"], "Expected key relationalDatabaseSnapshotName to exist in table")
	if struct["relationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["relationalDatabaseSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRelationalDatabaseSnapshotRequest[k], "DeleteRelationalDatabaseSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRelationalDatabaseSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseSnapshotName [ResourceName] <p>The name of the database snapshot that you are deleting.</p>
-- Required key: relationalDatabaseSnapshotName
-- @return DeleteRelationalDatabaseSnapshotRequest structure as a key-value pair table
function M.DeleteRelationalDatabaseSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRelationalDatabaseSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseSnapshotName"] = args["relationalDatabaseSnapshotName"],
	}
	asserts.AssertDeleteRelationalDatabaseSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRelationalDatabaseRequest = { ["availabilityZone"] = true, ["publiclyAccessible"] = true, ["masterUsername"] = true, ["relationalDatabaseBlueprintId"] = true, ["masterUserPassword"] = true, ["preferredBackupWindow"] = true, ["masterDatabaseName"] = true, ["relationalDatabaseName"] = true, ["relationalDatabaseBundleId"] = true, ["preferredMaintenanceWindow"] = true, nil }

function asserts.AssertCreateRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	assert(struct["relationalDatabaseBlueprintId"], "Expected key relationalDatabaseBlueprintId to exist in table")
	assert(struct["relationalDatabaseBundleId"], "Expected key relationalDatabaseBundleId to exist in table")
	assert(struct["masterDatabaseName"], "Expected key masterDatabaseName to exist in table")
	assert(struct["masterUsername"], "Expected key masterUsername to exist in table")
	if struct["availabilityZone"] then asserts.Assertstring(struct["availabilityZone"]) end
	if struct["publiclyAccessible"] then asserts.Assertboolean(struct["publiclyAccessible"]) end
	if struct["masterUsername"] then asserts.Assertstring(struct["masterUsername"]) end
	if struct["relationalDatabaseBlueprintId"] then asserts.Assertstring(struct["relationalDatabaseBlueprintId"]) end
	if struct["masterUserPassword"] then asserts.AssertSensitiveString(struct["masterUserPassword"]) end
	if struct["preferredBackupWindow"] then asserts.Assertstring(struct["preferredBackupWindow"]) end
	if struct["masterDatabaseName"] then asserts.Assertstring(struct["masterDatabaseName"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["relationalDatabaseBundleId"] then asserts.Assertstring(struct["relationalDatabaseBundleId"]) end
	if struct["preferredMaintenanceWindow"] then asserts.Assertstring(struct["preferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseRequest[k], "CreateRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * availabilityZone [string] <p>The Availability Zone in which to create your new database. Use the <code>us-east-2a</code> case-sensitive format.</p> <p>You can get a list of Availability Zones by using the <code>get regions</code> operation. Be sure to add the <code>include relational database Availability Zones</code> parameter to your request.</p>
-- * publiclyAccessible [boolean] <p>Specifies the accessibility options for your new database. A value of <code>true</code> specifies a database that is available to resources outside of your Lightsail account. A value of <code>false</code> specifies a database that is available only to your Lightsail resources in the same region as your database.</p>
-- * masterUsername [string] <p>The master user name for your new database.</p> <p>Constraints:</p> <ul> <li> <p>Master user name is required.</p> </li> <li> <p>Must contain from 1 to 16 alphanumeric characters.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the database engine you choose.</p> <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and Reserved Words articles for <a href="https://dev.mysql.com/doc/refman/5.6/en/keywords.html">MySQL 5.6</a> or <a href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL 5.7</a> respectively.</p> </li> </ul>
-- * relationalDatabaseBlueprintId [string] <p>The blueprint ID for your new database. A blueprint describes the major engine version of a database.</p> <p>You can get a list of database blueprints IDs by using the <code>get relational database blueprints</code> operation.</p>
-- * masterUserPassword [SensitiveString] <p>The password for the master user of your new database. The password can include any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain 8 to 41 characters.</p>
-- * preferredBackupWindow [string] <p>The daily time range during which automated backups are created for your new database if automated backups are enabled.</p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. For more information about the preferred backup window time blocks for each region, see the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Working With Backups</a> guide in the Amazon Relational Database Service (Amazon RDS) documentation.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p> <p>Example: <code>16:00-16:30</code> </p> </li> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * masterDatabaseName [string] <p>The name of the master database created when the Lightsail database resource is created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 64 alphanumeric characters.</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul>
-- * relationalDatabaseName [ResourceName] <p>The name to use for your new database.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p> </li> <li> <p>The first and last character must be a letter or number.</p> </li> </ul>
-- * relationalDatabaseBundleId [string] <p>The bundle ID for your new database. A bundle describes the performance specifications for your database.</p> <p>You can get a list of database bundle IDs by using the <code>get relational database bundles</code> operation.</p>
-- * preferredMaintenanceWindow [string] <p>The weekly time range during which system maintenance can occur on your new database.</p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p> </li> <li> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Example: <code>Tue:17:00-Tue:17:30</code> </p> </li> </ul>
-- Required key: relationalDatabaseName
-- Required key: relationalDatabaseBlueprintId
-- Required key: relationalDatabaseBundleId
-- Required key: masterDatabaseName
-- Required key: masterUsername
-- @return CreateRelationalDatabaseRequest structure as a key-value pair table
function M.CreateRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["availabilityZone"] = args["availabilityZone"],
		["publiclyAccessible"] = args["publiclyAccessible"],
		["masterUsername"] = args["masterUsername"],
		["relationalDatabaseBlueprintId"] = args["relationalDatabaseBlueprintId"],
		["masterUserPassword"] = args["masterUserPassword"],
		["preferredBackupWindow"] = args["preferredBackupWindow"],
		["masterDatabaseName"] = args["masterDatabaseName"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["relationalDatabaseBundleId"] = args["relationalDatabaseBundleId"],
		["preferredMaintenanceWindow"] = args["preferredMaintenanceWindow"],
	}
	asserts.AssertCreateRelationalDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseLogEventsResult = { ["resourceLogEvents"] = true, ["nextForwardToken"] = true, ["nextBackwardToken"] = true, nil }

function asserts.AssertGetRelationalDatabaseLogEventsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseLogEventsResult to be of type 'table'")
	if struct["resourceLogEvents"] then asserts.AssertLogEventList(struct["resourceLogEvents"]) end
	if struct["nextForwardToken"] then asserts.Assertstring(struct["nextForwardToken"]) end
	if struct["nextBackwardToken"] then asserts.Assertstring(struct["nextBackwardToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseLogEventsResult[k], "GetRelationalDatabaseLogEventsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseLogEventsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceLogEvents [LogEventList] <p>An object describing the result of your get relational database log events request.</p>
-- * nextForwardToken [string] <p>A token used for advancing to the next page of results from your get relational database log events request.</p>
-- * nextBackwardToken [string] <p>A token used for advancing to the previous page of results from your get relational database log events request.</p>
-- @return GetRelationalDatabaseLogEventsResult structure as a key-value pair table
function M.GetRelationalDatabaseLogEventsResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseLogEventsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceLogEvents"] = args["resourceLogEvents"],
		["nextForwardToken"] = args["nextForwardToken"],
		["nextBackwardToken"] = args["nextBackwardToken"],
	}
	asserts.AssertGetRelationalDatabaseLogEventsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRelationalDatabaseRequest = { ["publiclyAccessible"] = true, ["rotateMasterUserPassword"] = true, ["masterUserPassword"] = true, ["preferredBackupWindow"] = true, ["relationalDatabaseName"] = true, ["preferredMaintenanceWindow"] = true, ["disableBackupRetention"] = true, ["enableBackupRetention"] = true, ["applyImmediately"] = true, nil }

function asserts.AssertUpdateRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["publiclyAccessible"] then asserts.Assertboolean(struct["publiclyAccessible"]) end
	if struct["rotateMasterUserPassword"] then asserts.Assertboolean(struct["rotateMasterUserPassword"]) end
	if struct["masterUserPassword"] then asserts.AssertSensitiveString(struct["masterUserPassword"]) end
	if struct["preferredBackupWindow"] then asserts.Assertstring(struct["preferredBackupWindow"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["preferredMaintenanceWindow"] then asserts.Assertstring(struct["preferredMaintenanceWindow"]) end
	if struct["disableBackupRetention"] then asserts.Assertboolean(struct["disableBackupRetention"]) end
	if struct["enableBackupRetention"] then asserts.Assertboolean(struct["enableBackupRetention"]) end
	if struct["applyImmediately"] then asserts.Assertboolean(struct["applyImmediately"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRelationalDatabaseRequest[k], "UpdateRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * publiclyAccessible [boolean] <p>Specifies the accessibility options for your database. A value of <code>true</code> specifies a database that is available to resources outside of your Lightsail account. A value of <code>false</code> specifies a database that is available only to your Lightsail resources in the same region as your database.</p>
-- * rotateMasterUserPassword [boolean] <p>When <code>true</code>, the master user password is changed to a new strong password generated by Lightsail.</p> <p>Use the <code>get relational database master user password</code> operation to get the new password.</p>
-- * masterUserPassword [SensitiveString] <p>The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain 8 to 41 characters.</p>
-- * preferredBackupWindow [string] <p>The daily time range during which automated backups are created for your database if automated backups are enabled.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p> <p>Example: <code>16:00-16:30</code> </p> </li> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * relationalDatabaseName [ResourceName] <p>The name of your database to update.</p>
-- * preferredMaintenanceWindow [string] <p>The weekly time range during which system maintenance can occur on your database.</p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p> </li> <li> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Example: <code>Tue:17:00-Tue:17:30</code> </p> </li> </ul>
-- * disableBackupRetention [boolean] <p>When <code>true</code>, disables automated backup retention for your database.</p> <p>Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the <code>create relational database snapshot</code> operation.</p> <p>Updates are applied during the next maintenance window because this can result in an outage.</p>
-- * enableBackupRetention [boolean] <p>When <code>true</code>, enables automated backup retention for your database.</p> <p>Updates are applied during the next maintenance window because this can result in an outage.</p>
-- * applyImmediately [boolean] <p>When <code>true</code>, applies changes immediately. When <code>false</code>, applies changes during the preferred maintenance window. Some changes may cause an outage.</p> <p>Default: <code>false</code> </p>
-- Required key: relationalDatabaseName
-- @return UpdateRelationalDatabaseRequest structure as a key-value pair table
function M.UpdateRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["publiclyAccessible"] = args["publiclyAccessible"],
		["rotateMasterUserPassword"] = args["rotateMasterUserPassword"],
		["masterUserPassword"] = args["masterUserPassword"],
		["preferredBackupWindow"] = args["preferredBackupWindow"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["preferredMaintenanceWindow"] = args["preferredMaintenanceWindow"],
		["disableBackupRetention"] = args["disableBackupRetention"],
		["enableBackupRetention"] = args["enableBackupRetention"],
		["applyImmediately"] = args["applyImmediately"],
	}
	asserts.AssertUpdateRelationalDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLoadBalancerAttributeRequest = { ["attributeName"] = true, ["attributeValue"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertUpdateLoadBalancerAttributeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoadBalancerAttributeRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["attributeName"], "Expected key attributeName to exist in table")
	assert(struct["attributeValue"], "Expected key attributeValue to exist in table")
	if struct["attributeName"] then asserts.AssertLoadBalancerAttributeName(struct["attributeName"]) end
	if struct["attributeValue"] then asserts.AssertStringMax256(struct["attributeValue"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLoadBalancerAttributeRequest[k], "UpdateLoadBalancerAttributeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoadBalancerAttributeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributeName [LoadBalancerAttributeName] <p>The name of the attribute you want to update. Valid values are below.</p>
-- * attributeValue [StringMax256] <p>The value that you want to specify for the attribute name.</p>
-- * loadBalancerName [ResourceName] <p>The name of the load balancer that you want to modify (e.g., <code>my-load-balancer</code>.</p>
-- Required key: loadBalancerName
-- Required key: attributeName
-- Required key: attributeValue
-- @return UpdateLoadBalancerAttributeRequest structure as a key-value pair table
function M.UpdateLoadBalancerAttributeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLoadBalancerAttributeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributeName"] = args["attributeName"],
		["attributeValue"] = args["attributeValue"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertUpdateLoadBalancerAttributeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopInstanceRequest = { ["force"] = true, ["instanceName"] = true, nil }

function asserts.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["force"] then asserts.Assertboolean(struct["force"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopInstanceRequest[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * force [boolean] <p>When set to <code>True</code>, forces a Lightsail instance that is stuck in a <code>stopping</code> state to stop.</p> <important> <p>Only use the <code>force</code> parameter if your instance is stuck in the <code>stopping</code> state. In any other state, your instance should stop normally without adding this parameter to your API request.</p> </important>
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
		["force"] = args["force"],
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

keys.CreateDiskFromSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateDiskFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskFromSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskFromSnapshotResult[k], "CreateDiskFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskFromSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return CreateDiskFromSnapshotResult structure as a key-value pair table
function M.CreateDiskFromSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateDiskFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateDiskFromSnapshotResult(all_args)
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

keys.GetRelationalDatabaseBlueprintsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetRelationalDatabaseBlueprintsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseBlueprintsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseBlueprintsRequest[k], "GetRelationalDatabaseBlueprintsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseBlueprintsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database blueprints request.</p>
-- @return GetRelationalDatabaseBlueprintsRequest structure as a key-value pair table
function M.GetRelationalDatabaseBlueprintsRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseBlueprintsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetRelationalDatabaseBlueprintsRequest(all_args)
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

keys.DeleteDiskRequest = { ["diskName"] = true, nil }

function asserts.AssertDeleteDiskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDiskRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDiskRequest[k], "DeleteDiskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDiskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique name of the disk you want to delete (e.g., <code>my-disk</code>).</p>
-- Required key: diskName
-- @return DeleteDiskRequest structure as a key-value pair table
function M.DeleteDiskRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDiskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
	}
	asserts.AssertDeleteDiskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDiskSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertDeleteDiskSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDiskSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDiskSnapshotResult[k], "DeleteDiskSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDiskSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DeleteDiskSnapshotResult structure as a key-value pair table
function M.DeleteDiskSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteDiskSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteDiskSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseHardware = { ["diskSizeInGb"] = true, ["cpuCount"] = true, ["ramSizeInGb"] = true, nil }

function asserts.AssertRelationalDatabaseHardware(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseHardware to be of type 'table'")
	if struct["diskSizeInGb"] then asserts.Assertinteger(struct["diskSizeInGb"]) end
	if struct["cpuCount"] then asserts.Assertinteger(struct["cpuCount"]) end
	if struct["ramSizeInGb"] then asserts.Assertfloat(struct["ramSizeInGb"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseHardware[k], "RelationalDatabaseHardware contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseHardware
-- <p>Describes the hardware of a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskSizeInGb [integer] <p>The size of the disk for the database.</p>
-- * cpuCount [integer] <p>The number of vCPUs for the database.</p>
-- * ramSizeInGb [float] <p>The amount of RAM in GB for the database.</p>
-- @return RelationalDatabaseHardware structure as a key-value pair table
function M.RelationalDatabaseHardware(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseHardware")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskSizeInGb"] = args["diskSizeInGb"],
		["cpuCount"] = args["cpuCount"],
		["ramSizeInGb"] = args["ramSizeInGb"],
	}
	asserts.AssertRelationalDatabaseHardware(all_args)
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

keys.GetDiskResult = { ["disk"] = true, nil }

function asserts.AssertGetDiskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskResult to be of type 'table'")
	if struct["disk"] then asserts.AssertDisk(struct["disk"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskResult[k], "GetDiskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * disk [Disk] <p>An object containing information about the disk.</p>
-- @return GetDiskResult structure as a key-value pair table
function M.GetDiskResult(args)
	assert(args, "You must provide an argument table when creating GetDiskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["disk"] = args["disk"],
	}
	asserts.AssertGetDiskResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDisksResult = { ["nextPageToken"] = true, ["disks"] = true, nil }

function asserts.AssertGetDisksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDisksResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["disks"] then asserts.AssertDiskList(struct["disks"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDisksResult[k], "GetDisksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDisksResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your GetDisks request.</p>
-- * disks [DiskList] <p>An array of objects containing information about all block storage disks.</p>
-- @return GetDisksResult structure as a key-value pair table
function M.GetDisksResult(args)
	assert(args, "You must provide an argument table when creating GetDisksResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["disks"] = args["disks"],
	}
	asserts.AssertGetDisksResult(all_args)
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
-- * operations [OperationList] <p>An array of key-value pairs containing information about the request operations.</p>
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

keys.GetLoadBalancerMetricDataResult = { ["metricData"] = true, ["metricName"] = true, nil }

function asserts.AssertGetLoadBalancerMetricDataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerMetricDataResult to be of type 'table'")
	if struct["metricData"] then asserts.AssertMetricDatapointList(struct["metricData"]) end
	if struct["metricName"] then asserts.AssertLoadBalancerMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerMetricDataResult[k], "GetLoadBalancerMetricDataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerMetricDataResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * metricData [MetricDatapointList] <p>An array of metric datapoint objects.</p>
-- * metricName [LoadBalancerMetricName] <p>The metric about which you are receiving information. Valid values are listed below, along with the most useful <code>statistics</code> to include in your request.</p> <ul> <li> <p> <b> <code>ClientTLSNegotiationErrorCount</code> </b> - The number of TLS connections initiated by the client that did not establish a session with the load balancer. Possible causes include a mismatch of ciphers or protocols.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p> </li> <li> <p> <b> <code>HealthyHostCount</code> </b> - The number of target instances that are considered healthy.</p> <p> <code>Statistics</code>: The most useful statistic are <code>Average</code>, <code>Minimum</code>, and <code>Maximum</code>.</p> </li> <li> <p> <b> <code>UnhealthyHostCount</code> </b> - The number of target instances that are considered unhealthy.</p> <p> <code>Statistics</code>: The most useful statistic are <code>Average</code>, <code>Minimum</code>, and <code>Maximum</code>.</p> </li> <li> <p> <b> <code>HTTPCode_LB_4XX_Count</code> </b> - The number of HTTP 4XX client error codes that originate from the load balancer. Client errors are generated when requests are malformed or incomplete. These requests have not been received by the target instance. This count does not include any response codes generated by the target instances.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_LB_5XX_Count</code> </b> - The number of HTTP 5XX server error codes that originate from the load balancer. This count does not include any response codes generated by the target instances.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_2XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_3XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer. </p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_4XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_5XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>InstanceResponseTime</code> </b> - The time elapsed, in seconds, after the request leaves the load balancer until a response from the target instance is received.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p> </li> <li> <p> <b> <code>RejectedConnectionCount</code> </b> - The number of connections that were rejected because the load balancer had reached its maximum number of connections.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p> </li> <li> <p> <b> <code>RequestCount</code> </b> - The number of requests processed over IPv4. This count includes only the requests with a response generated by a target instance of the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> </ul>
-- @return GetLoadBalancerMetricDataResult structure as a key-value pair table
function M.GetLoadBalancerMetricDataResult(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerMetricDataResult")
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
	asserts.AssertGetLoadBalancerMetricDataResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDiskRequest = { ["diskName"] = true, ["availabilityZone"] = true, ["sizeInGb"] = true, nil }

function asserts.AssertCreateDiskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["sizeInGb"], "Expected key sizeInGb to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	if struct["availabilityZone"] then asserts.AssertNonEmptyString(struct["availabilityZone"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskRequest[k], "CreateDiskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>
-- * availabilityZone [NonEmptyString] <p>The Availability Zone where you want to create the disk (e.g., <code>us-east-2a</code>). Choose the same Availability Zone as the Lightsail instance where you want to create the disk.</p> <p>Use the GetRegions operation to list the Availability Zones where Lightsail is currently available.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB (e.g., <code>32</code>).</p>
-- Required key: diskName
-- Required key: availabilityZone
-- Required key: sizeInGb
-- @return CreateDiskRequest structure as a key-value pair table
function M.CreateDiskRequest(args)
	assert(args, "You must provide an argument table when creating CreateDiskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
		["availabilityZone"] = args["availabilityZone"],
		["sizeInGb"] = args["sizeInGb"],
	}
	asserts.AssertCreateDiskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachInstancesFromLoadBalancerRequest = { ["instanceNames"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertDetachInstancesFromLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesFromLoadBalancerRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then asserts.AssertResourceNameList(struct["instanceNames"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachInstancesFromLoadBalancerRequest[k], "DetachInstancesFromLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesFromLoadBalancerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceNames [ResourceNameList] <p>An array of strings containing the names of the instances you want to detach from the load balancer.</p>
-- * loadBalancerName [ResourceName] <p>The name of the Lightsail load balancer.</p>
-- Required key: loadBalancerName
-- Required key: instanceNames
-- @return DetachInstancesFromLoadBalancerRequest structure as a key-value pair table
function M.DetachInstancesFromLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating DetachInstancesFromLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceNames"] = args["instanceNames"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertDetachInstancesFromLoadBalancerRequest(all_args)
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

keys.GetLoadBalancersResult = { ["loadBalancers"] = true, ["nextPageToken"] = true, nil }

function asserts.AssertGetLoadBalancersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancersResult to be of type 'table'")
	if struct["loadBalancers"] then asserts.AssertLoadBalancerList(struct["loadBalancers"]) end
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancersResult[k], "GetLoadBalancersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancers [LoadBalancerList] <p>An array of LoadBalancer objects describing your load balancers.</p>
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your GetLoadBalancers request.</p>
-- @return GetLoadBalancersResult structure as a key-value pair table
function M.GetLoadBalancersResult(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancers"] = args["loadBalancers"],
		["nextPageToken"] = args["nextPageToken"],
	}
	asserts.AssertGetLoadBalancersResult(all_args)
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

keys.LogEvent = { ["message"] = true, ["createdAt"] = true, nil }

function asserts.AssertLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogEvent to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogEvent[k], "LogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogEvent
-- <p>Describes a database log event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>The message of the database log event.</p>
-- * createdAt [IsoDate] <p>The timestamp when the database log event was created.</p>
-- @return LogEvent structure as a key-value pair table
function M.LogEvent(args)
	assert(args, "You must provide an argument table when creating LogEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertLogEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachDiskResult = { ["operations"] = true, nil }

function asserts.AssertDetachDiskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachDiskResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachDiskResult[k], "DetachDiskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachDiskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DetachDiskResult structure as a key-value pair table
function M.DetachDiskResult(args)
	assert(args, "You must provide an argument table when creating DetachDiskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDetachDiskResult(all_args)
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

keys.DeleteLoadBalancerResult = { ["operations"] = true, nil }

function asserts.AssertDeleteLoadBalancerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerResult[k], "DeleteLoadBalancerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DeleteLoadBalancerResult structure as a key-value pair table
function M.DeleteLoadBalancerResult(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteLoadBalancerResult(all_args)
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

keys.GetRelationalDatabasesResult = { ["nextPageToken"] = true, ["relationalDatabases"] = true, nil }

function asserts.AssertGetRelationalDatabasesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabasesResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["relationalDatabases"] then asserts.AssertRelationalDatabaseList(struct["relationalDatabases"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabasesResult[k], "GetRelationalDatabasesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabasesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get relational databases request.</p>
-- * relationalDatabases [RelationalDatabaseList] <p>An object describing the result of your get relational databases request.</p>
-- @return GetRelationalDatabasesResult structure as a key-value pair table
function M.GetRelationalDatabasesResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabasesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["relationalDatabases"] = args["relationalDatabases"],
	}
	asserts.AssertGetRelationalDatabasesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartRelationalDatabaseRequest = { ["relationalDatabaseName"] = true, nil }

function asserts.AssertStartRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartRelationalDatabaseRequest[k], "StartRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database to start.</p>
-- Required key: relationalDatabaseName
-- @return StartRelationalDatabaseRequest structure as a key-value pair table
function M.StartRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating StartRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
	}
	asserts.AssertStartRelationalDatabaseRequest(all_args)
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
-- * name [ResourceName] <p>The name the user gave the instance (e.g., <code>Amazon_Linux-1GB-Ohio-1</code>).</p>
-- * ipv6Address [IpV6Address] <p>The IPv6 address of the instance.</p>
-- * resourceType [ResourceType] <p>The type of resource (usually <code>Instance</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * blueprintName [NonEmptyString] <p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>
-- * hardware [InstanceHardware] <p>The size of the vCPU and the amount of RAM for the instance.</p>
-- * privateIpAddress [IpAddress] <p>The private IP address of the instance.</p>
-- * state [InstanceState] <p>The status code and the state (e.g., <code>running</code>) for the instance.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the instance (e.g., <code>arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>
-- * publicIpAddress [IpAddress] <p>The public IP address of the instance.</p>
-- * blueprintId [NonEmptyString] <p>The blueprint ID (e.g., <code>os_amlinux_2016_03</code>).</p>
-- * bundleId [NonEmptyString] <p>The bundle for the instance (e.g., <code>micro_1_0</code>).</p>
-- * sshKeyName [ResourceName] <p>The name of the SSH key being used to connect to the instance (e.g., <code>LightsailDefaultKeyPair</code>).</p>
-- * createdAt [IsoDate] <p>The timestamp when the instance was created (e.g., <code>1479734909.17</code>).</p>
-- * location [ResourceLocation] <p>The region name and Availability Zone where the instance is located.</p>
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

keys.AttachLoadBalancerTlsCertificateRequest = { ["certificateName"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertAttachLoadBalancerTlsCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTlsCertificateRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["certificateName"], "Expected key certificateName to exist in table")
	if struct["certificateName"] then asserts.AssertResourceName(struct["certificateName"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerTlsCertificateRequest[k], "AttachLoadBalancerTlsCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTlsCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateName [ResourceName] <p>The name of your SSL/TLS certificate.</p>
-- * loadBalancerName [ResourceName] <p>The name of the load balancer to which you want to associate the SSL/TLS certificate.</p>
-- Required key: loadBalancerName
-- Required key: certificateName
-- @return AttachLoadBalancerTlsCertificateRequest structure as a key-value pair table
function M.AttachLoadBalancerTlsCertificateRequest(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerTlsCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateName"] = args["certificateName"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertAttachLoadBalancerTlsCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoadBalancerResult = { ["loadBalancer"] = true, nil }

function asserts.AssertGetLoadBalancerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerResult to be of type 'table'")
	if struct["loadBalancer"] then asserts.AssertLoadBalancer(struct["loadBalancer"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerResult[k], "GetLoadBalancerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancer [LoadBalancer] <p>An object containing information about your load balancer.</p>
-- @return GetLoadBalancerResult structure as a key-value pair table
function M.GetLoadBalancerResult(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancer"] = args["loadBalancer"],
	}
	asserts.AssertGetLoadBalancerResult(all_args)
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

keys.CreateRelationalDatabaseSnapshotRequest = { ["relationalDatabaseName"] = true, ["relationalDatabaseSnapshotName"] = true, nil }

function asserts.AssertCreateRelationalDatabaseSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseSnapshotRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	assert(struct["relationalDatabaseSnapshotName"], "Expected key relationalDatabaseSnapshotName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["relationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["relationalDatabaseSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseSnapshotRequest[k], "CreateRelationalDatabaseSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of the database on which to base your new snapshot.</p>
-- * relationalDatabaseSnapshotName [ResourceName] <p>The name for your new database snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p> </li> <li> <p>The first and last character must be a letter or number.</p> </li> </ul>
-- Required key: relationalDatabaseName
-- Required key: relationalDatabaseSnapshotName
-- @return CreateRelationalDatabaseSnapshotRequest structure as a key-value pair table
function M.CreateRelationalDatabaseSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["relationalDatabaseSnapshotName"] = args["relationalDatabaseSnapshotName"],
	}
	asserts.AssertCreateRelationalDatabaseSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRelationalDatabaseSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateRelationalDatabaseSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseSnapshotResult[k], "CreateRelationalDatabaseSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your create relational database snapshot request.</p>
-- @return CreateRelationalDatabaseSnapshotResult structure as a key-value pair table
function M.CreateRelationalDatabaseSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateRelationalDatabaseSnapshotResult(all_args)
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
-- * operationDetails [string] <p>Details about the operation (e.g., <code>Debian-1GB-Ohio-1</code>).</p>
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

keys.Disk = { ["name"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["attachmentState"] = true, ["attachedTo"] = true, ["state"] = true, ["iops"] = true, ["gbInUse"] = true, ["arn"] = true, ["isAttached"] = true, ["path"] = true, ["isSystemDisk"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertDisk(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Disk to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["attachmentState"] then asserts.Assertstring(struct["attachmentState"]) end
	if struct["attachedTo"] then asserts.AssertResourceName(struct["attachedTo"]) end
	if struct["state"] then asserts.AssertDiskState(struct["state"]) end
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
-- <p>Describes a system disk or an block storage disk.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The unique name of the disk.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB.</p>
-- * resourceType [ResourceType] <p>The Lightsail resource type (e.g., <code>Disk</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * attachmentState [string] <p>(Deprecated) The attachment state of the disk.</p> <note> <p>In releases prior to November 14, 2017, this parameter returned <code>attached</code> for system disks in the API response. It is now deprecated, but still included in the response. Use <code>isAttached</code> instead.</p> </note>
-- * attachedTo [ResourceName] <p>The resources to which the disk is attached.</p>
-- * state [DiskState] <p>Describes the status of the disk.</p>
-- * iops [integer] <p>The input/output operations per second (IOPS) of the disk.</p>
-- * gbInUse [integer] <p>(Deprecated) The number of GB in use by the disk.</p> <note> <p>In releases prior to November 14, 2017, this parameter was not included in the API response. It is now deprecated.</p> </note>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the disk.</p>
-- * isAttached [boolean] <p>A Boolean value indicating whether the disk is attached.</p>
-- * path [string] <p>The disk path.</p>
-- * isSystemDisk [boolean] <p>A Boolean value indicating whether this disk is a system disk (has an operating system loaded on it).</p>
-- * createdAt [IsoDate] <p>The date when the disk was created.</p>
-- * location [ResourceLocation] <p>The AWS Region and Availability Zone where the disk is located.</p>
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
		["state"] = args["state"],
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

keys.InstanceAccessDetails = { ["username"] = true, ["certKey"] = true, ["instanceName"] = true, ["privateKey"] = true, ["passwordData"] = true, ["expiresAt"] = true, ["protocol"] = true, ["password"] = true, ["ipAddress"] = true, nil }

function asserts.AssertInstanceAccessDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAccessDetails to be of type 'table'")
	if struct["username"] then asserts.Assertstring(struct["username"]) end
	if struct["certKey"] then asserts.Assertstring(struct["certKey"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["privateKey"] then asserts.Assertstring(struct["privateKey"]) end
	if struct["passwordData"] then asserts.AssertPasswordData(struct["passwordData"]) end
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
-- * passwordData [PasswordData] <p>For a Windows Server-based instance, an object with the data you can use to retrieve your password. This is only needed if <code>password</code> is empty and the instance is not new (and therefore the password is not ready yet). When you create an instance, it can take up to 15 minutes for the instance to be ready.</p>
-- * expiresAt [IsoDate] <p>For SSH access, the date on which the temporary keys expire.</p>
-- * protocol [InstanceAccessProtocol] <p>The protocol for these Amazon Lightsail instance access details.</p>
-- * password [string] <p>For RDP access, the password for your Amazon Lightsail instance. Password will be an empty string if the password for your new instance is not ready yet. When you create an instance, it can take up to 15 minutes for the instance to be ready.</p> <note> <p>If you create an instance using any key pair other than the default (<code>LightsailDefaultKeyPair</code>), <code>password</code> will always be an empty string.</p> <p>If you change the Administrator password on the instance, Lightsail will continue to return the original password value. When accessing the instance using RDP, you need to manually enter the Administrator password after changing it from the default.</p> </note>
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
		["passwordData"] = args["passwordData"],
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

keys.GetRelationalDatabaseEventsRequest = { ["pageToken"] = true, ["relationalDatabaseName"] = true, ["durationInMinutes"] = true, nil }

function asserts.AssertGetRelationalDatabaseEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseEventsRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["durationInMinutes"] then asserts.Assertinteger(struct["durationInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseEventsRequest[k], "GetRelationalDatabaseEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results from for get relational database events request.</p>
-- * relationalDatabaseName [ResourceName] <p>The name of the database from which to get events.</p>
-- * durationInMinutes [integer] <p>The number of minutes in the past from which to retrieve events. For example, to get all events from the past 2 hours, enter 120.</p> <p>Default: <code>60</code> </p> <p>The minimum is 1 and the maximum is 14 days (20160 minutes).</p>
-- Required key: relationalDatabaseName
-- @return GetRelationalDatabaseEventsRequest structure as a key-value pair table
function M.GetRelationalDatabaseEventsRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["durationInMinutes"] = args["durationInMinutes"],
	}
	asserts.AssertGetRelationalDatabaseEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiskRequest = { ["diskName"] = true, nil }

function asserts.AssertGetDiskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskRequest[k], "GetDiskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The name of the disk (e.g., <code>my-disk</code>).</p>
-- Required key: diskName
-- @return GetDiskRequest structure as a key-value pair table
function M.GetDiskRequest(args)
	assert(args, "You must provide an argument table when creating GetDiskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
	}
	asserts.AssertGetDiskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseMetricDataResult = { ["metricData"] = true, ["metricName"] = true, nil }

function asserts.AssertGetRelationalDatabaseMetricDataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseMetricDataResult to be of type 'table'")
	if struct["metricData"] then asserts.AssertMetricDatapointList(struct["metricData"]) end
	if struct["metricName"] then asserts.AssertRelationalDatabaseMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseMetricDataResult[k], "GetRelationalDatabaseMetricDataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseMetricDataResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * metricData [MetricDatapointList] <p>An object describing the result of your get relational database metric data request.</p>
-- * metricName [RelationalDatabaseMetricName] <p>The name of the metric.</p>
-- @return GetRelationalDatabaseMetricDataResult structure as a key-value pair table
function M.GetRelationalDatabaseMetricDataResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseMetricDataResult")
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
	asserts.AssertGetRelationalDatabaseMetricDataResult(all_args)
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

keys.AttachLoadBalancerTlsCertificateResult = { ["operations"] = true, nil }

function asserts.AssertAttachLoadBalancerTlsCertificateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachLoadBalancerTlsCertificateResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachLoadBalancerTlsCertificateResult[k], "AttachLoadBalancerTlsCertificateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachLoadBalancerTlsCertificateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object representing the API operations.</p> <p>These SSL/TLS certificates are only usable by Lightsail load balancers. You can't get the certificate and use it for another purpose.</p>
-- @return AttachLoadBalancerTlsCertificateResult structure as a key-value pair table
function M.AttachLoadBalancerTlsCertificateResult(args)
	assert(args, "You must provide an argument table when creating AttachLoadBalancerTlsCertificateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertAttachLoadBalancerTlsCertificateResult(all_args)
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

keys.GetRelationalDatabaseSnapshotsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetRelationalDatabaseSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseSnapshotsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseSnapshotsRequest[k], "GetRelationalDatabaseSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseSnapshotsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database snapshots request.</p>
-- @return GetRelationalDatabaseSnapshotsRequest structure as a key-value pair table
function M.GetRelationalDatabaseSnapshotsRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseSnapshotsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetRelationalDatabaseSnapshotsRequest(all_args)
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

keys.LoadBalancerTlsCertificate = { ["revokedAt"] = true, ["supportCode"] = true, ["loadBalancerName"] = true, ["serial"] = true, ["arn"] = true, ["issuer"] = true, ["subjectAlternativeNames"] = true, ["renewalSummary"] = true, ["notBefore"] = true, ["notAfter"] = true, ["domainValidationRecords"] = true, ["createdAt"] = true, ["isAttached"] = true, ["revocationReason"] = true, ["failureReason"] = true, ["location"] = true, ["status"] = true, ["subject"] = true, ["keyAlgorithm"] = true, ["name"] = true, ["domainName"] = true, ["resourceType"] = true, ["issuedAt"] = true, ["signatureAlgorithm"] = true, nil }

function asserts.AssertLoadBalancerTlsCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTlsCertificate to be of type 'table'")
	if struct["revokedAt"] then asserts.AssertIsoDate(struct["revokedAt"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	if struct["serial"] then asserts.AssertNonEmptyString(struct["serial"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["issuer"] then asserts.AssertNonEmptyString(struct["issuer"]) end
	if struct["subjectAlternativeNames"] then asserts.AssertStringList(struct["subjectAlternativeNames"]) end
	if struct["renewalSummary"] then asserts.AssertLoadBalancerTlsCertificateRenewalSummary(struct["renewalSummary"]) end
	if struct["notBefore"] then asserts.AssertIsoDate(struct["notBefore"]) end
	if struct["notAfter"] then asserts.AssertIsoDate(struct["notAfter"]) end
	if struct["domainValidationRecords"] then asserts.AssertLoadBalancerTlsCertificateDomainValidationRecordList(struct["domainValidationRecords"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["isAttached"] then asserts.Assertboolean(struct["isAttached"]) end
	if struct["revocationReason"] then asserts.AssertLoadBalancerTlsCertificateRevocationReason(struct["revocationReason"]) end
	if struct["failureReason"] then asserts.AssertLoadBalancerTlsCertificateFailureReason(struct["failureReason"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	if struct["status"] then asserts.AssertLoadBalancerTlsCertificateStatus(struct["status"]) end
	if struct["subject"] then asserts.AssertNonEmptyString(struct["subject"]) end
	if struct["keyAlgorithm"] then asserts.AssertNonEmptyString(struct["keyAlgorithm"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["issuedAt"] then asserts.AssertIsoDate(struct["issuedAt"]) end
	if struct["signatureAlgorithm"] then asserts.AssertNonEmptyString(struct["signatureAlgorithm"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTlsCertificate[k], "LoadBalancerTlsCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTlsCertificate
-- <p>Describes a load balancer SSL/TLS certificate.</p> <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * revokedAt [IsoDate] <p>The timestamp when the SSL/TLS certificate was revoked.</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about your Lightsail load balancer or SSL/TLS certificate. This code enables our support team to look up your Lightsail information more easily.</p>
-- * loadBalancerName [ResourceName] <p>The load balancer name where your SSL/TLS certificate is attached.</p>
-- * serial [NonEmptyString] <p>The serial number of the certificate.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the SSL/TLS certificate.</p>
-- * issuer [NonEmptyString] <p>The issuer of the certificate.</p>
-- * subjectAlternativeNames [StringList] <p>One or more domains or subdomains included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CNAME) of the certificate and additional domain names that can be used to connect to the website, such as <code>example.com</code>, <code>www.example.com</code>, or <code>m.example.com</code>.</p>
-- * renewalSummary [LoadBalancerTlsCertificateRenewalSummary] <p>An object containing information about the status of Lightsail's managed renewal for the certificate.</p>
-- * notBefore [IsoDate] <p>The timestamp when the SSL/TLS certificate is first valid.</p>
-- * notAfter [IsoDate] <p>The timestamp when the SSL/TLS certificate expires.</p>
-- * domainValidationRecords [LoadBalancerTlsCertificateDomainValidationRecordList] <p>An array of LoadBalancerTlsCertificateDomainValidationRecord objects describing the records.</p>
-- * createdAt [IsoDate] <p>The time when you created your SSL/TLS certificate.</p>
-- * isAttached [boolean] <p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load balancer.</p>
-- * revocationReason [LoadBalancerTlsCertificateRevocationReason] <p>The reason the certificate was revoked. Valid values are below.</p>
-- * failureReason [LoadBalancerTlsCertificateFailureReason] <p>The reason for the SSL/TLS certificate validation failure.</p>
-- * location [ResourceLocation] <p>The AWS Region and Availability Zone where you created your certificate.</p>
-- * status [LoadBalancerTlsCertificateStatus] <p>The status of the SSL/TLS certificate. Valid values are below.</p>
-- * subject [NonEmptyString] <p>The name of the entity that is associated with the public key contained in the certificate.</p>
-- * keyAlgorithm [NonEmptyString] <p>The algorithm that was used to generate the key pair (the public and private key).</p>
-- * name [ResourceName] <p>The name of the SSL/TLS certificate (e.g., <code>my-certificate</code>).</p>
-- * domainName [DomainName] <p>The domain name for your SSL/TLS certificate.</p>
-- * resourceType [ResourceType] <p>The resource type (e.g., <code>LoadBalancerTlsCertificate</code>).</p> <ul> <li> <p> <b> <code>Instance</code> </b> - A Lightsail instance (a virtual private server)</p> </li> <li> <p> <b> <code>StaticIp</code> </b> - A static IP address</p> </li> <li> <p> <b> <code>KeyPair</code> </b> - The key pair used to connect to a Lightsail instance</p> </li> <li> <p> <b> <code>InstanceSnapshot</code> </b> - A Lightsail instance snapshot</p> </li> <li> <p> <b> <code>Domain</code> </b> - A DNS zone</p> </li> <li> <p> <b> <code>PeeredVpc</code> </b> - A peered VPC</p> </li> <li> <p> <b> <code>LoadBalancer</code> </b> - A Lightsail load balancer</p> </li> <li> <p> <b> <code>LoadBalancerTlsCertificate</code> </b> - An SSL/TLS certificate associated with a Lightsail load balancer</p> </li> <li> <p> <b> <code>Disk</code> </b> - A Lightsail block storage disk</p> </li> <li> <p> <b> <code>DiskSnapshot</code> </b> - A block storage disk snapshot</p> </li> </ul>
-- * issuedAt [IsoDate] <p>The time when the SSL/TLS certificate was issued.</p>
-- * signatureAlgorithm [NonEmptyString] <p>The algorithm that was used to sign the certificate.</p>
-- @return LoadBalancerTlsCertificate structure as a key-value pair table
function M.LoadBalancerTlsCertificate(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTlsCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["revokedAt"] = args["revokedAt"],
		["supportCode"] = args["supportCode"],
		["loadBalancerName"] = args["loadBalancerName"],
		["serial"] = args["serial"],
		["arn"] = args["arn"],
		["issuer"] = args["issuer"],
		["subjectAlternativeNames"] = args["subjectAlternativeNames"],
		["renewalSummary"] = args["renewalSummary"],
		["notBefore"] = args["notBefore"],
		["notAfter"] = args["notAfter"],
		["domainValidationRecords"] = args["domainValidationRecords"],
		["createdAt"] = args["createdAt"],
		["isAttached"] = args["isAttached"],
		["revocationReason"] = args["revocationReason"],
		["failureReason"] = args["failureReason"],
		["location"] = args["location"],
		["status"] = args["status"],
		["subject"] = args["subject"],
		["keyAlgorithm"] = args["keyAlgorithm"],
		["name"] = args["name"],
		["domainName"] = args["domainName"],
		["resourceType"] = args["resourceType"],
		["issuedAt"] = args["issuedAt"],
		["signatureAlgorithm"] = args["signatureAlgorithm"],
	}
	asserts.AssertLoadBalancerTlsCertificate(all_args)
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

keys.GetRelationalDatabaseMasterUserPasswordResult = { ["createdAt"] = true, ["masterUserPassword"] = true, nil }

function asserts.AssertGetRelationalDatabaseMasterUserPasswordResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseMasterUserPasswordResult to be of type 'table'")
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["masterUserPassword"] then asserts.AssertSensitiveString(struct["masterUserPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseMasterUserPasswordResult[k], "GetRelationalDatabaseMasterUserPasswordResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseMasterUserPasswordResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * createdAt [IsoDate] <p>The timestamp when the specified version of the master user password was created.</p>
-- * masterUserPassword [SensitiveString] <p>The master user password for the <code>password version</code> specified.</p>
-- @return GetRelationalDatabaseMasterUserPasswordResult structure as a key-value pair table
function M.GetRelationalDatabaseMasterUserPasswordResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseMasterUserPasswordResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["createdAt"] = args["createdAt"],
		["masterUserPassword"] = args["masterUserPassword"],
	}
	asserts.AssertGetRelationalDatabaseMasterUserPasswordResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseSnapshot = { ["engine"] = true, ["name"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["fromRelationalDatabaseBlueprintId"] = true, ["fromRelationalDatabaseArn"] = true, ["state"] = true, ["arn"] = true, ["engineVersion"] = true, ["fromRelationalDatabaseName"] = true, ["fromRelationalDatabaseBundleId"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertRelationalDatabaseSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseSnapshot to be of type 'table'")
	if struct["engine"] then asserts.AssertNonEmptyString(struct["engine"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["fromRelationalDatabaseBlueprintId"] then asserts.Assertstring(struct["fromRelationalDatabaseBlueprintId"]) end
	if struct["fromRelationalDatabaseArn"] then asserts.AssertNonEmptyString(struct["fromRelationalDatabaseArn"]) end
	if struct["state"] then asserts.AssertNonEmptyString(struct["state"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["engineVersion"] then asserts.AssertNonEmptyString(struct["engineVersion"]) end
	if struct["fromRelationalDatabaseName"] then asserts.AssertNonEmptyString(struct["fromRelationalDatabaseName"]) end
	if struct["fromRelationalDatabaseBundleId"] then asserts.Assertstring(struct["fromRelationalDatabaseBundleId"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseSnapshot[k], "RelationalDatabaseSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseSnapshot
-- <p>Describes a database snapshot.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * engine [NonEmptyString] <p>The software of the database snapshot (for example, <code>MySQL</code>)</p>
-- * name [ResourceName] <p>The name of the database snapshot.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB (for example, <code>32</code>) for the database snapshot.</p>
-- * resourceType [ResourceType] <p>The Lightsail resource type.</p>
-- * supportCode [string] <p>The support code for the database snapshot. Include this code in your email to support when you have questions about a database snapshot in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * fromRelationalDatabaseBlueprintId [string] <p>The blueprint ID of the database from which the database snapshot was created. A blueprint describes the major engine version of a database.</p>
-- * fromRelationalDatabaseArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the database from which the database snapshot was created.</p>
-- * state [NonEmptyString] <p>The state of the database snapshot.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the database snapshot.</p>
-- * engineVersion [NonEmptyString] <p>The database engine version for the database snapshot (for example, <code>5.7.23</code>).</p>
-- * fromRelationalDatabaseName [NonEmptyString] <p>The name of the source database from which the database snapshot was created.</p>
-- * fromRelationalDatabaseBundleId [string] <p>The bundle ID of the database from which the database snapshot was created.</p>
-- * createdAt [IsoDate] <p>The timestamp when the database snapshot was created.</p>
-- * location [ResourceLocation] <p>The Region name and Availability Zone where the database snapshot is located.</p>
-- @return RelationalDatabaseSnapshot structure as a key-value pair table
function M.RelationalDatabaseSnapshot(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["engine"] = args["engine"],
		["name"] = args["name"],
		["sizeInGb"] = args["sizeInGb"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["fromRelationalDatabaseBlueprintId"] = args["fromRelationalDatabaseBlueprintId"],
		["fromRelationalDatabaseArn"] = args["fromRelationalDatabaseArn"],
		["state"] = args["state"],
		["arn"] = args["arn"],
		["engineVersion"] = args["engineVersion"],
		["fromRelationalDatabaseName"] = args["fromRelationalDatabaseName"],
		["fromRelationalDatabaseBundleId"] = args["fromRelationalDatabaseBundleId"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertRelationalDatabaseSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoadBalancerRequest = { ["loadBalancerName"] = true, nil }

function asserts.AssertGetLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerRequest[k], "GetLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancerName [ResourceName] <p>The name of the load balancer.</p>
-- Required key: loadBalancerName
-- @return GetLoadBalancerRequest structure as a key-value pair table
function M.GetLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertGetLoadBalancerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DiskMap = { ["newDiskName"] = true, ["originalDiskPath"] = true, nil }

function asserts.AssertDiskMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiskMap to be of type 'table'")
	if struct["newDiskName"] then asserts.AssertResourceName(struct["newDiskName"]) end
	if struct["originalDiskPath"] then asserts.AssertNonEmptyString(struct["originalDiskPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiskMap[k], "DiskMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiskMap
-- <p>Describes a block storage disk mapping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newDiskName [ResourceName] <p>The new disk name (e.g., <code>my-new-disk</code>).</p>
-- * originalDiskPath [NonEmptyString] <p>The original disk path exposed to the instance (for example, <code>/dev/sdh</code>).</p>
-- @return DiskMap structure as a key-value pair table
function M.DiskMap(args)
	assert(args, "You must provide an argument table when creating DiskMap")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["newDiskName"] = args["newDiskName"],
		["originalDiskPath"] = args["originalDiskPath"],
	}
	asserts.AssertDiskMap(all_args)
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
-- * metricName [InstanceMetricName] <p>The metric name to return data for.</p>
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
-- * period [MetricPeriod] <p>The granularity, in seconds, of the returned data points.</p>
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

keys.DeleteDiskResult = { ["operations"] = true, nil }

function asserts.AssertDeleteDiskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDiskResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDiskResult[k], "DeleteDiskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDiskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DeleteDiskResult structure as a key-value pair table
function M.DeleteDiskResult(args)
	assert(args, "You must provide an argument table when creating DeleteDiskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteDiskResult(all_args)
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

keys.RelationalDatabase = { ["parameterApplyStatus"] = true, ["supportCode"] = true, ["hardware"] = true, ["arn"] = true, ["state"] = true, ["createdAt"] = true, ["engineVersion"] = true, ["pendingModifiedValues"] = true, ["engine"] = true, ["latestRestorableTime"] = true, ["pendingMaintenanceActions"] = true, ["preferredBackupWindow"] = true, ["backupRetentionEnabled"] = true, ["secondaryAvailabilityZone"] = true, ["relationalDatabaseBundleId"] = true, ["preferredMaintenanceWindow"] = true, ["name"] = true, ["publiclyAccessible"] = true, ["masterUsername"] = true, ["relationalDatabaseBlueprintId"] = true, ["location"] = true, ["resourceType"] = true, ["masterDatabaseName"] = true, ["masterEndpoint"] = true, nil }

function asserts.AssertRelationalDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabase to be of type 'table'")
	if struct["parameterApplyStatus"] then asserts.AssertNonEmptyString(struct["parameterApplyStatus"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["hardware"] then asserts.AssertRelationalDatabaseHardware(struct["hardware"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["state"] then asserts.AssertNonEmptyString(struct["state"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["engineVersion"] then asserts.AssertNonEmptyString(struct["engineVersion"]) end
	if struct["pendingModifiedValues"] then asserts.AssertPendingModifiedRelationalDatabaseValues(struct["pendingModifiedValues"]) end
	if struct["engine"] then asserts.AssertNonEmptyString(struct["engine"]) end
	if struct["latestRestorableTime"] then asserts.AssertIsoDate(struct["latestRestorableTime"]) end
	if struct["pendingMaintenanceActions"] then asserts.AssertPendingMaintenanceActionList(struct["pendingMaintenanceActions"]) end
	if struct["preferredBackupWindow"] then asserts.AssertNonEmptyString(struct["preferredBackupWindow"]) end
	if struct["backupRetentionEnabled"] then asserts.Assertboolean(struct["backupRetentionEnabled"]) end
	if struct["secondaryAvailabilityZone"] then asserts.Assertstring(struct["secondaryAvailabilityZone"]) end
	if struct["relationalDatabaseBundleId"] then asserts.AssertNonEmptyString(struct["relationalDatabaseBundleId"]) end
	if struct["preferredMaintenanceWindow"] then asserts.AssertNonEmptyString(struct["preferredMaintenanceWindow"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["publiclyAccessible"] then asserts.Assertboolean(struct["publiclyAccessible"]) end
	if struct["masterUsername"] then asserts.AssertNonEmptyString(struct["masterUsername"]) end
	if struct["relationalDatabaseBlueprintId"] then asserts.AssertNonEmptyString(struct["relationalDatabaseBlueprintId"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["masterDatabaseName"] then asserts.Assertstring(struct["masterDatabaseName"]) end
	if struct["masterEndpoint"] then asserts.AssertRelationalDatabaseEndpoint(struct["masterEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabase[k], "RelationalDatabase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabase
-- <p>Describes a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameterApplyStatus [NonEmptyString] <p>The status of parameter updates for the database.</p>
-- * supportCode [string] <p>The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * hardware [RelationalDatabaseHardware] <p>Describes the hardware of the database.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the database.</p>
-- * state [NonEmptyString] <p>Describes the current state of the database.</p>
-- * createdAt [IsoDate] <p>The timestamp when the database was created. Formatted in Unix time.</p>
-- * engineVersion [NonEmptyString] <p>The database engine version (for example, <code>5.7.23</code>).</p>
-- * pendingModifiedValues [PendingModifiedRelationalDatabaseValues] <p>Describes pending database value modifications.</p>
-- * engine [NonEmptyString] <p>The database software (for example, <code>MySQL</code>).</p>
-- * latestRestorableTime [IsoDate] <p>The latest point in time to which the database can be restored. Formatted in Unix time.</p>
-- * pendingMaintenanceActions [PendingMaintenanceActionList] <p>Describes the pending maintenance actions for the database.</p>
-- * preferredBackupWindow [NonEmptyString] <p>The daily time range during which automated backups are created for the database (for example, <code>16:00-16:30</code>).</p>
-- * backupRetentionEnabled [boolean] <p>A Boolean value indicating whether automated backup retention is enabled for the database.</p>
-- * secondaryAvailabilityZone [string] <p>Describes the secondary Availability Zone of a high availability database.</p> <p>The secondary database is used for failover support of a high availability database.</p>
-- * relationalDatabaseBundleId [NonEmptyString] <p>The bundle ID for the database. A bundle describes the performance specifications for your database.</p>
-- * preferredMaintenanceWindow [NonEmptyString] <p>The weekly time range during which system maintenance can occur on the database.</p> <p>In the format <code>ddd:hh24:mi-ddd:hh24:mi</code>. For example, <code>Tue:17:00-Tue:17:30</code>.</p>
-- * name [ResourceName] <p>The unique name of the database resource in Lightsail.</p>
-- * publiclyAccessible [boolean] <p>A Boolean value indicating whether the database is publicly accessible.</p>
-- * masterUsername [NonEmptyString] <p>The master user name of the database.</p>
-- * relationalDatabaseBlueprintId [NonEmptyString] <p>The blueprint ID for the database. A blueprint describes the major engine version of a database.</p>
-- * location [ResourceLocation] <p>The Region name and Availability Zone where the database is located.</p>
-- * resourceType [ResourceType] <p>The Lightsail resource type for the database (for example, <code>RelationalDatabase</code>).</p>
-- * masterDatabaseName [string] <p>The name of the master database created when the Lightsail database resource is created.</p>
-- * masterEndpoint [RelationalDatabaseEndpoint] <p>The master endpoint for the database.</p>
-- @return RelationalDatabase structure as a key-value pair table
function M.RelationalDatabase(args)
	assert(args, "You must provide an argument table when creating RelationalDatabase")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameterApplyStatus"] = args["parameterApplyStatus"],
		["supportCode"] = args["supportCode"],
		["hardware"] = args["hardware"],
		["arn"] = args["arn"],
		["state"] = args["state"],
		["createdAt"] = args["createdAt"],
		["engineVersion"] = args["engineVersion"],
		["pendingModifiedValues"] = args["pendingModifiedValues"],
		["engine"] = args["engine"],
		["latestRestorableTime"] = args["latestRestorableTime"],
		["pendingMaintenanceActions"] = args["pendingMaintenanceActions"],
		["preferredBackupWindow"] = args["preferredBackupWindow"],
		["backupRetentionEnabled"] = args["backupRetentionEnabled"],
		["secondaryAvailabilityZone"] = args["secondaryAvailabilityZone"],
		["relationalDatabaseBundleId"] = args["relationalDatabaseBundleId"],
		["preferredMaintenanceWindow"] = args["preferredMaintenanceWindow"],
		["name"] = args["name"],
		["publiclyAccessible"] = args["publiclyAccessible"],
		["masterUsername"] = args["masterUsername"],
		["relationalDatabaseBlueprintId"] = args["relationalDatabaseBlueprintId"],
		["location"] = args["location"],
		["resourceType"] = args["resourceType"],
		["masterDatabaseName"] = args["masterDatabaseName"],
		["masterEndpoint"] = args["masterEndpoint"],
	}
	asserts.AssertRelationalDatabase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachDiskResult = { ["operations"] = true, nil }

function asserts.AssertAttachDiskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachDiskResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachDiskResult[k], "AttachDiskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachDiskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return AttachDiskResult structure as a key-value pair table
function M.AttachDiskResult(args)
	assert(args, "You must provide an argument table when creating AttachDiskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertAttachDiskResult(all_args)
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

keys.CreateDiskSnapshotRequest = { ["diskName"] = true, ["diskSnapshotName"] = true, nil }

function asserts.AssertCreateDiskSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskSnapshotRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	assert(struct["diskSnapshotName"], "Expected key diskSnapshotName to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	if struct["diskSnapshotName"] then asserts.AssertResourceName(struct["diskSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskSnapshotRequest[k], "CreateDiskSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique name of the source disk (e.g., <code>my-source-disk</code>).</p>
-- * diskSnapshotName [ResourceName] <p>The name of the destination disk snapshot (e.g., <code>my-disk-snapshot</code>) based on the source disk.</p>
-- Required key: diskName
-- Required key: diskSnapshotName
-- @return CreateDiskSnapshotRequest structure as a key-value pair table
function M.CreateDiskSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateDiskSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
		["diskSnapshotName"] = args["diskSnapshotName"],
	}
	asserts.AssertCreateDiskSnapshotRequest(all_args)
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

keys.GetRelationalDatabaseBundlesRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetRelationalDatabaseBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseBundlesRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseBundlesRequest[k], "GetRelationalDatabaseBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseBundlesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database bundles request.</p>
-- @return GetRelationalDatabaseBundlesRequest structure as a key-value pair table
function M.GetRelationalDatabaseBundlesRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseBundlesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetRelationalDatabaseBundlesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDiskResult = { ["operations"] = true, nil }

function asserts.AssertCreateDiskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskResult[k], "CreateDiskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return CreateDiskResult structure as a key-value pair table
function M.CreateDiskResult(args)
	assert(args, "You must provide an argument table when creating CreateDiskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateDiskResult(all_args)
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
-- * nextPageCount [string] <p>(Deprecated) Returns the number of pages of results that remain.</p> <note> <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the API. It is now deprecated, and the API returns the <code>next page token</code> parameter instead.</p> </note>
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

keys.DetachInstancesFromLoadBalancerResult = { ["operations"] = true, nil }

function asserts.AssertDetachInstancesFromLoadBalancerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachInstancesFromLoadBalancerResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachInstancesFromLoadBalancerResult[k], "DetachInstancesFromLoadBalancerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachInstancesFromLoadBalancerResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DetachInstancesFromLoadBalancerResult structure as a key-value pair table
function M.DetachInstancesFromLoadBalancerResult(args)
	assert(args, "You must provide an argument table when creating DetachInstancesFromLoadBalancerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDetachInstancesFromLoadBalancerResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabasesRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetRelationalDatabasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabasesRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabasesRequest[k], "GetRelationalDatabasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database request.</p>
-- @return GetRelationalDatabasesRequest structure as a key-value pair table
function M.GetRelationalDatabasesRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetRelationalDatabasesRequest(all_args)
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
-- * zoneName [NonEmptyString] <p>The name of the Availability Zone. The format is <code>us-east-2a</code> (case-sensitive).</p>
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

keys.GetDiskSnapshotResult = { ["diskSnapshot"] = true, nil }

function asserts.AssertGetDiskSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskSnapshotResult to be of type 'table'")
	if struct["diskSnapshot"] then asserts.AssertDiskSnapshot(struct["diskSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskSnapshotResult[k], "GetDiskSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskSnapshot [DiskSnapshot] <p>An object containing information about the disk snapshot.</p>
-- @return GetDiskSnapshotResult structure as a key-value pair table
function M.GetDiskSnapshotResult(args)
	assert(args, "You must provide an argument table when creating GetDiskSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskSnapshot"] = args["diskSnapshot"],
	}
	asserts.AssertGetDiskSnapshotResult(all_args)
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
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the key pair (e.g., <code>arn:aws:lightsail:us-east-2:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>
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

keys.GetLoadBalancersRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetLoadBalancersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancersRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancersRequest[k], "GetLoadBalancersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for paginating the results from your GetLoadBalancers request.</p>
-- @return GetLoadBalancersRequest structure as a key-value pair table
function M.GetLoadBalancersRequest(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetLoadBalancersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseBlueprint = { ["engine"] = true, ["engineVersionDescription"] = true, ["isEngineDefault"] = true, ["engineVersion"] = true, ["blueprintId"] = true, ["engineDescription"] = true, nil }

function asserts.AssertRelationalDatabaseBlueprint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseBlueprint to be of type 'table'")
	if struct["engine"] then asserts.AssertRelationalDatabaseEngine(struct["engine"]) end
	if struct["engineVersionDescription"] then asserts.Assertstring(struct["engineVersionDescription"]) end
	if struct["isEngineDefault"] then asserts.Assertboolean(struct["isEngineDefault"]) end
	if struct["engineVersion"] then asserts.Assertstring(struct["engineVersion"]) end
	if struct["blueprintId"] then asserts.Assertstring(struct["blueprintId"]) end
	if struct["engineDescription"] then asserts.Assertstring(struct["engineDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseBlueprint[k], "RelationalDatabaseBlueprint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseBlueprint
-- <p>Describes a database image, or blueprint. A blueprint describes the major engine version of a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * engine [RelationalDatabaseEngine] <p>The database software of the database blueprint (for example, <code>MySQL</code>).</p>
-- * engineVersionDescription [string] <p>The description of the database engine version for the database blueprint.</p>
-- * isEngineDefault [boolean] <p>A Boolean value indicating whether the engine version is the default for the database blueprint.</p>
-- * engineVersion [string] <p>The database engine version for the database blueprint (for example, <code>5.7.23</code>).</p>
-- * blueprintId [string] <p>The ID for the database blueprint.</p>
-- * engineDescription [string] <p>The description of the database engine for the database blueprint.</p>
-- @return RelationalDatabaseBlueprint structure as a key-value pair table
function M.RelationalDatabaseBlueprint(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseBlueprint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["engine"] = args["engine"],
		["engineVersionDescription"] = args["engineVersionDescription"],
		["isEngineDefault"] = args["isEngineDefault"],
		["engineVersion"] = args["engineVersion"],
		["blueprintId"] = args["blueprintId"],
		["engineDescription"] = args["engineDescription"],
	}
	asserts.AssertRelationalDatabaseBlueprint(all_args)
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

keys.LoadBalancerTlsCertificateRenewalSummary = { ["renewalStatus"] = true, ["domainValidationOptions"] = true, nil }

function asserts.AssertLoadBalancerTlsCertificateRenewalSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTlsCertificateRenewalSummary to be of type 'table'")
	if struct["renewalStatus"] then asserts.AssertLoadBalancerTlsCertificateRenewalStatus(struct["renewalStatus"]) end
	if struct["domainValidationOptions"] then asserts.AssertLoadBalancerTlsCertificateDomainValidationOptionList(struct["domainValidationOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTlsCertificateRenewalSummary[k], "LoadBalancerTlsCertificateRenewalSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTlsCertificateRenewalSummary
-- <p>Contains information about the status of Lightsail's managed renewal for the certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * renewalStatus [LoadBalancerTlsCertificateRenewalStatus] <p>The status of Lightsail's managed renewal of the certificate. Valid values are listed below.</p>
-- * domainValidationOptions [LoadBalancerTlsCertificateDomainValidationOptionList] <p>Contains information about the validation of each domain name in the certificate, as it pertains to Lightsail's managed renewal. This is different from the initial validation that occurs as a result of the RequestCertificate request.</p>
-- @return LoadBalancerTlsCertificateRenewalSummary structure as a key-value pair table
function M.LoadBalancerTlsCertificateRenewalSummary(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTlsCertificateRenewalSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["renewalStatus"] = args["renewalStatus"],
		["domainValidationOptions"] = args["domainValidationOptions"],
	}
	asserts.AssertLoadBalancerTlsCertificateRenewalSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachInstancesToLoadBalancerResult = { ["operations"] = true, nil }

function asserts.AssertAttachInstancesToLoadBalancerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachInstancesToLoadBalancerResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachInstancesToLoadBalancerResult[k], "AttachInstancesToLoadBalancerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachInstancesToLoadBalancerResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object representing the API operations.</p>
-- @return AttachInstancesToLoadBalancerResult structure as a key-value pair table
function M.AttachInstancesToLoadBalancerResult(args)
	assert(args, "You must provide an argument table when creating AttachInstancesToLoadBalancerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertAttachInstancesToLoadBalancerResult(all_args)
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

keys.GetDiskSnapshotsResult = { ["nextPageToken"] = true, ["diskSnapshots"] = true, nil }

function asserts.AssertGetDiskSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskSnapshotsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["diskSnapshots"] then asserts.AssertDiskSnapshotList(struct["diskSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskSnapshotsResult[k], "GetDiskSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskSnapshotsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your GetDiskSnapshots request.</p>
-- * diskSnapshots [DiskSnapshotList] <p>An array of objects containing information about all block storage disk snapshots.</p>
-- @return GetDiskSnapshotsResult structure as a key-value pair table
function M.GetDiskSnapshotsResult(args)
	assert(args, "You must provide an argument table when creating GetDiskSnapshotsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["diskSnapshots"] = args["diskSnapshots"],
	}
	asserts.AssertGetDiskSnapshotsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerTlsCertificateRequest = { ["certificateAlternativeNames"] = true, ["certificateName"] = true, ["certificateDomainName"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertCreateLoadBalancerTlsCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerTlsCertificateRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["certificateName"], "Expected key certificateName to exist in table")
	assert(struct["certificateDomainName"], "Expected key certificateDomainName to exist in table")
	if struct["certificateAlternativeNames"] then asserts.AssertDomainNameList(struct["certificateAlternativeNames"]) end
	if struct["certificateName"] then asserts.AssertResourceName(struct["certificateName"]) end
	if struct["certificateDomainName"] then asserts.AssertDomainName(struct["certificateDomainName"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerTlsCertificateRequest[k], "CreateLoadBalancerTlsCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerTlsCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateAlternativeNames [DomainNameList] <p>An array of strings listing alternative domains and subdomains for your SSL/TLS certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9 alternative names (in addition to the 1 primary domain). We do not support wildcards (e.g., <code>*.example.com</code>).</p>
-- * certificateName [ResourceName] <p>The SSL/TLS certificate name.</p> <p>You can have up to 10 certificates in your account at one time. Each Lightsail load balancer can have up to 2 certificates associated with it at one time. There is also an overall limit to the number of certificates that can be issue in a 365-day period. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p>
-- * certificateDomainName [DomainName] <p>The domain name (e.g., <code>example.com</code>) for your SSL/TLS certificate.</p>
-- * loadBalancerName [ResourceName] <p>The load balancer name where you want to create the SSL/TLS certificate.</p>
-- Required key: loadBalancerName
-- Required key: certificateName
-- Required key: certificateDomainName
-- @return CreateLoadBalancerTlsCertificateRequest structure as a key-value pair table
function M.CreateLoadBalancerTlsCertificateRequest(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerTlsCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateAlternativeNames"] = args["certificateAlternativeNames"],
		["certificateName"] = args["certificateName"],
		["certificateDomainName"] = args["certificateDomainName"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertCreateLoadBalancerTlsCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerTlsCertificateDomainValidationRecord = { ["domainName"] = true, ["type"] = true, ["name"] = true, ["value"] = true, ["validationStatus"] = true, nil }

function asserts.AssertLoadBalancerTlsCertificateDomainValidationRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTlsCertificateDomainValidationRecord to be of type 'table'")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	if struct["type"] then asserts.AssertNonEmptyString(struct["type"]) end
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	if struct["value"] then asserts.AssertNonEmptyString(struct["value"]) end
	if struct["validationStatus"] then asserts.AssertLoadBalancerTlsCertificateDomainStatus(struct["validationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTlsCertificateDomainValidationRecord[k], "LoadBalancerTlsCertificateDomainValidationRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTlsCertificateDomainValidationRecord
-- <p>Describes the validation record of each domain name in the SSL/TLS certificate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The domain name against which your SSL/TLS certificate was validated.</p>
-- * type [NonEmptyString] <p>The type of validation record. For example, <code>CNAME</code> for domain validation.</p>
-- * name [NonEmptyString] <p>A fully qualified domain name in the certificate. For example, <code>example.com</code>.</p>
-- * value [NonEmptyString] <p>The value for that type.</p>
-- * validationStatus [LoadBalancerTlsCertificateDomainStatus] <p>The validation status. Valid values are listed below.</p>
-- @return LoadBalancerTlsCertificateDomainValidationRecord structure as a key-value pair table
function M.LoadBalancerTlsCertificateDomainValidationRecord(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTlsCertificateDomainValidationRecord")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
		["type"] = args["type"],
		["name"] = args["name"],
		["value"] = args["value"],
		["validationStatus"] = args["validationStatus"],
	}
	asserts.AssertLoadBalancerTlsCertificateDomainValidationRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertRebootRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootRelationalDatabaseResult[k], "RebootRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your reboot relational database request.</p>
-- @return RebootRelationalDatabaseResult structure as a key-value pair table
function M.RebootRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating RebootRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertRebootRelationalDatabaseResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Blueprint = { ["group"] = true, ["description"] = true, ["platform"] = true, ["productUrl"] = true, ["version"] = true, ["licenseUrl"] = true, ["versionCode"] = true, ["blueprintId"] = true, ["minPower"] = true, ["type"] = true, ["isActive"] = true, ["name"] = true, nil }

function asserts.AssertBlueprint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Blueprint to be of type 'table'")
	if struct["group"] then asserts.AssertNonEmptyString(struct["group"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	if struct["platform"] then asserts.AssertInstancePlatform(struct["platform"]) end
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
-- * platform [InstancePlatform] <p>The operating system platform (either Linux/Unix-based or Windows Server-based) of the blueprint.</p>
-- * productUrl [string] <p>The product URL to learn more about the image or blueprint.</p>
-- * version [string] <p>The version number of the operating system, application, or stack (e.g., <code>2016.03.0</code>).</p>
-- * licenseUrl [string] <p>The end-user license agreement URL for the image or blueprint.</p>
-- * versionCode [string] <p>The version code.</p>
-- * blueprintId [NonEmptyString] <p>The ID for the virtual private server image (e.g., <code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>).</p>
-- * minPower [integer] <p>The minimum bundle power required to run this blueprint. For example, you need a bundle with a power value of 500 or more to create an instance that uses a blueprint with a minimum power value of 500. <code>0</code> indicates that the blueprint runs on all instance sizes. </p>
-- * type [BlueprintType] <p>The type of the blueprint (e.g., <code>os</code> or <code>app</code>).</p>
-- * isActive [boolean] <p>A Boolean value indicating whether the blueprint is active. Inactive blueprints are listed to support customers with existing instances but are not necessarily available for launch of new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases.</p>
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
		["platform"] = args["platform"],
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
-- * availabilityZone [string] <p>The Availability Zone. Follows the format <code>us-east-2a</code> (case-sensitive).</p>
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

keys.DetachDiskRequest = { ["diskName"] = true, nil }

function asserts.AssertDetachDiskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachDiskRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachDiskRequest[k], "DetachDiskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachDiskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique name of the disk you want to detach from your instance (e.g., <code>my-disk</code>).</p>
-- Required key: diskName
-- @return DetachDiskRequest structure as a key-value pair table
function M.DetachDiskRequest(args)
	assert(args, "You must provide an argument table when creating DetachDiskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
	}
	asserts.AssertDetachDiskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoadBalancerMetricDataRequest = { ["statistics"] = true, ["period"] = true, ["startTime"] = true, ["loadBalancerName"] = true, ["endTime"] = true, ["unit"] = true, ["metricName"] = true, nil }

function asserts.AssertGetLoadBalancerMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerMetricDataRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["period"], "Expected key period to exist in table")
	assert(struct["startTime"], "Expected key startTime to exist in table")
	assert(struct["endTime"], "Expected key endTime to exist in table")
	assert(struct["unit"], "Expected key unit to exist in table")
	assert(struct["statistics"], "Expected key statistics to exist in table")
	if struct["statistics"] then asserts.AssertMetricStatisticList(struct["statistics"]) end
	if struct["period"] then asserts.AssertMetricPeriod(struct["period"]) end
	if struct["startTime"] then asserts.Asserttimestamp(struct["startTime"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	if struct["endTime"] then asserts.Asserttimestamp(struct["endTime"]) end
	if struct["unit"] then asserts.AssertMetricUnit(struct["unit"]) end
	if struct["metricName"] then asserts.AssertLoadBalancerMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerMetricDataRequest[k], "GetLoadBalancerMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerMetricDataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statistics [MetricStatisticList] <p>An array of statistics that you want to request metrics for. Valid values are listed below.</p> <ul> <li> <p> <b> <code>SampleCount</code> </b> - The count (number) of data points used for the statistical calculation.</p> </li> <li> <p> <b> <code>Average</code> </b> - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum. This comparison helps you to know when to increase or decrease your resources as needed.</p> </li> <li> <p> <b> <code>Sum</code> </b> - All values submitted for the matching metric added together. This statistic can be useful for determining the total volume of a metric.</p> </li> <li> <p> <b> <code>Minimum</code> </b> - The lowest value observed during the specified period. You can use this value to determine low volumes of activity for your application.</p> </li> <li> <p> <b> <code>Maximum</code> </b> - The highest value observed during the specified period. You can use this value to determine high volumes of activity for your application.</p> </li> </ul>
-- * period [MetricPeriod] <p>The granularity, in seconds, of the returned data points.</p>
-- * startTime [timestamp] <p>The start time of the period.</p>
-- * loadBalancerName [ResourceName] <p>The name of the load balancer.</p>
-- * endTime [timestamp] <p>The end time of the period.</p>
-- * unit [MetricUnit] <p>The unit for the time period request. Valid values are listed below.</p>
-- * metricName [LoadBalancerMetricName] <p>The metric about which you want to return information. Valid values are listed below, along with the most useful <code>statistics</code> to include in your request.</p> <ul> <li> <p> <b> <code>ClientTLSNegotiationErrorCount</code> </b> - The number of TLS connections initiated by the client that did not establish a session with the load balancer. Possible causes include a mismatch of ciphers or protocols.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p> </li> <li> <p> <b> <code>HealthyHostCount</code> </b> - The number of target instances that are considered healthy.</p> <p> <code>Statistics</code>: The most useful statistic are <code>Average</code>, <code>Minimum</code>, and <code>Maximum</code>.</p> </li> <li> <p> <b> <code>UnhealthyHostCount</code> </b> - The number of target instances that are considered unhealthy.</p> <p> <code>Statistics</code>: The most useful statistic are <code>Average</code>, <code>Minimum</code>, and <code>Maximum</code>.</p> </li> <li> <p> <b> <code>HTTPCode_LB_4XX_Count</code> </b> - The number of HTTP 4XX client error codes that originate from the load balancer. Client errors are generated when requests are malformed or incomplete. These requests have not been received by the target instance. This count does not include any response codes generated by the target instances.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_LB_5XX_Count</code> </b> - The number of HTTP 5XX server error codes that originate from the load balancer. This count does not include any response codes generated by the target instances.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_2XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_3XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer. </p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_4XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>HTTPCode_Instance_5XX_Count</code> </b> - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> <li> <p> <b> <code>InstanceResponseTime</code> </b> - The time elapsed, in seconds, after the request leaves the load balancer until a response from the target instance is received.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p> </li> <li> <p> <b> <code>RejectedConnectionCount</code> </b> - The number of connections that were rejected because the load balancer had reached its maximum number of connections.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p> </li> <li> <p> <b> <code>RequestCount</code> </b> - The number of requests processed over IPv4. This count includes only the requests with a response generated by a target instance of the load balancer.</p> <p> <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return <code>1</code>.</p> </li> </ul>
-- Required key: loadBalancerName
-- Required key: metricName
-- Required key: period
-- Required key: startTime
-- Required key: endTime
-- Required key: unit
-- Required key: statistics
-- @return GetLoadBalancerMetricDataRequest structure as a key-value pair table
function M.GetLoadBalancerMetricDataRequest(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerMetricDataRequest")
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
		["loadBalancerName"] = args["loadBalancerName"],
		["endTime"] = args["endTime"],
		["unit"] = args["unit"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertGetLoadBalancerMetricDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerRequest = { ["loadBalancerName"] = true, nil }

function asserts.AssertDeleteLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerRequest[k], "DeleteLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancerName [ResourceName] <p>The name of the load balancer you want to delete.</p>
-- Required key: loadBalancerName
-- @return DeleteLoadBalancerRequest structure as a key-value pair table
function M.DeleteLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertDeleteLoadBalancerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Bundle = { ["supportedPlatforms"] = true, ["name"] = true, ["power"] = true, ["price"] = true, ["ramSizeInGb"] = true, ["diskSizeInGb"] = true, ["transferPerMonthInGb"] = true, ["cpuCount"] = true, ["instanceType"] = true, ["isActive"] = true, ["bundleId"] = true, nil }

function asserts.AssertBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bundle to be of type 'table'")
	if struct["supportedPlatforms"] then asserts.AssertInstancePlatformList(struct["supportedPlatforms"]) end
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
-- * supportedPlatforms [InstancePlatformList] <p>The operating system platform (Linux/Unix-based or Windows Server-based) that the bundle supports. You can only launch a <code>WINDOWS</code> bundle on a blueprint that supports the <code>WINDOWS</code> platform. <code>LINUX_UNIX</code> blueprints require a <code>LINUX_UNIX</code> bundle.</p>
-- * name [string] <p>A friendly name for the bundle (e.g., <code>Micro</code>).</p>
-- * power [integer] <p>A numeric value that represents the power of the bundle (e.g., <code>500</code>). You can use the bundle's power value in conjunction with a blueprint's minimum power value to determine whether the blueprint will run on the bundle. For example, you need a bundle with a power value of 500 or more to create an instance that uses a blueprint with a minimum power value of 500.</p>
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
		["supportedPlatforms"] = args["supportedPlatforms"],
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

keys.GetRelationalDatabaseMetricDataRequest = { ["statistics"] = true, ["period"] = true, ["relationalDatabaseName"] = true, ["startTime"] = true, ["endTime"] = true, ["unit"] = true, ["metricName"] = true, nil }

function asserts.AssertGetRelationalDatabaseMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseMetricDataRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["period"], "Expected key period to exist in table")
	assert(struct["startTime"], "Expected key startTime to exist in table")
	assert(struct["endTime"], "Expected key endTime to exist in table")
	assert(struct["unit"], "Expected key unit to exist in table")
	assert(struct["statistics"], "Expected key statistics to exist in table")
	if struct["statistics"] then asserts.AssertMetricStatisticList(struct["statistics"]) end
	if struct["period"] then asserts.AssertMetricPeriod(struct["period"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["startTime"] then asserts.AssertIsoDate(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertIsoDate(struct["endTime"]) end
	if struct["unit"] then asserts.AssertMetricUnit(struct["unit"]) end
	if struct["metricName"] then asserts.AssertRelationalDatabaseMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseMetricDataRequest[k], "GetRelationalDatabaseMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseMetricDataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statistics [MetricStatisticList] <p>The array of statistics for your metric data request.</p>
-- * period [MetricPeriod] <p>The granularity, in seconds, of the returned data points.</p>
-- * relationalDatabaseName [ResourceName] <p>The name of your database from which to get metric data.</p>
-- * startTime [IsoDate] <p>The start of the time interval from which to get metric data.</p> <p>Constraints:</p> <ul> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Specified in the Unix time format.</p> <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input <code>1538424000</code> as the start time.</p> </li> </ul>
-- * endTime [IsoDate] <p>The end of the time interval from which to get metric data.</p> <p>Constraints:</p> <ul> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Specified in the Unix time format.</p> <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input <code>1538424000</code> as the end time.</p> </li> </ul>
-- * unit [MetricUnit] <p>The unit for the metric data request.</p>
-- * metricName [RelationalDatabaseMetricName] <p>The name of the metric data to return.</p>
-- Required key: relationalDatabaseName
-- Required key: metricName
-- Required key: period
-- Required key: startTime
-- Required key: endTime
-- Required key: unit
-- Required key: statistics
-- @return GetRelationalDatabaseMetricDataRequest structure as a key-value pair table
function M.GetRelationalDatabaseMetricDataRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseMetricDataRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["statistics"] = args["statistics"],
		["period"] = args["period"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
		["unit"] = args["unit"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertGetRelationalDatabaseMetricDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiskSnapshotRequest = { ["diskSnapshotName"] = true, nil }

function asserts.AssertGetDiskSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskSnapshotRequest to be of type 'table'")
	assert(struct["diskSnapshotName"], "Expected key diskSnapshotName to exist in table")
	if struct["diskSnapshotName"] then asserts.AssertResourceName(struct["diskSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskSnapshotRequest[k], "GetDiskSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskSnapshotName [ResourceName] <p>The name of the disk snapshot (e.g., <code>my-disk-snapshot</code>).</p>
-- Required key: diskSnapshotName
-- @return GetDiskSnapshotRequest structure as a key-value pair table
function M.GetDiskSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating GetDiskSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskSnapshotName"] = args["diskSnapshotName"],
	}
	asserts.AssertGetDiskSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLoadBalancerTlsCertificateResult = { ["operations"] = true, nil }

function asserts.AssertCreateLoadBalancerTlsCertificateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerTlsCertificateResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerTlsCertificateResult[k], "CreateLoadBalancerTlsCertificateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerTlsCertificateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object containing information about the API operations.</p>
-- @return CreateLoadBalancerTlsCertificateResult structure as a key-value pair table
function M.CreateLoadBalancerTlsCertificateResult(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerTlsCertificateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateLoadBalancerTlsCertificateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertCreateRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseResult[k], "CreateRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your create relational database request.</p>
-- @return CreateRelationalDatabaseResult structure as a key-value pair table
function M.CreateRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateRelationalDatabaseResult(all_args)
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

keys.DomainEntry = { ["target"] = true, ["isAlias"] = true, ["id"] = true, ["type"] = true, ["options"] = true, ["name"] = true, nil }

function asserts.AssertDomainEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainEntry to be of type 'table'")
	if struct["target"] then asserts.Assertstring(struct["target"]) end
	if struct["isAlias"] then asserts.Assertboolean(struct["isAlias"]) end
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["type"] then asserts.AssertDomainEntryType(struct["type"]) end
	if struct["options"] then asserts.AssertDomainEntryOptions(struct["options"]) end
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainEntry[k], "DomainEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainEntry
-- <p>Describes a domain recordset entry.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * target [string] <p>The target AWS name server (e.g., <code>ns-111.awsdns-22.com.</code>).</p> <p>For Lightsail load balancers, the value looks like <code>ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com</code>. Be sure to also set <code>isAlias</code> to <code>true</code> when setting up an A record for a load balancer.</p>
-- * isAlias [boolean] <p>When <code>true</code>, specifies whether the domain entry is an alias used by the Lightsail load balancer. You can include an alias (A type) record in your request, which points to a load balancer DNS name and routes traffic to your load balancer</p>
-- * id [NonEmptyString] <p>The ID of the domain recordset entry.</p>
-- * type [DomainEntryType] <p>The type of domain entry (e.g., <code>SOA</code> or <code>NS</code>).</p>
-- * options [DomainEntryOptions] <p>(Deprecated) The options for the domain entry.</p> <note> <p>In releases prior to November 29, 2017, this parameter was not included in the API response. It is now deprecated.</p> </note>
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
		["target"] = args["target"],
		["isAlias"] = args["isAlias"],
		["id"] = args["id"],
		["type"] = args["type"],
		["options"] = args["options"],
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

keys.GetRelationalDatabaseBlueprintsResult = { ["nextPageToken"] = true, ["blueprints"] = true, nil }

function asserts.AssertGetRelationalDatabaseBlueprintsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseBlueprintsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["blueprints"] then asserts.AssertRelationalDatabaseBlueprintList(struct["blueprints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseBlueprintsResult[k], "GetRelationalDatabaseBlueprintsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseBlueprintsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results of your get relational database blueprints request.</p>
-- * blueprints [RelationalDatabaseBlueprintList] <p>An object describing the result of your get relational database blueprints request.</p>
-- @return GetRelationalDatabaseBlueprintsResult structure as a key-value pair table
function M.GetRelationalDatabaseBlueprintsResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseBlueprintsResult")
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
	asserts.AssertGetRelationalDatabaseBlueprintsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoadBalancerTlsCertificatesRequest = { ["loadBalancerName"] = true, nil }

function asserts.AssertGetLoadBalancerTlsCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerTlsCertificatesRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerTlsCertificatesRequest[k], "GetLoadBalancerTlsCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerTlsCertificatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancerName [ResourceName] <p>The name of the load balancer you associated with your SSL/TLS certificate.</p>
-- Required key: loadBalancerName
-- @return GetLoadBalancerTlsCertificatesRequest structure as a key-value pair table
function M.GetLoadBalancerTlsCertificatesRequest(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerTlsCertificatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertGetLoadBalancerTlsCertificatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingModifiedRelationalDatabaseValues = { ["backupRetentionEnabled"] = true, ["masterUserPassword"] = true, ["engineVersion"] = true, nil }

function asserts.AssertPendingModifiedRelationalDatabaseValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedRelationalDatabaseValues to be of type 'table'")
	if struct["backupRetentionEnabled"] then asserts.Assertboolean(struct["backupRetentionEnabled"]) end
	if struct["masterUserPassword"] then asserts.Assertstring(struct["masterUserPassword"]) end
	if struct["engineVersion"] then asserts.Assertstring(struct["engineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingModifiedRelationalDatabaseValues[k], "PendingModifiedRelationalDatabaseValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedRelationalDatabaseValues
-- <p>Describes a pending database value modification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * backupRetentionEnabled [boolean] <p>A Boolean value indicating whether automated backup retention is enabled.</p>
-- * masterUserPassword [string] <p>The password for the master user of the database.</p>
-- * engineVersion [string] <p>The database engine version.</p>
-- @return PendingModifiedRelationalDatabaseValues structure as a key-value pair table
function M.PendingModifiedRelationalDatabaseValues(args)
	assert(args, "You must provide an argument table when creating PendingModifiedRelationalDatabaseValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["backupRetentionEnabled"] = args["backupRetentionEnabled"],
		["masterUserPassword"] = args["masterUserPassword"],
		["engineVersion"] = args["engineVersion"],
	}
	asserts.AssertPendingModifiedRelationalDatabaseValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseSnapshotRequest = { ["relationalDatabaseSnapshotName"] = true, nil }

function asserts.AssertGetRelationalDatabaseSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseSnapshotRequest to be of type 'table'")
	assert(struct["relationalDatabaseSnapshotName"], "Expected key relationalDatabaseSnapshotName to exist in table")
	if struct["relationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["relationalDatabaseSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseSnapshotRequest[k], "GetRelationalDatabaseSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseSnapshotName [ResourceName] <p>The name of the database snapshot for which to get information.</p>
-- Required key: relationalDatabaseSnapshotName
-- @return GetRelationalDatabaseSnapshotRequest structure as a key-value pair table
function M.GetRelationalDatabaseSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseSnapshotName"] = args["relationalDatabaseSnapshotName"],
	}
	asserts.AssertGetRelationalDatabaseSnapshotRequest(all_args)
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

keys.PendingMaintenanceAction = { ["action"] = true, ["description"] = true, ["currentApplyDate"] = true, nil }

function asserts.AssertPendingMaintenanceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceAction to be of type 'table'")
	if struct["action"] then asserts.AssertNonEmptyString(struct["action"]) end
	if struct["description"] then asserts.AssertNonEmptyString(struct["description"]) end
	if struct["currentApplyDate"] then asserts.AssertIsoDate(struct["currentApplyDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingMaintenanceAction[k], "PendingMaintenanceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceAction
-- <p>Describes a pending database maintenance action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * action [NonEmptyString] <p>The type of pending database maintenance action.</p>
-- * description [NonEmptyString] <p>Additional detail about the pending database maintenance action.</p>
-- * currentApplyDate [IsoDate] <p>The effective date of the pending database maintenance action.</p>
-- @return PendingMaintenanceAction structure as a key-value pair table
function M.PendingMaintenanceAction(args)
	assert(args, "You must provide an argument table when creating PendingMaintenanceAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["action"] = args["action"],
		["description"] = args["description"],
		["currentApplyDate"] = args["currentApplyDate"],
	}
	asserts.AssertPendingMaintenanceAction(all_args)
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
-- * name [ResourceName] <p>The name of the static IP (e.g., <code>StaticIP-Ohio-EXAMPLE</code>).</p>
-- * resourceType [ResourceType] <p>The resource type (usually <code>StaticIp</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * attachedTo [ResourceName] <p>The instance where the static IP is attached (e.g., <code>Amazon_Linux-1GB-Ohio-1</code>).</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the static IP (e.g., <code>arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>
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

keys.DiskSnapshot = { ["name"] = true, ["fromDiskName"] = true, ["sizeInGb"] = true, ["resourceType"] = true, ["supportCode"] = true, ["state"] = true, ["arn"] = true, ["fromDiskArn"] = true, ["progress"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertDiskSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiskSnapshot to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["fromDiskName"] then asserts.AssertResourceName(struct["fromDiskName"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["state"] then asserts.AssertDiskSnapshotState(struct["state"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["fromDiskArn"] then asserts.AssertNonEmptyString(struct["fromDiskArn"]) end
	if struct["progress"] then asserts.Assertstring(struct["progress"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiskSnapshot[k], "DiskSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiskSnapshot
-- <p>Describes a block storage disk snapshot.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The name of the disk snapshot (e.g., <code>my-disk-snapshot</code>).</p>
-- * fromDiskName [ResourceName] <p>The unique name of the source disk from which you are creating the disk snapshot.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB.</p>
-- * resourceType [ResourceType] <p>The Lightsail resource type (e.g., <code>DiskSnapshot</code>).</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.</p>
-- * state [DiskSnapshotState] <p>The status of the disk snapshot operation.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the disk snapshot.</p>
-- * fromDiskArn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the source disk from which you are creating the disk snapshot.</p>
-- * progress [string] <p>The progress of the disk snapshot operation.</p>
-- * createdAt [IsoDate] <p>The date when the disk snapshot was created.</p>
-- * location [ResourceLocation] <p>The AWS Region and Availability Zone where the disk snapshot was created.</p>
-- @return DiskSnapshot structure as a key-value pair table
function M.DiskSnapshot(args)
	assert(args, "You must provide an argument table when creating DiskSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["fromDiskName"] = args["fromDiskName"],
		["sizeInGb"] = args["sizeInGb"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["state"] = args["state"],
		["arn"] = args["arn"],
		["fromDiskArn"] = args["fromDiskArn"],
		["progress"] = args["progress"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertDiskSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoadBalancerTlsCertificateRequest = { ["certificateName"] = true, ["force"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertDeleteLoadBalancerTlsCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerTlsCertificateRequest to be of type 'table'")
	assert(struct["loadBalancerName"], "Expected key loadBalancerName to exist in table")
	assert(struct["certificateName"], "Expected key certificateName to exist in table")
	if struct["certificateName"] then asserts.AssertResourceName(struct["certificateName"]) end
	if struct["force"] then asserts.Assertboolean(struct["force"]) end
	if struct["loadBalancerName"] then asserts.AssertResourceName(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerTlsCertificateRequest[k], "DeleteLoadBalancerTlsCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerTlsCertificateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateName [ResourceName] <p>The SSL/TLS certificate name.</p>
-- * force [boolean] <p>When <code>true</code>, forces the deletion of an SSL/TLS certificate.</p> <p>There can be two certificates associated with a Lightsail load balancer: the primary and the backup. The <code>force</code> parameter is required when the primary SSL/TLS certificate is in use by an instance attached to the load balancer.</p>
-- * loadBalancerName [ResourceName] <p>The load balancer name.</p>
-- Required key: loadBalancerName
-- Required key: certificateName
-- @return DeleteLoadBalancerTlsCertificateRequest structure as a key-value pair table
function M.DeleteLoadBalancerTlsCertificateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerTlsCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateName"] = args["certificateName"],
		["force"] = args["force"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertDeleteLoadBalancerTlsCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseParametersRequest = { ["pageToken"] = true, ["relationalDatabaseName"] = true, nil }

function asserts.AssertGetRelationalDatabaseParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseParametersRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseParametersRequest[k], "GetRelationalDatabaseParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseParametersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database parameters request.</p>
-- * relationalDatabaseName [ResourceName] <p>The name of your database for which to get parameters.</p>
-- Required key: relationalDatabaseName
-- @return GetRelationalDatabaseParametersRequest structure as a key-value pair table
function M.GetRelationalDatabaseParametersRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
	}
	asserts.AssertGetRelationalDatabaseParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoadBalancerTlsCertificatesResult = { ["tlsCertificates"] = true, nil }

function asserts.AssertGetLoadBalancerTlsCertificatesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoadBalancerTlsCertificatesResult to be of type 'table'")
	if struct["tlsCertificates"] then asserts.AssertLoadBalancerTlsCertificateList(struct["tlsCertificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoadBalancerTlsCertificatesResult[k], "GetLoadBalancerTlsCertificatesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoadBalancerTlsCertificatesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tlsCertificates [LoadBalancerTlsCertificateList] <p>An array of LoadBalancerTlsCertificate objects describing your SSL/TLS certificates.</p>
-- @return GetLoadBalancerTlsCertificatesResult structure as a key-value pair table
function M.GetLoadBalancerTlsCertificatesResult(args)
	assert(args, "You must provide an argument table when creating GetLoadBalancerTlsCertificatesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tlsCertificates"] = args["tlsCertificates"],
	}
	asserts.AssertGetLoadBalancerTlsCertificatesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseEvent = { ["message"] = true, ["eventCategories"] = true, ["resource"] = true, ["createdAt"] = true, nil }

function asserts.AssertRelationalDatabaseEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseEvent to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["eventCategories"] then asserts.AssertStringList(struct["eventCategories"]) end
	if struct["resource"] then asserts.AssertResourceName(struct["resource"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseEvent[k], "RelationalDatabaseEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseEvent
-- <p>Describes an event for a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>The message of the database event.</p>
-- * eventCategories [StringList] <p>The category that the database event belongs to.</p>
-- * resource [ResourceName] <p>The database that the database event relates to.</p>
-- * createdAt [IsoDate] <p>The timestamp when the database event was created.</p>
-- @return RelationalDatabaseEvent structure as a key-value pair table
function M.RelationalDatabaseEvent(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["eventCategories"] = args["eventCategories"],
		["resource"] = args["resource"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertRelationalDatabaseEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseSnapshotsResult = { ["relationalDatabaseSnapshots"] = true, ["nextPageToken"] = true, nil }

function asserts.AssertGetRelationalDatabaseSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseSnapshotsResult to be of type 'table'")
	if struct["relationalDatabaseSnapshots"] then asserts.AssertRelationalDatabaseSnapshotList(struct["relationalDatabaseSnapshots"]) end
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseSnapshotsResult[k], "GetRelationalDatabaseSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseSnapshotsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseSnapshots [RelationalDatabaseSnapshotList] <p>An object describing the result of your get relational database snapshots request.</p>
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get relational database snapshots request.</p>
-- @return GetRelationalDatabaseSnapshotsResult structure as a key-value pair table
function M.GetRelationalDatabaseSnapshotsResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseSnapshotsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseSnapshots"] = args["relationalDatabaseSnapshots"],
		["nextPageToken"] = args["nextPageToken"],
	}
	asserts.AssertGetRelationalDatabaseSnapshotsResult(all_args)
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

keys.DeleteDiskSnapshotRequest = { ["diskSnapshotName"] = true, nil }

function asserts.AssertDeleteDiskSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDiskSnapshotRequest to be of type 'table'")
	assert(struct["diskSnapshotName"], "Expected key diskSnapshotName to exist in table")
	if struct["diskSnapshotName"] then asserts.AssertResourceName(struct["diskSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDiskSnapshotRequest[k], "DeleteDiskSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDiskSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskSnapshotName [ResourceName] <p>The name of the disk snapshot you want to delete (e.g., <code>my-disk-snapshot</code>).</p>
-- Required key: diskSnapshotName
-- @return DeleteDiskSnapshotRequest structure as a key-value pair table
function M.DeleteDiskSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDiskSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskSnapshotName"] = args["diskSnapshotName"],
	}
	asserts.AssertDeleteDiskSnapshotRequest(all_args)
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

keys.GetDiskSnapshotsRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetDiskSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiskSnapshotsRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiskSnapshotsRequest[k], "GetDiskSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiskSnapshotsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your GetDiskSnapshots request.</p>
-- @return GetDiskSnapshotsRequest structure as a key-value pair table
function M.GetDiskSnapshotsRequest(args)
	assert(args, "You must provide an argument table when creating GetDiskSnapshotsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetDiskSnapshotsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDiskFromSnapshotRequest = { ["diskName"] = true, ["availabilityZone"] = true, ["diskSnapshotName"] = true, ["sizeInGb"] = true, nil }

function asserts.AssertCreateDiskFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskFromSnapshotRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	assert(struct["diskSnapshotName"], "Expected key diskSnapshotName to exist in table")
	assert(struct["availabilityZone"], "Expected key availabilityZone to exist in table")
	assert(struct["sizeInGb"], "Expected key sizeInGb to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	if struct["availabilityZone"] then asserts.AssertNonEmptyString(struct["availabilityZone"]) end
	if struct["diskSnapshotName"] then asserts.AssertResourceName(struct["diskSnapshotName"]) end
	if struct["sizeInGb"] then asserts.Assertinteger(struct["sizeInGb"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskFromSnapshotRequest[k], "CreateDiskFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskFromSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>
-- * availabilityZone [NonEmptyString] <p>The Availability Zone where you want to create the disk (e.g., <code>us-east-2a</code>). Choose the same Availability Zone as the Lightsail instance where you want to create the disk.</p> <p>Use the GetRegions operation to list the Availability Zones where Lightsail is currently available.</p>
-- * diskSnapshotName [ResourceName] <p>The name of the disk snapshot (e.g., <code>my-snapshot</code>) from which to create the new storage disk.</p>
-- * sizeInGb [integer] <p>The size of the disk in GB (e.g., <code>32</code>).</p>
-- Required key: diskName
-- Required key: diskSnapshotName
-- Required key: availabilityZone
-- Required key: sizeInGb
-- @return CreateDiskFromSnapshotRequest structure as a key-value pair table
function M.CreateDiskFromSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateDiskFromSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
		["availabilityZone"] = args["availabilityZone"],
		["diskSnapshotName"] = args["diskSnapshotName"],
		["sizeInGb"] = args["sizeInGb"],
	}
	asserts.AssertCreateDiskFromSnapshotRequest(all_args)
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

keys.GetRelationalDatabaseLogStreamsResult = { ["logStreams"] = true, nil }

function asserts.AssertGetRelationalDatabaseLogStreamsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseLogStreamsResult to be of type 'table'")
	if struct["logStreams"] then asserts.AssertStringList(struct["logStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseLogStreamsResult[k], "GetRelationalDatabaseLogStreamsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseLogStreamsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logStreams [StringList] <p>An object describing the result of your get relational database log streams request.</p>
-- @return GetRelationalDatabaseLogStreamsResult structure as a key-value pair table
function M.GetRelationalDatabaseLogStreamsResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseLogStreamsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logStreams"] = args["logStreams"],
	}
	asserts.AssertGetRelationalDatabaseLogStreamsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseRequest = { ["relationalDatabaseName"] = true, nil }

function asserts.AssertGetRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseRequest[k], "GetRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of the database that you are looking up.</p>
-- Required key: relationalDatabaseName
-- @return GetRelationalDatabaseRequest structure as a key-value pair table
function M.GetRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
	}
	asserts.AssertGetRelationalDatabaseRequest(all_args)
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

keys.LoadBalancerTlsCertificateDomainValidationOption = { ["validationStatus"] = true, ["domainName"] = true, nil }

function asserts.AssertLoadBalancerTlsCertificateDomainValidationOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerTlsCertificateDomainValidationOption to be of type 'table'")
	if struct["validationStatus"] then asserts.AssertLoadBalancerTlsCertificateDomainStatus(struct["validationStatus"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerTlsCertificateDomainValidationOption[k], "LoadBalancerTlsCertificateDomainValidationOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerTlsCertificateDomainValidationOption
-- <p>Contains information about the domain names on an SSL/TLS certificate that you will use to validate domain ownership.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validationStatus [LoadBalancerTlsCertificateDomainStatus] <p>The status of the domain validation. Valid values are listed below.</p>
-- * domainName [DomainName] <p>The fully qualified domain name in the certificate request.</p>
-- @return LoadBalancerTlsCertificateDomainValidationOption structure as a key-value pair table
function M.LoadBalancerTlsCertificateDomainValidationOption(args)
	assert(args, "You must provide an argument table when creating LoadBalancerTlsCertificateDomainValidationOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["validationStatus"] = args["validationStatus"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertLoadBalancerTlsCertificateDomainValidationOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRelationalDatabaseRequest = { ["relationalDatabaseName"] = true, ["relationalDatabaseSnapshotName"] = true, nil }

function asserts.AssertStopRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["relationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["relationalDatabaseSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRelationalDatabaseRequest[k], "StopRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database to stop.</p>
-- * relationalDatabaseSnapshotName [ResourceName] <p>The name of your new database snapshot to be created before stopping your database.</p>
-- Required key: relationalDatabaseName
-- @return StopRelationalDatabaseRequest structure as a key-value pair table
function M.StopRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating StopRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["relationalDatabaseSnapshotName"] = args["relationalDatabaseSnapshotName"],
	}
	asserts.AssertStopRelationalDatabaseRequest(all_args)
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

keys.CreateRelationalDatabaseFromSnapshotRequest = { ["availabilityZone"] = true, ["publiclyAccessible"] = true, ["sourceRelationalDatabaseName"] = true, ["useLatestRestorableTime"] = true, ["relationalDatabaseName"] = true, ["relationalDatabaseBundleId"] = true, ["restoreTime"] = true, ["relationalDatabaseSnapshotName"] = true, nil }

function asserts.AssertCreateRelationalDatabaseFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRelationalDatabaseFromSnapshotRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["availabilityZone"] then asserts.Assertstring(struct["availabilityZone"]) end
	if struct["publiclyAccessible"] then asserts.Assertboolean(struct["publiclyAccessible"]) end
	if struct["sourceRelationalDatabaseName"] then asserts.AssertResourceName(struct["sourceRelationalDatabaseName"]) end
	if struct["useLatestRestorableTime"] then asserts.Assertboolean(struct["useLatestRestorableTime"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["relationalDatabaseBundleId"] then asserts.Assertstring(struct["relationalDatabaseBundleId"]) end
	if struct["restoreTime"] then asserts.AssertIsoDate(struct["restoreTime"]) end
	if struct["relationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["relationalDatabaseSnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRelationalDatabaseFromSnapshotRequest[k], "CreateRelationalDatabaseFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRelationalDatabaseFromSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * availabilityZone [string] <p>The Availability Zone in which to create your new database. Use the <code>us-east-2a</code> case-sensitive format.</p> <p>You can get a list of Availability Zones by using the <code>get regions</code> operation. Be sure to add the <code>include relational database Availability Zones</code> parameter to your request.</p>
-- * publiclyAccessible [boolean] <p>Specifies the accessibility options for your new database. A value of <code>true</code> specifies a database that is available to resources outside of your Lightsail account. A value of <code>false</code> specifies a database that is available only to your Lightsail resources in the same region as your database.</p>
-- * sourceRelationalDatabaseName [ResourceName] <p>The name of the source database.</p>
-- * useLatestRestorableTime [boolean] <p>Specifies whether your database is restored from the latest backup time. A value of <code>true</code> restores from the latest backup time. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if the <code>restore time</code> parameter is provided.</p>
-- * relationalDatabaseName [ResourceName] <p>The name to use for your new database.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p> </li> <li> <p>The first and last character must be a letter or number.</p> </li> </ul>
-- * relationalDatabaseBundleId [string] <p>The bundle ID for your new database. A bundle describes the performance specifications for your database.</p> <p>You can get a list of database bundle IDs by using the <code>get relational database bundles</code> operation.</p> <p>When creating a new database from a snapshot, you cannot choose a bundle that is smaller than the bundle of the source database.</p>
-- * restoreTime [IsoDate] <p>The date and time to restore your database from.</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the database.</p> </li> <li> <p>Cannot be specified if the <code>use latest restorable time</code> parameter is <code>true</code>.</p> </li> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Specified in the Unix time format.</p> <p>For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then you input <code>1538424000</code> as the restore time.</p> </li> </ul>
-- * relationalDatabaseSnapshotName [ResourceName] <p>The name of the database snapshot from which to create your new database.</p>
-- Required key: relationalDatabaseName
-- @return CreateRelationalDatabaseFromSnapshotRequest structure as a key-value pair table
function M.CreateRelationalDatabaseFromSnapshotRequest(args)
	assert(args, "You must provide an argument table when creating CreateRelationalDatabaseFromSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["availabilityZone"] = args["availabilityZone"],
		["publiclyAccessible"] = args["publiclyAccessible"],
		["sourceRelationalDatabaseName"] = args["sourceRelationalDatabaseName"],
		["useLatestRestorableTime"] = args["useLatestRestorableTime"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["relationalDatabaseBundleId"] = args["relationalDatabaseBundleId"],
		["restoreTime"] = args["restoreTime"],
		["relationalDatabaseSnapshotName"] = args["relationalDatabaseSnapshotName"],
	}
	asserts.AssertCreateRelationalDatabaseFromSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseMasterUserPasswordRequest = { ["relationalDatabaseName"] = true, ["passwordVersion"] = true, nil }

function asserts.AssertGetRelationalDatabaseMasterUserPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseMasterUserPasswordRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["passwordVersion"] then asserts.AssertRelationalDatabasePasswordVersion(struct["passwordVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseMasterUserPasswordRequest[k], "GetRelationalDatabaseMasterUserPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseMasterUserPasswordRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database for which to get the master user password.</p>
-- * passwordVersion [RelationalDatabasePasswordVersion] <p>The password version to return.</p> <p>Specifying <code>CURRENT</code> or <code>PREVIOUS</code> returns the current or previous passwords respectively. Specifying <code>PENDING</code> returns the newest version of the password that will rotate to <code>CURRENT</code>. After the <code>PENDING</code> password rotates to <code>CURRENT</code>, the <code>PENDING</code> password is no longer available.</p> <p>Default: <code>CURRENT</code> </p>
-- Required key: relationalDatabaseName
-- @return GetRelationalDatabaseMasterUserPasswordRequest structure as a key-value pair table
function M.GetRelationalDatabaseMasterUserPasswordRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseMasterUserPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["passwordVersion"] = args["passwordVersion"],
	}
	asserts.AssertGetRelationalDatabaseMasterUserPasswordRequest(all_args)
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

keys.CreateDiskSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertCreateDiskSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDiskSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDiskSnapshotResult[k], "CreateDiskSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDiskSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return CreateDiskSnapshotResult structure as a key-value pair table
function M.CreateDiskSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateDiskSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateDiskSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseLogStreamsRequest = { ["relationalDatabaseName"] = true, nil }

function asserts.AssertGetRelationalDatabaseLogStreamsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseLogStreamsRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseLogStreamsRequest[k], "GetRelationalDatabaseLogStreamsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseLogStreamsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database for which to get log streams.</p>
-- Required key: relationalDatabaseName
-- @return GetRelationalDatabaseLogStreamsRequest structure as a key-value pair table
function M.GetRelationalDatabaseLogStreamsRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseLogStreamsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
	}
	asserts.AssertGetRelationalDatabaseLogStreamsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRelationalDatabaseParametersRequest = { ["relationalDatabaseName"] = true, ["parameters"] = true, nil }

function asserts.AssertUpdateRelationalDatabaseParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRelationalDatabaseParametersRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	assert(struct["parameters"], "Expected key parameters to exist in table")
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["parameters"] then asserts.AssertRelationalDatabaseParameterList(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRelationalDatabaseParametersRequest[k], "UpdateRelationalDatabaseParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRelationalDatabaseParametersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseName [ResourceName] <p>The name of your database for which to update parameters.</p>
-- * parameters [RelationalDatabaseParameterList] <p>The database parameters to update.</p>
-- Required key: relationalDatabaseName
-- Required key: parameters
-- @return UpdateRelationalDatabaseParametersRequest structure as a key-value pair table
function M.UpdateRelationalDatabaseParametersRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRelationalDatabaseParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertUpdateRelationalDatabaseParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseSnapshotResult = { ["relationalDatabaseSnapshot"] = true, nil }

function asserts.AssertGetRelationalDatabaseSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseSnapshotResult to be of type 'table'")
	if struct["relationalDatabaseSnapshot"] then asserts.AssertRelationalDatabaseSnapshot(struct["relationalDatabaseSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseSnapshotResult[k], "GetRelationalDatabaseSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabaseSnapshot [RelationalDatabaseSnapshot] <p>An object describing the specified database snapshot.</p>
-- @return GetRelationalDatabaseSnapshotResult structure as a key-value pair table
function M.GetRelationalDatabaseSnapshotResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabaseSnapshot"] = args["relationalDatabaseSnapshot"],
	}
	asserts.AssertGetRelationalDatabaseSnapshotResult(all_args)
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

keys.GetDisksRequest = { ["pageToken"] = true, nil }

function asserts.AssertGetDisksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDisksRequest to be of type 'table'")
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDisksRequest[k], "GetDisksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDisksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pageToken [string] <p>A token used for advancing to the next page of results from your GetDisks request.</p>
-- @return GetDisksRequest structure as a key-value pair table
function M.GetDisksRequest(args)
	assert(args, "You must provide an argument table when creating GetDisksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pageToken"] = args["pageToken"],
	}
	asserts.AssertGetDisksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRegionsRequest = { ["includeRelationalDatabaseAvailabilityZones"] = true, ["includeAvailabilityZones"] = true, nil }

function asserts.AssertGetRegionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegionsRequest to be of type 'table'")
	if struct["includeRelationalDatabaseAvailabilityZones"] then asserts.Assertboolean(struct["includeRelationalDatabaseAvailabilityZones"]) end
	if struct["includeAvailabilityZones"] then asserts.Assertboolean(struct["includeAvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegionsRequest[k], "GetRegionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeRelationalDatabaseAvailabilityZones [boolean] <p>&gt;A Boolean value indicating whether to also include Availability Zones for databases in your get regions request. Availability Zones are indicated with a letter (e.g., <code>us-east-2a</code>).</p>
-- * includeAvailabilityZones [boolean] <p>A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., <code>us-east-2a</code>.</p>
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
		["includeRelationalDatabaseAvailabilityZones"] = args["includeRelationalDatabaseAvailabilityZones"],
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

keys.DeleteLoadBalancerTlsCertificateResult = { ["operations"] = true, nil }

function asserts.AssertDeleteLoadBalancerTlsCertificateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoadBalancerTlsCertificateResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoadBalancerTlsCertificateResult[k], "DeleteLoadBalancerTlsCertificateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoadBalancerTlsCertificateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return DeleteLoadBalancerTlsCertificateResult structure as a key-value pair table
function M.DeleteLoadBalancerTlsCertificateResult(args)
	assert(args, "You must provide an argument table when creating DeleteLoadBalancerTlsCertificateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteLoadBalancerTlsCertificateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseEndpoint = { ["port"] = true, ["address"] = true, nil }

function asserts.AssertRelationalDatabaseEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseEndpoint to be of type 'table'")
	if struct["port"] then asserts.Assertinteger(struct["port"]) end
	if struct["address"] then asserts.AssertNonEmptyString(struct["address"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseEndpoint[k], "RelationalDatabaseEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseEndpoint
-- <p>Describes an endpoint for a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * port [integer] <p>Specifies the port that the database is listening on.</p>
-- * address [NonEmptyString] <p>Specifies the DNS address of the database.</p>
-- @return RelationalDatabaseEndpoint structure as a key-value pair table
function M.RelationalDatabaseEndpoint(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["port"] = args["port"],
		["address"] = args["address"],
	}
	asserts.AssertRelationalDatabaseEndpoint(all_args)
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

keys.GetRelationalDatabaseResult = { ["relationalDatabase"] = true, nil }

function asserts.AssertGetRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseResult to be of type 'table'")
	if struct["relationalDatabase"] then asserts.AssertRelationalDatabase(struct["relationalDatabase"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseResult[k], "GetRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relationalDatabase [RelationalDatabase] <p>An object describing the specified database.</p>
-- @return GetRelationalDatabaseResult structure as a key-value pair table
function M.GetRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relationalDatabase"] = args["relationalDatabase"],
	}
	asserts.AssertGetRelationalDatabaseResult(all_args)
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

keys.UpdateRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertUpdateRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRelationalDatabaseResult[k], "UpdateRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your update relational database request.</p>
-- @return UpdateRelationalDatabaseResult structure as a key-value pair table
function M.UpdateRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating UpdateRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertUpdateRelationalDatabaseResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRelationalDatabaseRequest = { ["finalRelationalDatabaseSnapshotName"] = true, ["relationalDatabaseName"] = true, ["skipFinalSnapshot"] = true, nil }

function asserts.AssertDeleteRelationalDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRelationalDatabaseRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	if struct["finalRelationalDatabaseSnapshotName"] then asserts.AssertResourceName(struct["finalRelationalDatabaseSnapshotName"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["skipFinalSnapshot"] then asserts.Assertboolean(struct["skipFinalSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRelationalDatabaseRequest[k], "DeleteRelationalDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRelationalDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * finalRelationalDatabaseSnapshotName [ResourceName] <p>The name of the database snapshot created if <code>skip final snapshot</code> is <code>false</code>, which is the default value for that parameter.</p> <note> <p>Specifying this parameter and also specifying the <code>skip final snapshot</code> parameter to <code>true</code> results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p> </li> <li> <p>The first and last character must be a letter or number.</p> </li> </ul>
-- * relationalDatabaseName [ResourceName] <p>The name of the database that you are deleting.</p>
-- * skipFinalSnapshot [boolean] <p>Determines whether a final database snapshot is created before your database is deleted. If <code>true</code> is specified, no database snapshot is created. If <code>false</code> is specified, a database snapshot is created before your database is deleted.</p> <p>You must specify the <code>final relational database snapshot name</code> parameter if the <code>skip final snapshot</code> parameter is <code>false</code>.</p> <p>Default: <code>false</code> </p>
-- Required key: relationalDatabaseName
-- @return DeleteRelationalDatabaseRequest structure as a key-value pair table
function M.DeleteRelationalDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRelationalDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["finalRelationalDatabaseSnapshotName"] = args["finalRelationalDatabaseSnapshotName"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["skipFinalSnapshot"] = args["skipFinalSnapshot"],
	}
	asserts.AssertDeleteRelationalDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceHealthSummary = { ["instanceHealth"] = true, ["instanceName"] = true, ["instanceHealthReason"] = true, nil }

function asserts.AssertInstanceHealthSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceHealthSummary to be of type 'table'")
	if struct["instanceHealth"] then asserts.AssertInstanceHealthState(struct["instanceHealth"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["instanceHealthReason"] then asserts.AssertInstanceHealthReason(struct["instanceHealthReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceHealthSummary[k], "InstanceHealthSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceHealthSummary
-- <p>Describes information about the health of the instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceHealth [InstanceHealthState] <p>Describes the overall instance health. Valid values are below.</p>
-- * instanceName [ResourceName] <p>The name of the Lightsail instance for which you are requesting health check data.</p>
-- * instanceHealthReason [InstanceHealthReason] <p>More information about the instance health. If the <code>instanceHealth</code> is <code>healthy</code>, then an <code>instanceHealthReason</code> value is not provided.</p> <p>If <b> <code>instanceHealth</code> </b> is <code>initial</code>, the <b> <code>instanceHealthReason</code> </b> value can be one of the following:</p> <ul> <li> <p> <b> <code>Lb.RegistrationInProgress</code> </b> - The target instance is in the process of being registered with the load balancer.</p> </li> <li> <p> <b> <code>Lb.InitialHealthChecking</code> </b> - The Lightsail load balancer is still sending the target instance the minimum number of health checks required to determine its health status.</p> </li> </ul> <p>If <b> <code>instanceHealth</code> </b> is <code>unhealthy</code>, the <b> <code>instanceHealthReason</code> </b> value can be one of the following:</p> <ul> <li> <p> <b> <code>Instance.ResponseCodeMismatch</code> </b> - The health checks did not return an expected HTTP code.</p> </li> <li> <p> <b> <code>Instance.Timeout</code> </b> - The health check requests timed out.</p> </li> <li> <p> <b> <code>Instance.FailedHealthChecks</code> </b> - The health checks failed because the connection to the target instance timed out, the target instance response was malformed, or the target instance failed the health check for an unknown reason.</p> </li> <li> <p> <b> <code>Lb.InternalError</code> </b> - The health checks failed due to an internal error.</p> </li> </ul> <p>If <b> <code>instanceHealth</code> </b> is <code>unused</code>, the <b> <code>instanceHealthReason</code> </b> value can be one of the following:</p> <ul> <li> <p> <b> <code>Instance.NotRegistered</code> </b> - The target instance is not registered with the target group.</p> </li> <li> <p> <b> <code>Instance.NotInUse</code> </b> - The target group is not used by any load balancer, or the target instance is in an Availability Zone that is not enabled for its load balancer.</p> </li> <li> <p> <b> <code>Instance.IpUnusable</code> </b> - The target IP address is reserved for use by a Lightsail load balancer.</p> </li> <li> <p> <b> <code>Instance.InvalidState</code> </b> - The target is in the stopped or terminated state.</p> </li> </ul> <p>If <b> <code>instanceHealth</code> </b> is <code>draining</code>, the <b> <code>instanceHealthReason</code> </b> value can be one of the following:</p> <ul> <li> <p> <b> <code>Instance.DeregistrationInProgress</code> </b> - The target instance is in the process of being deregistered and the deregistration delay period has not expired.</p> </li> </ul>
-- @return InstanceHealthSummary structure as a key-value pair table
function M.InstanceHealthSummary(args)
	assert(args, "You must provide an argument table when creating InstanceHealthSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceHealth"] = args["instanceHealth"],
		["instanceName"] = args["instanceName"],
		["instanceHealthReason"] = args["instanceHealthReason"],
	}
	asserts.AssertInstanceHealthSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Region = { ["displayName"] = true, ["description"] = true, ["relationalDatabaseAvailabilityZones"] = true, ["availabilityZones"] = true, ["continentCode"] = true, ["name"] = true, nil }

function asserts.AssertRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Region to be of type 'table'")
	if struct["displayName"] then asserts.Assertstring(struct["displayName"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	if struct["relationalDatabaseAvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["relationalDatabaseAvailabilityZones"]) end
	if struct["availabilityZones"] then asserts.AssertAvailabilityZoneList(struct["availabilityZones"]) end
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
-- * displayName [string] <p>The display name (e.g., <code>Ohio</code>).</p>
-- * description [string] <p>The description of the AWS Region (e.g., <code>This region is recommended to serve users in the eastern United States and eastern Canada</code>).</p>
-- * relationalDatabaseAvailabilityZones [AvailabilityZoneList] <p>The Availability Zones for databases. Follows the format <code>us-east-2a</code> (case-sensitive).</p>
-- * availabilityZones [AvailabilityZoneList] <p>The Availability Zones. Follows the format <code>us-east-2a</code> (case-sensitive).</p>
-- * continentCode [string] <p>The continent code (e.g., <code>NA</code>, meaning North America).</p>
-- * name [RegionName] <p>The region name (e.g., <code>us-east-2</code>).</p>
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
		["displayName"] = args["displayName"],
		["description"] = args["description"],
		["relationalDatabaseAvailabilityZones"] = args["relationalDatabaseAvailabilityZones"],
		["availabilityZones"] = args["availabilityZones"],
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

keys.GetRelationalDatabaseLogEventsRequest = { ["logStreamName"] = true, ["pageToken"] = true, ["relationalDatabaseName"] = true, ["startTime"] = true, ["endTime"] = true, ["startFromHead"] = true, nil }

function asserts.AssertGetRelationalDatabaseLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseLogEventsRequest to be of type 'table'")
	assert(struct["relationalDatabaseName"], "Expected key relationalDatabaseName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["logStreamName"] then asserts.Assertstring(struct["logStreamName"]) end
	if struct["pageToken"] then asserts.Assertstring(struct["pageToken"]) end
	if struct["relationalDatabaseName"] then asserts.AssertResourceName(struct["relationalDatabaseName"]) end
	if struct["startTime"] then asserts.AssertIsoDate(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertIsoDate(struct["endTime"]) end
	if struct["startFromHead"] then asserts.Assertboolean(struct["startFromHead"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseLogEventsRequest[k], "GetRelationalDatabaseLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseLogEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logStreamName [string] <p>The name of the log stream.</p> <p>Use the <code>get relational database log streams</code> operation to get a list of available log streams.</p>
-- * pageToken [string] <p>A token used for advancing to a specific page of results for your get relational database log events request.</p>
-- * relationalDatabaseName [ResourceName] <p>The name of your database for which to get log events.</p>
-- * startTime [IsoDate] <p>The start of the time interval from which to get log events.</p> <p>Constraints:</p> <ul> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Specified in the Unix time format.</p> <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input <code>1538424000</code> as the start time.</p> </li> </ul>
-- * endTime [IsoDate] <p>The end of the time interval from which to get log events.</p> <p>Constraints:</p> <ul> <li> <p>Specified in Universal Coordinated Time (UTC).</p> </li> <li> <p>Specified in the Unix time format.</p> <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input <code>1538424000</code> as the end time.</p> </li> </ul>
-- * startFromHead [boolean] <p>Parameter to specify if the log should start from head or tail. If <code>true</code> is specified, the log event starts from the head of the log. If <code>false</code> is specified, the log event starts from the tail of the log.</p> <p>Default: <code>false</code> </p>
-- Required key: relationalDatabaseName
-- Required key: logStreamName
-- @return GetRelationalDatabaseLogEventsRequest structure as a key-value pair table
function M.GetRelationalDatabaseLogEventsRequest(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseLogEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logStreamName"] = args["logStreamName"],
		["pageToken"] = args["pageToken"],
		["relationalDatabaseName"] = args["relationalDatabaseName"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
		["startFromHead"] = args["startFromHead"],
	}
	asserts.AssertGetRelationalDatabaseLogEventsRequest(all_args)
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

keys.DeleteRelationalDatabaseSnapshotResult = { ["operations"] = true, nil }

function asserts.AssertDeleteRelationalDatabaseSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRelationalDatabaseSnapshotResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRelationalDatabaseSnapshotResult[k], "DeleteRelationalDatabaseSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRelationalDatabaseSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your delete relational database snapshot request.</p>
-- @return DeleteRelationalDatabaseSnapshotResult structure as a key-value pair table
function M.DeleteRelationalDatabaseSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteRelationalDatabaseSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertDeleteRelationalDatabaseSnapshotResult(all_args)
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

keys.PasswordData = { ["ciphertext"] = true, ["keyPairName"] = true, nil }

function asserts.AssertPasswordData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordData to be of type 'table'")
	if struct["ciphertext"] then asserts.Assertstring(struct["ciphertext"]) end
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PasswordData[k], "PasswordData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordData
-- <p>The password data for the Windows Server-based instance, including the ciphertext and the key pair name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ciphertext [string] <p>The encrypted password. Ciphertext will be an empty string if access to your new instance is not ready yet. When you create an instance, it can take up to 15 minutes for the instance to be ready.</p> <note> <p>If you use the default key pair (<code>LightsailDefaultKeyPair</code>), the decrypted password will be available in the password field.</p> <p>If you are using a custom key pair, you need to use your own means of decryption.</p> <p>If you change the Administrator password on the instance, Lightsail will continue to return the original ciphertext value. When accessing the instance using RDP, you need to manually enter the Administrator password after changing it from the default.</p> </note>
-- * keyPairName [ResourceName] <p>The name of the key pair that you used when creating your instance. If no key pair name was specified when creating the instance, Lightsail uses the default key pair (<code>LightsailDefaultKeyPair</code>).</p> <p>If you are using a custom key pair, you need to use your own means of decrypting your password using the <code>ciphertext</code>. Lightsail creates the ciphertext by encrypting your password with the public key part of this key pair.</p>
-- @return PasswordData structure as a key-value pair table
function M.PasswordData(args)
	assert(args, "You must provide an argument table when creating PasswordData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ciphertext"] = args["ciphertext"],
		["keyPairName"] = args["keyPairName"],
	}
	asserts.AssertPasswordData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseParameter = { ["applyMethod"] = true, ["description"] = true, ["dataType"] = true, ["parameterValue"] = true, ["allowedValues"] = true, ["isModifiable"] = true, ["parameterName"] = true, ["applyType"] = true, nil }

function asserts.AssertRelationalDatabaseParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseParameter to be of type 'table'")
	if struct["applyMethod"] then asserts.Assertstring(struct["applyMethod"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	if struct["dataType"] then asserts.Assertstring(struct["dataType"]) end
	if struct["parameterValue"] then asserts.Assertstring(struct["parameterValue"]) end
	if struct["allowedValues"] then asserts.Assertstring(struct["allowedValues"]) end
	if struct["isModifiable"] then asserts.Assertboolean(struct["isModifiable"]) end
	if struct["parameterName"] then asserts.Assertstring(struct["parameterName"]) end
	if struct["applyType"] then asserts.Assertstring(struct["applyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseParameter[k], "RelationalDatabaseParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseParameter
-- <p>Describes the parameters of a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applyMethod [string] <p>Indicates when parameter updates are applied.</p> <p>Can be <code>immediate</code> or <code>pending-reboot</code>.</p>
-- * description [string] <p>Provides a description of the parameter.</p>
-- * dataType [string] <p>Specifies the valid data type for the parameter.</p>
-- * parameterValue [string] <p>Specifies the value of the parameter.</p>
-- * allowedValues [string] <p>Specifies the valid range of values for the parameter.</p>
-- * isModifiable [boolean] <p>A Boolean value indicating whether the parameter can be modified.</p>
-- * parameterName [string] <p>Specifies the name of the parameter.</p>
-- * applyType [string] <p>Specifies the engine-specific parameter type.</p>
-- @return RelationalDatabaseParameter structure as a key-value pair table
function M.RelationalDatabaseParameter(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applyMethod"] = args["applyMethod"],
		["description"] = args["description"],
		["dataType"] = args["dataType"],
		["parameterValue"] = args["parameterValue"],
		["allowedValues"] = args["allowedValues"],
		["isModifiable"] = args["isModifiable"],
		["parameterName"] = args["parameterName"],
		["applyType"] = args["applyType"],
	}
	asserts.AssertRelationalDatabaseParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachDiskRequest = { ["diskName"] = true, ["instanceName"] = true, ["diskPath"] = true, nil }

function asserts.AssertAttachDiskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachDiskRequest to be of type 'table'")
	assert(struct["diskName"], "Expected key diskName to exist in table")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	assert(struct["diskPath"], "Expected key diskPath to exist in table")
	if struct["diskName"] then asserts.AssertResourceName(struct["diskName"]) end
	if struct["instanceName"] then asserts.AssertResourceName(struct["instanceName"]) end
	if struct["diskPath"] then asserts.AssertNonEmptyString(struct["diskPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachDiskRequest[k], "AttachDiskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachDiskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * diskName [ResourceName] <p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>
-- * instanceName [ResourceName] <p>The name of the Lightsail instance where you want to utilize the storage disk.</p>
-- * diskPath [NonEmptyString] <p>The disk path to expose to the instance (e.g., <code>/dev/xvdf</code>).</p>
-- Required key: diskName
-- Required key: instanceName
-- Required key: diskPath
-- @return AttachDiskRequest structure as a key-value pair table
function M.AttachDiskRequest(args)
	assert(args, "You must provide an argument table when creating AttachDiskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["diskName"] = args["diskName"],
		["instanceName"] = args["instanceName"],
		["diskPath"] = args["diskPath"],
	}
	asserts.AssertAttachDiskRequest(all_args)
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

keys.UpdateLoadBalancerAttributeResult = { ["operations"] = true, nil }

function asserts.AssertUpdateLoadBalancerAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoadBalancerAttributeResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLoadBalancerAttributeResult[k], "UpdateLoadBalancerAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoadBalancerAttributeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the API operations.</p>
-- @return UpdateLoadBalancerAttributeResult structure as a key-value pair table
function M.UpdateLoadBalancerAttributeResult(args)
	assert(args, "You must provide an argument table when creating UpdateLoadBalancerAttributeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertUpdateLoadBalancerAttributeResult(all_args)
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

keys.StopRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertStopRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRelationalDatabaseResult[k], "StopRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your stop relational database request.</p>
-- @return StopRelationalDatabaseResult structure as a key-value pair table
function M.StopRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating StopRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertStopRelationalDatabaseResult(all_args)
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

keys.CreateLoadBalancerResult = { ["operations"] = true, nil }

function asserts.AssertCreateLoadBalancerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoadBalancerResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoadBalancerResult[k], "CreateLoadBalancerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoadBalancerResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object containing information about the API operations.</p>
-- @return CreateLoadBalancerResult structure as a key-value pair table
function M.CreateLoadBalancerResult(args)
	assert(args, "You must provide an argument table when creating CreateLoadBalancerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertCreateLoadBalancerResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseBundlesResult = { ["nextPageToken"] = true, ["bundles"] = true, nil }

function asserts.AssertGetRelationalDatabaseBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseBundlesResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["bundles"] then asserts.AssertRelationalDatabaseBundleList(struct["bundles"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseBundlesResult[k], "GetRelationalDatabaseBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseBundlesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results of your get relational database bundles request.</p>
-- * bundles [RelationalDatabaseBundleList] <p>An object describing the result of your get relational database bundles request.</p>
-- @return GetRelationalDatabaseBundlesResult structure as a key-value pair table
function M.GetRelationalDatabaseBundlesResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseBundlesResult")
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
	asserts.AssertGetRelationalDatabaseBundlesResult(all_args)
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

keys.CreateInstancesFromSnapshotRequest = { ["userData"] = true, ["availabilityZone"] = true, ["instanceNames"] = true, ["instanceSnapshotName"] = true, ["attachedDiskMapping"] = true, ["keyPairName"] = true, ["bundleId"] = true, nil }

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
	if struct["attachedDiskMapping"] then asserts.AssertAttachedDiskMap(struct["attachedDiskMapping"]) end
	if struct["keyPairName"] then asserts.AssertResourceName(struct["keyPairName"]) end
	if struct["bundleId"] then asserts.AssertNonEmptyString(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstancesFromSnapshotRequest[k], "CreateInstancesFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstancesFromSnapshotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userData [string] <p>You can create a launch script that configures a server with additional user data. For example, <code>apt-get -y update</code>.</p> <note> <p>Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the <a href="https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image">Dev Guide</a>.</p> </note>
-- * availabilityZone [string] <p>The Availability Zone where you want to create your instances. Use the following formatting: <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get regions</a> operation. Be sure to add the <code>include Availability Zones</code> parameter to your request.</p>
-- * instanceNames [StringList] <p>The names for your new instances.</p>
-- * instanceSnapshotName [ResourceName] <p>The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.</p>
-- * attachedDiskMapping [AttachedDiskMap] <p>An object containing information about one or more disk mappings.</p>
-- * keyPairName [ResourceName] <p>The name for your key pair.</p>
-- * bundleId [NonEmptyString] <p>The bundle of specification information for your virtual private server (or <i>instance</i>), including the pricing plan (e.g., <code>micro_1_0</code>).</p>
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
		["attachedDiskMapping"] = args["attachedDiskMapping"],
		["keyPairName"] = args["keyPairName"],
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertCreateInstancesFromSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRelationalDatabaseParametersResult = { ["operations"] = true, nil }

function asserts.AssertUpdateRelationalDatabaseParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRelationalDatabaseParametersResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRelationalDatabaseParametersResult[k], "UpdateRelationalDatabaseParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRelationalDatabaseParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your update relational database parameters request.</p>
-- @return UpdateRelationalDatabaseParametersResult structure as a key-value pair table
function M.UpdateRelationalDatabaseParametersResult(args)
	assert(args, "You must provide an argument table when creating UpdateRelationalDatabaseParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertUpdateRelationalDatabaseParametersResult(all_args)
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

keys.StartRelationalDatabaseResult = { ["operations"] = true, nil }

function asserts.AssertStartRelationalDatabaseResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartRelationalDatabaseResult to be of type 'table'")
	if struct["operations"] then asserts.AssertOperationList(struct["operations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartRelationalDatabaseResult[k], "StartRelationalDatabaseResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartRelationalDatabaseResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operations [OperationList] <p>An object describing the result of your start relational database request.</p>
-- @return StartRelationalDatabaseResult structure as a key-value pair table
function M.StartRelationalDatabaseResult(args)
	assert(args, "You must provide an argument table when creating StartRelationalDatabaseResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operations"] = args["operations"],
	}
	asserts.AssertStartRelationalDatabaseResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RelationalDatabaseBundle = { ["name"] = true, ["isEncrypted"] = true, ["diskSizeInGb"] = true, ["ramSizeInGb"] = true, ["transferPerMonthInGb"] = true, ["cpuCount"] = true, ["price"] = true, ["isActive"] = true, ["bundleId"] = true, nil }

function asserts.AssertRelationalDatabaseBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RelationalDatabaseBundle to be of type 'table'")
	if struct["name"] then asserts.Assertstring(struct["name"]) end
	if struct["isEncrypted"] then asserts.Assertboolean(struct["isEncrypted"]) end
	if struct["diskSizeInGb"] then asserts.Assertinteger(struct["diskSizeInGb"]) end
	if struct["ramSizeInGb"] then asserts.Assertfloat(struct["ramSizeInGb"]) end
	if struct["transferPerMonthInGb"] then asserts.Assertinteger(struct["transferPerMonthInGb"]) end
	if struct["cpuCount"] then asserts.Assertinteger(struct["cpuCount"]) end
	if struct["price"] then asserts.Assertfloat(struct["price"]) end
	if struct["isActive"] then asserts.Assertboolean(struct["isActive"]) end
	if struct["bundleId"] then asserts.Assertstring(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RelationalDatabaseBundle[k], "RelationalDatabaseBundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RelationalDatabaseBundle
-- <p>Describes a database bundle. A bundle describes the performance specifications of the database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [string] <p>The name for the database bundle.</p>
-- * isEncrypted [boolean] <p>A Boolean value indicating whether the database bundle is encrypted.</p>
-- * diskSizeInGb [integer] <p>The size of the disk for the database bundle.</p>
-- * ramSizeInGb [float] <p>The amount of RAM in GB (for example, <code>2.0</code>) for the database bundle.</p>
-- * transferPerMonthInGb [integer] <p>The data transfer rate per month in GB for the database bundle.</p>
-- * cpuCount [integer] <p>The number of virtual CPUs (vCPUs) for the database bundle.</p>
-- * price [float] <p>The cost of the database bundle in US currency.</p>
-- * isActive [boolean] <p>A Boolean value indicating whether the database bundle is active.</p>
-- * bundleId [string] <p>The ID for the database bundle.</p>
-- @return RelationalDatabaseBundle structure as a key-value pair table
function M.RelationalDatabaseBundle(args)
	assert(args, "You must provide an argument table when creating RelationalDatabaseBundle")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["isEncrypted"] = args["isEncrypted"],
		["diskSizeInGb"] = args["diskSizeInGb"],
		["ramSizeInGb"] = args["ramSizeInGb"],
		["transferPerMonthInGb"] = args["transferPerMonthInGb"],
		["cpuCount"] = args["cpuCount"],
		["price"] = args["price"],
		["isActive"] = args["isActive"],
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertRelationalDatabaseBundle(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRelationalDatabaseEventsResult = { ["nextPageToken"] = true, ["relationalDatabaseEvents"] = true, nil }

function asserts.AssertGetRelationalDatabaseEventsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRelationalDatabaseEventsResult to be of type 'table'")
	if struct["nextPageToken"] then asserts.Assertstring(struct["nextPageToken"]) end
	if struct["relationalDatabaseEvents"] then asserts.AssertRelationalDatabaseEventList(struct["relationalDatabaseEvents"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRelationalDatabaseEventsResult[k], "GetRelationalDatabaseEventsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRelationalDatabaseEventsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [string] <p>A token used for advancing to the next page of results from your get relational database events request.</p>
-- * relationalDatabaseEvents [RelationalDatabaseEventList] <p>An object describing the result of your get relational database events request.</p>
-- @return GetRelationalDatabaseEventsResult structure as a key-value pair table
function M.GetRelationalDatabaseEventsResult(args)
	assert(args, "You must provide an argument table when creating GetRelationalDatabaseEventsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["relationalDatabaseEvents"] = args["relationalDatabaseEvents"],
	}
	asserts.AssertGetRelationalDatabaseEventsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancer = { ["instancePort"] = true, ["configurationOptions"] = true, ["protocol"] = true, ["name"] = true, ["resourceType"] = true, ["supportCode"] = true, ["tlsCertificateSummaries"] = true, ["healthCheckPath"] = true, ["state"] = true, ["dnsName"] = true, ["arn"] = true, ["publicPorts"] = true, ["instanceHealthSummary"] = true, ["createdAt"] = true, ["location"] = true, nil }

function asserts.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["instancePort"] then asserts.Assertinteger(struct["instancePort"]) end
	if struct["configurationOptions"] then asserts.AssertLoadBalancerConfigurationOptions(struct["configurationOptions"]) end
	if struct["protocol"] then asserts.AssertLoadBalancerProtocol(struct["protocol"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["supportCode"] then asserts.Assertstring(struct["supportCode"]) end
	if struct["tlsCertificateSummaries"] then asserts.AssertLoadBalancerTlsCertificateSummaryList(struct["tlsCertificateSummaries"]) end
	if struct["healthCheckPath"] then asserts.AssertNonEmptyString(struct["healthCheckPath"]) end
	if struct["state"] then asserts.AssertLoadBalancerState(struct["state"]) end
	if struct["dnsName"] then asserts.AssertNonEmptyString(struct["dnsName"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["publicPorts"] then asserts.AssertPortList(struct["publicPorts"]) end
	if struct["instanceHealthSummary"] then asserts.AssertInstanceHealthSummaryList(struct["instanceHealthSummary"]) end
	if struct["createdAt"] then asserts.AssertIsoDate(struct["createdAt"]) end
	if struct["location"] then asserts.AssertResourceLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancer[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- <p>Describes the Lightsail load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instancePort [integer] <p>The port where the load balancer will direct traffic to your Lightsail instances. For HTTP traffic, it's port 80. For HTTPS traffic, it's port 443.</p>
-- * configurationOptions [LoadBalancerConfigurationOptions] <p>A string to string map of the configuration options for your load balancer. Valid values are listed below.</p>
-- * protocol [LoadBalancerProtocol] <p>The protocol you have enabled for your load balancer. Valid values are below.</p> <p>You can't just have <code>HTTP_HTTPS</code>, but you can have just <code>HTTP</code>.</p>
-- * name [ResourceName] <p>The name of the load balancer (e.g., <code>my-load-balancer</code>).</p>
-- * resourceType [ResourceType] <p>The resource type (e.g., <code>LoadBalancer</code>.</p>
-- * supportCode [string] <p>The support code. Include this code in your email to support when you have questions about your Lightsail load balancer. This code enables our support team to look up your Lightsail information more easily.</p>
-- * tlsCertificateSummaries [LoadBalancerTlsCertificateSummaryList] <p>An array of LoadBalancerTlsCertificateSummary objects that provide additional information about the SSL/TLS certificates. For example, if <code>true</code>, the certificate is attached to the load balancer.</p>
-- * healthCheckPath [NonEmptyString] <p>The path you specified to perform your health checks. If no path is specified, the load balancer tries to make a request to the default (root) page.</p>
-- * state [LoadBalancerState] <p>The status of your load balancer. Valid values are below.</p>
-- * dnsName [NonEmptyString] <p>The DNS name of your Lightsail load balancer.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the load balancer.</p>
-- * publicPorts [PortList] <p>An array of public port settings for your load balancer. For HTTP, use port 80. For HTTPS, use port 443.</p>
-- * instanceHealthSummary [InstanceHealthSummaryList] <p>An array of InstanceHealthSummary objects describing the health of the load balancer.</p>
-- * createdAt [IsoDate] <p>The date when your load balancer was created.</p>
-- * location [ResourceLocation] <p>The AWS Region where your load balancer was created (e.g., <code>us-east-2a</code>). Lightsail automatically creates your load balancer across Availability Zones.</p>
-- @return LoadBalancer structure as a key-value pair table
function M.LoadBalancer(args)
	assert(args, "You must provide an argument table when creating LoadBalancer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instancePort"] = args["instancePort"],
		["configurationOptions"] = args["configurationOptions"],
		["protocol"] = args["protocol"],
		["name"] = args["name"],
		["resourceType"] = args["resourceType"],
		["supportCode"] = args["supportCode"],
		["tlsCertificateSummaries"] = args["tlsCertificateSummaries"],
		["healthCheckPath"] = args["healthCheckPath"],
		["state"] = args["state"],
		["dnsName"] = args["dnsName"],
		["arn"] = args["arn"],
		["publicPorts"] = args["publicPorts"],
		["instanceHealthSummary"] = args["instanceHealthSummary"],
		["createdAt"] = args["createdAt"],
		["location"] = args["location"],
	}
	asserts.AssertLoadBalancer(all_args)
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

function asserts.AssertInstanceHealthState(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceHealthState to be of type 'string'")
end

--  
function M.InstanceHealthState(str)
	asserts.AssertInstanceHealthState(str)
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

function asserts.AssertLoadBalancerTlsCertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTlsCertificateStatus to be of type 'string'")
end

--  
function M.LoadBalancerTlsCertificateStatus(str)
	asserts.AssertLoadBalancerTlsCertificateStatus(str)
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

function asserts.AssertLoadBalancerMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerMetricName to be of type 'string'")
end

--  
function M.LoadBalancerMetricName(str)
	asserts.AssertLoadBalancerMetricName(str)
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

function asserts.AssertDiskSnapshotState(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskSnapshotState to be of type 'string'")
end

--  
function M.DiskSnapshotState(str)
	asserts.AssertDiskSnapshotState(str)
	return str
end

function asserts.AssertLoadBalancerProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerProtocol to be of type 'string'")
end

--  
function M.LoadBalancerProtocol(str)
	asserts.AssertLoadBalancerProtocol(str)
	return str
end

function asserts.AssertLoadBalancerAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerAttributeName to be of type 'string'")
end

--  
function M.LoadBalancerAttributeName(str)
	asserts.AssertLoadBalancerAttributeName(str)
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

function asserts.AssertInstanceHealthReason(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceHealthReason to be of type 'string'")
end

--  
function M.InstanceHealthReason(str)
	asserts.AssertInstanceHealthReason(str)
	return str
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

function asserts.AssertDiskState(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskState to be of type 'string'")
end

--  
function M.DiskState(str)
	asserts.AssertDiskState(str)
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

function asserts.AssertRelationalDatabaseEngine(str)
	assert(str)
	assert(type(str) == "string", "Expected RelationalDatabaseEngine to be of type 'string'")
end

--  
function M.RelationalDatabaseEngine(str)
	asserts.AssertRelationalDatabaseEngine(str)
	return str
end

function asserts.AssertInstancePlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePlatform to be of type 'string'")
end

--  
function M.InstancePlatform(str)
	asserts.AssertInstancePlatform(str)
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

function asserts.AssertLoadBalancerState(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerState to be of type 'string'")
end

--  
function M.LoadBalancerState(str)
	asserts.AssertLoadBalancerState(str)
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

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	asserts.AssertSensitiveString(str)
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

function asserts.AssertLoadBalancerTlsCertificateRenewalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTlsCertificateRenewalStatus to be of type 'string'")
end

--  
function M.LoadBalancerTlsCertificateRenewalStatus(str)
	asserts.AssertLoadBalancerTlsCertificateRenewalStatus(str)
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

function asserts.AssertRelationalDatabaseMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected RelationalDatabaseMetricName to be of type 'string'")
end

--  
function M.RelationalDatabaseMetricName(str)
	asserts.AssertRelationalDatabaseMetricName(str)
	return str
end

function asserts.AssertLoadBalancerTlsCertificateRevocationReason(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTlsCertificateRevocationReason to be of type 'string'")
end

--  
function M.LoadBalancerTlsCertificateRevocationReason(str)
	asserts.AssertLoadBalancerTlsCertificateRevocationReason(str)
	return str
end

function asserts.AssertLoadBalancerTlsCertificateDomainStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTlsCertificateDomainStatus to be of type 'string'")
end

--  
function M.LoadBalancerTlsCertificateDomainStatus(str)
	asserts.AssertLoadBalancerTlsCertificateDomainStatus(str)
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

function asserts.AssertStringMax256(str)
	assert(str)
	assert(type(str) == "string", "Expected StringMax256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringMax256(str)
	asserts.AssertStringMax256(str)
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

function asserts.AssertRelationalDatabasePasswordVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected RelationalDatabasePasswordVersion to be of type 'string'")
end

--  
function M.RelationalDatabasePasswordVersion(str)
	asserts.AssertRelationalDatabasePasswordVersion(str)
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

function asserts.AssertLoadBalancerTlsCertificateFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected LoadBalancerTlsCertificateFailureReason to be of type 'string'")
end

--  
function M.LoadBalancerTlsCertificateFailureReason(str)
	asserts.AssertLoadBalancerTlsCertificateFailureReason(str)
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

function asserts.AssertAttachedDiskMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AttachedDiskMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertResourceName(k)
		asserts.AssertDiskMapList(v)
	end
end

function M.AttachedDiskMap(map)
	asserts.AssertAttachedDiskMap(map)
	return map
end

function asserts.AssertLoadBalancerConfigurationOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected LoadBalancerConfigurationOptions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertLoadBalancerAttributeName(k)
		asserts.Assertstring(v)
	end
end

function M.LoadBalancerConfigurationOptions(map)
	asserts.AssertLoadBalancerConfigurationOptions(map)
	return map
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertIsoDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IsoDate to be of type 'string'")
end

function M.IsoDate(timestamp)
	asserts.AssertIsoDate(timestamp)
	return timestamp
end

function asserts.AssertLoadBalancerTlsCertificateDomainValidationRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTlsCertificateDomainValidationRecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerTlsCertificateDomainValidationRecord(v)
	end
end

--  
-- List of LoadBalancerTlsCertificateDomainValidationRecord objects
function M.LoadBalancerTlsCertificateDomainValidationRecordList(list)
	asserts.AssertLoadBalancerTlsCertificateDomainValidationRecordList(list)
	return list
end

function asserts.AssertRelationalDatabaseSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabaseSnapshot(v)
	end
end

--  
-- List of RelationalDatabaseSnapshot objects
function M.RelationalDatabaseSnapshotList(list)
	asserts.AssertRelationalDatabaseSnapshotList(list)
	return list
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

function asserts.AssertResourceNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.ResourceNameList(list)
	asserts.AssertResourceNameList(list)
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

function asserts.AssertInstancePlatformList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePlatformList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstancePlatform(v)
	end
end

--  
-- List of InstancePlatform objects
function M.InstancePlatformList(list)
	asserts.AssertInstancePlatformList(list)
	return list
end

function asserts.AssertLoadBalancerTlsCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTlsCertificateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerTlsCertificate(v)
	end
end

--  
-- List of LoadBalancerTlsCertificate objects
function M.LoadBalancerTlsCertificateList(list)
	asserts.AssertLoadBalancerTlsCertificateList(list)
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

function asserts.AssertRelationalDatabaseBlueprintList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseBlueprintList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabaseBlueprint(v)
	end
end

--  
-- List of RelationalDatabaseBlueprint objects
function M.RelationalDatabaseBlueprintList(list)
	asserts.AssertRelationalDatabaseBlueprintList(list)
	return list
end

function asserts.AssertLoadBalancerList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancerList(list)
	asserts.AssertLoadBalancerList(list)
	return list
end

function asserts.AssertLogEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected LogEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogEvent(v)
	end
end

--  
-- List of LogEvent objects
function M.LogEventList(list)
	asserts.AssertLogEventList(list)
	return list
end

function asserts.AssertRelationalDatabaseList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabase(v)
	end
end

--  
-- List of RelationalDatabase objects
function M.RelationalDatabaseList(list)
	asserts.AssertRelationalDatabaseList(list)
	return list
end

function asserts.AssertInstanceHealthSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceHealthSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceHealthSummary(v)
	end
end

--  
-- List of InstanceHealthSummary objects
function M.InstanceHealthSummaryList(list)
	asserts.AssertInstanceHealthSummaryList(list)
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

function asserts.AssertPendingMaintenanceActionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPendingMaintenanceAction(v)
	end
end

--  
-- List of PendingMaintenanceAction objects
function M.PendingMaintenanceActionList(list)
	asserts.AssertPendingMaintenanceActionList(list)
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

function asserts.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainName(v)
	end
end

--  
-- List of DomainName objects
function M.DomainNameList(list)
	asserts.AssertDomainNameList(list)
	return list
end

function asserts.AssertDiskMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskMapList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDiskMap(v)
	end
end

--  
-- List of DiskMap objects
function M.DiskMapList(list)
	asserts.AssertDiskMapList(list)
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

function asserts.AssertLoadBalancerTlsCertificateDomainValidationOptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTlsCertificateDomainValidationOptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerTlsCertificateDomainValidationOption(v)
	end
end

--  
-- List of LoadBalancerTlsCertificateDomainValidationOption objects
function M.LoadBalancerTlsCertificateDomainValidationOptionList(list)
	asserts.AssertLoadBalancerTlsCertificateDomainValidationOptionList(list)
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

function asserts.AssertRelationalDatabaseEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabaseEvent(v)
	end
end

--  
-- List of RelationalDatabaseEvent objects
function M.RelationalDatabaseEventList(list)
	asserts.AssertRelationalDatabaseEventList(list)
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

function asserts.AssertDiskSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDiskSnapshot(v)
	end
end

--  
-- List of DiskSnapshot objects
function M.DiskSnapshotList(list)
	asserts.AssertDiskSnapshotList(list)
	return list
end

function asserts.AssertRelationalDatabaseBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseBundleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabaseBundle(v)
	end
end

--  
-- List of RelationalDatabaseBundle objects
function M.RelationalDatabaseBundleList(list)
	asserts.AssertRelationalDatabaseBundleList(list)
	return list
end

function asserts.AssertRelationalDatabaseParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected RelationalDatabaseParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRelationalDatabaseParameter(v)
	end
end

--  
-- List of RelationalDatabaseParameter objects
function M.RelationalDatabaseParameterList(list)
	asserts.AssertRelationalDatabaseParameterList(list)
	return list
end

function asserts.AssertLoadBalancerTlsCertificateSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerTlsCertificateSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancerTlsCertificateSummary(v)
	end
end

--  
-- List of LoadBalancerTlsCertificateSummary objects
function M.LoadBalancerTlsCertificateSummaryList(list)
	asserts.AssertLoadBalancerTlsCertificateSummaryList(list)
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

function asserts.AssertPortList(list)
	assert(list)
	assert(type(list) == "table", "Expected PortList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPort(v)
	end
end

--  
-- List of Port objects
function M.PortList(list)
	asserts.AssertPortList(list)
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
--- Call GetKeyPair asynchronously, invoking a callback when done
-- @param GetKeyPairRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetKeyPairSync(GetKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairAsync(GetKeyPairRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachDisk asynchronously, invoking a callback when done
-- @param DetachDiskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachDiskAsync(DetachDiskRequest, cb)
	assert(DetachDiskRequest, "You must provide a DetachDiskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DetachDisk",
	}
	for header,value in pairs(DetachDiskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachDiskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachDisk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachDiskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachDiskSync(DetachDiskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachDiskAsync(DetachDiskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDiskSnapshot asynchronously, invoking a callback when done
-- @param CreateDiskSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDiskSnapshotAsync(CreateDiskSnapshotRequest, cb)
	assert(CreateDiskSnapshotRequest, "You must provide a CreateDiskSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDiskSnapshot",
	}
	for header,value in pairs(CreateDiskSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDiskSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDiskSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDiskSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDiskSnapshotSync(CreateDiskSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDiskSnapshotAsync(CreateDiskSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachStaticIp asynchronously, invoking a callback when done
-- @param AttachStaticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.AttachStaticIpSync(AttachStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachStaticIpAsync(AttachStaticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDiskSnapshots asynchronously, invoking a callback when done
-- @param GetDiskSnapshotsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDiskSnapshotsAsync(GetDiskSnapshotsRequest, cb)
	assert(GetDiskSnapshotsRequest, "You must provide a GetDiskSnapshotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDiskSnapshots",
	}
	for header,value in pairs(GetDiskSnapshotsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDiskSnapshotsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDiskSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDiskSnapshotsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDiskSnapshotsSync(GetDiskSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiskSnapshotsAsync(GetDiskSnapshotsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetKeyPairs asynchronously, invoking a callback when done
-- @param GetKeyPairsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetKeyPairsSync(GetKeyPairsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPairsAsync(GetKeyPairsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportKeyPair asynchronously, invoking a callback when done
-- @param ImportKeyPairRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.ImportKeyPairSync(ImportKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportKeyPairAsync(ImportKeyPairRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRelationalDatabase asynchronously, invoking a callback when done
-- @param CreateRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRelationalDatabaseAsync(CreateRelationalDatabaseRequest, cb)
	assert(CreateRelationalDatabaseRequest, "You must provide a CreateRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateRelationalDatabase",
	}
	for header,value in pairs(CreateRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRelationalDatabaseSync(CreateRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRelationalDatabaseAsync(CreateRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseParameters asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseParametersAsync(GetRelationalDatabaseParametersRequest, cb)
	assert(GetRelationalDatabaseParametersRequest, "You must provide a GetRelationalDatabaseParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseParameters",
	}
	for header,value in pairs(GetRelationalDatabaseParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseParametersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseParametersSync(GetRelationalDatabaseParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseParametersAsync(GetRelationalDatabaseParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachInstancesToLoadBalancer asynchronously, invoking a callback when done
-- @param AttachInstancesToLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachInstancesToLoadBalancerAsync(AttachInstancesToLoadBalancerRequest, cb)
	assert(AttachInstancesToLoadBalancerRequest, "You must provide a AttachInstancesToLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AttachInstancesToLoadBalancer",
	}
	for header,value in pairs(AttachInstancesToLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachInstancesToLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachInstancesToLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachInstancesToLoadBalancerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachInstancesToLoadBalancerSync(AttachInstancesToLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachInstancesToLoadBalancerAsync(AttachInstancesToLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachInstancesFromLoadBalancer asynchronously, invoking a callback when done
-- @param DetachInstancesFromLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachInstancesFromLoadBalancerAsync(DetachInstancesFromLoadBalancerRequest, cb)
	assert(DetachInstancesFromLoadBalancerRequest, "You must provide a DetachInstancesFromLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DetachInstancesFromLoadBalancer",
	}
	for header,value in pairs(DetachInstancesFromLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachInstancesFromLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachInstancesFromLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachInstancesFromLoadBalancerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachInstancesFromLoadBalancerSync(DetachInstancesFromLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachInstancesFromLoadBalancerAsync(DetachInstancesFromLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstance asynchronously, invoking a callback when done
-- @param GetInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceSync(GetInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAsync(GetInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainEntry asynchronously, invoking a callback when done
-- @param UpdateDomainEntryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.UpdateDomainEntrySync(UpdateDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainEntryAsync(UpdateDomainEntryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocateStaticIp asynchronously, invoking a callback when done
-- @param AllocateStaticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.AllocateStaticIpSync(AllocateStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocateStaticIpAsync(AllocateStaticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstances asynchronously, invoking a callback when done
-- @param GetInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstancesSync(GetInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancesAsync(GetInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopRelationalDatabase asynchronously, invoking a callback when done
-- @param StopRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopRelationalDatabaseAsync(StopRelationalDatabaseRequest, cb)
	assert(StopRelationalDatabaseRequest, "You must provide a StopRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StopRelationalDatabase",
	}
	for header,value in pairs(StopRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopRelationalDatabaseSync(StopRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopRelationalDatabaseAsync(StopRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDisk asynchronously, invoking a callback when done
-- @param GetDiskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDiskAsync(GetDiskRequest, cb)
	assert(GetDiskRequest, "You must provide a GetDiskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDisk",
	}
	for header,value in pairs(GetDiskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDiskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDisk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDiskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDiskSync(GetDiskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiskAsync(GetDiskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseBlueprints asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseBlueprintsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseBlueprintsAsync(GetRelationalDatabaseBlueprintsRequest, cb)
	assert(GetRelationalDatabaseBlueprintsRequest, "You must provide a GetRelationalDatabaseBlueprintsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseBlueprints",
	}
	for header,value in pairs(GetRelationalDatabaseBlueprintsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseBlueprintsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseBlueprints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseBlueprintsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseBlueprintsSync(GetRelationalDatabaseBlueprintsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseBlueprintsAsync(GetRelationalDatabaseBlueprintsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDisks asynchronously, invoking a callback when done
-- @param GetDisksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDisksAsync(GetDisksRequest, cb)
	assert(GetDisksRequest, "You must provide a GetDisksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDisks",
	}
	for header,value in pairs(GetDisksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDisksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDisks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDisksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDisksSync(GetDisksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDisksAsync(GetDisksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDiskFromSnapshot asynchronously, invoking a callback when done
-- @param CreateDiskFromSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDiskFromSnapshotAsync(CreateDiskFromSnapshotRequest, cb)
	assert(CreateDiskFromSnapshotRequest, "You must provide a CreateDiskFromSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDiskFromSnapshot",
	}
	for header,value in pairs(CreateDiskFromSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDiskFromSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDiskFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDiskFromSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDiskFromSnapshotSync(CreateDiskFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDiskFromSnapshotAsync(CreateDiskFromSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomain asynchronously, invoking a callback when done
-- @param GetDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetDomainSync(GetDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainAsync(GetDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoadBalancerTlsCertificate asynchronously, invoking a callback when done
-- @param CreateLoadBalancerTlsCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerTlsCertificateAsync(CreateLoadBalancerTlsCertificateRequest, cb)
	assert(CreateLoadBalancerTlsCertificateRequest, "You must provide a CreateLoadBalancerTlsCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateLoadBalancerTlsCertificate",
	}
	for header,value in pairs(CreateLoadBalancerTlsCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoadBalancerTlsCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancerTlsCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoadBalancerTlsCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerTlsCertificateSync(CreateLoadBalancerTlsCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerTlsCertificateAsync(CreateLoadBalancerTlsCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoadBalancers asynchronously, invoking a callback when done
-- @param GetLoadBalancersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoadBalancersAsync(GetLoadBalancersRequest, cb)
	assert(GetLoadBalancersRequest, "You must provide a GetLoadBalancersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetLoadBalancers",
	}
	for header,value in pairs(GetLoadBalancersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoadBalancersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoadBalancersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoadBalancersSync(GetLoadBalancersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoadBalancersAsync(GetLoadBalancersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutInstancePublicPorts asynchronously, invoking a callback when done
-- @param PutInstancePublicPortsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.PutInstancePublicPortsSync(PutInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutInstancePublicPortsAsync(PutInstancePublicPortsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomain asynchronously, invoking a callback when done
-- @param DeleteDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteDomainSync(DeleteDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(DeleteDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomainEntry asynchronously, invoking a callback when done
-- @param CreateDomainEntryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateDomainEntrySync(CreateDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainEntryAsync(CreateDomainEntryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartRelationalDatabase asynchronously, invoking a callback when done
-- @param StartRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartRelationalDatabaseAsync(StartRelationalDatabaseRequest, cb)
	assert(StartRelationalDatabaseRequest, "You must provide a StartRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.StartRelationalDatabase",
	}
	for header,value in pairs(StartRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartRelationalDatabaseSync(StartRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartRelationalDatabaseAsync(StartRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstancesFromSnapshot asynchronously, invoking a callback when done
-- @param CreateInstancesFromSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateInstancesFromSnapshotSync(CreateInstancesFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesFromSnapshotAsync(CreateInstancesFromSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperation asynchronously, invoking a callback when done
-- @param GetOperationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetOperationSync(GetOperationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationAsync(GetOperationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLoadBalancerAttribute asynchronously, invoking a callback when done
-- @param UpdateLoadBalancerAttributeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLoadBalancerAttributeAsync(UpdateLoadBalancerAttributeRequest, cb)
	assert(UpdateLoadBalancerAttributeRequest, "You must provide a UpdateLoadBalancerAttributeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UpdateLoadBalancerAttribute",
	}
	for header,value in pairs(UpdateLoadBalancerAttributeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateLoadBalancerAttributeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLoadBalancerAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLoadBalancerAttributeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateLoadBalancerAttributeSync(UpdateLoadBalancerAttributeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLoadBalancerAttributeAsync(UpdateLoadBalancerAttributeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRelationalDatabase asynchronously, invoking a callback when done
-- @param DeleteRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRelationalDatabaseAsync(DeleteRelationalDatabaseRequest, cb)
	assert(DeleteRelationalDatabaseRequest, "You must provide a DeleteRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteRelationalDatabase",
	}
	for header,value in pairs(DeleteRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRelationalDatabaseSync(DeleteRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRelationalDatabaseAsync(DeleteRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceState asynchronously, invoking a callback when done
-- @param GetInstanceStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceStateSync(GetInstanceStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceStateAsync(GetInstanceStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstanceSnapshot asynchronously, invoking a callback when done
-- @param CreateInstanceSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateInstanceSnapshotSync(CreateInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceSnapshotAsync(CreateInstanceSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootInstance asynchronously, invoking a callback when done
-- @param RebootInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.RebootInstanceSync(RebootInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootInstanceAsync(RebootInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDisk asynchronously, invoking a callback when done
-- @param CreateDiskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDiskAsync(CreateDiskRequest, cb)
	assert(CreateDiskRequest, "You must provide a CreateDiskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateDisk",
	}
	for header,value in pairs(CreateDiskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDiskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDisk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDiskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDiskSync(CreateDiskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDiskAsync(CreateDiskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopInstance asynchronously, invoking a callback when done
-- @param StopInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.StopInstanceSync(StopInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopInstanceAsync(StopInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRelationalDatabaseSnapshot asynchronously, invoking a callback when done
-- @param DeleteRelationalDatabaseSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRelationalDatabaseSnapshotAsync(DeleteRelationalDatabaseSnapshotRequest, cb)
	assert(DeleteRelationalDatabaseSnapshotRequest, "You must provide a DeleteRelationalDatabaseSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteRelationalDatabaseSnapshot",
	}
	for header,value in pairs(DeleteRelationalDatabaseSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRelationalDatabaseSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRelationalDatabaseSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRelationalDatabaseSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRelationalDatabaseSnapshotSync(DeleteRelationalDatabaseSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRelationalDatabaseSnapshotAsync(DeleteRelationalDatabaseSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PeerVpc asynchronously, invoking a callback when done
-- @param PeerVpcRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.PeerVpcSync(PeerVpcRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PeerVpcAsync(PeerVpcRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRelationalDatabaseSnapshot asynchronously, invoking a callback when done
-- @param CreateRelationalDatabaseSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRelationalDatabaseSnapshotAsync(CreateRelationalDatabaseSnapshotRequest, cb)
	assert(CreateRelationalDatabaseSnapshotRequest, "You must provide a CreateRelationalDatabaseSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateRelationalDatabaseSnapshot",
	}
	for header,value in pairs(CreateRelationalDatabaseSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRelationalDatabaseSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRelationalDatabaseSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRelationalDatabaseSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRelationalDatabaseSnapshotSync(CreateRelationalDatabaseSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRelationalDatabaseSnapshotAsync(CreateRelationalDatabaseSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstanceSnapshot asynchronously, invoking a callback when done
-- @param DeleteInstanceSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteInstanceSnapshotSync(DeleteInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceSnapshotAsync(DeleteInstanceSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoadBalancer asynchronously, invoking a callback when done
-- @param GetLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoadBalancerAsync(GetLoadBalancerRequest, cb)
	assert(GetLoadBalancerRequest, "You must provide a GetLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetLoadBalancer",
	}
	for header,value in pairs(GetLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoadBalancerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoadBalancerSync(GetLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoadBalancerAsync(GetLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRegions asynchronously, invoking a callback when done
-- @param GetRegionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetRegionsSync(GetRegionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegionsAsync(GetRegionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstancePortStates asynchronously, invoking a callback when done
-- @param GetInstancePortStatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstancePortStatesSync(GetInstancePortStatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancePortStatesAsync(GetInstancePortStatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceSnapshots asynchronously, invoking a callback when done
-- @param GetInstanceSnapshotsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceSnapshotsSync(GetInstanceSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotsAsync(GetInstanceSnapshotsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRelationalDatabase asynchronously, invoking a callback when done
-- @param UpdateRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRelationalDatabaseAsync(UpdateRelationalDatabaseRequest, cb)
	assert(UpdateRelationalDatabaseRequest, "You must provide a UpdateRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UpdateRelationalDatabase",
	}
	for header,value in pairs(UpdateRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRelationalDatabaseSync(UpdateRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRelationalDatabaseAsync(UpdateRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoadBalancerMetricData asynchronously, invoking a callback when done
-- @param GetLoadBalancerMetricDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoadBalancerMetricDataAsync(GetLoadBalancerMetricDataRequest, cb)
	assert(GetLoadBalancerMetricDataRequest, "You must provide a GetLoadBalancerMetricDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetLoadBalancerMetricData",
	}
	for header,value in pairs(GetLoadBalancerMetricDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoadBalancerMetricDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoadBalancerMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoadBalancerMetricDataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoadBalancerMetricDataSync(GetLoadBalancerMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoadBalancerMetricDataAsync(GetLoadBalancerMetricDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStaticIps asynchronously, invoking a callback when done
-- @param GetStaticIpsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetStaticIpsSync(GetStaticIpsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpsAsync(GetStaticIpsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabase asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseAsync(GetRelationalDatabaseRequest, cb)
	assert(GetRelationalDatabaseRequest, "You must provide a GetRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabase",
	}
	for header,value in pairs(GetRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseSync(GetRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseAsync(GetRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CloseInstancePublicPorts asynchronously, invoking a callback when done
-- @param CloseInstancePublicPortsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CloseInstancePublicPortsSync(CloseInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloseInstancePublicPortsAsync(CloseInstancePublicPortsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetActiveNames asynchronously, invoking a callback when done
-- @param GetActiveNamesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetActiveNamesSync(GetActiveNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetActiveNamesAsync(GetActiveNamesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstance asynchronously, invoking a callback when done
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteInstanceSync(DeleteInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceAsync(DeleteInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStaticIp asynchronously, invoking a callback when done
-- @param GetStaticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetStaticIpSync(GetStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStaticIpAsync(GetStaticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateKeyPair asynchronously, invoking a callback when done
-- @param CreateKeyPairRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateKeyPairSync(CreateKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateKeyPairAsync(CreateKeyPairRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call OpenInstancePublicPorts asynchronously, invoking a callback when done
-- @param OpenInstancePublicPortsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.OpenInstancePublicPortsSync(OpenInstancePublicPortsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.OpenInstancePublicPortsAsync(OpenInstancePublicPortsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDiskSnapshot asynchronously, invoking a callback when done
-- @param GetDiskSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDiskSnapshotAsync(GetDiskSnapshotRequest, cb)
	assert(GetDiskSnapshotRequest, "You must provide a GetDiskSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetDiskSnapshot",
	}
	for header,value in pairs(GetDiskSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDiskSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDiskSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDiskSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDiskSnapshotSync(GetDiskSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiskSnapshotAsync(GetDiskSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoadBalancer asynchronously, invoking a callback when done
-- @param DeleteLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerAsync(DeleteLoadBalancerRequest, cb)
	assert(DeleteLoadBalancerRequest, "You must provide a DeleteLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteLoadBalancer",
	}
	for header,value in pairs(DeleteLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoadBalancerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerSync(DeleteLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerAsync(DeleteLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseLogEvents asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseLogEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseLogEventsAsync(GetRelationalDatabaseLogEventsRequest, cb)
	assert(GetRelationalDatabaseLogEventsRequest, "You must provide a GetRelationalDatabaseLogEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseLogEvents",
	}
	for header,value in pairs(GetRelationalDatabaseLogEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseLogEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseLogEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseLogEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseLogEventsSync(GetRelationalDatabaseLogEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseLogEventsAsync(GetRelationalDatabaseLogEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabases asynchronously, invoking a callback when done
-- @param GetRelationalDatabasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabasesAsync(GetRelationalDatabasesRequest, cb)
	assert(GetRelationalDatabasesRequest, "You must provide a GetRelationalDatabasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabases",
	}
	for header,value in pairs(GetRelationalDatabasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabasesSync(GetRelationalDatabasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabasesAsync(GetRelationalDatabasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartInstance asynchronously, invoking a callback when done
-- @param StartInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.StartInstanceSync(StartInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartInstanceAsync(StartInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseEvents asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseEventsAsync(GetRelationalDatabaseEventsRequest, cb)
	assert(GetRelationalDatabaseEventsRequest, "You must provide a GetRelationalDatabaseEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseEvents",
	}
	for header,value in pairs(GetRelationalDatabaseEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseEventsSync(GetRelationalDatabaseEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseEventsAsync(GetRelationalDatabaseEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomain asynchronously, invoking a callback when done
-- @param CreateDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateDomainSync(CreateDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(CreateDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseMetricData asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseMetricDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseMetricDataAsync(GetRelationalDatabaseMetricDataRequest, cb)
	assert(GetRelationalDatabaseMetricDataRequest, "You must provide a GetRelationalDatabaseMetricDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseMetricData",
	}
	for header,value in pairs(GetRelationalDatabaseMetricDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseMetricDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseMetricDataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseMetricDataSync(GetRelationalDatabaseMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseMetricDataAsync(GetRelationalDatabaseMetricDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachDisk asynchronously, invoking a callback when done
-- @param AttachDiskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachDiskAsync(AttachDiskRequest, cb)
	assert(AttachDiskRequest, "You must provide a AttachDiskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AttachDisk",
	}
	for header,value in pairs(AttachDiskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachDiskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachDisk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachDiskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachDiskSync(AttachDiskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachDiskAsync(AttachDiskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoadBalancerTlsCertificates asynchronously, invoking a callback when done
-- @param GetLoadBalancerTlsCertificatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoadBalancerTlsCertificatesAsync(GetLoadBalancerTlsCertificatesRequest, cb)
	assert(GetLoadBalancerTlsCertificatesRequest, "You must provide a GetLoadBalancerTlsCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetLoadBalancerTlsCertificates",
	}
	for header,value in pairs(GetLoadBalancerTlsCertificatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoadBalancerTlsCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoadBalancerTlsCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoadBalancerTlsCertificatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoadBalancerTlsCertificatesSync(GetLoadBalancerTlsCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoadBalancerTlsCertificatesAsync(GetLoadBalancerTlsCertificatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachLoadBalancerTlsCertificate asynchronously, invoking a callback when done
-- @param AttachLoadBalancerTlsCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachLoadBalancerTlsCertificateAsync(AttachLoadBalancerTlsCertificateRequest, cb)
	assert(AttachLoadBalancerTlsCertificateRequest, "You must provide a AttachLoadBalancerTlsCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.AttachLoadBalancerTlsCertificate",
	}
	for header,value in pairs(AttachLoadBalancerTlsCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachLoadBalancerTlsCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachLoadBalancerTlsCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachLoadBalancerTlsCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachLoadBalancerTlsCertificateSync(AttachLoadBalancerTlsCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachLoadBalancerTlsCertificateAsync(AttachLoadBalancerTlsCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDisk asynchronously, invoking a callback when done
-- @param DeleteDiskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDiskAsync(DeleteDiskRequest, cb)
	assert(DeleteDiskRequest, "You must provide a DeleteDiskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDisk",
	}
	for header,value in pairs(DeleteDiskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDiskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDisk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDiskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDiskSync(DeleteDiskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDiskAsync(DeleteDiskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseLogStreams asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseLogStreamsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseLogStreamsAsync(GetRelationalDatabaseLogStreamsRequest, cb)
	assert(GetRelationalDatabaseLogStreamsRequest, "You must provide a GetRelationalDatabaseLogStreamsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseLogStreams",
	}
	for header,value in pairs(GetRelationalDatabaseLogStreamsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseLogStreamsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseLogStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseLogStreamsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseLogStreamsSync(GetRelationalDatabaseLogStreamsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseLogStreamsAsync(GetRelationalDatabaseLogStreamsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceAccessDetails asynchronously, invoking a callback when done
-- @param GetInstanceAccessDetailsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceAccessDetailsSync(GetInstanceAccessDetailsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAccessDetailsAsync(GetInstanceAccessDetailsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDiskSnapshot asynchronously, invoking a callback when done
-- @param DeleteDiskSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDiskSnapshotAsync(DeleteDiskSnapshotRequest, cb)
	assert(DeleteDiskSnapshotRequest, "You must provide a DeleteDiskSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteDiskSnapshot",
	}
	for header,value in pairs(DeleteDiskSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDiskSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDiskSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDiskSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDiskSnapshotSync(DeleteDiskSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDiskSnapshotAsync(DeleteDiskSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IsVpcPeered asynchronously, invoking a callback when done
-- @param IsVpcPeeredRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.IsVpcPeeredSync(IsVpcPeeredRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IsVpcPeeredAsync(IsVpcPeeredRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoadBalancer asynchronously, invoking a callback when done
-- @param CreateLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoadBalancerAsync(CreateLoadBalancerRequest, cb)
	assert(CreateLoadBalancerRequest, "You must provide a CreateLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateLoadBalancer",
	}
	for header,value in pairs(CreateLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoadBalancerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoadBalancerSync(CreateLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoadBalancerAsync(CreateLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceMetricData asynchronously, invoking a callback when done
-- @param GetInstanceMetricDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceMetricDataSync(GetInstanceMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceMetricDataAsync(GetInstanceMetricDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReleaseStaticIp asynchronously, invoking a callback when done
-- @param ReleaseStaticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.ReleaseStaticIpSync(ReleaseStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReleaseStaticIpAsync(ReleaseStaticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRelationalDatabaseParameters asynchronously, invoking a callback when done
-- @param UpdateRelationalDatabaseParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRelationalDatabaseParametersAsync(UpdateRelationalDatabaseParametersRequest, cb)
	assert(UpdateRelationalDatabaseParametersRequest, "You must provide a UpdateRelationalDatabaseParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.UpdateRelationalDatabaseParameters",
	}
	for header,value in pairs(UpdateRelationalDatabaseParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRelationalDatabaseParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRelationalDatabaseParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRelationalDatabaseParametersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRelationalDatabaseParametersSync(UpdateRelationalDatabaseParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRelationalDatabaseParametersAsync(UpdateRelationalDatabaseParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperationsForResource asynchronously, invoking a callback when done
-- @param GetOperationsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetOperationsForResourceSync(GetOperationsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsForResourceAsync(GetOperationsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceSnapshot asynchronously, invoking a callback when done
-- @param GetInstanceSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetInstanceSnapshotSync(GetInstanceSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceSnapshotAsync(GetInstanceSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoadBalancerTlsCertificate asynchronously, invoking a callback when done
-- @param DeleteLoadBalancerTlsCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoadBalancerTlsCertificateAsync(DeleteLoadBalancerTlsCertificateRequest, cb)
	assert(DeleteLoadBalancerTlsCertificateRequest, "You must provide a DeleteLoadBalancerTlsCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.DeleteLoadBalancerTlsCertificate",
	}
	for header,value in pairs(DeleteLoadBalancerTlsCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoadBalancerTlsCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoadBalancerTlsCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoadBalancerTlsCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoadBalancerTlsCertificateSync(DeleteLoadBalancerTlsCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoadBalancerTlsCertificateAsync(DeleteLoadBalancerTlsCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBlueprints asynchronously, invoking a callback when done
-- @param GetBlueprintsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetBlueprintsSync(GetBlueprintsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBlueprintsAsync(GetBlueprintsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DownloadDefaultKeyPair asynchronously, invoking a callback when done
-- @param DownloadDefaultKeyPairRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DownloadDefaultKeyPairSync(DownloadDefaultKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DownloadDefaultKeyPairAsync(DownloadDefaultKeyPairRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseSnapshots asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseSnapshotsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseSnapshotsAsync(GetRelationalDatabaseSnapshotsRequest, cb)
	assert(GetRelationalDatabaseSnapshotsRequest, "You must provide a GetRelationalDatabaseSnapshotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseSnapshots",
	}
	for header,value in pairs(GetRelationalDatabaseSnapshotsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseSnapshotsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseSnapshotsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseSnapshotsSync(GetRelationalDatabaseSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseSnapshotsAsync(GetRelationalDatabaseSnapshotsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomainEntry asynchronously, invoking a callback when done
-- @param DeleteDomainEntryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteDomainEntrySync(DeleteDomainEntryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainEntryAsync(DeleteDomainEntryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBundles asynchronously, invoking a callback when done
-- @param GetBundlesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetBundlesSync(GetBundlesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBundlesAsync(GetBundlesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRelationalDatabaseFromSnapshot asynchronously, invoking a callback when done
-- @param CreateRelationalDatabaseFromSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRelationalDatabaseFromSnapshotAsync(CreateRelationalDatabaseFromSnapshotRequest, cb)
	assert(CreateRelationalDatabaseFromSnapshotRequest, "You must provide a CreateRelationalDatabaseFromSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.CreateRelationalDatabaseFromSnapshot",
	}
	for header,value in pairs(CreateRelationalDatabaseFromSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRelationalDatabaseFromSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRelationalDatabaseFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRelationalDatabaseFromSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRelationalDatabaseFromSnapshotSync(CreateRelationalDatabaseFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRelationalDatabaseFromSnapshotAsync(CreateRelationalDatabaseFromSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperations asynchronously, invoking a callback when done
-- @param GetOperationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetOperationsSync(GetOperationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationsAsync(GetOperationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseBundles asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseBundlesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseBundlesAsync(GetRelationalDatabaseBundlesRequest, cb)
	assert(GetRelationalDatabaseBundlesRequest, "You must provide a GetRelationalDatabaseBundlesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseBundles",
	}
	for header,value in pairs(GetRelationalDatabaseBundlesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseBundlesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseBundles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseBundlesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseBundlesSync(GetRelationalDatabaseBundlesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseBundlesAsync(GetRelationalDatabaseBundlesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseSnapshot asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseSnapshotAsync(GetRelationalDatabaseSnapshotRequest, cb)
	assert(GetRelationalDatabaseSnapshotRequest, "You must provide a GetRelationalDatabaseSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseSnapshot",
	}
	for header,value in pairs(GetRelationalDatabaseSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseSnapshotRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseSnapshotSync(GetRelationalDatabaseSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseSnapshotAsync(GetRelationalDatabaseSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomains asynchronously, invoking a callback when done
-- @param GetDomainsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.GetDomainsSync(GetDomainsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainsAsync(GetDomainsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteKeyPair asynchronously, invoking a callback when done
-- @param DeleteKeyPairRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteKeyPairSync(DeleteKeyPairRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteKeyPairAsync(DeleteKeyPairRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootRelationalDatabase asynchronously, invoking a callback when done
-- @param RebootRelationalDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootRelationalDatabaseAsync(RebootRelationalDatabaseRequest, cb)
	assert(RebootRelationalDatabaseRequest, "You must provide a RebootRelationalDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.RebootRelationalDatabase",
	}
	for header,value in pairs(RebootRelationalDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootRelationalDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootRelationalDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootRelationalDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RebootRelationalDatabaseSync(RebootRelationalDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootRelationalDatabaseAsync(RebootRelationalDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachStaticIp asynchronously, invoking a callback when done
-- @param DetachStaticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DetachStaticIpSync(DetachStaticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachStaticIpAsync(DetachStaticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRelationalDatabaseMasterUserPassword asynchronously, invoking a callback when done
-- @param GetRelationalDatabaseMasterUserPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRelationalDatabaseMasterUserPasswordAsync(GetRelationalDatabaseMasterUserPasswordRequest, cb)
	assert(GetRelationalDatabaseMasterUserPasswordRequest, "You must provide a GetRelationalDatabaseMasterUserPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Lightsail_20161128.GetRelationalDatabaseMasterUserPassword",
	}
	for header,value in pairs(GetRelationalDatabaseMasterUserPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRelationalDatabaseMasterUserPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRelationalDatabaseMasterUserPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRelationalDatabaseMasterUserPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRelationalDatabaseMasterUserPasswordSync(GetRelationalDatabaseMasterUserPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRelationalDatabaseMasterUserPasswordAsync(GetRelationalDatabaseMasterUserPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnpeerVpc asynchronously, invoking a callback when done
-- @param UnpeerVpcRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.UnpeerVpcSync(UnpeerVpcRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnpeerVpcAsync(UnpeerVpcRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstances asynchronously, invoking a callback when done
-- @param CreateInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateInstancesSync(CreateInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstancesAsync(CreateInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
