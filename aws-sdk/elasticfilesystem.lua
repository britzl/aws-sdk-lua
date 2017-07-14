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

local DescribeMountTargetSecurityGroupsRequest_keys = { "MountTargetId" = true, nil }

function M.AssertDescribeMountTargetSecurityGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetSecurityGroupsRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then M.AssertMountTargetId(struct["MountTargetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMountTargetSecurityGroupsRequest_keys[k], "DescribeMountTargetSecurityGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetSecurityGroupsRequest
-- <p/>
-- @param MountTargetId [MountTargetId] <p>ID of the mount target whose security groups you want to retrieve.</p>
-- Required parameter: MountTargetId
function M.DescribeMountTargetSecurityGroupsRequest(MountTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMountTargetSecurityGroupsRequest")
	local t = { 
		["MountTargetId"] = MountTargetId,
	}
	M.AssertDescribeMountTargetSecurityGroupsRequest(t)
	return t
end

local SecurityGroupNotFound_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertSecurityGroupNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SecurityGroupNotFound_keys[k], "SecurityGroupNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupNotFound
-- <p>Returned if one of the specified security groups does not exist in the subnet's VPC.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if one of the specified security groups does not exist in the subnet's VPC.</p>
-- @param Message [ErrorMessage] <p>Returned if one of the specified security groups does not exist in the subnet's VPC.</p>
-- Required parameter: ErrorCode
function M.SecurityGroupNotFound(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityGroupNotFound")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertSecurityGroupNotFound(t)
	return t
end

local DependencyTimeout_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertDependencyTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyTimeout to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DependencyTimeout_keys[k], "DependencyTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyTimeout
-- <p>The service timed out trying to fulfill the request, and the client should try the call again.</p>
-- @param ErrorCode [ErrorCode] <p>The service timed out trying to fulfill the request, and the client should try the call again.</p>
-- @param Message [ErrorMessage] <p>The service timed out trying to fulfill the request, and the client should try the call again.</p>
-- Required parameter: ErrorCode
function M.DependencyTimeout(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependencyTimeout")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertDependencyTimeout(t)
	return t
end

local DeleteMountTargetRequest_keys = { "MountTargetId" = true, nil }

function M.AssertDeleteMountTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMountTargetRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then M.AssertMountTargetId(struct["MountTargetId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMountTargetRequest_keys[k], "DeleteMountTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMountTargetRequest
-- <p/>
-- @param MountTargetId [MountTargetId] <p>ID of the mount target to delete (String).</p>
-- Required parameter: MountTargetId
function M.DeleteMountTargetRequest(MountTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMountTargetRequest")
	local t = { 
		["MountTargetId"] = MountTargetId,
	}
	M.AssertDeleteMountTargetRequest(t)
	return t
end

local MountTargetDescription_keys = { "MountTargetId" = true, "NetworkInterfaceId" = true, "FileSystemId" = true, "LifeCycleState" = true, "SubnetId" = true, "OwnerId" = true, "IpAddress" = true, nil }

function M.AssertMountTargetDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetDescription to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	assert(struct["LifeCycleState"], "Expected key LifeCycleState to exist in table")
	if struct["MountTargetId"] then M.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["NetworkInterfaceId"] then M.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["LifeCycleState"] then M.AssertLifeCycleState(struct["LifeCycleState"]) end
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["OwnerId"] then M.AssertAwsAccountId(struct["OwnerId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	for k,_ in pairs(struct) do
		assert(MountTargetDescription_keys[k], "MountTargetDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetDescription
-- <p>Provides a description of a mount target.</p>
-- @param MountTargetId [MountTargetId] <p>System-assigned mount target ID.</p>
-- @param NetworkInterfaceId [NetworkInterfaceId] <p>ID of the network interface that Amazon EFS created when it created the mount target.</p>
-- @param FileSystemId [FileSystemId] <p>ID of the file system for which the mount target is intended.</p>
-- @param LifeCycleState [LifeCycleState] <p>Lifecycle state of the mount target.</p>
-- @param SubnetId [SubnetId] <p>ID of the mount target's subnet.</p>
-- @param OwnerId [AwsAccountId] <p>AWS account ID that owns the resource.</p>
-- @param IpAddress [IpAddress] <p>Address at which the file system may be mounted via the mount target.</p>
-- Required parameter: MountTargetId
-- Required parameter: FileSystemId
-- Required parameter: SubnetId
-- Required parameter: LifeCycleState
function M.MountTargetDescription(MountTargetId, NetworkInterfaceId, FileSystemId, LifeCycleState, SubnetId, OwnerId, IpAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountTargetDescription")
	local t = { 
		["MountTargetId"] = MountTargetId,
		["NetworkInterfaceId"] = NetworkInterfaceId,
		["FileSystemId"] = FileSystemId,
		["LifeCycleState"] = LifeCycleState,
		["SubnetId"] = SubnetId,
		["OwnerId"] = OwnerId,
		["IpAddress"] = IpAddress,
	}
	M.AssertMountTargetDescription(t)
	return t
end

local IpAddressInUse_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertIpAddressInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpAddressInUse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IpAddressInUse_keys[k], "IpAddressInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpAddressInUse
-- <p>Returned if the request specified an <code>IpAddress</code> that is already in use in the subnet.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the request specified an <code>IpAddress</code> that is already in use in the subnet.</p>
-- @param Message [ErrorMessage] <p>Returned if the request specified an <code>IpAddress</code> that is already in use in the subnet.</p>
-- Required parameter: ErrorCode
function M.IpAddressInUse(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpAddressInUse")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertIpAddressInUse(t)
	return t
end

local IncorrectMountTargetState_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertIncorrectMountTargetState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectMountTargetState to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IncorrectMountTargetState_keys[k], "IncorrectMountTargetState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectMountTargetState
-- <p>Returned if the mount target is not in the correct state for the operation.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the mount target is not in the correct state for the operation.</p>
-- @param Message [ErrorMessage] <p>Returned if the mount target is not in the correct state for the operation.</p>
-- Required parameter: ErrorCode
function M.IncorrectMountTargetState(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncorrectMountTargetState")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertIncorrectMountTargetState(t)
	return t
end

local MountTargetConflict_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertMountTargetConflict(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetConflict to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MountTargetConflict_keys[k], "MountTargetConflict contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetConflict
-- <p>Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.</p>
-- @param Message [ErrorMessage] <p>Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.</p>
-- Required parameter: ErrorCode
function M.MountTargetConflict(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountTargetConflict")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertMountTargetConflict(t)
	return t
end

local FileSystemNotFound_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertFileSystemNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemNotFound_keys[k], "FileSystemNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemNotFound
-- <p>Returned if the specified <code>FileSystemId</code> does not exist in the requester's AWS account.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the specified <code>FileSystemId</code> does not exist in the requester's AWS account.</p>
-- @param Message [ErrorMessage] <p>Returned if the specified <code>FileSystemId</code> does not exist in the requester's AWS account.</p>
-- Required parameter: ErrorCode
function M.FileSystemNotFound(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemNotFound")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertFileSystemNotFound(t)
	return t
end

local DescribeFileSystemsResponse_keys = { "Marker" = true, "NextMarker" = true, "FileSystems" = true, nil }

function M.AssertDescribeFileSystemsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFileSystemsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["FileSystems"] then M.AssertFileSystemDescriptions(struct["FileSystems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFileSystemsResponse_keys[k], "DescribeFileSystemsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFileSystemsResponse
--  
-- @param Marker [Marker] <p>Present if provided by caller in the request (String).</p>
-- @param NextMarker [Marker] <p>Present if there are more file systems than returned in the response (String). You can use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>
-- @param FileSystems [FileSystemDescriptions] <p>Array of file system descriptions.</p>
function M.DescribeFileSystemsResponse(Marker, NextMarker, FileSystems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFileSystemsResponse")
	local t = { 
		["Marker"] = Marker,
		["NextMarker"] = NextMarker,
		["FileSystems"] = FileSystems,
	}
	M.AssertDescribeFileSystemsResponse(t)
	return t
end

local DescribeMountTargetsResponse_keys = { "Marker" = true, "NextMarker" = true, "MountTargets" = true, nil }

function M.AssertDescribeMountTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["MountTargets"] then M.AssertMountTargetDescriptions(struct["MountTargets"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMountTargetsResponse_keys[k], "DescribeMountTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetsResponse
-- <p/>
-- @param Marker [Marker] <p>If the request included the <code>Marker</code>, the response returns that value in this field.</p>
-- @param NextMarker [Marker] <p>If a value is present, there are more mount targets to return. In a subsequent request, you can provide <code>Marker</code> in your request with this value to retrieve the next set of mount targets.</p>
-- @param MountTargets [MountTargetDescriptions] <p>Returns the file system's mount targets as an array of <code>MountTargetDescription</code> objects.</p>
function M.DescribeMountTargetsResponse(Marker, NextMarker, MountTargets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMountTargetsResponse")
	local t = { 
		["Marker"] = Marker,
		["NextMarker"] = NextMarker,
		["MountTargets"] = MountTargets,
	}
	M.AssertDescribeMountTargetsResponse(t)
	return t
end

local BadRequest_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertBadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequest to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(BadRequest_keys[k], "BadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequest
-- <p>Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
-- @param Message [ErrorMessage] <p>Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
-- Required parameter: ErrorCode
function M.BadRequest(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequest")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertBadRequest(t)
	return t
end

local DescribeTagsResponse_keys = { "Marker" = true, "NextMarker" = true, "Tags" = true, nil }

function M.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsResponse_keys[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
-- <p/>
-- @param Marker [Marker] <p>If the request included a <code>Marker</code>, the response returns that value in this field.</p>
-- @param NextMarker [Marker] <p>If a value is present, there are more tags to return. In a subsequent request, you can provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter in your next request to retrieve the next set of tags.</p>
-- @param Tags [Tags] <p>Returns tags associated with the file system as an array of <code>Tag</code> objects. </p>
-- Required parameter: Tags
function M.DescribeTagsResponse(Marker, NextMarker, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResponse")
	local t = { 
		["Marker"] = Marker,
		["NextMarker"] = NextMarker,
		["Tags"] = Tags,
	}
	M.AssertDescribeTagsResponse(t)
	return t
end

local DeleteFileSystemRequest_keys = { "FileSystemId" = true, nil }

function M.AssertDeleteFileSystemRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileSystemRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFileSystemRequest_keys[k], "DeleteFileSystemRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileSystemRequest
-- <p/>
-- @param FileSystemId [FileSystemId] <p>ID of the file system you want to delete.</p>
-- Required parameter: FileSystemId
function M.DeleteFileSystemRequest(FileSystemId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFileSystemRequest")
	local t = { 
		["FileSystemId"] = FileSystemId,
	}
	M.AssertDeleteFileSystemRequest(t)
	return t
end

local CreateFileSystemRequest_keys = { "PerformanceMode" = true, "CreationToken" = true, nil }

function M.AssertCreateFileSystemRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFileSystemRequest to be of type 'table'")
	assert(struct["CreationToken"], "Expected key CreationToken to exist in table")
	if struct["PerformanceMode"] then M.AssertPerformanceMode(struct["PerformanceMode"]) end
	if struct["CreationToken"] then M.AssertCreationToken(struct["CreationToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateFileSystemRequest_keys[k], "CreateFileSystemRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFileSystemRequest
--  
-- @param PerformanceMode [PerformanceMode] <p>The <code>PerformanceMode</code> of the file system. We recommend <code>generalPurpose</code> performance mode for most file systems. File systems using the <code>maxIO</code> performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.</p>
-- @param CreationToken [CreationToken] <p>String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.</p>
-- Required parameter: CreationToken
function M.CreateFileSystemRequest(PerformanceMode, CreationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFileSystemRequest")
	local t = { 
		["PerformanceMode"] = PerformanceMode,
		["CreationToken"] = CreationToken,
	}
	M.AssertCreateFileSystemRequest(t)
	return t
end

local DescribeMountTargetSecurityGroupsResponse_keys = { "SecurityGroups" = true, nil }

function M.AssertDescribeMountTargetSecurityGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetSecurityGroupsResponse to be of type 'table'")
	assert(struct["SecurityGroups"], "Expected key SecurityGroups to exist in table")
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMountTargetSecurityGroupsResponse_keys[k], "DescribeMountTargetSecurityGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetSecurityGroupsResponse
--  
-- @param SecurityGroups [SecurityGroups] <p>Array of security groups.</p>
-- Required parameter: SecurityGroups
function M.DescribeMountTargetSecurityGroupsResponse(SecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMountTargetSecurityGroupsResponse")
	local t = { 
		["SecurityGroups"] = SecurityGroups,
	}
	M.AssertDescribeMountTargetSecurityGroupsResponse(t)
	return t
end

local FileSystemInUse_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertFileSystemInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemInUse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemInUse_keys[k], "FileSystemInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemInUse
-- <p>Returned if a file system has mount targets.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if a file system has mount targets.</p>
-- @param Message [ErrorMessage] <p>Returned if a file system has mount targets.</p>
-- Required parameter: ErrorCode
function M.FileSystemInUse(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemInUse")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertFileSystemInUse(t)
	return t
end

local FileSystemSize_keys = { "Timestamp" = true, "Value" = true, nil }

function M.AssertFileSystemSize(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemSize to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["Value"] then M.AssertFileSystemSizeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemSize_keys[k], "FileSystemSize contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemSize
-- <p>Latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent the actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not necessarily the exact size the file system was at any instant in time.</p>
-- @param Timestamp [Timestamp] <p>Time at which the size of data, returned in the <code>Value</code> field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>
-- @param Value [FileSystemSizeValue] <p>Latest known metered size (in bytes) of data stored in the file system.</p>
-- Required parameter: Value
function M.FileSystemSize(Timestamp, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemSize")
	local t = { 
		["Timestamp"] = Timestamp,
		["Value"] = Value,
	}
	M.AssertFileSystemSize(t)
	return t
end

local FileSystemLimitExceeded_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertFileSystemLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemLimitExceeded_keys[k], "FileSystemLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemLimitExceeded
-- <p>Returned if the AWS account has already created maximum number of file systems allowed per account.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the AWS account has already created maximum number of file systems allowed per account.</p>
-- @param Message [ErrorMessage] <p>Returned if the AWS account has already created maximum number of file systems allowed per account.</p>
-- Required parameter: ErrorCode
function M.FileSystemLimitExceeded(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemLimitExceeded")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertFileSystemLimitExceeded(t)
	return t
end

local CreateMountTargetRequest_keys = { "SubnetId" = true, "SecurityGroups" = true, "FileSystemId" = true, "IpAddress" = true, nil }

function M.AssertCreateMountTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMountTargetRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	for k,_ in pairs(struct) do
		assert(CreateMountTargetRequest_keys[k], "CreateMountTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMountTargetRequest
-- <p/>
-- @param SubnetId [SubnetId] <p>ID of the subnet to add the mount target in.</p>
-- @param SecurityGroups [SecurityGroups] <p>Up to five VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same VPC as subnet specified.</p>
-- @param FileSystemId [FileSystemId] <p>ID of the file system for which to create the mount target.</p>
-- @param IpAddress [IpAddress] <p>Valid IPv4 address within the address range of the specified subnet.</p>
-- Required parameter: FileSystemId
-- Required parameter: SubnetId
function M.CreateMountTargetRequest(SubnetId, SecurityGroups, FileSystemId, IpAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMountTargetRequest")
	local t = { 
		["SubnetId"] = SubnetId,
		["SecurityGroups"] = SecurityGroups,
		["FileSystemId"] = FileSystemId,
		["IpAddress"] = IpAddress,
	}
	M.AssertCreateMountTargetRequest(t)
	return t
end

local DescribeTagsRequest_keys = { "Marker" = true, "FileSystemId" = true, "MaxItems" = true, nil }

function M.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsRequest_keys[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
-- <p/>
-- @param Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeTags</code> operation (String). If present, it specifies to continue the list from where the previous call left off.</p>
-- @param FileSystemId [FileSystemId] <p>ID of the file system whose tag set you want to retrieve.</p>
-- @param MaxItems [MaxItems] <p>(Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.</p>
-- Required parameter: FileSystemId
function M.DescribeTagsRequest(Marker, FileSystemId, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["Marker"] = Marker,
		["FileSystemId"] = FileSystemId,
		["MaxItems"] = MaxItems,
	}
	M.AssertDescribeTagsRequest(t)
	return t
end

local DeleteTagsRequest_keys = { "FileSystemId" = true, "TagKeys" = true, nil }

function M.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsRequest_keys[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
-- <p/>
-- @param FileSystemId [FileSystemId] <p>ID of the file system whose tags you want to delete (String).</p>
-- @param TagKeys [TagKeys] <p>List of tag keys to delete.</p>
-- Required parameter: FileSystemId
-- Required parameter: TagKeys
function M.DeleteTagsRequest(FileSystemId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsRequest")
	local t = { 
		["FileSystemId"] = FileSystemId,
		["TagKeys"] = TagKeys,
	}
	M.AssertDeleteTagsRequest(t)
	return t
end

local DescribeMountTargetsRequest_keys = { "Marker" = true, "FileSystemId" = true, "MountTargetId" = true, "MaxItems" = true, nil }

function M.AssertDescribeMountTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMountTargetsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MountTargetId"] then M.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMountTargetsRequest_keys[k], "DescribeMountTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMountTargetsRequest
-- <p/>
-- @param Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue the list from where the previous returning call left off.</p>
-- @param FileSystemId [FileSystemId] <p>(Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if <code>MountTargetId</code> is not included.</p>
-- @param MountTargetId [MountTargetId] <p>(Optional) ID of the mount target that you want to have described (String). It must be included in your request if <code>FileSystemId</code> is not included.</p>
-- @param MaxItems [MaxItems] <p>(Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.</p>
function M.DescribeMountTargetsRequest(Marker, FileSystemId, MountTargetId, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMountTargetsRequest")
	local t = { 
		["Marker"] = Marker,
		["FileSystemId"] = FileSystemId,
		["MountTargetId"] = MountTargetId,
		["MaxItems"] = MaxItems,
	}
	M.AssertDescribeMountTargetsRequest(t)
	return t
end

local SecurityGroupLimitExceeded_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertSecurityGroupLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SecurityGroupLimitExceeded_keys[k], "SecurityGroupLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupLimitExceeded
-- <p>Returned if the size of <code>SecurityGroups</code> specified in the request is greater than five.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the size of <code>SecurityGroups</code> specified in the request is greater than five.</p>
-- @param Message [ErrorMessage] <p>Returned if the size of <code>SecurityGroups</code> specified in the request is greater than five.</p>
-- Required parameter: ErrorCode
function M.SecurityGroupLimitExceeded(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityGroupLimitExceeded")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertSecurityGroupLimitExceeded(t)
	return t
end

local NoFreeAddressesInSubnet_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertNoFreeAddressesInSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoFreeAddressesInSubnet to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoFreeAddressesInSubnet_keys[k], "NoFreeAddressesInSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoFreeAddressesInSubnet
-- <p>Returned if <code>IpAddress</code> was not specified in the request and there are no free IP addresses in the subnet.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if <code>IpAddress</code> was not specified in the request and there are no free IP addresses in the subnet.</p>
-- @param Message [ErrorMessage] <p>Returned if <code>IpAddress</code> was not specified in the request and there are no free IP addresses in the subnet.</p>
-- Required parameter: ErrorCode
function M.NoFreeAddressesInSubnet(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoFreeAddressesInSubnet")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertNoFreeAddressesInSubnet(t)
	return t
end

local DescribeFileSystemsRequest_keys = { "Marker" = true, "FileSystemId" = true, "MaxItems" = true, "CreationToken" = true, nil }

function M.AssertDescribeFileSystemsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFileSystemsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	if struct["CreationToken"] then M.AssertCreationToken(struct["CreationToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFileSystemsRequest_keys[k], "DescribeFileSystemsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFileSystemsRequest
-- <p/>
-- @param Marker [Marker] <p>(Optional) Opaque pagination token returned from a previous <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the list from where the returning call had left off. </p>
-- @param FileSystemId [FileSystemId] <p>(Optional) ID of the file system whose description you want to retrieve (String).</p>
-- @param MaxItems [MaxItems] <p>(Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the <code>MaxItems</code> parameter specified in the request and the service's internal maximum number of items per page. </p>
-- @param CreationToken [CreationToken] <p>(Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.</p>
function M.DescribeFileSystemsRequest(Marker, FileSystemId, MaxItems, CreationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFileSystemsRequest")
	local t = { 
		["Marker"] = Marker,
		["FileSystemId"] = FileSystemId,
		["MaxItems"] = MaxItems,
		["CreationToken"] = CreationToken,
	}
	M.AssertDescribeFileSystemsRequest(t)
	return t
end

local InternalServerError_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>Returned if an error occurred on the server side.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if an error occurred on the server side.</p>
-- @param Message [ErrorMessage] <p>Returned if an error occurred on the server side.</p>
-- Required parameter: ErrorCode
function M.InternalServerError(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertInternalServerError(t)
	return t
end

local ModifyMountTargetSecurityGroupsRequest_keys = { "MountTargetId" = true, "SecurityGroups" = true, nil }

function M.AssertModifyMountTargetSecurityGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyMountTargetSecurityGroupsRequest to be of type 'table'")
	assert(struct["MountTargetId"], "Expected key MountTargetId to exist in table")
	if struct["MountTargetId"] then M.AssertMountTargetId(struct["MountTargetId"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroups(struct["SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(ModifyMountTargetSecurityGroupsRequest_keys[k], "ModifyMountTargetSecurityGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyMountTargetSecurityGroupsRequest
-- <p/>
-- @param MountTargetId [MountTargetId] <p>ID of the mount target whose security groups you want to modify.</p>
-- @param SecurityGroups [SecurityGroups] <p>Array of up to five VPC security group IDs.</p>
-- Required parameter: MountTargetId
function M.ModifyMountTargetSecurityGroupsRequest(MountTargetId, SecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyMountTargetSecurityGroupsRequest")
	local t = { 
		["MountTargetId"] = MountTargetId,
		["SecurityGroups"] = SecurityGroups,
	}
	M.AssertModifyMountTargetSecurityGroupsRequest(t)
	return t
end

local IncorrectFileSystemLifeCycleState_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertIncorrectFileSystemLifeCycleState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectFileSystemLifeCycleState to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IncorrectFileSystemLifeCycleState_keys[k], "IncorrectFileSystemLifeCycleState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectFileSystemLifeCycleState
-- <p>Returned if the file system's life cycle state is not "created".</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the file system's life cycle state is not "created".</p>
-- @param Message [ErrorMessage] <p>Returned if the file system's life cycle state is not "created".</p>
-- Required parameter: ErrorCode
function M.IncorrectFileSystemLifeCycleState(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncorrectFileSystemLifeCycleState")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertIncorrectFileSystemLifeCycleState(t)
	return t
end

local FileSystemAlreadyExists_keys = { "ErrorCode" = true, "Message" = true, "FileSystemId" = true, nil }

function M.AssertFileSystemAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSystemAlreadyExists to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemAlreadyExists_keys[k], "FileSystemAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemAlreadyExists
-- <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-- @param Message [ErrorMessage] <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-- @param FileSystemId [FileSystemId] <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-- Required parameter: ErrorCode
-- Required parameter: FileSystemId
function M.FileSystemAlreadyExists(ErrorCode, Message, FileSystemId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemAlreadyExists")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
		["FileSystemId"] = FileSystemId,
	}
	M.AssertFileSystemAlreadyExists(t)
	return t
end

local SubnetNotFound_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertSubnetNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SubnetNotFound_keys[k], "SubnetNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetNotFound
-- <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the request.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the request.</p>
-- @param Message [ErrorMessage] <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the request.</p>
-- Required parameter: ErrorCode
function M.SubnetNotFound(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetNotFound")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertSubnetNotFound(t)
	return t
end

local MountTargetNotFound_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertMountTargetNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountTargetNotFound to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MountTargetNotFound_keys[k], "MountTargetNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountTargetNotFound
-- <p>Returned if there is no mount target with the specified ID found in the caller's account.</p>
-- @param ErrorCode [ErrorCode] <p>Returned if there is no mount target with the specified ID found in the caller's account.</p>
-- @param Message [ErrorMessage] <p>Returned if there is no mount target with the specified ID found in the caller's account.</p>
-- Required parameter: ErrorCode
function M.MountTargetNotFound(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountTargetNotFound")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertMountTargetNotFound(t)
	return t
end

local FileSystemDescription_keys = { "SizeInBytes" = true, "Name" = true, "CreationToken" = true, "CreationTime" = true, "PerformanceMode" = true, "FileSystemId" = true, "NumberOfMountTargets" = true, "LifeCycleState" = true, "OwnerId" = true, nil }

function M.AssertFileSystemDescription(struct)
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
	if struct["SizeInBytes"] then M.AssertFileSystemSize(struct["SizeInBytes"]) end
	if struct["Name"] then M.AssertTagValue(struct["Name"]) end
	if struct["CreationToken"] then M.AssertCreationToken(struct["CreationToken"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["PerformanceMode"] then M.AssertPerformanceMode(struct["PerformanceMode"]) end
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["NumberOfMountTargets"] then M.AssertMountTargetCount(struct["NumberOfMountTargets"]) end
	if struct["LifeCycleState"] then M.AssertLifeCycleState(struct["LifeCycleState"]) end
	if struct["OwnerId"] then M.AssertAwsAccountId(struct["OwnerId"]) end
	for k,_ in pairs(struct) do
		assert(FileSystemDescription_keys[k], "FileSystemDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSystemDescription
-- <p>Description of the file system.</p>
-- @param SizeInBytes [FileSystemSize] <p>Latest known metered size (in bytes) of data stored in the file system, in bytes, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of seconds since 1970-01-01T00:00:00Z. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size the file system was at any instant in time. </p>
-- @param Name [TagValue] <p>You can add tags to a file system, including a <code>Name</code> tag. For more information, see <a>CreateTags</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns the value in this field. </p>
-- @param CreationToken [CreationToken] <p>Opaque string specified in the request.</p>
-- @param CreationTime [Timestamp] <p>Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).</p>
-- @param PerformanceMode [PerformanceMode] <p>The <code>PerformanceMode</code> of the file system.</p>
-- @param FileSystemId [FileSystemId] <p>ID of the file system, assigned by Amazon EFS.</p>
-- @param NumberOfMountTargets [MountTargetCount] <p>Current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>
-- @param LifeCycleState [LifeCycleState] <p>Lifecycle phase of the file system.</p>
-- @param OwnerId [AwsAccountId] <p>AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.</p>
-- Required parameter: OwnerId
-- Required parameter: CreationToken
-- Required parameter: FileSystemId
-- Required parameter: CreationTime
-- Required parameter: LifeCycleState
-- Required parameter: NumberOfMountTargets
-- Required parameter: SizeInBytes
-- Required parameter: PerformanceMode
function M.FileSystemDescription(SizeInBytes, Name, CreationToken, CreationTime, PerformanceMode, FileSystemId, NumberOfMountTargets, LifeCycleState, OwnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileSystemDescription")
	local t = { 
		["SizeInBytes"] = SizeInBytes,
		["Name"] = Name,
		["CreationToken"] = CreationToken,
		["CreationTime"] = CreationTime,
		["PerformanceMode"] = PerformanceMode,
		["FileSystemId"] = FileSystemId,
		["NumberOfMountTargets"] = NumberOfMountTargets,
		["LifeCycleState"] = LifeCycleState,
		["OwnerId"] = OwnerId,
	}
	M.AssertFileSystemDescription(t)
	return t
end

local NetworkInterfaceLimitExceeded_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertNetworkInterfaceLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterfaceLimitExceeded to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NetworkInterfaceLimitExceeded_keys[k], "NetworkInterfaceLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterfaceLimitExceeded
-- <p> The calling account has reached the ENI limit for the specific AWS region. Client should try to delete some ENIs or get its account limit raised. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a> in the Amazon Virtual Private Cloud User Guide (see the Network interfaces per VPC entry in the table). </p>
-- @param ErrorCode [ErrorCode] <p> The calling account has reached the ENI limit for the specific AWS region. Client should try to delete some ENIs or get its account limit raised. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a> in the Amazon Virtual Private Cloud User Guide (see the Network interfaces per VPC entry in the table). </p>
-- @param Message [ErrorMessage] <p> The calling account has reached the ENI limit for the specific AWS region. Client should try to delete some ENIs or get its account limit raised. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a> in the Amazon Virtual Private Cloud User Guide (see the Network interfaces per VPC entry in the table). </p>
-- Required parameter: ErrorCode
function M.NetworkInterfaceLimitExceeded(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkInterfaceLimitExceeded")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertNetworkInterfaceLimitExceeded(t)
	return t
end

local CreateTagsRequest_keys = { "FileSystemId" = true, "Tags" = true, nil }

function M.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["FileSystemId"], "Expected key FileSystemId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["FileSystemId"] then M.AssertFileSystemId(struct["FileSystemId"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagsRequest_keys[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
-- <p/>
-- @param FileSystemId [FileSystemId] <p>ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.</p>
-- @param Tags [Tags] <p>Array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value pair. </p>
-- Required parameter: FileSystemId
-- Required parameter: Tags
function M.CreateTagsRequest(FileSystemId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsRequest")
	local t = { 
		["FileSystemId"] = FileSystemId,
		["Tags"] = Tags,
	}
	M.AssertCreateTagsRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A tag is a key-value pair. Allowed characters: letters, whitespace, and numbers, representable in UTF-8, and the following characters:<code> + - = . _ : /</code> </p>
-- @param Value [TagValue] <p>Value of the tag key.</p>
-- @param Key [TagKey] <p>Tag key (String). The key can't start with <code>aws:</code>.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local UnsupportedAvailabilityZone_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertUnsupportedAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedAvailabilityZone to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedAvailabilityZone_keys[k], "UnsupportedAvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedAvailabilityZone
-- <p></p>
-- @param ErrorCode [ErrorCode] <p></p>
-- @param Message [ErrorMessage] <p></p>
-- Required parameter: ErrorCode
function M.UnsupportedAvailabilityZone(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedAvailabilityZone")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertUnsupportedAvailabilityZone(t)
	return t
end

function M.AssertCreationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected CreationToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CreationToken(str)
	M.AssertCreationToken(str)
	return str
end

function M.AssertMountTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MountTargetId to be of type 'string'")
end

--  
function M.MountTargetId(str)
	M.AssertMountTargetId(str)
	return str
end

function M.AssertSecurityGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroup to be of type 'string'")
end

--  
function M.SecurityGroup(str)
	M.AssertSecurityGroup(str)
	return str
end

function M.AssertPerformanceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMode to be of type 'string'")
end

--  
function M.PerformanceMode(str)
	M.AssertPerformanceMode(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
end

--  
function M.AwsAccountId(str)
	M.AssertAwsAccountId(str)
	return str
end

function M.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
end

--  
function M.NetworkInterfaceId(str)
	M.AssertNetworkInterfaceId(str)
	return str
end

function M.AssertLifeCycleState(str)
	assert(str)
	assert(type(str) == "string", "Expected LifeCycleState to be of type 'string'")
end

--  
function M.LifeCycleState(str)
	M.AssertLifeCycleState(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertFileSystemId(str)
	assert(str)
	assert(type(str) == "string", "Expected FileSystemId to be of type 'string'")
end

--  
function M.FileSystemId(str)
	M.AssertFileSystemId(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertFileSystemSizeValue(long)
	assert(long)
	assert(type(long) == "number", "Expected FileSystemSizeValue to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.FileSystemSizeValue(long)
	M.AssertFileSystemSizeValue(long)
	return long
end

function M.AssertMountTargetCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MountTargetCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MountTargetCount(integer)
	M.AssertMountTargetCount(integer)
	return integer
end

function M.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxItems(integer)
	M.AssertMaxItems(integer)
	return integer
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertSecurityGroup(v)
	end
end

--  
-- List of SecurityGroup objects
function M.SecurityGroups(list)
	M.AssertSecurityGroups(list)
	return list
end

function M.AssertMountTargetDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected MountTargetDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMountTargetDescription(v)
	end
end

--  
-- List of MountTargetDescription objects
function M.MountTargetDescriptions(list)
	M.AssertMountTargetDescriptions(list)
	return list
end

function M.AssertFileSystemDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected FileSystemDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFileSystemDescription(v)
	end
end

--  
-- List of FileSystemDescription objects
function M.FileSystemDescriptions(list)
	M.AssertFileSystemDescriptions(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteTags
-- @param DeleteTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsRequest, cb)
	assert(DeleteTagsRequest, "You must provide a DeleteTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-02-01/delete-tags/{FileSystemId}", DeleteTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMountTargetSecurityGroups
-- @param DescribeMountTargetSecurityGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMountTargetSecurityGroupsAsync(DescribeMountTargetSecurityGroupsRequest, cb)
	assert(DescribeMountTargetSecurityGroupsRequest, "You must provide a DescribeMountTargetSecurityGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeMountTargetSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-02-01/mount-targets/{MountTargetId}/security-groups", DescribeMountTargetSecurityGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFileSystem
-- @param DeleteFileSystemRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFileSystemAsync(DeleteFileSystemRequest, cb)
	assert(DeleteFileSystemRequest, "You must provide a DeleteFileSystemRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFileSystem",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-02-01/file-systems/{FileSystemId}", DeleteFileSystemRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTags
-- @param CreateTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagsAsync(CreateTagsRequest, cb)
	assert(CreateTagsRequest, "You must provide a CreateTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-02-01/create-tags/{FileSystemId}", CreateTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateMountTarget
-- @param CreateMountTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMountTargetAsync(CreateMountTargetRequest, cb)
	assert(CreateMountTargetRequest, "You must provide a CreateMountTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateMountTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-02-01/mount-targets", CreateMountTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFileSystems
-- @param DescribeFileSystemsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFileSystemsAsync(DescribeFileSystemsRequest, cb)
	assert(DescribeFileSystemsRequest, "You must provide a DescribeFileSystemsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeFileSystems",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-02-01/file-systems", DescribeFileSystemsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-02-01/tags/{FileSystemId}/", DescribeTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyMountTargetSecurityGroups
-- @param ModifyMountTargetSecurityGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyMountTargetSecurityGroupsAsync(ModifyMountTargetSecurityGroupsRequest, cb)
	assert(ModifyMountTargetSecurityGroupsRequest, "You must provide a ModifyMountTargetSecurityGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyMountTargetSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2015-02-01/mount-targets/{MountTargetId}/security-groups", ModifyMountTargetSecurityGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMountTargets
-- @param DescribeMountTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMountTargetsAsync(DescribeMountTargetsRequest, cb)
	assert(DescribeMountTargetsRequest, "You must provide a DescribeMountTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeMountTargets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-02-01/mount-targets", DescribeMountTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFileSystem
-- @param CreateFileSystemRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFileSystemAsync(CreateFileSystemRequest, cb)
	assert(CreateFileSystemRequest, "You must provide a CreateFileSystemRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFileSystem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-02-01/file-systems", CreateFileSystemRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMountTarget
-- @param DeleteMountTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMountTargetAsync(DeleteMountTargetRequest, cb)
	assert(DeleteMountTargetRequest, "You must provide a DeleteMountTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMountTarget",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-02-01/mount-targets/{MountTargetId}", DeleteMountTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
