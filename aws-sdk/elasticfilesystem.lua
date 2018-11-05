--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elastic File System (elasticfilesystem-2015-02-01)

local M = {}

M.metadata = {
	api_version = "2015-02-01",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "elasticfilesystem",
	service_abbreviation = "EFS",
	service_full_name = "Amazon Elastic File System",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elasticfilesystem-2015-02-01",
}

local keys = {}
local asserts = {}

keys.DescribeMountTargetSecurityGroupsRequest = { ["MountTargetId"] = true, nil }

function asserts.AssertDescribeMountTargetSecurityGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetSecurityGroupsRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then asserts.AssertMountTargetId(struct["MountTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMountTargetSecurityGroupsRequest[k], "DescribeMountTargetSecurityGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetSecurityGroupsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MountTargetId [MountTargetId] <p>ID of the mount target whose security groups you want to retrieve.</p>
-- Required key: MountTargetId
-- @return DescribeMountTargetSecurityGroupsRequest structure as a key-value pair table
function M.DescribeMountTargetSecurityGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeMountTargetSecurityGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{MountTargetId}"] = args["MountTargetId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["MountTargetId"] = args["MountTargetId"],
	}
	asserts.AssertDescribeMountTargetSecurityGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityGroupNotFound = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertSecurityGroupNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroupNotFound[k], "SecurityGroupNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupNotFound
-- <p>Returned if one of the specified security groups doesn't exist in the subnet's VPC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return SecurityGroupNotFound structure as a key-value pair table
function M.SecurityGroupNotFound(args)
	assert(args, "You must provide an argument table when creating SecurityGroupNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertSecurityGroupNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DependencyTimeout = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertDependencyTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyTimeout to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DependencyTimeout[k], "DependencyTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyTimeout
-- <p>The service timed out trying to fulfill the request, and the client should try the call again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return DependencyTimeout structure as a key-value pair table
function M.DependencyTimeout(args)
	assert(args, "You must provide an argument table when creating DependencyTimeout")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertDependencyTimeout(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMountTargetRequest = { ["MountTargetId"] = true, nil }

function asserts.AssertDeleteMountTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMountTargetRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then asserts.AssertMountTargetId(struct["MountTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMountTargetRequest[k], "DeleteMountTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMountTargetRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MountTargetId [MountTargetId] <p>ID of the mount target to delete (String).</p>
-- Required key: MountTargetId
-- @return DeleteMountTargetRequest structure as a key-value pair table
function M.DeleteMountTargetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMountTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{MountTargetId}"] = args["MountTargetId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["MountTargetId"] = args["MountTargetId"],
	}
	asserts.AssertDeleteMountTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MountTargetDescription = { ["MountTargetId"] = true, ["NetworkInterfaceId"] = true, ["FileSystemId"] = true, ["LifeCycleState"] = true, ["SubnetId"] = true, ["OwnerId"] = true, ["IpAddress"] = true, nil }

function asserts.AssertMountTargetDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetDescription to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	assert(struct["LifeCycleState"], "Expected key LifeCycleState to exist in table")
	if struct["MountTargetId"] then asserts.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["LifeCycleState"] then asserts.AssertLifeCycleState(struct["LifeCycleState"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["OwnerId"] then asserts.AssertAwsAccountId(struct["OwnerId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.MountTargetDescription[k], "MountTargetDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetDescription
-- <p>Provides a description of a mount target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MountTargetId [MountTargetId] <p>System-assigned mount target ID.</p>
-- * NetworkInterfaceId [NetworkInterfaceId] <p>ID of the network interface that Amazon EFS created when it created the mount target.</p>
-- * FileSystemId [FileSystemId] <p>ID of the file system for which the mount target is intended.</p>
-- * LifeCycleState [LifeCycleState] <p>Lifecycle state of the mount target.</p>
-- * SubnetId [SubnetId] <p>ID of the mount target's subnet.</p>
-- * OwnerId [AwsAccountId] <p>AWS account ID that owns the resource.</p>
-- * IpAddress [IpAddress] <p>Address at which the file system may be mounted via the mount target.</p>
-- Required key: MountTargetId
-- Required key: FileSystemId
-- Required key: SubnetId
-- Required key: LifeCycleState
-- @return MountTargetDescription structure as a key-value pair table
function M.MountTargetDescription(args)
	assert(args, "You must provide an argument table when creating MountTargetDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MountTargetId"] = args["MountTargetId"],
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["FileSystemId"] = args["FileSystemId"],
		["LifeCycleState"] = args["LifeCycleState"],
		["SubnetId"] = args["SubnetId"],
		["OwnerId"] = args["OwnerId"],
		["IpAddress"] = args["IpAddress"],
	}
	asserts.AssertMountTargetDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IpAddressInUse = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertIpAddressInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpAddressInUse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpAddressInUse[k], "IpAddressInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpAddressInUse
-- <p>Returned if the request specified an <code>IpAddress</code> that is already in use in the subnet.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return IpAddressInUse structure as a key-value pair table
function M.IpAddressInUse(args)
	assert(args, "You must provide an argument table when creating IpAddressInUse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertIpAddressInUse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncorrectMountTargetState = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertIncorrectMountTargetState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectMountTargetState to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncorrectMountTargetState[k], "IncorrectMountTargetState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectMountTargetState
-- <p>Returned if the mount target is not in the correct state for the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return IncorrectMountTargetState structure as a key-value pair table
function M.IncorrectMountTargetState(args)
	assert(args, "You must provide an argument table when creating IncorrectMountTargetState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertIncorrectMountTargetState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MountTargetConflict = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertMountTargetConflict(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetConflict to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MountTargetConflict[k], "MountTargetConflict contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetConflict
-- <p>Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return MountTargetConflict structure as a key-value pair table
function M.MountTargetConflict(args)
	assert(args, "You must provide an argument table when creating MountTargetConflict")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertMountTargetConflict(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemNotFound = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertFileSystemNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemNotFound[k], "FileSystemNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemNotFound
-- <p>Returned if the specified <code>FileSystemId</code> value doesn't exist in the requester's AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return FileSystemNotFound structure as a key-value pair table
function M.FileSystemNotFound(args)
	assert(args, "You must provide an argument table when creating FileSystemNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertFileSystemNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeFileSystemsResponse = { ["Marker"] = true, ["NextMarker"] = true, ["FileSystems"] = true, nil }

function asserts.AssertDescribeFileSystemsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFileSystemsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["FileSystems"] then asserts.AssertFileSystemDescriptions(struct["FileSystems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFileSystemsResponse[k], "DescribeFileSystemsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFileSystemsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>Present if provided by caller in the request (String).</p>
-- * NextMarker [Marker] <p>Present if there are more file systems than returned in the response (String). You can use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>
-- * FileSystems [FileSystemDescriptions] <p>Array of file system descriptions.</p>
-- @return DescribeFileSystemsResponse structure as a key-value pair table
function M.DescribeFileSystemsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeFileSystemsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["NextMarker"] = args["NextMarker"],
		["FileSystems"] = args["FileSystems"],
	}
	asserts.AssertDescribeFileSystemsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThroughputLimitExceeded = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertThroughputLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThroughputLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThroughputLimitExceeded[k], "ThroughputLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThroughputLimitExceeded
-- <p>Returned if the throughput mode or amount of provisioned throughput can't be changed because the throughput limit of 1024 MiB/s has been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return ThroughputLimitExceeded structure as a key-value pair table
function M.ThroughputLimitExceeded(args)
	assert(args, "You must provide an argument table when creating ThroughputLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertThroughputLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMountTargetsResponse = { ["Marker"] = true, ["NextMarker"] = true, ["MountTargets"] = true, nil }

function asserts.AssertDescribeMountTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["MountTargets"] then asserts.AssertMountTargetDescriptions(struct["MountTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMountTargetsResponse[k], "DescribeMountTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>If the request included the <code>Marker</code>, the response returns that value in this field.</p>
-- * NextMarker [Marker] <p>If a value is present, there are more mount targets to return. In a subsequent request, you can provide <code>Marker</code> in your request with this value to retrieve the next set of mount targets.</p>
-- * MountTargets [MountTargetDescriptions] <p>Returns the file system's mount targets as an array of <code>MountTargetDescription</code> objects.</p>
-- @return DescribeMountTargetsResponse structure as a key-value pair table
function M.DescribeMountTargetsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeMountTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["NextMarker"] = args["NextMarker"],
		["MountTargets"] = args["MountTargets"],
	}
	asserts.AssertDescribeMountTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BadRequest = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertBadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequest to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequest[k], "BadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequest
-- <p>Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return BadRequest structure as a key-value pair table
function M.BadRequest(args)
	assert(args, "You must provide an argument table when creating BadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertBadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsResponse = { ["Marker"] = true, ["NextMarker"] = true, ["Tags"] = true, nil }

function asserts.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsResponse[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>If the request included a <code>Marker</code>, the response returns that value in this field.</p>
-- * NextMarker [Marker] <p>If a value is present, there are more tags to return. In a subsequent request, you can provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter in your next request to retrieve the next set of tags.</p>
-- * Tags [Tags] <p>Returns tags associated with the file system as an array of <code>Tag</code> objects. </p>
-- Required key: Tags
-- @return DescribeTagsResponse structure as a key-value pair table
function M.DescribeTagsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["NextMarker"] = args["NextMarker"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribeTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFileSystemRequest = { ["FileSystemId"] = true, nil }

function asserts.AssertDeleteFileSystemRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileSystemRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileSystemRequest[k], "DeleteFileSystemRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileSystemRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileSystemId [FileSystemId] <p>ID of the file system you want to delete.</p>
-- Required key: FileSystemId
-- @return DeleteFileSystemRequest structure as a key-value pair table
function M.DeleteFileSystemRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFileSystemRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FileSystemId}"] = args["FileSystemId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FileSystemId"] = args["FileSystemId"],
	}
	asserts.AssertDeleteFileSystemRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFileSystemRequest = { ["ThroughputMode"] = true, ["CreationToken"] = true, ["Encrypted"] = true, ["PerformanceMode"] = true, ["KmsKeyId"] = true, ["ProvisionedThroughputInMibps"] = true, nil }

function asserts.AssertCreateFileSystemRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFileSystemRequest to be of type 'table'")
	assert(struct["CreationToken"], "Expected key CreationToken to exist in table")
	if struct["ThroughputMode"] then asserts.AssertThroughputMode(struct["ThroughputMode"]) end
	if struct["CreationToken"] then asserts.AssertCreationToken(struct["CreationToken"]) end
	if struct["Encrypted"] then asserts.AssertEncrypted(struct["Encrypted"]) end
	if struct["PerformanceMode"] then asserts.AssertPerformanceMode(struct["PerformanceMode"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["ProvisionedThroughputInMibps"] then asserts.AssertProvisionedThroughputInMibps(struct["ProvisionedThroughputInMibps"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFileSystemRequest[k], "CreateFileSystemRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFileSystemRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ThroughputMode [ThroughputMode] <p>The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change.</p>
-- * CreationToken [CreationToken] <p>String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.</p>
-- * Encrypted [Encrypted] <p>A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying a <a>CreateFileSystemRequest$KmsKeyId</a> for an existing AWS Key Management Service (AWS KMS) customer master key (CMK). If you don't specify a CMK, then the default CMK for Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system. </p>
-- * PerformanceMode [PerformanceMode] <p>The <code>PerformanceMode</code> of the file system. We recommend <code>generalPurpose</code> performance mode for most file systems. File systems using the <code>maxIO</code> performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.</p>
-- * KmsKeyId [KmsKeyId] <p>The ID of the AWS KMS CMK to be used to protect the encrypted file system. This parameter is only required if you want to use a non-default CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. This ID can be in one of the following formats:</p> <ul> <li> <p>Key ID - A unique identifier of the key, for example, <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p> </li> <li> <p>ARN - An Amazon Resource Name (ARN) for the key, for example, <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p> </li> <li> <p>Key alias - A previously created display name for a key. For example, <code>alias/projectKey1</code>.</p> </li> <li> <p>Key alias ARN - An ARN for a key alias, for example, <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p> </li> </ul> <p>If KmsKeyId is specified, the <a>CreateFileSystemRequest$Encrypted</a> parameter must be set to true.</p>
-- * ProvisionedThroughputInMibps [ProvisionedThroughputInMibps] <p>The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS Limits That You Can Increase</a> in the <i>Amazon EFS User Guide.</i> </p>
-- Required key: CreationToken
-- @return CreateFileSystemRequest structure as a key-value pair table
function M.CreateFileSystemRequest(args)
	assert(args, "You must provide an argument table when creating CreateFileSystemRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ThroughputMode"] = args["ThroughputMode"],
		["CreationToken"] = args["CreationToken"],
		["Encrypted"] = args["Encrypted"],
		["PerformanceMode"] = args["PerformanceMode"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ProvisionedThroughputInMibps"] = args["ProvisionedThroughputInMibps"],
	}
	asserts.AssertCreateFileSystemRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMountTargetSecurityGroupsResponse = { ["SecurityGroups"] = true, nil }

function asserts.AssertDescribeMountTargetSecurityGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetSecurityGroupsResponse to be of type 'table'")
	assert(struct["SecurityGroups"], "Expected key SecurityGroups to exist in table")
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMountTargetSecurityGroupsResponse[k], "DescribeMountTargetSecurityGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetSecurityGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroups [SecurityGroups] <p>Array of security groups.</p>
-- Required key: SecurityGroups
-- @return DescribeMountTargetSecurityGroupsResponse structure as a key-value pair table
function M.DescribeMountTargetSecurityGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeMountTargetSecurityGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroups"] = args["SecurityGroups"],
	}
	asserts.AssertDescribeMountTargetSecurityGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemInUse = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertFileSystemInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemInUse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemInUse[k], "FileSystemInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemInUse
-- <p>Returned if a file system has mount targets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return FileSystemInUse structure as a key-value pair table
function M.FileSystemInUse(args)
	assert(args, "You must provide an argument table when creating FileSystemInUse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertFileSystemInUse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A tag is a key-value pair. Allowed characters: letters, whitespace, and numbers, representable in UTF-8, and the following characters:<code> + - = . _ : /</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>Value of the tag key.</p>
-- * Key [TagKey] <p>Tag key (String). The key can't start with <code>aws:</code>.</p>
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemSize = { ["Timestamp"] = true, ["Value"] = true, nil }

function asserts.AssertFileSystemSize(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemSize to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Value"] then asserts.AssertFileSystemSizeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemSize[k], "FileSystemSize contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemSize
-- <p>Latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent the actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not necessarily the exact size the file system was at any instant in time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>Time at which the size of data, returned in the <code>Value</code> field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>
-- * Value [FileSystemSizeValue] <p>Latest known metered size (in bytes) of data stored in the file system.</p>
-- Required key: Value
-- @return FileSystemSize structure as a key-value pair table
function M.FileSystemSize(args)
	assert(args, "You must provide an argument table when creating FileSystemSize")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Value"] = args["Value"],
	}
	asserts.AssertFileSystemSize(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemLimitExceeded = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertFileSystemLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemLimitExceeded[k], "FileSystemLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemLimitExceeded
-- <p>Returned if the AWS account has already created the maximum number of file systems allowed per account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return FileSystemLimitExceeded structure as a key-value pair table
function M.FileSystemLimitExceeded(args)
	assert(args, "You must provide an argument table when creating FileSystemLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertFileSystemLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMountTargetRequest = { ["SubnetId"] = true, ["SecurityGroups"] = true, ["FileSystemId"] = true, ["IpAddress"] = true, nil }

function asserts.AssertCreateMountTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMountTargetRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMountTargetRequest[k], "CreateMountTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMountTargetRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetId [SubnetId] <p>ID of the subnet to add the mount target in.</p>
-- * SecurityGroups [SecurityGroups] <p>Up to five VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same VPC as subnet specified.</p>
-- * FileSystemId [FileSystemId] <p>ID of the file system for which to create the mount target.</p>
-- * IpAddress [IpAddress] <p>Valid IPv4 address within the address range of the specified subnet.</p>
-- Required key: FileSystemId
-- Required key: SubnetId
-- @return CreateMountTargetRequest structure as a key-value pair table
function M.CreateMountTargetRequest(args)
	assert(args, "You must provide an argument table when creating CreateMountTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetId"] = args["SubnetId"],
		["SecurityGroups"] = args["SecurityGroups"],
		["FileSystemId"] = args["FileSystemId"],
		["IpAddress"] = args["IpAddress"],
	}
	asserts.AssertCreateMountTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsRequest = { ["Marker"] = true, ["FileSystemId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsRequest[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeTags</code> operation (String). If present, it specifies to continue the list from where the previous call left off.</p>
-- * FileSystemId [FileSystemId] <p>ID of the file system whose tag set you want to retrieve.</p>
-- * MaxItems [MaxItems] <p>(Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.</p>
-- Required key: FileSystemId
-- @return DescribeTagsRequest structure as a key-value pair table
function M.DescribeTagsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTagsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{FileSystemId}"] = args["FileSystemId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FileSystemId"] = args["FileSystemId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertDescribeTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientThroughputCapacity = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertInsufficientThroughputCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientThroughputCapacity to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InsufficientThroughputCapacity[k], "InsufficientThroughputCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientThroughputCapacity
-- <p>Returned if there's not enough capacity to provision additional throughput. This value might be returned when you try to create a file system in provisioned throughput mode, when you attempt to increase the provisioned throughput of an existing file system, or when you attempt to change an existing file system from bursting to provisioned throughput mode.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return InsufficientThroughputCapacity structure as a key-value pair table
function M.InsufficientThroughputCapacity(args)
	assert(args, "You must provide an argument table when creating InsufficientThroughputCapacity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertInsufficientThroughputCapacity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsRequest = { ["FileSystemId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsRequest[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileSystemId [FileSystemId] <p>ID of the file system whose tags you want to delete (String).</p>
-- * TagKeys [TagKeys] <p>List of tag keys to delete.</p>
-- Required key: FileSystemId
-- Required key: TagKeys
-- @return DeleteTagsRequest structure as a key-value pair table
function M.DeleteTagsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FileSystemId}"] = args["FileSystemId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FileSystemId"] = args["FileSystemId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertDeleteTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMountTargetsRequest = { ["Marker"] = true, ["FileSystemId"] = true, ["MountTargetId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertDescribeMountTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MountTargetId"] then asserts.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMountTargetsRequest[k], "DescribeMountTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue the list from where the previous returning call left off.</p>
-- * FileSystemId [FileSystemId] <p>(Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if <code>MountTargetId</code> is not included.</p>
-- * MountTargetId [MountTargetId] <p>(Optional) ID of the mount target that you want to have described (String). It must be included in your request if <code>FileSystemId</code> is not included.</p>
-- * MaxItems [MaxItems] <p>(Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.</p>
-- @return DescribeMountTargetsRequest structure as a key-value pair table
function M.DescribeMountTargetsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeMountTargetsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["FileSystemId"] = args["FileSystemId"],
        ["MountTargetId"] = args["MountTargetId"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FileSystemId"] = args["FileSystemId"],
		["MountTargetId"] = args["MountTargetId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertDescribeMountTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityGroupLimitExceeded = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertSecurityGroupLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroupLimitExceeded[k], "SecurityGroupLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupLimitExceeded
-- <p>Returned if the size of <code>SecurityGroups</code> specified in the request is greater than five.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return SecurityGroupLimitExceeded structure as a key-value pair table
function M.SecurityGroupLimitExceeded(args)
	assert(args, "You must provide an argument table when creating SecurityGroupLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertSecurityGroupLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoFreeAddressesInSubnet = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertNoFreeAddressesInSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoFreeAddressesInSubnet to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoFreeAddressesInSubnet[k], "NoFreeAddressesInSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoFreeAddressesInSubnet
-- <p>Returned if <code>IpAddress</code> was not specified in the request and there are no free IP addresses in the subnet.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return NoFreeAddressesInSubnet structure as a key-value pair table
function M.NoFreeAddressesInSubnet(args)
	assert(args, "You must provide an argument table when creating NoFreeAddressesInSubnet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertNoFreeAddressesInSubnet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeFileSystemsRequest = { ["Marker"] = true, ["FileSystemId"] = true, ["MaxItems"] = true, ["CreationToken"] = true, nil }

function asserts.AssertDescribeFileSystemsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFileSystemsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	if struct["CreationToken"] then asserts.AssertCreationToken(struct["CreationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFileSystemsRequest[k], "DescribeFileSystemsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFileSystemsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the list from where the returning call had left off. </p>
-- * FileSystemId [FileSystemId] <p>(Optional) ID of the file system whose description you want to retrieve (String).</p>
-- * MaxItems [MaxItems] <p>(Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the <code>MaxItems</code> parameter specified in the request and the service's internal maximum number of items per page. </p>
-- * CreationToken [CreationToken] <p>(Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.</p>
-- @return DescribeFileSystemsRequest structure as a key-value pair table
function M.DescribeFileSystemsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeFileSystemsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["FileSystemId"] = args["FileSystemId"],
        ["MaxItems"] = args["MaxItems"],
        ["CreationToken"] = args["CreationToken"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FileSystemId"] = args["FileSystemId"],
		["MaxItems"] = args["MaxItems"],
		["CreationToken"] = args["CreationToken"],
	}
	asserts.AssertDescribeFileSystemsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerError = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>Returned if an error occurred on the server side.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return InternalServerError structure as a key-value pair table
function M.InternalServerError(args)
	assert(args, "You must provide an argument table when creating InternalServerError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyMountTargetSecurityGroupsRequest = { ["MountTargetId"] = true, ["SecurityGroups"] = true, nil }

function asserts.AssertModifyMountTargetSecurityGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyMountTargetSecurityGroupsRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then asserts.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyMountTargetSecurityGroupsRequest[k], "ModifyMountTargetSecurityGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyMountTargetSecurityGroupsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MountTargetId [MountTargetId] <p>ID of the mount target whose security groups you want to modify.</p>
-- * SecurityGroups [SecurityGroups] <p>Array of up to five VPC security group IDs.</p>
-- Required key: MountTargetId
-- @return ModifyMountTargetSecurityGroupsRequest structure as a key-value pair table
function M.ModifyMountTargetSecurityGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ModifyMountTargetSecurityGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{MountTargetId}"] = args["MountTargetId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["MountTargetId"] = args["MountTargetId"],
		["SecurityGroups"] = args["SecurityGroups"],
	}
	asserts.AssertModifyMountTargetSecurityGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncorrectFileSystemLifeCycleState = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertIncorrectFileSystemLifeCycleState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectFileSystemLifeCycleState to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncorrectFileSystemLifeCycleState[k], "IncorrectFileSystemLifeCycleState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectFileSystemLifeCycleState
-- <p>Returned if the file system's lifecycle state is not "available".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return IncorrectFileSystemLifeCycleState structure as a key-value pair table
function M.IncorrectFileSystemLifeCycleState(args)
	assert(args, "You must provide an argument table when creating IncorrectFileSystemLifeCycleState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertIncorrectFileSystemLifeCycleState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFileSystemRequest = { ["FileSystemId"] = true, ["ProvisionedThroughputInMibps"] = true, ["ThroughputMode"] = true, nil }

function asserts.AssertUpdateFileSystemRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFileSystemRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["ProvisionedThroughputInMibps"] then asserts.AssertProvisionedThroughputInMibps(struct["ProvisionedThroughputInMibps"]) end
	if struct["ThroughputMode"] then asserts.AssertThroughputMode(struct["ThroughputMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFileSystemRequest[k], "UpdateFileSystemRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFileSystemRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileSystemId [FileSystemId] <p>The ID of the file system that you want to update.</p>
-- * ProvisionedThroughputInMibps [ProvisionedThroughputInMibps] <p>(Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request.</p>
-- * ThroughputMode [ThroughputMode] <p>(Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request.</p>
-- Required key: FileSystemId
-- @return UpdateFileSystemRequest structure as a key-value pair table
function M.UpdateFileSystemRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFileSystemRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FileSystemId}"] = args["FileSystemId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FileSystemId"] = args["FileSystemId"],
		["ProvisionedThroughputInMibps"] = args["ProvisionedThroughputInMibps"],
		["ThroughputMode"] = args["ThroughputMode"],
	}
	asserts.AssertUpdateFileSystemRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubnetNotFound = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertSubnetNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubnetNotFound[k], "SubnetNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetNotFound
-- <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return SubnetNotFound structure as a key-value pair table
function M.SubnetNotFound(args)
	assert(args, "You must provide an argument table when creating SubnetNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertSubnetNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemAlreadyExists = { ["ErrorCode"] = true, ["Message"] = true, ["FileSystemId"] = true, nil }

function asserts.AssertFileSystemAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemAlreadyExists to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemAlreadyExists[k], "FileSystemAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemAlreadyExists
-- <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- * FileSystemId [FileSystemId] 
-- Required key: ErrorCode
-- Required key: FileSystemId
-- @return FileSystemAlreadyExists structure as a key-value pair table
function M.FileSystemAlreadyExists(args)
	assert(args, "You must provide an argument table when creating FileSystemAlreadyExists")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
		["FileSystemId"] = args["FileSystemId"],
	}
	asserts.AssertFileSystemAlreadyExists(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequests = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertTooManyRequests(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequests to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequests[k], "TooManyRequests contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequests
-- <p>Returned if you don’t wait at least 24 hours before changing the throughput mode, or decreasing the Provisioned Throughput value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return TooManyRequests structure as a key-value pair table
function M.TooManyRequests(args)
	assert(args, "You must provide an argument table when creating TooManyRequests")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertTooManyRequests(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MountTargetNotFound = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertMountTargetNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MountTargetNotFound[k], "MountTargetNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetNotFound
-- <p>Returned if there is no mount target with the specified ID found in the caller's account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return MountTargetNotFound structure as a key-value pair table
function M.MountTargetNotFound(args)
	assert(args, "You must provide an argument table when creating MountTargetNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertMountTargetNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSystemDescription = { ["SizeInBytes"] = true, ["Name"] = true, ["CreationToken"] = true, ["Encrypted"] = true, ["CreationTime"] = true, ["PerformanceMode"] = true, ["FileSystemId"] = true, ["NumberOfMountTargets"] = true, ["ProvisionedThroughputInMibps"] = true, ["LifeCycleState"] = true, ["KmsKeyId"] = true, ["OwnerId"] = true, ["ThroughputMode"] = true, nil }

function asserts.AssertFileSystemDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemDescription to be of type 'table'")
	assert(struct["OwnerId"], "Expected key OwnerId to exist in table")
	assert(struct["CreationToken"], "Expected key CreationToken to exist in table")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["LifeCycleState"], "Expected key LifeCycleState to exist in table")
	assert(struct["NumberOfMountTargets"], "Expected key NumberOfMountTargets to exist in table")
	assert(struct["SizeInBytes"], "Expected key SizeInBytes to exist in table")
	assert(struct["PerformanceMode"], "Expected key PerformanceMode to exist in table")
	if struct["SizeInBytes"] then asserts.AssertFileSystemSize(struct["SizeInBytes"]) end
	if struct["Name"] then asserts.AssertTagValue(struct["Name"]) end
	if struct["CreationToken"] then asserts.AssertCreationToken(struct["CreationToken"]) end
	if struct["Encrypted"] then asserts.AssertEncrypted(struct["Encrypted"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["PerformanceMode"] then asserts.AssertPerformanceMode(struct["PerformanceMode"]) end
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["NumberOfMountTargets"] then asserts.AssertMountTargetCount(struct["NumberOfMountTargets"]) end
	if struct["ProvisionedThroughputInMibps"] then asserts.AssertProvisionedThroughputInMibps(struct["ProvisionedThroughputInMibps"]) end
	if struct["LifeCycleState"] then asserts.AssertLifeCycleState(struct["LifeCycleState"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["OwnerId"] then asserts.AssertAwsAccountId(struct["OwnerId"]) end
	if struct["ThroughputMode"] then asserts.AssertThroughputMode(struct["ThroughputMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSystemDescription[k], "FileSystemDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemDescription
-- <p>Description of the file system.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeInBytes [FileSystemSize] <p>Latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size that the file system was at any point in time. </p>
-- * Name [TagValue] <p>You can add tags to a file system, including a <code>Name</code> tag. For more information, see <a>CreateTags</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns the value in this field. </p>
-- * CreationToken [CreationToken] <p>Opaque string specified in the request.</p>
-- * Encrypted [Encrypted] <p>A Boolean value that, if true, indicates that the file system is encrypted.</p>
-- * CreationTime [Timestamp] <p>Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).</p>
-- * PerformanceMode [PerformanceMode] <p>The <code>PerformanceMode</code> of the file system.</p>
-- * FileSystemId [FileSystemId] <p>ID of the file system, assigned by Amazon EFS.</p>
-- * NumberOfMountTargets [MountTargetCount] <p>Current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>
-- * ProvisionedThroughputInMibps [ProvisionedThroughputInMibps] <p>The throughput, measured in MiB/s, that you want to provision for a file system. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS Limits That You Can Increase</a> in the <i>Amazon EFS User Guide.</i> </p>
-- * LifeCycleState [LifeCycleState] <p>Lifecycle phase of the file system.</p>
-- * KmsKeyId [KmsKeyId] <p>The ID of an AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system.</p>
-- * OwnerId [AwsAccountId] <p>AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.</p>
-- * ThroughputMode [ThroughputMode] <p>The throughput mode for a file system. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change.</p>
-- Required key: OwnerId
-- Required key: CreationToken
-- Required key: FileSystemId
-- Required key: CreationTime
-- Required key: LifeCycleState
-- Required key: NumberOfMountTargets
-- Required key: SizeInBytes
-- Required key: PerformanceMode
-- @return FileSystemDescription structure as a key-value pair table
function M.FileSystemDescription(args)
	assert(args, "You must provide an argument table when creating FileSystemDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeInBytes"] = args["SizeInBytes"],
		["Name"] = args["Name"],
		["CreationToken"] = args["CreationToken"],
		["Encrypted"] = args["Encrypted"],
		["CreationTime"] = args["CreationTime"],
		["PerformanceMode"] = args["PerformanceMode"],
		["FileSystemId"] = args["FileSystemId"],
		["NumberOfMountTargets"] = args["NumberOfMountTargets"],
		["ProvisionedThroughputInMibps"] = args["ProvisionedThroughputInMibps"],
		["LifeCycleState"] = args["LifeCycleState"],
		["KmsKeyId"] = args["KmsKeyId"],
		["OwnerId"] = args["OwnerId"],
		["ThroughputMode"] = args["ThroughputMode"],
	}
	asserts.AssertFileSystemDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkInterfaceLimitExceeded = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertNetworkInterfaceLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterfaceLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInterfaceLimitExceeded[k], "NetworkInterfaceLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterfaceLimitExceeded
-- <p>The calling account has reached the limit for elastic network interfaces for the specific AWS Region. The client should try to delete some elastic network interfaces or get the account limit raised. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a> in the <i>Amazon VPC User Guide </i> (see the Network interfaces per VPC entry in the table). </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return NetworkInterfaceLimitExceeded structure as a key-value pair table
function M.NetworkInterfaceLimitExceeded(args)
	assert(args, "You must provide an argument table when creating NetworkInterfaceLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertNetworkInterfaceLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagsRequest = { ["FileSystemId"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["FileSystemId"] then asserts.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsRequest[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileSystemId [FileSystemId] <p>ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.</p>
-- * Tags [Tags] <p>Array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value pair. </p>
-- Required key: FileSystemId
-- Required key: Tags
-- @return CreateTagsRequest structure as a key-value pair table
function M.CreateTagsRequest(args)
	assert(args, "You must provide an argument table when creating CreateTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FileSystemId}"] = args["FileSystemId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FileSystemId"] = args["FileSystemId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedAvailabilityZone = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertUnsupportedAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedAvailabilityZone to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedAvailabilityZone[k], "UnsupportedAvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedAvailabilityZone
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] 
-- * Message [ErrorMessage] 
-- Required key: ErrorCode
-- @return UnsupportedAvailabilityZone structure as a key-value pair table
function M.UnsupportedAvailabilityZone(args)
	assert(args, "You must provide an argument table when creating UnsupportedAvailabilityZone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedAvailabilityZone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertCreationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected CreationToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CreationToken(str)
	asserts.AssertCreationToken(str)
	return str
end

function asserts.AssertMountTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MountTargetId to be of type 'string'")
end

--  
function M.MountTargetId(str)
	asserts.AssertMountTargetId(str)
	return str
end

function asserts.AssertSecurityGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroup to be of type 'string'")
end

--  
function M.SecurityGroup(str)
	asserts.AssertSecurityGroup(str)
	return str
end

function asserts.AssertPerformanceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMode to be of type 'string'")
end

--  
function M.PerformanceMode(str)
	asserts.AssertPerformanceMode(str)
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

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
end

--  
function M.AwsAccountId(str)
	asserts.AssertAwsAccountId(str)
	return str
end

function asserts.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
end

--  
function M.NetworkInterfaceId(str)
	asserts.AssertNetworkInterfaceId(str)
	return str
end

function asserts.AssertLifeCycleState(str)
	assert(str)
	assert(type(str) == "string", "Expected LifeCycleState to be of type 'string'")
end

--  
function M.LifeCycleState(str)
	asserts.AssertLifeCycleState(str)
	return str
end

function asserts.AssertThroughputMode(str)
	assert(str)
	assert(type(str) == "string", "Expected ThroughputMode to be of type 'string'")
end

--  
function M.ThroughputMode(str)
	asserts.AssertThroughputMode(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertFileSystemId(str)
	assert(str)
	assert(type(str) == "string", "Expected FileSystemId to be of type 'string'")
end

--  
function M.FileSystemId(str)
	asserts.AssertFileSystemId(str)
	return str
end

function asserts.AssertKmsKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KmsKeyId(str)
	asserts.AssertKmsKeyId(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertProvisionedThroughputInMibps(double)
	assert(double)
	assert(type(double) == "number", "Expected ProvisionedThroughputInMibps to be of type 'number'")
end

function M.ProvisionedThroughputInMibps(double)
	asserts.AssertProvisionedThroughputInMibps(double)
	return double
end

function asserts.AssertFileSystemSizeValue(long)
	assert(long)
	assert(type(long) == "number", "Expected FileSystemSizeValue to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.FileSystemSizeValue(long)
	asserts.AssertFileSystemSizeValue(long)
	return long
end

function asserts.AssertMountTargetCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MountTargetCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MountTargetCount(integer)
	asserts.AssertMountTargetCount(integer)
	return integer
end

function asserts.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxItems(integer)
	asserts.AssertMaxItems(integer)
	return integer
end

function asserts.AssertEncrypted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Encrypted to be of type 'boolean'")
end

function M.Encrypted(boolean)
	asserts.AssertEncrypted(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroup(v)
	end
end

--  
-- List of SecurityGroup objects
function M.SecurityGroups(list)
	asserts.AssertSecurityGroups(list)
	return list
end

function asserts.AssertMountTargetDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected MountTargetDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMountTargetDescription(v)
	end
end

--  
-- List of MountTargetDescription objects
function M.MountTargetDescriptions(list)
	asserts.AssertMountTargetDescriptions(list)
	return list
end

function asserts.AssertFileSystemDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected FileSystemDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFileSystemDescription(v)
	end
end

--  
-- List of FileSystemDescription objects
function M.FileSystemDescriptions(list)
	asserts.AssertFileSystemDescriptions(list)
	return list
end

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "elasticfilesystem.amazonaws.com"
		end
	end
	local ss = { "elasticfilesystem" }
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
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsAsync(DeleteTagsRequest, cb)
	assert(DeleteTagsRequest, "You must provide a DeleteTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}
	for header,value in pairs(DeleteTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/delete-tags/{FileSystemId}", DeleteTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagsSync(DeleteTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(DeleteTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMountTargetSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeMountTargetSecurityGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMountTargetSecurityGroupsAsync(DescribeMountTargetSecurityGroupsRequest, cb)
	assert(DescribeMountTargetSecurityGroupsRequest, "You must provide a DescribeMountTargetSecurityGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeMountTargetSecurityGroups",
	}
	for header,value in pairs(DescribeMountTargetSecurityGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/mount-targets/{MountTargetId}/security-groups", DescribeMountTargetSecurityGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMountTargetSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMountTargetSecurityGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMountTargetSecurityGroupsSync(DescribeMountTargetSecurityGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMountTargetSecurityGroupsAsync(DescribeMountTargetSecurityGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFileSystem asynchronously, invoking a callback when done
-- @param DeleteFileSystemRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFileSystemAsync(DeleteFileSystemRequest, cb)
	assert(DeleteFileSystemRequest, "You must provide a DeleteFileSystemRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFileSystem",
	}
	for header,value in pairs(DeleteFileSystemRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/file-systems/{FileSystemId}", DeleteFileSystemRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFileSystem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFileSystemRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFileSystemSync(DeleteFileSystemRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFileSystemAsync(DeleteFileSystemRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTags asynchronously, invoking a callback when done
-- @param CreateTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTagsAsync(CreateTagsRequest, cb)
	assert(CreateTagsRequest, "You must provide a CreateTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTags",
	}
	for header,value in pairs(CreateTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/create-tags/{FileSystemId}", CreateTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTagsSync(CreateTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagsAsync(CreateTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMountTarget asynchronously, invoking a callback when done
-- @param CreateMountTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateMountTargetAsync(CreateMountTargetRequest, cb)
	assert(CreateMountTargetRequest, "You must provide a CreateMountTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateMountTarget",
	}
	for header,value in pairs(CreateMountTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/mount-targets", CreateMountTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMountTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMountTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateMountTargetSync(CreateMountTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMountTargetAsync(CreateMountTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFileSystems asynchronously, invoking a callback when done
-- @param DescribeFileSystemsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeFileSystemsAsync(DescribeFileSystemsRequest, cb)
	assert(DescribeFileSystemsRequest, "You must provide a DescribeFileSystemsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeFileSystems",
	}
	for header,value in pairs(DescribeFileSystemsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/file-systems", DescribeFileSystemsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFileSystems synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFileSystemsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeFileSystemsSync(DescribeFileSystemsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFileSystemsAsync(DescribeFileSystemsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}
	for header,value in pairs(DescribeTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/tags/{FileSystemId}/", DescribeTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFileSystem asynchronously, invoking a callback when done
-- @param UpdateFileSystemRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFileSystemAsync(UpdateFileSystemRequest, cb)
	assert(UpdateFileSystemRequest, "You must provide a UpdateFileSystemRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFileSystem",
	}
	for header,value in pairs(UpdateFileSystemRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/file-systems/{FileSystemId}", UpdateFileSystemRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFileSystem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFileSystemRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFileSystemSync(UpdateFileSystemRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFileSystemAsync(UpdateFileSystemRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyMountTargetSecurityGroups asynchronously, invoking a callback when done
-- @param ModifyMountTargetSecurityGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyMountTargetSecurityGroupsAsync(ModifyMountTargetSecurityGroupsRequest, cb)
	assert(ModifyMountTargetSecurityGroupsRequest, "You must provide a ModifyMountTargetSecurityGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyMountTargetSecurityGroups",
	}
	for header,value in pairs(ModifyMountTargetSecurityGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/mount-targets/{MountTargetId}/security-groups", ModifyMountTargetSecurityGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyMountTargetSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyMountTargetSecurityGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyMountTargetSecurityGroupsSync(ModifyMountTargetSecurityGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyMountTargetSecurityGroupsAsync(ModifyMountTargetSecurityGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMountTargets asynchronously, invoking a callback when done
-- @param DescribeMountTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMountTargetsAsync(DescribeMountTargetsRequest, cb)
	assert(DescribeMountTargetsRequest, "You must provide a DescribeMountTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeMountTargets",
	}
	for header,value in pairs(DescribeMountTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/mount-targets", DescribeMountTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMountTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMountTargetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMountTargetsSync(DescribeMountTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMountTargetsAsync(DescribeMountTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFileSystem asynchronously, invoking a callback when done
-- @param CreateFileSystemRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFileSystemAsync(CreateFileSystemRequest, cb)
	assert(CreateFileSystemRequest, "You must provide a CreateFileSystemRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFileSystem",
	}
	for header,value in pairs(CreateFileSystemRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/file-systems", CreateFileSystemRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFileSystem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFileSystemRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFileSystemSync(CreateFileSystemRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFileSystemAsync(CreateFileSystemRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMountTarget asynchronously, invoking a callback when done
-- @param DeleteMountTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMountTargetAsync(DeleteMountTargetRequest, cb)
	assert(DeleteMountTargetRequest, "You must provide a DeleteMountTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMountTarget",
	}
	for header,value in pairs(DeleteMountTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-02-01/mount-targets/{MountTargetId}", DeleteMountTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMountTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMountTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteMountTargetSync(DeleteMountTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMountTargetAsync(DeleteMountTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
