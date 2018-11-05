--- GENERATED CODE - DO NOT MODIFY
-- Amazon GuardDuty (guardduty-2017-11-28)

local M = {}

M.metadata = {
	api_version = "2017-11-28",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "guardduty",
	service_abbreviation = "",
	service_full_name = "Amazon GuardDuty",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "guardduty-2017-11-28",
}

local keys = {}
local asserts = {}

keys.GetIPSetRequest = { ["IpSetId"] = true, ["DetectorId"] = true, nil }

function asserts.AssertGetIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["IpSetId"], "Expected key IpSetId to exist in table")
	if struct["IpSetId"] then asserts.Assert__string(struct["IpSetId"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIPSetRequest[k], "GetIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpSetId [__string] The unique ID that specifies the IPSet that you want to describe.
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose IPSet you want to retrieve.
-- Required key: DetectorId
-- Required key: IpSetId
-- @return GetIPSetRequest structure as a key-value pair table
function M.GetIPSetRequest(args)
	assert(args, "You must provide an argument table when creating GetIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ipSetId}"] = args["IpSetId"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IpSetId"] = args["IpSetId"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertGetIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AwsApiCallAction = { ["RemoteIpDetails"] = true, ["Api"] = true, ["DomainDetails"] = true, ["ServiceName"] = true, ["CallerType"] = true, nil }

function asserts.AssertAwsApiCallAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AwsApiCallAction to be of type 'table'")
	if struct["RemoteIpDetails"] then asserts.AssertRemoteIpDetails(struct["RemoteIpDetails"]) end
	if struct["Api"] then asserts.Assert__string(struct["Api"]) end
	if struct["DomainDetails"] then asserts.AssertDomainDetails(struct["DomainDetails"]) end
	if struct["ServiceName"] then asserts.Assert__string(struct["ServiceName"]) end
	if struct["CallerType"] then asserts.Assert__string(struct["CallerType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AwsApiCallAction[k], "AwsApiCallAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AwsApiCallAction
-- Information about the AWS_API_CALL action described in this finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoteIpDetails [RemoteIpDetails] Remote IP information of the connection.
-- * Api [__string] AWS API name.
-- * DomainDetails [DomainDetails] Domain information for the AWS API call.
-- * ServiceName [__string] AWS service name whose API was invoked.
-- * CallerType [__string] AWS API caller type.
-- @return AwsApiCallAction structure as a key-value pair table
function M.AwsApiCallAction(args)
	assert(args, "You must provide an argument table when creating AwsApiCallAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoteIpDetails"] = args["RemoteIpDetails"],
		["Api"] = args["Api"],
		["DomainDetails"] = args["DomainDetails"],
		["ServiceName"] = args["ServiceName"],
		["CallerType"] = args["CallerType"],
	}
	asserts.AssertAwsApiCallAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListThreatIntelSetsRequest = { ["DetectorId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListThreatIntelSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThreatIntelSetsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThreatIntelSetsRequest[k], "ListThreatIntelSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThreatIntelSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose ThreatIntelSets you want to list.
-- * NextToken [__string] Pagination token to start retrieving threat intel sets from.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.
-- Required key: DetectorId
-- @return ListThreatIntelSetsRequest structure as a key-value pair table
function M.ListThreatIntelSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListThreatIntelSetsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListThreatIntelSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDetectorsResponse = { ["DetectorIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDetectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDetectorsResponse to be of type 'table'")
	if struct["DetectorIds"] then asserts.AssertDetectorIds(struct["DetectorIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDetectorsResponse[k], "ListDetectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDetectorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorIds [DetectorIds] 
-- * NextToken [NextToken] 
-- @return ListDetectorsResponse structure as a key-value pair table
function M.ListDetectorsResponse(args)
	assert(args, "You must provide an argument table when creating ListDetectorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorIds"] = args["DetectorIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDetectorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFilterRequest = { ["FindingCriteria"] = true, ["Description"] = true, ["FilterName"] = true, ["Rank"] = true, ["DetectorId"] = true, ["Action"] = true, nil }

function asserts.AssertUpdateFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFilterRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FilterName"], "Expected key FilterName to exist in table")
	if struct["FindingCriteria"] then asserts.AssertFindingCriteria(struct["FindingCriteria"]) end
	if struct["Description"] then asserts.AssertFilterDescription(struct["Description"]) end
	if struct["FilterName"] then asserts.Assert__string(struct["FilterName"]) end
	if struct["Rank"] then asserts.AssertFilterRank(struct["Rank"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Action"] then asserts.AssertFilterAction(struct["Action"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFilterRequest[k], "UpdateFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFilterRequest
-- UpdateFilterRequest request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingCriteria [FindingCriteria] Represents the criteria to be used in the filter for querying findings.
-- * Description [FilterDescription] The description of the filter.
-- * FilterName [__string] The name of the filter.
-- * Rank [FilterRank] Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
-- * DetectorId [__string] The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.
-- * Action [FilterAction] Specifies the action that is to be applied to the findings that match the filter.
-- Required key: DetectorId
-- Required key: FilterName
-- @return UpdateFilterRequest structure as a key-value pair table
function M.UpdateFilterRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{filterName}"] = args["FilterName"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingCriteria"] = args["FindingCriteria"],
		["Description"] = args["Description"],
		["FilterName"] = args["FilterName"],
		["Rank"] = args["Rank"],
		["DetectorId"] = args["DetectorId"],
		["Action"] = args["Action"],
	}
	asserts.AssertUpdateFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDetectorsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDetectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDetectorsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDetectorsRequest[k], "ListDetectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDetectorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListDetectors action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of detectors that you want in the response.
-- @return ListDetectorsRequest structure as a key-value pair table
function M.ListDetectorsRequest(args)
	assert(args, "You must provide an argument table when creating ListDetectorsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDetectorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertDisassociateMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateMembersResponse[k], "DisassociateMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return DisassociateMembersResponse structure as a key-value pair table
function M.DisassociateMembersResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertDisassociateMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Organization = { ["Org"] = true, ["Isp"] = true, ["Asn"] = true, ["AsnOrg"] = true, nil }

function asserts.AssertOrganization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Organization to be of type 'table'")
	if struct["Org"] then asserts.Assert__string(struct["Org"]) end
	if struct["Isp"] then asserts.Assert__string(struct["Isp"]) end
	if struct["Asn"] then asserts.Assert__string(struct["Asn"]) end
	if struct["AsnOrg"] then asserts.Assert__string(struct["AsnOrg"]) end
	for k,_ in pairs(struct) do
		assert(keys.Organization[k], "Organization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Organization
-- ISP Organization information of the remote IP address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Org [__string] Name of the internet provider.
-- * Isp [__string] ISP information for the internet provider.
-- * Asn [__string] Autonomous system number of the internet provider of the remote IP address.
-- * AsnOrg [__string] Organization that registered this ASN.
-- @return Organization structure as a key-value pair table
function M.Organization(args)
	assert(args, "You must provide an argument table when creating Organization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Org"] = args["Org"],
		["Isp"] = args["Isp"],
		["Asn"] = args["Asn"],
		["AsnOrg"] = args["AsnOrg"],
	}
	asserts.AssertOrganization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMembersRequest = { ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertGetMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMembersRequest[k], "GetMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMembersRequest
-- GetMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the GuardDuty member accounts that you want to describe.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account whose members you want to retrieve.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return GetMembersRequest structure as a key-value pair table
function M.GetMembersRequest(args)
	assert(args, "You must provide an argument table when creating GetMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertGetMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateThreatIntelSetResponse = { ["ThreatIntelSetId"] = true, nil }

function asserts.AssertCreateThreatIntelSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThreatIntelSetResponse to be of type 'table'")
	if struct["ThreatIntelSetId"] then asserts.AssertThreatIntelSetId(struct["ThreatIntelSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThreatIntelSetResponse[k], "CreateThreatIntelSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThreatIntelSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ThreatIntelSetId [ThreatIntelSetId] 
-- @return CreateThreatIntelSetResponse structure as a key-value pair table
function M.CreateThreatIntelSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateThreatIntelSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ThreatIntelSetId"] = args["ThreatIntelSetId"],
	}
	asserts.AssertCreateThreatIntelSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopMonitoringMembersRequest = { ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertStopMonitoringMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopMonitoringMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopMonitoringMembersRequest[k], "StopMonitoringMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopMonitoringMembersRequest
-- StopMonitoringMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the GuardDuty member accounts whose findings you want the master account to stop monitoring.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account that you want to stop from monitor members' findings.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return StopMonitoringMembersRequest structure as a key-value pair table
function M.StopMonitoringMembersRequest(args)
	assert(args, "You must provide an argument table when creating StopMonitoringMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertStopMonitoringMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Service = { ["Count"] = true, ["Archived"] = true, ["ServiceName"] = true, ["EventFirstSeen"] = true, ["ResourceRole"] = true, ["EventLastSeen"] = true, ["DetectorId"] = true, ["UserFeedback"] = true, ["Action"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["Count"] then asserts.Assert__integer(struct["Count"]) end
	if struct["Archived"] then asserts.Assert__boolean(struct["Archived"]) end
	if struct["ServiceName"] then asserts.Assert__string(struct["ServiceName"]) end
	if struct["EventFirstSeen"] then asserts.Assert__string(struct["EventFirstSeen"]) end
	if struct["ResourceRole"] then asserts.Assert__string(struct["ResourceRole"]) end
	if struct["EventLastSeen"] then asserts.Assert__string(struct["EventLastSeen"]) end
	if struct["DetectorId"] then asserts.AssertDetectorId(struct["DetectorId"]) end
	if struct["UserFeedback"] then asserts.Assert__string(struct["UserFeedback"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- Additional information assigned to the generated finding by GuardDuty.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [__integer] Total count of the occurrences of this finding type.
-- * Archived [__boolean] Indicates whether this finding is archived.
-- * ServiceName [__string] The name of the AWS service (GuardDuty) that generated a finding.
-- * EventFirstSeen [__string] First seen timestamp of the activity that prompted GuardDuty to generate this finding.
-- * ResourceRole [__string] Resource role information for this finding.
-- * EventLastSeen [__string] Last seen timestamp of the activity that prompted GuardDuty to generate this finding.
-- * DetectorId [DetectorId] Detector ID for the GuardDuty service.
-- * UserFeedback [__string] Feedback left about the finding.
-- * Action [Action] Information about the activity described in a finding.
-- @return Service structure as a key-value pair table
function M.Service(args)
	assert(args, "You must provide an argument table when creating Service")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["Archived"] = args["Archived"],
		["ServiceName"] = args["ServiceName"],
		["EventFirstSeen"] = args["EventFirstSeen"],
		["ResourceRole"] = args["ResourceRole"],
		["EventLastSeen"] = args["EventLastSeen"],
		["DetectorId"] = args["DetectorId"],
		["UserFeedback"] = args["UserFeedback"],
		["Action"] = args["Action"],
	}
	asserts.AssertService(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptInvitationResponse = { nil }

function asserts.AssertAcceptInvitationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptInvitationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AcceptInvitationResponse[k], "AcceptInvitationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptInvitationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AcceptInvitationResponse structure as a key-value pair table
function M.AcceptInvitationResponse(args)
	assert(args, "You must provide an argument table when creating AcceptInvitationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAcceptInvitationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMasterAccountResponse = { ["Master"] = true, nil }

function asserts.AssertGetMasterAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMasterAccountResponse to be of type 'table'")
	if struct["Master"] then asserts.AssertMaster(struct["Master"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMasterAccountResponse[k], "GetMasterAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMasterAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Master [Master] 
-- @return GetMasterAccountResponse structure as a key-value pair table
function M.GetMasterAccountResponse(args)
	assert(args, "You must provide an argument table when creating GetMasterAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Master"] = args["Master"],
	}
	asserts.AssertGetMasterAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFindingsResponse = { ["FindingIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsResponse to be of type 'table'")
	if struct["FindingIds"] then asserts.AssertFindingIds(struct["FindingIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFindingsResponse[k], "ListFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingIds [FindingIds] 
-- * NextToken [NextToken] 
-- @return ListFindingsResponse structure as a key-value pair table
function M.ListFindingsResponse(args)
	assert(args, "You must provide an argument table when creating ListFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingIds"] = args["FindingIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIPSetResponse = { nil }

function asserts.AssertUpdateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateIPSetResponse[k], "UpdateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateIPSetResponse structure as a key-value pair table
function M.UpdateIPSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateIPSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDetectorResponse = { nil }

function asserts.AssertDeleteDetectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDetectorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDetectorResponse[k], "DeleteDetectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDetectorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDetectorResponse structure as a key-value pair table
function M.DeleteDetectorResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDetectorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDetectorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoteIpDetails = { ["GeoLocation"] = true, ["City"] = true, ["IpAddressV4"] = true, ["Organization"] = true, ["Country"] = true, nil }

function asserts.AssertRemoteIpDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoteIpDetails to be of type 'table'")
	if struct["GeoLocation"] then asserts.AssertGeoLocation(struct["GeoLocation"]) end
	if struct["City"] then asserts.AssertCity(struct["City"]) end
	if struct["IpAddressV4"] then asserts.Assert__string(struct["IpAddressV4"]) end
	if struct["Organization"] then asserts.AssertOrganization(struct["Organization"]) end
	if struct["Country"] then asserts.AssertCountry(struct["Country"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoteIpDetails[k], "RemoteIpDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoteIpDetails
-- Remote IP information of the connection.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoLocation [GeoLocation] Location information of the remote IP address.
-- * City [City] City information of the remote IP address.
-- * IpAddressV4 [__string] IPV4 remote address of the connection.
-- * Organization [Organization] ISP Organization information of the remote IP address.
-- * Country [Country] Country code of the remote IP address.
-- @return RemoteIpDetails structure as a key-value pair table
function M.RemoteIpDetails(args)
	assert(args, "You must provide an argument table when creating RemoteIpDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoLocation"] = args["GeoLocation"],
		["City"] = args["City"],
		["IpAddressV4"] = args["IpAddressV4"],
		["Organization"] = args["Organization"],
		["Country"] = args["Country"],
	}
	asserts.AssertRemoteIpDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemotePortDetails = { ["PortName"] = true, ["Port"] = true, nil }

function asserts.AssertRemotePortDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemotePortDetails to be of type 'table'")
	if struct["PortName"] then asserts.Assert__string(struct["PortName"]) end
	if struct["Port"] then asserts.Assert__integer(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemotePortDetails[k], "RemotePortDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemotePortDetails
-- Remote port information of the connection.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortName [__string] Port name of the remote connection.
-- * Port [__integer] Port number of the remote connection.
-- @return RemotePortDetails structure as a key-value pair table
function M.RemotePortDetails(args)
	assert(args, "You must provide an argument table when creating RemotePortDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortName"] = args["PortName"],
		["Port"] = args["Port"],
	}
	asserts.AssertRemotePortDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFindingsRequest = { ["NextToken"] = true, ["DetectorId"] = true, ["FindingCriteria"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertListFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["FindingCriteria"] then asserts.AssertFindingCriteria(struct["FindingCriteria"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortCriteria(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFindingsRequest[k], "ListFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsRequest
-- ListFindings request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListFindings action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings you want to list.
-- * FindingCriteria [FindingCriteria] Represents the criteria used for querying findings.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
-- * SortCriteria [SortCriteria] Represents the criteria used for sorting findings.
-- Required key: DetectorId
-- @return ListFindingsRequest structure as a key-value pair table
function M.ListFindingsRequest(args)
	assert(args, "You must provide an argument table when creating ListFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DetectorId"] = args["DetectorId"],
		["FindingCriteria"] = args["FindingCriteria"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertListFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateMembersRequest = { ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertDisassociateMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateMembersRequest[k], "DisassociateMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateMembersRequest
-- DisassociateMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the GuardDuty member accounts that you want to disassociate from master.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account whose members you want to disassociate from master.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return DisassociateMembersRequest structure as a key-value pair table
function M.DisassociateMembersRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDisassociateMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeclineInvitationsResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertDeclineInvitationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineInvitationsResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeclineInvitationsResponse[k], "DeclineInvitationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineInvitationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return DeclineInvitationsResponse structure as a key-value pair table
function M.DeclineInvitationsResponse(args)
	assert(args, "You must provide an argument table when creating DeclineInvitationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertDeclineInvitationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnprocessedAccount = { ["Result"] = true, ["AccountId"] = true, nil }

function asserts.AssertUnprocessedAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedAccount to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["Result"], "Expected key Result to exist in table")
	if struct["Result"] then asserts.Assert__string(struct["Result"]) end
	if struct["AccountId"] then asserts.Assert__string(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnprocessedAccount[k], "UnprocessedAccount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedAccount
-- An object containing the unprocessed account and a result string explaining why it was unprocessed.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Result [__string] A reason why the account hasn't been processed.
-- * AccountId [__string] AWS Account ID.
-- Required key: AccountId
-- Required key: Result
-- @return UnprocessedAccount structure as a key-value pair table
function M.UnprocessedAccount(args)
	assert(args, "You must provide an argument table when creating UnprocessedAccount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Result"] = args["Result"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUnprocessedAccount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMembersResponse = { ["UnprocessedAccounts"] = true, ["Members"] = true, nil }

function asserts.AssertGetMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	if struct["Members"] then asserts.AssertMembers(struct["Members"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMembersResponse[k], "GetMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- * Members [Members] 
-- @return GetMembersResponse structure as a key-value pair table
function M.GetMembersResponse(args)
	assert(args, "You must provide an argument table when creating GetMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
		["Members"] = args["Members"],
	}
	asserts.AssertGetMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PortProbeDetail = { ["RemoteIpDetails"] = true, ["LocalPortDetails"] = true, nil }

function asserts.AssertPortProbeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortProbeDetail to be of type 'table'")
	if struct["RemoteIpDetails"] then asserts.AssertRemoteIpDetails(struct["RemoteIpDetails"]) end
	if struct["LocalPortDetails"] then asserts.AssertLocalPortDetails(struct["LocalPortDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.PortProbeDetail[k], "PortProbeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortProbeDetail
-- Details about the port probe finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoteIpDetails [RemoteIpDetails] Remote IP information of the connection.
-- * LocalPortDetails [LocalPortDetails] Local port information of the connection.
-- @return PortProbeDetail structure as a key-value pair table
function M.PortProbeDetail(args)
	assert(args, "You must provide an argument table when creating PortProbeDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoteIpDetails"] = args["RemoteIpDetails"],
		["LocalPortDetails"] = args["LocalPortDetails"],
	}
	asserts.AssertPortProbeDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateThreatIntelSetRequest = { ["ThreatIntelSetId"] = true, ["Activate"] = true, ["Location"] = true, ["DetectorId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateThreatIntelSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThreatIntelSetRequest to be of type 'table'")
	assert(struct["ThreatIntelSetId"], "Expected key ThreatIntelSetId to exist in table")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["ThreatIntelSetId"] then asserts.Assert__string(struct["ThreatIntelSetId"]) end
	if struct["Activate"] then asserts.AssertActivate(struct["Activate"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateThreatIntelSetRequest[k], "UpdateThreatIntelSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThreatIntelSetRequest
-- UpdateThreatIntelSet request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ThreatIntelSetId [__string] The unique ID that specifies the ThreatIntelSet that you want to update.
-- * Activate [Activate] The updated boolean value that specifies whether the ThreateIntelSet is active or not.
-- * Location [Location] The updated URI of the file that contains the ThreateIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.
-- * Name [Name] The unique ID that specifies the ThreatIntelSet that you want to update.
-- Required key: ThreatIntelSetId
-- Required key: DetectorId
-- @return UpdateThreatIntelSetRequest structure as a key-value pair table
function M.UpdateThreatIntelSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateThreatIntelSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{threatIntelSetId}"] = args["ThreatIntelSetId"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ThreatIntelSetId"] = args["ThreatIntelSetId"],
		["Activate"] = args["Activate"],
		["Location"] = args["Location"],
		["DetectorId"] = args["DetectorId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateThreatIntelSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDetectorResponse = { nil }

function asserts.AssertUpdateDetectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDetectorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDetectorResponse[k], "UpdateDetectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDetectorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDetectorResponse structure as a key-value pair table
function M.UpdateDetectorResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDetectorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDetectorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInvitationsCountResponse = { ["InvitationsCount"] = true, nil }

function asserts.AssertGetInvitationsCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvitationsCountResponse to be of type 'table'")
	if struct["InvitationsCount"] then asserts.Assert__integer(struct["InvitationsCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInvitationsCountResponse[k], "GetInvitationsCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvitationsCountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvitationsCount [__integer] The number of received invitations.
-- @return GetInvitationsCountResponse structure as a key-value pair table
function M.GetInvitationsCountResponse(args)
	assert(args, "You must provide an argument table when creating GetInvitationsCountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvitationsCount"] = args["InvitationsCount"],
	}
	asserts.AssertGetInvitationsCountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListThreatIntelSetsResponse = { ["NextToken"] = true, ["ThreatIntelSetIds"] = true, nil }

function asserts.AssertListThreatIntelSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThreatIntelSetsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ThreatIntelSetIds"] then asserts.AssertThreatIntelSetIds(struct["ThreatIntelSetIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThreatIntelSetsResponse[k], "ListThreatIntelSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThreatIntelSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] 
-- * ThreatIntelSetIds [ThreatIntelSetIds] 
-- @return ListThreatIntelSetsResponse structure as a key-value pair table
function M.ListThreatIntelSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListThreatIntelSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ThreatIntelSetIds"] = args["ThreatIntelSetIds"],
	}
	asserts.AssertListThreatIntelSetsResponse(all_args)
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
	if struct["Value"] then asserts.Assert__string(struct["Value"]) end
	if struct["Key"] then asserts.Assert__string(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- A tag of the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [__string] EC2 instance tag value.
-- * Key [__string] EC2 instance tag key.
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

keys.FindingStatistics = { ["CountBySeverity"] = true, nil }

function asserts.AssertFindingStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FindingStatistics to be of type 'table'")
	if struct["CountBySeverity"] then asserts.Assert__mapOfCountBySeverityFindingStatistic(struct["CountBySeverity"]) end
	for k,_ in pairs(struct) do
		assert(keys.FindingStatistics[k], "FindingStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FindingStatistics
-- Finding statistics object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CountBySeverity [__mapOfCountBySeverityFindingStatistic] Represents a map of severity to count statistic for a set of findings
-- @return FindingStatistics structure as a key-value pair table
function M.FindingStatistics(args)
	assert(args, "You must provide an argument table when creating FindingStatistics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CountBySeverity"] = args["CountBySeverity"],
	}
	asserts.AssertFindingStatistics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFilterRequest = { ["FindingCriteria"] = true, ["Name"] = true, ["Rank"] = true, ["DetectorId"] = true, ["ClientToken"] = true, ["Action"] = true, ["Description"] = true, nil }

function asserts.AssertCreateFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFilterRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FindingCriteria"], "Expected key FindingCriteria to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FindingCriteria"] then asserts.AssertFindingCriteria(struct["FindingCriteria"]) end
	if struct["Name"] then asserts.AssertFilterName(struct["Name"]) end
	if struct["Rank"] then asserts.AssertFilterRank(struct["Rank"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["ClientToken"] then asserts.Assert__stringMin0Max64(struct["ClientToken"]) end
	if struct["Action"] then asserts.AssertFilterAction(struct["Action"]) end
	if struct["Description"] then asserts.AssertFilterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFilterRequest[k], "CreateFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFilterRequest
-- CreateFilterRequest request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingCriteria [FindingCriteria] Represents the criteria to be used in the filter for querying findings.
-- * Name [FilterName] The name of the filter.
-- * Rank [FilterRank] Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
-- * DetectorId [__string] The unique ID of the detector that you want to update.
-- * ClientToken [__stringMin0Max64] The idempotency token for the create request.
-- * Action [FilterAction] Specifies the action that is to be applied to the findings that match the filter.
-- * Description [FilterDescription] The description of the filter.
-- Required key: DetectorId
-- Required key: FindingCriteria
-- Required key: Name
-- @return CreateFilterRequest structure as a key-value pair table
function M.CreateFilterRequest(args)
	assert(args, "You must provide an argument table when creating CreateFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingCriteria"] = args["FindingCriteria"],
		["Name"] = args["Name"],
		["Rank"] = args["Rank"],
		["DetectorId"] = args["DetectorId"],
		["ClientToken"] = args["ClientToken"],
		["Action"] = args["Action"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoLocation = { ["Lat"] = true, ["Lon"] = true, nil }

function asserts.AssertGeoLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoLocation to be of type 'table'")
	if struct["Lat"] then asserts.Assert__double(struct["Lat"]) end
	if struct["Lon"] then asserts.Assert__double(struct["Lon"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoLocation[k], "GeoLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoLocation
-- Location information of the remote IP address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Lat [__double] Latitude information of remote IP address.
-- * Lon [__double] Longitude information of remote IP address.
-- @return GeoLocation structure as a key-value pair table
function M.GeoLocation(args)
	assert(args, "You must provide an argument table when creating GeoLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Lat"] = args["Lat"],
		["Lon"] = args["Lon"],
	}
	asserts.AssertGeoLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FindingCriteria = { ["Criterion"] = true, nil }

function asserts.AssertFindingCriteria(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FindingCriteria to be of type 'table'")
	if struct["Criterion"] then asserts.Assert__mapOfCondition(struct["Criterion"]) end
	for k,_ in pairs(struct) do
		assert(keys.FindingCriteria[k], "FindingCriteria contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FindingCriteria
-- Represents the criteria used for querying findings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Criterion [__mapOfCondition] Represents a map of finding properties that match specified conditions and values when querying findings.
-- @return FindingCriteria structure as a key-value pair table
function M.FindingCriteria(args)
	assert(args, "You must provide an argument table when creating FindingCriteria")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Criterion"] = args["Criterion"],
	}
	asserts.AssertFindingCriteria(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFilterRequest = { ["FilterName"] = true, ["DetectorId"] = true, nil }

function asserts.AssertDeleteFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFilterRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FilterName"], "Expected key FilterName to exist in table")
	if struct["FilterName"] then asserts.Assert__string(struct["FilterName"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFilterRequest[k], "DeleteFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterName [__string] The name of the filter.
-- * DetectorId [__string] The unique ID that specifies the detector where you want to delete a filter.
-- Required key: DetectorId
-- Required key: FilterName
-- @return DeleteFilterRequest structure as a key-value pair table
function M.DeleteFilterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{filterName}"] = args["FilterName"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterName"] = args["FilterName"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDeleteFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProductCode = { ["Code"] = true, ["ProductType"] = true, nil }

function asserts.AssertProductCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductCode to be of type 'table'")
	if struct["Code"] then asserts.Assert__string(struct["Code"]) end
	if struct["ProductType"] then asserts.Assert__string(struct["ProductType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductCode[k], "ProductCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductCode
-- The product code of the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [__string] Product code information.
-- * ProductType [__string] Product code type.
-- @return ProductCode structure as a key-value pair table
function M.ProductCode(args)
	assert(args, "You must provide an argument table when creating ProductCode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["ProductType"] = args["ProductType"],
	}
	asserts.AssertProductCode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkConnectionAction = { ["ConnectionDirection"] = true, ["Protocol"] = true, ["RemoteIpDetails"] = true, ["RemotePortDetails"] = true, ["LocalPortDetails"] = true, ["Blocked"] = true, nil }

function asserts.AssertNetworkConnectionAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkConnectionAction to be of type 'table'")
	if struct["ConnectionDirection"] then asserts.Assert__string(struct["ConnectionDirection"]) end
	if struct["Protocol"] then asserts.Assert__string(struct["Protocol"]) end
	if struct["RemoteIpDetails"] then asserts.AssertRemoteIpDetails(struct["RemoteIpDetails"]) end
	if struct["RemotePortDetails"] then asserts.AssertRemotePortDetails(struct["RemotePortDetails"]) end
	if struct["LocalPortDetails"] then asserts.AssertLocalPortDetails(struct["LocalPortDetails"]) end
	if struct["Blocked"] then asserts.Assert__boolean(struct["Blocked"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkConnectionAction[k], "NetworkConnectionAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkConnectionAction
-- Information about the NETWORK_CONNECTION action described in this finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionDirection [__string] Network connection direction.
-- * Protocol [__string] Network connection protocol.
-- * RemoteIpDetails [RemoteIpDetails] Remote IP information of the connection.
-- * RemotePortDetails [RemotePortDetails] Remote port information of the connection.
-- * LocalPortDetails [LocalPortDetails] Local port information of the connection.
-- * Blocked [__boolean] Network connection blocked information.
-- @return NetworkConnectionAction structure as a key-value pair table
function M.NetworkConnectionAction(args)
	assert(args, "You must provide an argument table when creating NetworkConnectionAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionDirection"] = args["ConnectionDirection"],
		["Protocol"] = args["Protocol"],
		["RemoteIpDetails"] = args["RemoteIpDetails"],
		["RemotePortDetails"] = args["RemotePortDetails"],
		["LocalPortDetails"] = args["LocalPortDetails"],
		["Blocked"] = args["Blocked"],
	}
	asserts.AssertNetworkConnectionAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Master = { ["InvitationId"] = true, ["InvitedAt"] = true, ["RelationshipStatus"] = true, ["AccountId"] = true, nil }

function asserts.AssertMaster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Master to be of type 'table'")
	if struct["InvitationId"] then asserts.AssertInvitationId(struct["InvitationId"]) end
	if struct["InvitedAt"] then asserts.AssertInvitedAt(struct["InvitedAt"]) end
	if struct["RelationshipStatus"] then asserts.Assert__string(struct["RelationshipStatus"]) end
	if struct["AccountId"] then asserts.Assert__string(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Master[k], "Master contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Master
-- Contains details about the master account.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvitationId [InvitationId] This value is used to validate the master account to the member account.
-- * InvitedAt [InvitedAt] Timestamp at which the invitation was sent
-- * RelationshipStatus [__string] The status of the relationship between the master and member accounts.
-- * AccountId [__string] Master account ID
-- @return Master structure as a key-value pair table
function M.Master(args)
	assert(args, "You must provide an argument table when creating Master")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvitationId"] = args["InvitationId"],
		["InvitedAt"] = args["InvitedAt"],
		["RelationshipStatus"] = args["RelationshipStatus"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertMaster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Finding = { ["Confidence"] = true, ["Resource"] = true, ["Description"] = true, ["Service"] = true, ["Title"] = true, ["Type"] = true, ["Region"] = true, ["Partition"] = true, ["Arn"] = true, ["UpdatedAt"] = true, ["SchemaVersion"] = true, ["Severity"] = true, ["Id"] = true, ["CreatedAt"] = true, ["AccountId"] = true, nil }

function asserts.AssertFinding(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Finding to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["SchemaVersion"], "Expected key SchemaVersion to exist in table")
	assert(struct["CreatedAt"], "Expected key CreatedAt to exist in table")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Severity"], "Expected key Severity to exist in table")
	assert(struct["UpdatedAt"], "Expected key UpdatedAt to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Region"], "Expected key Region to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["Confidence"] then asserts.Assert__double(struct["Confidence"]) end
	if struct["Resource"] then asserts.AssertResource(struct["Resource"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Service"] then asserts.AssertService(struct["Service"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Partition"] then asserts.Assert__string(struct["Partition"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["UpdatedAt"] then asserts.AssertUpdatedAt(struct["UpdatedAt"]) end
	if struct["SchemaVersion"] then asserts.Assert__string(struct["SchemaVersion"]) end
	if struct["Severity"] then asserts.Assert__double(struct["Severity"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["CreatedAt"] then asserts.AssertCreatedAt(struct["CreatedAt"]) end
	if struct["AccountId"] then asserts.Assert__string(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Finding[k], "Finding contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Finding
-- Representation of a abnormal or suspicious activity.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [__double] The confidence level of a finding.
-- * Resource [Resource] The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
-- * Description [__string] The description of a finding.
-- * Service [Service] Additional information assigned to the generated finding by GuardDuty.
-- * Title [__string] The title of a finding.
-- * Type [__string] The type of a finding described by the action.
-- * Region [__string] The AWS region where the activity occurred that prompted GuardDuty to generate a finding.
-- * Partition [__string] The AWS resource partition.
-- * Arn [__string] The ARN of a finding described by the action.
-- * UpdatedAt [UpdatedAt] The time stamp at which a finding was last updated.
-- * SchemaVersion [__string] Findings' schema version.
-- * Severity [__double] The severity of a finding.
-- * Id [__string] The identifier that corresponds to a finding described by the action.
-- * CreatedAt [CreatedAt] The time stamp at which a finding was generated.
-- * AccountId [__string] AWS account ID where the activity occurred that prompted GuardDuty to generate a finding.
-- Required key: AccountId
-- Required key: SchemaVersion
-- Required key: CreatedAt
-- Required key: Resource
-- Required key: Severity
-- Required key: UpdatedAt
-- Required key: Type
-- Required key: Region
-- Required key: Id
-- Required key: Arn
-- @return Finding structure as a key-value pair table
function M.Finding(args)
	assert(args, "You must provide an argument table when creating Finding")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Resource"] = args["Resource"],
		["Description"] = args["Description"],
		["Service"] = args["Service"],
		["Title"] = args["Title"],
		["Type"] = args["Type"],
		["Region"] = args["Region"],
		["Partition"] = args["Partition"],
		["Arn"] = args["Arn"],
		["UpdatedAt"] = args["UpdatedAt"],
		["SchemaVersion"] = args["SchemaVersion"],
		["Severity"] = args["Severity"],
		["Id"] = args["Id"],
		["CreatedAt"] = args["CreatedAt"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertFinding(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteThreatIntelSetRequest = { ["DetectorId"] = true, ["ThreatIntelSetId"] = true, nil }

function asserts.AssertDeleteThreatIntelSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThreatIntelSetRequest to be of type 'table'")
	assert(struct["ThreatIntelSetId"], "Expected key ThreatIntelSetId to exist in table")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["ThreatIntelSetId"] then asserts.Assert__string(struct["ThreatIntelSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThreatIntelSetRequest[k], "DeleteThreatIntelSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThreatIntelSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to delete.
-- * ThreatIntelSetId [__string] The unique ID that specifies the ThreatIntelSet that you want to delete.
-- Required key: ThreatIntelSetId
-- Required key: DetectorId
-- @return DeleteThreatIntelSetRequest structure as a key-value pair table
function M.DeleteThreatIntelSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteThreatIntelSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
        ["{threatIntelSetId}"] = args["ThreatIntelSetId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
		["ThreatIntelSetId"] = args["ThreatIntelSetId"],
	}
	asserts.AssertDeleteThreatIntelSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMembersResponse = { ["NextToken"] = true, ["Members"] = true, nil }

function asserts.AssertListMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMembersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Members"] then asserts.AssertMembers(struct["Members"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMembersResponse[k], "ListMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] 
-- * Members [Members] 
-- @return ListMembersResponse structure as a key-value pair table
function M.ListMembersResponse(args)
	assert(args, "You must provide an argument table when creating ListMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Members"] = args["Members"],
	}
	asserts.AssertListMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteThreatIntelSetResponse = { nil }

function asserts.AssertDeleteThreatIntelSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThreatIntelSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteThreatIntelSetResponse[k], "DeleteThreatIntelSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThreatIntelSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteThreatIntelSetResponse structure as a key-value pair table
function M.DeleteThreatIntelSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteThreatIntelSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteThreatIntelSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateFromMasterAccountResponse = { nil }

function asserts.AssertDisassociateFromMasterAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFromMasterAccountResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateFromMasterAccountResponse[k], "DisassociateFromMasterAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFromMasterAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateFromMasterAccountResponse structure as a key-value pair table
function M.DisassociateFromMasterAccountResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateFromMasterAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateFromMasterAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFilterResponse = { ["Action"] = true, ["FindingCriteria"] = true, ["Description"] = true, ["Rank"] = true, ["Name"] = true, nil }

function asserts.AssertGetFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFilterResponse to be of type 'table'")
	if struct["Action"] then asserts.AssertFilterAction(struct["Action"]) end
	if struct["FindingCriteria"] then asserts.AssertFindingCriteria(struct["FindingCriteria"]) end
	if struct["Description"] then asserts.AssertFilterDescription(struct["Description"]) end
	if struct["Rank"] then asserts.AssertFilterRank(struct["Rank"]) end
	if struct["Name"] then asserts.AssertFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFilterResponse[k], "GetFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFilterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [FilterAction] Specifies the action that is to be applied to the findings that match the filter.
-- * FindingCriteria [FindingCriteria] Represents the criteria to be used in the filter for querying findings.
-- * Description [FilterDescription] The description of the filter.
-- * Rank [FilterRank] Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
-- * Name [FilterName] The name of the filter.
-- @return GetFilterResponse structure as a key-value pair table
function M.GetFilterResponse(args)
	assert(args, "You must provide an argument table when creating GetFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["FindingCriteria"] = args["FindingCriteria"],
		["Description"] = args["Description"],
		["Rank"] = args["Rank"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMasterAccountRequest = { ["DetectorId"] = true, nil }

function asserts.AssertGetMasterAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMasterAccountRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMasterAccountRequest[k], "GetMasterAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMasterAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty member account.
-- Required key: DetectorId
-- @return GetMasterAccountRequest structure as a key-value pair table
function M.GetMasterAccountRequest(args)
	assert(args, "You must provide an argument table when creating GetMasterAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertGetMasterAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSampleFindingsResponse = { nil }

function asserts.AssertCreateSampleFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSampleFindingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSampleFindingsResponse[k], "CreateSampleFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSampleFindingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateSampleFindingsResponse structure as a key-value pair table
function M.CreateSampleFindingsResponse(args)
	assert(args, "You must provide an argument table when creating CreateSampleFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateSampleFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInvitationsResponse = { ["NextToken"] = true, ["Invitations"] = true, nil }

function asserts.AssertListInvitationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvitationsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Invitations"] then asserts.AssertInvitations(struct["Invitations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvitationsResponse[k], "ListInvitationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvitationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] 
-- * Invitations [Invitations] 
-- @return ListInvitationsResponse structure as a key-value pair table
function M.ListInvitationsResponse(args)
	assert(args, "You must provide an argument table when creating ListInvitationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Invitations"] = args["Invitations"],
	}
	asserts.AssertListInvitationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFiltersResponse = { ["FilterNames"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFiltersResponse to be of type 'table'")
	if struct["FilterNames"] then asserts.AssertFilterNames(struct["FilterNames"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFiltersResponse[k], "ListFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFiltersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterNames [FilterNames] 
-- * NextToken [NextToken] 
-- @return ListFiltersResponse structure as a key-value pair table
function M.ListFiltersResponse(args)
	assert(args, "You must provide an argument table when creating ListFiltersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterNames"] = args["FilterNames"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListFiltersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnarchiveFindingsResponse = { nil }

function asserts.AssertUnarchiveFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnarchiveFindingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnarchiveFindingsResponse[k], "UnarchiveFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnarchiveFindingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnarchiveFindingsResponse structure as a key-value pair table
function M.UnarchiveFindingsResponse(args)
	assert(args, "You must provide an argument table when creating UnarchiveFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnarchiveFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteMembersRequest = { ["DisableEmailNotification"] = true, ["Message"] = true, ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertInviteMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["DisableEmailNotification"] then asserts.Assert__boolean(struct["DisableEmailNotification"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteMembersRequest[k], "InviteMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteMembersRequest
-- InviteMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisableEmailNotification [__boolean] A boolean value that specifies whether you want to disable email notification to the accounts that you’re inviting to GuardDuty as members.
-- * Message [Message] The invitation message that you want to send to the accounts that you’re inviting to GuardDuty as members.
-- * AccountIds [AccountIds] A list of account IDs of the accounts that you want to invite to GuardDuty as members.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account with which you want to invite members.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return InviteMembersRequest structure as a key-value pair table
function M.InviteMembersRequest(args)
	assert(args, "You must provide an argument table when creating InviteMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DisableEmailNotification"] = args["DisableEmailNotification"],
		["Message"] = args["Message"],
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertInviteMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInvitationsRequest = { ["AccountIds"] = true, nil }

function asserts.AssertDeleteInvitationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInvitationsRequest to be of type 'table'")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInvitationsRequest[k], "DeleteInvitationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInvitationsRequest
-- DeleteInvitations request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.
-- Required key: AccountIds
-- @return DeleteInvitationsRequest structure as a key-value pair table
function M.DeleteInvitationsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInvitationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
	}
	asserts.AssertDeleteInvitationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertDeleteMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMembersResponse[k], "DeleteMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return DeleteMembersResponse structure as a key-value pair table
function M.DeleteMembersResponse(args)
	assert(args, "You must provide an argument table when creating DeleteMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertDeleteMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeclineInvitationsRequest = { ["AccountIds"] = true, nil }

function asserts.AssertDeclineInvitationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineInvitationsRequest to be of type 'table'")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeclineInvitationsRequest[k], "DeclineInvitationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineInvitationsRequest
-- DeclineInvitations request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to decline invitations from.
-- Required key: AccountIds
-- @return DeclineInvitationsRequest structure as a key-value pair table
function M.DeclineInvitationsRequest(args)
	assert(args, "You must provide an argument table when creating DeclineInvitationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
	}
	asserts.AssertDeclineInvitationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMembersRequest = { ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertDeleteMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMembersRequest[k], "DeleteMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMembersRequest
-- DeleteMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the GuardDuty member accounts that you want to delete.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account whose members you want to delete.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return DeleteMembersRequest structure as a key-value pair table
function M.DeleteMembersRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDeleteMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFiltersRequest = { ["DetectorId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFiltersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFiltersRequest[k], "ListFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFiltersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service where you want to list filters.
-- * NextToken [__string] Paginates results. Set the value of this parameter to NULL on your first call to the ListFilters operation.For subsequent calls to the operation, fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
-- * MaxResults [MaxResults] Indicates the maximum number of items that you want in the response. The maximum value is 50.
-- Required key: DetectorId
-- @return ListFiltersRequest structure as a key-value pair table
function M.ListFiltersRequest(args)
	assert(args, "You must provide an argument table when creating ListFiltersRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListFiltersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThreatIntelSetRequest = { ["DetectorId"] = true, ["ThreatIntelSetId"] = true, nil }

function asserts.AssertGetThreatIntelSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThreatIntelSetRequest to be of type 'table'")
	assert(struct["ThreatIntelSetId"], "Expected key ThreatIntelSetId to exist in table")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["ThreatIntelSetId"] then asserts.Assert__string(struct["ThreatIntelSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThreatIntelSetRequest[k], "GetThreatIntelSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThreatIntelSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to describe.
-- * ThreatIntelSetId [__string] The unique ID that specifies the ThreatIntelSet that you want to describe.
-- Required key: ThreatIntelSetId
-- Required key: DetectorId
-- @return GetThreatIntelSetRequest structure as a key-value pair table
function M.GetThreatIntelSetRequest(args)
	assert(args, "You must provide an argument table when creating GetThreatIntelSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
        ["{threatIntelSetId}"] = args["ThreatIntelSetId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
		["ThreatIntelSetId"] = args["ThreatIntelSetId"],
	}
	asserts.AssertGetThreatIntelSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIPSetResponse = { ["Status"] = true, ["Name"] = true, ["Location"] = true, ["Format"] = true, nil }

function asserts.AssertGetIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertIpSetStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["Format"] then asserts.AssertIpSetFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIPSetResponse[k], "GetIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [IpSetStatus] The status of ipSet file uploaded.
-- * Name [Name] The user friendly name to identify the IPSet. This name is displayed in all findings that are triggered by activity that involves IP addresses included in this IPSet.
-- * Location [Location] The URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
-- * Format [IpSetFormat] The format of the file that contains the IPSet.
-- @return GetIPSetResponse structure as a key-value pair table
function M.GetIPSetResponse(args)
	assert(args, "You must provide an argument table when creating GetIPSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["Location"] = args["Location"],
		["Format"] = args["Format"],
	}
	asserts.AssertGetIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFilterResponse = { nil }

function asserts.AssertDeleteFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFilterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteFilterResponse[k], "DeleteFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFilterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteFilterResponse structure as a key-value pair table
function M.DeleteFilterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopMonitoringMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertStopMonitoringMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopMonitoringMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopMonitoringMembersResponse[k], "StopMonitoringMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopMonitoringMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return StopMonitoringMembersResponse structure as a key-value pair table
function M.StopMonitoringMembersResponse(args)
	assert(args, "You must provide an argument table when creating StopMonitoringMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertStopMonitoringMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFindingsFeedbackResponse = { nil }

function asserts.AssertUpdateFindingsFeedbackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFindingsFeedbackResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateFindingsFeedbackResponse[k], "UpdateFindingsFeedbackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFindingsFeedbackResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateFindingsFeedbackResponse structure as a key-value pair table
function M.UpdateFindingsFeedbackResponse(args)
	assert(args, "You must provide an argument table when creating UpdateFindingsFeedbackResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateFindingsFeedbackResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceDetails = { ["ProductCodes"] = true, ["AvailabilityZone"] = true, ["Tags"] = true, ["InstanceId"] = true, ["InstanceState"] = true, ["ImageDescription"] = true, ["ImageId"] = true, ["Platform"] = true, ["LaunchTime"] = true, ["IamInstanceProfile"] = true, ["InstanceType"] = true, ["NetworkInterfaces"] = true, nil }

function asserts.AssertInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceDetails to be of type 'table'")
	if struct["ProductCodes"] then asserts.AssertProductCodes(struct["ProductCodes"]) end
	if struct["AvailabilityZone"] then asserts.Assert__string(struct["AvailabilityZone"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["InstanceId"] then asserts.Assert__string(struct["InstanceId"]) end
	if struct["InstanceState"] then asserts.Assert__string(struct["InstanceState"]) end
	if struct["ImageDescription"] then asserts.Assert__string(struct["ImageDescription"]) end
	if struct["ImageId"] then asserts.Assert__string(struct["ImageId"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["LaunchTime"] then asserts.Assert__string(struct["LaunchTime"]) end
	if struct["IamInstanceProfile"] then asserts.AssertIamInstanceProfile(struct["IamInstanceProfile"]) end
	if struct["InstanceType"] then asserts.Assert__string(struct["InstanceType"]) end
	if struct["NetworkInterfaces"] then asserts.AssertNetworkInterfaces(struct["NetworkInterfaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceDetails[k], "InstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceDetails
-- The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductCodes [ProductCodes] The product code of the EC2 instance.
-- * AvailabilityZone [__string] The availability zone of the EC2 instance.
-- * Tags [Tags] The tags of the EC2 instance.
-- * InstanceId [__string] The ID of the EC2 instance.
-- * InstanceState [__string] The state of the EC2 instance.
-- * ImageDescription [__string] The image description of the EC2 instance.
-- * ImageId [__string] The image ID of the EC2 instance.
-- * Platform [__string] The platform of the EC2 instance.
-- * LaunchTime [__string] The launch time of the EC2 instance.
-- * IamInstanceProfile [IamInstanceProfile] 
-- * InstanceType [__string] The type of the EC2 instance.
-- * NetworkInterfaces [NetworkInterfaces] The network interface information of the EC2 instance.
-- @return InstanceDetails structure as a key-value pair table
function M.InstanceDetails(args)
	assert(args, "You must provide an argument table when creating InstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductCodes"] = args["ProductCodes"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Tags"] = args["Tags"],
		["InstanceId"] = args["InstanceId"],
		["InstanceState"] = args["InstanceState"],
		["ImageDescription"] = args["ImageDescription"],
		["ImageId"] = args["ImageId"],
		["Platform"] = args["Platform"],
		["LaunchTime"] = args["LaunchTime"],
		["IamInstanceProfile"] = args["IamInstanceProfile"],
		["InstanceType"] = args["InstanceType"],
		["NetworkInterfaces"] = args["NetworkInterfaces"],
	}
	asserts.AssertInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIPSetRequest = { ["IpSetId"] = true, ["Activate"] = true, ["Location"] = true, ["DetectorId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["IpSetId"], "Expected key IpSetId to exist in table")
	if struct["IpSetId"] then asserts.Assert__string(struct["IpSetId"]) end
	if struct["Activate"] then asserts.AssertActivate(struct["Activate"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIPSetRequest[k], "UpdateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetRequest
-- UpdateIPSet request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpSetId [__string] The unique ID that specifies the IPSet that you want to update.
-- * Activate [Activate] The updated boolean value that specifies whether the IPSet is active or not.
-- * Location [Location] The updated URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose IPSet you want to update.
-- * Name [Name] The unique ID that specifies the IPSet that you want to update.
-- Required key: DetectorId
-- Required key: IpSetId
-- @return UpdateIPSetRequest structure as a key-value pair table
function M.UpdateIPSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ipSetId}"] = args["IpSetId"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IpSetId"] = args["IpSetId"],
		["Activate"] = args["Activate"],
		["Location"] = args["Location"],
		["DetectorId"] = args["DetectorId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDetectorRequest = { ["FindingPublishingFrequency"] = true, ["DetectorId"] = true, ["Enable"] = true, nil }

function asserts.AssertUpdateDetectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDetectorRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["FindingPublishingFrequency"] then asserts.AssertFindingPublishingFrequency(struct["FindingPublishingFrequency"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Enable"] then asserts.AssertEnable(struct["Enable"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDetectorRequest[k], "UpdateDetectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDetectorRequest
-- UpdateDetector request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingPublishingFrequency [FindingPublishingFrequency] A enum value that specifies how frequently customer got Finding updates published.
-- * DetectorId [__string] The unique ID of the detector that you want to update.
-- * Enable [Enable] Updated boolean value for the detector that specifies whether the detector is enabled.
-- Required key: DetectorId
-- @return UpdateDetectorRequest structure as a key-value pair table
function M.UpdateDetectorRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDetectorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingPublishingFrequency"] = args["FindingPublishingFrequency"],
		["DetectorId"] = args["DetectorId"],
		["Enable"] = args["Enable"],
	}
	asserts.AssertUpdateDetectorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityGroup = { ["GroupName"] = true, ["GroupId"] = true, nil }

function asserts.AssertSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroup to be of type 'table'")
	if struct["GroupName"] then asserts.Assert__string(struct["GroupName"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroup[k], "SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroup
-- Security groups associated with the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [__string] EC2 instance's security group name.
-- * GroupId [__string] EC2 instance's security group ID.
-- @return SecurityGroup structure as a key-value pair table
function M.SecurityGroup(args)
	assert(args, "You must provide an argument table when creating SecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Member = { ["RelationshipStatus"] = true, ["InvitedAt"] = true, ["MasterId"] = true, ["DetectorId"] = true, ["UpdatedAt"] = true, ["Email"] = true, ["AccountId"] = true, nil }

function asserts.AssertMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Member to be of type 'table'")
	assert(struct["Email"], "Expected key Email to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["MasterId"], "Expected key MasterId to exist in table")
	assert(struct["UpdatedAt"], "Expected key UpdatedAt to exist in table")
	assert(struct["RelationshipStatus"], "Expected key RelationshipStatus to exist in table")
	if struct["RelationshipStatus"] then asserts.Assert__string(struct["RelationshipStatus"]) end
	if struct["InvitedAt"] then asserts.AssertInvitedAt(struct["InvitedAt"]) end
	if struct["MasterId"] then asserts.AssertMasterId(struct["MasterId"]) end
	if struct["DetectorId"] then asserts.AssertDetectorId(struct["DetectorId"]) end
	if struct["UpdatedAt"] then asserts.AssertUpdatedAt(struct["UpdatedAt"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Member[k], "Member contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Member
-- Contains details about the member account.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RelationshipStatus [__string] The status of the relationship between the member and the master.
-- * InvitedAt [InvitedAt] Timestamp at which the invitation was sent
-- * MasterId [MasterId] 
-- * DetectorId [DetectorId] 
-- * UpdatedAt [UpdatedAt] 
-- * Email [Email] Member account's email address.
-- * AccountId [AccountId] 
-- Required key: Email
-- Required key: AccountId
-- Required key: MasterId
-- Required key: UpdatedAt
-- Required key: RelationshipStatus
-- @return Member structure as a key-value pair table
function M.Member(args)
	assert(args, "You must provide an argument table when creating Member")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RelationshipStatus"] = args["RelationshipStatus"],
		["InvitedAt"] = args["InvitedAt"],
		["MasterId"] = args["MasterId"],
		["DetectorId"] = args["DetectorId"],
		["UpdatedAt"] = args["UpdatedAt"],
		["Email"] = args["Email"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveFindingsRequest = { ["FindingIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertArchiveFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveFindingsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FindingIds"], "Expected key FindingIds to exist in table")
	if struct["FindingIds"] then asserts.AssertFindingIds(struct["FindingIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArchiveFindingsRequest[k], "ArchiveFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveFindingsRequest
-- ArchiveFindings request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingIds [FindingIds] IDs of the findings that you want to archive.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings you want to archive.
-- Required key: DetectorId
-- Required key: FindingIds
-- @return ArchiveFindingsRequest structure as a key-value pair table
function M.ArchiveFindingsRequest(args)
	assert(args, "You must provide an argument table when creating ArchiveFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingIds"] = args["FindingIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertArchiveFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDetectorResponse = { ["FindingPublishingFrequency"] = true, ["Status"] = true, ["ServiceRole"] = true, ["CreatedAt"] = true, ["UpdatedAt"] = true, nil }

function asserts.AssertGetDetectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDetectorResponse to be of type 'table'")
	if struct["FindingPublishingFrequency"] then asserts.AssertFindingPublishingFrequency(struct["FindingPublishingFrequency"]) end
	if struct["Status"] then asserts.AssertDetectorStatus(struct["Status"]) end
	if struct["ServiceRole"] then asserts.AssertServiceRole(struct["ServiceRole"]) end
	if struct["CreatedAt"] then asserts.AssertCreatedAt(struct["CreatedAt"]) end
	if struct["UpdatedAt"] then asserts.AssertUpdatedAt(struct["UpdatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDetectorResponse[k], "GetDetectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDetectorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingPublishingFrequency [FindingPublishingFrequency] 
-- * Status [DetectorStatus] 
-- * ServiceRole [ServiceRole] 
-- * CreatedAt [CreatedAt] 
-- * UpdatedAt [UpdatedAt] 
-- @return GetDetectorResponse structure as a key-value pair table
function M.GetDetectorResponse(args)
	assert(args, "You must provide an argument table when creating GetDetectorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingPublishingFrequency"] = args["FindingPublishingFrequency"],
		["Status"] = args["Status"],
		["ServiceRole"] = args["ServiceRole"],
		["CreatedAt"] = args["CreatedAt"],
		["UpdatedAt"] = args["UpdatedAt"],
	}
	asserts.AssertGetDetectorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIPSetRequest = { ["IpSetId"] = true, ["DetectorId"] = true, nil }

function asserts.AssertDeleteIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["IpSetId"], "Expected key IpSetId to exist in table")
	if struct["IpSetId"] then asserts.Assert__string(struct["IpSetId"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIPSetRequest[k], "DeleteIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpSetId [__string] The unique ID that specifies the IPSet that you want to delete.
-- * DetectorId [__string] The detectorID that specifies the GuardDuty service whose IPSet you want to delete.
-- Required key: DetectorId
-- Required key: IpSetId
-- @return DeleteIPSetRequest structure as a key-value pair table
function M.DeleteIPSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ipSetId}"] = args["IpSetId"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IpSetId"] = args["IpSetId"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDeleteIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PortProbeAction = { ["PortProbeDetails"] = true, ["Blocked"] = true, nil }

function asserts.AssertPortProbeAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortProbeAction to be of type 'table'")
	if struct["PortProbeDetails"] then asserts.Assert__listOfPortProbeDetail(struct["PortProbeDetails"]) end
	if struct["Blocked"] then asserts.Assert__boolean(struct["Blocked"]) end
	for k,_ in pairs(struct) do
		assert(keys.PortProbeAction[k], "PortProbeAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortProbeAction
-- Information about the PORT_PROBE action described in this finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortProbeDetails [__listOfPortProbeDetail] A list of port probe details objects.
-- * Blocked [__boolean] Port probe blocked information.
-- @return PortProbeAction structure as a key-value pair table
function M.PortProbeAction(args)
	assert(args, "You must provide an argument table when creating PortProbeAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortProbeDetails"] = args["PortProbeDetails"],
		["Blocked"] = args["Blocked"],
	}
	asserts.AssertPortProbeAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SortCriteria = { ["OrderBy"] = true, ["AttributeName"] = true, nil }

function asserts.AssertSortCriteria(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SortCriteria to be of type 'table'")
	if struct["OrderBy"] then asserts.AssertOrderBy(struct["OrderBy"]) end
	if struct["AttributeName"] then asserts.Assert__string(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SortCriteria[k], "SortCriteria contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SortCriteria
-- Represents the criteria used for sorting findings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrderBy [OrderBy] Order by which the sorted findings are to be displayed.
-- * AttributeName [__string] Represents the finding attribute (for example, accountId) by which to sort findings.
-- @return SortCriteria structure as a key-value pair table
function M.SortCriteria(args)
	assert(args, "You must provide an argument table when creating SortCriteria")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrderBy"] = args["OrderBy"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertSortCriteria(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMembersRequest = { ["AccountDetails"] = true, ["DetectorId"] = true, nil }

function asserts.AssertCreateMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountDetails"], "Expected key AccountDetails to exist in table")
	if struct["AccountDetails"] then asserts.AssertAccountDetails(struct["AccountDetails"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMembersRequest[k], "CreateMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMembersRequest
-- CreateMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountDetails [AccountDetails] A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account with which you want to associate member accounts.
-- Required key: DetectorId
-- Required key: AccountDetails
-- @return CreateMembersRequest structure as a key-value pair table
function M.CreateMembersRequest(args)
	assert(args, "You must provide an argument table when creating CreateMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountDetails"] = args["AccountDetails"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertCreateMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFindingsStatisticsRequest = { ["FindingStatisticTypes"] = true, ["DetectorId"] = true, ["FindingCriteria"] = true, nil }

function asserts.AssertGetFindingsStatisticsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFindingsStatisticsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FindingStatisticTypes"], "Expected key FindingStatisticTypes to exist in table")
	if struct["FindingStatisticTypes"] then asserts.AssertFindingStatisticTypes(struct["FindingStatisticTypes"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["FindingCriteria"] then asserts.AssertFindingCriteria(struct["FindingCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFindingsStatisticsRequest[k], "GetFindingsStatisticsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFindingsStatisticsRequest
-- GetFindingsStatistics request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingStatisticTypes [FindingStatisticTypes] Types of finding statistics to retrieve.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings' statistics you want to retrieve.
-- * FindingCriteria [FindingCriteria] Represents the criteria used for querying findings.
-- Required key: DetectorId
-- Required key: FindingStatisticTypes
-- @return GetFindingsStatisticsRequest structure as a key-value pair table
function M.GetFindingsStatisticsRequest(args)
	assert(args, "You must provide an argument table when creating GetFindingsStatisticsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingStatisticTypes"] = args["FindingStatisticTypes"],
		["DetectorId"] = args["DetectorId"],
		["FindingCriteria"] = args["FindingCriteria"],
	}
	asserts.AssertGetFindingsStatisticsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFilterResponse = { ["Name"] = true, nil }

function asserts.AssertCreateFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFilterResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFilterResponse[k], "CreateFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFilterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [FilterName] The name of the successfully created filter.
-- @return CreateFilterResponse structure as a key-value pair table
function M.CreateFilterResponse(args)
	assert(args, "You must provide an argument table when creating CreateFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertInviteMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteMembersResponse[k], "InviteMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return InviteMembersResponse structure as a key-value pair table
function M.InviteMembersResponse(args)
	assert(args, "You must provide an argument table when creating InviteMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertInviteMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptInvitationRequest = { ["MasterId"] = true, ["InvitationId"] = true, ["DetectorId"] = true, nil }

function asserts.AssertAcceptInvitationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptInvitationRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["MasterId"], "Expected key MasterId to exist in table")
	assert(struct["InvitationId"], "Expected key InvitationId to exist in table")
	if struct["MasterId"] then asserts.AssertMasterId(struct["MasterId"]) end
	if struct["InvitationId"] then asserts.AssertInvitationId(struct["InvitationId"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptInvitationRequest[k], "AcceptInvitationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptInvitationRequest
-- AcceptInvitation request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterId [MasterId] The account ID of the master GuardDuty account whose invitation you're accepting.
-- * InvitationId [InvitationId] This value is used to validate the master account to the member account.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty member account.
-- Required key: DetectorId
-- Required key: MasterId
-- Required key: InvitationId
-- @return AcceptInvitationRequest structure as a key-value pair table
function M.AcceptInvitationRequest(args)
	assert(args, "You must provide an argument table when creating AcceptInvitationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterId"] = args["MasterId"],
		["InvitationId"] = args["InvitationId"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertAcceptInvitationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Condition = { ["Gt"] = true, ["Gte"] = true, ["Lt"] = true, ["Lte"] = true, ["Eq"] = true, ["Neq"] = true, nil }

function asserts.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	if struct["Gt"] then asserts.Assert__integer(struct["Gt"]) end
	if struct["Gte"] then asserts.Assert__integer(struct["Gte"]) end
	if struct["Lt"] then asserts.Assert__integer(struct["Lt"]) end
	if struct["Lte"] then asserts.Assert__integer(struct["Lte"]) end
	if struct["Eq"] then asserts.AssertEq(struct["Eq"]) end
	if struct["Neq"] then asserts.AssertNeq(struct["Neq"]) end
	for k,_ in pairs(struct) do
		assert(keys.Condition[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
-- Finding attribute (for example, accountId) for which conditions and values must be specified when querying findings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Gt [__integer] Represents the greater than condition to be applied to a single field when querying for findings.
-- * Gte [__integer] Represents the greater than equal condition to be applied to a single field when querying for findings.
-- * Lt [__integer] Represents the less than condition to be applied to a single field when querying for findings.
-- * Lte [__integer] Represents the less than equal condition to be applied to a single field when querying for findings.
-- * Eq [Eq] Represents the equal condition to be applied to a single field when querying for findings.
-- * Neq [Neq] Represents the not equal condition to be applied to a single field when querying for findings.
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provide an argument table when creating Condition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Gt"] = args["Gt"],
		["Gte"] = args["Gte"],
		["Lt"] = args["Lt"],
		["Lte"] = args["Lte"],
		["Eq"] = args["Eq"],
		["Neq"] = args["Neq"],
	}
	asserts.AssertCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFilterRequest = { ["FilterName"] = true, ["DetectorId"] = true, nil }

function asserts.AssertGetFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFilterRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FilterName"], "Expected key FilterName to exist in table")
	if struct["FilterName"] then asserts.Assert__string(struct["FilterName"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFilterRequest[k], "GetFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterName [__string] The name of the filter whose details you want to get.
-- * DetectorId [__string] The detector ID that specifies the GuardDuty service where you want to list the details of the specified filter.
-- Required key: DetectorId
-- Required key: FilterName
-- @return GetFilterRequest structure as a key-value pair table
function M.GetFilterRequest(args)
	assert(args, "You must provide an argument table when creating GetFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{filterName}"] = args["FilterName"],
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterName"] = args["FilterName"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertGetFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThreatIntelSetResponse = { ["Status"] = true, ["Name"] = true, ["Location"] = true, ["Format"] = true, nil }

function asserts.AssertGetThreatIntelSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThreatIntelSetResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertThreatIntelSetStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["Format"] then asserts.AssertThreatIntelSetFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThreatIntelSetResponse[k], "GetThreatIntelSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThreatIntelSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ThreatIntelSetStatus] The status of threatIntelSet file uploaded.
-- * Name [Name] A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.
-- * Location [Location] The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
-- * Format [ThreatIntelSetFormat] The format of the threatIntelSet.
-- @return GetThreatIntelSetResponse structure as a key-value pair table
function M.GetThreatIntelSetResponse(args)
	assert(args, "You must provide an argument table when creating GetThreatIntelSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["Location"] = args["Location"],
		["Format"] = args["Format"],
	}
	asserts.AssertGetThreatIntelSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountDetail = { ["Email"] = true, ["AccountId"] = true, nil }

function asserts.AssertAccountDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountDetail to be of type 'table'")
	assert(struct["Email"], "Expected key Email to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountDetail[k], "AccountDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountDetail
-- An object containing the member's accountId and email address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Email [Email] Member account's email address.
-- * AccountId [AccountId] Member account ID.
-- Required key: Email
-- Required key: AccountId
-- @return AccountDetail structure as a key-value pair table
function M.AccountDetail(args)
	assert(args, "You must provide an argument table when creating AccountDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Email"] = args["Email"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertAccountDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMembersRequest = { ["OnlyAssociated"] = true, ["DetectorId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["OnlyAssociated"] then asserts.Assert__string(struct["OnlyAssociated"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMembersRequest[k], "ListMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMembersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OnlyAssociated [__string] Specifies what member accounts the response is to include based on their relationship status with the master account. The default value is TRUE. If onlyAssociated is set to TRUE, the response will include member accounts whose relationship status with the master is set to Enabled, Disabled. If onlyAssociated is set to FALSE, the response will include all existing member accounts.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account whose members you want to list.
-- * NextToken [__string] You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMembers action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of items you want in the response. The default value is 1. The maximum value is 50.
-- Required key: DetectorId
-- @return ListMembersRequest structure as a key-value pair table
function M.ListMembersRequest(args)
	assert(args, "You must provide an argument table when creating ListMembersRequest")
    local query_args = { 
        ["onlyAssociated"] = args["OnlyAssociated"],
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["OnlyAssociated"] = args["OnlyAssociated"],
		["DetectorId"] = args["DetectorId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Invitation = { ["InvitationId"] = true, ["InvitedAt"] = true, ["RelationshipStatus"] = true, ["AccountId"] = true, nil }

function asserts.AssertInvitation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Invitation to be of type 'table'")
	if struct["InvitationId"] then asserts.AssertInvitationId(struct["InvitationId"]) end
	if struct["InvitedAt"] then asserts.AssertInvitedAt(struct["InvitedAt"]) end
	if struct["RelationshipStatus"] then asserts.Assert__string(struct["RelationshipStatus"]) end
	if struct["AccountId"] then asserts.Assert__string(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Invitation[k], "Invitation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Invitation
-- Invitation from an AWS account to become the current account's master.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvitationId [InvitationId] This value is used to validate the inviter account to the member account.
-- * InvitedAt [InvitedAt] Timestamp at which the invitation was sent
-- * RelationshipStatus [__string] The status of the relationship between the inviter and invitee accounts.
-- * AccountId [__string] Inviter account ID
-- @return Invitation structure as a key-value pair table
function M.Invitation(args)
	assert(args, "You must provide an argument table when creating Invitation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvitationId"] = args["InvitationId"],
		["InvitedAt"] = args["InvitedAt"],
		["RelationshipStatus"] = args["RelationshipStatus"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertInvitation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Action = { ["PortProbeAction"] = true, ["NetworkConnectionAction"] = true, ["ActionType"] = true, ["DnsRequestAction"] = true, ["AwsApiCallAction"] = true, nil }

function asserts.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	if struct["PortProbeAction"] then asserts.AssertPortProbeAction(struct["PortProbeAction"]) end
	if struct["NetworkConnectionAction"] then asserts.AssertNetworkConnectionAction(struct["NetworkConnectionAction"]) end
	if struct["ActionType"] then asserts.Assert__string(struct["ActionType"]) end
	if struct["DnsRequestAction"] then asserts.AssertDnsRequestAction(struct["DnsRequestAction"]) end
	if struct["AwsApiCallAction"] then asserts.AssertAwsApiCallAction(struct["AwsApiCallAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.Action[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- Information about the activity described in a finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortProbeAction [PortProbeAction] Information about the PORT_PROBE action described in this finding.
-- * NetworkConnectionAction [NetworkConnectionAction] Information about the NETWORK_CONNECTION action described in this finding.
-- * ActionType [__string] GuardDuty Finding activity type.
-- * DnsRequestAction [DnsRequestAction] Information about the DNS_REQUEST action described in this finding.
-- * AwsApiCallAction [AwsApiCallAction] Information about the AWS_API_CALL action described in this finding.
-- @return Action structure as a key-value pair table
function M.Action(args)
	assert(args, "You must provide an argument table when creating Action")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortProbeAction"] = args["PortProbeAction"],
		["NetworkConnectionAction"] = args["NetworkConnectionAction"],
		["ActionType"] = args["ActionType"],
		["DnsRequestAction"] = args["DnsRequestAction"],
		["AwsApiCallAction"] = args["AwsApiCallAction"],
	}
	asserts.AssertAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnarchiveFindingsRequest = { ["FindingIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertUnarchiveFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnarchiveFindingsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FindingIds"], "Expected key FindingIds to exist in table")
	if struct["FindingIds"] then asserts.AssertFindingIds(struct["FindingIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnarchiveFindingsRequest[k], "UnarchiveFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnarchiveFindingsRequest
-- UnarchiveFindings request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingIds [FindingIds] IDs of the findings that you want to unarchive.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings you want to unarchive.
-- Required key: DetectorId
-- Required key: FindingIds
-- @return UnarchiveFindingsRequest structure as a key-value pair table
function M.UnarchiveFindingsRequest(args)
	assert(args, "You must provide an argument table when creating UnarchiveFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingIds"] = args["FindingIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertUnarchiveFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFilterResponse = { ["Name"] = true, nil }

function asserts.AssertUpdateFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFilterResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFilterResponse[k], "UpdateFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFilterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [FilterName] The name of the filter.
-- @return UpdateFilterResponse structure as a key-value pair table
function M.UpdateFilterResponse(args)
	assert(args, "You must provide an argument table when creating UpdateFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveFindingsResponse = { nil }

function asserts.AssertArchiveFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveFindingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ArchiveFindingsResponse[k], "ArchiveFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveFindingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ArchiveFindingsResponse structure as a key-value pair table
function M.ArchiveFindingsResponse(args)
	assert(args, "You must provide an argument table when creating ArchiveFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertArchiveFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInvitationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListInvitationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvitationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvitationsRequest[k], "ListInvitationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvitationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListInvitations action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of invitations you want in the response. The default value is 50. The maximum value is 50.
-- @return ListInvitationsRequest structure as a key-value pair table
function M.ListInvitationsRequest(args)
	assert(args, "You must provide an argument table when creating ListInvitationsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListInvitationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInvitationsCountRequest = { nil }

function asserts.AssertGetInvitationsCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvitationsCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetInvitationsCountRequest[k], "GetInvitationsCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvitationsCountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetInvitationsCountRequest structure as a key-value pair table
function M.GetInvitationsCountRequest(args)
	assert(args, "You must provide an argument table when creating GetInvitationsCountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetInvitationsCountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateThreatIntelSetResponse = { nil }

function asserts.AssertUpdateThreatIntelSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThreatIntelSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateThreatIntelSetResponse[k], "UpdateThreatIntelSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThreatIntelSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateThreatIntelSetResponse structure as a key-value pair table
function M.UpdateThreatIntelSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateThreatIntelSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateThreatIntelSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PrivateIpAddressDetails = { ["PrivateDnsName"] = true, ["PrivateIpAddress"] = true, nil }

function asserts.AssertPrivateIpAddressDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PrivateIpAddressDetails to be of type 'table'")
	if struct["PrivateDnsName"] then asserts.AssertPrivateDnsName(struct["PrivateDnsName"]) end
	if struct["PrivateIpAddress"] then asserts.AssertPrivateIpAddress(struct["PrivateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.PrivateIpAddressDetails[k], "PrivateIpAddressDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PrivateIpAddressDetails
-- Other private IP address information of the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrivateDnsName [PrivateDnsName] Private DNS name of the EC2 instance.
-- * PrivateIpAddress [PrivateIpAddress] Private IP address of the EC2 instance.
-- @return PrivateIpAddressDetails structure as a key-value pair table
function M.PrivateIpAddressDetails(args)
	assert(args, "You must provide an argument table when creating PrivateIpAddressDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PrivateDnsName"] = args["PrivateDnsName"],
		["PrivateIpAddress"] = args["PrivateIpAddress"],
	}
	asserts.AssertPrivateIpAddressDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.City = { ["CityName"] = true, nil }

function asserts.AssertCity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected City to be of type 'table'")
	if struct["CityName"] then asserts.Assert__string(struct["CityName"]) end
	for k,_ in pairs(struct) do
		assert(keys.City[k], "City contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type City
-- City information of the remote IP address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CityName [__string] City name of the remote IP address.
-- @return City structure as a key-value pair table
function M.City(args)
	assert(args, "You must provide an argument table when creating City")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CityName"] = args["CityName"],
	}
	asserts.AssertCity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainDetails = { nil }

function asserts.AssertDomainDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDetails to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DomainDetails[k], "DomainDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDetails
-- Domain information for the AWS API call.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DomainDetails structure as a key-value pair table
function M.DomainDetails(args)
	assert(args, "You must provide an argument table when creating DomainDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDomainDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFindingsStatisticsResponse = { ["FindingStatistics"] = true, nil }

function asserts.AssertGetFindingsStatisticsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFindingsStatisticsResponse to be of type 'table'")
	if struct["FindingStatistics"] then asserts.AssertFindingStatistics(struct["FindingStatistics"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFindingsStatisticsResponse[k], "GetFindingsStatisticsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFindingsStatisticsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingStatistics [FindingStatistics] Finding statistics object.
-- @return GetFindingsStatisticsResponse structure as a key-value pair table
function M.GetFindingsStatisticsResponse(args)
	assert(args, "You must provide an argument table when creating GetFindingsStatisticsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingStatistics"] = args["FindingStatistics"],
	}
	asserts.AssertGetFindingsStatisticsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIPSetsRequest = { ["DetectorId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListIPSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIPSetsRequest[k], "ListIPSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The unique ID of the detector that you want to retrieve.
-- * NextToken [__string] You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListIPSet action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
-- * MaxResults [MaxResults] You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.
-- Required key: DetectorId
-- @return ListIPSetsRequest structure as a key-value pair table
function M.ListIPSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListIPSetsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListIPSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertCreateMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMembersResponse[k], "CreateMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return CreateMembersResponse structure as a key-value pair table
function M.CreateMembersResponse(args)
	assert(args, "You must provide an argument table when creating CreateMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertCreateMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIPSetRequest = { ["Activate"] = true, ["Name"] = true, ["Format"] = true, ["DetectorId"] = true, ["Location"] = true, ["ClientToken"] = true, nil }

function asserts.AssertCreateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["Activate"], "Expected key Activate to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Activate"] then asserts.AssertActivate(struct["Activate"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Format"] then asserts.AssertIpSetFormat(struct["Format"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["ClientToken"] then asserts.Assert__stringMin0Max64(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIPSetRequest[k], "CreateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetRequest
-- CreateIPSet request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activate [Activate] A boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.
-- * Name [Name] The user friendly name to identify the IPSet. This name is displayed in all findings that are triggered by activity that involves IP addresses included in this IPSet.
-- * Format [IpSetFormat] The format of the file that contains the IPSet.
-- * DetectorId [__string] The unique ID of the detector that you want to update.
-- * Location [Location] The URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
-- * ClientToken [__stringMin0Max64] The idempotency token for the create request.
-- Required key: DetectorId
-- Required key: Format
-- Required key: Activate
-- Required key: Location
-- Required key: Name
-- @return CreateIPSetRequest structure as a key-value pair table
function M.CreateIPSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Activate"] = args["Activate"],
		["Name"] = args["Name"],
		["Format"] = args["Format"],
		["DetectorId"] = args["DetectorId"],
		["Location"] = args["Location"],
		["ClientToken"] = args["ClientToken"],
	}
	asserts.AssertCreateIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFindingsResponse = { ["Findings"] = true, nil }

function asserts.AssertGetFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFindingsResponse to be of type 'table'")
	if struct["Findings"] then asserts.AssertFindings(struct["Findings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFindingsResponse[k], "GetFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFindingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Findings [Findings] 
-- @return GetFindingsResponse structure as a key-value pair table
function M.GetFindingsResponse(args)
	assert(args, "You must provide an argument table when creating GetFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Findings"] = args["Findings"],
	}
	asserts.AssertGetFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIPSetResponse = { ["IpSetId"] = true, nil }

function asserts.AssertCreateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetResponse to be of type 'table'")
	if struct["IpSetId"] then asserts.AssertIpSetId(struct["IpSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIPSetResponse[k], "CreateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpSetId [IpSetId] 
-- @return CreateIPSetResponse structure as a key-value pair table
function M.CreateIPSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateIPSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpSetId"] = args["IpSetId"],
	}
	asserts.AssertCreateIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDetectorRequest = { ["DetectorId"] = true, nil }

function asserts.AssertGetDetectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDetectorRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDetectorRequest[k], "GetDetectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDetectorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The unique ID of the detector that you want to retrieve.
-- Required key: DetectorId
-- @return GetDetectorRequest structure as a key-value pair table
function M.GetDetectorRequest(args)
	assert(args, "You must provide an argument table when creating GetDetectorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertGetDetectorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDetectorRequest = { ["FindingPublishingFrequency"] = true, ["Enable"] = true, ["ClientToken"] = true, nil }

function asserts.AssertCreateDetectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDetectorRequest to be of type 'table'")
	assert(struct["Enable"], "Expected key Enable to exist in table")
	if struct["FindingPublishingFrequency"] then asserts.AssertFindingPublishingFrequency(struct["FindingPublishingFrequency"]) end
	if struct["Enable"] then asserts.AssertEnable(struct["Enable"]) end
	if struct["ClientToken"] then asserts.Assert__stringMin0Max64(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDetectorRequest[k], "CreateDetectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDetectorRequest
-- CreateDetector request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingPublishingFrequency [FindingPublishingFrequency] A enum value that specifies how frequently customer got Finding updates published.
-- * Enable [Enable] A boolean value that specifies whether the detector is to be enabled.
-- * ClientToken [__stringMin0Max64] The idempotency token for the create request.
-- Required key: Enable
-- @return CreateDetectorRequest structure as a key-value pair table
function M.CreateDetectorRequest(args)
	assert(args, "You must provide an argument table when creating CreateDetectorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingPublishingFrequency"] = args["FindingPublishingFrequency"],
		["Enable"] = args["Enable"],
		["ClientToken"] = args["ClientToken"],
	}
	asserts.AssertCreateDetectorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateFromMasterAccountRequest = { ["DetectorId"] = true, nil }

function asserts.AssertDisassociateFromMasterAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFromMasterAccountRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateFromMasterAccountRequest[k], "DisassociateFromMasterAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFromMasterAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty member account.
-- Required key: DetectorId
-- @return DisassociateFromMasterAccountRequest structure as a key-value pair table
function M.DisassociateFromMasterAccountRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateFromMasterAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDisassociateFromMasterAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DnsRequestAction = { ["Domain"] = true, nil }

function asserts.AssertDnsRequestAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DnsRequestAction to be of type 'table'")
	if struct["Domain"] then asserts.AssertDomain(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(keys.DnsRequestAction[k], "DnsRequestAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DnsRequestAction
-- Information about the DNS_REQUEST action described in this finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [Domain] Domain information for the DNS request.
-- @return DnsRequestAction structure as a key-value pair table
function M.DnsRequestAction(args)
	assert(args, "You must provide an argument table when creating DnsRequestAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
	}
	asserts.AssertDnsRequestAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartMonitoringMembersRequest = { ["AccountIds"] = true, ["DetectorId"] = true, nil }

function asserts.AssertStartMonitoringMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMonitoringMembersRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["AccountIds"], "Expected key AccountIds to exist in table")
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartMonitoringMembersRequest[k], "StartMonitoringMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMonitoringMembersRequest
-- StartMonitoringMembers request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIds] A list of account IDs of the GuardDuty member accounts whose findings you want the master account to monitor.
-- * DetectorId [__string] The unique ID of the detector of the GuardDuty account whom you want to re-enable to monitor members' findings.
-- Required key: DetectorId
-- Required key: AccountIds
-- @return StartMonitoringMembersRequest structure as a key-value pair table
function M.StartMonitoringMembersRequest(args)
	assert(args, "You must provide an argument table when creating StartMonitoringMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountIds"] = args["AccountIds"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertStartMonitoringMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["ResourceType"] = true, ["AccessKeyDetails"] = true, ["InstanceDetails"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["ResourceType"] then asserts.Assert__string(struct["ResourceType"]) end
	if struct["AccessKeyDetails"] then asserts.AssertAccessKeyDetails(struct["AccessKeyDetails"]) end
	if struct["InstanceDetails"] then asserts.AssertInstanceDetails(struct["InstanceDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [__string] The type of the AWS resource.
-- * AccessKeyDetails [AccessKeyDetails] 
-- * InstanceDetails [InstanceDetails] 
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["AccessKeyDetails"] = args["AccessKeyDetails"],
		["InstanceDetails"] = args["InstanceDetails"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Country = { ["CountryName"] = true, ["CountryCode"] = true, nil }

function asserts.AssertCountry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Country to be of type 'table'")
	if struct["CountryName"] then asserts.Assert__string(struct["CountryName"]) end
	if struct["CountryCode"] then asserts.Assert__string(struct["CountryCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Country[k], "Country contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Country
-- Country information of the remote IP address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CountryName [__string] Country name of the remote IP address.
-- * CountryCode [__string] Country code of the remote IP address.
-- @return Country structure as a key-value pair table
function M.Country(args)
	assert(args, "You must provide an argument table when creating Country")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CountryName"] = args["CountryName"],
		["CountryCode"] = args["CountryCode"],
	}
	asserts.AssertCountry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkInterface = { ["VpcId"] = true, ["PrivateIpAddresses"] = true, ["NetworkInterfaceId"] = true, ["PublicDnsName"] = true, ["PublicIp"] = true, ["PrivateDnsName"] = true, ["SecurityGroups"] = true, ["Ipv6Addresses"] = true, ["SubnetId"] = true, ["PrivateIpAddress"] = true, nil }

function asserts.AssertNetworkInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterface to be of type 'table'")
	if struct["VpcId"] then asserts.Assert__string(struct["VpcId"]) end
	if struct["PrivateIpAddresses"] then asserts.AssertPrivateIpAddresses(struct["PrivateIpAddresses"]) end
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["PublicDnsName"] then asserts.Assert__string(struct["PublicDnsName"]) end
	if struct["PublicIp"] then asserts.Assert__string(struct["PublicIp"]) end
	if struct["PrivateDnsName"] then asserts.AssertPrivateDnsName(struct["PrivateDnsName"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroups(struct["SecurityGroups"]) end
	if struct["Ipv6Addresses"] then asserts.AssertIpv6Addresses(struct["Ipv6Addresses"]) end
	if struct["SubnetId"] then asserts.Assert__string(struct["SubnetId"]) end
	if struct["PrivateIpAddress"] then asserts.AssertPrivateIpAddress(struct["PrivateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInterface[k], "NetworkInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterface
-- The network interface information of the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcId [__string] The VPC ID of the EC2 instance.
-- * PrivateIpAddresses [PrivateIpAddresses] Other private IP address information of the EC2 instance.
-- * NetworkInterfaceId [NetworkInterfaceId] The ID of the network interface
-- * PublicDnsName [__string] Public DNS name of the EC2 instance.
-- * PublicIp [__string] Public IP address of the EC2 instance.
-- * PrivateDnsName [PrivateDnsName] Private DNS name of the EC2 instance.
-- * SecurityGroups [SecurityGroups] Security groups associated with the EC2 instance.
-- * Ipv6Addresses [Ipv6Addresses] A list of EC2 instance IPv6 address information.
-- * SubnetId [__string] The subnet ID of the EC2 instance.
-- * PrivateIpAddress [PrivateIpAddress] Private IP address of the EC2 instance.
-- @return NetworkInterface structure as a key-value pair table
function M.NetworkInterface(args)
	assert(args, "You must provide an argument table when creating NetworkInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcId"] = args["VpcId"],
		["PrivateIpAddresses"] = args["PrivateIpAddresses"],
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["PublicDnsName"] = args["PublicDnsName"],
		["PublicIp"] = args["PublicIp"],
		["PrivateDnsName"] = args["PrivateDnsName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Ipv6Addresses"] = args["Ipv6Addresses"],
		["SubnetId"] = args["SubnetId"],
		["PrivateIpAddress"] = args["PrivateIpAddress"],
	}
	asserts.AssertNetworkInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFindingsRequest = { ["FindingIds"] = true, ["DetectorId"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertGetFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFindingsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["FindingIds"], "Expected key FindingIds to exist in table")
	if struct["FindingIds"] then asserts.AssertFindingIds(struct["FindingIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["SortCriteria"] then asserts.AssertSortCriteria(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFindingsRequest[k], "GetFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFindingsRequest
-- GetFindings request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingIds [FindingIds] IDs of the findings that you want to retrieve.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.
-- * SortCriteria [SortCriteria] Represents the criteria used for sorting findings.
-- Required key: DetectorId
-- Required key: FindingIds
-- @return GetFindingsRequest structure as a key-value pair table
function M.GetFindingsRequest(args)
	assert(args, "You must provide an argument table when creating GetFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingIds"] = args["FindingIds"],
		["DetectorId"] = args["DetectorId"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertGetFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IamInstanceProfile = { ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertIamInstanceProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamInstanceProfile to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.IamInstanceProfile[k], "IamInstanceProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamInstanceProfile
-- The profile information of the EC2 instance.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] AWS EC2 instance profile ID.
-- * Arn [__string] AWS EC2 instance profile ARN.
-- @return IamInstanceProfile structure as a key-value pair table
function M.IamInstanceProfile(args)
	assert(args, "You must provide an argument table when creating IamInstanceProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertIamInstanceProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateThreatIntelSetRequest = { ["Activate"] = true, ["Name"] = true, ["Format"] = true, ["DetectorId"] = true, ["Location"] = true, ["ClientToken"] = true, nil }

function asserts.AssertCreateThreatIntelSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThreatIntelSetRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["Activate"], "Expected key Activate to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Activate"] then asserts.AssertActivate(struct["Activate"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Format"] then asserts.AssertThreatIntelSetFormat(struct["Format"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["ClientToken"] then asserts.Assert__stringMin0Max64(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThreatIntelSetRequest[k], "CreateThreatIntelSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThreatIntelSetRequest
-- CreateThreatIntelSet request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Activate [Activate] A boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.
-- * Name [Name] A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.
-- * Format [ThreatIntelSetFormat] The format of the file that contains the ThreatIntelSet.
-- * DetectorId [__string] The unique ID of the detector that you want to update.
-- * Location [Location] The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
-- * ClientToken [__stringMin0Max64] The idempotency token for the create request.
-- Required key: DetectorId
-- Required key: Format
-- Required key: Activate
-- Required key: Location
-- Required key: Name
-- @return CreateThreatIntelSetRequest structure as a key-value pair table
function M.CreateThreatIntelSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateThreatIntelSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Activate"] = args["Activate"],
		["Name"] = args["Name"],
		["Format"] = args["Format"],
		["DetectorId"] = args["DetectorId"],
		["Location"] = args["Location"],
		["ClientToken"] = args["ClientToken"],
	}
	asserts.AssertCreateThreatIntelSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDetectorResponse = { ["DetectorId"] = true, nil }

function asserts.AssertCreateDetectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDetectorResponse to be of type 'table'")
	if struct["DetectorId"] then asserts.AssertDetectorId(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDetectorResponse[k], "CreateDetectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDetectorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [DetectorId] The unique ID of the created detector.
-- @return CreateDetectorResponse structure as a key-value pair table
function M.CreateDetectorResponse(args)
	assert(args, "You must provide an argument table when creating CreateDetectorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertCreateDetectorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInvitationsResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertDeleteInvitationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInvitationsResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInvitationsResponse[k], "DeleteInvitationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInvitationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return DeleteInvitationsResponse structure as a key-value pair table
function M.DeleteInvitationsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteInvitationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertDeleteInvitationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartMonitoringMembersResponse = { ["UnprocessedAccounts"] = true, nil }

function asserts.AssertStartMonitoringMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMonitoringMembersResponse to be of type 'table'")
	if struct["UnprocessedAccounts"] then asserts.AssertUnprocessedAccounts(struct["UnprocessedAccounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartMonitoringMembersResponse[k], "StartMonitoringMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMonitoringMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedAccounts [UnprocessedAccounts] A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- @return StartMonitoringMembersResponse structure as a key-value pair table
function M.StartMonitoringMembersResponse(args)
	assert(args, "You must provide an argument table when creating StartMonitoringMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedAccounts"] = args["UnprocessedAccounts"],
	}
	asserts.AssertStartMonitoringMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIPSetsResponse = { ["IpSetIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListIPSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsResponse to be of type 'table'")
	if struct["IpSetIds"] then asserts.AssertIpSetIds(struct["IpSetIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIPSetsResponse[k], "ListIPSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpSetIds [IpSetIds] 
-- * NextToken [NextToken] 
-- @return ListIPSetsResponse structure as a key-value pair table
function M.ListIPSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListIPSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpSetIds"] = args["IpSetIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListIPSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIPSetResponse = { nil }

function asserts.AssertDeleteIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteIPSetResponse[k], "DeleteIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteIPSetResponse structure as a key-value pair table
function M.DeleteIPSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteIPSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFindingsFeedbackRequest = { ["FindingIds"] = true, ["DetectorId"] = true, ["Feedback"] = true, ["Comments"] = true, nil }

function asserts.AssertUpdateFindingsFeedbackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFindingsFeedbackRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	assert(struct["Feedback"], "Expected key Feedback to exist in table")
	assert(struct["FindingIds"], "Expected key FindingIds to exist in table")
	if struct["FindingIds"] then asserts.AssertFindingIds(struct["FindingIds"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	if struct["Feedback"] then asserts.AssertFeedback(struct["Feedback"]) end
	if struct["Comments"] then asserts.AssertComments(struct["Comments"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFindingsFeedbackRequest[k], "UpdateFindingsFeedbackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFindingsFeedbackRequest
-- UpdateFindingsFeedback request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingIds [FindingIds] IDs of the findings that you want to mark as useful or not useful.
-- * DetectorId [__string] The ID of the detector that specifies the GuardDuty service whose findings you want to mark as useful or not useful.
-- * Feedback [Feedback] Valid values: USEFUL | NOT_USEFUL
-- * Comments [Comments] Additional feedback about the GuardDuty findings.
-- Required key: DetectorId
-- Required key: Feedback
-- Required key: FindingIds
-- @return UpdateFindingsFeedbackRequest structure as a key-value pair table
function M.UpdateFindingsFeedbackRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFindingsFeedbackRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingIds"] = args["FindingIds"],
		["DetectorId"] = args["DetectorId"],
		["Feedback"] = args["Feedback"],
		["Comments"] = args["Comments"],
	}
	asserts.AssertUpdateFindingsFeedbackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDetectorRequest = { ["DetectorId"] = true, nil }

function asserts.AssertDeleteDetectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDetectorRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDetectorRequest[k], "DeleteDetectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDetectorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectorId [__string] The unique ID that specifies the detector that you want to delete.
-- Required key: DetectorId
-- @return DeleteDetectorRequest structure as a key-value pair table
function M.DeleteDetectorRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDetectorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertDeleteDetectorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessKeyDetails = { ["UserName"] = true, ["UserType"] = true, ["PrincipalId"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertAccessKeyDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKeyDetails to be of type 'table'")
	if struct["UserName"] then asserts.Assert__string(struct["UserName"]) end
	if struct["UserType"] then asserts.Assert__string(struct["UserType"]) end
	if struct["PrincipalId"] then asserts.Assert__string(struct["PrincipalId"]) end
	if struct["AccessKeyId"] then asserts.Assert__string(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessKeyDetails[k], "AccessKeyDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKeyDetails
-- The IAM access key details (IAM user information) of a user that engaged in the activity that prompted GuardDuty to generate a finding.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [__string] The name of the user.
-- * UserType [__string] The type of the user.
-- * PrincipalId [__string] The principal ID of the user.
-- * AccessKeyId [__string] Access key ID of the user.
-- @return AccessKeyDetails structure as a key-value pair table
function M.AccessKeyDetails(args)
	assert(args, "You must provide an argument table when creating AccessKeyDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["UserType"] = args["UserType"],
		["PrincipalId"] = args["PrincipalId"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertAccessKeyDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSampleFindingsRequest = { ["FindingTypes"] = true, ["DetectorId"] = true, nil }

function asserts.AssertCreateSampleFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSampleFindingsRequest to be of type 'table'")
	assert(struct["DetectorId"], "Expected key DetectorId to exist in table")
	if struct["FindingTypes"] then asserts.AssertFindingTypes(struct["FindingTypes"]) end
	if struct["DetectorId"] then asserts.Assert__string(struct["DetectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSampleFindingsRequest[k], "CreateSampleFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSampleFindingsRequest
-- CreateSampleFindings request body.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FindingTypes [FindingTypes] Types of sample findings that you want to generate.
-- * DetectorId [__string] The ID of the detector to create sample findings for.
-- Required key: DetectorId
-- @return CreateSampleFindingsRequest structure as a key-value pair table
function M.CreateSampleFindingsRequest(args)
	assert(args, "You must provide an argument table when creating CreateSampleFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{detectorId}"] = args["DetectorId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FindingTypes"] = args["FindingTypes"],
		["DetectorId"] = args["DetectorId"],
	}
	asserts.AssertCreateSampleFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LocalPortDetails = { ["PortName"] = true, ["Port"] = true, nil }

function asserts.AssertLocalPortDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalPortDetails to be of type 'table'")
	if struct["PortName"] then asserts.Assert__string(struct["PortName"]) end
	if struct["Port"] then asserts.Assert__integer(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.LocalPortDetails[k], "LocalPortDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalPortDetails
-- Local port information of the connection.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortName [__string] Port name of the local connection.
-- * Port [__integer] Port number of the local connection.
-- @return LocalPortDetails structure as a key-value pair table
function M.LocalPortDetails(args)
	assert(args, "You must provide an argument table when creating LocalPortDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortName"] = args["PortName"],
		["Port"] = args["Port"],
	}
	asserts.AssertLocalPortDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertIpv6Address(str)
	assert(str)
	assert(type(str) == "string", "Expected Ipv6Address to be of type 'string'")
end

-- IpV6 address of the EC2 instance.
function M.Ipv6Address(str)
	asserts.AssertIpv6Address(str)
	return str
end

function asserts.AssertComments(str)
	assert(str)
	assert(type(str) == "string", "Expected Comments to be of type 'string'")
end

-- Additional feedback about the GuardDuty findings.
function M.Comments(str)
	asserts.AssertComments(str)
	return str
end

function asserts.AssertFindingId(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingId to be of type 'string'")
end

-- The unique identifier for the Finding
function M.FindingId(str)
	asserts.AssertFindingId(str)
	return str
end

function asserts.AssertPrivateIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivateIpAddress to be of type 'string'")
end

-- Private IP address of the EC2 instance.
function M.PrivateIpAddress(str)
	asserts.AssertPrivateIpAddress(str)
	return str
end

function asserts.AssertPrivateDnsName(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivateDnsName to be of type 'string'")
end

-- Private DNS name of the EC2 instance.
function M.PrivateDnsName(str)
	asserts.AssertPrivateDnsName(str)
	return str
end

function asserts.AssertUpdatedAt(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdatedAt to be of type 'string'")
end

-- The first time a resource was created. The format will be ISO-8601.
function M.UpdatedAt(str)
	asserts.AssertUpdatedAt(str)
	return str
end

function asserts.AssertCreatedAt(str)
	assert(str)
	assert(type(str) == "string", "Expected CreatedAt to be of type 'string'")
end

-- The first time a resource was created. The format will be ISO-8601.
function M.CreatedAt(str)
	asserts.AssertCreatedAt(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

-- AWS account ID.
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
end

-- The ID of the network interface.
function M.NetworkInterfaceId(str)
	asserts.AssertNetworkInterfaceId(str)
	return str
end

function asserts.AssertDetectorStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DetectorStatus to be of type 'string'")
end

-- The status of detector.
function M.DetectorStatus(str)
	asserts.AssertDetectorStatus(str)
	return str
end

function asserts.AssertFilterAction(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterAction to be of type 'string'")
end

-- The action associated with a filter.
function M.FilterAction(str)
	asserts.AssertFilterAction(str)
	return str
end

function asserts.AssertLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected Location to be of type 'string'")
end

-- The location of the S3 bucket where the list resides. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
function M.Location(str)
	asserts.AssertLocation(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
end

-- Member account's email address.
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertThreatIntelSetFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ThreatIntelSetFormat to be of type 'string'")
end

-- The format of the threatIntelSet.
function M.ThreatIntelSetFormat(str)
	asserts.AssertThreatIntelSetFormat(str)
	return str
end

function asserts.AssertInvitationId(str)
	assert(str)
	assert(type(str) == "string", "Expected InvitationId to be of type 'string'")
end

-- This value is used to validate the master account to the member account.
function M.InvitationId(str)
	asserts.AssertInvitationId(str)
	return str
end

function asserts.AssertDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected Domain to be of type 'string'")
end

-- A domain name.
function M.Domain(str)
	asserts.AssertDomain(str)
	return str
end

function asserts.AssertFindingType(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingType to be of type 'string'")
end

-- The finding type for the finding
function M.FindingType(str)
	asserts.AssertFindingType(str)
	return str
end

function asserts.AssertDetectorId(str)
	assert(str)
	assert(type(str) == "string", "Expected DetectorId to be of type 'string'")
end

-- The unique identifier for a detector.
function M.DetectorId(str)
	asserts.AssertDetectorId(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

-- The invitation message that you want to send to the accounts that you’re inviting to GuardDuty as members.
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertThreatIntelSetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ThreatIntelSetStatus to be of type 'string'")
end

-- The status of threatIntelSet file uploaded.
function M.ThreatIntelSetStatus(str)
	asserts.AssertThreatIntelSetStatus(str)
	return str
end

function asserts.AssertFindingStatisticType(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingStatisticType to be of type 'string'")
end

-- The types of finding statistics.
function M.FindingStatisticType(str)
	asserts.AssertFindingStatisticType(str)
	return str
end

function asserts.Assert__stringMin0Max64(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin0Max64 to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.__stringMin0Max64(str)
	asserts.Assert__stringMin0Max64(str)
	return str
end

function asserts.AssertFindingPublishingFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingPublishingFrequency to be of type 'string'")
end

-- A enum value that specifies how frequently customer got Finding updates published.
function M.FindingPublishingFrequency(str)
	asserts.AssertFindingPublishingFrequency(str)
	return str
end

function asserts.AssertFilterDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterDescription to be of type 'string'")
end

-- The filter description
function M.FilterDescription(str)
	asserts.AssertFilterDescription(str)
	return str
end

function asserts.AssertInvitedAt(str)
	assert(str)
	assert(type(str) == "string", "Expected InvitedAt to be of type 'string'")
end

-- Timestamp at which a member has been invited. The format will be ISO-8601.
function M.InvitedAt(str)
	asserts.AssertInvitedAt(str)
	return str
end

function asserts.AssertMasterId(str)
	assert(str)
	assert(type(str) == "string", "Expected MasterId to be of type 'string'")
end

-- The master account ID.
function M.MasterId(str)
	asserts.AssertMasterId(str)
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

function asserts.AssertFeedback(str)
	assert(str)
	assert(type(str) == "string", "Expected Feedback to be of type 'string'")
end

-- Finding Feedback Value
function M.Feedback(str)
	asserts.AssertFeedback(str)
	return str
end

function asserts.AssertIpSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected IpSetId to be of type 'string'")
end

-- The unique identifier for an IP Set
function M.IpSetId(str)
	asserts.AssertIpSetId(str)
	return str
end

function asserts.AssertIpSetFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected IpSetFormat to be of type 'string'")
end

-- The format of the ipSet.
function M.IpSetFormat(str)
	asserts.AssertIpSetFormat(str)
	return str
end

function asserts.AssertFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterName to be of type 'string'")
end

-- The unique identifier for a filter
function M.FilterName(str)
	asserts.AssertFilterName(str)
	return str
end

function asserts.AssertOrderBy(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderBy to be of type 'string'")
end

--  
function M.OrderBy(str)
	asserts.AssertOrderBy(str)
	return str
end

function asserts.AssertIpSetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected IpSetStatus to be of type 'string'")
end

-- The status of ipSet file uploaded.
function M.IpSetStatus(str)
	asserts.AssertIpSetStatus(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

-- The user-friendly name to identify the list.
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertServiceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceRole to be of type 'string'")
end

-- Customer serviceRole name or ARN for accessing customer resources
function M.ServiceRole(str)
	asserts.AssertServiceRole(str)
	return str
end

function asserts.AssertThreatIntelSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected ThreatIntelSetId to be of type 'string'")
end

-- The unique identifier for an threat intel set
function M.ThreatIntelSetId(str)
	asserts.AssertThreatIntelSetId(str)
	return str
end

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
	return double
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

function asserts.AssertFilterRank(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FilterRank to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FilterRank(integer)
	asserts.AssertFilterRank(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertCountBySeverityFindingStatistic(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CountBySeverityFindingStatistic to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CountBySeverityFindingStatistic(integer)
	asserts.AssertCountBySeverityFindingStatistic(integer)
	return integer
end

function asserts.AssertEnable(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enable to be of type 'boolean'")
end

function M.Enable(boolean)
	asserts.AssertEnable(boolean)
	return boolean
end

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.AssertActivate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Activate to be of type 'boolean'")
end

function M.Activate(boolean)
	asserts.AssertActivate(boolean)
	return boolean
end

function asserts.Assert__mapOfCountBySeverityFindingStatistic(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOfCountBySeverityFindingStatistic to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertCountBySeverityFindingStatistic(v)
	end
end

function M.__mapOfCountBySeverityFindingStatistic(map)
	asserts.Assert__mapOfCountBySeverityFindingStatistic(map)
	return map
end

function asserts.Assert__mapOfCondition(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOfCondition to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertCondition(v)
	end
end

function M.__mapOfCondition(map)
	asserts.Assert__mapOfCondition(map)
	return map
end

function asserts.AssertThreatIntelSetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ThreatIntelSetIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThreatIntelSetId(v)
	end
end

-- The list of the threat intel set IDs
-- List of ThreatIntelSetId objects
function M.ThreatIntelSetIds(list)
	asserts.AssertThreatIntelSetIds(list)
	return list
end

function asserts.AssertFindingTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected FindingTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFindingType(v)
	end
end

-- The list of the finding types.
-- List of FindingType objects
function M.FindingTypes(list)
	asserts.AssertFindingTypes(list)
	return list
end

function asserts.AssertFindingIds(list)
	assert(list)
	assert(type(list) == "table", "Expected FindingIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFindingId(v)
	end
end

-- The list of the Findings.
-- List of FindingId objects
function M.FindingIds(list)
	asserts.AssertFindingIds(list)
	return list
end

function asserts.AssertAccountDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountDetail(v)
	end
end

-- A list of account/email pairs.
-- List of AccountDetail objects
function M.AccountDetails(list)
	asserts.AssertAccountDetails(list)
	return list
end

function asserts.AssertAccountIds(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

-- A list of account IDs.
-- List of __string objects
function M.AccountIds(list)
	asserts.AssertAccountIds(list)
	return list
end

function asserts.AssertProductCodes(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductCodes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProductCode(v)
	end
end

-- The product code of the EC2 instance.
-- List of ProductCode objects
function M.ProductCodes(list)
	asserts.AssertProductCodes(list)
	return list
end

function asserts.AssertMembers(list)
	assert(list)
	assert(type(list) == "table", "Expected Members to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMember(v)
	end
end

-- A list of member descriptions.
-- List of Member objects
function M.Members(list)
	asserts.AssertMembers(list)
	return list
end

function asserts.AssertUnprocessedAccounts(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedAccounts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUnprocessedAccount(v)
	end
end

-- A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
-- List of UnprocessedAccount objects
function M.UnprocessedAccounts(list)
	asserts.AssertUnprocessedAccounts(list)
	return list
end

function asserts.Assert__listOfPortProbeDetail(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfPortProbeDetail to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPortProbeDetail(v)
	end
end

--  
-- List of PortProbeDetail objects
function M.__listOfPortProbeDetail(list)
	asserts.Assert__listOfPortProbeDetail(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- The tags of the EC2 instance.
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertEq(list)
	assert(list)
	assert(type(list) == "table", "Expected Eq to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

-- Represents the equal condition to be applied to a single field when querying for findings.
-- List of __string objects
function M.Eq(list)
	asserts.AssertEq(list)
	return list
end

function asserts.AssertFindingStatisticTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected FindingStatisticTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFindingStatisticType(v)
	end
end

-- The list of the finding statistics.
-- List of FindingStatisticType objects
function M.FindingStatisticTypes(list)
	asserts.AssertFindingStatisticTypes(list)
	return list
end

function asserts.AssertInvitations(list)
	assert(list)
	assert(type(list) == "table", "Expected Invitations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInvitation(v)
	end
end

-- A list of invitation descriptions.
-- List of Invitation objects
function M.Invitations(list)
	asserts.AssertInvitations(list)
	return list
end

function asserts.AssertFilterNames(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilterName(v)
	end
end

-- A list of filter names
-- List of FilterName objects
function M.FilterNames(list)
	asserts.AssertFilterNames(list)
	return list
end

function asserts.AssertNetworkInterfaces(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkInterfaces to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNetworkInterface(v)
	end
end

-- The network interface information of the EC2 instance.
-- List of NetworkInterface objects
function M.NetworkInterfaces(list)
	asserts.AssertNetworkInterfaces(list)
	return list
end

function asserts.AssertPrivateIpAddresses(list)
	assert(list)
	assert(type(list) == "table", "Expected PrivateIpAddresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrivateIpAddressDetails(v)
	end
end

-- Other private IP address information of the EC2 instance.
-- List of PrivateIpAddressDetails objects
function M.PrivateIpAddresses(list)
	asserts.AssertPrivateIpAddresses(list)
	return list
end

function asserts.AssertIpSetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected IpSetIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpSetId(v)
	end
end

-- A list of the IP set IDs
-- List of IpSetId objects
function M.IpSetIds(list)
	asserts.AssertIpSetIds(list)
	return list
end

function asserts.AssertDetectorIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DetectorIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDetectorId(v)
	end
end

-- A list of detector Ids.
-- List of DetectorId objects
function M.DetectorIds(list)
	asserts.AssertDetectorIds(list)
	return list
end

function asserts.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroup(v)
	end
end

-- Security groups associated with the EC2 instance.
-- List of SecurityGroup objects
function M.SecurityGroups(list)
	asserts.AssertSecurityGroups(list)
	return list
end

function asserts.AssertNeq(list)
	assert(list)
	assert(type(list) == "table", "Expected Neq to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

-- Represents the not equal condition to be applied to a single field when querying for findings.
-- List of __string objects
function M.Neq(list)
	asserts.AssertNeq(list)
	return list
end

function asserts.AssertFindings(list)
	assert(list)
	assert(type(list) == "table", "Expected Findings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFinding(v)
	end
end

-- A list of findings.
-- List of Finding objects
function M.Findings(list)
	asserts.AssertFindings(list)
	return list
end

function asserts.AssertIpv6Addresses(list)
	assert(list)
	assert(type(list) == "table", "Expected Ipv6Addresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpv6Address(v)
	end
end

-- A list of EC2 instance IPv6 address information.
-- List of Ipv6Address objects
function M.Ipv6Addresses(list)
	asserts.AssertIpv6Addresses(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "guardduty.amazonaws.com"
		end
	end
	local ss = { "guardduty" }
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
--- Call GetFindings asynchronously, invoking a callback when done
-- @param GetFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFindingsAsync(GetFindingsRequest, cb)
	assert(GetFindingsRequest, "You must provide a GetFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFindings",
	}
	for header,value in pairs(GetFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/get", GetFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFindingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFindingsSync(GetFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFindingsAsync(GetFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIPSets asynchronously, invoking a callback when done
-- @param ListIPSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIPSetsAsync(ListIPSetsRequest, cb)
	assert(ListIPSetsRequest, "You must provide a ListIPSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIPSets",
	}
	for header,value in pairs(ListIPSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/ipset", ListIPSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIPSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIPSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIPSetsSync(ListIPSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIPSetsAsync(ListIPSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDetector asynchronously, invoking a callback when done
-- @param UpdateDetectorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDetectorAsync(UpdateDetectorRequest, cb)
	assert(UpdateDetectorRequest, "You must provide a UpdateDetectorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDetector",
	}
	for header,value in pairs(UpdateDetectorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}", UpdateDetectorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDetector synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDetectorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDetectorSync(UpdateDetectorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDetectorAsync(UpdateDetectorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetThreatIntelSet asynchronously, invoking a callback when done
-- @param GetThreatIntelSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetThreatIntelSetAsync(GetThreatIntelSetRequest, cb)
	assert(GetThreatIntelSetRequest, "You must provide a GetThreatIntelSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetThreatIntelSet",
	}
	for header,value in pairs(GetThreatIntelSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/threatintelset/{threatIntelSetId}", GetThreatIntelSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetThreatIntelSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetThreatIntelSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetThreatIntelSetSync(GetThreatIntelSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetThreatIntelSetAsync(GetThreatIntelSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateThreatIntelSet asynchronously, invoking a callback when done
-- @param UpdateThreatIntelSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateThreatIntelSetAsync(UpdateThreatIntelSetRequest, cb)
	assert(UpdateThreatIntelSetRequest, "You must provide a UpdateThreatIntelSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateThreatIntelSet",
	}
	for header,value in pairs(UpdateThreatIntelSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/threatintelset/{threatIntelSetId}", UpdateThreatIntelSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateThreatIntelSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateThreatIntelSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateThreatIntelSetSync(UpdateThreatIntelSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateThreatIntelSetAsync(UpdateThreatIntelSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDetectors asynchronously, invoking a callback when done
-- @param ListDetectorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDetectorsAsync(ListDetectorsRequest, cb)
	assert(ListDetectorsRequest, "You must provide a ListDetectorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDetectors",
	}
	for header,value in pairs(ListDetectorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector", ListDetectorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDetectors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDetectorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDetectorsSync(ListDetectorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDetectorsAsync(ListDetectorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInvitations asynchronously, invoking a callback when done
-- @param ListInvitationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInvitationsAsync(ListInvitationsRequest, cb)
	assert(ListInvitationsRequest, "You must provide a ListInvitationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInvitations",
	}
	for header,value in pairs(ListInvitationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/invitation", ListInvitationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInvitations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInvitationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInvitationsSync(ListInvitationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInvitationsAsync(ListInvitationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInvitationsCount asynchronously, invoking a callback when done
-- @param GetInvitationsCountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInvitationsCountAsync(GetInvitationsCountRequest, cb)
	assert(GetInvitationsCountRequest, "You must provide a GetInvitationsCountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetInvitationsCount",
	}
	for header,value in pairs(GetInvitationsCountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/invitation/count", GetInvitationsCountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInvitationsCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInvitationsCountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInvitationsCountSync(GetInvitationsCountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInvitationsCountAsync(GetInvitationsCountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateMembers asynchronously, invoking a callback when done
-- @param DisassociateMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateMembersAsync(DisassociateMembersRequest, cb)
	assert(DisassociateMembersRequest, "You must provide a DisassociateMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateMembers",
	}
	for header,value in pairs(DisassociateMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/disassociate", DisassociateMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateMembersSync(DisassociateMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateMembersAsync(DisassociateMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFindingsFeedback asynchronously, invoking a callback when done
-- @param UpdateFindingsFeedbackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFindingsFeedbackAsync(UpdateFindingsFeedbackRequest, cb)
	assert(UpdateFindingsFeedbackRequest, "You must provide a UpdateFindingsFeedbackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFindingsFeedback",
	}
	for header,value in pairs(UpdateFindingsFeedbackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/feedback", UpdateFindingsFeedbackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFindingsFeedback synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFindingsFeedbackRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFindingsFeedbackSync(UpdateFindingsFeedbackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFindingsFeedbackAsync(UpdateFindingsFeedbackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFilters asynchronously, invoking a callback when done
-- @param ListFiltersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFiltersAsync(ListFiltersRequest, cb)
	assert(ListFiltersRequest, "You must provide a ListFiltersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFilters",
	}
	for header,value in pairs(ListFiltersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/filter", ListFiltersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFilters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFiltersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFiltersSync(ListFiltersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFiltersAsync(ListFiltersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMasterAccount asynchronously, invoking a callback when done
-- @param GetMasterAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMasterAccountAsync(GetMasterAccountRequest, cb)
	assert(GetMasterAccountRequest, "You must provide a GetMasterAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMasterAccount",
	}
	for header,value in pairs(GetMasterAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/master", GetMasterAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMasterAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMasterAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetMasterAccountSync(GetMasterAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMasterAccountAsync(GetMasterAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ArchiveFindings asynchronously, invoking a callback when done
-- @param ArchiveFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ArchiveFindingsAsync(ArchiveFindingsRequest, cb)
	assert(ArchiveFindingsRequest, "You must provide a ArchiveFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ArchiveFindings",
	}
	for header,value in pairs(ArchiveFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/archive", ArchiveFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ArchiveFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ArchiveFindingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ArchiveFindingsSync(ArchiveFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ArchiveFindingsAsync(ArchiveFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIPSet asynchronously, invoking a callback when done
-- @param GetIPSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIPSetAsync(GetIPSetRequest, cb)
	assert(GetIPSetRequest, "You must provide a GetIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIPSet",
	}
	for header,value in pairs(GetIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/ipset/{ipSetId}", GetIPSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIPSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIPSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIPSetSync(GetIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIPSetAsync(GetIPSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateFromMasterAccount asynchronously, invoking a callback when done
-- @param DisassociateFromMasterAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateFromMasterAccountAsync(DisassociateFromMasterAccountRequest, cb)
	assert(DisassociateFromMasterAccountRequest, "You must provide a DisassociateFromMasterAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateFromMasterAccount",
	}
	for header,value in pairs(DisassociateFromMasterAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/master/disassociate", DisassociateFromMasterAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateFromMasterAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateFromMasterAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateFromMasterAccountSync(DisassociateFromMasterAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateFromMasterAccountAsync(DisassociateFromMasterAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMembers asynchronously, invoking a callback when done
-- @param GetMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMembersAsync(GetMembersRequest, cb)
	assert(GetMembersRequest, "You must provide a GetMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMembers",
	}
	for header,value in pairs(GetMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/get", GetMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetMembersSync(GetMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMembersAsync(GetMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFindings asynchronously, invoking a callback when done
-- @param ListFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFindingsAsync(ListFindingsRequest, cb)
	assert(ListFindingsRequest, "You must provide a ListFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFindings",
	}
	for header,value in pairs(ListFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings", ListFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFindingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFindingsSync(ListFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFindingsAsync(ListFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartMonitoringMembers asynchronously, invoking a callback when done
-- @param StartMonitoringMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartMonitoringMembersAsync(StartMonitoringMembersRequest, cb)
	assert(StartMonitoringMembersRequest, "You must provide a StartMonitoringMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartMonitoringMembers",
	}
	for header,value in pairs(StartMonitoringMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/start", StartMonitoringMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartMonitoringMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartMonitoringMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartMonitoringMembersSync(StartMonitoringMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartMonitoringMembersAsync(StartMonitoringMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFilter asynchronously, invoking a callback when done
-- @param CreateFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFilterAsync(CreateFilterRequest, cb)
	assert(CreateFilterRequest, "You must provide a CreateFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFilter",
	}
	for header,value in pairs(CreateFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/filter", CreateFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFilterSync(CreateFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFilterAsync(CreateFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDetector asynchronously, invoking a callback when done
-- @param CreateDetectorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDetectorAsync(CreateDetectorRequest, cb)
	assert(CreateDetectorRequest, "You must provide a CreateDetectorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDetector",
	}
	for header,value in pairs(CreateDetectorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector", CreateDetectorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDetector synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDetectorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDetectorSync(CreateDetectorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDetectorAsync(CreateDetectorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMembers asynchronously, invoking a callback when done
-- @param ListMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMembersAsync(ListMembersRequest, cb)
	assert(ListMembersRequest, "You must provide a ListMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMembers",
	}
	for header,value in pairs(ListMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member", ListMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMembersSync(ListMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMembersAsync(ListMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMembers asynchronously, invoking a callback when done
-- @param DeleteMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMembersAsync(DeleteMembersRequest, cb)
	assert(DeleteMembersRequest, "You must provide a DeleteMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMembers",
	}
	for header,value in pairs(DeleteMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/delete", DeleteMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteMembersSync(DeleteMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMembersAsync(DeleteMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListThreatIntelSets asynchronously, invoking a callback when done
-- @param ListThreatIntelSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListThreatIntelSetsAsync(ListThreatIntelSetsRequest, cb)
	assert(ListThreatIntelSetsRequest, "You must provide a ListThreatIntelSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListThreatIntelSets",
	}
	for header,value in pairs(ListThreatIntelSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/threatintelset", ListThreatIntelSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListThreatIntelSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListThreatIntelSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListThreatIntelSetsSync(ListThreatIntelSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListThreatIntelSetsAsync(ListThreatIntelSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIPSet asynchronously, invoking a callback when done
-- @param CreateIPSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateIPSetAsync(CreateIPSetRequest, cb)
	assert(CreateIPSetRequest, "You must provide a CreateIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateIPSet",
	}
	for header,value in pairs(CreateIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/ipset", CreateIPSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIPSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIPSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateIPSetSync(CreateIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIPSetAsync(CreateIPSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnarchiveFindings asynchronously, invoking a callback when done
-- @param UnarchiveFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnarchiveFindingsAsync(UnarchiveFindingsRequest, cb)
	assert(UnarchiveFindingsRequest, "You must provide a UnarchiveFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UnarchiveFindings",
	}
	for header,value in pairs(UnarchiveFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/unarchive", UnarchiveFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnarchiveFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnarchiveFindingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UnarchiveFindingsSync(UnarchiveFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnarchiveFindingsAsync(UnarchiveFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFilter asynchronously, invoking a callback when done
-- @param UpdateFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFilterAsync(UpdateFilterRequest, cb)
	assert(UpdateFilterRequest, "You must provide a UpdateFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFilter",
	}
	for header,value in pairs(UpdateFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/filter/{filterName}", UpdateFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFilterSync(UpdateFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFilterAsync(UpdateFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeclineInvitations asynchronously, invoking a callback when done
-- @param DeclineInvitationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeclineInvitationsAsync(DeclineInvitationsRequest, cb)
	assert(DeclineInvitationsRequest, "You must provide a DeclineInvitationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeclineInvitations",
	}
	for header,value in pairs(DeclineInvitationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/invitation/decline", DeclineInvitationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeclineInvitations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeclineInvitationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeclineInvitationsSync(DeclineInvitationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeclineInvitationsAsync(DeclineInvitationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptInvitation asynchronously, invoking a callback when done
-- @param AcceptInvitationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptInvitationAsync(AcceptInvitationRequest, cb)
	assert(AcceptInvitationRequest, "You must provide a AcceptInvitationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AcceptInvitation",
	}
	for header,value in pairs(AcceptInvitationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/master", AcceptInvitationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptInvitation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptInvitationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptInvitationSync(AcceptInvitationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptInvitationAsync(AcceptInvitationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMembers asynchronously, invoking a callback when done
-- @param CreateMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateMembersAsync(CreateMembersRequest, cb)
	assert(CreateMembersRequest, "You must provide a CreateMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateMembers",
	}
	for header,value in pairs(CreateMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member", CreateMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateMembersSync(CreateMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMembersAsync(CreateMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDetector asynchronously, invoking a callback when done
-- @param GetDetectorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDetectorAsync(GetDetectorRequest, cb)
	assert(GetDetectorRequest, "You must provide a GetDetectorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDetector",
	}
	for header,value in pairs(GetDetectorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}", GetDetectorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDetector synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDetectorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDetectorSync(GetDetectorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDetectorAsync(GetDetectorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSampleFindings asynchronously, invoking a callback when done
-- @param CreateSampleFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSampleFindingsAsync(CreateSampleFindingsRequest, cb)
	assert(CreateSampleFindingsRequest, "You must provide a CreateSampleFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSampleFindings",
	}
	for header,value in pairs(CreateSampleFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/create", CreateSampleFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSampleFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSampleFindingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSampleFindingsSync(CreateSampleFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSampleFindingsAsync(CreateSampleFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFilter asynchronously, invoking a callback when done
-- @param GetFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFilterAsync(GetFilterRequest, cb)
	assert(GetFilterRequest, "You must provide a GetFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFilter",
	}
	for header,value in pairs(GetFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/filter/{filterName}", GetFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFilterSync(GetFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFilterAsync(GetFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDetector asynchronously, invoking a callback when done
-- @param DeleteDetectorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDetectorAsync(DeleteDetectorRequest, cb)
	assert(DeleteDetectorRequest, "You must provide a DeleteDetectorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDetector",
	}
	for header,value in pairs(DeleteDetectorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}", DeleteDetectorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDetector synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDetectorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDetectorSync(DeleteDetectorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDetectorAsync(DeleteDetectorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFindingsStatistics asynchronously, invoking a callback when done
-- @param GetFindingsStatisticsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFindingsStatisticsAsync(GetFindingsStatisticsRequest, cb)
	assert(GetFindingsStatisticsRequest, "You must provide a GetFindingsStatisticsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFindingsStatistics",
	}
	for header,value in pairs(GetFindingsStatisticsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/findings/statistics", GetFindingsStatisticsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFindingsStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFindingsStatisticsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFindingsStatisticsSync(GetFindingsStatisticsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFindingsStatisticsAsync(GetFindingsStatisticsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InviteMembers asynchronously, invoking a callback when done
-- @param InviteMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InviteMembersAsync(InviteMembersRequest, cb)
	assert(InviteMembersRequest, "You must provide a InviteMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InviteMembers",
	}
	for header,value in pairs(InviteMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/invite", InviteMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InviteMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InviteMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InviteMembersSync(InviteMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InviteMembersAsync(InviteMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInvitations asynchronously, invoking a callback when done
-- @param DeleteInvitationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInvitationsAsync(DeleteInvitationsRequest, cb)
	assert(DeleteInvitationsRequest, "You must provide a DeleteInvitationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteInvitations",
	}
	for header,value in pairs(DeleteInvitationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/invitation/delete", DeleteInvitationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInvitations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInvitationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInvitationsSync(DeleteInvitationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInvitationsAsync(DeleteInvitationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateThreatIntelSet asynchronously, invoking a callback when done
-- @param CreateThreatIntelSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateThreatIntelSetAsync(CreateThreatIntelSetRequest, cb)
	assert(CreateThreatIntelSetRequest, "You must provide a CreateThreatIntelSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateThreatIntelSet",
	}
	for header,value in pairs(CreateThreatIntelSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/threatintelset", CreateThreatIntelSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateThreatIntelSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateThreatIntelSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateThreatIntelSetSync(CreateThreatIntelSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateThreatIntelSetAsync(CreateThreatIntelSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIPSet asynchronously, invoking a callback when done
-- @param UpdateIPSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateIPSetAsync(UpdateIPSetRequest, cb)
	assert(UpdateIPSetRequest, "You must provide a UpdateIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateIPSet",
	}
	for header,value in pairs(UpdateIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/ipset/{ipSetId}", UpdateIPSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateIPSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateIPSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateIPSetSync(UpdateIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIPSetAsync(UpdateIPSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopMonitoringMembers asynchronously, invoking a callback when done
-- @param StopMonitoringMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopMonitoringMembersAsync(StopMonitoringMembersRequest, cb)
	assert(StopMonitoringMembersRequest, "You must provide a StopMonitoringMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopMonitoringMembers",
	}
	for header,value in pairs(StopMonitoringMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/member/stop", StopMonitoringMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopMonitoringMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopMonitoringMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopMonitoringMembersSync(StopMonitoringMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopMonitoringMembersAsync(StopMonitoringMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFilter asynchronously, invoking a callback when done
-- @param DeleteFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFilterAsync(DeleteFilterRequest, cb)
	assert(DeleteFilterRequest, "You must provide a DeleteFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFilter",
	}
	for header,value in pairs(DeleteFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/filter/{filterName}", DeleteFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFilterSync(DeleteFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFilterAsync(DeleteFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIPSet asynchronously, invoking a callback when done
-- @param DeleteIPSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIPSetAsync(DeleteIPSetRequest, cb)
	assert(DeleteIPSetRequest, "You must provide a DeleteIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIPSet",
	}
	for header,value in pairs(DeleteIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/ipset/{ipSetId}", DeleteIPSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIPSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIPSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIPSetSync(DeleteIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIPSetAsync(DeleteIPSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteThreatIntelSet asynchronously, invoking a callback when done
-- @param DeleteThreatIntelSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteThreatIntelSetAsync(DeleteThreatIntelSetRequest, cb)
	assert(DeleteThreatIntelSetRequest, "You must provide a DeleteThreatIntelSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteThreatIntelSet",
	}
	for header,value in pairs(DeleteThreatIntelSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/detector/{detectorId}/threatintelset/{threatIntelSetId}", DeleteThreatIntelSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteThreatIntelSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteThreatIntelSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteThreatIntelSetSync(DeleteThreatIntelSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteThreatIntelSetAsync(DeleteThreatIntelSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
