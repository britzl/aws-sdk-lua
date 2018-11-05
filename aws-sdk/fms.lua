--- GENERATED CODE - DO NOT MODIFY
-- Firewall Management Service (fms-2018-01-01)

local M = {}

M.metadata = {
	api_version = "2018-01-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "fms",
	service_abbreviation = "FMS",
	service_full_name = "Firewall Management Service",
	signature_version = "v4",
	target_prefix = "AWSFMS_20180101",
	timestamp_format = "",
	global_endpoint = "",
	uid = "fms-2018-01-01",
}

local keys = {}
local asserts = {}

keys.ListPoliciesResponse = { ["PolicyList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["PolicyList"] then asserts.AssertPolicySummaryList(struct["PolicyList"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesResponse[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyList [PolicySummaryList] <p>An array of <code>PolicySummary</code> objects.</p>
-- * NextToken [PaginationToken] <p>If you have more <code>PolicySummary</code> objects than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more <code>PolicySummary</code> objects, submit another <code>ListPolicies</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>
-- @return ListPoliciesResponse structure as a key-value pair table
function M.ListPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyList"] = args["PolicyList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The ID of the AWS Firewall Manager policy that you want the details for.</p>
-- Required key: PolicyId
-- @return GetPolicyRequest structure as a key-value pair table
function M.GetPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertGetPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNotificationChannelResponse = { ["SnsRoleName"] = true, ["SnsTopicArn"] = true, nil }

function asserts.AssertGetNotificationChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNotificationChannelResponse to be of type 'table'")
	if struct["SnsRoleName"] then asserts.AssertResourceArn(struct["SnsRoleName"]) end
	if struct["SnsTopicArn"] then asserts.AssertResourceArn(struct["SnsTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNotificationChannelResponse[k], "GetNotificationChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNotificationChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnsRoleName [ResourceArn] <p>The IAM role that is used by AWS Firewall Manager to record activity to SNS.</p>
-- * SnsTopicArn [ResourceArn] <p>The SNS topic that records AWS Firewall Manager activity. </p>
-- @return GetNotificationChannelResponse structure as a key-value pair table
function M.GetNotificationChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetNotificationChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnsRoleName"] = args["SnsRoleName"],
		["SnsTopicArn"] = args["SnsTopicArn"],
	}
	asserts.AssertGetNotificationChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailRequest = { ["MemberAccount"] = true, ["PolicyId"] = true, nil }

function asserts.AssertGetComplianceDetailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	assert(struct["MemberAccount"], "Expected key MemberAccount to exist in table")
	if struct["MemberAccount"] then asserts.AssertAWSAccountId(struct["MemberAccount"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailRequest[k], "GetComplianceDetailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MemberAccount [AWSAccountId] <p>The AWS account that owns the resources that you want to get the details for.</p>
-- * PolicyId [PolicyId] <p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
-- Required key: PolicyId
-- Required key: MemberAccount
-- @return GetComplianceDetailRequest structure as a key-value pair table
function M.GetComplianceDetailRequest(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MemberAccount"] = args["MemberAccount"],
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertGetComplianceDetailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAdminAccountResponse = { ["AdminAccount"] = true, ["RoleStatus"] = true, nil }

function asserts.AssertGetAdminAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAdminAccountResponse to be of type 'table'")
	if struct["AdminAccount"] then asserts.AssertAWSAccountId(struct["AdminAccount"]) end
	if struct["RoleStatus"] then asserts.AssertAccountRoleStatus(struct["RoleStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAdminAccountResponse[k], "GetAdminAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAdminAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdminAccount [AWSAccountId] <p>The AWS account that is set as the AWS Firewall Manager administrator.</p>
-- * RoleStatus [AccountRoleStatus] <p>The status of the AWS account that you set as the AWS Firewall Manager administrator.</p>
-- @return GetAdminAccountResponse structure as a key-value pair table
function M.GetAdminAccountResponse(args)
	assert(args, "You must provide an argument table when creating GetAdminAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdminAccount"] = args["AdminAccount"],
		["RoleStatus"] = args["RoleStatus"],
	}
	asserts.AssertGetAdminAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComplianceViolator = { ["ResourceType"] = true, ["ResourceId"] = true, ["ViolationReason"] = true, nil }

function asserts.AssertComplianceViolator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComplianceViolator to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["ViolationReason"] then asserts.AssertViolationReason(struct["ViolationReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComplianceViolator[k], "ComplianceViolator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComplianceViolator
-- <p>Details of the resource that is not protected by the policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceType] <p>The resource type. This is in the format shown in <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">AWS Resource Types Reference</a>. Valid values are <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> or <code>AWS::CloudFront::Distribution</code>.</p>
-- * ResourceId [ResourceId] <p>The resource ID.</p>
-- * ViolationReason [ViolationReason] <p>The reason that the resource is not protected by the policy.</p>
-- @return ComplianceViolator structure as a key-value pair table
function M.ComplianceViolator(args)
	assert(args, "You must provide an argument table when creating ComplianceViolator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["ViolationReason"] = args["ViolationReason"],
	}
	asserts.AssertComplianceViolator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Policy = { ["PolicyName"] = true, ["ResourceTags"] = true, ["RemediationEnabled"] = true, ["PolicyUpdateToken"] = true, ["ResourceType"] = true, ["ExcludeResourceTags"] = true, ["PolicyId"] = true, ["ExcludeMap"] = true, ["IncludeMap"] = true, ["SecurityServicePolicyData"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["SecurityServicePolicyData"], "Expected key SecurityServicePolicyData to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ExcludeResourceTags"], "Expected key ExcludeResourceTags to exist in table")
	assert(struct["RemediationEnabled"], "Expected key RemediationEnabled to exist in table")
	if struct["PolicyName"] then asserts.AssertResourceName(struct["PolicyName"]) end
	if struct["ResourceTags"] then asserts.AssertResourceTags(struct["ResourceTags"]) end
	if struct["RemediationEnabled"] then asserts.AssertBoolean(struct["RemediationEnabled"]) end
	if struct["PolicyUpdateToken"] then asserts.AssertPolicyUpdateToken(struct["PolicyUpdateToken"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ExcludeResourceTags"] then asserts.AssertBoolean(struct["ExcludeResourceTags"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["ExcludeMap"] then asserts.AssertCustomerPolicyScopeMap(struct["ExcludeMap"]) end
	if struct["IncludeMap"] then asserts.AssertCustomerPolicyScopeMap(struct["IncludeMap"]) end
	if struct["SecurityServicePolicyData"] then asserts.AssertSecurityServicePolicyData(struct["SecurityServicePolicyData"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policy[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>An AWS Firewall Manager policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [ResourceName] <p>The friendly name of the AWS Firewall Manager policy.</p>
-- * ResourceTags [ResourceTags] <p>An array of <code>ResourceTag</code> objects.</p>
-- * RemediationEnabled [Boolean] <p>Indicates if the policy should be automatically applied to new resources.</p>
-- * PolicyUpdateToken [PolicyUpdateToken] <p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code> request, the <code>PolicyUpdateToken</code> in the request must match the <code>PolicyUpdateToken</code> of the current policy version. To get the <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code> request.</p>
-- * ResourceType [ResourceType] <p>The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">AWS Resource Types Reference</a>. Valid values are <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> or <code>AWS::CloudFront::Distribution</code>.</p>
-- * ExcludeResourceTags [Boolean] <p>If set to <code>True</code>, resources with the tags that are specified in the <code>ResourceTag</code> array are not protected by the policy. If set to <code>False</code>, and the <code>ResourceTag</code> array is not null, only resources with the specified tags are associated with the policy.</p>
-- * PolicyId [PolicyId] <p>The ID of the AWS Firewall Manager policy.</p>
-- * ExcludeMap [CustomerPolicyScopeMap] <p>Specifies the AWS account IDs to exclude from the policy. The <code>IncludeMap</code> values are evaluated first, with all of the appropriate account IDs added to the policy. Then the accounts listed in <code>ExcludeMap</code> are removed, resulting in the final list of accounts to add to the policy.</p> <p>The key to the map is <code>ACCOUNT</code>. For example, a valid <code>ExcludeMap</code> would be <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
-- * IncludeMap [CustomerPolicyScopeMap] <p>Specifies the AWS account IDs to include in the policy. If <code>IncludeMap</code> is null, all accounts in the AWS Organization are included in the policy. If <code>IncludeMap</code> is not null, only values listed in <code>IncludeMap</code> will be included in the policy.</p> <p>The key to the map is <code>ACCOUNT</code>. For example, a valid <code>IncludeMap</code> would be <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
-- * SecurityServicePolicyData [SecurityServicePolicyData] <p>Details about the security service that is being used to protect the resources.</p>
-- Required key: PolicyName
-- Required key: SecurityServicePolicyData
-- Required key: ResourceType
-- Required key: ExcludeResourceTags
-- Required key: RemediationEnabled
-- @return Policy structure as a key-value pair table
function M.Policy(args)
	assert(args, "You must provide an argument table when creating Policy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["ResourceTags"] = args["ResourceTags"],
		["RemediationEnabled"] = args["RemediationEnabled"],
		["PolicyUpdateToken"] = args["PolicyUpdateToken"],
		["ResourceType"] = args["ResourceType"],
		["ExcludeResourceTags"] = args["ExcludeResourceTags"],
		["PolicyId"] = args["PolicyId"],
		["ExcludeMap"] = args["ExcludeMap"],
		["IncludeMap"] = args["IncludeMap"],
		["SecurityServicePolicyData"] = args["SecurityServicePolicyData"],
	}
	asserts.AssertPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMemberAccountsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListMemberAccountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMemberAccountsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPaginationMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMemberAccountsRequest[k], "ListMemberAccountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMemberAccountsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of IDs. For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of member account IDs.</p>
-- * MaxResults [PaginationMaxResults] <p>Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of member account IDs. The maximum value for <code>MaxResults</code> is 100.</p>
-- @return ListMemberAccountsRequest structure as a key-value pair table
function M.ListMemberAccountsRequest(args)
	assert(args, "You must provide an argument table when creating ListMemberAccountsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListMemberAccountsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateAdminAccountRequest = { nil }

function asserts.AssertDisassociateAdminAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateAdminAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateAdminAccountRequest[k], "DisassociateAdminAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateAdminAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateAdminAccountRequest structure as a key-value pair table
function M.DisassociateAdminAccountRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateAdminAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateAdminAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAdminAccountRequest = { nil }

function asserts.AssertGetAdminAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAdminAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAdminAccountRequest[k], "GetAdminAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAdminAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAdminAccountRequest structure as a key-value pair table
function M.GetAdminAccountRequest(args)
	assert(args, "You must provide an argument table when creating GetAdminAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAdminAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityServicePolicyData = { ["ManagedServiceData"] = true, ["Type"] = true, nil }

function asserts.AssertSecurityServicePolicyData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityServicePolicyData to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["ManagedServiceData"] then asserts.AssertManagedServiceData(struct["ManagedServiceData"]) end
	if struct["Type"] then asserts.AssertSecurityServiceType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityServicePolicyData[k], "SecurityServicePolicyData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityServicePolicyData
-- <p>Details about the security service that is being used to protect the resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManagedServiceData [ManagedServiceData] <p>Details about the service. This contains <code>WAF</code> data in JSON format, as shown in the following example:</p> <p> <code>ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\": \"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}</code> </p>
-- * Type [SecurityServiceType] <p>The service that the policy is using to protect the resources. This value is <code>WAF</code>.</p>
-- Required key: Type
-- @return SecurityServicePolicyData structure as a key-value pair table
function M.SecurityServicePolicyData(args)
	assert(args, "You must provide an argument table when creating SecurityServicePolicyData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManagedServiceData"] = args["ManagedServiceData"],
		["Type"] = args["Type"],
	}
	asserts.AssertSecurityServicePolicyData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyComplianceStatus = { ["PolicyName"] = true, ["PolicyOwner"] = true, ["LastUpdated"] = true, ["MemberAccount"] = true, ["PolicyId"] = true, ["IssueInfoMap"] = true, ["EvaluationResults"] = true, nil }

function asserts.AssertPolicyComplianceStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyComplianceStatus to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertResourceName(struct["PolicyName"]) end
	if struct["PolicyOwner"] then asserts.AssertAWSAccountId(struct["PolicyOwner"]) end
	if struct["LastUpdated"] then asserts.AssertTimeStamp(struct["LastUpdated"]) end
	if struct["MemberAccount"] then asserts.AssertAWSAccountId(struct["MemberAccount"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["IssueInfoMap"] then asserts.AssertIssueInfoMap(struct["IssueInfoMap"]) end
	if struct["EvaluationResults"] then asserts.AssertEvaluationResults(struct["EvaluationResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyComplianceStatus[k], "PolicyComplianceStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyComplianceStatus
-- <p>Indicates whether the account is compliant with the specified policy. An account is considered non-compliant if it includes resources that are not protected by the policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [ResourceName] <p>The friendly name of the AWS Firewall Manager policy.</p>
-- * PolicyOwner [AWSAccountId] <p>The AWS account that created the AWS Firewall Manager policy.</p>
-- * LastUpdated [TimeStamp] <p>Time stamp of the last update to the <code>EvaluationResult</code> objects.</p>
-- * MemberAccount [AWSAccountId] <p>The member account ID.</p>
-- * PolicyId [PolicyId] <p>The ID of the AWS Firewall Manager policy.</p>
-- * IssueInfoMap [IssueInfoMap] <p>Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be non-compliant. The details include the name of the dependent service and the error message recieved indicating the problem with the service.</p>
-- * EvaluationResults [EvaluationResults] <p>An array of <code>EvaluationResult</code> objects.</p>
-- @return PolicyComplianceStatus structure as a key-value pair table
function M.PolicyComplianceStatus(args)
	assert(args, "You must provide an argument table when creating PolicyComplianceStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["PolicyOwner"] = args["PolicyOwner"],
		["LastUpdated"] = args["LastUpdated"],
		["MemberAccount"] = args["MemberAccount"],
		["PolicyId"] = args["PolicyId"],
		["IssueInfoMap"] = args["IssueInfoMap"],
		["EvaluationResults"] = args["EvaluationResults"],
	}
	asserts.AssertPolicyComplianceStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyRequest[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The ID of the policy that you want to delete. <code>PolicyId</code> is returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
-- Required key: PolicyId
-- @return DeletePolicyRequest structure as a key-value pair table
function M.DeletePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeletePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertDeletePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyResponse = { ["Policy"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	if struct["PolicyArn"] then asserts.AssertResourceArn(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>Information about the specified AWS Firewall Manager policy.</p>
-- * PolicyArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the specified policy.</p>
-- @return GetPolicyResponse structure as a key-value pair table
function M.GetPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertGetPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListComplianceStatusRequest = { ["NextToken"] = true, ["PolicyId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListComplianceStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListComplianceStatusRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["MaxResults"] then asserts.AssertPaginationMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListComplianceStatusRequest[k], "ListComplianceStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListComplianceStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If you specify a value for <code>MaxResults</code> and you have more <code>PolicyComplianceStatus</code> objects than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of <code>PolicyComplianceStatus</code> objects. For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of <code>PolicyComplianceStatus</code> objects.</p>
-- * PolicyId [PolicyId] <p>The ID of the AWS Firewall Manager policy that you want the details for.</p>
-- * MaxResults [PaginationMaxResults] <p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want AWS Firewall Manager to return for this request. If you have more <code>PolicyComplianceStatus</code> objects than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>
-- Required key: PolicyId
-- @return ListComplianceStatusRequest structure as a key-value pair table
function M.ListComplianceStatusRequest(args)
	assert(args, "You must provide an argument table when creating ListComplianceStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PolicyId"] = args["PolicyId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListComplianceStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetComplianceDetailResponse = { ["PolicyComplianceDetail"] = true, nil }

function asserts.AssertGetComplianceDetailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetComplianceDetailResponse to be of type 'table'")
	if struct["PolicyComplianceDetail"] then asserts.AssertPolicyComplianceDetail(struct["PolicyComplianceDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetComplianceDetailResponse[k], "GetComplianceDetailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetComplianceDetailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyComplianceDetail [PolicyComplianceDetail] <p>Information about the resources and the policy that you specified in the <code>GetComplianceDetail</code> request.</p>
-- @return GetComplianceDetailResponse structure as a key-value pair table
function M.GetComplianceDetailResponse(args)
	assert(args, "You must provide an argument table when creating GetComplianceDetailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyComplianceDetail"] = args["PolicyComplianceDetail"],
	}
	asserts.AssertGetComplianceDetailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPolicyResponse = { ["Policy"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertPutPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	if struct["PolicyArn"] then asserts.AssertResourceArn(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPolicyResponse[k], "PutPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>The details of the AWS Firewall Manager policy that was created.</p>
-- * PolicyArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the policy that was created.</p>
-- @return PutPolicyResponse structure as a key-value pair table
function M.PutPolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertPutPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutNotificationChannelRequest = { ["SnsRoleName"] = true, ["SnsTopicArn"] = true, nil }

function asserts.AssertPutNotificationChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutNotificationChannelRequest to be of type 'table'")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	assert(struct["SnsRoleName"], "Expected key SnsRoleName to exist in table")
	if struct["SnsRoleName"] then asserts.AssertResourceArn(struct["SnsRoleName"]) end
	if struct["SnsTopicArn"] then asserts.AssertResourceArn(struct["SnsTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutNotificationChannelRequest[k], "PutNotificationChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutNotificationChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnsRoleName [ResourceArn] <p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity. </p>
-- * SnsTopicArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager.</p>
-- Required key: SnsTopicArn
-- Required key: SnsRoleName
-- @return PutNotificationChannelRequest structure as a key-value pair table
function M.PutNotificationChannelRequest(args)
	assert(args, "You must provide an argument table when creating PutNotificationChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnsRoleName"] = args["SnsRoleName"],
		["SnsTopicArn"] = args["SnsTopicArn"],
	}
	asserts.AssertPutNotificationChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListComplianceStatusResponse = { ["NextToken"] = true, ["PolicyComplianceStatusList"] = true, nil }

function asserts.AssertListComplianceStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListComplianceStatusResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["PolicyComplianceStatusList"] then asserts.AssertPolicyComplianceStatusList(struct["PolicyComplianceStatusList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListComplianceStatusResponse[k], "ListComplianceStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListComplianceStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If you have more <code>PolicyComplianceStatus</code> objects than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more <code>PolicyComplianceStatus</code> objects, submit another <code>ListComplianceStatus</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>
-- * PolicyComplianceStatusList [PolicyComplianceStatusList] <p>An array of <code>PolicyComplianceStatus</code> objects.</p>
-- @return ListComplianceStatusResponse structure as a key-value pair table
function M.ListComplianceStatusResponse(args)
	assert(args, "You must provide an argument table when creating ListComplianceStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PolicyComplianceStatusList"] = args["PolicyComplianceStatusList"],
	}
	asserts.AssertListComplianceStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNotificationChannelRequest = { nil }

function asserts.AssertGetNotificationChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNotificationChannelRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetNotificationChannelRequest[k], "GetNotificationChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNotificationChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetNotificationChannelRequest structure as a key-value pair table
function M.GetNotificationChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetNotificationChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetNotificationChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPaginationMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If you specify a value for <code>MaxResults</code> and you have more <code>PolicySummary</code> objects than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of <code>PolicySummary</code> objects. For the second and subsequent <code>ListPolicies</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of <code>PolicySummary</code> objects.</p>
-- * MaxResults [PaginationMaxResults] <p>Specifies the number of <code>PolicySummary</code> objects that you want AWS Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of <code>PolicySummary</code> objects.</p>
-- @return ListPoliciesRequest structure as a key-value pair table
function M.ListPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPolicyRequest = { ["Policy"] = true, nil }

function asserts.AssertPutPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPolicyRequest to be of type 'table'")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPolicyRequest[k], "PutPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>The details of the AWS Firewall Manager policy to be created.</p>
-- Required key: Policy
-- @return PutPolicyRequest structure as a key-value pair table
function M.PutPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertPutPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicySummary = { ["PolicyName"] = true, ["RemediationEnabled"] = true, ["ResourceType"] = true, ["PolicyArn"] = true, ["SecurityServiceType"] = true, ["PolicyId"] = true, nil }

function asserts.AssertPolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicySummary to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertResourceName(struct["PolicyName"]) end
	if struct["RemediationEnabled"] then asserts.AssertBoolean(struct["RemediationEnabled"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["PolicyArn"] then asserts.AssertResourceArn(struct["PolicyArn"]) end
	if struct["SecurityServiceType"] then asserts.AssertSecurityServiceType(struct["SecurityServiceType"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicySummary[k], "PolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicySummary
-- <p>Details of the AWS Firewall Manager policy. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [ResourceName] <p>The friendly name of the specified policy.</p>
-- * RemediationEnabled [Boolean] <p>Indicates if the policy should be automatically applied to new resources.</p>
-- * ResourceType [ResourceType] <p>The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">AWS Resource Types Reference</a>. Valid values are <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> or <code>AWS::CloudFront::Distribution</code>.</p>
-- * PolicyArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the specified policy.</p>
-- * SecurityServiceType [SecurityServiceType] <p>The service that the policy is using to protect the resources. This value is <code>WAF</code>.</p>
-- * PolicyId [PolicyId] <p>The ID of the specified policy.</p>
-- @return PolicySummary structure as a key-value pair table
function M.PolicySummary(args)
	assert(args, "You must provide an argument table when creating PolicySummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["RemediationEnabled"] = args["RemediationEnabled"],
		["ResourceType"] = args["ResourceType"],
		["PolicyArn"] = args["PolicyArn"],
		["SecurityServiceType"] = args["SecurityServiceType"],
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertPolicySummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNotificationChannelRequest = { nil }

function asserts.AssertDeleteNotificationChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationChannelRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotificationChannelRequest[k], "DeleteNotificationChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteNotificationChannelRequest structure as a key-value pair table
function M.DeleteNotificationChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteNotificationChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteNotificationChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EvaluationResult = { ["ViolatorCount"] = true, ["EvaluationLimitExceeded"] = true, ["ComplianceStatus"] = true, nil }

function asserts.AssertEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResult to be of type 'table'")
	if struct["ViolatorCount"] then asserts.AssertResourceCount(struct["ViolatorCount"]) end
	if struct["EvaluationLimitExceeded"] then asserts.AssertBoolean(struct["EvaluationLimitExceeded"]) end
	if struct["ComplianceStatus"] then asserts.AssertPolicyComplianceStatusType(struct["ComplianceStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResult[k], "EvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResult
-- <p>Describes the compliance status for the account. An account is considered non-compliant if it includes resources that are not protected by the specified policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ViolatorCount [ResourceCount] <p>Number of resources that are non-compliant with the specified policy. A resource is considered non-compliant if it is not associated with the specified policy.</p>
-- * EvaluationLimitExceeded [Boolean] <p>Indicates that over 100 resources are non-compliant with the AWS Firewall Manager policy.</p>
-- * ComplianceStatus [PolicyComplianceStatusType] <p>Describes an AWS account's compliance with the AWS Firewall Manager policy.</p>
-- @return EvaluationResult structure as a key-value pair table
function M.EvaluationResult(args)
	assert(args, "You must provide an argument table when creating EvaluationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ViolatorCount"] = args["ViolatorCount"],
		["EvaluationLimitExceeded"] = args["EvaluationLimitExceeded"],
		["ComplianceStatus"] = args["ComplianceStatus"],
	}
	asserts.AssertEvaluationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyComplianceDetail = { ["Violators"] = true, ["EvaluationLimitExceeded"] = true, ["PolicyOwner"] = true, ["ExpiredAt"] = true, ["MemberAccount"] = true, ["PolicyId"] = true, ["IssueInfoMap"] = true, nil }

function asserts.AssertPolicyComplianceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyComplianceDetail to be of type 'table'")
	if struct["Violators"] then asserts.AssertComplianceViolators(struct["Violators"]) end
	if struct["EvaluationLimitExceeded"] then asserts.AssertBoolean(struct["EvaluationLimitExceeded"]) end
	if struct["PolicyOwner"] then asserts.AssertAWSAccountId(struct["PolicyOwner"]) end
	if struct["ExpiredAt"] then asserts.AssertTimeStamp(struct["ExpiredAt"]) end
	if struct["MemberAccount"] then asserts.AssertAWSAccountId(struct["MemberAccount"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["IssueInfoMap"] then asserts.AssertIssueInfoMap(struct["IssueInfoMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyComplianceDetail[k], "PolicyComplianceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyComplianceDetail
-- <p>Describes the non-compliant resources in a member account for a specific AWS Firewall Manager policy. A maximum of 100 entries are displayed. If more than 100 resources are non-compliant, <code>EvaluationLimitExceeded</code> is set to <code>True</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Violators [ComplianceViolators] <p>An array of resources that are not protected by the policy.</p>
-- * EvaluationLimitExceeded [Boolean] <p>Indicates if over 100 resources are non-compliant with the AWS Firewall Manager policy.</p>
-- * PolicyOwner [AWSAccountId] <p>The AWS account that created the AWS Firewall Manager policy.</p>
-- * ExpiredAt [TimeStamp] <p>A time stamp that indicates when the returned information should be considered out-of-date.</p>
-- * MemberAccount [AWSAccountId] <p>The AWS account ID.</p>
-- * PolicyId [PolicyId] <p>The ID of the AWS Firewall Manager policy.</p>
-- * IssueInfoMap [IssueInfoMap] <p>Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be non-compliant. The details include the name of the dependent service and the error message recieved indicating the problem with the service.</p>
-- @return PolicyComplianceDetail structure as a key-value pair table
function M.PolicyComplianceDetail(args)
	assert(args, "You must provide an argument table when creating PolicyComplianceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Violators"] = args["Violators"],
		["EvaluationLimitExceeded"] = args["EvaluationLimitExceeded"],
		["PolicyOwner"] = args["PolicyOwner"],
		["ExpiredAt"] = args["ExpiredAt"],
		["MemberAccount"] = args["MemberAccount"],
		["PolicyId"] = args["PolicyId"],
		["IssueInfoMap"] = args["IssueInfoMap"],
	}
	asserts.AssertPolicyComplianceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertResourceTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTag[k], "ResourceTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTag
-- <p>The resource tags that AWS Firewall Manager uses to determine if a particular resource should be included or excluded from protection by the AWS Firewall Manager policy. Tags enable you to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. Tags are combined with an "OR." That is, if you add more than one tag, if any of the tags matches, the resource is considered a match for the include or exclude. <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html">Working with Tag Editor</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The resource tag value.</p>
-- * Key [TagKey] <p>The resource tag key.</p>
-- Required key: Key
-- @return ResourceTag structure as a key-value pair table
function M.ResourceTag(args)
	assert(args, "You must provide an argument table when creating ResourceTag")
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
	asserts.AssertResourceTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMemberAccountsResponse = { ["MemberAccounts"] = true, ["NextToken"] = true, nil }

function asserts.AssertListMemberAccountsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMemberAccountsResponse to be of type 'table'")
	if struct["MemberAccounts"] then asserts.AssertMemberAccounts(struct["MemberAccounts"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMemberAccountsResponse[k], "ListMemberAccountsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMemberAccountsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MemberAccounts [MemberAccounts] <p>An array of account IDs.</p>
-- * NextToken [PaginationToken] <p>If you have more member account IDs than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more IDs, submit another <code>ListMemberAccounts</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>
-- @return ListMemberAccountsResponse structure as a key-value pair table
function M.ListMemberAccountsResponse(args)
	assert(args, "You must provide an argument table when creating ListMemberAccountsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MemberAccounts"] = args["MemberAccounts"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListMemberAccountsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateAdminAccountRequest = { ["AdminAccount"] = true, nil }

function asserts.AssertAssociateAdminAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateAdminAccountRequest to be of type 'table'")
	assert(struct["AdminAccount"], "Expected key AdminAccount to exist in table")
	if struct["AdminAccount"] then asserts.AssertAWSAccountId(struct["AdminAccount"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateAdminAccountRequest[k], "AssociateAdminAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateAdminAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdminAccount [AWSAccountId] <p>The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the AWS Accounts in Your Organization</a>.</p>
-- Required key: AdminAccount
-- @return AssociateAdminAccountRequest structure as a key-value pair table
function M.AssociateAdminAccountRequest(args)
	assert(args, "You must provide an argument table when creating AssociateAdminAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdminAccount"] = args["AdminAccount"],
	}
	asserts.AssertAssociateAdminAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertPolicyComplianceStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyComplianceStatusType to be of type 'string'")
end

--  
function M.PolicyComplianceStatusType(str)
	asserts.AssertPolicyComplianceStatusType(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertPolicyUpdateToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyUpdateToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyUpdateToken(str)
	asserts.AssertPolicyUpdateToken(str)
	return str
end

function asserts.AssertPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.PolicyId(str)
	asserts.AssertPolicyId(str)
	return str
end

function asserts.AssertAWSAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AWSAccountId(str)
	asserts.AssertAWSAccountId(str)
	return str
end

function asserts.AssertSecurityServiceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityServiceType to be of type 'string'")
end

--  
function M.SecurityServiceType(str)
	asserts.AssertSecurityServiceType(str)
	return str
end

function asserts.AssertViolationReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ViolationReason to be of type 'string'")
end

--  
function M.ViolationReason(str)
	asserts.AssertViolationReason(str)
	return str
end

function asserts.AssertDependentServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected DependentServiceName to be of type 'string'")
end

--  
function M.DependentServiceName(str)
	asserts.AssertDependentServiceName(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
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

function asserts.AssertCustomerPolicyScopeId(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerPolicyScopeId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomerPolicyScopeId(str)
	asserts.AssertCustomerPolicyScopeId(str)
	return str
end

function asserts.AssertDetailedInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailedInfo to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DetailedInfo(str)
	asserts.AssertDetailedInfo(str)
	return str
end

function asserts.AssertManagedServiceData(str)
	assert(str)
	assert(type(str) == "string", "Expected ManagedServiceData to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ManagedServiceData(str)
	asserts.AssertManagedServiceData(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
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

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertCustomerPolicyScopeIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerPolicyScopeIdType to be of type 'string'")
end

--  
function M.CustomerPolicyScopeIdType(str)
	asserts.AssertCustomerPolicyScopeIdType(str)
	return str
end

function asserts.AssertAccountRoleStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountRoleStatus to be of type 'string'")
end

--  
function M.AccountRoleStatus(str)
	asserts.AssertAccountRoleStatus(str)
	return str
end

function asserts.AssertResourceCount(long)
	assert(long)
	assert(type(long) == "number", "Expected ResourceCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ResourceCount(long)
	asserts.AssertResourceCount(long)
	return long
end

function asserts.AssertPaginationMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PaginationMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PaginationMaxResults(integer)
	asserts.AssertPaginationMaxResults(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertCustomerPolicyScopeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected CustomerPolicyScopeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertCustomerPolicyScopeIdType(k)
		asserts.AssertCustomerPolicyScopeIdList(v)
	end
end

function M.CustomerPolicyScopeMap(map)
	asserts.AssertCustomerPolicyScopeMap(map)
	return map
end

function asserts.AssertIssueInfoMap(map)
	assert(map)
	assert(type(map) == "table", "Expected IssueInfoMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDependentServiceName(k)
		asserts.AssertDetailedInfo(v)
	end
end

function M.IssueInfoMap(map)
	asserts.AssertIssueInfoMap(map)
	return map
end

function asserts.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	asserts.AssertTimeStamp(timestamp)
	return timestamp
end

function asserts.AssertComplianceViolators(list)
	assert(list)
	assert(type(list) == "table", "Expected ComplianceViolators to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComplianceViolator(v)
	end
end

--  
-- List of ComplianceViolator objects
function M.ComplianceViolators(list)
	asserts.AssertComplianceViolators(list)
	return list
end

function asserts.AssertEvaluationResults(list)
	assert(list)
	assert(type(list) == "table", "Expected EvaluationResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvaluationResult(v)
	end
end

--  
-- List of EvaluationResult objects
function M.EvaluationResults(list)
	asserts.AssertEvaluationResults(list)
	return list
end

function asserts.AssertMemberAccounts(list)
	assert(list)
	assert(type(list) == "table", "Expected MemberAccounts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAWSAccountId(v)
	end
end

--  
-- List of AWSAccountId objects
function M.MemberAccounts(list)
	asserts.AssertMemberAccounts(list)
	return list
end

function asserts.AssertPolicySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicySummary(v)
	end
end

--  
-- List of PolicySummary objects
function M.PolicySummaryList(list)
	asserts.AssertPolicySummaryList(list)
	return list
end

function asserts.AssertResourceTags(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTags to be of type ''table")
	assert(#list <= 8, "Expected list to be contain 8 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceTag(v)
	end
end

--  
-- List of ResourceTag objects
function M.ResourceTags(list)
	asserts.AssertResourceTags(list)
	return list
end

function asserts.AssertPolicyComplianceStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyComplianceStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyComplianceStatus(v)
	end
end

--  
-- List of PolicyComplianceStatus objects
function M.PolicyComplianceStatusList(list)
	asserts.AssertPolicyComplianceStatusList(list)
	return list
end

function asserts.AssertCustomerPolicyScopeIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomerPolicyScopeIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomerPolicyScopeId(v)
	end
end

--  
-- List of CustomerPolicyScopeId objects
function M.CustomerPolicyScopeIdList(list)
	asserts.AssertCustomerPolicyScopeIdList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "fms.amazonaws.com"
		end
	end
	local ss = { "fms" }
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
--- Call PutPolicy asynchronously, invoking a callback when done
-- @param PutPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutPolicyAsync(PutPolicyRequest, cb)
	assert(PutPolicyRequest, "You must provide a PutPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.PutPolicy",
	}
	for header,value in pairs(PutPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutPolicySync(PutPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPolicyAsync(PutPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComplianceDetail asynchronously, invoking a callback when done
-- @param GetComplianceDetailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetComplianceDetailAsync(GetComplianceDetailRequest, cb)
	assert(GetComplianceDetailRequest, "You must provide a GetComplianceDetailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.GetComplianceDetail",
	}
	for header,value in pairs(GetComplianceDetailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetComplianceDetailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComplianceDetail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetComplianceDetailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetComplianceDetailSync(GetComplianceDetailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetComplianceDetailAsync(GetComplianceDetailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListComplianceStatus asynchronously, invoking a callback when done
-- @param ListComplianceStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListComplianceStatusAsync(ListComplianceStatusRequest, cb)
	assert(ListComplianceStatusRequest, "You must provide a ListComplianceStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.ListComplianceStatus",
	}
	for header,value in pairs(ListComplianceStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListComplianceStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListComplianceStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListComplianceStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListComplianceStatusSync(ListComplianceStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListComplianceStatusAsync(ListComplianceStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotificationChannel asynchronously, invoking a callback when done
-- @param DeleteNotificationChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotificationChannelAsync(DeleteNotificationChannelRequest, cb)
	assert(DeleteNotificationChannelRequest, "You must provide a DeleteNotificationChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.DeleteNotificationChannel",
	}
	for header,value in pairs(DeleteNotificationChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNotificationChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotificationChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotificationChannelSync(DeleteNotificationChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationChannelAsync(DeleteNotificationChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetNotificationChannel asynchronously, invoking a callback when done
-- @param GetNotificationChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetNotificationChannelAsync(GetNotificationChannelRequest, cb)
	assert(GetNotificationChannelRequest, "You must provide a GetNotificationChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.GetNotificationChannel",
	}
	for header,value in pairs(GetNotificationChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetNotificationChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetNotificationChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetNotificationChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetNotificationChannelSync(GetNotificationChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetNotificationChannelAsync(GetNotificationChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutNotificationChannel asynchronously, invoking a callback when done
-- @param PutNotificationChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutNotificationChannelAsync(PutNotificationChannelRequest, cb)
	assert(PutNotificationChannelRequest, "You must provide a PutNotificationChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.PutNotificationChannel",
	}
	for header,value in pairs(PutNotificationChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutNotificationChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutNotificationChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutNotificationChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutNotificationChannelSync(PutNotificationChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutNotificationChannelAsync(PutNotificationChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicies asynchronously, invoking a callback when done
-- @param ListPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.ListPolicies",
	}
	for header,value in pairs(ListPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPoliciesSync(ListPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPoliciesAsync(ListPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAdminAccount asynchronously, invoking a callback when done
-- @param GetAdminAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAdminAccountAsync(GetAdminAccountRequest, cb)
	assert(GetAdminAccountRequest, "You must provide a GetAdminAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.GetAdminAccount",
	}
	for header,value in pairs(GetAdminAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAdminAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAdminAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAdminAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAdminAccountSync(GetAdminAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAdminAccountAsync(GetAdminAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePolicy asynchronously, invoking a callback when done
-- @param DeletePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.DeletePolicy",
	}
	for header,value in pairs(DeletePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePolicySync(DeletePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyAsync(DeletePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateAdminAccount asynchronously, invoking a callback when done
-- @param DisassociateAdminAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateAdminAccountAsync(DisassociateAdminAccountRequest, cb)
	assert(DisassociateAdminAccountRequest, "You must provide a DisassociateAdminAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.DisassociateAdminAccount",
	}
	for header,value in pairs(DisassociateAdminAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateAdminAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateAdminAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateAdminAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateAdminAccountSync(DisassociateAdminAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateAdminAccountAsync(DisassociateAdminAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMemberAccounts asynchronously, invoking a callback when done
-- @param ListMemberAccountsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMemberAccountsAsync(ListMemberAccountsRequest, cb)
	assert(ListMemberAccountsRequest, "You must provide a ListMemberAccountsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.ListMemberAccounts",
	}
	for header,value in pairs(ListMemberAccountsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMemberAccountsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMemberAccounts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMemberAccountsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMemberAccountsSync(ListMemberAccountsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMemberAccountsAsync(ListMemberAccountsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicy asynchronously, invoking a callback when done
-- @param GetPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.GetPolicy",
	}
	for header,value in pairs(GetPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPolicySync(GetPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyAsync(GetPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateAdminAccount asynchronously, invoking a callback when done
-- @param AssociateAdminAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateAdminAccountAsync(AssociateAdminAccountRequest, cb)
	assert(AssociateAdminAccountRequest, "You must provide a AssociateAdminAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSFMS_20180101.AssociateAdminAccount",
	}
	for header,value in pairs(AssociateAdminAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateAdminAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateAdminAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateAdminAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateAdminAccountSync(AssociateAdminAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateAdminAccountAsync(AssociateAdminAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
