--- GENERATED CODE - DO NOT MODIFY
-- Amazon Data Lifecycle Manager (dlm-2018-01-12)

local M = {}

M.metadata = {
	api_version = "2018-01-12",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "dlm",
	service_abbreviation = "Amazon DLM",
	service_full_name = "Amazon Data Lifecycle Manager",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "dlm-2018-01-12",
}

local keys = {}
local asserts = {}

keys.LifecyclePolicySummary = { ["State"] = true, ["PolicyId"] = true, ["Description"] = true, nil }

function asserts.AssertLifecyclePolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicySummary to be of type 'table'")
	if struct["State"] then asserts.AssertGettablePolicyStateValues(struct["State"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicySummary[k], "LifecyclePolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicySummary
-- <p>Summary information about a lifecycle policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [GettablePolicyStateValues] <p>The activation state of the lifecycle policy.</p>
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- * Description [PolicyDescription] <p>The description of the lifecycle policy.</p>
-- @return LifecyclePolicySummary structure as a key-value pair table
function M.LifecyclePolicySummary(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicySummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["PolicyId"] = args["PolicyId"],
		["Description"] = args["Description"],
	}
	asserts.AssertLifecyclePolicySummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLifecyclePolicyResponse = { ["PolicyId"] = true, nil }

function asserts.AssertCreateLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLifecyclePolicyResponse to be of type 'table'")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLifecyclePolicyResponse[k], "CreateLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- @return CreateLifecyclePolicyResponse structure as a key-value pair table
function M.CreateLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating CreateLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertCreateLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetainRule = { ["Count"] = true, nil }

function asserts.AssertRetainRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetainRule to be of type 'table'")
	assert(struct["Count"], "Expected key Count to exist in table")
	if struct["Count"] then asserts.AssertCount(struct["Count"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetainRule[k], "RetainRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetainRule
-- <p>Specifies the number of snapshots to keep for each EBS volume.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Count] <p>The number of snapshots to keep for each volume, up to a maximum of 1000.</p>
-- Required key: Count
-- @return RetainRule structure as a key-value pair table
function M.RetainRule(args)
	assert(args, "You must provide an argument table when creating RetainRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
	}
	asserts.AssertRetainRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLifecyclePolicyResponse = { nil }

function asserts.AssertUpdateLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLifecyclePolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateLifecyclePolicyResponse[k], "UpdateLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateLifecyclePolicyResponse structure as a key-value pair table
function M.UpdateLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating UpdateLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRule = { ["Interval"] = true, ["IntervalUnit"] = true, ["Times"] = true, nil }

function asserts.AssertCreateRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRule to be of type 'table'")
	assert(struct["Interval"], "Expected key Interval to exist in table")
	assert(struct["IntervalUnit"], "Expected key IntervalUnit to exist in table")
	if struct["Interval"] then asserts.AssertInterval(struct["Interval"]) end
	if struct["IntervalUnit"] then asserts.AssertIntervalUnitValues(struct["IntervalUnit"]) end
	if struct["Times"] then asserts.AssertTimesList(struct["Times"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRule[k], "CreateRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRule
-- <p>Specifies when to create snapshots of EBS volumes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Interval [Interval] <p>The interval. The supported values are 12 and 24.</p>
-- * IntervalUnit [IntervalUnitValues] <p>The interval unit.</p>
-- * Times [TimesList] <p>The time, in UTC, to start the operation.</p> <p>The operation occurs within a one-hour window following the specified time.</p>
-- Required key: Interval
-- Required key: IntervalUnit
-- @return CreateRule structure as a key-value pair table
function M.CreateRule(args)
	assert(args, "You must provide an argument table when creating CreateRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Interval"] = args["Interval"],
		["IntervalUnit"] = args["IntervalUnit"],
		["Times"] = args["Times"],
	}
	asserts.AssertCreateRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePoliciesRequest = { ["TagsToAdd"] = true, ["ResourceTypes"] = true, ["State"] = true, ["PolicyIds"] = true, ["TargetTags"] = true, nil }

function asserts.AssertGetLifecyclePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePoliciesRequest to be of type 'table'")
	if struct["TagsToAdd"] then asserts.AssertTagsToAddFilterList(struct["TagsToAdd"]) end
	if struct["ResourceTypes"] then asserts.AssertResourceTypeValuesList(struct["ResourceTypes"]) end
	if struct["State"] then asserts.AssertGettablePolicyStateValues(struct["State"]) end
	if struct["PolicyIds"] then asserts.AssertPolicyIdList(struct["PolicyIds"]) end
	if struct["TargetTags"] then asserts.AssertTargetTagsFilterList(struct["TargetTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePoliciesRequest[k], "GetLifecyclePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagsToAdd [TagsToAddFilterList] <p>The tags to add to objects created by the policy.</p> <p>Tags are strings in the format <code>key=value</code>.</p> <p>These user-defined tags are added in addition to the AWS-added lifecycle tags.</p>
-- * ResourceTypes [ResourceTypeValuesList] <p>The resource type.</p>
-- * State [GettablePolicyStateValues] <p>The activation state.</p>
-- * PolicyIds [PolicyIdList] <p>The identifiers of the data lifecycle policies.</p>
-- * TargetTags [TargetTagsFilterList] <p>The target tag for a policy.</p> <p>Tags are strings in the format <code>key=value</code>.</p>
-- @return GetLifecyclePoliciesRequest structure as a key-value pair table
function M.GetLifecyclePoliciesRequest(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePoliciesRequest")
    local query_args = { 
        ["tagsToAdd"] = args["TagsToAdd"],
        ["resourceTypes"] = args["ResourceTypes"],
        ["state"] = args["State"],
        ["policyIds"] = args["PolicyIds"],
        ["targetTags"] = args["TargetTags"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagsToAdd"] = args["TagsToAdd"],
		["ResourceTypes"] = args["ResourceTypes"],
		["State"] = args["State"],
		["PolicyIds"] = args["PolicyIds"],
		["TargetTags"] = args["TargetTags"],
	}
	asserts.AssertGetLifecyclePoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Schedule = { ["TagsToAdd"] = true, ["RetainRule"] = true, ["CreateRule"] = true, ["Name"] = true, nil }

function asserts.AssertSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Schedule to be of type 'table'")
	if struct["TagsToAdd"] then asserts.AssertTagsToAddList(struct["TagsToAdd"]) end
	if struct["RetainRule"] then asserts.AssertRetainRule(struct["RetainRule"]) end
	if struct["CreateRule"] then asserts.AssertCreateRule(struct["CreateRule"]) end
	if struct["Name"] then asserts.AssertScheduleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Schedule[k], "Schedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Schedule
-- <p>Specifies a schedule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagsToAdd [TagsToAddList] <p>The tags to apply to policy-created resources. These user-defined tags are in addition to the AWS-added lifecycle tags.</p>
-- * RetainRule [RetainRule] <p>The retain rule.</p>
-- * CreateRule [CreateRule] <p>The create rule.</p>
-- * Name [ScheduleName] <p>The name of the schedule.</p>
-- @return Schedule structure as a key-value pair table
function M.Schedule(args)
	assert(args, "You must provide an argument table when creating Schedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagsToAdd"] = args["TagsToAdd"],
		["RetainRule"] = args["RetainRule"],
		["CreateRule"] = args["CreateRule"],
		["Name"] = args["Name"],
	}
	asserts.AssertSchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertLifecyclePolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyResponse[k], "GetLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [LifecyclePolicy] <p>Detailed information about the lifecycle policy.</p>
-- @return GetLifecyclePolicyResponse structure as a key-value pair table
function M.GetLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecyclePolicyResponse = { nil }

function asserts.AssertDeleteLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecyclePolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecyclePolicyResponse[k], "DeleteLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLifecyclePolicyResponse structure as a key-value pair table
function M.DeleteLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecyclePolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertDeleteLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecyclePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecyclePolicyRequest[k], "DeleteLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- Required key: PolicyId
-- @return DeleteLifecyclePolicyRequest structure as a key-value pair table
function M.DeleteLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{policyId}"] = args["PolicyId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertDeleteLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLifecyclePolicyRequest = { ["State"] = true, ["ExecutionRoleArn"] = true, ["Description"] = true, ["PolicyDetails"] = true, nil }

function asserts.AssertCreateLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLifecyclePolicyRequest to be of type 'table'")
	assert(struct["ExecutionRoleArn"], "Expected key ExecutionRoleArn to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["PolicyDetails"], "Expected key PolicyDetails to exist in table")
	if struct["State"] then asserts.AssertSettablePolicyStateValues(struct["State"]) end
	if struct["ExecutionRoleArn"] then asserts.AssertExecutionRoleArn(struct["ExecutionRoleArn"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	if struct["PolicyDetails"] then asserts.AssertPolicyDetails(struct["PolicyDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLifecyclePolicyRequest[k], "CreateLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [SettablePolicyStateValues] <p>The desired activation state of the lifecycle policy after creation.</p>
-- * ExecutionRoleArn [ExecutionRoleArn] <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.</p>
-- * Description [PolicyDescription] <p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are supported.</p>
-- * PolicyDetails [PolicyDetails] <p>The configuration details of the lifecycle policy.</p> <p>Target tags cannot be re-used across lifecycle policies.</p>
-- Required key: ExecutionRoleArn
-- Required key: Description
-- Required key: State
-- Required key: PolicyDetails
-- @return CreateLifecyclePolicyRequest structure as a key-value pair table
function M.CreateLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating CreateLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["ExecutionRoleArn"] = args["ExecutionRoleArn"],
		["Description"] = args["Description"],
		["PolicyDetails"] = args["PolicyDetails"],
	}
	asserts.AssertCreateLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyDetails = { ["ResourceTypes"] = true, ["TargetTags"] = true, ["Schedules"] = true, nil }

function asserts.AssertPolicyDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyDetails to be of type 'table'")
	if struct["ResourceTypes"] then asserts.AssertResourceTypeValuesList(struct["ResourceTypes"]) end
	if struct["TargetTags"] then asserts.AssertTargetTagList(struct["TargetTags"]) end
	if struct["Schedules"] then asserts.AssertScheduleList(struct["Schedules"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyDetails[k], "PolicyDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyDetails
-- <p>Specifies the configuration of a lifecycle policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTypes [ResourceTypeValuesList] <p>The resource type.</p>
-- * TargetTags [TargetTagList] <p>The single tag that identifies targeted resources for this policy.</p>
-- * Schedules [ScheduleList] <p>The schedule of policy-defined actions.</p>
-- @return PolicyDetails structure as a key-value pair table
function M.PolicyDetails(args)
	assert(args, "You must provide an argument table when creating PolicyDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceTypes"] = args["ResourceTypes"],
		["TargetTags"] = args["TargetTags"],
		["Schedules"] = args["Schedules"],
	}
	asserts.AssertPolicyDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertGetLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyRequest[k], "GetLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- Required key: PolicyId
-- @return GetLifecyclePolicyRequest structure as a key-value pair table
function M.GetLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{policyId}"] = args["PolicyId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertGetLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicy = { ["Description"] = true, ["DateCreated"] = true, ["State"] = true, ["ExecutionRoleArn"] = true, ["PolicyId"] = true, ["DateModified"] = true, ["PolicyDetails"] = true, nil }

function asserts.AssertLifecyclePolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicy to be of type 'table'")
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	if struct["DateCreated"] then asserts.AssertTimestamp(struct["DateCreated"]) end
	if struct["State"] then asserts.AssertGettablePolicyStateValues(struct["State"]) end
	if struct["ExecutionRoleArn"] then asserts.AssertExecutionRoleArn(struct["ExecutionRoleArn"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["DateModified"] then asserts.AssertTimestamp(struct["DateModified"]) end
	if struct["PolicyDetails"] then asserts.AssertPolicyDetails(struct["PolicyDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicy[k], "LifecyclePolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicy
-- <p>Detailed information about a lifecycle policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [PolicyDescription] <p>The description of the lifecycle policy.</p>
-- * DateCreated [Timestamp] <p>The local date and time when the lifecycle policy was created.</p>
-- * State [GettablePolicyStateValues] <p>The activation state of the lifecycle policy.</p>
-- * ExecutionRoleArn [ExecutionRoleArn] <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.</p>
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- * DateModified [Timestamp] <p>The local date and time when the lifecycle policy was last modified.</p>
-- * PolicyDetails [PolicyDetails] <p>The configuration of the lifecycle policy</p>
-- @return LifecyclePolicy structure as a key-value pair table
function M.LifecyclePolicy(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["DateCreated"] = args["DateCreated"],
		["State"] = args["State"],
		["ExecutionRoleArn"] = args["ExecutionRoleArn"],
		["PolicyId"] = args["PolicyId"],
		["DateModified"] = args["DateModified"],
		["PolicyDetails"] = args["PolicyDetails"],
	}
	asserts.AssertLifecyclePolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLifecyclePolicyRequest = { ["PolicyDetails"] = true, ["State"] = true, ["ExecutionRoleArn"] = true, ["PolicyId"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLifecyclePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyDetails"] then asserts.AssertPolicyDetails(struct["PolicyDetails"]) end
	if struct["State"] then asserts.AssertSettablePolicyStateValues(struct["State"]) end
	if struct["ExecutionRoleArn"] then asserts.AssertExecutionRoleArn(struct["ExecutionRoleArn"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLifecyclePolicyRequest[k], "UpdateLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyDetails [PolicyDetails] <p>The configuration of the lifecycle policy.</p> <p>Target tags cannot be re-used across policies.</p>
-- * State [SettablePolicyStateValues] <p>The desired activation state of the lifecycle policy after creation.</p>
-- * ExecutionRoleArn [ExecutionRoleArn] <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.</p>
-- * PolicyId [PolicyId] <p>The identifier of the lifecycle policy.</p>
-- * Description [PolicyDescription] <p>A description of the lifecycle policy.</p>
-- Required key: PolicyId
-- @return UpdateLifecyclePolicyRequest structure as a key-value pair table
function M.UpdateLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{policyId}"] = args["PolicyId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyDetails"] = args["PolicyDetails"],
		["State"] = args["State"],
		["ExecutionRoleArn"] = args["ExecutionRoleArn"],
		["PolicyId"] = args["PolicyId"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateLifecyclePolicyRequest(all_args)
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
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Specifies a tag for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The tag value.</p>
-- * Key [String] <p>The tag key.</p>
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

keys.GetLifecyclePoliciesResponse = { ["Policies"] = true, nil }

function asserts.AssertGetLifecyclePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePoliciesResponse to be of type 'table'")
	if struct["Policies"] then asserts.AssertLifecyclePolicySummaryList(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePoliciesResponse[k], "GetLifecyclePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policies [LifecyclePolicySummaryList] <p>Summary information about the lifecycle policies.</p>
-- @return GetLifecyclePoliciesResponse structure as a key-value pair table
function M.GetLifecyclePoliciesResponse(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policies"] = args["Policies"],
	}
	asserts.AssertGetLifecyclePoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertPolicyDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDescription to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.PolicyDescription(str)
	asserts.AssertPolicyDescription(str)
	return str
end

function asserts.AssertPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyId to be of type 'string'")
end

--  
function M.PolicyId(str)
	asserts.AssertPolicyId(str)
	return str
end

function asserts.AssertScheduleName(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleName to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.ScheduleName(str)
	asserts.AssertScheduleName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertGettablePolicyStateValues(str)
	assert(str)
	assert(type(str) == "string", "Expected GettablePolicyStateValues to be of type 'string'")
end

--  
function M.GettablePolicyStateValues(str)
	asserts.AssertGettablePolicyStateValues(str)
	return str
end

function asserts.AssertTagFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected TagFilter to be of type 'string'")
end

--  
function M.TagFilter(str)
	asserts.AssertTagFilter(str)
	return str
end

function asserts.AssertExecutionRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionRoleArn to be of type 'string'")
end

--  
function M.ExecutionRoleArn(str)
	asserts.AssertExecutionRoleArn(str)
	return str
end

function asserts.AssertResourceTypeValues(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceTypeValues to be of type 'string'")
end

--  
function M.ResourceTypeValues(str)
	asserts.AssertResourceTypeValues(str)
	return str
end

function asserts.AssertTime(str)
	assert(str)
	assert(type(str) == "string", "Expected Time to be of type 'string'")
end

--  
function M.Time(str)
	asserts.AssertTime(str)
	return str
end

function asserts.AssertIntervalUnitValues(str)
	assert(str)
	assert(type(str) == "string", "Expected IntervalUnitValues to be of type 'string'")
end

--  
function M.IntervalUnitValues(str)
	asserts.AssertIntervalUnitValues(str)
	return str
end

function asserts.AssertSettablePolicyStateValues(str)
	assert(str)
	assert(type(str) == "string", "Expected SettablePolicyStateValues to be of type 'string'")
end

--  
function M.SettablePolicyStateValues(str)
	asserts.AssertSettablePolicyStateValues(str)
	return str
end

function asserts.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Count(integer)
	asserts.AssertCount(integer)
	return integer
end

function asserts.AssertInterval(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Interval to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Interval(integer)
	asserts.AssertInterval(integer)
	return integer
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertLifecyclePolicySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecyclePolicySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecyclePolicySummary(v)
	end
end

--  
-- List of LifecyclePolicySummary objects
function M.LifecyclePolicySummaryList(list)
	asserts.AssertLifecyclePolicySummaryList(list)
	return list
end

function asserts.AssertTargetTagsFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetTagsFilterList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TargetTagsFilterList(list)
	asserts.AssertTargetTagsFilterList(list)
	return list
end

function asserts.AssertResourceTypeValuesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypeValuesList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceTypeValues(v)
	end
end

--  
-- List of ResourceTypeValues objects
function M.ResourceTypeValuesList(list)
	asserts.AssertResourceTypeValuesList(list)
	return list
end

function asserts.AssertScheduleList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduleList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSchedule(v)
	end
end

--  
-- List of Schedule objects
function M.ScheduleList(list)
	asserts.AssertScheduleList(list)
	return list
end

function asserts.AssertTargetTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetTagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TargetTagList(list)
	asserts.AssertTargetTagList(list)
	return list
end

function asserts.AssertPolicyIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyId(v)
	end
end

--  
-- List of PolicyId objects
function M.PolicyIdList(list)
	asserts.AssertPolicyIdList(list)
	return list
end

function asserts.AssertTagsToAddFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagsToAddFilterList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagsToAddFilterList(list)
	asserts.AssertTagsToAddFilterList(list)
	return list
end

function asserts.AssertTagsToAddList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagsToAddList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagsToAddList(list)
	asserts.AssertTagsToAddList(list)
	return list
end

function asserts.AssertTimesList(list)
	assert(list)
	assert(type(list) == "table", "Expected TimesList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTime(v)
	end
end

--  
-- List of Time objects
function M.TimesList(list)
	asserts.AssertTimesList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "dlm.amazonaws.com"
		end
	end
	local ss = { "dlm" }
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
--- Call DeleteLifecyclePolicy asynchronously, invoking a callback when done
-- @param DeleteLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLifecyclePolicyAsync(DeleteLifecyclePolicyRequest, cb)
	assert(DeleteLifecyclePolicyRequest, "You must provide a DeleteLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLifecyclePolicy",
	}
	for header,value in pairs(DeleteLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyId}/", DeleteLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLifecyclePolicySync(DeleteLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLifecyclePolicyAsync(DeleteLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLifecyclePolicies asynchronously, invoking a callback when done
-- @param GetLifecyclePoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLifecyclePoliciesAsync(GetLifecyclePoliciesRequest, cb)
	assert(GetLifecyclePoliciesRequest, "You must provide a GetLifecyclePoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLifecyclePolicies",
	}
	for header,value in pairs(GetLifecyclePoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/policies", GetLifecyclePoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLifecyclePolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLifecyclePoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLifecyclePoliciesSync(GetLifecyclePoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLifecyclePoliciesAsync(GetLifecyclePoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLifecyclePolicy asynchronously, invoking a callback when done
-- @param CreateLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLifecyclePolicyAsync(CreateLifecyclePolicyRequest, cb)
	assert(CreateLifecyclePolicyRequest, "You must provide a CreateLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLifecyclePolicy",
	}
	for header,value in pairs(CreateLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/policies", CreateLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLifecyclePolicySync(CreateLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLifecyclePolicyAsync(CreateLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLifecyclePolicy asynchronously, invoking a callback when done
-- @param GetLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLifecyclePolicyAsync(GetLifecyclePolicyRequest, cb)
	assert(GetLifecyclePolicyRequest, "You must provide a GetLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLifecyclePolicy",
	}
	for header,value in pairs(GetLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyId}/", GetLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLifecyclePolicySync(GetLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLifecyclePolicyAsync(GetLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLifecyclePolicy asynchronously, invoking a callback when done
-- @param UpdateLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLifecyclePolicyAsync(UpdateLifecyclePolicyRequest, cb)
	assert(UpdateLifecyclePolicyRequest, "You must provide a UpdateLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateLifecyclePolicy",
	}
	for header,value in pairs(UpdateLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/policies/{policyId}", UpdateLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateLifecyclePolicySync(UpdateLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLifecyclePolicyAsync(UpdateLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
