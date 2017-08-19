--- GENERATED CODE - DO NOT MODIFY
-- AWS Directory Service (ds-2015-04-16)

local M = {}

M.metadata = {
	api_version = "2015-04-16",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ds",
	service_abbreviation = "Directory Service",
	service_full_name = "AWS Directory Service",
	signature_version = "v4",
	target_prefix = "DirectoryService_20150416",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ds-2015-04-16",
}

local keys = {}
local asserts = {}

keys.DirectoryVpcSettings = { ["SubnetIds"] = true, ["VpcId"] = true, nil }

function asserts.AssertDirectoryVpcSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryVpcSettings to be of type 'table'")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryVpcSettings[k], "DirectoryVpcSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryVpcSettings
-- <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>The identifiers of the subnets for the directory servers. The two subnets must be in different Availability Zones. AWS Directory Service creates a directory server and a DNS server in each of these subnets.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC in which to create the directory.</p>
-- Required key: VpcId
-- Required key: SubnetIds
-- @return DirectoryVpcSettings structure as a key-value pair table
function M.DirectoryVpcSettings(args)
	assert(args, "You must provdide an argument table when creating DirectoryVpcSettings")
	local t = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
	}
	asserts.AssertDirectoryVpcSettings(t)
	return t
end

keys.UnsupportedOperationException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationException[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>The operation is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return UnsupportedOperationException structure as a key-value pair table
function M.UnsupportedOperationException(args)
	assert(args, "You must provdide an argument table when creating UnsupportedOperationException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertUnsupportedOperationException(t)
	return t
end

keys.DisableSsoRequest = { ["UserName"] = true, ["DirectoryId"] = true, ["Password"] = true, nil }

function asserts.AssertDisableSsoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSsoRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Password"] then asserts.AssertConnectPassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableSsoRequest[k], "DisableSsoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSsoRequest
-- <p>Contains the inputs for the <a>DisableSso</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [UserName] <p>The username of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. This account must have privileges to remove a service principal name.</p> <p>If the AD Connector service account does not have privileges to remove a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to disable single-sign on.</p>
-- * Password [ConnectPassword] <p>The password of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>
-- Required key: DirectoryId
-- @return DisableSsoRequest structure as a key-value pair table
function M.DisableSsoRequest(args)
	assert(args, "You must provdide an argument table when creating DisableSsoRequest")
	local t = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["Password"] = args["Password"],
	}
	asserts.AssertDisableSsoRequest(t)
	return t
end

keys.DeleteTrustRequest = { ["TrustId"] = true, ["DeleteAssociatedConditionalForwarder"] = true, nil }

function asserts.AssertDeleteTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrustRequest to be of type 'table'")
	assert(struct["TrustId"], "Expected key TrustId to exist in table")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	if struct["DeleteAssociatedConditionalForwarder"] then asserts.AssertDeleteAssociatedConditionalForwarder(struct["DeleteAssociatedConditionalForwarder"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrustRequest[k], "DeleteTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrustRequest
-- <p>Deletes the local side of an existing trust relationship between the Microsoft AD in the AWS cloud and the external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The Trust ID of the trust relationship to be deleted.</p>
-- * DeleteAssociatedConditionalForwarder [DeleteAssociatedConditionalForwarder] <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
-- Required key: TrustId
-- @return DeleteTrustRequest structure as a key-value pair table
function M.DeleteTrustRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteTrustRequest")
	local t = { 
		["TrustId"] = args["TrustId"],
		["DeleteAssociatedConditionalForwarder"] = args["DeleteAssociatedConditionalForwarder"],
	}
	asserts.AssertDeleteTrustRequest(t)
	return t
end

keys.DescribeTrustsResult = { ["NextToken"] = true, ["Trusts"] = true, nil }

function asserts.AssertDescribeTrustsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Trusts"] then asserts.AssertTrusts(struct["Trusts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustsResult[k], "DescribeTrustsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustsResult
-- <p>The result of a DescribeTrust request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>
-- * Trusts [Trusts] <p>The list of Trust objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
-- @return DescribeTrustsResult structure as a key-value pair table
function M.DescribeTrustsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeTrustsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Trusts"] = args["Trusts"],
	}
	asserts.AssertDescribeTrustsResult(t)
	return t
end

keys.DeleteDirectoryResult = { ["DirectoryId"] = true, nil }

function asserts.AssertDeleteDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryResult[k], "DeleteDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryResult
-- <p>Contains the results of the <a>DeleteDirectory</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- @return DeleteDirectoryResult structure as a key-value pair table
function M.DeleteDirectoryResult(args)
	assert(args, "You must provdide an argument table when creating DeleteDirectoryResult")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDeleteDirectoryResult(t)
	return t
end

keys.DirectoryUnavailableException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertDirectoryUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryUnavailableException[k], "DirectoryUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryUnavailableException
-- <p>The specified directory is unavailable or could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return DirectoryUnavailableException structure as a key-value pair table
function M.DirectoryUnavailableException(args)
	assert(args, "You must provdide an argument table when creating DirectoryUnavailableException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertDirectoryUnavailableException(t)
	return t
end

keys.InvalidParameterException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters are not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.CreateAliasResult = { ["DirectoryId"] = true, ["Alias"] = true, nil }

function asserts.AssertCreateAliasResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasResult to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Alias"] then asserts.AssertAliasName(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasResult[k], "CreateAliasResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasResult
-- <p>Contains the results of the <a>CreateAlias</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory.</p>
-- * Alias [AliasName] <p>The alias for the directory.</p>
-- @return CreateAliasResult structure as a key-value pair table
function M.CreateAliasResult(args)
	assert(args, "You must provdide an argument table when creating CreateAliasResult")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["Alias"] = args["Alias"],
	}
	asserts.AssertCreateAliasResult(t)
	return t
end

keys.CreateDirectoryResult = { ["DirectoryId"] = true, nil }

function asserts.AssertCreateDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryResult[k], "CreateDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryResult
-- <p>Contains the results of the <a>CreateDirectory</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory that was created.</p>
-- @return CreateDirectoryResult structure as a key-value pair table
function M.CreateDirectoryResult(args)
	assert(args, "You must provdide an argument table when creating CreateDirectoryResult")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertCreateDirectoryResult(t)
	return t
end

keys.ListIpRoutesRequest = { ["DirectoryId"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIpRoutesRequest[k], "ListIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIpRoutesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory for which you want to retrieve the IP addresses.</p>
-- * NextToken [NextToken] <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
-- * Limit [Limit] <p>Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
-- Required key: DirectoryId
-- @return ListIpRoutesRequest structure as a key-value pair table
function M.ListIpRoutesRequest(args)
	assert(args, "You must provdide an argument table when creating ListIpRoutesRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListIpRoutesRequest(t)
	return t
end

keys.GetSnapshotLimitsResult = { ["SnapshotLimits"] = true, nil }

function asserts.AssertGetSnapshotLimitsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnapshotLimitsResult to be of type 'table'")
	if struct["SnapshotLimits"] then asserts.AssertSnapshotLimits(struct["SnapshotLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSnapshotLimitsResult[k], "GetSnapshotLimitsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnapshotLimitsResult
-- <p>Contains the results of the <a>GetSnapshotLimits</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotLimits [SnapshotLimits] <p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified directory.</p>
-- @return GetSnapshotLimitsResult structure as a key-value pair table
function M.GetSnapshotLimitsResult(args)
	assert(args, "You must provdide an argument table when creating GetSnapshotLimitsResult")
	local t = { 
		["SnapshotLimits"] = args["SnapshotLimits"],
	}
	asserts.AssertGetSnapshotLimitsResult(t)
	return t
end

keys.DisableSsoResult = { nil }

function asserts.AssertDisableSsoResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSsoResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableSsoResult[k], "DisableSsoResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSsoResult
-- <p>Contains the results of the <a>DisableSso</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableSsoResult structure as a key-value pair table
function M.DisableSsoResult(args)
	assert(args, "You must provdide an argument table when creating DisableSsoResult")
	local t = { 
	}
	asserts.AssertDisableSsoResult(t)
	return t
end

keys.DescribeSnapshotsRequest = { ["DirectoryId"] = true, ["NextToken"] = true, ["Limit"] = true, ["SnapshotIds"] = true, nil }

function asserts.AssertDescribeSnapshotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsRequest to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["SnapshotIds"] then asserts.AssertSnapshotIds(struct["SnapshotIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotsRequest[k], "DescribeSnapshotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsRequest
-- <p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to retrieve snapshot information.</p>
-- * NextToken [NextToken] <p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>
-- * Limit [Limit] <p>The maximum number of objects to return.</p>
-- * SnapshotIds [SnapshotIds] <p>A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i> members.</p>
-- @return DescribeSnapshotsRequest structure as a key-value pair table
function M.DescribeSnapshotsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeSnapshotsRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["SnapshotIds"] = args["SnapshotIds"],
	}
	asserts.AssertDescribeSnapshotsRequest(t)
	return t
end

keys.DeleteSnapshotRequest = { ["SnapshotId"] = true, nil }

function asserts.AssertDeleteSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotRequest to be of type 'table'")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotRequest[k], "DeleteSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotRequest
-- <p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] <p>The identifier of the directory snapshot to be deleted.</p>
-- Required key: SnapshotId
-- @return DeleteSnapshotRequest structure as a key-value pair table
function M.DeleteSnapshotRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteSnapshotRequest")
	local t = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertDeleteSnapshotRequest(t)
	return t
end

keys.ListTagsForResourceResult = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResult[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Reserved for future use.</p>
-- * Tags [Tags] <p>List of tags returned by the ListTagsForResource operation.</p>
-- @return ListTagsForResourceResult structure as a key-value pair table
function M.ListTagsForResourceResult(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceResult(t)
	return t
end

keys.DeleteSnapshotResult = { ["SnapshotId"] = true, nil }

function asserts.AssertDeleteSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotResult to be of type 'table'")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotResult[k], "DeleteSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotResult
-- <p>Contains the results of the <a>DeleteSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] <p>The identifier of the directory snapshot that was deleted.</p>
-- @return DeleteSnapshotResult structure as a key-value pair table
function M.DeleteSnapshotResult(args)
	assert(args, "You must provdide an argument table when creating DeleteSnapshotResult")
	local t = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertDeleteSnapshotResult(t)
	return t
end

keys.InsufficientPermissionsException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertInsufficientPermissionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientPermissionsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InsufficientPermissionsException[k], "InsufficientPermissionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientPermissionsException
-- <p>The account does not have sufficient permission to perform the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return InsufficientPermissionsException structure as a key-value pair table
function M.InsufficientPermissionsException(args)
	assert(args, "You must provdide an argument table when creating InsufficientPermissionsException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertInsufficientPermissionsException(t)
	return t
end

keys.DirectoryDescription = { ["AccessUrl"] = true, ["DirectoryId"] = true, ["SsoEnabled"] = true, ["Name"] = true, ["RadiusStatus"] = true, ["DnsIpAddrs"] = true, ["VpcSettings"] = true, ["ConnectSettings"] = true, ["RadiusSettings"] = true, ["StageLastUpdatedDateTime"] = true, ["Alias"] = true, ["LaunchTime"] = true, ["StageReason"] = true, ["Description"] = true, ["ShortName"] = true, ["Stage"] = true, ["Type"] = true, ["Size"] = true, nil }

function asserts.AssertDirectoryDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryDescription to be of type 'table'")
	if struct["AccessUrl"] then asserts.AssertAccessUrl(struct["AccessUrl"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["SsoEnabled"] then asserts.AssertSsoEnabled(struct["SsoEnabled"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["RadiusStatus"] then asserts.AssertRadiusStatus(struct["RadiusStatus"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettingsDescription(struct["VpcSettings"]) end
	if struct["ConnectSettings"] then asserts.AssertDirectoryConnectSettingsDescription(struct["ConnectSettings"]) end
	if struct["RadiusSettings"] then asserts.AssertRadiusSettings(struct["RadiusSettings"]) end
	if struct["StageLastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["StageLastUpdatedDateTime"]) end
	if struct["Alias"] then asserts.AssertAliasName(struct["Alias"]) end
	if struct["LaunchTime"] then asserts.AssertLaunchTime(struct["LaunchTime"]) end
	if struct["StageReason"] then asserts.AssertStageReason(struct["StageReason"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Stage"] then asserts.AssertDirectoryStage(struct["Stage"]) end
	if struct["Type"] then asserts.AssertDirectoryType(struct["Type"]) end
	if struct["Size"] then asserts.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryDescription[k], "DirectoryDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryDescription
-- <p>Contains information about an AWS Directory Service directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessUrl [AccessUrl] <p>The access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>. If no alias has been created for the directory, <code>&lt;alias&gt;</code> is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- * DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- * SsoEnabled [SsoEnabled] <p>Indicates if single-sign on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>
-- * Name [DirectoryName] <p>The fully-qualified name of the directory.</p>
-- * RadiusStatus [RadiusStatus] <p>The status of the RADIUS MFA server connection.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.</p>
-- * VpcSettings [DirectoryVpcSettingsDescription] <p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.</p>
-- * ConnectSettings [DirectoryConnectSettingsDescription] <p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.</p>
-- * RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server configured for this directory.</p>
-- * StageLastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the stage was last updated.</p>
-- * Alias [AliasName] <p>The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- * LaunchTime [LaunchTime] <p>Specifies when the directory was created.</p>
-- * StageReason [StageReason] <p>Additional information about the directory stage.</p>
-- * Description [Description] <p>The textual description for the directory.</p>
-- * ShortName [DirectoryShortName] <p>The short name of the directory.</p>
-- * Stage [DirectoryStage] <p>The current stage of the directory.</p>
-- * Type [DirectoryType] <p>The directory size.</p>
-- * Size [DirectorySize] <p>The directory size.</p>
-- @return DirectoryDescription structure as a key-value pair table
function M.DirectoryDescription(args)
	assert(args, "You must provdide an argument table when creating DirectoryDescription")
	local t = { 
		["AccessUrl"] = args["AccessUrl"],
		["DirectoryId"] = args["DirectoryId"],
		["SsoEnabled"] = args["SsoEnabled"],
		["Name"] = args["Name"],
		["RadiusStatus"] = args["RadiusStatus"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
		["VpcSettings"] = args["VpcSettings"],
		["ConnectSettings"] = args["ConnectSettings"],
		["RadiusSettings"] = args["RadiusSettings"],
		["StageLastUpdatedDateTime"] = args["StageLastUpdatedDateTime"],
		["Alias"] = args["Alias"],
		["LaunchTime"] = args["LaunchTime"],
		["StageReason"] = args["StageReason"],
		["Description"] = args["Description"],
		["ShortName"] = args["ShortName"],
		["Stage"] = args["Stage"],
		["Type"] = args["Type"],
		["Size"] = args["Size"],
	}
	asserts.AssertDirectoryDescription(t)
	return t
end

keys.RegisterEventTopicRequest = { ["DirectoryId"] = true, ["TopicName"] = true, nil }

function asserts.AssertRegisterEventTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEventTopicRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["TopicName"], "Expected key TopicName to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then asserts.AssertTopicName(struct["TopicName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterEventTopicRequest[k], "RegisterEventTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEventTopicRequest
-- <p>Registers a new event topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The Directory ID that will publish status messages to the SNS topic.</p>
-- * TopicName [TopicName] <p>The SNS topic name to which the directory will publish status messages. This SNS topic must be in the same region as the specified Directory ID.</p>
-- Required key: DirectoryId
-- Required key: TopicName
-- @return RegisterEventTopicRequest structure as a key-value pair table
function M.RegisterEventTopicRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterEventTopicRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
	}
	asserts.AssertRegisterEventTopicRequest(t)
	return t
end

keys.IpRouteLimitExceededException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertIpRouteLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRouteLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpRouteLimitExceededException[k], "IpRouteLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRouteLimitExceededException
-- <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return IpRouteLimitExceededException structure as a key-value pair table
function M.IpRouteLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating IpRouteLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertIpRouteLimitExceededException(t)
	return t
end

keys.Trust = { ["DirectoryId"] = true, ["StateLastUpdatedDateTime"] = true, ["LastUpdatedDateTime"] = true, ["CreatedDateTime"] = true, ["TrustStateReason"] = true, ["RemoteDomainName"] = true, ["TrustType"] = true, ["TrustId"] = true, ["TrustDirection"] = true, ["TrustState"] = true, nil }

function asserts.AssertTrust(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trust to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["StateLastUpdatedDateTime"] then asserts.AssertStateLastUpdatedDateTime(struct["StateLastUpdatedDateTime"]) end
	if struct["LastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["LastUpdatedDateTime"]) end
	if struct["CreatedDateTime"] then asserts.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["TrustStateReason"] then asserts.AssertTrustStateReason(struct["TrustStateReason"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["TrustType"] then asserts.AssertTrustType(struct["TrustType"]) end
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	if struct["TrustDirection"] then asserts.AssertTrustDirection(struct["TrustDirection"]) end
	if struct["TrustState"] then asserts.AssertTrustState(struct["TrustState"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trust[k], "Trust contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trust
-- <p>Describes a trust relationship between an Microsoft AD in the AWS cloud and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory involved in the trust relationship.</p>
-- * StateLastUpdatedDateTime [StateLastUpdatedDateTime] <p>The date and time that the TrustState was last updated.</p>
-- * LastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the trust relationship was last updated.</p>
-- * CreatedDateTime [CreatedDateTime] <p>The date and time that the trust relationship was created.</p>
-- * TrustStateReason [TrustStateReason] <p>The reason for the TrustState.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.</p>
-- * TrustType [TrustType] <p>The trust relationship type.</p>
-- * TrustId [TrustId] <p>The unique ID of the trust relationship.</p>
-- * TrustDirection [TrustDirection] <p>The trust relationship direction.</p>
-- * TrustState [TrustState] <p>The trust relationship state.</p>
-- @return Trust structure as a key-value pair table
function M.Trust(args)
	assert(args, "You must provdide an argument table when creating Trust")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["StateLastUpdatedDateTime"] = args["StateLastUpdatedDateTime"],
		["LastUpdatedDateTime"] = args["LastUpdatedDateTime"],
		["CreatedDateTime"] = args["CreatedDateTime"],
		["TrustStateReason"] = args["TrustStateReason"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["TrustType"] = args["TrustType"],
		["TrustId"] = args["TrustId"],
		["TrustDirection"] = args["TrustDirection"],
		["TrustState"] = args["TrustState"],
	}
	asserts.AssertTrust(t)
	return t
end

keys.DescribeConditionalForwardersResult = { ["ConditionalForwarders"] = true, nil }

function asserts.AssertDescribeConditionalForwardersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConditionalForwardersResult to be of type 'table'")
	if struct["ConditionalForwarders"] then asserts.AssertConditionalForwarders(struct["ConditionalForwarders"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConditionalForwardersResult[k], "DescribeConditionalForwardersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConditionalForwardersResult
-- <p>The result of a DescribeConditionalForwarder request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConditionalForwarders [ConditionalForwarders] <p>The list of conditional forwarders that have been created.</p>
-- @return DescribeConditionalForwardersResult structure as a key-value pair table
function M.DescribeConditionalForwardersResult(args)
	assert(args, "You must provdide an argument table when creating DescribeConditionalForwardersResult")
	local t = { 
		["ConditionalForwarders"] = args["ConditionalForwarders"],
	}
	asserts.AssertDescribeConditionalForwardersResult(t)
	return t
end

keys.RemoveTagsFromResourceResult = { nil }

function asserts.AssertRemoveTagsFromResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceResult[k], "RemoveTagsFromResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsFromResourceResult structure as a key-value pair table
function M.RemoveTagsFromResourceResult(args)
	assert(args, "You must provdide an argument table when creating RemoveTagsFromResourceResult")
	local t = { 
	}
	asserts.AssertRemoveTagsFromResourceResult(t)
	return t
end

keys.ListSchemaExtensionsResult = { ["SchemaExtensionsInfo"] = true, ["NextToken"] = true, nil }

function asserts.AssertListSchemaExtensionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSchemaExtensionsResult to be of type 'table'")
	if struct["SchemaExtensionsInfo"] then asserts.AssertSchemaExtensionsInfo(struct["SchemaExtensionsInfo"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSchemaExtensionsResult[k], "ListSchemaExtensionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSchemaExtensionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaExtensionsInfo [SchemaExtensionsInfo] <p>Information about the schema extensions applied to the directory.</p>
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set of items.</p>
-- @return ListSchemaExtensionsResult structure as a key-value pair table
function M.ListSchemaExtensionsResult(args)
	assert(args, "You must provdide an argument table when creating ListSchemaExtensionsResult")
	local t = { 
		["SchemaExtensionsInfo"] = args["SchemaExtensionsInfo"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSchemaExtensionsResult(t)
	return t
end

keys.DirectoryLimitExceededException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertDirectoryLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryLimitExceededException[k], "DirectoryLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryLimitExceededException
-- <p>The maximum number of directories in the region has been reached. You can use the <a>GetDirectoryLimits</a> operation to determine your directory limits in the region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return DirectoryLimitExceededException structure as a key-value pair table
function M.DirectoryLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating DirectoryLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertDirectoryLimitExceededException(t)
	return t
end

keys.AddTagsToResourceRequest = { ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceRequest[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>Identifier (ID) for the directory to which to add the tag.</p>
-- * Tags [Tags] <p>The tags to be assigned to the directory.</p>
-- Required key: ResourceId
-- Required key: Tags
-- @return AddTagsToResourceRequest structure as a key-value pair table
function M.AddTagsToResourceRequest(args)
	assert(args, "You must provdide an argument table when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToResourceRequest(t)
	return t
end

keys.InvalidNextTokenException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The <i>NextToken</i> value is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provdide an argument table when creating InvalidNextTokenException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.RemoveIpRoutesRequest = { ["DirectoryId"] = true, ["CidrIps"] = true, nil }

function asserts.AssertRemoveIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["CidrIps"], "Expected key CidrIps to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["CidrIps"] then asserts.AssertCidrIps(struct["CidrIps"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveIpRoutesRequest[k], "RemoveIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveIpRoutesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory from which you want to remove the IP addresses.</p>
-- * CidrIps [CidrIps] <p>IP address blocks that you want to remove.</p>
-- Required key: DirectoryId
-- Required key: CidrIps
-- @return RemoveIpRoutesRequest structure as a key-value pair table
function M.RemoveIpRoutesRequest(args)
	assert(args, "You must provdide an argument table when creating RemoveIpRoutesRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["CidrIps"] = args["CidrIps"],
	}
	asserts.AssertRemoveIpRoutesRequest(t)
	return t
end

keys.DescribeConditionalForwardersRequest = { ["DirectoryId"] = true, ["RemoteDomainNames"] = true, nil }

function asserts.AssertDescribeConditionalForwardersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConditionalForwardersRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainNames"] then asserts.AssertRemoteDomainNames(struct["RemoteDomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConditionalForwardersRequest[k], "DescribeConditionalForwardersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConditionalForwardersRequest
-- <p>Describes a conditional forwarder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory ID for which to get the list of associated conditional forwarders.</p>
-- * RemoteDomainNames [RemoteDomainNames] <p>The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.</p>
-- Required key: DirectoryId
-- @return DescribeConditionalForwardersRequest structure as a key-value pair table
function M.DescribeConditionalForwardersRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeConditionalForwardersRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainNames"] = args["RemoteDomainNames"],
	}
	asserts.AssertDescribeConditionalForwardersRequest(t)
	return t
end

keys.DirectoryConnectSettingsDescription = { ["CustomerUserName"] = true, ["VpcId"] = true, ["SubnetIds"] = true, ["SecurityGroupId"] = true, ["AvailabilityZones"] = true, ["ConnectIps"] = true, nil }

function asserts.AssertDirectoryConnectSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryConnectSettingsDescription to be of type 'table'")
	if struct["CustomerUserName"] then asserts.AssertUserName(struct["CustomerUserName"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["SecurityGroupId"] then asserts.AssertSecurityGroupId(struct["SecurityGroupId"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["ConnectIps"] then asserts.AssertIpAddrs(struct["ConnectIps"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryConnectSettingsDescription[k], "DirectoryConnectSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryConnectSettingsDescription
-- <p>Contains information about an AD Connector directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomerUserName [UserName] <p>The username of the service account in the on-premises directory.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC that the AD Connector is in.</p>
-- * SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC that the AD connector is in.</p>
-- * SecurityGroupId [SecurityGroupId] <p>The security group identifier for the AD Connector directory.</p>
-- * AvailabilityZones [AvailabilityZones] <p>A list of the Availability Zones that the directory is in.</p>
-- * ConnectIps [IpAddrs] <p>The IP addresses of the AD Connector servers.</p>
-- @return DirectoryConnectSettingsDescription structure as a key-value pair table
function M.DirectoryConnectSettingsDescription(args)
	assert(args, "You must provdide an argument table when creating DirectoryConnectSettingsDescription")
	local t = { 
		["CustomerUserName"] = args["CustomerUserName"],
		["VpcId"] = args["VpcId"],
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupId"] = args["SecurityGroupId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["ConnectIps"] = args["ConnectIps"],
	}
	asserts.AssertDirectoryConnectSettingsDescription(t)
	return t
end

keys.ConnectDirectoryRequest = { ["Name"] = true, ["ConnectSettings"] = true, ["Description"] = true, ["ShortName"] = true, ["Password"] = true, ["Size"] = true, nil }

function asserts.AssertConnectDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	assert(struct["ConnectSettings"], "Expected key ConnectSettings to exist in table")
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["ConnectSettings"] then asserts.AssertDirectoryConnectSettings(struct["ConnectSettings"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then asserts.AssertConnectPassword(struct["Password"]) end
	if struct["Size"] then asserts.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectDirectoryRequest[k], "ConnectDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectDirectoryRequest
-- <p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DirectoryName] <p>The fully-qualified name of the on-premises directory, such as <code>corp.example.com</code>.</p>
-- * ConnectSettings [DirectoryConnectSettings] <p>A <a>DirectoryConnectSettings</a> object that contains additional information for the operation.</p>
-- * Description [Description] <p>A textual description for the directory.</p>
-- * ShortName [DirectoryShortName] <p>The NetBIOS name of the on-premises directory, such as <code>CORP</code>.</p>
-- * Password [ConnectPassword] <p>The password for the on-premises user account.</p>
-- * Size [DirectorySize] <p>The size of the directory.</p>
-- Required key: Name
-- Required key: Password
-- Required key: Size
-- Required key: ConnectSettings
-- @return ConnectDirectoryRequest structure as a key-value pair table
function M.ConnectDirectoryRequest(args)
	assert(args, "You must provdide an argument table when creating ConnectDirectoryRequest")
	local t = { 
		["Name"] = args["Name"],
		["ConnectSettings"] = args["ConnectSettings"],
		["Description"] = args["Description"],
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Size"] = args["Size"],
	}
	asserts.AssertConnectDirectoryRequest(t)
	return t
end

keys.VerifyTrustRequest = { ["TrustId"] = true, nil }

function asserts.AssertVerifyTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyTrustRequest to be of type 'table'")
	assert(struct["TrustId"], "Expected key TrustId to exist in table")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyTrustRequest[k], "VerifyTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyTrustRequest
-- <p>Initiates the verification of an existing trust relationship between a Microsoft AD in the AWS cloud and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The unique Trust ID of the trust relationship to verify.</p>
-- Required key: TrustId
-- @return VerifyTrustRequest structure as a key-value pair table
function M.VerifyTrustRequest(args)
	assert(args, "You must provdide an argument table when creating VerifyTrustRequest")
	local t = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertVerifyTrustRequest(t)
	return t
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
-- <p>Metadata assigned to a directory consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The optional value of the tag. The string value can be Unicode characters. The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- * Key [TagKey] <p>Required name of the tag. The string value can be Unicode characters and cannot be prefixed with "aws:". The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(t)
	return t
end

keys.AddIpRoutesResult = { nil }

function asserts.AssertAddIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddIpRoutesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddIpRoutesResult[k], "AddIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddIpRoutesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddIpRoutesResult structure as a key-value pair table
function M.AddIpRoutesResult(args)
	assert(args, "You must provdide an argument table when creating AddIpRoutesResult")
	local t = { 
	}
	asserts.AssertAddIpRoutesResult(t)
	return t
end

keys.CreateComputerRequest = { ["DirectoryId"] = true, ["ComputerName"] = true, ["Password"] = true, ["ComputerAttributes"] = true, ["OrganizationalUnitDistinguishedName"] = true, nil }

function asserts.AssertCreateComputerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputerRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["ComputerName"], "Expected key ComputerName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ComputerName"] then asserts.AssertComputerName(struct["ComputerName"]) end
	if struct["Password"] then asserts.AssertComputerPassword(struct["Password"]) end
	if struct["ComputerAttributes"] then asserts.AssertAttributes(struct["ComputerAttributes"]) end
	if struct["OrganizationalUnitDistinguishedName"] then asserts.AssertOrganizationalUnitDN(struct["OrganizationalUnitDistinguishedName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateComputerRequest[k], "CreateComputerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputerRequest
-- <p>Contains the inputs for the <a>CreateComputer</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory in which to create the computer account.</p>
-- * ComputerName [ComputerName] <p>The name of the computer account.</p>
-- * Password [ComputerPassword] <p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>
-- * ComputerAttributes [Attributes] <p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the computer account.</p>
-- * OrganizationalUnitDistinguishedName [OrganizationalUnitDN] <p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>
-- Required key: DirectoryId
-- Required key: ComputerName
-- Required key: Password
-- @return CreateComputerRequest structure as a key-value pair table
function M.CreateComputerRequest(args)
	assert(args, "You must provdide an argument table when creating CreateComputerRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["ComputerName"] = args["ComputerName"],
		["Password"] = args["Password"],
		["ComputerAttributes"] = args["ComputerAttributes"],
		["OrganizationalUnitDistinguishedName"] = args["OrganizationalUnitDistinguishedName"],
	}
	asserts.AssertCreateComputerRequest(t)
	return t
end

keys.EnableRadiusRequest = { ["DirectoryId"] = true, ["RadiusSettings"] = true, nil }

function asserts.AssertEnableRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RadiusSettings"], "Expected key RadiusSettings to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RadiusSettings"] then asserts.AssertRadiusSettings(struct["RadiusSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableRadiusRequest[k], "EnableRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRadiusRequest
-- <p>Contains the inputs for the <a>EnableRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to enable MFA.</p>
-- * RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>
-- Required key: DirectoryId
-- Required key: RadiusSettings
-- @return EnableRadiusRequest structure as a key-value pair table
function M.EnableRadiusRequest(args)
	assert(args, "You must provdide an argument table when creating EnableRadiusRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RadiusSettings"] = args["RadiusSettings"],
	}
	asserts.AssertEnableRadiusRequest(t)
	return t
end

keys.DirectoryVpcSettingsDescription = { ["SubnetIds"] = true, ["VpcId"] = true, ["AvailabilityZones"] = true, ["SecurityGroupId"] = true, nil }

function asserts.AssertDirectoryVpcSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryVpcSettingsDescription to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["SecurityGroupId"] then asserts.AssertSecurityGroupId(struct["SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryVpcSettingsDescription[k], "DirectoryVpcSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryVpcSettingsDescription
-- <p>Contains information about the directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>The identifiers of the subnets for the directory servers.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC that the directory is in.</p>
-- * AvailabilityZones [AvailabilityZones] <p>The list of Availability Zones that the directory is in.</p>
-- * SecurityGroupId [SecurityGroupId] <p>The security group identifier for the directory. If the directory was created before 8/1/2014, this is the identifier of the directory members security group that was created when the directory was created. If the directory was created after this date, this value is null.</p>
-- @return DirectoryVpcSettingsDescription structure as a key-value pair table
function M.DirectoryVpcSettingsDescription(args)
	assert(args, "You must provdide an argument table when creating DirectoryVpcSettingsDescription")
	local t = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["SecurityGroupId"] = args["SecurityGroupId"],
	}
	asserts.AssertDirectoryVpcSettingsDescription(t)
	return t
end

keys.ClientException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientException[k], "ClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientException
-- <p>A client exception has occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return ClientException structure as a key-value pair table
function M.ClientException(args)
	assert(args, "You must provdide an argument table when creating ClientException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertClientException(t)
	return t
end

keys.CreateTrustResult = { ["TrustId"] = true, nil }

function asserts.AssertCreateTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrustResult to be of type 'table'")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrustResult[k], "CreateTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrustResult
-- <p>The result of a CreateTrust request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>A unique identifier for the trust relationship that was created.</p>
-- @return CreateTrustResult structure as a key-value pair table
function M.CreateTrustResult(args)
	assert(args, "You must provdide an argument table when creating CreateTrustResult")
	local t = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertCreateTrustResult(t)
	return t
end

keys.SchemaExtensionInfo = { ["DirectoryId"] = true, ["Description"] = true, ["SchemaExtensionStatus"] = true, ["SchemaExtensionId"] = true, ["EndDateTime"] = true, ["StartDateTime"] = true, ["SchemaExtensionStatusReason"] = true, nil }

function asserts.AssertSchemaExtensionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaExtensionInfo to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["SchemaExtensionStatus"] then asserts.AssertSchemaExtensionStatus(struct["SchemaExtensionStatus"]) end
	if struct["SchemaExtensionId"] then asserts.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	if struct["EndDateTime"] then asserts.AssertEndDateTime(struct["EndDateTime"]) end
	if struct["StartDateTime"] then asserts.AssertStartDateTime(struct["StartDateTime"]) end
	if struct["SchemaExtensionStatusReason"] then asserts.AssertSchemaExtensionStatusReason(struct["SchemaExtensionStatusReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaExtensionInfo[k], "SchemaExtensionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaExtensionInfo
-- <p>Information about a schema extension.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory to which the schema extension is applied.</p>
-- * Description [Description] <p>A description of the schema extension.</p>
-- * SchemaExtensionStatus [SchemaExtensionStatus] <p>The current status of the schema extension.</p>
-- * SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension.</p>
-- * EndDateTime [EndDateTime] <p>The date and time that the schema extension was completed.</p>
-- * StartDateTime [StartDateTime] <p>The date and time that the schema extension started being applied to the directory.</p>
-- * SchemaExtensionStatusReason [SchemaExtensionStatusReason] <p>The reason for the <code>SchemaExtensionStatus</code>.</p>
-- @return SchemaExtensionInfo structure as a key-value pair table
function M.SchemaExtensionInfo(args)
	assert(args, "You must provdide an argument table when creating SchemaExtensionInfo")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["Description"] = args["Description"],
		["SchemaExtensionStatus"] = args["SchemaExtensionStatus"],
		["SchemaExtensionId"] = args["SchemaExtensionId"],
		["EndDateTime"] = args["EndDateTime"],
		["StartDateTime"] = args["StartDateTime"],
		["SchemaExtensionStatusReason"] = args["SchemaExtensionStatusReason"],
	}
	asserts.AssertSchemaExtensionInfo(t)
	return t
end

keys.RemoveIpRoutesResult = { nil }

function asserts.AssertRemoveIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveIpRoutesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveIpRoutesResult[k], "RemoveIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveIpRoutesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveIpRoutesResult structure as a key-value pair table
function M.RemoveIpRoutesResult(args)
	assert(args, "You must provdide an argument table when creating RemoveIpRoutesResult")
	local t = { 
	}
	asserts.AssertRemoveIpRoutesResult(t)
	return t
end

keys.ListIpRoutesResult = { ["IpRoutesInfo"] = true, ["NextToken"] = true, nil }

function asserts.AssertListIpRoutesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIpRoutesResult to be of type 'table'")
	if struct["IpRoutesInfo"] then asserts.AssertIpRoutesInfo(struct["IpRoutesInfo"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIpRoutesResult[k], "ListIpRoutesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIpRoutesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpRoutesInfo [IpRoutesInfo] <p>A list of <a>IpRoute</a>s.</p>
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>
-- @return ListIpRoutesResult structure as a key-value pair table
function M.ListIpRoutesResult(args)
	assert(args, "You must provdide an argument table when creating ListIpRoutesResult")
	local t = { 
		["IpRoutesInfo"] = args["IpRoutesInfo"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListIpRoutesResult(t)
	return t
end

keys.DeleteConditionalForwarderRequest = { ["DirectoryId"] = true, ["RemoteDomainName"] = true, nil }

function asserts.AssertDeleteConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConditionalForwarderRequest[k], "DeleteConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConditionalForwarderRequest
-- <p>Deletes a conditional forwarder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory ID for which you are deleting the conditional forwarder.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.</p>
-- Required key: DirectoryId
-- Required key: RemoteDomainName
-- @return DeleteConditionalForwarderRequest structure as a key-value pair table
function M.DeleteConditionalForwarderRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
	}
	asserts.AssertDeleteConditionalForwarderRequest(t)
	return t
end

keys.Computer = { ["ComputerName"] = true, ["ComputerAttributes"] = true, ["ComputerId"] = true, nil }

function asserts.AssertComputer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Computer to be of type 'table'")
	if struct["ComputerName"] then asserts.AssertComputerName(struct["ComputerName"]) end
	if struct["ComputerAttributes"] then asserts.AssertAttributes(struct["ComputerAttributes"]) end
	if struct["ComputerId"] then asserts.AssertSID(struct["ComputerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Computer[k], "Computer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Computer
-- <p>Contains information about a computer account in a directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComputerName [ComputerName] <p>The computer name.</p>
-- * ComputerAttributes [Attributes] <p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the computer account.</p>
-- * ComputerId [SID] <p>The identifier of the computer.</p>
-- @return Computer structure as a key-value pair table
function M.Computer(args)
	assert(args, "You must provdide an argument table when creating Computer")
	local t = { 
		["ComputerName"] = args["ComputerName"],
		["ComputerAttributes"] = args["ComputerAttributes"],
		["ComputerId"] = args["ComputerId"],
	}
	asserts.AssertComputer(t)
	return t
end

keys.DirectoryConnectSettings = { ["CustomerDnsIps"] = true, ["CustomerUserName"] = true, ["SubnetIds"] = true, ["VpcId"] = true, nil }

function asserts.AssertDirectoryConnectSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryConnectSettings to be of type 'table'")
	assert(struct["VpcId"], "Expected key VpcId to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	assert(struct["CustomerDnsIps"], "Expected key CustomerDnsIps to exist in table")
	assert(struct["CustomerUserName"], "Expected key CustomerUserName to exist in table")
	if struct["CustomerDnsIps"] then asserts.AssertDnsIpAddrs(struct["CustomerDnsIps"]) end
	if struct["CustomerUserName"] then asserts.AssertUserName(struct["CustomerUserName"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryConnectSettings[k], "DirectoryConnectSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryConnectSettings
-- <p>Contains information for the <a>ConnectDirectory</a> operation when an AD Connector directory is being created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomerDnsIps [DnsIpAddrs] <p>A list of one or more IP addresses of DNS servers or domain controllers in the on-premises directory.</p>
-- * CustomerUserName [UserName] <p>The username of an account in the on-premises directory that is used to connect to the directory. This account must have the following privileges:</p> <ul> <li> <p>Read users and groups</p> </li> <li> <p>Create computer objects</p> </li> <li> <p>Join computers to the domain</p> </li> </ul>
-- * SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC in which the AD Connector is created.</p>
-- Required key: VpcId
-- Required key: SubnetIds
-- Required key: CustomerDnsIps
-- Required key: CustomerUserName
-- @return DirectoryConnectSettings structure as a key-value pair table
function M.DirectoryConnectSettings(args)
	assert(args, "You must provdide an argument table when creating DirectoryConnectSettings")
	local t = { 
		["CustomerDnsIps"] = args["CustomerDnsIps"],
		["CustomerUserName"] = args["CustomerUserName"],
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
	}
	asserts.AssertDirectoryConnectSettings(t)
	return t
end

keys.ListSchemaExtensionsRequest = { ["DirectoryId"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListSchemaExtensionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSchemaExtensionsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSchemaExtensionsRequest[k], "ListSchemaExtensionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSchemaExtensionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory from which to retrieve the schema extension information.</p>
-- * NextToken [NextToken] <p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>
-- * Limit [Limit] <p>The maximum number of items to return.</p>
-- Required key: DirectoryId
-- @return ListSchemaExtensionsRequest structure as a key-value pair table
function M.ListSchemaExtensionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListSchemaExtensionsRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSchemaExtensionsRequest(t)
	return t
end

keys.DescribeEventTopicsResult = { ["EventTopics"] = true, nil }

function asserts.AssertDescribeEventTopicsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTopicsResult to be of type 'table'")
	if struct["EventTopics"] then asserts.AssertEventTopics(struct["EventTopics"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventTopicsResult[k], "DescribeEventTopicsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTopicsResult
-- <p>The result of a DescribeEventTopic request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventTopics [EventTopics] <p>A list of SNS topic names that receive status messages from the specified Directory ID.</p>
-- @return DescribeEventTopicsResult structure as a key-value pair table
function M.DescribeEventTopicsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeEventTopicsResult")
	local t = { 
		["EventTopics"] = args["EventTopics"],
	}
	asserts.AssertDescribeEventTopicsResult(t)
	return t
end

keys.DeregisterEventTopicRequest = { ["DirectoryId"] = true, ["TopicName"] = true, nil }

function asserts.AssertDeregisterEventTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEventTopicRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["TopicName"], "Expected key TopicName to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then asserts.AssertTopicName(struct["TopicName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterEventTopicRequest[k], "DeregisterEventTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEventTopicRequest
-- <p>Removes the specified directory as a publisher to the specified SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.</p>
-- * TopicName [TopicName] <p>The name of the SNS topic from which to remove the directory as a publisher.</p>
-- Required key: DirectoryId
-- Required key: TopicName
-- @return DeregisterEventTopicRequest structure as a key-value pair table
function M.DeregisterEventTopicRequest(args)
	assert(args, "You must provdide an argument table when creating DeregisterEventTopicRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
	}
	asserts.AssertDeregisterEventTopicRequest(t)
	return t
end

keys.VerifyTrustResult = { ["TrustId"] = true, nil }

function asserts.AssertVerifyTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyTrustResult to be of type 'table'")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyTrustResult[k], "VerifyTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyTrustResult
-- <p>Result of a VerifyTrust request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The unique Trust ID of the trust relationship that was verified.</p>
-- @return VerifyTrustResult structure as a key-value pair table
function M.VerifyTrustResult(args)
	assert(args, "You must provdide an argument table when creating VerifyTrustResult")
	local t = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertVerifyTrustResult(t)
	return t
end

keys.CreateConditionalForwarderResult = { nil }

function asserts.AssertCreateConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateConditionalForwarderResult[k], "CreateConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConditionalForwarderResult
-- <p>The result of a CreateConditinalForwarder request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateConditionalForwarderResult structure as a key-value pair table
function M.CreateConditionalForwarderResult(args)
	assert(args, "You must provdide an argument table when creating CreateConditionalForwarderResult")
	local t = { 
	}
	asserts.AssertCreateConditionalForwarderResult(t)
	return t
end

keys.DescribeDirectoriesResult = { ["DirectoryDescriptions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeDirectoriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoriesResult to be of type 'table'")
	if struct["DirectoryDescriptions"] then asserts.AssertDirectoryDescriptions(struct["DirectoryDescriptions"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectoriesResult[k], "DescribeDirectoriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoriesResult
-- <p>Contains the results of the <a>DescribeDirectories</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryDescriptions [DirectoryDescriptions] <p>The list of <a>DirectoryDescription</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next set of items.</p>
-- @return DescribeDirectoriesResult structure as a key-value pair table
function M.DescribeDirectoriesResult(args)
	assert(args, "You must provdide an argument table when creating DescribeDirectoriesResult")
	local t = { 
		["DirectoryDescriptions"] = args["DirectoryDescriptions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeDirectoriesResult(t)
	return t
end

keys.GetSnapshotLimitsRequest = { ["DirectoryId"] = true, nil }

function asserts.AssertGetSnapshotLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnapshotLimitsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSnapshotLimitsRequest[k], "GetSnapshotLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnapshotLimitsRequest
-- <p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Contains the identifier of the directory to obtain the limits for.</p>
-- Required key: DirectoryId
-- @return GetSnapshotLimitsRequest structure as a key-value pair table
function M.GetSnapshotLimitsRequest(args)
	assert(args, "You must provdide an argument table when creating GetSnapshotLimitsRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertGetSnapshotLimitsRequest(t)
	return t
end

keys.CreateMicrosoftADRequest = { ["ShortName"] = true, ["Password"] = true, ["Name"] = true, ["VpcSettings"] = true, ["Description"] = true, nil }

function asserts.AssertCreateMicrosoftADRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMicrosoftADRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["VpcSettings"], "Expected key VpcSettings to exist in table")
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettings(struct["VpcSettings"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMicrosoftADRequest[k], "CreateMicrosoftADRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMicrosoftADRequest
-- <p>Creates a Microsoft AD in the AWS cloud.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShortName [DirectoryShortName] <p>The NetBIOS name for your domain. A short identifier for your domain, such as <code>CORP</code>. If you don't specify a NetBIOS name, it will default to the first part of your directory DNS. For example, <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
-- * Password [Password] <p>The password for the default administrative user named <code>Admin</code>.</p>
-- * Name [DirectoryName] <p>The fully qualified domain name for the directory, such as <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need to be publicly resolvable.</p>
-- * VpcSettings [DirectoryVpcSettings] 
-- * Description [Description] <p>A textual description for the directory. This label will appear on the AWS console <code>Directory Details</code> page after the directory is created.</p>
-- Required key: Name
-- Required key: Password
-- Required key: VpcSettings
-- @return CreateMicrosoftADRequest structure as a key-value pair table
function M.CreateMicrosoftADRequest(args)
	assert(args, "You must provdide an argument table when creating CreateMicrosoftADRequest")
	local t = { 
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Name"] = args["Name"],
		["VpcSettings"] = args["VpcSettings"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateMicrosoftADRequest(t)
	return t
end

keys.DescribeEventTopicsRequest = { ["DirectoryId"] = true, ["TopicNames"] = true, nil }

function asserts.AssertDescribeEventTopicsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTopicsRequest to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicNames"] then asserts.AssertTopicNames(struct["TopicNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventTopicsRequest[k], "DescribeEventTopicsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTopicsRequest
-- <p>Describes event topics.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The Directory ID for which to get the list of associated SNS topics. If this member is null, associations for all Directory IDs are returned.</p>
-- * TopicNames [TopicNames] <p>A list of SNS topic names for which to obtain the information. If this member is null, all associations for the specified Directory ID are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
-- @return DescribeEventTopicsRequest structure as a key-value pair table
function M.DescribeEventTopicsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeEventTopicsRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicNames"] = args["TopicNames"],
	}
	asserts.AssertDescribeEventTopicsRequest(t)
	return t
end

keys.DescribeTrustsRequest = { ["Limit"] = true, ["DirectoryId"] = true, ["NextToken"] = true, ["TrustIds"] = true, nil }

function asserts.AssertDescribeTrustsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustsRequest to be of type 'table'")
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TrustIds"] then asserts.AssertTrustIds(struct["TrustIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustsRequest[k], "DescribeTrustsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustsRequest
-- <p>Describes the trust relationships for a particular Microsoft AD in the AWS cloud. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [Limit] <p>The maximum number of objects to return.</p>
-- * DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory that is a part of the requested trust relationship.</p>
-- * NextToken [NextToken] <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
-- * TrustIds [TrustIds] <p>A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
-- @return DescribeTrustsRequest structure as a key-value pair table
function M.DescribeTrustsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeTrustsRequest")
	local t = { 
		["Limit"] = args["Limit"],
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["TrustIds"] = args["TrustIds"],
	}
	asserts.AssertDescribeTrustsRequest(t)
	return t
end

keys.ListTagsForResourceRequest = { ["ResourceId"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>Identifier (ID) of the directory for which you want to retrieve tags.</p>
-- * NextToken [NextToken] <p>Reserved for future use.</p>
-- * Limit [Limit] <p>Reserved for future use.</p>
-- Required key: ResourceId
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.UpdateRadiusResult = { nil }

function asserts.AssertUpdateRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateRadiusResult[k], "UpdateRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRadiusResult
-- <p>Contains the results of the <a>UpdateRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateRadiusResult structure as a key-value pair table
function M.UpdateRadiusResult(args)
	assert(args, "You must provdide an argument table when creating UpdateRadiusResult")
	local t = { 
	}
	asserts.AssertUpdateRadiusResult(t)
	return t
end

keys.DisableRadiusRequest = { ["DirectoryId"] = true, nil }

function asserts.AssertDisableRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableRadiusRequest[k], "DisableRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRadiusRequest
-- <p>Contains the inputs for the <a>DisableRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to disable MFA.</p>
-- Required key: DirectoryId
-- @return DisableRadiusRequest structure as a key-value pair table
function M.DisableRadiusRequest(args)
	assert(args, "You must provdide an argument table when creating DisableRadiusRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDisableRadiusRequest(t)
	return t
end

keys.AuthenticationFailedException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertAuthenticationFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticationFailedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthenticationFailedException[k], "AuthenticationFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticationFailedException
-- <p>An authentication error occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] <p>The textual message for the exception.</p>
-- * RequestId [RequestId] <p>The identifier of the request that caused the exception.</p>
-- @return AuthenticationFailedException structure as a key-value pair table
function M.AuthenticationFailedException(args)
	assert(args, "You must provdide an argument table when creating AuthenticationFailedException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertAuthenticationFailedException(t)
	return t
end

keys.ServiceException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceException[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>An exception has occurred in AWS Directory Service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return ServiceException structure as a key-value pair table
function M.ServiceException(args)
	assert(args, "You must provdide an argument table when creating ServiceException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertServiceException(t)
	return t
end

keys.CreateAliasRequest = { ["DirectoryId"] = true, ["Alias"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["Alias"], "Expected key Alias to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Alias"] then asserts.AssertAliasName(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
-- <p>Contains the inputs for the <a>CreateAlias</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to create the alias.</p>
-- * Alias [AliasName] <p>The requested alias.</p> <p>The alias must be unique amongst all aliases in AWS. This operation throws an <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>
-- Required key: DirectoryId
-- Required key: Alias
-- @return CreateAliasRequest structure as a key-value pair table
function M.CreateAliasRequest(args)
	assert(args, "You must provdide an argument table when creating CreateAliasRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["Alias"] = args["Alias"],
	}
	asserts.AssertCreateAliasRequest(t)
	return t
end

keys.ConditionalForwarder = { ["RemoteDomainName"] = true, ["DnsIpAddrs"] = true, ["ReplicationScope"] = true, nil }

function asserts.AssertConditionalForwarder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConditionalForwarder to be of type 'table'")
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["ReplicationScope"] then asserts.AssertReplicationScope(struct["ReplicationScope"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConditionalForwarder[k], "ConditionalForwarder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConditionalForwarder
-- <p>Points to a remote domain with which you are setting up a trust relationship. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domains pointed to by the conditional forwarder.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the IP address of the DNS server that your conditional forwarder points to.</p>
-- * ReplicationScope [ReplicationScope] <p>The replication scope of the conditional forwarder. The only allowed value is <code>Domain</code>, which will replicate the conditional forwarder to all of the domain controllers for your AWS directory.</p>
-- @return ConditionalForwarder structure as a key-value pair table
function M.ConditionalForwarder(args)
	assert(args, "You must provdide an argument table when creating ConditionalForwarder")
	local t = { 
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
		["ReplicationScope"] = args["ReplicationScope"],
	}
	asserts.AssertConditionalForwarder(t)
	return t
end

keys.AddIpRoutesRequest = { ["DirectoryId"] = true, ["UpdateSecurityGroupForDirectoryControllers"] = true, ["IpRoutes"] = true, nil }

function asserts.AssertAddIpRoutesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddIpRoutesRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["IpRoutes"], "Expected key IpRoutes to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["UpdateSecurityGroupForDirectoryControllers"] then asserts.AssertUpdateSecurityGroupForDirectoryControllers(struct["UpdateSecurityGroupForDirectoryControllers"]) end
	if struct["IpRoutes"] then asserts.AssertIpRoutes(struct["IpRoutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddIpRoutesRequest[k], "AddIpRoutesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddIpRoutesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory to which to add the address block.</p>
-- * UpdateSecurityGroupForDirectoryControllers [UpdateSecurityGroupForDirectoryControllers] <p>If set to true, updates the inbound and outbound rules of the security group that has the description: "AWS created security group for <i>directory ID</i> directory controllers." Following are the new rules: </p> <p>Inbound:</p> <ul> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0</p> </li> </ul> <p/> <p>Outbound:</p> <ul> <li> <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p> </li> </ul> <p>These security rules impact an internal network interface that is not exposed publicly.</p>
-- * IpRoutes [IpRoutes] <p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP address block of the DNS server used for your on-premises domain.</p>
-- Required key: DirectoryId
-- Required key: IpRoutes
-- @return AddIpRoutesRequest structure as a key-value pair table
function M.AddIpRoutesRequest(args)
	assert(args, "You must provdide an argument table when creating AddIpRoutesRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["UpdateSecurityGroupForDirectoryControllers"] = args["UpdateSecurityGroupForDirectoryControllers"],
		["IpRoutes"] = args["IpRoutes"],
	}
	asserts.AssertAddIpRoutesRequest(t)
	return t
end

keys.RegisterEventTopicResult = { nil }

function asserts.AssertRegisterEventTopicResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEventTopicResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RegisterEventTopicResult[k], "RegisterEventTopicResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEventTopicResult
-- <p>The result of a RegisterEventTopic request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RegisterEventTopicResult structure as a key-value pair table
function M.RegisterEventTopicResult(args)
	assert(args, "You must provdide an argument table when creating RegisterEventTopicResult")
	local t = { 
	}
	asserts.AssertRegisterEventTopicResult(t)
	return t
end

keys.RemoveTagsFromResourceRequest = { ["ResourceId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceRequest[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>Identifier (ID) of the directory from which to remove the tag.</p>
-- * TagKeys [TagKeys] <p>The tag key (name) of the tag to be removed.</p>
-- Required key: ResourceId
-- Required key: TagKeys
-- @return RemoveTagsFromResourceRequest structure as a key-value pair table
function M.RemoveTagsFromResourceRequest(args)
	assert(args, "You must provdide an argument table when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromResourceRequest(t)
	return t
end

keys.CreateTrustRequest = { ["TrustPassword"] = true, ["DirectoryId"] = true, ["RemoteDomainName"] = true, ["ConditionalForwarderIpAddrs"] = true, ["TrustType"] = true, ["TrustDirection"] = true, nil }

function asserts.AssertCreateTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrustRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["TrustPassword"], "Expected key TrustPassword to exist in table")
	assert(struct["TrustDirection"], "Expected key TrustDirection to exist in table")
	if struct["TrustPassword"] then asserts.AssertTrustPassword(struct["TrustPassword"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["ConditionalForwarderIpAddrs"] then asserts.AssertDnsIpAddrs(struct["ConditionalForwarderIpAddrs"]) end
	if struct["TrustType"] then asserts.AssertTrustType(struct["TrustType"]) end
	if struct["TrustDirection"] then asserts.AssertTrustDirection(struct["TrustDirection"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrustRequest[k], "CreateTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrustRequest
-- <p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your Microsoft AD in the AWS cloud, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between a Microsoft AD in the AWS cloud and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustPassword [TrustPassword] <p>The trust password. The must be the same password that was used when creating the trust relationship on the external domain.</p>
-- * DirectoryId [DirectoryId] <p>The Directory ID of the Microsoft AD in the AWS cloud for which to establish the trust relationship.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.</p>
-- * ConditionalForwarderIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
-- * TrustType [TrustType] <p>The trust relationship type.</p>
-- * TrustDirection [TrustDirection] <p>The direction of the trust relationship.</p>
-- Required key: DirectoryId
-- Required key: RemoteDomainName
-- Required key: TrustPassword
-- Required key: TrustDirection
-- @return CreateTrustRequest structure as a key-value pair table
function M.CreateTrustRequest(args)
	assert(args, "You must provdide an argument table when creating CreateTrustRequest")
	local t = { 
		["TrustPassword"] = args["TrustPassword"],
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["ConditionalForwarderIpAddrs"] = args["ConditionalForwarderIpAddrs"],
		["TrustType"] = args["TrustType"],
		["TrustDirection"] = args["TrustDirection"],
	}
	asserts.AssertCreateTrustRequest(t)
	return t
end

keys.CancelSchemaExtensionRequest = { ["DirectoryId"] = true, ["SchemaExtensionId"] = true, nil }

function asserts.AssertCancelSchemaExtensionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelSchemaExtensionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["SchemaExtensionId"], "Expected key SchemaExtensionId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["SchemaExtensionId"] then asserts.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelSchemaExtensionRequest[k], "CancelSchemaExtensionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelSchemaExtensionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory whose schema extension will be canceled.</p>
-- * SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension that will be canceled.</p>
-- Required key: DirectoryId
-- Required key: SchemaExtensionId
-- @return CancelSchemaExtensionRequest structure as a key-value pair table
function M.CancelSchemaExtensionRequest(args)
	assert(args, "You must provdide an argument table when creating CancelSchemaExtensionRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["SchemaExtensionId"] = args["SchemaExtensionId"],
	}
	asserts.AssertCancelSchemaExtensionRequest(t)
	return t
end

keys.UpdateRadiusRequest = { ["DirectoryId"] = true, ["RadiusSettings"] = true, nil }

function asserts.AssertUpdateRadiusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRadiusRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RadiusSettings"], "Expected key RadiusSettings to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RadiusSettings"] then asserts.AssertRadiusSettings(struct["RadiusSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRadiusRequest[k], "UpdateRadiusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRadiusRequest
-- <p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to update the RADIUS server information.</p>
-- * RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>
-- Required key: DirectoryId
-- Required key: RadiusSettings
-- @return UpdateRadiusRequest structure as a key-value pair table
function M.UpdateRadiusRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateRadiusRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RadiusSettings"] = args["RadiusSettings"],
	}
	asserts.AssertUpdateRadiusRequest(t)
	return t
end

keys.Snapshot = { ["Status"] = true, ["DirectoryId"] = true, ["Name"] = true, ["StartTime"] = true, ["SnapshotId"] = true, ["Type"] = true, nil }

function asserts.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["Status"] then asserts.AssertSnapshotStatus(struct["Status"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Name"] then asserts.AssertSnapshotName(struct["Name"]) end
	if struct["StartTime"] then asserts.AssertStartTime(struct["StartTime"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["Type"] then asserts.AssertSnapshotType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Snapshot[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- <p>Describes a directory snapshot.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [SnapshotStatus] <p>The snapshot status.</p>
-- * DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- * Name [SnapshotName] <p>The descriptive name of the snapshot.</p>
-- * StartTime [StartTime] <p>The date and time that the snapshot was taken.</p>
-- * SnapshotId [SnapshotId] <p>The snapshot identifier.</p>
-- * Type [SnapshotType] <p>The snapshot type.</p>
-- @return Snapshot structure as a key-value pair table
function M.Snapshot(args)
	assert(args, "You must provdide an argument table when creating Snapshot")
	local t = { 
		["Status"] = args["Status"],
		["DirectoryId"] = args["DirectoryId"],
		["Name"] = args["Name"],
		["StartTime"] = args["StartTime"],
		["SnapshotId"] = args["SnapshotId"],
		["Type"] = args["Type"],
	}
	asserts.AssertSnapshot(t)
	return t
end

keys.CreateMicrosoftADResult = { ["DirectoryId"] = true, nil }

function asserts.AssertCreateMicrosoftADResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMicrosoftADResult to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMicrosoftADResult[k], "CreateMicrosoftADResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMicrosoftADResult
-- <p>Result of a CreateMicrosoftAD request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory that was created.</p>
-- @return CreateMicrosoftADResult structure as a key-value pair table
function M.CreateMicrosoftADResult(args)
	assert(args, "You must provdide an argument table when creating CreateMicrosoftADResult")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertCreateMicrosoftADResult(t)
	return t
end

keys.EnableSsoResult = { nil }

function asserts.AssertEnableSsoResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSsoResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableSsoResult[k], "EnableSsoResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSsoResult
-- <p>Contains the results of the <a>EnableSso</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableSsoResult structure as a key-value pair table
function M.EnableSsoResult(args)
	assert(args, "You must provdide an argument table when creating EnableSsoResult")
	local t = { 
	}
	asserts.AssertEnableSsoResult(t)
	return t
end

keys.CreateDirectoryRequest = { ["Name"] = true, ["VpcSettings"] = true, ["Description"] = true, ["ShortName"] = true, ["Password"] = true, ["Size"] = true, nil }

function asserts.AssertCreateDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettings(struct["VpcSettings"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["Size"] then asserts.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryRequest[k], "CreateDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryRequest
-- <p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DirectoryName] <p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>
-- * VpcSettings [DirectoryVpcSettings] <p>A <a>DirectoryVpcSettings</a> object that contains additional information for the operation.</p>
-- * Description [Description] <p>A textual description for the directory.</p>
-- * ShortName [DirectoryShortName] <p>The short name of the directory, such as <code>CORP</code>.</p>
-- * Password [Password] <p>The password for the directory administrator. The directory creation process creates a directory administrator account with the username <code>Administrator</code> and this password.</p>
-- * Size [DirectorySize] <p>The size of the directory.</p>
-- Required key: Name
-- Required key: Password
-- Required key: Size
-- @return CreateDirectoryRequest structure as a key-value pair table
function M.CreateDirectoryRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDirectoryRequest")
	local t = { 
		["Name"] = args["Name"],
		["VpcSettings"] = args["VpcSettings"],
		["Description"] = args["Description"],
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Size"] = args["Size"],
	}
	asserts.AssertCreateDirectoryRequest(t)
	return t
end

keys.RestoreFromSnapshotRequest = { ["SnapshotId"] = true, nil }

function asserts.AssertRestoreFromSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromSnapshotRequest to be of type 'table'")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreFromSnapshotRequest[k], "RestoreFromSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromSnapshotRequest
-- <p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] <p>The identifier of the snapshot to restore from.</p>
-- Required key: SnapshotId
-- @return RestoreFromSnapshotRequest structure as a key-value pair table
function M.RestoreFromSnapshotRequest(args)
	assert(args, "You must provdide an argument table when creating RestoreFromSnapshotRequest")
	local t = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertRestoreFromSnapshotRequest(t)
	return t
end

keys.Attribute = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	if struct["Name"] then asserts.AssertAttributeName(struct["Name"]) end
	if struct["Value"] then asserts.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Attribute[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>Represents a named directory attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [AttributeName] <p>The name of the attribute.</p>
-- * Value [AttributeValue] <p>The value of the attribute.</p>
-- @return Attribute structure as a key-value pair table
function M.Attribute(args)
	assert(args, "You must provdide an argument table when creating Attribute")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertAttribute(t)
	return t
end

keys.DescribeSnapshotsResult = { ["NextToken"] = true, ["Snapshots"] = true, nil }

function asserts.AssertDescribeSnapshotsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Snapshots"] then asserts.AssertSnapshots(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotsResult[k], "DescribeSnapshotsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsResult
-- <p>Contains the results of the <a>DescribeSnapshots</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of a subsequent call to <a>DescribeSnapshots</a>.</p>
-- * Snapshots [Snapshots] <p>The list of <a>Snapshot</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
-- @return DescribeSnapshotsResult structure as a key-value pair table
function M.DescribeSnapshotsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeSnapshotsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Snapshots"] = args["Snapshots"],
	}
	asserts.AssertDescribeSnapshotsResult(t)
	return t
end

keys.GetDirectoryLimitsRequest = { nil }

function asserts.AssertGetDirectoryLimitsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryLimitsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetDirectoryLimitsRequest[k], "GetDirectoryLimitsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryLimitsRequest
-- <p>Contains the inputs for the <a>GetDirectoryLimits</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetDirectoryLimitsRequest structure as a key-value pair table
function M.GetDirectoryLimitsRequest(args)
	assert(args, "You must provdide an argument table when creating GetDirectoryLimitsRequest")
	local t = { 
	}
	asserts.AssertGetDirectoryLimitsRequest(t)
	return t
end

keys.CreateSnapshotRequest = { ["DirectoryId"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSnapshotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Name"] then asserts.AssertSnapshotName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotRequest[k], "CreateSnapshotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotRequest
-- <p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory of which to take a snapshot.</p>
-- * Name [SnapshotName] <p>The descriptive name to apply to the snapshot.</p>
-- Required key: DirectoryId
-- @return CreateSnapshotRequest structure as a key-value pair table
function M.CreateSnapshotRequest(args)
	assert(args, "You must provdide an argument table when creating CreateSnapshotRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSnapshotRequest(t)
	return t
end

keys.DescribeDirectoriesRequest = { ["DirectoryIds"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoriesRequest to be of type 'table'")
	if struct["DirectoryIds"] then asserts.AssertDirectoryIds(struct["DirectoryIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectoriesRequest[k], "DescribeDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoriesRequest
-- <p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryIds [DirectoryIds] <p>A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
-- * NextToken [NextToken] <p>The <i>DescribeDirectoriesResult.NextToken</i> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
-- * Limit [Limit] <p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
-- @return DescribeDirectoriesRequest structure as a key-value pair table
function M.DescribeDirectoriesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeDirectoriesRequest")
	local t = { 
		["DirectoryIds"] = args["DirectoryIds"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeDirectoriesRequest(t)
	return t
end

keys.CreateSnapshotResult = { ["SnapshotId"] = true, nil }

function asserts.AssertCreateSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotResult to be of type 'table'")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotResult[k], "CreateSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotResult
-- <p>Contains the results of the <a>CreateSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] <p>The identifier of the snapshot that was created.</p>
-- @return CreateSnapshotResult structure as a key-value pair table
function M.CreateSnapshotResult(args)
	assert(args, "You must provdide an argument table when creating CreateSnapshotResult")
	local t = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertCreateSnapshotResult(t)
	return t
end

keys.CancelSchemaExtensionResult = { nil }

function asserts.AssertCancelSchemaExtensionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelSchemaExtensionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelSchemaExtensionResult[k], "CancelSchemaExtensionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelSchemaExtensionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelSchemaExtensionResult structure as a key-value pair table
function M.CancelSchemaExtensionResult(args)
	assert(args, "You must provdide an argument table when creating CancelSchemaExtensionResult")
	local t = { 
	}
	asserts.AssertCancelSchemaExtensionResult(t)
	return t
end

keys.UpdateConditionalForwarderRequest = { ["DirectoryId"] = true, ["RemoteDomainName"] = true, ["DnsIpAddrs"] = true, nil }

function asserts.AssertUpdateConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["DnsIpAddrs"], "Expected key DnsIpAddrs to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConditionalForwarderRequest[k], "UpdateConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConditionalForwarderRequest
-- <p>Updates a conditional forwarder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory ID of the AWS directory for which to update the conditional forwarder.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>The updated IP addresses of the remote DNS server associated with the conditional forwarder.</p>
-- Required key: DirectoryId
-- Required key: RemoteDomainName
-- Required key: DnsIpAddrs
-- @return UpdateConditionalForwarderRequest structure as a key-value pair table
function M.UpdateConditionalForwarderRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
	}
	asserts.AssertUpdateConditionalForwarderRequest(t)
	return t
end

keys.CreateConditionalForwarderRequest = { ["DirectoryId"] = true, ["RemoteDomainName"] = true, ["DnsIpAddrs"] = true, nil }

function asserts.AssertCreateConditionalForwarderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConditionalForwarderRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["RemoteDomainName"], "Expected key RemoteDomainName to exist in table")
	assert(struct["DnsIpAddrs"], "Expected key DnsIpAddrs to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConditionalForwarderRequest[k], "CreateConditionalForwarderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConditionalForwarderRequest
-- <p>Initiates the creation of a conditional forwarder for your AWS Directory Service for Microsoft Active Directory. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory ID of the AWS directory for which you are creating the conditional forwarder.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
-- Required key: DirectoryId
-- Required key: RemoteDomainName
-- Required key: DnsIpAddrs
-- @return CreateConditionalForwarderRequest structure as a key-value pair table
function M.CreateConditionalForwarderRequest(args)
	assert(args, "You must provdide an argument table when creating CreateConditionalForwarderRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
	}
	asserts.AssertCreateConditionalForwarderRequest(t)
	return t
end

keys.AddTagsToResourceResult = { nil }

function asserts.AssertAddTagsToResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceResult[k], "AddTagsToResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsToResourceResult structure as a key-value pair table
function M.AddTagsToResourceResult(args)
	assert(args, "You must provdide an argument table when creating AddTagsToResourceResult")
	local t = { 
	}
	asserts.AssertAddTagsToResourceResult(t)
	return t
end

keys.DeregisterEventTopicResult = { nil }

function asserts.AssertDeregisterEventTopicResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEventTopicResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterEventTopicResult[k], "DeregisterEventTopicResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEventTopicResult
-- <p>The result of a DeregisterEventTopic request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterEventTopicResult structure as a key-value pair table
function M.DeregisterEventTopicResult(args)
	assert(args, "You must provdide an argument table when creating DeregisterEventTopicResult")
	local t = { 
	}
	asserts.AssertDeregisterEventTopicResult(t)
	return t
end

keys.DeleteConditionalForwarderResult = { nil }

function asserts.AssertDeleteConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConditionalForwarderResult[k], "DeleteConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConditionalForwarderResult
-- <p>The result of a DeleteConditionalForwarder request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConditionalForwarderResult structure as a key-value pair table
function M.DeleteConditionalForwarderResult(args)
	assert(args, "You must provdide an argument table when creating DeleteConditionalForwarderResult")
	local t = { 
	}
	asserts.AssertDeleteConditionalForwarderResult(t)
	return t
end

keys.ConnectDirectoryResult = { ["DirectoryId"] = true, nil }

function asserts.AssertConnectDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectDirectoryResult to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectDirectoryResult[k], "ConnectDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectDirectoryResult
-- <p>Contains the results of the <a>ConnectDirectory</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the new directory.</p>
-- @return ConnectDirectoryResult structure as a key-value pair table
function M.ConnectDirectoryResult(args)
	assert(args, "You must provdide an argument table when creating ConnectDirectoryResult")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertConnectDirectoryResult(t)
	return t
end

keys.StartSchemaExtensionResult = { ["SchemaExtensionId"] = true, nil }

function asserts.AssertStartSchemaExtensionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaExtensionResult to be of type 'table'")
	if struct["SchemaExtensionId"] then asserts.AssertSchemaExtensionId(struct["SchemaExtensionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSchemaExtensionResult[k], "StartSchemaExtensionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaExtensionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaExtensionId [SchemaExtensionId] <p>The identifier of the schema extension that will be applied.</p>
-- @return StartSchemaExtensionResult structure as a key-value pair table
function M.StartSchemaExtensionResult(args)
	assert(args, "You must provdide an argument table when creating StartSchemaExtensionResult")
	local t = { 
		["SchemaExtensionId"] = args["SchemaExtensionId"],
	}
	asserts.AssertStartSchemaExtensionResult(t)
	return t
end

keys.EntityDoesNotExistException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertEntityDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityDoesNotExistException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityDoesNotExistException[k], "EntityDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityDoesNotExistException
-- <p>The specified entity could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return EntityDoesNotExistException structure as a key-value pair table
function M.EntityDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating EntityDoesNotExistException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertEntityDoesNotExistException(t)
	return t
end

keys.RadiusSettings = { ["DisplayLabel"] = true, ["UseSameUsername"] = true, ["RadiusTimeout"] = true, ["AuthenticationProtocol"] = true, ["RadiusPort"] = true, ["RadiusRetries"] = true, ["RadiusServers"] = true, ["SharedSecret"] = true, nil }

function asserts.AssertRadiusSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RadiusSettings to be of type 'table'")
	if struct["DisplayLabel"] then asserts.AssertRadiusDisplayLabel(struct["DisplayLabel"]) end
	if struct["UseSameUsername"] then asserts.AssertUseSameUsername(struct["UseSameUsername"]) end
	if struct["RadiusTimeout"] then asserts.AssertRadiusTimeout(struct["RadiusTimeout"]) end
	if struct["AuthenticationProtocol"] then asserts.AssertRadiusAuthenticationProtocol(struct["AuthenticationProtocol"]) end
	if struct["RadiusPort"] then asserts.AssertPortNumber(struct["RadiusPort"]) end
	if struct["RadiusRetries"] then asserts.AssertRadiusRetries(struct["RadiusRetries"]) end
	if struct["RadiusServers"] then asserts.AssertServers(struct["RadiusServers"]) end
	if struct["SharedSecret"] then asserts.AssertRadiusSharedSecret(struct["SharedSecret"]) end
	for k,_ in pairs(struct) do
		assert(keys.RadiusSettings[k], "RadiusSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RadiusSettings
-- <p>Contains information about a Remote Authentication Dial In User Service (RADIUS) server.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayLabel [RadiusDisplayLabel] <p>Not currently used.</p>
-- * UseSameUsername [UseSameUsername] <p>Not currently used.</p>
-- * RadiusTimeout [RadiusTimeout] <p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>
-- * AuthenticationProtocol [RadiusAuthenticationProtocol] <p>The protocol specified for your RADIUS endpoints.</p>
-- * RadiusPort [PortNumber] <p>The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.</p>
-- * RadiusRetries [RadiusRetries] <p>The maximum number of times that communication with the RADIUS server is attempted.</p>
-- * RadiusServers [Servers] <p>An array of strings that contains the IP addresses of the RADIUS server endpoints, or the IP addresses of your RADIUS server load balancer.</p>
-- * SharedSecret [RadiusSharedSecret] <p>Not currently used.</p>
-- @return RadiusSettings structure as a key-value pair table
function M.RadiusSettings(args)
	assert(args, "You must provdide an argument table when creating RadiusSettings")
	local t = { 
		["DisplayLabel"] = args["DisplayLabel"],
		["UseSameUsername"] = args["UseSameUsername"],
		["RadiusTimeout"] = args["RadiusTimeout"],
		["AuthenticationProtocol"] = args["AuthenticationProtocol"],
		["RadiusPort"] = args["RadiusPort"],
		["RadiusRetries"] = args["RadiusRetries"],
		["RadiusServers"] = args["RadiusServers"],
		["SharedSecret"] = args["SharedSecret"],
	}
	asserts.AssertRadiusSettings(t)
	return t
end

keys.CreateComputerResult = { ["Computer"] = true, nil }

function asserts.AssertCreateComputerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputerResult to be of type 'table'")
	if struct["Computer"] then asserts.AssertComputer(struct["Computer"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateComputerResult[k], "CreateComputerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputerResult
-- <p>Contains the results for the <a>CreateComputer</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Computer [Computer] <p>A <a>Computer</a> object that represents the computer account.</p>
-- @return CreateComputerResult structure as a key-value pair table
function M.CreateComputerResult(args)
	assert(args, "You must provdide an argument table when creating CreateComputerResult")
	local t = { 
		["Computer"] = args["Computer"],
	}
	asserts.AssertCreateComputerResult(t)
	return t
end

keys.EnableSsoRequest = { ["UserName"] = true, ["DirectoryId"] = true, ["Password"] = true, nil }

function asserts.AssertEnableSsoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSsoRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Password"] then asserts.AssertConnectPassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableSsoRequest[k], "EnableSsoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSsoRequest
-- <p>Contains the inputs for the <a>EnableSso</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [UserName] <p>The username of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. This account must have privileges to add a service principal name.</p> <p>If the AD Connector service account does not have privileges to add a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which to enable single-sign on.</p>
-- * Password [ConnectPassword] <p>The password of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>
-- Required key: DirectoryId
-- @return EnableSsoRequest structure as a key-value pair table
function M.EnableSsoRequest(args)
	assert(args, "You must provdide an argument table when creating EnableSsoRequest")
	local t = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["Password"] = args["Password"],
	}
	asserts.AssertEnableSsoRequest(t)
	return t
end

keys.EnableRadiusResult = { nil }

function asserts.AssertEnableRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableRadiusResult[k], "EnableRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRadiusResult
-- <p>Contains the results of the <a>EnableRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableRadiusResult structure as a key-value pair table
function M.EnableRadiusResult(args)
	assert(args, "You must provdide an argument table when creating EnableRadiusResult")
	local t = { 
	}
	asserts.AssertEnableRadiusResult(t)
	return t
end

keys.EventTopic = { ["CreatedDateTime"] = true, ["DirectoryId"] = true, ["TopicName"] = true, ["TopicArn"] = true, ["Status"] = true, nil }

function asserts.AssertEventTopic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTopic to be of type 'table'")
	if struct["CreatedDateTime"] then asserts.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["TopicName"] then asserts.AssertTopicName(struct["TopicName"]) end
	if struct["TopicArn"] then asserts.AssertTopicArn(struct["TopicArn"]) end
	if struct["Status"] then asserts.AssertTopicStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventTopic[k], "EventTopic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTopic
-- <p>Information about SNS topic and AWS Directory Service directory associations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedDateTime [CreatedDateTime] <p>The date and time of when you associated your directory with the SNS topic.</p>
-- * DirectoryId [DirectoryId] <p>The Directory ID of an AWS Directory Service directory that will publish status messages to an SNS topic.</p>
-- * TopicName [TopicName] <p>The name of an AWS SNS topic the receives status messages from the directory.</p>
-- * TopicArn [TopicArn] <p>The SNS topic ARN (Amazon Resource Name).</p>
-- * Status [TopicStatus] <p>The topic registration status.</p>
-- @return EventTopic structure as a key-value pair table
function M.EventTopic(args)
	assert(args, "You must provdide an argument table when creating EventTopic")
	local t = { 
		["CreatedDateTime"] = args["CreatedDateTime"],
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
		["TopicArn"] = args["TopicArn"],
		["Status"] = args["Status"],
	}
	asserts.AssertEventTopic(t)
	return t
end

keys.DeleteDirectoryRequest = { ["DirectoryId"] = true, nil }

function asserts.AssertDeleteDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryRequest[k], "DeleteDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryRequest
-- <p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the directory to delete.</p>
-- Required key: DirectoryId
-- @return DeleteDirectoryRequest structure as a key-value pair table
function M.DeleteDirectoryRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDirectoryRequest")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDeleteDirectoryRequest(t)
	return t
end

keys.IpRouteInfo = { ["DirectoryId"] = true, ["IpRouteStatusReason"] = true, ["Description"] = true, ["AddedDateTime"] = true, ["CidrIp"] = true, ["IpRouteStatusMsg"] = true, nil }

function asserts.AssertIpRouteInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRouteInfo to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["IpRouteStatusReason"] then asserts.AssertIpRouteStatusReason(struct["IpRouteStatusReason"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["AddedDateTime"] then asserts.AssertAddedDateTime(struct["AddedDateTime"]) end
	if struct["CidrIp"] then asserts.AssertCidrIp(struct["CidrIp"]) end
	if struct["IpRouteStatusMsg"] then asserts.AssertIpRouteStatusMsg(struct["IpRouteStatusMsg"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpRouteInfo[k], "IpRouteInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRouteInfo
-- <p>Information about one or more IP address blocks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory associated with the IP addresses.</p>
-- * IpRouteStatusReason [IpRouteStatusReason] <p>The reason for the IpRouteStatusMsg.</p>
-- * Description [Description] <p>Description of the <a>IpRouteInfo</a>.</p>
-- * AddedDateTime [AddedDateTime] <p>The date and time the address block was added to the directory.</p>
-- * CidrIp [CidrIp] <p>IP address block in the <a>IpRoute</a>.</p>
-- * IpRouteStatusMsg [IpRouteStatusMsg] <p>The status of the IP address block.</p>
-- @return IpRouteInfo structure as a key-value pair table
function M.IpRouteInfo(args)
	assert(args, "You must provdide an argument table when creating IpRouteInfo")
	local t = { 
		["DirectoryId"] = args["DirectoryId"],
		["IpRouteStatusReason"] = args["IpRouteStatusReason"],
		["Description"] = args["Description"],
		["AddedDateTime"] = args["AddedDateTime"],
		["CidrIp"] = args["CidrIp"],
		["IpRouteStatusMsg"] = args["IpRouteStatusMsg"],
	}
	asserts.AssertIpRouteInfo(t)
	return t
end

keys.GetDirectoryLimitsResult = { ["DirectoryLimits"] = true, nil }

function asserts.AssertGetDirectoryLimitsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryLimitsResult to be of type 'table'")
	if struct["DirectoryLimits"] then asserts.AssertDirectoryLimits(struct["DirectoryLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDirectoryLimitsResult[k], "GetDirectoryLimitsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryLimitsResult
-- <p>Contains the results of the <a>GetDirectoryLimits</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryLimits [DirectoryLimits] <p>A <a>DirectoryLimits</a> object that contains the directory limits for the current region.</p>
-- @return GetDirectoryLimitsResult structure as a key-value pair table
function M.GetDirectoryLimitsResult(args)
	assert(args, "You must provdide an argument table when creating GetDirectoryLimitsResult")
	local t = { 
		["DirectoryLimits"] = args["DirectoryLimits"],
	}
	asserts.AssertGetDirectoryLimitsResult(t)
	return t
end

keys.SnapshotLimitExceededException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertSnapshotLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotLimitExceededException[k], "SnapshotLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotLimitExceededException
-- <p>The maximum number of manual snapshots for the directory has been reached. You can use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits for a directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return SnapshotLimitExceededException structure as a key-value pair table
function M.SnapshotLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating SnapshotLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertSnapshotLimitExceededException(t)
	return t
end

keys.SnapshotLimits = { ["ManualSnapshotsCurrentCount"] = true, ["ManualSnapshotsLimit"] = true, ["ManualSnapshotsLimitReached"] = true, nil }

function asserts.AssertSnapshotLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotLimits to be of type 'table'")
	if struct["ManualSnapshotsCurrentCount"] then asserts.AssertLimit(struct["ManualSnapshotsCurrentCount"]) end
	if struct["ManualSnapshotsLimit"] then asserts.AssertLimit(struct["ManualSnapshotsLimit"]) end
	if struct["ManualSnapshotsLimitReached"] then asserts.AssertManualSnapshotsLimitReached(struct["ManualSnapshotsLimitReached"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotLimits[k], "SnapshotLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotLimits
-- <p>Contains manual snapshot limit information for a directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManualSnapshotsCurrentCount [Limit] <p>The current number of manual snapshots of the directory.</p>
-- * ManualSnapshotsLimit [Limit] <p>The maximum number of manual snapshots allowed.</p>
-- * ManualSnapshotsLimitReached [ManualSnapshotsLimitReached] <p>Indicates if the manual snapshot limit has been reached.</p>
-- @return SnapshotLimits structure as a key-value pair table
function M.SnapshotLimits(args)
	assert(args, "You must provdide an argument table when creating SnapshotLimits")
	local t = { 
		["ManualSnapshotsCurrentCount"] = args["ManualSnapshotsCurrentCount"],
		["ManualSnapshotsLimit"] = args["ManualSnapshotsLimit"],
		["ManualSnapshotsLimitReached"] = args["ManualSnapshotsLimitReached"],
	}
	asserts.AssertSnapshotLimits(t)
	return t
end

keys.IpRoute = { ["Description"] = true, ["CidrIp"] = true, nil }

function asserts.AssertIpRoute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRoute to be of type 'table'")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["CidrIp"] then asserts.AssertCidrIp(struct["CidrIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpRoute[k], "IpRoute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRoute
-- <p>IP address block. This is often the address block of the DNS server used for your on-premises domain. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>Description of the address block.</p>
-- * CidrIp [CidrIp] <p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the address block of the DNS server used for your on-premises domain. For a single IP address use a CIDR address block with /32. For example 10.0.0.0/32.</p>
-- @return IpRoute structure as a key-value pair table
function M.IpRoute(args)
	assert(args, "You must provdide an argument table when creating IpRoute")
	local t = { 
		["Description"] = args["Description"],
		["CidrIp"] = args["CidrIp"],
	}
	asserts.AssertIpRoute(t)
	return t
end

keys.DirectoryLimits = { ["CloudOnlyMicrosoftADCurrentCount"] = true, ["ConnectedDirectoriesLimitReached"] = true, ["ConnectedDirectoriesLimit"] = true, ["CloudOnlyDirectoriesLimit"] = true, ["CloudOnlyMicrosoftADLimit"] = true, ["ConnectedDirectoriesCurrentCount"] = true, ["CloudOnlyMicrosoftADLimitReached"] = true, ["CloudOnlyDirectoriesCurrentCount"] = true, ["CloudOnlyDirectoriesLimitReached"] = true, nil }

function asserts.AssertDirectoryLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryLimits to be of type 'table'")
	if struct["CloudOnlyMicrosoftADCurrentCount"] then asserts.AssertLimit(struct["CloudOnlyMicrosoftADCurrentCount"]) end
	if struct["ConnectedDirectoriesLimitReached"] then asserts.AssertConnectedDirectoriesLimitReached(struct["ConnectedDirectoriesLimitReached"]) end
	if struct["ConnectedDirectoriesLimit"] then asserts.AssertLimit(struct["ConnectedDirectoriesLimit"]) end
	if struct["CloudOnlyDirectoriesLimit"] then asserts.AssertLimit(struct["CloudOnlyDirectoriesLimit"]) end
	if struct["CloudOnlyMicrosoftADLimit"] then asserts.AssertLimit(struct["CloudOnlyMicrosoftADLimit"]) end
	if struct["ConnectedDirectoriesCurrentCount"] then asserts.AssertLimit(struct["ConnectedDirectoriesCurrentCount"]) end
	if struct["CloudOnlyMicrosoftADLimitReached"] then asserts.AssertCloudOnlyDirectoriesLimitReached(struct["CloudOnlyMicrosoftADLimitReached"]) end
	if struct["CloudOnlyDirectoriesCurrentCount"] then asserts.AssertLimit(struct["CloudOnlyDirectoriesCurrentCount"]) end
	if struct["CloudOnlyDirectoriesLimitReached"] then asserts.AssertCloudOnlyDirectoriesLimitReached(struct["CloudOnlyDirectoriesLimitReached"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryLimits[k], "DirectoryLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryLimits
-- <p>Contains directory limit information for a region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudOnlyMicrosoftADCurrentCount [Limit] <p>The current number of Microsoft AD directories in the region.</p>
-- * ConnectedDirectoriesLimitReached [ConnectedDirectoriesLimitReached] <p>Indicates if the connected directory limit has been reached.</p>
-- * ConnectedDirectoriesLimit [Limit] <p>The maximum number of connected directories allowed in the region.</p>
-- * CloudOnlyDirectoriesLimit [Limit] <p>The maximum number of cloud directories allowed in the region.</p>
-- * CloudOnlyMicrosoftADLimit [Limit] <p>The maximum number of Microsoft AD directories allowed in the region.</p>
-- * ConnectedDirectoriesCurrentCount [Limit] <p>The current number of connected directories in the region.</p>
-- * CloudOnlyMicrosoftADLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the Microsoft AD directory limit has been reached.</p>
-- * CloudOnlyDirectoriesCurrentCount [Limit] <p>The current number of cloud directories in the region.</p>
-- * CloudOnlyDirectoriesLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the cloud directory limit has been reached.</p>
-- @return DirectoryLimits structure as a key-value pair table
function M.DirectoryLimits(args)
	assert(args, "You must provdide an argument table when creating DirectoryLimits")
	local t = { 
		["CloudOnlyMicrosoftADCurrentCount"] = args["CloudOnlyMicrosoftADCurrentCount"],
		["ConnectedDirectoriesLimitReached"] = args["ConnectedDirectoriesLimitReached"],
		["ConnectedDirectoriesLimit"] = args["ConnectedDirectoriesLimit"],
		["CloudOnlyDirectoriesLimit"] = args["CloudOnlyDirectoriesLimit"],
		["CloudOnlyMicrosoftADLimit"] = args["CloudOnlyMicrosoftADLimit"],
		["ConnectedDirectoriesCurrentCount"] = args["ConnectedDirectoriesCurrentCount"],
		["CloudOnlyMicrosoftADLimitReached"] = args["CloudOnlyMicrosoftADLimitReached"],
		["CloudOnlyDirectoriesCurrentCount"] = args["CloudOnlyDirectoriesCurrentCount"],
		["CloudOnlyDirectoriesLimitReached"] = args["CloudOnlyDirectoriesLimitReached"],
	}
	asserts.AssertDirectoryLimits(t)
	return t
end

keys.DeleteTrustResult = { ["TrustId"] = true, nil }

function asserts.AssertDeleteTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrustResult to be of type 'table'")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrustResult[k], "DeleteTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrustResult
-- <p>The result of a DeleteTrust request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The Trust ID of the trust relationship that was deleted.</p>
-- @return DeleteTrustResult structure as a key-value pair table
function M.DeleteTrustResult(args)
	assert(args, "You must provdide an argument table when creating DeleteTrustResult")
	local t = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertDeleteTrustResult(t)
	return t
end

keys.UpdateConditionalForwarderResult = { nil }

function asserts.AssertUpdateConditionalForwarderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConditionalForwarderResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateConditionalForwarderResult[k], "UpdateConditionalForwarderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConditionalForwarderResult
-- <p>The result of an UpdateConditionalForwarder request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateConditionalForwarderResult structure as a key-value pair table
function M.UpdateConditionalForwarderResult(args)
	assert(args, "You must provdide an argument table when creating UpdateConditionalForwarderResult")
	local t = { 
	}
	asserts.AssertUpdateConditionalForwarderResult(t)
	return t
end

keys.DisableRadiusResult = { nil }

function asserts.AssertDisableRadiusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRadiusResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableRadiusResult[k], "DisableRadiusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRadiusResult
-- <p>Contains the results of the <a>DisableRadius</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableRadiusResult structure as a key-value pair table
function M.DisableRadiusResult(args)
	assert(args, "You must provdide an argument table when creating DisableRadiusResult")
	local t = { 
	}
	asserts.AssertDisableRadiusResult(t)
	return t
end

keys.StartSchemaExtensionRequest = { ["CreateSnapshotBeforeSchemaExtension"] = true, ["DirectoryId"] = true, ["LdifContent"] = true, ["Description"] = true, nil }

function asserts.AssertStartSchemaExtensionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaExtensionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["CreateSnapshotBeforeSchemaExtension"], "Expected key CreateSnapshotBeforeSchemaExtension to exist in table")
	assert(struct["LdifContent"], "Expected key LdifContent to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CreateSnapshotBeforeSchemaExtension"] then asserts.AssertCreateSnapshotBeforeSchemaExtension(struct["CreateSnapshotBeforeSchemaExtension"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["LdifContent"] then asserts.AssertLdifContent(struct["LdifContent"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSchemaExtensionRequest[k], "StartSchemaExtensionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaExtensionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateSnapshotBeforeSchemaExtension [CreateSnapshotBeforeSchemaExtension] <p>If true, creates a snapshot of the directory before applying the schema extension.</p>
-- * DirectoryId [DirectoryId] <p>The identifier of the directory for which the schema extension will be applied to.</p>
-- * LdifContent [LdifContent] <p>The LDIF file represented as a string. To construct the LdifContent string, precede each line as it would be formatted in an ldif file with \n. See the example request below for more details. The file size can be no larger than 1MB.</p>
-- * Description [Description] <p>A description of the schema extension.</p>
-- Required key: DirectoryId
-- Required key: CreateSnapshotBeforeSchemaExtension
-- Required key: LdifContent
-- Required key: Description
-- @return StartSchemaExtensionRequest structure as a key-value pair table
function M.StartSchemaExtensionRequest(args)
	assert(args, "You must provdide an argument table when creating StartSchemaExtensionRequest")
	local t = { 
		["CreateSnapshotBeforeSchemaExtension"] = args["CreateSnapshotBeforeSchemaExtension"],
		["DirectoryId"] = args["DirectoryId"],
		["LdifContent"] = args["LdifContent"],
		["Description"] = args["Description"],
	}
	asserts.AssertStartSchemaExtensionRequest(t)
	return t
end

keys.EntityAlreadyExistsException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityAlreadyExistsException[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- <p>The specified entity already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return EntityAlreadyExistsException structure as a key-value pair table
function M.EntityAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating EntityAlreadyExistsException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertEntityAlreadyExistsException(t)
	return t
end

keys.RestoreFromSnapshotResult = { nil }

function asserts.AssertRestoreFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromSnapshotResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RestoreFromSnapshotResult[k], "RestoreFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromSnapshotResult
-- <p>Contains the results of the <a>RestoreFromSnapshot</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RestoreFromSnapshotResult structure as a key-value pair table
function M.RestoreFromSnapshotResult(args)
	assert(args, "You must provdide an argument table when creating RestoreFromSnapshotResult")
	local t = { 
	}
	asserts.AssertRestoreFromSnapshotResult(t)
	return t
end

keys.TagLimitExceededException = { ["Message"] = true, ["RequestId"] = true, nil }

function asserts.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagLimitExceededException[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
-- <p>The maximum allowed number of tags was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * RequestId [RequestId] 
-- @return TagLimitExceededException structure as a key-value pair table
function M.TagLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating TagLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertTagLimitExceededException(t)
	return t
end

function asserts.AssertIpRouteStatusMsg(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRouteStatusMsg to be of type 'string'")
end

--  
function M.IpRouteStatusMsg(str)
	asserts.AssertIpRouteStatusMsg(str)
	return str
end

function asserts.AssertRadiusStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusStatus to be of type 'string'")
end

--  
function M.RadiusStatus(str)
	asserts.AssertRadiusStatus(str)
	return str
end

function asserts.AssertTrustPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustPassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrustPassword(str)
	asserts.AssertTrustPassword(str)
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

function asserts.AssertSchemaExtensionId(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionId to be of type 'string'")
end

--  
function M.SchemaExtensionId(str)
	asserts.AssertSchemaExtensionId(str)
	return str
end

function asserts.AssertTrustId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustId to be of type 'string'")
end

--  
function M.TrustId(str)
	asserts.AssertTrustId(str)
	return str
end

function asserts.AssertRadiusSharedSecret(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusSharedSecret to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

--  
function M.RadiusSharedSecret(str)
	asserts.AssertRadiusSharedSecret(str)
	return str
end

function asserts.AssertLdifContent(str)
	assert(str)
	assert(type(str) == "string", "Expected LdifContent to be of type 'string'")
	assert(#str <= 500000, "Expected string to be max 500000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LdifContent(str)
	asserts.AssertLdifContent(str)
	return str
end

function asserts.AssertSchemaExtensionStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionStatusReason to be of type 'string'")
end

--  
function M.SchemaExtensionStatusReason(str)
	asserts.AssertSchemaExtensionStatusReason(str)
	return str
end

function asserts.AssertDirectoryStage(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryStage to be of type 'string'")
end

--  
function M.DirectoryStage(str)
	asserts.AssertDirectoryStage(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertConnectPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectPassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConnectPassword(str)
	asserts.AssertConnectPassword(str)
	return str
end

function asserts.AssertIpAddr(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddr to be of type 'string'")
end

--  
function M.IpAddr(str)
	asserts.AssertIpAddr(str)
	return str
end

function asserts.AssertDirectorySize(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectorySize to be of type 'string'")
end

--  
function M.DirectorySize(str)
	asserts.AssertDirectorySize(str)
	return str
end

function asserts.AssertDirectoryType(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryType to be of type 'string'")
end

--  
function M.DirectoryType(str)
	asserts.AssertDirectoryType(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertReplicationScope(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationScope to be of type 'string'")
end

--  
function M.ReplicationScope(str)
	asserts.AssertReplicationScope(str)
	return str
end

function asserts.AssertAliasName(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasName to be of type 'string'")
	assert(#str <= 62, "Expected string to be max 62 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AliasName(str)
	asserts.AssertAliasName(str)
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

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertAccessUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessUrl to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccessUrl(str)
	asserts.AssertAccessUrl(str)
	return str
end

function asserts.AssertTopicName(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TopicName(str)
	asserts.AssertTopicName(str)
	return str
end

function asserts.AssertSchemaExtensionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaExtensionStatus to be of type 'string'")
end

--  
function M.SchemaExtensionStatus(str)
	asserts.AssertSchemaExtensionStatus(str)
	return str
end

function asserts.AssertSnapshotName(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.SnapshotName(str)
	asserts.AssertSnapshotName(str)
	return str
end

function asserts.AssertServer(str)
	assert(str)
	assert(type(str) == "string", "Expected Server to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Server(str)
	asserts.AssertServer(str)
	return str
end

function asserts.AssertSnapshotStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotStatus to be of type 'string'")
end

--  
function M.SnapshotStatus(str)
	asserts.AssertSnapshotStatus(str)
	return str
end

function asserts.AssertTopicStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicStatus to be of type 'string'")
end

--  
function M.TopicStatus(str)
	asserts.AssertTopicStatus(str)
	return str
end

function asserts.AssertAvailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailabilityZone to be of type 'string'")
end

--  
function M.AvailabilityZone(str)
	asserts.AssertAvailabilityZone(str)
	return str
end

function asserts.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
end

--  
function M.DirectoryName(str)
	asserts.AssertDirectoryName(str)
	return str
end

function asserts.AssertUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserName(str)
	asserts.AssertUserName(str)
	return str
end

function asserts.AssertDirectoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryId to be of type 'string'")
end

--  
function M.DirectoryId(str)
	asserts.AssertDirectoryId(str)
	return str
end

function asserts.AssertComputerPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerPassword to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

--  
function M.ComputerPassword(str)
	asserts.AssertComputerPassword(str)
	return str
end

function asserts.AssertRadiusAuthenticationProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusAuthenticationProtocol to be of type 'string'")
end

--  
function M.RadiusAuthenticationProtocol(str)
	asserts.AssertRadiusAuthenticationProtocol(str)
	return str
end

function asserts.AssertSID(str)
	assert(str)
	assert(type(str) == "string", "Expected SID to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SID(str)
	asserts.AssertSID(str)
	return str
end

function asserts.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
end

--  
function M.SnapshotId(str)
	asserts.AssertSnapshotId(str)
	return str
end

function asserts.AssertTrustState(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustState to be of type 'string'")
end

--  
function M.TrustState(str)
	asserts.AssertTrustState(str)
	return str
end

function asserts.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ComputerName(str)
	asserts.AssertComputerName(str)
	return str
end

function asserts.AssertStageReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StageReason to be of type 'string'")
end

--  
function M.StageReason(str)
	asserts.AssertStageReason(str)
	return str
end

function asserts.AssertRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestId to be of type 'string'")
end

-- <p>The AWS request identifier.</p>
function M.RequestId(str)
	asserts.AssertRequestId(str)
	return str
end

function asserts.AssertRadiusDisplayLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected RadiusDisplayLabel to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RadiusDisplayLabel(str)
	asserts.AssertRadiusDisplayLabel(str)
	return str
end

function asserts.AssertDirectoryShortName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryShortName to be of type 'string'")
end

--  
function M.DirectoryShortName(str)
	asserts.AssertDirectoryShortName(str)
	return str
end

function asserts.AssertTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicArn to be of type 'string'")
end

--  
function M.TopicArn(str)
	asserts.AssertTopicArn(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

-- <p>The descriptive message for the exception.</p>
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertTrustType(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustType to be of type 'string'")
end

--  
function M.TrustType(str)
	asserts.AssertTrustType(str)
	return str
end

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
end

--  
function M.Password(str)
	asserts.AssertPassword(str)
	return str
end

function asserts.AssertTrustDirection(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustDirection to be of type 'string'")
end

--  
function M.TrustDirection(str)
	asserts.AssertTrustDirection(str)
	return str
end

function asserts.AssertIpRouteStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRouteStatusReason to be of type 'string'")
end

--  
function M.IpRouteStatusReason(str)
	asserts.AssertIpRouteStatusReason(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertRemoteDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected RemoteDomainName to be of type 'string'")
end

--  
function M.RemoteDomainName(str)
	asserts.AssertRemoteDomainName(str)
	return str
end

function asserts.AssertSnapshotType(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotType to be of type 'string'")
end

--  
function M.SnapshotType(str)
	asserts.AssertSnapshotType(str)
	return str
end

function asserts.AssertOrganizationalUnitDN(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitDN to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OrganizationalUnitDN(str)
	asserts.AssertOrganizationalUnitDN(str)
	return str
end

function asserts.AssertCidrIp(str)
	assert(str)
	assert(type(str) == "string", "Expected CidrIp to be of type 'string'")
end

--  
function M.CidrIp(str)
	asserts.AssertCidrIp(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
	return str
end

function asserts.AssertTrustStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustStateReason to be of type 'string'")
end

--  
function M.TrustStateReason(str)
	asserts.AssertTrustStateReason(str)
	return str
end

function asserts.AssertRadiusRetries(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RadiusRetries to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
end

function M.RadiusRetries(integer)
	asserts.AssertRadiusRetries(integer)
	return integer
end

function asserts.AssertPortNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PortNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1025, "Expected integer to be min 1025")
end

function M.PortNumber(integer)
	asserts.AssertPortNumber(integer)
	return integer
end

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
	return integer
end

function asserts.AssertRadiusTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RadiusTimeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RadiusTimeout(integer)
	asserts.AssertRadiusTimeout(integer)
	return integer
end

function asserts.AssertUseSameUsername(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UseSameUsername to be of type 'boolean'")
end

function M.UseSameUsername(boolean)
	asserts.AssertUseSameUsername(boolean)
	return boolean
end

function asserts.AssertCloudOnlyDirectoriesLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CloudOnlyDirectoriesLimitReached to be of type 'boolean'")
end

function M.CloudOnlyDirectoriesLimitReached(boolean)
	asserts.AssertCloudOnlyDirectoriesLimitReached(boolean)
	return boolean
end

function asserts.AssertSsoEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SsoEnabled to be of type 'boolean'")
end

function M.SsoEnabled(boolean)
	asserts.AssertSsoEnabled(boolean)
	return boolean
end

function asserts.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UpdateSecurityGroupForDirectoryControllers to be of type 'boolean'")
end

function M.UpdateSecurityGroupForDirectoryControllers(boolean)
	asserts.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
	return boolean
end

function asserts.AssertDeleteAssociatedConditionalForwarder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteAssociatedConditionalForwarder to be of type 'boolean'")
end

function M.DeleteAssociatedConditionalForwarder(boolean)
	asserts.AssertDeleteAssociatedConditionalForwarder(boolean)
	return boolean
end

function asserts.AssertManualSnapshotsLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ManualSnapshotsLimitReached to be of type 'boolean'")
end

function M.ManualSnapshotsLimitReached(boolean)
	asserts.AssertManualSnapshotsLimitReached(boolean)
	return boolean
end

function asserts.AssertCreateSnapshotBeforeSchemaExtension(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CreateSnapshotBeforeSchemaExtension to be of type 'boolean'")
end

function M.CreateSnapshotBeforeSchemaExtension(boolean)
	asserts.AssertCreateSnapshotBeforeSchemaExtension(boolean)
	return boolean
end

function asserts.AssertConnectedDirectoriesLimitReached(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConnectedDirectoriesLimitReached to be of type 'boolean'")
end

function M.ConnectedDirectoriesLimitReached(boolean)
	asserts.AssertConnectedDirectoriesLimitReached(boolean)
	return boolean
end

function asserts.AssertLastUpdatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastUpdatedDateTime to be of type 'string'")
end

function M.LastUpdatedDateTime(timestamp)
	asserts.AssertLastUpdatedDateTime(timestamp)
	return timestamp
end

function asserts.AssertAddedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AddedDateTime to be of type 'string'")
end

function M.AddedDateTime(timestamp)
	asserts.AssertAddedDateTime(timestamp)
	return timestamp
end

function asserts.AssertStateLastUpdatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StateLastUpdatedDateTime to be of type 'string'")
end

function M.StateLastUpdatedDateTime(timestamp)
	asserts.AssertStateLastUpdatedDateTime(timestamp)
	return timestamp
end

function asserts.AssertLaunchTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LaunchTime to be of type 'string'")
end

function M.LaunchTime(timestamp)
	asserts.AssertLaunchTime(timestamp)
	return timestamp
end

function asserts.AssertCreatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDateTime to be of type 'string'")
end

function M.CreatedDateTime(timestamp)
	asserts.AssertCreatedDateTime(timestamp)
	return timestamp
end

function asserts.AssertStartTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartTime to be of type 'string'")
end

function M.StartTime(timestamp)
	asserts.AssertStartTime(timestamp)
	return timestamp
end

function asserts.AssertEndDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EndDateTime to be of type 'string'")
end

function M.EndDateTime(timestamp)
	asserts.AssertEndDateTime(timestamp)
	return timestamp
end

function asserts.AssertStartDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartDateTime to be of type 'string'")
end

function M.StartDateTime(timestamp)
	asserts.AssertStartDateTime(timestamp)
	return timestamp
end

function asserts.AssertEventTopics(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTopics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventTopic(v)
	end
end

--  
-- List of EventTopic objects
function M.EventTopics(list)
	asserts.AssertEventTopics(list)
	return list
end

function asserts.AssertIpRoutesInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRoutesInfo to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpRouteInfo(v)
	end
end

--  
-- List of IpRouteInfo objects
function M.IpRoutesInfo(list)
	asserts.AssertIpRoutesInfo(list)
	return list
end

function asserts.AssertConditionalForwarders(list)
	assert(list)
	assert(type(list) == "table", "Expected ConditionalForwarders to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConditionalForwarder(v)
	end
end

--  
-- List of ConditionalForwarder objects
function M.ConditionalForwarders(list)
	asserts.AssertConditionalForwarders(list)
	return list
end

function asserts.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	asserts.AssertAttributes(list)
	return list
end

function asserts.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	asserts.AssertSubnetIds(list)
	return list
end

function asserts.AssertRemoteDomainNames(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoteDomainNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRemoteDomainName(v)
	end
end

--  
-- List of RemoteDomainName objects
function M.RemoteDomainNames(list)
	asserts.AssertRemoteDomainNames(list)
	return list
end

function asserts.AssertSnapshotIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSnapshotId(v)
	end
end

-- <p>A list of directory snapshot identifiers.</p>
-- List of SnapshotId objects
function M.SnapshotIds(list)
	asserts.AssertSnapshotIds(list)
	return list
end

function asserts.AssertSnapshots(list)
	assert(list)
	assert(type(list) == "table", "Expected Snapshots to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSnapshot(v)
	end
end

-- <p>A list of descriptions of directory snapshots.</p>
-- List of Snapshot objects
function M.Snapshots(list)
	asserts.AssertSnapshots(list)
	return list
end

function asserts.AssertIpAddrs(list)
	assert(list)
	assert(type(list) == "table", "Expected IpAddrs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpAddr(v)
	end
end

--  
-- List of IpAddr objects
function M.IpAddrs(list)
	asserts.AssertIpAddrs(list)
	return list
end

function asserts.AssertDirectoryDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectoryDescription(v)
	end
end

-- <p>A list of directory descriptions.</p>
-- List of DirectoryDescription objects
function M.DirectoryDescriptions(list)
	asserts.AssertDirectoryDescriptions(list)
	return list
end

function asserts.AssertServers(list)
	assert(list)
	assert(type(list) == "table", "Expected Servers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServer(v)
	end
end

--  
-- List of Server objects
function M.Servers(list)
	asserts.AssertServers(list)
	return list
end

function asserts.AssertTrusts(list)
	assert(list)
	assert(type(list) == "table", "Expected Trusts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrust(v)
	end
end

--  
-- List of Trust objects
function M.Trusts(list)
	asserts.AssertTrusts(list)
	return list
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

function asserts.AssertIpRoutes(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRoutes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpRoute(v)
	end
end

--  
-- List of IpRoute objects
function M.IpRoutes(list)
	asserts.AssertIpRoutes(list)
	return list
end

function asserts.AssertTrustIds(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrustId(v)
	end
end

--  
-- List of TrustId objects
function M.TrustIds(list)
	asserts.AssertTrustIds(list)
	return list
end

function asserts.AssertCidrIps(list)
	assert(list)
	assert(type(list) == "table", "Expected CidrIps to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCidrIp(v)
	end
end

--  
-- List of CidrIp objects
function M.CidrIps(list)
	asserts.AssertCidrIps(list)
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

function asserts.AssertSchemaExtensionsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaExtensionsInfo to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSchemaExtensionInfo(v)
	end
end

--  
-- List of SchemaExtensionInfo objects
function M.SchemaExtensionsInfo(list)
	asserts.AssertSchemaExtensionsInfo(list)
	return list
end

function asserts.AssertTopicNames(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopicName(v)
	end
end

--  
-- List of TopicName objects
function M.TopicNames(list)
	asserts.AssertTopicNames(list)
	return list
end

function asserts.AssertDirectoryIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectoryId(v)
	end
end

-- <p>A list of directory identifiers.</p>
-- List of DirectoryId objects
function M.DirectoryIds(list)
	asserts.AssertDirectoryIds(list)
	return list
end

function asserts.AssertDnsIpAddrs(list)
	assert(list)
	assert(type(list) == "table", "Expected DnsIpAddrs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpAddr(v)
	end
end

--  
-- List of IpAddr objects
function M.DnsIpAddrs(list)
	asserts.AssertDnsIpAddrs(list)
	return list
end

function asserts.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZones(list)
	asserts.AssertAvailabilityZones(list)
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
			return "ds.amazonaws.com"
		end
	end
	local ss = { "ds" }
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
--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceRequest
-- @return response
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateComputer asynchronously, invoking a callback when done
-- @param CreateComputerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateComputerAsync(CreateComputerRequest, cb)
	assert(CreateComputerRequest, "You must provide a CreateComputerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateComputer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateComputerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateComputer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateComputerRequest
-- @return response
-- @return error_message
function M.CreateComputerSync(CreateComputerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateComputerAsync(CreateComputerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableRadius asynchronously, invoking a callback when done
-- @param EnableRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableRadiusAsync(EnableRadiusRequest, cb)
	assert(EnableRadiusRequest, "You must provide a EnableRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableRadiusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableRadius synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableRadiusRequest
-- @return response
-- @return error_message
function M.EnableRadiusSync(EnableRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableRadiusAsync(EnableRadiusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConditionalForwarder asynchronously, invoking a callback when done
-- @param DeleteConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConditionalForwarderAsync(DeleteConditionalForwarderRequest, cb)
	assert(DeleteConditionalForwarderRequest, "You must provide a DeleteConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConditionalForwarderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConditionalForwarder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConditionalForwarderRequest
-- @return response
-- @return error_message
function M.DeleteConditionalForwarderSync(DeleteConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConditionalForwarderAsync(DeleteConditionalForwarderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectory asynchronously, invoking a callback when done
-- @param CreateDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDirectoryAsync(CreateDirectoryRequest, cb)
	assert(CreateDirectoryRequest, "You must provide a CreateDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDirectoryRequest
-- @return response
-- @return error_message
function M.CreateDirectorySync(CreateDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectoryAsync(CreateDirectoryRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshots asynchronously, invoking a callback when done
-- @param DescribeSnapshotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotsAsync(DescribeSnapshotsRequest, cb)
	assert(DescribeSnapshotsRequest, "You must provide a DescribeSnapshotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSnapshotsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSnapshotsRequest
-- @return response
-- @return error_message
function M.DescribeSnapshotsSync(DescribeSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotsAsync(DescribeSnapshotsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyTrust asynchronously, invoking a callback when done
-- @param VerifyTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyTrustAsync(VerifyTrustRequest, cb)
	assert(VerifyTrustRequest, "You must provide a VerifyTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.VerifyTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyTrustRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyTrust synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyTrustRequest
-- @return response
-- @return error_message
function M.VerifyTrustSync(VerifyTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyTrustAsync(VerifyTrustRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshot asynchronously, invoking a callback when done
-- @param DeleteSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotAsync(DeleteSnapshotRequest, cb)
	assert(DeleteSnapshotRequest, "You must provide a DeleteSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSnapshotRequest
-- @return response
-- @return error_message
function M.DeleteSnapshotSync(DeleteSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotAsync(DeleteSnapshotRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRadius asynchronously, invoking a callback when done
-- @param UpdateRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRadiusAsync(UpdateRadiusRequest, cb)
	assert(UpdateRadiusRequest, "You must provide a UpdateRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRadiusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRadius synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRadiusRequest
-- @return response
-- @return error_message
function M.UpdateRadiusSync(UpdateRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRadiusAsync(UpdateRadiusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableRadius asynchronously, invoking a callback when done
-- @param DisableRadiusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableRadiusAsync(DisableRadiusRequest, cb)
	assert(DisableRadiusRequest, "You must provide a DisableRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableRadius",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableRadiusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableRadius synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableRadiusRequest
-- @return response
-- @return error_message
function M.DisableRadiusSync(DisableRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableRadiusAsync(DisableRadiusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceRequest
-- @return response
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConditionalForwarders asynchronously, invoking a callback when done
-- @param DescribeConditionalForwardersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConditionalForwardersAsync(DescribeConditionalForwardersRequest, cb)
	assert(DescribeConditionalForwardersRequest, "You must provide a DescribeConditionalForwardersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeConditionalForwarders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConditionalForwardersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConditionalForwarders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConditionalForwardersRequest
-- @return response
-- @return error_message
function M.DescribeConditionalForwardersSync(DescribeConditionalForwardersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConditionalForwardersAsync(DescribeConditionalForwardersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventTopics asynchronously, invoking a callback when done
-- @param DescribeEventTopicsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventTopicsAsync(DescribeEventTopicsRequest, cb)
	assert(DescribeEventTopicsRequest, "You must provide a DescribeEventTopicsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeEventTopics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventTopicsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventTopics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventTopicsRequest
-- @return response
-- @return error_message
function M.DescribeEventTopicsSync(DescribeEventTopicsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventTopicsAsync(DescribeEventTopicsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableSso asynchronously, invoking a callback when done
-- @param EnableSsoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableSsoAsync(EnableSsoRequest, cb)
	assert(EnableSsoRequest, "You must provide a EnableSsoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableSso",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableSsoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableSso synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableSsoRequest
-- @return response
-- @return error_message
function M.EnableSsoSync(EnableSsoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableSsoAsync(EnableSsoRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIpRoutes asynchronously, invoking a callback when done
-- @param ListIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIpRoutesAsync(ListIpRoutesRequest, cb)
	assert(ListIpRoutesRequest, "You must provide a ListIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIpRoutesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIpRoutes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIpRoutesRequest
-- @return response
-- @return error_message
function M.ListIpRoutesSync(ListIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIpRoutesAsync(ListIpRoutesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveIpRoutes asynchronously, invoking a callback when done
-- @param RemoveIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveIpRoutesAsync(RemoveIpRoutesRequest, cb)
	assert(RemoveIpRoutesRequest, "You must provide a RemoveIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveIpRoutesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveIpRoutes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveIpRoutesRequest
-- @return response
-- @return error_message
function M.RemoveIpRoutesSync(RemoveIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveIpRoutesAsync(RemoveIpRoutesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasRequest
-- @return response
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConnectDirectory asynchronously, invoking a callback when done
-- @param ConnectDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConnectDirectoryAsync(ConnectDirectoryRequest, cb)
	assert(ConnectDirectoryRequest, "You must provide a ConnectDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ConnectDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ConnectDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConnectDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConnectDirectoryRequest
-- @return response
-- @return error_message
function M.ConnectDirectorySync(ConnectDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConnectDirectoryAsync(ConnectDirectoryRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDirectory asynchronously, invoking a callback when done
-- @param DeleteDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDirectoryAsync(DeleteDirectoryRequest, cb)
	assert(DeleteDirectoryRequest, "You must provide a DeleteDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDirectoryRequest
-- @return response
-- @return error_message
function M.DeleteDirectorySync(DeleteDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectoryAsync(DeleteDirectoryRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddIpRoutes asynchronously, invoking a callback when done
-- @param AddIpRoutesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddIpRoutesAsync(AddIpRoutesRequest, cb)
	assert(AddIpRoutesRequest, "You must provide a AddIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddIpRoutes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddIpRoutesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddIpRoutes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddIpRoutesRequest
-- @return response
-- @return error_message
function M.AddIpRoutesSync(AddIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddIpRoutesAsync(AddIpRoutesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelSchemaExtension asynchronously, invoking a callback when done
-- @param CancelSchemaExtensionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelSchemaExtensionAsync(CancelSchemaExtensionRequest, cb)
	assert(CancelSchemaExtensionRequest, "You must provide a CancelSchemaExtensionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CancelSchemaExtension",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelSchemaExtensionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelSchemaExtension synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelSchemaExtensionRequest
-- @return response
-- @return error_message
function M.CancelSchemaExtensionSync(CancelSchemaExtensionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelSchemaExtensionAsync(CancelSchemaExtensionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConditionalForwarder asynchronously, invoking a callback when done
-- @param CreateConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConditionalForwarderAsync(CreateConditionalForwarderRequest, cb)
	assert(CreateConditionalForwarderRequest, "You must provide a CreateConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConditionalForwarderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConditionalForwarder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConditionalForwarderRequest
-- @return response
-- @return error_message
function M.CreateConditionalForwarderSync(CreateConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConditionalForwarderAsync(CreateConditionalForwarderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreFromSnapshot asynchronously, invoking a callback when done
-- @param RestoreFromSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreFromSnapshotAsync(RestoreFromSnapshotRequest, cb)
	assert(RestoreFromSnapshotRequest, "You must provide a RestoreFromSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RestoreFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreFromSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreFromSnapshotRequest
-- @return response
-- @return error_message
function M.RestoreFromSnapshotSync(RestoreFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreFromSnapshotAsync(RestoreFromSnapshotRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSchemaExtensions asynchronously, invoking a callback when done
-- @param ListSchemaExtensionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSchemaExtensionsAsync(ListSchemaExtensionsRequest, cb)
	assert(ListSchemaExtensionsRequest, "You must provide a ListSchemaExtensionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListSchemaExtensions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSchemaExtensionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSchemaExtensions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSchemaExtensionsRequest
-- @return response
-- @return error_message
function M.ListSchemaExtensionsSync(ListSchemaExtensionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSchemaExtensionsAsync(ListSchemaExtensionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrusts asynchronously, invoking a callback when done
-- @param DescribeTrustsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustsAsync(DescribeTrustsRequest, cb)
	assert(DescribeTrustsRequest, "You must provide a DescribeTrustsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeTrusts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrustsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrusts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustsRequest
-- @return response
-- @return error_message
function M.DescribeTrustsSync(DescribeTrustsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustsAsync(DescribeTrustsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterEventTopic asynchronously, invoking a callback when done
-- @param DeregisterEventTopicRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterEventTopicAsync(DeregisterEventTopicRequest, cb)
	assert(DeregisterEventTopicRequest, "You must provide a DeregisterEventTopicRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeregisterEventTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterEventTopicRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterEventTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterEventTopicRequest
-- @return response
-- @return error_message
function M.DeregisterEventTopicSync(DeregisterEventTopicRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterEventTopicAsync(DeregisterEventTopicRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConditionalForwarder asynchronously, invoking a callback when done
-- @param UpdateConditionalForwarderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConditionalForwarderAsync(UpdateConditionalForwarderRequest, cb)
	assert(UpdateConditionalForwarderRequest, "You must provide a UpdateConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateConditionalForwarder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConditionalForwarderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConditionalForwarder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConditionalForwarderRequest
-- @return response
-- @return error_message
function M.UpdateConditionalForwarderSync(UpdateConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConditionalForwarderAsync(UpdateConditionalForwarderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrust asynchronously, invoking a callback when done
-- @param CreateTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrustAsync(CreateTrustRequest, cb)
	assert(CreateTrustRequest, "You must provide a CreateTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTrustRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrust synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrustRequest
-- @return response
-- @return error_message
function M.CreateTrustSync(CreateTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrustAsync(CreateTrustRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDirectoryLimits asynchronously, invoking a callback when done
-- @param GetDirectoryLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDirectoryLimitsAsync(GetDirectoryLimitsRequest, cb)
	assert(GetDirectoryLimitsRequest, "You must provide a GetDirectoryLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetDirectoryLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDirectoryLimitsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDirectoryLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDirectoryLimitsRequest
-- @return response
-- @return error_message
function M.GetDirectoryLimitsSync(GetDirectoryLimitsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDirectoryLimitsAsync(GetDirectoryLimitsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMicrosoftAD asynchronously, invoking a callback when done
-- @param CreateMicrosoftADRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMicrosoftADAsync(CreateMicrosoftADRequest, cb)
	assert(CreateMicrosoftADRequest, "You must provide a CreateMicrosoftADRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateMicrosoftAD",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateMicrosoftADRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMicrosoftAD synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMicrosoftADRequest
-- @return response
-- @return error_message
function M.CreateMicrosoftADSync(CreateMicrosoftADRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMicrosoftADAsync(CreateMicrosoftADRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterEventTopic asynchronously, invoking a callback when done
-- @param RegisterEventTopicRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterEventTopicAsync(RegisterEventTopicRequest, cb)
	assert(RegisterEventTopicRequest, "You must provide a RegisterEventTopicRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RegisterEventTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterEventTopicRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterEventTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterEventTopicRequest
-- @return response
-- @return error_message
function M.RegisterEventTopicSync(RegisterEventTopicRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterEventTopicAsync(RegisterEventTopicRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSnapshotLimits asynchronously, invoking a callback when done
-- @param GetSnapshotLimitsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSnapshotLimitsAsync(GetSnapshotLimitsRequest, cb)
	assert(GetSnapshotLimitsRequest, "You must provide a GetSnapshotLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetSnapshotLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSnapshotLimitsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSnapshotLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSnapshotLimitsRequest
-- @return response
-- @return error_message
function M.GetSnapshotLimitsSync(GetSnapshotLimitsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSnapshotLimitsAsync(GetSnapshotLimitsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTrust asynchronously, invoking a callback when done
-- @param DeleteTrustRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrustAsync(DeleteTrustRequest, cb)
	assert(DeleteTrustRequest, "You must provide a DeleteTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteTrust",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTrustRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTrust synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTrustRequest
-- @return response
-- @return error_message
function M.DeleteTrustSync(DeleteTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTrustAsync(DeleteTrustRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectories asynchronously, invoking a callback when done
-- @param DescribeDirectoriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDirectoriesAsync(DescribeDirectoriesRequest, cb)
	assert(DescribeDirectoriesRequest, "You must provide a DescribeDirectoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeDirectories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDirectoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDirectories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDirectoriesRequest
-- @return response
-- @return error_message
function M.DescribeDirectoriesSync(DescribeDirectoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectoriesAsync(DescribeDirectoriesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSchemaExtension asynchronously, invoking a callback when done
-- @param StartSchemaExtensionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartSchemaExtensionAsync(StartSchemaExtensionRequest, cb)
	assert(StartSchemaExtensionRequest, "You must provide a StartSchemaExtensionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.StartSchemaExtension",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartSchemaExtensionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSchemaExtension synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSchemaExtensionRequest
-- @return response
-- @return error_message
function M.StartSchemaExtensionSync(StartSchemaExtensionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSchemaExtensionAsync(StartSchemaExtensionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshot asynchronously, invoking a callback when done
-- @param CreateSnapshotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotAsync(CreateSnapshotRequest, cb)
	assert(CreateSnapshotRequest, "You must provide a CreateSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSnapshotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSnapshotRequest
-- @return response
-- @return error_message
function M.CreateSnapshotSync(CreateSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotAsync(CreateSnapshotRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableSso asynchronously, invoking a callback when done
-- @param DisableSsoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableSsoAsync(DisableSsoRequest, cb)
	assert(DisableSsoRequest, "You must provide a DisableSsoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableSso",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableSsoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableSso synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableSsoRequest
-- @return response
-- @return error_message
function M.DisableSsoSync(DisableSsoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableSsoAsync(DisableSsoRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
