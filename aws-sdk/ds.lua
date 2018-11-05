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
	assert(args, "You must provide an argument table when creating DirectoryVpcSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
	}
	asserts.AssertDirectoryVpcSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectSharedDirectoryRequest = { ["SharedDirectoryId"] = true, nil }

function asserts.AssertRejectSharedDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectSharedDirectoryRequest to be of type 'table'")
	assert(struct["SharedDirectoryId"], "Expected key SharedDirectoryId to exist in table")
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectSharedDirectoryRequest[k], "RejectSharedDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectSharedDirectoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.</p>
-- Required key: SharedDirectoryId
-- @return RejectSharedDirectoryRequest structure as a key-value pair table
function M.RejectSharedDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating RejectSharedDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectoryId"] = args["SharedDirectoryId"],
	}
	asserts.AssertRejectSharedDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DisableSsoRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["Password"] = args["Password"],
	}
	asserts.AssertDisableSsoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnshareTarget = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertUnshareTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnshareTarget to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertTargetType(struct["Type"]) end
	if struct["Id"] then asserts.AssertTargetId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnshareTarget[k], "UnshareTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnshareTarget
-- <p>Identifier that contains details about the directory consumer account with whom the directory is being unshared.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [TargetType] <p>Type of identifier to be used in the <i>Id</i> field.</p>
-- * Id [TargetId] <p>Identifier of the directory consumer account.</p>
-- Required key: Id
-- Required key: Type
-- @return UnshareTarget structure as a key-value pair table
function M.UnshareTarget(args)
	assert(args, "You must provide an argument table when creating UnshareTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertUnshareTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Deletes the local side of an existing trust relationship between the AWS Managed Microsoft AD directory and the external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The Trust ID of the trust relationship to be deleted.</p>
-- * DeleteAssociatedConditionalForwarder [DeleteAssociatedConditionalForwarder] <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
-- Required key: TrustId
-- @return DeleteTrustRequest structure as a key-value pair table
function M.DeleteTrustRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTrustRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
		["DeleteAssociatedConditionalForwarder"] = args["DeleteAssociatedConditionalForwarder"],
	}
	asserts.AssertDeleteTrustRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDeleteDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptSharedDirectoryResult = { ["SharedDirectory"] = true, nil }

function asserts.AssertAcceptSharedDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptSharedDirectoryResult to be of type 'table'")
	if struct["SharedDirectory"] then asserts.AssertSharedDirectory(struct["SharedDirectory"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptSharedDirectoryResult[k], "AcceptSharedDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptSharedDirectoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectory [SharedDirectory] <p>The shared directory in the directory consumer account.</p>
-- @return AcceptSharedDirectoryResult structure as a key-value pair table
function M.AcceptSharedDirectoryResult(args)
	assert(args, "You must provide an argument table when creating AcceptSharedDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectory"] = args["SharedDirectory"],
	}
	asserts.AssertAcceptSharedDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveTagsFromResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListIpRoutesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpRoutesInfo"] = args["IpRoutesInfo"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListIpRoutesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateAliasResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["Alias"] = args["Alias"],
	}
	asserts.AssertCreateAliasResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertCreateDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListIpRoutesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListIpRoutesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetSnapshotLimitsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotLimits"] = args["SnapshotLimits"],
	}
	asserts.AssertGetSnapshotLimitsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DisableSsoResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableSsoResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeSnapshotsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["SnapshotIds"] = args["SnapshotIds"],
	}
	asserts.AssertDescribeSnapshotsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeTrustsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Trusts"] = args["Trusts"],
	}
	asserts.AssertDescribeTrustsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertDeleteSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListTagsForResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptSharedDirectoryRequest = { ["SharedDirectoryId"] = true, nil }

function asserts.AssertAcceptSharedDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptSharedDirectoryRequest to be of type 'table'")
	assert(struct["SharedDirectoryId"], "Expected key SharedDirectoryId to exist in table")
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptSharedDirectoryRequest[k], "AcceptSharedDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptSharedDirectoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account. </p>
-- Required key: SharedDirectoryId
-- @return AcceptSharedDirectoryRequest structure as a key-value pair table
function M.AcceptSharedDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating AcceptSharedDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectoryId"] = args["SharedDirectoryId"],
	}
	asserts.AssertAcceptSharedDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertDeleteSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectoryDescription = { ["DirectoryId"] = true, ["ConnectSettings"] = true, ["RadiusSettings"] = true, ["StageLastUpdatedDateTime"] = true, ["RadiusStatus"] = true, ["Type"] = true, ["Name"] = true, ["Description"] = true, ["ShareStatus"] = true, ["StageReason"] = true, ["Stage"] = true, ["AccessUrl"] = true, ["ShareMethod"] = true, ["OwnerDirectoryDescription"] = true, ["ShareNotes"] = true, ["Alias"] = true, ["SsoEnabled"] = true, ["DesiredNumberOfDomainControllers"] = true, ["DnsIpAddrs"] = true, ["VpcSettings"] = true, ["Edition"] = true, ["LaunchTime"] = true, ["ShortName"] = true, ["Size"] = true, nil }

function asserts.AssertDirectoryDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryDescription to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ConnectSettings"] then asserts.AssertDirectoryConnectSettingsDescription(struct["ConnectSettings"]) end
	if struct["RadiusSettings"] then asserts.AssertRadiusSettings(struct["RadiusSettings"]) end
	if struct["StageLastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["StageLastUpdatedDateTime"]) end
	if struct["RadiusStatus"] then asserts.AssertRadiusStatus(struct["RadiusStatus"]) end
	if struct["Type"] then asserts.AssertDirectoryType(struct["Type"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ShareStatus"] then asserts.AssertShareStatus(struct["ShareStatus"]) end
	if struct["StageReason"] then asserts.AssertStageReason(struct["StageReason"]) end
	if struct["Stage"] then asserts.AssertDirectoryStage(struct["Stage"]) end
	if struct["AccessUrl"] then asserts.AssertAccessUrl(struct["AccessUrl"]) end
	if struct["ShareMethod"] then asserts.AssertShareMethod(struct["ShareMethod"]) end
	if struct["OwnerDirectoryDescription"] then asserts.AssertOwnerDirectoryDescription(struct["OwnerDirectoryDescription"]) end
	if struct["ShareNotes"] then asserts.AssertNotes(struct["ShareNotes"]) end
	if struct["Alias"] then asserts.AssertAliasName(struct["Alias"]) end
	if struct["SsoEnabled"] then asserts.AssertSsoEnabled(struct["SsoEnabled"]) end
	if struct["DesiredNumberOfDomainControllers"] then asserts.AssertDesiredNumberOfDomainControllers(struct["DesiredNumberOfDomainControllers"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettingsDescription(struct["VpcSettings"]) end
	if struct["Edition"] then asserts.AssertDirectoryEdition(struct["Edition"]) end
	if struct["LaunchTime"] then asserts.AssertLaunchTime(struct["LaunchTime"]) end
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Size"] then asserts.AssertDirectorySize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryDescription[k], "DirectoryDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryDescription
-- <p>Contains information about an AWS Directory Service directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- * ConnectSettings [DirectoryConnectSettingsDescription] <p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.</p>
-- * RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server configured for this directory.</p>
-- * StageLastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the stage was last updated.</p>
-- * RadiusStatus [RadiusStatus] <p>The status of the RADIUS MFA server connection.</p>
-- * Type [DirectoryType] <p>The directory size.</p>
-- * Name [DirectoryName] <p>The fully qualified name of the directory.</p>
-- * Description [Description] <p>The textual description for the directory.</p>
-- * ShareStatus [ShareStatus] <p>Current directory status of the shared AWS Managed Microsoft AD directory.</p>
-- * StageReason [StageReason] <p>Additional information about the directory stage.</p>
-- * Stage [DirectoryStage] <p>The current stage of the directory.</p>
-- * AccessUrl [AccessUrl] <p>The access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>. If no alias has been created for the directory, <code>&lt;alias&gt;</code> is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- * ShareMethod [ShareMethod] <p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a shared directory request (<code>HANDSHAKE</code>).</p>
-- * OwnerDirectoryDescription [OwnerDirectoryDescription] <p>Describes the AWS Managed Microsoft AD directory in the directory owner account.</p>
-- * ShareNotes [Notes] <p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>
-- * Alias [AliasName] <p>The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>
-- * SsoEnabled [SsoEnabled] <p>Indicates if single sign-on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>
-- * DesiredNumberOfDomainControllers [DesiredNumberOfDomainControllers] <p>The desired number of domain controllers in the directory if the directory is Microsoft AD.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.</p>
-- * VpcSettings [DirectoryVpcSettingsDescription] <p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.</p>
-- * Edition [DirectoryEdition] <p>The edition associated with this directory.</p>
-- * LaunchTime [LaunchTime] <p>Specifies when the directory was created.</p>
-- * ShortName [DirectoryShortName] <p>The short name of the directory.</p>
-- * Size [DirectorySize] <p>The directory size.</p>
-- @return DirectoryDescription structure as a key-value pair table
function M.DirectoryDescription(args)
	assert(args, "You must provide an argument table when creating DirectoryDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["ConnectSettings"] = args["ConnectSettings"],
		["RadiusSettings"] = args["RadiusSettings"],
		["StageLastUpdatedDateTime"] = args["StageLastUpdatedDateTime"],
		["RadiusStatus"] = args["RadiusStatus"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
		["ShareStatus"] = args["ShareStatus"],
		["StageReason"] = args["StageReason"],
		["Stage"] = args["Stage"],
		["AccessUrl"] = args["AccessUrl"],
		["ShareMethod"] = args["ShareMethod"],
		["OwnerDirectoryDescription"] = args["OwnerDirectoryDescription"],
		["ShareNotes"] = args["ShareNotes"],
		["Alias"] = args["Alias"],
		["SsoEnabled"] = args["SsoEnabled"],
		["DesiredNumberOfDomainControllers"] = args["DesiredNumberOfDomainControllers"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
		["VpcSettings"] = args["VpcSettings"],
		["Edition"] = args["Edition"],
		["LaunchTime"] = args["LaunchTime"],
		["ShortName"] = args["ShortName"],
		["Size"] = args["Size"],
	}
	asserts.AssertDirectoryDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RegisterEventTopicRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
	}
	asserts.AssertRegisterEventTopicRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Trust = { ["DirectoryId"] = true, ["StateLastUpdatedDateTime"] = true, ["LastUpdatedDateTime"] = true, ["CreatedDateTime"] = true, ["TrustStateReason"] = true, ["RemoteDomainName"] = true, ["SelectiveAuth"] = true, ["TrustType"] = true, ["TrustId"] = true, ["TrustDirection"] = true, ["TrustState"] = true, nil }

function asserts.AssertTrust(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trust to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["StateLastUpdatedDateTime"] then asserts.AssertStateLastUpdatedDateTime(struct["StateLastUpdatedDateTime"]) end
	if struct["LastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["LastUpdatedDateTime"]) end
	if struct["CreatedDateTime"] then asserts.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["TrustStateReason"] then asserts.AssertTrustStateReason(struct["TrustStateReason"]) end
	if struct["RemoteDomainName"] then asserts.AssertRemoteDomainName(struct["RemoteDomainName"]) end
	if struct["SelectiveAuth"] then asserts.AssertSelectiveAuth(struct["SelectiveAuth"]) end
	if struct["TrustType"] then asserts.AssertTrustType(struct["TrustType"]) end
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	if struct["TrustDirection"] then asserts.AssertTrustDirection(struct["TrustDirection"]) end
	if struct["TrustState"] then asserts.AssertTrustState(struct["TrustState"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trust[k], "Trust contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trust
-- <p>Describes a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory involved in the trust relationship.</p>
-- * StateLastUpdatedDateTime [StateLastUpdatedDateTime] <p>The date and time that the TrustState was last updated.</p>
-- * LastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the trust relationship was last updated.</p>
-- * CreatedDateTime [CreatedDateTime] <p>The date and time that the trust relationship was created.</p>
-- * TrustStateReason [TrustStateReason] <p>The reason for the TrustState.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.</p>
-- * SelectiveAuth [SelectiveAuth] <p>Current state of selective authentication for the trust.</p>
-- * TrustType [TrustType] <p>The trust relationship type. <code>Forest</code> is the default.</p>
-- * TrustId [TrustId] <p>The unique ID of the trust relationship.</p>
-- * TrustDirection [TrustDirection] <p>The trust relationship direction.</p>
-- * TrustState [TrustState] <p>The trust relationship state.</p>
-- @return Trust structure as a key-value pair table
function M.Trust(args)
	assert(args, "You must provide an argument table when creating Trust")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["StateLastUpdatedDateTime"] = args["StateLastUpdatedDateTime"],
		["LastUpdatedDateTime"] = args["LastUpdatedDateTime"],
		["CreatedDateTime"] = args["CreatedDateTime"],
		["TrustStateReason"] = args["TrustStateReason"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["SelectiveAuth"] = args["SelectiveAuth"],
		["TrustType"] = args["TrustType"],
		["TrustId"] = args["TrustId"],
		["TrustDirection"] = args["TrustDirection"],
		["TrustState"] = args["TrustState"],
	}
	asserts.AssertTrust(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeConditionalForwardersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConditionalForwarders"] = args["ConditionalForwarders"],
	}
	asserts.AssertDescribeConditionalForwardersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLogSubscriptionsRequest = { ["DirectoryId"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListLogSubscriptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLogSubscriptionsRequest to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLogSubscriptionsRequest[k], "ListLogSubscriptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLogSubscriptionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>If a <i>DirectoryID</i> is provided, lists only the log subscription associated with that directory. If no <i>DirectoryId</i> is provided, lists all log subscriptions associated with your AWS account. If there are no log subscriptions for the AWS account or the directory, an empty list will be returned.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return.</p>
-- * Limit [Limit] <p>The maximum number of items returned.</p>
-- @return ListLogSubscriptionsRequest structure as a key-value pair table
function M.ListLogSubscriptionsRequest(args)
	assert(args, "You must provide an argument table when creating ListLogSubscriptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListLogSubscriptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListSchemaExtensionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaExtensionsInfo"] = args["SchemaExtensionsInfo"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSchemaExtensionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnshareDirectoryRequest = { ["DirectoryId"] = true, ["UnshareTarget"] = true, nil }

function asserts.AssertUnshareDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnshareDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["UnshareTarget"], "Expected key UnshareTarget to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["UnshareTarget"] then asserts.AssertUnshareTarget(struct["UnshareTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnshareDirectoryRequest[k], "UnshareDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnshareDirectoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The identifier of the AWS Managed Microsoft AD directory that you want to stop sharing.</p>
-- * UnshareTarget [UnshareTarget] <p>Identifier for the directory consumer account with whom the directory has to be unshared.</p>
-- Required key: DirectoryId
-- Required key: UnshareTarget
-- @return UnshareDirectoryRequest structure as a key-value pair table
function M.UnshareDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating UnshareDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["UnshareTarget"] = args["UnshareTarget"],
	}
	asserts.AssertUnshareDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating AddTagsToResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectSharedDirectoryResult = { ["SharedDirectoryId"] = true, nil }

function asserts.AssertRejectSharedDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectSharedDirectoryResult to be of type 'table'")
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectSharedDirectoryResult[k], "RejectSharedDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectSharedDirectoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the shared directory in the directory consumer account.</p>
-- @return RejectSharedDirectoryResult structure as a key-value pair table
function M.RejectSharedDirectoryResult(args)
	assert(args, "You must provide an argument table when creating RejectSharedDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectoryId"] = args["SharedDirectoryId"],
	}
	asserts.AssertRejectSharedDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetUserPasswordRequest = { ["UserName"] = true, ["DirectoryId"] = true, ["NewPassword"] = true, nil }

function asserts.AssertResetUserPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetUserPasswordRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["NewPassword"], "Expected key NewPassword to exist in table")
	if struct["UserName"] then asserts.AssertCustomerUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NewPassword"] then asserts.AssertUserPassword(struct["NewPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetUserPasswordRequest[k], "ResetUserPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetUserPasswordRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [CustomerUserName] <p>The user name of the user whose password will be reset.</p>
-- * DirectoryId [DirectoryId] <p>Identifier of the AWS Managed Microsoft AD or Simple AD directory in which the user resides.</p>
-- * NewPassword [UserPassword] <p>The new password that will be reset.</p>
-- Required key: DirectoryId
-- Required key: UserName
-- Required key: NewPassword
-- @return ResetUserPasswordRequest structure as a key-value pair table
function M.ResetUserPasswordRequest(args)
	assert(args, "You must provide an argument table when creating ResetUserPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["NewPassword"] = args["NewPassword"],
	}
	asserts.AssertResetUserPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RemoveIpRoutesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["CidrIps"] = args["CidrIps"],
	}
	asserts.AssertRemoveIpRoutesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeConditionalForwardersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainNames"] = args["RemoteDomainNames"],
	}
	asserts.AssertDescribeConditionalForwardersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * CustomerUserName [UserName] <p>The user name of the service account in the on-premises directory.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC that the AD Connector is in.</p>
-- * SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC that the AD connector is in.</p>
-- * SecurityGroupId [SecurityGroupId] <p>The security group identifier for the AD Connector directory.</p>
-- * AvailabilityZones [AvailabilityZones] <p>A list of the Availability Zones that the directory is in.</p>
-- * ConnectIps [IpAddrs] <p>The IP addresses of the AD Connector servers.</p>
-- @return DirectoryConnectSettingsDescription structure as a key-value pair table
function M.DirectoryConnectSettingsDescription(args)
	assert(args, "You must provide an argument table when creating DirectoryConnectSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomerUserName"] = args["CustomerUserName"],
		["VpcId"] = args["VpcId"],
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupId"] = args["SecurityGroupId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["ConnectIps"] = args["ConnectIps"],
	}
	asserts.AssertDirectoryConnectSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * Name [DirectoryName] <p>The fully qualified name of the on-premises directory, such as <code>corp.example.com</code>.</p>
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
	assert(args, "You must provide an argument table when creating ConnectDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ConnectSettings"] = args["ConnectSettings"],
		["Description"] = args["Description"],
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Size"] = args["Size"],
	}
	asserts.AssertConnectDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDomainControllersResult = { ["NextToken"] = true, ["DomainControllers"] = true, nil }

function asserts.AssertDescribeDomainControllersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainControllersResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["DomainControllers"] then asserts.AssertDomainControllers(struct["DomainControllers"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDomainControllersResult[k], "DescribeDomainControllersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainControllersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeDomainControllers</a> retrieve the next set of items.</p>
-- * DomainControllers [DomainControllers] <p>List of the <a>DomainController</a> objects that were retrieved.</p>
-- @return DescribeDomainControllersResult structure as a key-value pair table
function M.DescribeDomainControllersResult(args)
	assert(args, "You must provide an argument table when creating DescribeDomainControllersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DomainControllers"] = args["DomainControllers"],
	}
	asserts.AssertDescribeDomainControllersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Initiates the verification of an existing trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>The unique Trust ID of the trust relationship to verify.</p>
-- Required key: TrustId
-- @return VerifyTrustRequest structure as a key-value pair table
function M.VerifyTrustRequest(args)
	assert(args, "You must provide an argument table when creating VerifyTrustRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertVerifyTrustRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogSubscription = { ["DirectoryId"] = true, ["SubscriptionCreatedDateTime"] = true, ["LogGroupName"] = true, nil }

function asserts.AssertLogSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogSubscription to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["SubscriptionCreatedDateTime"] then asserts.AssertSubscriptionCreatedDateTime(struct["SubscriptionCreatedDateTime"]) end
	if struct["LogGroupName"] then asserts.AssertLogGroupName(struct["LogGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogSubscription[k], "LogSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogSubscription
-- <p>Represents a log subscription, which tracks real-time data from a chosen log group to a specified destination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory that you want to associate with the log subscription.</p>
-- * SubscriptionCreatedDateTime [SubscriptionCreatedDateTime] <p>The date and time that the log subscription was created.</p>
-- * LogGroupName [LogGroupName] <p>The name of the log group.</p>
-- @return LogSubscription structure as a key-value pair table
function M.LogSubscription(args)
	assert(args, "You must provide an argument table when creating LogSubscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["SubscriptionCreatedDateTime"] = args["SubscriptionCreatedDateTime"],
		["LogGroupName"] = args["LogGroupName"],
	}
	asserts.AssertLogSubscription(all_args)
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
-- <p>Metadata assigned to a directory consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The optional value of the tag. The string value can be Unicode characters. The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- * Key [TagKey] <p>Required name of the tag. The string value can be Unicode characters and cannot be prefixed with "aws:". The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
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
	assert(args, "You must provide an argument table when creating AddIpRoutesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddIpRoutesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateComputerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["ComputerName"] = args["ComputerName"],
		["Password"] = args["Password"],
		["ComputerAttributes"] = args["ComputerAttributes"],
		["OrganizationalUnitDistinguishedName"] = args["OrganizationalUnitDistinguishedName"],
	}
	asserts.AssertCreateComputerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EnableRadiusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RadiusSettings"] = args["RadiusSettings"],
	}
	asserts.AssertEnableRadiusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * SecurityGroupId [SecurityGroupId] <p>The domain controller security group identifier for the directory.</p>
-- @return DirectoryVpcSettingsDescription structure as a key-value pair table
function M.DirectoryVpcSettingsDescription(args)
	assert(args, "You must provide an argument table when creating DirectoryVpcSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["SecurityGroupId"] = args["SecurityGroupId"],
	}
	asserts.AssertDirectoryVpcSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDomainControllersRequest = { ["DirectoryId"] = true, ["NextToken"] = true, ["Limit"] = true, ["DomainControllerIds"] = true, nil }

function asserts.AssertDescribeDomainControllersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainControllersRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["DomainControllerIds"] then asserts.AssertDomainControllerIds(struct["DomainControllerIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDomainControllersRequest[k], "DescribeDomainControllersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainControllersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier of the directory for which to retrieve the domain controller information.</p>
-- * NextToken [NextToken] <p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call to <a>DescribeDomainControllers</a>. Pass null if this is the first call. </p>
-- * Limit [Limit] <p>The maximum number of items to return.</p>
-- * DomainControllerIds [DomainControllerIds] <p>A list of identifiers for the domain controllers whose information will be provided.</p>
-- Required key: DirectoryId
-- @return DescribeDomainControllersRequest structure as a key-value pair table
function M.DescribeDomainControllersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDomainControllersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["DomainControllerIds"] = args["DomainControllerIds"],
	}
	asserts.AssertDescribeDomainControllersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateTrustResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertCreateTrustResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RemoveIpRoutesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveIpRoutesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainController = { ["Status"] = true, ["DirectoryId"] = true, ["VpcId"] = true, ["DomainControllerId"] = true, ["DnsIpAddr"] = true, ["AvailabilityZone"] = true, ["LaunchTime"] = true, ["StatusReason"] = true, ["SubnetId"] = true, ["StatusLastUpdatedDateTime"] = true, nil }

function asserts.AssertDomainController(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainController to be of type 'table'")
	if struct["Status"] then asserts.AssertDomainControllerStatus(struct["Status"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["DomainControllerId"] then asserts.AssertDomainControllerId(struct["DomainControllerId"]) end
	if struct["DnsIpAddr"] then asserts.AssertIpAddr(struct["DnsIpAddr"]) end
	if struct["AvailabilityZone"] then asserts.AssertAvailabilityZone(struct["AvailabilityZone"]) end
	if struct["LaunchTime"] then asserts.AssertLaunchTime(struct["LaunchTime"]) end
	if struct["StatusReason"] then asserts.AssertDomainControllerStatusReason(struct["StatusReason"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["StatusLastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["StatusLastUpdatedDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainController[k], "DomainController contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainController
-- <p>Contains information about the domain controllers for a specified directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DomainControllerStatus] <p>The status of the domain controller.</p>
-- * DirectoryId [DirectoryId] <p>Identifier of the directory where the domain controller resides.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC that contains the domain controller.</p>
-- * DomainControllerId [DomainControllerId] <p>Identifies a specific domain controller in the directory.</p>
-- * DnsIpAddr [IpAddr] <p>The IP address of the domain controller.</p>
-- * AvailabilityZone [AvailabilityZone] <p>The Availability Zone where the domain controller is located.</p>
-- * LaunchTime [LaunchTime] <p>Specifies when the domain controller was created.</p>
-- * StatusReason [DomainControllerStatusReason] <p>A description of the domain controller state.</p>
-- * SubnetId [SubnetId] <p>Identifier of the subnet in the VPC that contains the domain controller.</p>
-- * StatusLastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the status was last updated.</p>
-- @return DomainController structure as a key-value pair table
function M.DomainController(args)
	assert(args, "You must provide an argument table when creating DomainController")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DirectoryId"] = args["DirectoryId"],
		["VpcId"] = args["VpcId"],
		["DomainControllerId"] = args["DomainControllerId"],
		["DnsIpAddr"] = args["DnsIpAddr"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["LaunchTime"] = args["LaunchTime"],
		["StatusReason"] = args["StatusReason"],
		["SubnetId"] = args["SubnetId"],
		["StatusLastUpdatedDateTime"] = args["StatusLastUpdatedDateTime"],
	}
	asserts.AssertDomainController(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteConditionalForwarderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
	}
	asserts.AssertDeleteConditionalForwarderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLogSubscriptionRequest = { ["DirectoryId"] = true, ["LogGroupName"] = true, nil }

function asserts.AssertCreateLogSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogSubscriptionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["LogGroupName"], "Expected key LogGroupName to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["LogGroupName"] then asserts.AssertLogGroupName(struct["LogGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLogSubscriptionRequest[k], "CreateLogSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory to which you want to subscribe and receive real-time logs to your specified CloudWatch log group.</p>
-- * LogGroupName [LogGroupName] <p>The name of the CloudWatch log group where the real-time domain controller logs are forwarded.</p>
-- Required key: DirectoryId
-- Required key: LogGroupName
-- @return CreateLogSubscriptionRequest structure as a key-value pair table
function M.CreateLogSubscriptionRequest(args)
	assert(args, "You must provide an argument table when creating CreateLogSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["LogGroupName"] = args["LogGroupName"],
	}
	asserts.AssertCreateLogSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Computer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComputerName"] = args["ComputerName"],
		["ComputerAttributes"] = args["ComputerAttributes"],
		["ComputerId"] = args["ComputerId"],
	}
	asserts.AssertComputer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * CustomerUserName [UserName] <p>The user name of an account in the on-premises directory that is used to connect to the directory. This account must have the following permissions:</p> <ul> <li> <p>Read users and groups</p> </li> <li> <p>Create computer objects</p> </li> <li> <p>Join computers to the domain</p> </li> </ul>
-- * SubnetIds [SubnetIds] <p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC in which the AD Connector is created.</p>
-- Required key: VpcId
-- Required key: SubnetIds
-- Required key: CustomerDnsIps
-- Required key: CustomerUserName
-- @return DirectoryConnectSettings structure as a key-value pair table
function M.DirectoryConnectSettings(args)
	assert(args, "You must provide an argument table when creating DirectoryConnectSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomerDnsIps"] = args["CustomerDnsIps"],
		["CustomerUserName"] = args["CustomerUserName"],
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
	}
	asserts.AssertDirectoryConnectSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNumberOfDomainControllersResult = { nil }

function asserts.AssertUpdateNumberOfDomainControllersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNumberOfDomainControllersResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateNumberOfDomainControllersResult[k], "UpdateNumberOfDomainControllersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNumberOfDomainControllersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateNumberOfDomainControllersResult structure as a key-value pair table
function M.UpdateNumberOfDomainControllersResult(args)
	assert(args, "You must provide an argument table when creating UpdateNumberOfDomainControllersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateNumberOfDomainControllersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListSchemaExtensionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSchemaExtensionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeEventTopicsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventTopics"] = args["EventTopics"],
	}
	asserts.AssertDescribeEventTopicsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeregisterEventTopicRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
	}
	asserts.AssertDeregisterEventTopicRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating VerifyTrustResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertVerifyTrustResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateConditionalForwarderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateConditionalForwarderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * DirectoryDescriptions [DirectoryDescriptions] <p>The list of <a>DirectoryDescription</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <code>Limit</code> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>
-- * NextToken [NextToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next set of items.</p>
-- @return DescribeDirectoriesResult structure as a key-value pair table
function M.DescribeDirectoriesResult(args)
	assert(args, "You must provide an argument table when creating DescribeDirectoriesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryDescriptions"] = args["DirectoryDescriptions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeDirectoriesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetSnapshotLimitsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertGetSnapshotLimitsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMicrosoftADRequest = { ["Name"] = true, ["VpcSettings"] = true, ["Edition"] = true, ["ShortName"] = true, ["Password"] = true, ["Description"] = true, nil }

function asserts.AssertCreateMicrosoftADRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMicrosoftADRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["VpcSettings"], "Expected key VpcSettings to exist in table")
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettings(struct["VpcSettings"]) end
	if struct["Edition"] then asserts.AssertDirectoryEdition(struct["Edition"]) end
	if struct["ShortName"] then asserts.AssertDirectoryShortName(struct["ShortName"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMicrosoftADRequest[k], "CreateMicrosoftADRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMicrosoftADRequest
-- <p>Creates an AWS Managed Microsoft AD directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DirectoryName] <p>The fully qualified domain name for the directory, such as <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need to be publicly resolvable.</p>
-- * VpcSettings [DirectoryVpcSettings] <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
-- * Edition [DirectoryEdition] <p>AWS Managed Microsoft AD is available in two editions: Standard and Enterprise. Enterprise is the default.</p>
-- * ShortName [DirectoryShortName] <p>The NetBIOS name for your domain. A short identifier for your domain, such as <code>CORP</code>. If you don't specify a NetBIOS name, it will default to the first part of your directory DNS. For example, <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
-- * Password [Password] <p>The password for the default administrative user named <code>Admin</code>.</p>
-- * Description [Description] <p>A textual description for the directory. This label will appear on the AWS console <code>Directory Details</code> page after the directory is created.</p>
-- Required key: Name
-- Required key: Password
-- Required key: VpcSettings
-- @return CreateMicrosoftADRequest structure as a key-value pair table
function M.CreateMicrosoftADRequest(args)
	assert(args, "You must provide an argument table when creating CreateMicrosoftADRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["VpcSettings"] = args["VpcSettings"],
		["Edition"] = args["Edition"],
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateMicrosoftADRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTrustResult = { ["TrustId"] = true, ["RequestId"] = true, nil }

function asserts.AssertUpdateTrustResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrustResult to be of type 'table'")
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrustResult[k], "UpdateTrustResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrustResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustId [TrustId] <p>Identifier of the trust relationship.</p>
-- * RequestId [RequestId] 
-- @return UpdateTrustResult structure as a key-value pair table
function M.UpdateTrustResult(args)
	assert(args, "You must provide an argument table when creating UpdateTrustResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
		["RequestId"] = args["RequestId"],
	}
	asserts.AssertUpdateTrustResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeEventTopicsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["TopicNames"] = args["TopicNames"],
	}
	asserts.AssertDescribeEventTopicsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Describes the trust relationships for a particular AWS Managed Microsoft AD directory. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [Limit] <p>The maximum number of objects to return.</p>
-- * DirectoryId [DirectoryId] <p>The Directory ID of the AWS directory that is a part of the requested trust relationship.</p>
-- * NextToken [NextToken] <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
-- * TrustIds [TrustIds] <p>A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
-- @return DescribeTrustsRequest structure as a key-value pair table
function M.DescribeTrustsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrustsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["DirectoryId"] = args["DirectoryId"],
		["NextToken"] = args["NextToken"],
		["TrustIds"] = args["TrustIds"],
	}
	asserts.AssertDescribeTrustsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating UpdateRadiusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateRadiusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DisableRadiusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDisableRadiusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SchemaExtensionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["Description"] = args["Description"],
		["SchemaExtensionStatus"] = args["SchemaExtensionStatus"],
		["SchemaExtensionId"] = args["SchemaExtensionId"],
		["EndDateTime"] = args["EndDateTime"],
		["StartDateTime"] = args["StartDateTime"],
		["SchemaExtensionStatusReason"] = args["SchemaExtensionStatusReason"],
	}
	asserts.AssertSchemaExtensionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["Alias"] = args["Alias"],
	}
	asserts.AssertCreateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNumberOfDomainControllersRequest = { ["DesiredNumber"] = true, ["DirectoryId"] = true, nil }

function asserts.AssertUpdateNumberOfDomainControllersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNumberOfDomainControllersRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["DesiredNumber"], "Expected key DesiredNumber to exist in table")
	if struct["DesiredNumber"] then asserts.AssertDesiredNumberOfDomainControllers(struct["DesiredNumber"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNumberOfDomainControllersRequest[k], "UpdateNumberOfDomainControllersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNumberOfDomainControllersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DesiredNumber [DesiredNumberOfDomainControllers] <p>The number of domain controllers desired in the directory.</p>
-- * DirectoryId [DirectoryId] <p>Identifier of the directory to which the domain controllers will be added or removed.</p>
-- Required key: DirectoryId
-- Required key: DesiredNumber
-- @return UpdateNumberOfDomainControllersRequest structure as a key-value pair table
function M.UpdateNumberOfDomainControllersRequest(args)
	assert(args, "You must provide an argument table when creating UpdateNumberOfDomainControllersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DesiredNumber"] = args["DesiredNumber"],
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertUpdateNumberOfDomainControllersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ConditionalForwarder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
		["ReplicationScope"] = args["ReplicationScope"],
	}
	asserts.AssertConditionalForwarder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating AddIpRoutesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["UpdateSecurityGroupForDirectoryControllers"] = args["UpdateSecurityGroupForDirectoryControllers"],
		["IpRoutes"] = args["IpRoutes"],
	}
	asserts.AssertAddIpRoutesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RegisterEventTopicResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRegisterEventTopicResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTrustRequest = { ["TrustPassword"] = true, ["DirectoryId"] = true, ["RemoteDomainName"] = true, ["ConditionalForwarderIpAddrs"] = true, ["SelectiveAuth"] = true, ["TrustType"] = true, ["TrustDirection"] = true, nil }

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
	if struct["SelectiveAuth"] then asserts.AssertSelectiveAuth(struct["SelectiveAuth"]) end
	if struct["TrustType"] then asserts.AssertTrustType(struct["TrustType"]) end
	if struct["TrustDirection"] then asserts.AssertTrustDirection(struct["TrustDirection"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrustRequest[k], "CreateTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrustRequest
-- <p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrustPassword [TrustPassword] <p>The trust password. The must be the same password that was used when creating the trust relationship on the external domain.</p>
-- * DirectoryId [DirectoryId] <p>The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.</p>
-- * RemoteDomainName [RemoteDomainName] <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.</p>
-- * ConditionalForwarderIpAddrs [DnsIpAddrs] <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
-- * SelectiveAuth [SelectiveAuth] <p>Optional parameter to enable selective authentication for the trust.</p>
-- * TrustType [TrustType] <p>The trust relationship type. <code>Forest</code> is the default.</p>
-- * TrustDirection [TrustDirection] <p>The direction of the trust relationship.</p>
-- Required key: DirectoryId
-- Required key: RemoteDomainName
-- Required key: TrustPassword
-- Required key: TrustDirection
-- @return CreateTrustRequest structure as a key-value pair table
function M.CreateTrustRequest(args)
	assert(args, "You must provide an argument table when creating CreateTrustRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustPassword"] = args["TrustPassword"],
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["ConditionalForwarderIpAddrs"] = args["ConditionalForwarderIpAddrs"],
		["SelectiveAuth"] = args["SelectiveAuth"],
		["TrustType"] = args["TrustType"],
		["TrustDirection"] = args["TrustDirection"],
	}
	asserts.AssertCreateTrustRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CancelSchemaExtensionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["SchemaExtensionId"] = args["SchemaExtensionId"],
	}
	asserts.AssertCancelSchemaExtensionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OwnerDirectoryDescription = { ["DirectoryId"] = true, ["DnsIpAddrs"] = true, ["VpcSettings"] = true, ["RadiusSettings"] = true, ["RadiusStatus"] = true, ["AccountId"] = true, nil }

function asserts.AssertOwnerDirectoryDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OwnerDirectoryDescription to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["DnsIpAddrs"] then asserts.AssertDnsIpAddrs(struct["DnsIpAddrs"]) end
	if struct["VpcSettings"] then asserts.AssertDirectoryVpcSettingsDescription(struct["VpcSettings"]) end
	if struct["RadiusSettings"] then asserts.AssertRadiusSettings(struct["RadiusSettings"]) end
	if struct["RadiusStatus"] then asserts.AssertRadiusStatus(struct["RadiusStatus"]) end
	if struct["AccountId"] then asserts.AssertCustomerId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.OwnerDirectoryDescription[k], "OwnerDirectoryDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OwnerDirectoryDescription
-- <p>Describes the directory owner account details that have been shared to the directory consumer account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier of the AWS Managed Microsoft AD directory in the directory owner account.</p>
-- * DnsIpAddrs [DnsIpAddrs] <p>IP address of the directory’s domain controllers.</p>
-- * VpcSettings [DirectoryVpcSettingsDescription] <p>Information about the VPC settings for the directory.</p>
-- * RadiusSettings [RadiusSettings] <p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>
-- * RadiusStatus [RadiusStatus] <p>Information about the status of the RADIUS server.</p>
-- * AccountId [CustomerId] <p>Identifier of the directory owner account.</p>
-- @return OwnerDirectoryDescription structure as a key-value pair table
function M.OwnerDirectoryDescription(args)
	assert(args, "You must provide an argument table when creating OwnerDirectoryDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
		["VpcSettings"] = args["VpcSettings"],
		["RadiusSettings"] = args["RadiusSettings"],
		["RadiusStatus"] = args["RadiusStatus"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertOwnerDirectoryDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating UpdateRadiusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RadiusSettings"] = args["RadiusSettings"],
	}
	asserts.AssertUpdateRadiusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Snapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DirectoryId"] = args["DirectoryId"],
		["Name"] = args["Name"],
		["StartTime"] = args["StartTime"],
		["SnapshotId"] = args["SnapshotId"],
		["Type"] = args["Type"],
	}
	asserts.AssertSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSharedDirectoriesResult = { ["NextToken"] = true, ["SharedDirectories"] = true, nil }

function asserts.AssertDescribeSharedDirectoriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSharedDirectoriesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SharedDirectories"] then asserts.AssertSharedDirectories(struct["SharedDirectories"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSharedDirectoriesResult[k], "DescribeSharedDirectoriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSharedDirectoriesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If not null, token that indicates that more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeSharedDirectories</a> to retrieve the next set of items.</p>
-- * SharedDirectories [SharedDirectories] <p>A list of all shared directories in your account.</p>
-- @return DescribeSharedDirectoriesResult structure as a key-value pair table
function M.DescribeSharedDirectoriesResult(args)
	assert(args, "You must provide an argument table when creating DescribeSharedDirectoriesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SharedDirectories"] = args["SharedDirectories"],
	}
	asserts.AssertDescribeSharedDirectoriesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateMicrosoftADResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertCreateMicrosoftADResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EnableSsoResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableSsoResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * Password [Password] <p>The password for the directory administrator. The directory creation process creates a directory administrator account with the user name <code>Administrator</code> and this password.</p>
-- * Size [DirectorySize] <p>The size of the directory.</p>
-- Required key: Name
-- Required key: Password
-- Required key: Size
-- @return CreateDirectoryRequest structure as a key-value pair table
function M.CreateDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating CreateDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["VpcSettings"] = args["VpcSettings"],
		["Description"] = args["Description"],
		["ShortName"] = args["ShortName"],
		["Password"] = args["Password"],
		["Size"] = args["Size"],
	}
	asserts.AssertCreateDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RestoreFromSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertRestoreFromSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Attribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeSnapshotsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Snapshots"] = args["Snapshots"],
	}
	asserts.AssertDescribeSnapshotsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetDirectoryLimitsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetDirectoryLimitsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateSnapshotRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSnapshotRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * NextToken [NextToken] <p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
-- * Limit [Limit] <p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>
-- @return DescribeDirectoriesRequest structure as a key-value pair table
function M.DescribeDirectoriesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDirectoriesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryIds"] = args["DirectoryIds"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeDirectoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLogSubscriptionResult = { nil }

function asserts.AssertDeleteLogSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogSubscriptionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLogSubscriptionResult[k], "DeleteLogSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLogSubscriptionResult structure as a key-value pair table
function M.DeleteLogSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating DeleteLogSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLogSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertCreateSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CancelSchemaExtensionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelSchemaExtensionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating UpdateConditionalForwarderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
	}
	asserts.AssertUpdateConditionalForwarderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnshareDirectoryResult = { ["SharedDirectoryId"] = true, nil }

function asserts.AssertUnshareDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnshareDirectoryResult to be of type 'table'")
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnshareDirectoryResult[k], "UnshareDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnshareDirectoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the directory stored in the directory consumer account that is to be unshared from the specified directory (<code>DirectoryId</code>).</p>
-- @return UnshareDirectoryResult structure as a key-value pair table
function M.UnshareDirectoryResult(args)
	assert(args, "You must provide an argument table when creating UnshareDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectoryId"] = args["SharedDirectoryId"],
	}
	asserts.AssertUnshareDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareTarget = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertShareTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareTarget to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertTargetType(struct["Type"]) end
	if struct["Id"] then asserts.AssertTargetId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareTarget[k], "ShareTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareTarget
-- <p>Identifier that contains details about the directory consumer account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [TargetType] <p>Type of identifier to be used in the <code>Id</code> field.</p>
-- * Id [TargetId] <p>Identifier of the directory consumer account.</p>
-- Required key: Id
-- Required key: Type
-- @return ShareTarget structure as a key-value pair table
function M.ShareTarget(args)
	assert(args, "You must provide an argument table when creating ShareTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertShareTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateConditionalForwarderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["RemoteDomainName"] = args["RemoteDomainName"],
		["DnsIpAddrs"] = args["DnsIpAddrs"],
	}
	asserts.AssertCreateConditionalForwarderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLogSubscriptionsResult = { ["NextToken"] = true, ["LogSubscriptions"] = true, nil }

function asserts.AssertListLogSubscriptionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLogSubscriptionsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["LogSubscriptions"] then asserts.AssertLogSubscriptions(struct["LogSubscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLogSubscriptionsResult[k], "ListLogSubscriptionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLogSubscriptionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return.</p>
-- * LogSubscriptions [LogSubscriptions] <p>A list of active <a>LogSubscription</a> objects for calling the AWS account.</p>
-- @return ListLogSubscriptionsResult structure as a key-value pair table
function M.ListLogSubscriptionsResult(args)
	assert(args, "You must provide an argument table when creating ListLogSubscriptionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["LogSubscriptions"] = args["LogSubscriptions"],
	}
	asserts.AssertListLogSubscriptionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating AddTagsToResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddTagsToResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeregisterEventTopicResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterEventTopicResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetUserPasswordResult = { nil }

function asserts.AssertResetUserPasswordResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetUserPasswordResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResetUserPasswordResult[k], "ResetUserPasswordResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetUserPasswordResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResetUserPasswordResult structure as a key-value pair table
function M.ResetUserPasswordResult(args)
	assert(args, "You must provide an argument table when creating ResetUserPasswordResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResetUserPasswordResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteConditionalForwarderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConditionalForwarderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ConnectDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertConnectDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating StartSchemaExtensionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaExtensionId"] = args["SchemaExtensionId"],
	}
	asserts.AssertStartSchemaExtensionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * SharedSecret [RadiusSharedSecret] <p>Required for enabling RADIUS on the directory.</p>
-- @return RadiusSettings structure as a key-value pair table
function M.RadiusSettings(args)
	assert(args, "You must provide an argument table when creating RadiusSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayLabel"] = args["DisplayLabel"],
		["UseSameUsername"] = args["UseSameUsername"],
		["RadiusTimeout"] = args["RadiusTimeout"],
		["AuthenticationProtocol"] = args["AuthenticationProtocol"],
		["RadiusPort"] = args["RadiusPort"],
		["RadiusRetries"] = args["RadiusRetries"],
		["RadiusServers"] = args["RadiusServers"],
		["SharedSecret"] = args["SharedSecret"],
	}
	asserts.AssertRadiusSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateComputerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Computer"] = args["Computer"],
	}
	asserts.AssertCreateComputerResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EnableSsoRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["Password"] = args["Password"],
	}
	asserts.AssertEnableSsoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EnableRadiusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableRadiusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EventTopic")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedDateTime"] = args["CreatedDateTime"],
		["DirectoryId"] = args["DirectoryId"],
		["TopicName"] = args["TopicName"],
		["TopicArn"] = args["TopicArn"],
		["Status"] = args["Status"],
	}
	asserts.AssertEventTopic(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDeleteDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLogSubscriptionRequest = { ["DirectoryId"] = true, nil }

function asserts.AssertDeleteLogSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogSubscriptionRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLogSubscriptionRequest[k], "DeleteLogSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier (ID) of the directory whose log subscription you want to delete.</p>
-- Required key: DirectoryId
-- @return DeleteLogSubscriptionRequest structure as a key-value pair table
function M.DeleteLogSubscriptionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLogSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
	}
	asserts.AssertDeleteLogSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating IpRouteInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["IpRouteStatusReason"] = args["IpRouteStatusReason"],
		["Description"] = args["Description"],
		["AddedDateTime"] = args["AddedDateTime"],
		["CidrIp"] = args["CidrIp"],
		["IpRouteStatusMsg"] = args["IpRouteStatusMsg"],
	}
	asserts.AssertIpRouteInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetDirectoryLimitsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryLimits"] = args["DirectoryLimits"],
	}
	asserts.AssertGetDirectoryLimitsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareDirectoryRequest = { ["DirectoryId"] = true, ["ShareNotes"] = true, ["ShareMethod"] = true, ["ShareTarget"] = true, nil }

function asserts.AssertShareDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["ShareTarget"], "Expected key ShareTarget to exist in table")
	assert(struct["ShareMethod"], "Expected key ShareMethod to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ShareNotes"] then asserts.AssertNotes(struct["ShareNotes"]) end
	if struct["ShareMethod"] then asserts.AssertShareMethod(struct["ShareMethod"]) end
	if struct["ShareTarget"] then asserts.AssertShareTarget(struct["ShareTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareDirectoryRequest[k], "ShareDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareDirectoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>Identifier of the AWS Managed Microsoft AD directory that you want to share with other AWS accounts.</p>
-- * ShareNotes [Notes] <p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>
-- * ShareMethod [ShareMethod] <p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a directory sharing request (<code>HANDSHAKE</code>).</p>
-- * ShareTarget [ShareTarget] <p>Identifier for the directory consumer account with whom the directory is to be shared.</p>
-- Required key: DirectoryId
-- Required key: ShareTarget
-- Required key: ShareMethod
-- @return ShareDirectoryRequest structure as a key-value pair table
function M.ShareDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating ShareDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["ShareNotes"] = args["ShareNotes"],
		["ShareMethod"] = args["ShareMethod"],
		["ShareTarget"] = args["ShareTarget"],
	}
	asserts.AssertShareDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SnapshotLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManualSnapshotsCurrentCount"] = args["ManualSnapshotsCurrentCount"],
		["ManualSnapshotsLimit"] = args["ManualSnapshotsLimit"],
		["ManualSnapshotsLimitReached"] = args["ManualSnapshotsLimitReached"],
	}
	asserts.AssertSnapshotLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLogSubscriptionResult = { nil }

function asserts.AssertCreateLogSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogSubscriptionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateLogSubscriptionResult[k], "CreateLogSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateLogSubscriptionResult structure as a key-value pair table
function M.CreateLogSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating CreateLogSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateLogSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SharedDirectory = { ["OwnerDirectoryId"] = true, ["ShareNotes"] = true, ["ShareMethod"] = true, ["CreatedDateTime"] = true, ["SharedAccountId"] = true, ["SharedDirectoryId"] = true, ["ShareStatus"] = true, ["OwnerAccountId"] = true, ["LastUpdatedDateTime"] = true, nil }

function asserts.AssertSharedDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharedDirectory to be of type 'table'")
	if struct["OwnerDirectoryId"] then asserts.AssertDirectoryId(struct["OwnerDirectoryId"]) end
	if struct["ShareNotes"] then asserts.AssertNotes(struct["ShareNotes"]) end
	if struct["ShareMethod"] then asserts.AssertShareMethod(struct["ShareMethod"]) end
	if struct["CreatedDateTime"] then asserts.AssertCreatedDateTime(struct["CreatedDateTime"]) end
	if struct["SharedAccountId"] then asserts.AssertCustomerId(struct["SharedAccountId"]) end
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	if struct["ShareStatus"] then asserts.AssertShareStatus(struct["ShareStatus"]) end
	if struct["OwnerAccountId"] then asserts.AssertCustomerId(struct["OwnerAccountId"]) end
	if struct["LastUpdatedDateTime"] then asserts.AssertLastUpdatedDateTime(struct["LastUpdatedDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.SharedDirectory[k], "SharedDirectory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharedDirectory
-- <p>Details about the shared directory in the directory owner account for which the share request in the directory consumer account has been accepted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OwnerDirectoryId [DirectoryId] <p>Identifier of the directory in the directory owner account. </p>
-- * ShareNotes [Notes] <p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>
-- * ShareMethod [ShareMethod] <p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a shared directory request (<code>HANDSHAKE</code>).</p>
-- * CreatedDateTime [CreatedDateTime] <p>The date and time that the shared directory was created.</p>
-- * SharedAccountId [CustomerId] <p>Identifier of the directory consumer account that has access to the shared directory (<code>OwnerDirectoryId</code>) in the directory owner account.</p>
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.</p>
-- * ShareStatus [ShareStatus] <p>Current directory status of the shared AWS Managed Microsoft AD directory.</p>
-- * OwnerAccountId [CustomerId] <p>Identifier of the directory owner account, which contains the directory that has been shared to the consumer account.</p>
-- * LastUpdatedDateTime [LastUpdatedDateTime] <p>The date and time that the shared directory was last updated.</p>
-- @return SharedDirectory structure as a key-value pair table
function M.SharedDirectory(args)
	assert(args, "You must provide an argument table when creating SharedDirectory")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OwnerDirectoryId"] = args["OwnerDirectoryId"],
		["ShareNotes"] = args["ShareNotes"],
		["ShareMethod"] = args["ShareMethod"],
		["CreatedDateTime"] = args["CreatedDateTime"],
		["SharedAccountId"] = args["SharedAccountId"],
		["SharedDirectoryId"] = args["SharedDirectoryId"],
		["ShareStatus"] = args["ShareStatus"],
		["OwnerAccountId"] = args["OwnerAccountId"],
		["LastUpdatedDateTime"] = args["LastUpdatedDateTime"],
	}
	asserts.AssertSharedDirectory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating IpRoute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["CidrIp"] = args["CidrIp"],
	}
	asserts.AssertIpRoute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * CloudOnlyMicrosoftADCurrentCount [Limit] <p>The current number of AWS Managed Microsoft AD directories in the region.</p>
-- * ConnectedDirectoriesLimitReached [ConnectedDirectoriesLimitReached] <p>Indicates if the connected directory limit has been reached.</p>
-- * ConnectedDirectoriesLimit [Limit] <p>The maximum number of connected directories allowed in the region.</p>
-- * CloudOnlyDirectoriesLimit [Limit] <p>The maximum number of cloud directories allowed in the region.</p>
-- * CloudOnlyMicrosoftADLimit [Limit] <p>The maximum number of AWS Managed Microsoft AD directories allowed in the region.</p>
-- * ConnectedDirectoriesCurrentCount [Limit] <p>The current number of connected directories in the region.</p>
-- * CloudOnlyMicrosoftADLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the AWS Managed Microsoft AD directory limit has been reached.</p>
-- * CloudOnlyDirectoriesCurrentCount [Limit] <p>The current number of cloud directories in the region.</p>
-- * CloudOnlyDirectoriesLimitReached [CloudOnlyDirectoriesLimitReached] <p>Indicates if the cloud directory limit has been reached.</p>
-- @return DirectoryLimits structure as a key-value pair table
function M.DirectoryLimits(args)
	assert(args, "You must provide an argument table when creating DirectoryLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertDirectoryLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareDirectoryResult = { ["SharedDirectoryId"] = true, nil }

function asserts.AssertShareDirectoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareDirectoryResult to be of type 'table'")
	if struct["SharedDirectoryId"] then asserts.AssertDirectoryId(struct["SharedDirectoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareDirectoryResult[k], "ShareDirectoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareDirectoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedDirectoryId [DirectoryId] <p>Identifier of the directory that is stored in the directory consumer account that is shared from the specified directory (<code>DirectoryId</code>).</p>
-- @return ShareDirectoryResult structure as a key-value pair table
function M.ShareDirectoryResult(args)
	assert(args, "You must provide an argument table when creating ShareDirectoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedDirectoryId"] = args["SharedDirectoryId"],
	}
	asserts.AssertShareDirectoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTrustRequest = { ["SelectiveAuth"] = true, ["TrustId"] = true, nil }

function asserts.AssertUpdateTrustRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrustRequest to be of type 'table'")
	assert(struct["TrustId"], "Expected key TrustId to exist in table")
	if struct["SelectiveAuth"] then asserts.AssertSelectiveAuth(struct["SelectiveAuth"]) end
	if struct["TrustId"] then asserts.AssertTrustId(struct["TrustId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrustRequest[k], "UpdateTrustRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrustRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SelectiveAuth [SelectiveAuth] <p>Updates selective authentication for the trust.</p>
-- * TrustId [TrustId] <p>Identifier of the trust relationship.</p>
-- Required key: TrustId
-- @return UpdateTrustRequest structure as a key-value pair table
function M.UpdateTrustRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTrustRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SelectiveAuth"] = args["SelectiveAuth"],
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertUpdateTrustRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteTrustResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrustId"] = args["TrustId"],
	}
	asserts.AssertDeleteTrustResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating UpdateConditionalForwarderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateConditionalForwarderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DisableRadiusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableRadiusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating StartSchemaExtensionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateSnapshotBeforeSchemaExtension"] = args["CreateSnapshotBeforeSchemaExtension"],
		["DirectoryId"] = args["DirectoryId"],
		["LdifContent"] = args["LdifContent"],
		["Description"] = args["Description"],
	}
	asserts.AssertStartSchemaExtensionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating RestoreFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRestoreFromSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSharedDirectoriesRequest = { ["Limit"] = true, ["OwnerDirectoryId"] = true, ["NextToken"] = true, ["SharedDirectoryIds"] = true, nil }

function asserts.AssertDescribeSharedDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSharedDirectoriesRequest to be of type 'table'")
	assert(struct["OwnerDirectoryId"], "Expected key OwnerDirectoryId to exist in table")
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["OwnerDirectoryId"] then asserts.AssertDirectoryId(struct["OwnerDirectoryId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SharedDirectoryIds"] then asserts.AssertDirectoryIds(struct["SharedDirectoryIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSharedDirectoriesRequest[k], "DescribeSharedDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSharedDirectoriesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [Limit] <p>The number of shared directories to return in the response object.</p>
-- * OwnerDirectoryId [DirectoryId] <p>Returns the identifier of the directory in the directory owner account. </p>
-- * NextToken [NextToken] <p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>
-- * SharedDirectoryIds [DirectoryIds] <p>A list of identifiers of all shared directories in your account. </p>
-- Required key: OwnerDirectoryId
-- @return DescribeSharedDirectoriesRequest structure as a key-value pair table
function M.DescribeSharedDirectoriesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSharedDirectoriesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["OwnerDirectoryId"] = args["OwnerDirectoryId"],
		["NextToken"] = args["NextToken"],
		["SharedDirectoryIds"] = args["SharedDirectoryIds"],
	}
	asserts.AssertDescribeSharedDirectoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetId(str)
	asserts.AssertTargetId(str)
	return str
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

function asserts.AssertUserPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPassword to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserPassword(str)
	asserts.AssertUserPassword(str)
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

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
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

function asserts.AssertNotes(str)
	assert(str)
	assert(type(str) == "string", "Expected Notes to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Notes(str)
	asserts.AssertNotes(str)
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

function asserts.AssertTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetType to be of type 'string'")
end

--  
function M.TargetType(str)
	asserts.AssertTargetType(str)
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

function asserts.AssertCustomerUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerUserName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomerUserName(str)
	asserts.AssertCustomerUserName(str)
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

function asserts.AssertSelectiveAuth(str)
	assert(str)
	assert(type(str) == "string", "Expected SelectiveAuth to be of type 'string'")
end

--  
function M.SelectiveAuth(str)
	asserts.AssertSelectiveAuth(str)
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

function asserts.AssertShareMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareMethod to be of type 'string'")
end

--  
function M.ShareMethod(str)
	asserts.AssertShareMethod(str)
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

function asserts.AssertDomainControllerStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainControllerStatusReason to be of type 'string'")
end

--  
function M.DomainControllerStatusReason(str)
	asserts.AssertDomainControllerStatusReason(str)
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

function asserts.AssertDirectoryEdition(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryEdition to be of type 'string'")
end

--  
function M.DirectoryEdition(str)
	asserts.AssertDirectoryEdition(str)
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

function asserts.AssertCustomerId(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerId to be of type 'string'")
end

--  
function M.CustomerId(str)
	asserts.AssertCustomerId(str)
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

function asserts.AssertDomainControllerStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainControllerStatus to be of type 'string'")
end

--  
function M.DomainControllerStatus(str)
	asserts.AssertDomainControllerStatus(str)
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

function asserts.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogGroupName(str)
	asserts.AssertLogGroupName(str)
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

function asserts.AssertDomainControllerId(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainControllerId to be of type 'string'")
end

--  
function M.DomainControllerId(str)
	asserts.AssertDomainControllerId(str)
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

function asserts.AssertShareStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareStatus to be of type 'string'")
end

--  
function M.ShareStatus(str)
	asserts.AssertShareStatus(str)
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

function asserts.AssertTrustStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TrustStateReason to be of type 'string'")
end

--  
function M.TrustStateReason(str)
	asserts.AssertTrustStateReason(str)
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

function asserts.AssertDesiredNumberOfDomainControllers(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DesiredNumberOfDomainControllers to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.DesiredNumberOfDomainControllers(integer)
	asserts.AssertDesiredNumberOfDomainControllers(integer)
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

function asserts.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UpdateSecurityGroupForDirectoryControllers to be of type 'boolean'")
end

function M.UpdateSecurityGroupForDirectoryControllers(boolean)
	asserts.AssertUpdateSecurityGroupForDirectoryControllers(boolean)
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

function asserts.AssertSubscriptionCreatedDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected SubscriptionCreatedDateTime to be of type 'string'")
end

function M.SubscriptionCreatedDateTime(timestamp)
	asserts.AssertSubscriptionCreatedDateTime(timestamp)
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

function asserts.AssertSharedDirectories(list)
	assert(list)
	assert(type(list) == "table", "Expected SharedDirectories to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSharedDirectory(v)
	end
end

--  
-- List of SharedDirectory objects
function M.SharedDirectories(list)
	asserts.AssertSharedDirectories(list)
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

function asserts.AssertLogSubscriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected LogSubscriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogSubscription(v)
	end
end

--  
-- List of LogSubscription objects
function M.LogSubscriptions(list)
	asserts.AssertLogSubscriptions(list)
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

function asserts.AssertDomainControllers(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainControllers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainController(v)
	end
end

--  
-- List of DomainController objects
function M.DomainControllers(list)
	asserts.AssertDomainControllers(list)
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

function asserts.AssertDomainControllerIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainControllerIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainControllerId(v)
	end
end

--  
-- List of DomainControllerId objects
function M.DomainControllerIds(list)
	asserts.AssertDomainControllerIds(list)
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableRadius asynchronously, invoking a callback when done
-- @param DisableRadiusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableRadiusAsync(DisableRadiusRequest, cb)
	assert(DisableRadiusRequest, "You must provide a DisableRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableRadius",
	}
	for header,value in pairs(DisableRadiusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DisableRadiusSync(DisableRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableRadiusAsync(DisableRadiusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectSharedDirectory asynchronously, invoking a callback when done
-- @param RejectSharedDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RejectSharedDirectoryAsync(RejectSharedDirectoryRequest, cb)
	assert(RejectSharedDirectoryRequest, "You must provide a RejectSharedDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RejectSharedDirectory",
	}
	for header,value in pairs(RejectSharedDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RejectSharedDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectSharedDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectSharedDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RejectSharedDirectorySync(RejectSharedDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectSharedDirectoryAsync(RejectSharedDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptSharedDirectory asynchronously, invoking a callback when done
-- @param AcceptSharedDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptSharedDirectoryAsync(AcceptSharedDirectoryRequest, cb)
	assert(AcceptSharedDirectoryRequest, "You must provide a AcceptSharedDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AcceptSharedDirectory",
	}
	for header,value in pairs(AcceptSharedDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcceptSharedDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptSharedDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptSharedDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptSharedDirectorySync(AcceptSharedDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptSharedDirectoryAsync(AcceptSharedDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateComputer asynchronously, invoking a callback when done
-- @param CreateComputerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateComputerAsync(CreateComputerRequest, cb)
	assert(CreateComputerRequest, "You must provide a CreateComputerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateComputer",
	}
	for header,value in pairs(CreateComputerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateComputerSync(CreateComputerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateComputerAsync(CreateComputerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableRadius asynchronously, invoking a callback when done
-- @param EnableRadiusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableRadiusAsync(EnableRadiusRequest, cb)
	assert(EnableRadiusRequest, "You must provide a EnableRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableRadius",
	}
	for header,value in pairs(EnableRadiusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.EnableRadiusSync(EnableRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableRadiusAsync(EnableRadiusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLogSubscriptions asynchronously, invoking a callback when done
-- @param ListLogSubscriptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLogSubscriptionsAsync(ListLogSubscriptionsRequest, cb)
	assert(ListLogSubscriptionsRequest, "You must provide a ListLogSubscriptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListLogSubscriptions",
	}
	for header,value in pairs(ListLogSubscriptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListLogSubscriptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLogSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLogSubscriptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListLogSubscriptionsSync(ListLogSubscriptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLogSubscriptionsAsync(ListLogSubscriptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConditionalForwarder asynchronously, invoking a callback when done
-- @param DeleteConditionalForwarderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConditionalForwarderAsync(DeleteConditionalForwarderRequest, cb)
	assert(DeleteConditionalForwarderRequest, "You must provide a DeleteConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteConditionalForwarder",
	}
	for header,value in pairs(DeleteConditionalForwarderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteConditionalForwarderSync(DeleteConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConditionalForwarderAsync(DeleteConditionalForwarderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectory asynchronously, invoking a callback when done
-- @param CreateDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDirectoryAsync(CreateDirectoryRequest, cb)
	assert(CreateDirectoryRequest, "You must provide a CreateDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateDirectory",
	}
	for header,value in pairs(CreateDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDirectorySync(CreateDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectoryAsync(CreateDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetUserPassword asynchronously, invoking a callback when done
-- @param ResetUserPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetUserPasswordAsync(ResetUserPasswordRequest, cb)
	assert(ResetUserPasswordRequest, "You must provide a ResetUserPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ResetUserPassword",
	}
	for header,value in pairs(ResetUserPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetUserPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetUserPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetUserPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResetUserPasswordSync(ResetUserPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetUserPasswordAsync(ResetUserPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTrust asynchronously, invoking a callback when done
-- @param UpdateTrustRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTrustAsync(UpdateTrustRequest, cb)
	assert(UpdateTrustRequest, "You must provide a UpdateTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateTrust",
	}
	for header,value in pairs(UpdateTrustRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTrustRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTrust synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTrustRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTrustSync(UpdateTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTrustAsync(UpdateTrustRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshots asynchronously, invoking a callback when done
-- @param DescribeSnapshotsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSnapshotsAsync(DescribeSnapshotsRequest, cb)
	assert(DescribeSnapshotsRequest, "You must provide a DescribeSnapshotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeSnapshots",
	}
	for header,value in pairs(DescribeSnapshotsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeSnapshotsSync(DescribeSnapshotsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotsAsync(DescribeSnapshotsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyTrust asynchronously, invoking a callback when done
-- @param VerifyTrustRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyTrustAsync(VerifyTrustRequest, cb)
	assert(VerifyTrustRequest, "You must provide a VerifyTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.VerifyTrust",
	}
	for header,value in pairs(VerifyTrustRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.VerifyTrustSync(VerifyTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyTrustAsync(VerifyTrustRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshot asynchronously, invoking a callback when done
-- @param DeleteSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSnapshotAsync(DeleteSnapshotRequest, cb)
	assert(DeleteSnapshotRequest, "You must provide a DeleteSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteSnapshot",
	}
	for header,value in pairs(DeleteSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteSnapshotSync(DeleteSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotAsync(DeleteSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRadius asynchronously, invoking a callback when done
-- @param UpdateRadiusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRadiusAsync(UpdateRadiusRequest, cb)
	assert(UpdateRadiusRequest, "You must provide a UpdateRadiusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateRadius",
	}
	for header,value in pairs(UpdateRadiusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateRadiusSync(UpdateRadiusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRadiusAsync(UpdateRadiusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDomainControllers asynchronously, invoking a callback when done
-- @param DescribeDomainControllersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDomainControllersAsync(DescribeDomainControllersRequest, cb)
	assert(DescribeDomainControllersRequest, "You must provide a DescribeDomainControllersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeDomainControllers",
	}
	for header,value in pairs(DescribeDomainControllersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDomainControllersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDomainControllers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDomainControllersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDomainControllersSync(DescribeDomainControllersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDomainControllersAsync(DescribeDomainControllersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConditionalForwarders asynchronously, invoking a callback when done
-- @param DescribeConditionalForwardersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConditionalForwardersAsync(DescribeConditionalForwardersRequest, cb)
	assert(DescribeConditionalForwardersRequest, "You must provide a DescribeConditionalForwardersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeConditionalForwarders",
	}
	for header,value in pairs(DescribeConditionalForwardersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeConditionalForwardersSync(DescribeConditionalForwardersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConditionalForwardersAsync(DescribeConditionalForwardersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventTopics asynchronously, invoking a callback when done
-- @param DescribeEventTopicsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventTopicsAsync(DescribeEventTopicsRequest, cb)
	assert(DescribeEventTopicsRequest, "You must provide a DescribeEventTopicsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeEventTopics",
	}
	for header,value in pairs(DescribeEventTopicsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeEventTopicsSync(DescribeEventTopicsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventTopicsAsync(DescribeEventTopicsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLogSubscription asynchronously, invoking a callback when done
-- @param DeleteLogSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLogSubscriptionAsync(DeleteLogSubscriptionRequest, cb)
	assert(DeleteLogSubscriptionRequest, "You must provide a DeleteLogSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteLogSubscription",
	}
	for header,value in pairs(DeleteLogSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLogSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLogSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLogSubscriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLogSubscriptionSync(DeleteLogSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLogSubscriptionAsync(DeleteLogSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableSso asynchronously, invoking a callback when done
-- @param EnableSsoRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableSsoAsync(EnableSsoRequest, cb)
	assert(EnableSsoRequest, "You must provide a EnableSsoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.EnableSso",
	}
	for header,value in pairs(EnableSsoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.EnableSsoSync(EnableSsoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableSsoAsync(EnableSsoRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIpRoutes asynchronously, invoking a callback when done
-- @param ListIpRoutesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIpRoutesAsync(ListIpRoutesRequest, cb)
	assert(ListIpRoutesRequest, "You must provide a ListIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListIpRoutes",
	}
	for header,value in pairs(ListIpRoutesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListIpRoutesSync(ListIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIpRoutesAsync(ListIpRoutesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveIpRoutes asynchronously, invoking a callback when done
-- @param RemoveIpRoutesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveIpRoutesAsync(RemoveIpRoutesRequest, cb)
	assert(RemoveIpRoutesRequest, "You must provide a RemoveIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RemoveIpRoutes",
	}
	for header,value in pairs(RemoveIpRoutesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RemoveIpRoutesSync(RemoveIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveIpRoutesAsync(RemoveIpRoutesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateAlias",
	}
	for header,value in pairs(CreateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConnectDirectory asynchronously, invoking a callback when done
-- @param ConnectDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConnectDirectoryAsync(ConnectDirectoryRequest, cb)
	assert(ConnectDirectoryRequest, "You must provide a ConnectDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ConnectDirectory",
	}
	for header,value in pairs(ConnectDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ConnectDirectorySync(ConnectDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConnectDirectoryAsync(ConnectDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDirectory asynchronously, invoking a callback when done
-- @param DeleteDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDirectoryAsync(DeleteDirectoryRequest, cb)
	assert(DeleteDirectoryRequest, "You must provide a DeleteDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteDirectory",
	}
	for header,value in pairs(DeleteDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteDirectorySync(DeleteDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectoryAsync(DeleteDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddIpRoutes asynchronously, invoking a callback when done
-- @param AddIpRoutesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddIpRoutesAsync(AddIpRoutesRequest, cb)
	assert(AddIpRoutesRequest, "You must provide a AddIpRoutesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.AddIpRoutes",
	}
	for header,value in pairs(AddIpRoutesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AddIpRoutesSync(AddIpRoutesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddIpRoutesAsync(AddIpRoutesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLogSubscription asynchronously, invoking a callback when done
-- @param CreateLogSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLogSubscriptionAsync(CreateLogSubscriptionRequest, cb)
	assert(CreateLogSubscriptionRequest, "You must provide a CreateLogSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateLogSubscription",
	}
	for header,value in pairs(CreateLogSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLogSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLogSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLogSubscriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLogSubscriptionSync(CreateLogSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLogSubscriptionAsync(CreateLogSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelSchemaExtension asynchronously, invoking a callback when done
-- @param CancelSchemaExtensionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelSchemaExtensionAsync(CancelSchemaExtensionRequest, cb)
	assert(CancelSchemaExtensionRequest, "You must provide a CancelSchemaExtensionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CancelSchemaExtension",
	}
	for header,value in pairs(CancelSchemaExtensionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CancelSchemaExtensionSync(CancelSchemaExtensionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelSchemaExtensionAsync(CancelSchemaExtensionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConditionalForwarder asynchronously, invoking a callback when done
-- @param CreateConditionalForwarderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConditionalForwarderAsync(CreateConditionalForwarderRequest, cb)
	assert(CreateConditionalForwarderRequest, "You must provide a CreateConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateConditionalForwarder",
	}
	for header,value in pairs(CreateConditionalForwarderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateConditionalForwarderSync(CreateConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConditionalForwarderAsync(CreateConditionalForwarderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreFromSnapshot asynchronously, invoking a callback when done
-- @param RestoreFromSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreFromSnapshotAsync(RestoreFromSnapshotRequest, cb)
	assert(RestoreFromSnapshotRequest, "You must provide a RestoreFromSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RestoreFromSnapshot",
	}
	for header,value in pairs(RestoreFromSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RestoreFromSnapshotSync(RestoreFromSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreFromSnapshotAsync(RestoreFromSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSharedDirectories asynchronously, invoking a callback when done
-- @param DescribeSharedDirectoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSharedDirectoriesAsync(DescribeSharedDirectoriesRequest, cb)
	assert(DescribeSharedDirectoriesRequest, "You must provide a DescribeSharedDirectoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeSharedDirectories",
	}
	for header,value in pairs(DescribeSharedDirectoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSharedDirectoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSharedDirectories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSharedDirectoriesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSharedDirectoriesSync(DescribeSharedDirectoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSharedDirectoriesAsync(DescribeSharedDirectoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSchemaExtensions asynchronously, invoking a callback when done
-- @param ListSchemaExtensionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSchemaExtensionsAsync(ListSchemaExtensionsRequest, cb)
	assert(ListSchemaExtensionsRequest, "You must provide a ListSchemaExtensionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListSchemaExtensions",
	}
	for header,value in pairs(ListSchemaExtensionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListSchemaExtensionsSync(ListSchemaExtensionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSchemaExtensionsAsync(ListSchemaExtensionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrusts asynchronously, invoking a callback when done
-- @param DescribeTrustsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrustsAsync(DescribeTrustsRequest, cb)
	assert(DescribeTrustsRequest, "You must provide a DescribeTrustsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeTrusts",
	}
	for header,value in pairs(DescribeTrustsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeTrustsSync(DescribeTrustsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustsAsync(DescribeTrustsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnshareDirectory asynchronously, invoking a callback when done
-- @param UnshareDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnshareDirectoryAsync(UnshareDirectoryRequest, cb)
	assert(UnshareDirectoryRequest, "You must provide a UnshareDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UnshareDirectory",
	}
	for header,value in pairs(UnshareDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UnshareDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnshareDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnshareDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UnshareDirectorySync(UnshareDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnshareDirectoryAsync(UnshareDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterEventTopic asynchronously, invoking a callback when done
-- @param DeregisterEventTopicRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterEventTopicAsync(DeregisterEventTopicRequest, cb)
	assert(DeregisterEventTopicRequest, "You must provide a DeregisterEventTopicRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeregisterEventTopic",
	}
	for header,value in pairs(DeregisterEventTopicRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterEventTopicSync(DeregisterEventTopicRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterEventTopicAsync(DeregisterEventTopicRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConditionalForwarder asynchronously, invoking a callback when done
-- @param UpdateConditionalForwarderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConditionalForwarderAsync(UpdateConditionalForwarderRequest, cb)
	assert(UpdateConditionalForwarderRequest, "You must provide a UpdateConditionalForwarderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateConditionalForwarder",
	}
	for header,value in pairs(UpdateConditionalForwarderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateConditionalForwarderSync(UpdateConditionalForwarderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConditionalForwarderAsync(UpdateConditionalForwarderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrust asynchronously, invoking a callback when done
-- @param CreateTrustRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTrustAsync(CreateTrustRequest, cb)
	assert(CreateTrustRequest, "You must provide a CreateTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateTrust",
	}
	for header,value in pairs(CreateTrustRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateTrustSync(CreateTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrustAsync(CreateTrustRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDirectoryLimits asynchronously, invoking a callback when done
-- @param GetDirectoryLimitsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDirectoryLimitsAsync(GetDirectoryLimitsRequest, cb)
	assert(GetDirectoryLimitsRequest, "You must provide a GetDirectoryLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetDirectoryLimits",
	}
	for header,value in pairs(GetDirectoryLimitsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetDirectoryLimitsSync(GetDirectoryLimitsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDirectoryLimitsAsync(GetDirectoryLimitsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMicrosoftAD asynchronously, invoking a callback when done
-- @param CreateMicrosoftADRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateMicrosoftADAsync(CreateMicrosoftADRequest, cb)
	assert(CreateMicrosoftADRequest, "You must provide a CreateMicrosoftADRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateMicrosoftAD",
	}
	for header,value in pairs(CreateMicrosoftADRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateMicrosoftADSync(CreateMicrosoftADRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMicrosoftADAsync(CreateMicrosoftADRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterEventTopic asynchronously, invoking a callback when done
-- @param RegisterEventTopicRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterEventTopicAsync(RegisterEventTopicRequest, cb)
	assert(RegisterEventTopicRequest, "You must provide a RegisterEventTopicRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.RegisterEventTopic",
	}
	for header,value in pairs(RegisterEventTopicRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterEventTopicSync(RegisterEventTopicRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterEventTopicAsync(RegisterEventTopicRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSnapshotLimits asynchronously, invoking a callback when done
-- @param GetSnapshotLimitsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSnapshotLimitsAsync(GetSnapshotLimitsRequest, cb)
	assert(GetSnapshotLimitsRequest, "You must provide a GetSnapshotLimitsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.GetSnapshotLimits",
	}
	for header,value in pairs(GetSnapshotLimitsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetSnapshotLimitsSync(GetSnapshotLimitsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSnapshotLimitsAsync(GetSnapshotLimitsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTrust asynchronously, invoking a callback when done
-- @param DeleteTrustRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTrustAsync(DeleteTrustRequest, cb)
	assert(DeleteTrustRequest, "You must provide a DeleteTrustRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DeleteTrust",
	}
	for header,value in pairs(DeleteTrustRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteTrustSync(DeleteTrustRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTrustAsync(DeleteTrustRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ShareDirectory asynchronously, invoking a callback when done
-- @param ShareDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ShareDirectoryAsync(ShareDirectoryRequest, cb)
	assert(ShareDirectoryRequest, "You must provide a ShareDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ShareDirectory",
	}
	for header,value in pairs(ShareDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ShareDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ShareDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ShareDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ShareDirectorySync(ShareDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ShareDirectoryAsync(ShareDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNumberOfDomainControllers asynchronously, invoking a callback when done
-- @param UpdateNumberOfDomainControllersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNumberOfDomainControllersAsync(UpdateNumberOfDomainControllersRequest, cb)
	assert(UpdateNumberOfDomainControllersRequest, "You must provide a UpdateNumberOfDomainControllersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.UpdateNumberOfDomainControllers",
	}
	for header,value in pairs(UpdateNumberOfDomainControllersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNumberOfDomainControllersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNumberOfDomainControllers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNumberOfDomainControllersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNumberOfDomainControllersSync(UpdateNumberOfDomainControllersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNumberOfDomainControllersAsync(UpdateNumberOfDomainControllersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectories asynchronously, invoking a callback when done
-- @param DescribeDirectoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDirectoriesAsync(DescribeDirectoriesRequest, cb)
	assert(DescribeDirectoriesRequest, "You must provide a DescribeDirectoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DescribeDirectories",
	}
	for header,value in pairs(DescribeDirectoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeDirectoriesSync(DescribeDirectoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectoriesAsync(DescribeDirectoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSchemaExtension asynchronously, invoking a callback when done
-- @param StartSchemaExtensionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSchemaExtensionAsync(StartSchemaExtensionRequest, cb)
	assert(StartSchemaExtensionRequest, "You must provide a StartSchemaExtensionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.StartSchemaExtension",
	}
	for header,value in pairs(StartSchemaExtensionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StartSchemaExtensionSync(StartSchemaExtensionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSchemaExtensionAsync(StartSchemaExtensionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshot asynchronously, invoking a callback when done
-- @param CreateSnapshotRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSnapshotAsync(CreateSnapshotRequest, cb)
	assert(CreateSnapshotRequest, "You must provide a CreateSnapshotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.CreateSnapshot",
	}
	for header,value in pairs(CreateSnapshotRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateSnapshotSync(CreateSnapshotRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotAsync(CreateSnapshotRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableSso asynchronously, invoking a callback when done
-- @param DisableSsoRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableSsoAsync(DisableSsoRequest, cb)
	assert(DisableSsoRequest, "You must provide a DisableSsoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DirectoryService_20150416.DisableSso",
	}
	for header,value in pairs(DisableSsoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DisableSsoSync(DisableSsoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableSsoAsync(DisableSsoRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
