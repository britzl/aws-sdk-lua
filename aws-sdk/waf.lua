--- GENERATED CODE - DO NOT MODIFY
-- AWS WAF (waf-2015-08-24)

local M = {}

M.metadata = {
	api_version = "2015-08-24",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "waf",
	service_abbreviation = "WAF",
	service_full_name = "AWS WAF",
	signature_version = "v4",
	target_prefix = "AWSWAF_20150824",
	timestamp_format = "",
	global_endpoint = "",
	uid = "waf-2015-08-24",
}

local keys = {}
local asserts = {}

keys.UpdateXssMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateXssMatchSetResponse[k], "UpdateXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateXssMatchSetResponse
-- <p>The response to an <a>UpdateXssMatchSets</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateXssMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateXssMatchSetResponse structure as a key-value pair table
function M.UpdateXssMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateXssMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateXssMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIPSetRequest = { ["IPSetId"] = true, nil }

function asserts.AssertGetIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	if struct["IPSetId"] then asserts.AssertResourceId(struct["IPSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIPSetRequest[k], "GetIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
-- Required key: IPSetId
-- @return GetIPSetRequest structure as a key-value pair table
function M.GetIPSetRequest(args)
	assert(args, "You must provide an argument table when creating GetIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPSetId"] = args["IPSetId"],
	}
	asserts.AssertGetIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActivatedRulesInRuleGroupRequest = { ["NextMarker"] = true, ["Limit"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertListActivatedRulesInRuleGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivatedRulesInRuleGroupRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActivatedRulesInRuleGroupRequest[k], "ListActivatedRulesInRuleGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivatedRulesInRuleGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>. For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>
-- * RuleGroupId [ResourceId] <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>
-- @return ListActivatedRulesInRuleGroupRequest structure as a key-value pair table
function M.ListActivatedRulesInRuleGroupRequest(args)
	assert(args, "You must provide an argument table when creating ListActivatedRulesInRuleGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertListActivatedRulesInRuleGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRateBasedRulesRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListRateBasedRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRateBasedRulesRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRateBasedRulesRequest[k], "ListRateBasedRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRateBasedRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>. For the second and subsequent <code>ListRateBasedRules</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>Rules</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more <code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
-- @return ListRateBasedRulesRequest structure as a key-value pair table
function M.ListRateBasedRulesRequest(args)
	assert(args, "You must provide an argument table when creating ListRateBasedRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRateBasedRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeWindow = { ["EndTime"] = true, ["StartTime"] = true, nil }

function asserts.AssertTimeWindow(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeWindow to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeWindow[k], "TimeWindow contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeWindow
-- <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndTime [Timestamp] <p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your AWS resource received. Specify the date and time in the following format: <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
-- * StartTime [Timestamp] <p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your AWS resource received. Specify the date and time in the following format: <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
-- Required key: StartTime
-- Required key: EndTime
-- @return TimeWindow structure as a key-value pair table
function M.TimeWindow(args)
	assert(args, "You must provide an argument table when creating TimeWindow")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndTime"] = args["EndTime"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertTimeWindow(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexMatchSetUpdate = { ["Action"] = true, ["RegexMatchTuple"] = true, nil }

function asserts.AssertRegexMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["RegexMatchTuple"], "Expected key RegexMatchTuple to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["RegexMatchTuple"] then asserts.AssertRegexMatchTuple(struct["RegexMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexMatchSetUpdate[k], "RegexMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexMatchSetUpdate
-- <p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert or delete a <a>RegexMatchTuple</a>.</p>
-- * RegexMatchTuple [RegexMatchTuple] <p>Information about the part of a web request that you want AWS WAF to inspect and the identifier of the regular expression (regex) pattern that you want AWS WAF to search for. If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>RegexMatchTuple</code> values must exactly match the values in the <code>RegexMatchTuple</code> that you want to delete from the <code>RegexMatchSet</code>.</p>
-- Required key: Action
-- Required key: RegexMatchTuple
-- @return RegexMatchSetUpdate structure as a key-value pair table
function M.RegexMatchSetUpdate(args)
	assert(args, "You must provide an argument table when creating RegexMatchSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["RegexMatchTuple"] = args["RegexMatchTuple"],
	}
	asserts.AssertRegexMatchSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleGroup = { ["MetricName"] = true, ["Name"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertRuleGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleGroup to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleGroup[k], "RuleGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleGroup
-- <p>A collection of predefined rules that you can add to a web ACL.</p> <p>Rule groups are subject to the following limits:</p> <ul> <li> <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p> </li> <li> <p>One rule group per web ACL.</p> </li> <li> <p>Ten rules per rule group.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
-- * Name [ResourceName] <p>The friendly name or description for the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
-- * RuleGroupId [ResourceId] <p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete a one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p> <p> <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
-- Required key: RuleGroupId
-- @return RuleGroup structure as a key-value pair table
function M.RuleGroup(args)
	assert(args, "You must provide an argument table when creating RuleGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricName"] = args["MetricName"],
		["Name"] = args["Name"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertRuleGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribedRuleGroupSummary = { ["MetricName"] = true, ["Name"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertSubscribedRuleGroupSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribedRuleGroupSummary to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribedRuleGroupSummary[k], "SubscribedRuleGroupSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribedRuleGroupSummary
-- <p>A summary of the rule groups you are subscribed to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
-- * RuleGroupId [ResourceId] <p>A unique identifier for a <code>RuleGroup</code>.</p>
-- Required key: RuleGroupId
-- Required key: Name
-- Required key: MetricName
-- @return SubscribedRuleGroupSummary structure as a key-value pair table
function M.SubscribedRuleGroupSummary(args)
	assert(args, "You must provide an argument table when creating SubscribedRuleGroupSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricName"] = args["MetricName"],
		["Name"] = args["Name"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertSubscribedRuleGroupSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChangeTokenStatusResponse = { ["ChangeTokenStatus"] = true, nil }

function asserts.AssertGetChangeTokenStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenStatusResponse to be of type 'table'")
	if struct["ChangeTokenStatus"] then asserts.AssertChangeTokenStatus(struct["ChangeTokenStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChangeTokenStatusResponse[k], "GetChangeTokenStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeTokenStatus [ChangeTokenStatus] <p>The status of the change token.</p>
-- @return GetChangeTokenStatusResponse structure as a key-value pair table
function M.GetChangeTokenStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetChangeTokenStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeTokenStatus"] = args["ChangeTokenStatus"],
	}
	asserts.AssertGetChangeTokenStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLoggingConfigurationsResponse = { ["NextMarker"] = true, ["LoggingConfigurations"] = true, nil }

function asserts.AssertListLoggingConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggingConfigurationsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["LoggingConfigurations"] then asserts.AssertLoggingConfigurations(struct["LoggingConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggingConfigurationsResponse[k], "ListLoggingConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggingConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>LoggingConfigurations</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>LoggingConfigurations</code>, submit another <code>ListLoggingConfigurations</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * LoggingConfigurations [LoggingConfigurations] <p>An array of <a>LoggingConfiguration</a> objects.</p>
-- @return ListLoggingConfigurationsResponse structure as a key-value pair table
function M.ListLoggingConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating ListLoggingConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["LoggingConfigurations"] = args["LoggingConfigurations"],
	}
	asserts.AssertListLoggingConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRegexPatternSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListRegexPatternSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRegexPatternSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRegexPatternSetsRequest[k], "ListRegexPatternSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRegexPatternSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects. For the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more <code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>
-- @return ListRegexPatternSetsRequest structure as a key-value pair table
function M.ListRegexPatternSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListRegexPatternSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRegexPatternSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleRequest = { ["ChangeToken"] = true, ["RuleId"] = true, nil }

function asserts.AssertDeleteRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleRequest[k], "DeleteRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: RuleId
-- Required key: ChangeToken
-- @return DeleteRuleRequest structure as a key-value pair table
function M.DeleteRuleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertDeleteRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRuleRequest = { ["ChangeToken"] = true, ["Updates"] = true, ["RuleId"] = true, nil }

function asserts.AssertUpdateRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertRuleUpdates(struct["Updates"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuleRequest[k], "UpdateRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [RuleUpdates] <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a <a>Rule</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>RuleUpdate</a>: Contains <code>Action</code> and <code>Predicate</code> </p> </li> <li> <p> <a>Predicate</a>: Contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by <code>CreateRule</code> and by <a>ListRules</a>.</p>
-- Required key: RuleId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateRuleRequest structure as a key-value pair table
function M.UpdateRuleRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertUpdateRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListByteMatchSetsResponse = { ["NextMarker"] = true, ["ByteMatchSets"] = true, nil }

function asserts.AssertListByteMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListByteMatchSetsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["ByteMatchSets"] then asserts.AssertByteMatchSetSummaries(struct["ByteMatchSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListByteMatchSetsResponse[k], "ListByteMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListByteMatchSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>ByteMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>ByteMatchSet</code> objects, submit another <code>ListByteMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * ByteMatchSets [ByteMatchSetSummaries] <p>An array of <a>ByteMatchSetSummary</a> objects.</p>
-- @return ListByteMatchSetsResponse structure as a key-value pair table
function M.ListByteMatchSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListByteMatchSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["ByteMatchSets"] = args["ByteMatchSets"],
	}
	asserts.AssertListByteMatchSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSubscribedRuleGroupsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListSubscribedRuleGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscribedRuleGroupsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscribedRuleGroupsRequest[k], "ListSubscribedRuleGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscribedRuleGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups. For the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of subscribed rule groups.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of objects.</p>
-- @return ListSubscribedRuleGroupsRequest structure as a key-value pair table
function M.ListSubscribedRuleGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListSubscribedRuleGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSubscribedRuleGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGeoMatchSetResponse = { ["GeoMatchSet"] = true, nil }

function asserts.AssertGetGeoMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoMatchSetResponse to be of type 'table'")
	if struct["GeoMatchSet"] then asserts.AssertGeoMatchSet(struct["GeoMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGeoMatchSetResponse[k], "GetGeoMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSet [GeoMatchSet] <p>Information about the <a>GeoMatchSet</a> that you specified in the <code>GetGeoMatchSet</code> request. This includes the <code>Type</code>, which for a <code>GeoMatchContraint</code> is always <code>Country</code>, as well as the <code>Value</code>, which is the identifier for a specific country.</p>
-- @return GetGeoMatchSetResponse structure as a key-value pair table
function M.GetGeoMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating GetGeoMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSet"] = args["GeoMatchSet"],
	}
	asserts.AssertGetGeoMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Predicate = { ["Negated"] = true, ["Type"] = true, ["DataId"] = true, nil }

function asserts.AssertPredicate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Predicate to be of type 'table'")
	assert(struct["Negated"], "Expected key Negated to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["DataId"], "Expected key DataId to exist in table")
	if struct["Negated"] then asserts.AssertNegated(struct["Negated"]) end
	if struct["Type"] then asserts.AssertPredicateType(struct["Type"]) end
	if struct["DataId"] then asserts.AssertResourceId(struct["DataId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Predicate[k], "Predicate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Predicate
-- <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Negated [Negated] <p>Set <code>Negated</code> to <code>False</code> if you want AWS WAF to allow, block, or count requests based on the settings in the specified <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, or <a>SizeConstraintSet</a>. For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow or block requests based on that IP address.</p> <p>Set <code>Negated</code> to <code>True</code> if you want AWS WAF to allow or block a request based on the negation of the settings in the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, or <a>SizeConstraintSet</a>. For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow, block, or count requests based on all IP addresses <i>except</i> <code>192.0.2.44</code>.</p>
-- * Type [PredicateType] <p>The type of predicate in a <code>Rule</code>, such as <code>ByteMatch</code> or <code>IPSet</code>.</p>
-- * DataId [ResourceId] <p>A unique identifier for a predicate in a <code>Rule</code>, such as <code>ByteMatchSetId</code> or <code>IPSetId</code>. The ID is returned by the corresponding <code>Create</code> or <code>List</code> command.</p>
-- Required key: Negated
-- Required key: Type
-- Required key: DataId
-- @return Predicate structure as a key-value pair table
function M.Predicate(args)
	assert(args, "You must provide an argument table when creating Predicate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Negated"] = args["Negated"],
		["Type"] = args["Type"],
		["DataId"] = args["DataId"],
	}
	asserts.AssertPredicate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIPSetRequest = { ["IPSetId"] = true, ["ChangeToken"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["IPSetId"] then asserts.AssertResourceId(struct["IPSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertIPSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIPSetRequest[k], "UpdateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [IPSetUpdates] <p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code> </p> </li> <li> <p> <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code> </p> </li> </ul> <p>You can insert a maximum of 1000 addresses in a single request.</p>
-- Required key: IPSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateIPSetRequest structure as a key-value pair table
function M.UpdateIPSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPSetId"] = args["IPSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleUpdate = { ["Action"] = true, ["Predicate"] = true, nil }

function asserts.AssertRuleUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Predicate"], "Expected key Predicate to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["Predicate"] then asserts.AssertPredicate(struct["Predicate"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleUpdate[k], "RuleUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleUpdate
-- <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a <code>Rule</code> or delete it from a <code>Rule</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specify <code>INSERT</code> to add a <code>Predicate</code> to a <code>Rule</code>. Use <code>DELETE</code> to remove a <code>Predicate</code> from a <code>Rule</code>.</p>
-- * Predicate [Predicate] <p>The ID of the <code>Predicate</code> (such as an <code>IPSet</code>) that you want to add to a <code>Rule</code>.</p>
-- Required key: Action
-- Required key: Predicate
-- @return RuleUpdate structure as a key-value pair table
function M.RuleUpdate(args)
	assert(args, "You must provide an argument table when creating RuleUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Predicate"] = args["Predicate"],
	}
	asserts.AssertRuleUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSubscribedRuleGroupsResponse = { ["RuleGroups"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListSubscribedRuleGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscribedRuleGroupsResponse to be of type 'table'")
	if struct["RuleGroups"] then asserts.AssertSubscribedRuleGroupSummaries(struct["RuleGroups"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscribedRuleGroupsResponse[k], "ListSubscribedRuleGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscribedRuleGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleGroups [SubscribedRuleGroupSummaries] <p>An array of <a>RuleGroup</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more objects, submit another <code>ListSubscribedRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListSubscribedRuleGroupsResponse structure as a key-value pair table
function M.ListSubscribedRuleGroupsResponse(args)
	assert(args, "You must provide an argument table when creating ListSubscribedRuleGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleGroups"] = args["RuleGroups"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListSubscribedRuleGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSqlInjectionMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSqlInjectionMatchSetResponse[k], "DeleteSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSqlInjectionMatchSetResponse
-- <p>The response to a request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSqlInjectionMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteSqlInjectionMatchSetResponse structure as a key-value pair table
function M.DeleteSqlInjectionMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSqlInjectionMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSqlInjectionMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLoggingConfigurationsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListLoggingConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggingConfigurationsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggingConfigurationsRequest[k], "ListLoggingConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggingConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>. For the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>
-- @return ListLoggingConfigurationsRequest structure as a key-value pair table
function M.ListLoggingConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListLoggingConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListLoggingConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSizeConstraintSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSizeConstraintSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSizeConstraintSetResponse[k], "UpdateSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSizeConstraintSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSizeConstraintSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateSizeConstraintSetResponse structure as a key-value pair table
function M.UpdateSizeConstraintSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSizeConstraintSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateSizeConstraintSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActivatedRulesInRuleGroupResponse = { ["NextMarker"] = true, ["ActivatedRules"] = true, nil }

function asserts.AssertListActivatedRulesInRuleGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivatedRulesInRuleGroupResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["ActivatedRules"] then asserts.AssertActivatedRules(struct["ActivatedRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActivatedRulesInRuleGroupResponse[k], "ListActivatedRulesInRuleGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivatedRulesInRuleGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>ActivatedRules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>ActivatedRules</code>, submit another <code>ListActivatedRulesInRuleGroup</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * ActivatedRules [ActivatedRules] <p>An array of <code>ActivatedRules</code> objects.</p>
-- @return ListActivatedRulesInRuleGroupResponse structure as a key-value pair table
function M.ListActivatedRulesInRuleGroupResponse(args)
	assert(args, "You must provide an argument table when creating ListActivatedRulesInRuleGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["ActivatedRules"] = args["ActivatedRules"],
	}
	asserts.AssertListActivatedRulesInRuleGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGeoMatchSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListGeoMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGeoMatchSetsRequest[k], "ListGeoMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoMatchSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects. For the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more <code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>
-- @return ListGeoMatchSetsRequest structure as a key-value pair table
function M.ListGeoMatchSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListGeoMatchSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListGeoMatchSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetByteMatchSetRequest = { ["ByteMatchSetId"] = true, nil }

function asserts.AssertGetByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	if struct["ByteMatchSetId"] then asserts.AssertResourceId(struct["ByteMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetByteMatchSetRequest[k], "GetByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetByteMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSetId [ResourceId] <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
-- Required key: ByteMatchSetId
-- @return GetByteMatchSetRequest structure as a key-value pair table
function M.GetByteMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating GetByteMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
	}
	asserts.AssertGetByteMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRegexMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateRegexMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRegexMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRegexMatchSetResponse[k], "UpdateRegexMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRegexMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateRegexMatchSetResponse structure as a key-value pair table
function M.UpdateRegexMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRegexMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRegexMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRateBasedRuleRequest = { ["ChangeToken"] = true, ["RateLimit"] = true, ["RateKey"] = true, ["Name"] = true, ["MetricName"] = true, nil }

function asserts.AssertCreateRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRateBasedRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["RateKey"], "Expected key RateKey to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RateLimit"] then asserts.AssertRateLimit(struct["RateLimit"]) end
	if struct["RateKey"] then asserts.AssertRateKey(struct["RateKey"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRateBasedRuleRequest[k], "CreateRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRateBasedRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRateBasedRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * RateLimit [RateLimit] <p>The maximum number of requests, which have an identical value in the field that is specified by <code>RateKey</code>, allowed in a five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.</p>
-- * RateKey [RateKey] <p>The field that AWS WAF uses to determine if requests are likely arriving from a single source and thus subject to rate monitoring. The only valid value for <code>RateKey</code> is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP address are subject to the <code>RateLimit</code> that is specified in the <code>RateBasedRule</code>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RateBasedRule</a>. You can't change the name of a <code>RateBasedRule</code> after you create it.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>RateBasedRule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>RateBasedRule</code>.</p>
-- Required key: Name
-- Required key: MetricName
-- Required key: RateKey
-- Required key: RateLimit
-- Required key: ChangeToken
-- @return CreateRateBasedRuleRequest structure as a key-value pair table
function M.CreateRateBasedRuleRequest(args)
	assert(args, "You must provide an argument table when creating CreateRateBasedRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["RateLimit"] = args["RateLimit"],
		["RateKey"] = args["RateKey"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateRateBasedRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRateBasedRuleResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRateBasedRuleResponse[k], "DeleteRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRateBasedRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRateBasedRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteRateBasedRuleResponse structure as a key-value pair table
function M.DeleteRateBasedRuleResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRateBasedRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRateBasedRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteWebACLRequest = { ["ChangeToken"] = true, ["WebACLId"] = true, nil }

function asserts.AssertDeleteWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteWebACLRequest[k], "DeleteWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * WebACLId [ResourceId] <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
-- Required key: WebACLId
-- Required key: ChangeToken
-- @return DeleteWebACLRequest structure as a key-value pair table
function M.DeleteWebACLRequest(args)
	assert(args, "You must provide an argument table when creating DeleteWebACLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertDeleteWebACLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRegexPatternSetResponse = { ["RegexPatternSet"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateRegexPatternSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRegexPatternSetResponse to be of type 'table'")
	if struct["RegexPatternSet"] then asserts.AssertRegexPatternSet(struct["RegexPatternSet"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRegexPatternSetResponse[k], "CreateRegexPatternSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRegexPatternSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSet [RegexPatternSet] <p>A <a>RegexPatternSet</a> that contains no objects.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexPatternSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return CreateRegexPatternSetResponse structure as a key-value pair table
function M.CreateRegexPatternSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateRegexPatternSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSet"] = args["RegexPatternSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateRegexPatternSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRegexMatchSetsResponse = { ["NextMarker"] = true, ["RegexMatchSets"] = true, nil }

function asserts.AssertListRegexMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRegexMatchSetsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["RegexMatchSets"] then asserts.AssertRegexMatchSetSummaries(struct["RegexMatchSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRegexMatchSetsResponse[k], "ListRegexMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRegexMatchSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>RegexMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RegexMatchSet</code> objects, submit another <code>ListRegexMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * RegexMatchSets [RegexMatchSetSummaries] <p>An array of <a>RegexMatchSetSummary</a> objects.</p>
-- @return ListRegexMatchSetsResponse structure as a key-value pair table
function M.ListRegexMatchSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListRegexMatchSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["RegexMatchSets"] = args["RegexMatchSets"],
	}
	asserts.AssertListRegexMatchSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIPSetsResponse = { ["IPSets"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListIPSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsResponse to be of type 'table'")
	if struct["IPSets"] then asserts.AssertIPSetSummaries(struct["IPSets"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIPSetsResponse[k], "ListIPSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSets [IPSetSummaries] <p>An array of <a>IPSetSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <code>IPSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>IPSet</code> objects, submit another <code>ListIPSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
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
		["IPSets"] = args["IPSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListIPSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SizeConstraint = { ["ComparisonOperator"] = true, ["TextTransformation"] = true, ["FieldToMatch"] = true, ["Size"] = true, nil }

function asserts.AssertSizeConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraint to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["TextTransformation"] then asserts.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then asserts.AssertFieldToMatch(struct["FieldToMatch"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.SizeConstraint[k], "SizeConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraint
-- <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComparisonOperator [ComparisonOperator] <p>The type of comparison you want AWS WAF to perform. AWS WAF uses this in combination with the provided <code>Size</code> and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p> <p> <b>EQ</b>: Used to test if the <code>Size</code> is equal to the size of the <code>FieldToMatch</code> </p> <p> <b>NE</b>: Used to test if the <code>Size</code> is not equal to the size of the <code>FieldToMatch</code> </p> <p> <b>LE</b>: Used to test if the <code>Size</code> is less than or equal to the size of the <code>FieldToMatch</code> </p> <p> <b>LT</b>: Used to test if the <code>Size</code> is strictly less than the size of the <code>FieldToMatch</code> </p> <p> <b>GE</b>: Used to test if the <code>Size</code> is greater than or equal to the size of the <code>FieldToMatch</code> </p> <p> <b>GT</b>: Used to test if the <code>Size</code> is strictly greater than the size of the <code>FieldToMatch</code> </p>
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p>You can only specify a single type of TextTransformation.</p> <p>Note that if you choose <code>BODY</code> for the value of <code>Type</code>, you must choose <code>NONE</code> for <code>TextTransformation</code> because CloudFront forwards only the first 8192 bytes for inspection. </p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for the size constraint.</p>
-- * Size [Size] <p>The size in bytes that you want AWS WAF to compare against the size of the specified <code>FieldToMatch</code>. AWS WAF uses this in combination with <code>ComparisonOperator</code> and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p> <p>Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).</p> <p>If you specify <code>URI</code> for the value of <code>Type</code>, the / in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- Required key: ComparisonOperator
-- Required key: Size
-- @return SizeConstraint structure as a key-value pair table
function M.SizeConstraint(args)
	assert(args, "You must provide an argument table when creating SizeConstraint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
		["Size"] = args["Size"],
	}
	asserts.AssertSizeConstraint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleResponse = { ["ChangeToken"] = true, ["Rule"] = true, nil }

function asserts.AssertCreateRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Rule"] then asserts.AssertRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleResponse[k], "CreateRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * Rule [Rule] <p>The <a>Rule</a> returned in the <code>CreateRule</code> response.</p>
-- @return CreateRuleResponse structure as a key-value pair table
function M.CreateRuleResponse(args)
	assert(args, "You must provide an argument table when creating CreateRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertCreateRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldToMatch = { ["Data"] = true, ["Type"] = true, nil }

function asserts.AssertFieldToMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldToMatch to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Data"] then asserts.AssertMatchFieldData(struct["Data"]) end
	if struct["Type"] then asserts.AssertMatchFieldType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldToMatch[k], "FieldToMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldToMatch
-- <p>Specifies where in a web request to look for <code>TargetString</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [MatchFieldData] <p>When the value of <code>Type</code> is <code>HEADER</code>, enter the name of the header that you want AWS WAF to search, for example, <code>User-Agent</code> or <code>Referer</code>. The name of the header is not case sensitive.</p> <p>When the value of <code>Type</code> is <code>SINGLE_QUERY_ARG</code>, enter the name of the parameter that you want AWS WAF to search, for example, <code>UserName</code> or <code>SalesRegion</code>. The parameter name is not case sensitive.</p> <p>If the value of <code>Type</code> is any other value, omit <code>Data</code>.</p>
-- * Type [MatchFieldType] <p>The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:</p> <ul> <li> <p> <code>HEADER</code>: A specified request header, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header. If you choose <code>HEADER</code> for the type, specify the name of the header in <code>Data</code>.</p> </li> <li> <p> <code>METHOD</code>: The HTTP method, which indicated the type of operation that the request is asking the origin to perform. Amazon CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p> </li> <li> <p> <code>QUERY_STRING</code>: A query string, which is the part of a URL that appears after a <code>?</code> character, if any.</p> </li> <li> <p> <code>URI</code>: The part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p> </li> <li> <p> <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see <a>CreateSizeConstraintSet</a>. </p> </li> <li> <p> <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p> </li> <li> <p> <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but rather than inspecting a single parameter, AWS WAF will inspect all parameters within the query for the value or regex pattern that you specify in <code>TargetString</code>.</p> </li> </ul>
-- Required key: Type
-- @return FieldToMatch structure as a key-value pair table
function M.FieldToMatch(args)
	assert(args, "You must provide an argument table when creating FieldToMatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Data"] = args["Data"],
		["Type"] = args["Type"],
	}
	asserts.AssertFieldToMatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.XssMatchTuple = { ["TextTransformation"] = true, ["FieldToMatch"] = true, nil }

function asserts.AssertXssMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	if struct["TextTransformation"] then asserts.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then asserts.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.XssMatchTuple[k], "XssMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchTuple
-- <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p>You can only specify a single type of TextTransformation.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for cross-site scripting attacks.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- @return XssMatchTuple structure as a key-value pair table
function M.XssMatchTuple(args)
	assert(args, "You must provide an argument table when creating XssMatchTuple")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertXssMatchTuple(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSqlInjectionMatchSetRequest = { ["ChangeToken"] = true, ["SqlInjectionMatchSetId"] = true, nil }

function asserts.AssertDeleteSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["SqlInjectionMatchSetId"] then asserts.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSqlInjectionMatchSetRequest[k], "DeleteSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSqlInjectionMatchSetRequest
-- <p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * SqlInjectionMatchSetId [ResourceId] <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete. <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
-- Required key: SqlInjectionMatchSetId
-- Required key: ChangeToken
-- @return DeleteSqlInjectionMatchSetRequest structure as a key-value pair table
function M.DeleteSqlInjectionMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSqlInjectionMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertDeleteSqlInjectionMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSizeConstraintSetRequest = { ["SizeConstraintSetId"] = true, nil }

function asserts.AssertGetSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	if struct["SizeConstraintSetId"] then asserts.AssertResourceId(struct["SizeConstraintSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSizeConstraintSetRequest[k], "GetSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSizeConstraintSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSetId [ResourceId] <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
-- Required key: SizeConstraintSetId
-- @return GetSizeConstraintSetRequest structure as a key-value pair table
function M.GetSizeConstraintSetRequest(args)
	assert(args, "You must provide an argument table when creating GetSizeConstraintSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
	}
	asserts.AssertGetSizeConstraintSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ByteMatchTuple = { ["TargetString"] = true, ["PositionalConstraint"] = true, ["TextTransformation"] = true, ["FieldToMatch"] = true, nil }

function asserts.AssertByteMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TargetString"], "Expected key TargetString to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	assert(struct["PositionalConstraint"], "Expected key PositionalConstraint to exist in table")
	if struct["TargetString"] then asserts.AssertByteMatchTargetString(struct["TargetString"]) end
	if struct["PositionalConstraint"] then asserts.AssertPositionalConstraint(struct["PositionalConstraint"]) end
	if struct["TextTransformation"] then asserts.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then asserts.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.ByteMatchTuple[k], "ByteMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchTuple
-- <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetString [ByteMatchTargetString] <p>The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you specified in <code>FieldToMatch</code>. The maximum length of the value is 50 bytes.</p> <p>Valid values depend on the values that you specified for <code>FieldToMatch</code>:</p> <ul> <li> <p> <code>HEADER</code>: The value that you want AWS WAF to search for in the request header that you specified in <a>FieldToMatch</a>, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.</p> </li> <li> <p> <code>METHOD</code>: The HTTP method, which indicates the type of operation specified in the request. CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p> </li> <li> <p> <code>QUERY_STRING</code>: The value that you want AWS WAF to search for in the query string, which is the part of a URL that appears after a <code>?</code> character.</p> </li> <li> <p> <code>URI</code>: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p> </li> <li> <p> <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see <a>CreateSizeConstraintSet</a>. </p> </li> <li> <p> <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p> </li> <li> <p> <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but instead of inspecting a single parameter, AWS WAF inspects all parameters within the query string for the value or regex pattern that you specify in <code>TargetString</code>.</p> </li> </ul> <p>If <code>TargetString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p> <p> <b>If you're using the AWS WAF API</b> </p> <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p> <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the value of <code>Data</code> is <code>User-Agent</code>. If you want to search the <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode <code>BadBot</code> using MIME base64 encoding and include the resulting value, <code>QmFkQm90</code>, in the value of <code>TargetString</code>.</p> <p> <b>If you're using the AWS CLI or one of the AWS SDKs</b> </p> <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>
-- * PositionalConstraint [PositionalConstraint] <p>Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:</p> <p> <b>CONTAINS</b> </p> <p>The specified part of the web request must include the value of <code>TargetString</code>, but the location doesn't matter.</p> <p> <b>CONTAINS_WORD</b> </p> <p>The specified part of the web request must include the value of <code>TargetString</code>, and <code>TargetString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, <code>TargetString</code> must be a word, which means one of the following:</p> <ul> <li> <p> <code>TargetString</code> exactly matches the value of the specified part of the web request, such as the value of a header.</p> </li> <li> <p> <code>TargetString</code> is at the beginning of the specified part of the web request and is followed by a character other than an alphanumeric character or underscore (_), for example, <code>BadBot;</code>.</p> </li> <li> <p> <code>TargetString</code> is at the end of the specified part of the web request and is preceded by a character other than an alphanumeric character or underscore (_), for example, <code>;BadBot</code>.</p> </li> <li> <p> <code>TargetString</code> is in the middle of the specified part of the web request and is preceded and followed by characters other than alphanumeric characters or underscore (_), for example, <code>-BadBot;</code>.</p> </li> </ul> <p> <b>EXACTLY</b> </p> <p>The value of the specified part of the web request must exactly match the value of <code>TargetString</code>.</p> <p> <b>STARTS_WITH</b> </p> <p>The value of <code>TargetString</code> must appear at the beginning of the specified part of the web request.</p> <p> <b>ENDS_WITH</b> </p> <p>The value of <code>TargetString</code> must appear at the end of the specified part of the web request.</p>
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>TargetString</code> before inspecting a request for a match.</p> <p>You can only specify a single type of TextTransformation.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see <a>FieldToMatch</a>.</p>
-- Required key: FieldToMatch
-- Required key: TargetString
-- Required key: TextTransformation
-- Required key: PositionalConstraint
-- @return ByteMatchTuple structure as a key-value pair table
function M.ByteMatchTuple(args)
	assert(args, "You must provide an argument table when creating ByteMatchTuple")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetString"] = args["TargetString"],
		["PositionalConstraint"] = args["PositionalConstraint"],
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertByteMatchTuple(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleGroupRequest = { ["ChangeToken"] = true, ["Name"] = true, ["MetricName"] = true, nil }

function asserts.AssertCreateRuleGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleGroupRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleGroupRequest[k], "CreateRuleGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a <code>RuleGroup</code>.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
-- Required key: Name
-- Required key: MetricName
-- Required key: ChangeToken
-- @return CreateRuleGroupRequest structure as a key-value pair table
function M.CreateRuleGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateRuleGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateRuleGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSampledRequestsResponse = { ["TimeWindow"] = true, ["SampledRequests"] = true, ["PopulationSize"] = true, nil }

function asserts.AssertGetSampledRequestsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSampledRequestsResponse to be of type 'table'")
	if struct["TimeWindow"] then asserts.AssertTimeWindow(struct["TimeWindow"]) end
	if struct["SampledRequests"] then asserts.AssertSampledHTTPRequests(struct["SampledRequests"]) end
	if struct["PopulationSize"] then asserts.AssertPopulationSize(struct["PopulationSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSampledRequestsResponse[k], "GetSampledRequestsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSampledRequestsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeWindow [TimeWindow] <p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However, if your AWS resource received more than 5,000 requests during the time range that you specified in the request, <code>GetSampledRequests</code> returns the time range for the first 5,000 requests.</p>
-- * SampledRequests [SampledHTTPRequests] <p>A complex type that contains detailed information about each of the requests in the sample.</p>
-- * PopulationSize [PopulationSize] <p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests. If <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource received during the specified time range.</p>
-- @return GetSampledRequestsResponse structure as a key-value pair table
function M.GetSampledRequestsResponse(args)
	assert(args, "You must provide an argument table when creating GetSampledRequestsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeWindow"] = args["TimeWindow"],
		["SampledRequests"] = args["SampledRequests"],
		["PopulationSize"] = args["PopulationSize"],
	}
	asserts.AssertGetSampledRequestsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPermissionPolicyRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertGetPermissionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPermissionPolicyRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPermissionPolicyRequest[k], "GetPermissionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPermissionPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>
-- Required key: ResourceArn
-- @return GetPermissionPolicyRequest structure as a key-value pair table
function M.GetPermissionPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetPermissionPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertGetPermissionPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPSetDescriptor = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertIPSetDescriptor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetDescriptor to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then asserts.AssertIPSetDescriptorType(struct["Type"]) end
	if struct["Value"] then asserts.AssertIPSetDescriptorValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPSetDescriptor[k], "IPSetDescriptor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetDescriptor
-- <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [IPSetDescriptorType] <p>Specify <code>IPV4</code> or <code>IPV6</code>.</p>
-- * Value [IPSetDescriptorValue] <p>Specify an IPv4 address by using CIDR notation. For example:</p> <ul> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p> </li> </ul> <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p> <p>Specify an IPv6 address by using CIDR notation. For example:</p> <ul> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p> </li> </ul>
-- Required key: Type
-- Required key: Value
-- @return IPSetDescriptor structure as a key-value pair table
function M.IPSetDescriptor(args)
	assert(args, "You must provide an argument table when creating IPSetDescriptor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertIPSetDescriptor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePermissionPolicyResponse = { nil }

function asserts.AssertDeletePermissionPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePermissionPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePermissionPolicyResponse[k], "DeletePermissionPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePermissionPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePermissionPolicyResponse structure as a key-value pair table
function M.DeletePermissionPolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeletePermissionPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePermissionPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoggingConfigurationResponse = { ["LoggingConfiguration"] = true, nil }

function asserts.AssertGetLoggingConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingConfigurationResponse to be of type 'table'")
	if struct["LoggingConfiguration"] then asserts.AssertLoggingConfiguration(struct["LoggingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingConfigurationResponse[k], "GetLoggingConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingConfiguration [LoggingConfiguration] <p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>
-- @return GetLoggingConfigurationResponse structure as a key-value pair table
function M.GetLoggingConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating GetLoggingConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggingConfiguration"] = args["LoggingConfiguration"],
	}
	asserts.AssertGetLoggingConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSqlInjectionMatchSetRequest = { ["SqlInjectionMatchSetId"] = true, nil }

function asserts.AssertGetSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	if struct["SqlInjectionMatchSetId"] then asserts.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSqlInjectionMatchSetRequest[k], "GetSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSqlInjectionMatchSetRequest
-- <p>A request to get a <a>SqlInjectionMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SqlInjectionMatchSetId [ResourceId] <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
-- Required key: SqlInjectionMatchSetId
-- @return GetSqlInjectionMatchSetRequest structure as a key-value pair table
function M.GetSqlInjectionMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating GetSqlInjectionMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertGetSqlInjectionMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateXssMatchSetResponse = { ["ChangeToken"] = true, ["XssMatchSet"] = true, nil }

function asserts.AssertCreateXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSet"] then asserts.AssertXssMatchSet(struct["XssMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateXssMatchSetResponse[k], "CreateXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateXssMatchSetResponse
-- <p>The response to a <code>CreateXssMatchSet</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateXssMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * XssMatchSet [XssMatchSet] <p>An <a>XssMatchSet</a>.</p>
-- @return CreateXssMatchSetResponse structure as a key-value pair table
function M.CreateXssMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateXssMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSet"] = args["XssMatchSet"],
	}
	asserts.AssertCreateXssMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRegexPatternSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRegexPatternSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegexPatternSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegexPatternSetResponse[k], "DeleteRegexPatternSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegexPatternSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexPatternSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteRegexPatternSetResponse structure as a key-value pair table
function M.DeleteRegexPatternSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRegexPatternSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRegexPatternSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSizeConstraintSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSizeConstraintSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSizeConstraintSetResponse[k], "DeleteSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSizeConstraintSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSizeConstraintSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteSizeConstraintSetResponse structure as a key-value pair table
function M.DeleteSizeConstraintSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSizeConstraintSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSizeConstraintSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WafAction = { ["Type"] = true, nil }

function asserts.AssertWafAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WafAction to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertWafActionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.WafAction[k], "WafAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WafAction
-- <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [WafActionType] <p>Specifies how you want AWS WAF to respond to requests that match the settings in a <code>Rule</code>. Valid settings include the following:</p> <ul> <li> <p> <code>ALLOW</code>: AWS WAF allows requests</p> </li> <li> <p> <code>BLOCK</code>: AWS WAF blocks requests</p> </li> <li> <p> <code>COUNT</code>: AWS WAF increments a counter of the requests that match all of the conditions in the rule. AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify <code>COUNT</code> for the default action for a <code>WebACL</code>.</p> </li> </ul>
-- Required key: Type
-- @return WafAction structure as a key-value pair table
function M.WafAction(args)
	assert(args, "You must provide an argument table when creating WafAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
	}
	asserts.AssertWafAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSqlInjectionMatchSetResponse = { ["SqlInjectionMatchSet"] = true, nil }

function asserts.AssertGetSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["SqlInjectionMatchSet"] then asserts.AssertSqlInjectionMatchSet(struct["SqlInjectionMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSqlInjectionMatchSetResponse[k], "GetSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSqlInjectionMatchSetResponse
-- <p>The response to a <a>GetSqlInjectionMatchSet</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SqlInjectionMatchSet [SqlInjectionMatchSet] <p>Information about the <a>SqlInjectionMatchSet</a> that you specified in the <code>GetSqlInjectionMatchSet</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>SqlInjectionMatchSet</a>: Contains <code>Name</code>, <code>SqlInjectionMatchSetId</code>, and an array of <code>SqlInjectionMatchTuple</code> objects</p> </li> <li> <p> <a>SqlInjectionMatchTuple</a>: Each <code>SqlInjectionMatchTuple</code> object contains <code>FieldToMatch</code> and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- @return GetSqlInjectionMatchSetResponse structure as a key-value pair table
function M.GetSqlInjectionMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating GetSqlInjectionMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SqlInjectionMatchSet"] = args["SqlInjectionMatchSet"],
	}
	asserts.AssertGetSqlInjectionMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoMatchConstraint = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertGeoMatchConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoMatchConstraint to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then asserts.AssertGeoMatchConstraintType(struct["Type"]) end
	if struct["Value"] then asserts.AssertGeoMatchConstraintValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoMatchConstraint[k], "GeoMatchConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoMatchConstraint
-- <p>The country from which web requests originate that you want AWS WAF to search for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [GeoMatchConstraintType] <p>The type of geographical area you want AWS WAF to search for. Currently <code>Country</code> is the only valid value.</p>
-- * Value [GeoMatchConstraintValue] <p>The country that you want AWS WAF to search for.</p>
-- Required key: Type
-- Required key: Value
-- @return GeoMatchConstraint structure as a key-value pair table
function M.GeoMatchConstraint(args)
	assert(args, "You must provide an argument table when creating GeoMatchConstraint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertGeoMatchConstraint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.XssMatchSetSummary = { ["XssMatchSetId"] = true, ["Name"] = true, nil }

function asserts.AssertXssMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSetSummary to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["XssMatchSetId"] then asserts.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.XssMatchSetSummary[k], "XssMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSetSummary
-- <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * XssMatchSetId [ResourceId] <p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about a <code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> (see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF (see <a>DeleteXssMatchSet</a>).</p> <p> <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
-- * Name [ResourceName] <p>The name of the <code>XssMatchSet</code>, if any, specified by <code>Id</code>.</p>
-- Required key: XssMatchSetId
-- Required key: Name
-- @return XssMatchSetSummary structure as a key-value pair table
function M.XssMatchSetSummary(args)
	assert(args, "You must provide an argument table when creating XssMatchSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertXssMatchSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListXssMatchSetsResponse = { ["XssMatchSets"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListXssMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListXssMatchSetsResponse to be of type 'table'")
	if struct["XssMatchSets"] then asserts.AssertXssMatchSetSummaries(struct["XssMatchSets"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListXssMatchSetsResponse[k], "ListXssMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListXssMatchSetsResponse
-- <p>The response to a <a>ListXssMatchSets</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * XssMatchSets [XssMatchSetSummaries] <p>An array of <a>XssMatchSetSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <a>XssMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>XssMatchSet</code> objects, submit another <code>ListXssMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListXssMatchSetsResponse structure as a key-value pair table
function M.ListXssMatchSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListXssMatchSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["XssMatchSets"] = args["XssMatchSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListXssMatchSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ByteMatchSet = { ["ByteMatchSetId"] = true, ["Name"] = true, ["ByteMatchTuples"] = true, nil }

function asserts.AssertByteMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSet to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ByteMatchTuples"], "Expected key ByteMatchTuples to exist in table")
	if struct["ByteMatchSetId"] then asserts.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["ByteMatchTuples"] then asserts.AssertByteMatchTuples(struct["ByteMatchTuples"]) end
	for k,_ in pairs(struct) do
		assert(keys.ByteMatchSet[k], "ByteMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSet
-- <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and <code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p> <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one <code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSetId [ResourceId] <p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a <code>ByteMatchSet</code> (see <a>GetByteMatchSet</a>), update a <code>ByteMatchSet</code> (see <a>UpdateByteMatchSet</a>), insert a <code>ByteMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>ByteMatchSet</code> from AWS WAF (see <a>DeleteByteMatchSet</a>).</p> <p> <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>
-- * ByteMatchTuples [ByteMatchTuples] <p>Specifies the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
-- Required key: ByteMatchSetId
-- Required key: ByteMatchTuples
-- @return ByteMatchSet structure as a key-value pair table
function M.ByteMatchSet(args)
	assert(args, "You must provide an argument table when creating ByteMatchSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["Name"] = args["Name"],
		["ByteMatchTuples"] = args["ByteMatchTuples"],
	}
	asserts.AssertByteMatchSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRateBasedRuleRequest = { ["RuleId"] = true, nil }

function asserts.AssertGetRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRateBasedRuleRequest[k], "GetRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
-- Required key: RuleId
-- @return GetRateBasedRuleRequest structure as a key-value pair table
function M.GetRateBasedRuleRequest(args)
	assert(args, "You must provide an argument table when creating GetRateBasedRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRateBasedRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqlInjectionMatchSetUpdate = { ["Action"] = true, ["SqlInjectionMatchTuple"] = true, nil }

function asserts.AssertSqlInjectionMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["SqlInjectionMatchTuple"], "Expected key SqlInjectionMatchTuple to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["SqlInjectionMatchTuple"] then asserts.AssertSqlInjectionMatchTuple(struct["SqlInjectionMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlInjectionMatchSetUpdate[k], "SqlInjectionMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSetUpdate
-- <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specify <code>INSERT</code> to add a <a>SqlInjectionMatchSetUpdate</a> to a <a>SqlInjectionMatchSet</a>. Use <code>DELETE</code> to remove a <code>SqlInjectionMatchSetUpdate</code> from a <code>SqlInjectionMatchSet</code>.</p>
-- * SqlInjectionMatchTuple [SqlInjectionMatchTuple] <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
-- Required key: Action
-- Required key: SqlInjectionMatchTuple
-- @return SqlInjectionMatchSetUpdate structure as a key-value pair table
function M.SqlInjectionMatchSetUpdate(args)
	assert(args, "You must provide an argument table when creating SqlInjectionMatchSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["SqlInjectionMatchTuple"] = args["SqlInjectionMatchTuple"],
	}
	asserts.AssertSqlInjectionMatchSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoMatchSet = { ["GeoMatchSetId"] = true, ["Name"] = true, ["GeoMatchConstraints"] = true, nil }

function asserts.AssertGeoMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoMatchSet to be of type 'table'")
	assert(struct["GeoMatchSetId"], "Expected key GeoMatchSetId to exist in table")
	assert(struct["GeoMatchConstraints"], "Expected key GeoMatchConstraints to exist in table")
	if struct["GeoMatchSetId"] then asserts.AssertResourceId(struct["GeoMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["GeoMatchConstraints"] then asserts.AssertGeoMatchConstraints(struct["GeoMatchConstraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoMatchSet[k], "GeoMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoMatchSet
-- <p>Contains one or more countries that AWS WAF will search for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSetId [ResourceId] <p>The <code>GeoMatchSetId</code> for an <code>GeoMatchSet</code>. You use <code>GeoMatchSetId</code> to get information about a <code>GeoMatchSet</code> (see <a>GeoMatchSet</a>), update a <code>GeoMatchSet</code> (see <a>UpdateGeoMatchSet</a>), insert a <code>GeoMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>GeoMatchSet</code> from AWS WAF (see <a>DeleteGeoMatchSet</a>).</p> <p> <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>
-- * GeoMatchConstraints [GeoMatchConstraints] <p>An array of <a>GeoMatchConstraint</a> objects, which contain the country that you want AWS WAF to search for.</p>
-- Required key: GeoMatchSetId
-- Required key: GeoMatchConstraints
-- @return GeoMatchSet structure as a key-value pair table
function M.GeoMatchSet(args)
	assert(args, "You must provide an argument table when creating GeoMatchSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSetId"] = args["GeoMatchSetId"],
		["Name"] = args["Name"],
		["GeoMatchConstraints"] = args["GeoMatchConstraints"],
	}
	asserts.AssertGeoMatchSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexMatchTuple = { ["RegexPatternSetId"] = true, ["TextTransformation"] = true, ["FieldToMatch"] = true, nil }

function asserts.AssertRegexMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	if struct["TextTransformation"] then asserts.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then asserts.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexMatchTuple[k], "RegexMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexMatchTuple
-- <p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p> <ul> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code> (see <a>GetRegexPatternSet</a>), update a <code>RegexPatternSet</code> (see <a>UpdateRegexPatternSet</a>), insert a <code>RegexPatternSet</code> into a <code>RegexMatchSet</code> or delete one from a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), and delete an <code>RegexPatternSet</code> from AWS WAF (see <a>DeleteRegexPatternSet</a>).</p> <p> <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>RegexPatternSet</code> before inspecting a request for a match.</p> <p>You can only specify a single type of TextTransformation.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for the <code>RegexPatternSet</code>.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- Required key: RegexPatternSetId
-- @return RegexMatchTuple structure as a key-value pair table
function M.RegexMatchTuple(args)
	assert(args, "You must provide an argument table when creating RegexMatchTuple")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertRegexMatchTuple(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SampledHTTPRequest = { ["Action"] = true, ["Timestamp"] = true, ["Request"] = true, ["RuleWithinRuleGroup"] = true, ["Weight"] = true, nil }

function asserts.AssertSampledHTTPRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SampledHTTPRequest to be of type 'table'")
	assert(struct["Request"], "Expected key Request to exist in table")
	assert(struct["Weight"], "Expected key Weight to exist in table")
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Request"] then asserts.AssertHTTPRequest(struct["Request"]) end
	if struct["RuleWithinRuleGroup"] then asserts.AssertResourceId(struct["RuleWithinRuleGroup"]) end
	if struct["Weight"] then asserts.AssertSampleWeight(struct["Weight"]) end
	for k,_ in pairs(struct) do
		assert(keys.SampledHTTPRequest[k], "SampledHTTPRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SampledHTTPRequest
-- <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one <code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [Action] <p>The action for the <code>Rule</code> that the request matched: <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
-- * Timestamp [Timestamp] <p>The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).</p>
-- * Request [HTTPRequest] <p>A complex type that contains detailed information about the request.</p>
-- * RuleWithinRuleGroup [ResourceId] <p>This value is returned if the <code>GetSampledRequests</code> request specifies the ID of a <code>RuleGroup</code> rather than the ID of an individual rule. <code>RuleWithinRuleGroup</code> is the rule within the specified <code>RuleGroup</code> that matched the request listed in the response.</p>
-- * Weight [SampleWeight] <p>A value that indicates how one result in the response relates proportionally to other results in the response. A result that has a weight of <code>2</code> represents roughly twice as many CloudFront web requests as a result that has a weight of <code>1</code>.</p>
-- Required key: Request
-- Required key: Weight
-- @return SampledHTTPRequest structure as a key-value pair table
function M.SampledHTTPRequest(args)
	assert(args, "You must provide an argument table when creating SampledHTTPRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Timestamp"] = args["Timestamp"],
		["Request"] = args["Request"],
		["RuleWithinRuleGroup"] = args["RuleWithinRuleGroup"],
		["Weight"] = args["Weight"],
	}
	asserts.AssertSampledHTTPRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPermissionPolicyRequest = { ["Policy"] = true, ["ResourceArn"] = true, nil }

function asserts.AssertPutPermissionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPermissionPolicyRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicyString(struct["Policy"]) end
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPermissionPolicyRequest[k], "PutPermissionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPermissionPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [PolicyString] <p>The policy to attach to the specified RuleGroup.</p>
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>
-- Required key: ResourceArn
-- Required key: Policy
-- @return PutPermissionPolicyRequest structure as a key-value pair table
function M.PutPermissionPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutPermissionPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertPutPermissionPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRegexMatchSetResponse = { ["ChangeToken"] = true, ["RegexMatchSet"] = true, nil }

function asserts.AssertCreateRegexMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRegexMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RegexMatchSet"] then asserts.AssertRegexMatchSet(struct["RegexMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRegexMatchSetResponse[k], "CreateRegexMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRegexMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * RegexMatchSet [RegexMatchSet] <p>A <a>RegexMatchSet</a> that contains no <code>RegexMatchTuple</code> objects.</p>
-- @return CreateRegexMatchSetResponse structure as a key-value pair table
function M.CreateRegexMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateRegexMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["RegexMatchSet"] = args["RegexMatchSet"],
	}
	asserts.AssertCreateRegexMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRuleResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuleResponse[k], "UpdateRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateRuleResponse structure as a key-value pair table
function M.UpdateRuleResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqlInjectionMatchTuple = { ["TextTransformation"] = true, ["FieldToMatch"] = true, nil }

function asserts.AssertSqlInjectionMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	if struct["TextTransformation"] then asserts.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then asserts.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlInjectionMatchTuple[k], "SqlInjectionMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchTuple
-- <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p>You can only specify a single type of TextTransformation.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for snippets of malicious SQL code.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- @return SqlInjectionMatchTuple structure as a key-value pair table
function M.SqlInjectionMatchTuple(args)
	assert(args, "You must provide an argument table when creating SqlInjectionMatchTuple")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertSqlInjectionMatchTuple(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRateBasedRuleResponse = { ["Rule"] = true, nil }

function asserts.AssertGetRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleResponse to be of type 'table'")
	if struct["Rule"] then asserts.AssertRateBasedRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRateBasedRuleResponse[k], "GetRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rule [RateBasedRule] <p>Information about the <a>RateBasedRule</a> that you specified in the <code>GetRateBasedRule</code> request.</p>
-- @return GetRateBasedRuleResponse structure as a key-value pair table
function M.GetRateBasedRuleResponse(args)
	assert(args, "You must provide an argument table when creating GetRateBasedRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rule"] = args["Rule"],
	}
	asserts.AssertGetRateBasedRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSqlInjectionMatchSetRequest = { ["ChangeToken"] = true, ["Updates"] = true, ["SqlInjectionMatchSetId"] = true, nil }

function asserts.AssertUpdateSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertSqlInjectionMatchSetUpdates(struct["Updates"]) end
	if struct["SqlInjectionMatchSetId"] then asserts.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSqlInjectionMatchSetRequest[k], "UpdateSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSqlInjectionMatchSetRequest
-- <p>A request to update a <a>SqlInjectionMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [SqlInjectionMatchSetUpdates] <p>An array of <code>SqlInjectionMatchSetUpdate</code> objects that you want to insert into or delete from a <a>SqlInjectionMatchSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>SqlInjectionMatchSetUpdate</a>: Contains <code>Action</code> and <code>SqlInjectionMatchTuple</code> </p> </li> <li> <p> <a>SqlInjectionMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- * SqlInjectionMatchSetId [ResourceId] <p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update. <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
-- Required key: SqlInjectionMatchSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateSqlInjectionMatchSetRequest structure as a key-value pair table
function M.UpdateSqlInjectionMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSqlInjectionMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertUpdateSqlInjectionMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexPatternSet = { ["RegexPatternSetId"] = true, ["RegexPatternStrings"] = true, ["Name"] = true, nil }

function asserts.AssertRegexPatternSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexPatternSet to be of type 'table'")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	assert(struct["RegexPatternStrings"], "Expected key RegexPatternStrings to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	if struct["RegexPatternStrings"] then asserts.AssertRegexPatternStrings(struct["RegexPatternStrings"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexPatternSet[k], "RegexPatternSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexPatternSet
-- <p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The identifier for the <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>, update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p> <p> <code>RegexMatchSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- * RegexPatternStrings [RegexPatternStrings] <p>Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>
-- Required key: RegexPatternSetId
-- Required key: RegexPatternStrings
-- @return RegexPatternSet structure as a key-value pair table
function M.RegexPatternSet(args)
	assert(args, "You must provide an argument table when creating RegexPatternSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
		["RegexPatternStrings"] = args["RegexPatternStrings"],
		["Name"] = args["Name"],
	}
	asserts.AssertRegexPatternSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateByteMatchSetResponse = { ["ChangeToken"] = true, ["ByteMatchSet"] = true, nil }

function asserts.AssertCreateByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["ByteMatchSet"] then asserts.AssertByteMatchSet(struct["ByteMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateByteMatchSetResponse[k], "CreateByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateByteMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateByteMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * ByteMatchSet [ByteMatchSet] <p>A <a>ByteMatchSet</a> that contains no <code>ByteMatchTuple</code> objects.</p>
-- @return CreateByteMatchSetResponse structure as a key-value pair table
function M.CreateByteMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateByteMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["ByteMatchSet"] = args["ByteMatchSet"],
	}
	asserts.AssertCreateByteMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetByteMatchSetResponse = { ["ByteMatchSet"] = true, nil }

function asserts.AssertGetByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetByteMatchSetResponse to be of type 'table'")
	if struct["ByteMatchSet"] then asserts.AssertByteMatchSet(struct["ByteMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetByteMatchSetResponse[k], "GetByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetByteMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSet [ByteMatchSet] <p>Information about the <a>ByteMatchSet</a> that you specified in the <code>GetByteMatchSet</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>ByteMatchSet</a>: Contains <code>ByteMatchSetId</code>, <code>ByteMatchTuples</code>, and <code>Name</code> </p> </li> <li> <p> <code>ByteMatchTuples</code>: Contains an array of <a>ByteMatchTuple</a> objects. Each <code>ByteMatchTuple</code> object contains <a>FieldToMatch</a>, <code>PositionalConstraint</code>, <code>TargetString</code>, and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- @return GetByteMatchSetResponse structure as a key-value pair table
function M.GetByteMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating GetByteMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSet"] = args["ByteMatchSet"],
	}
	asserts.AssertGetByteMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChangeTokenResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertGetChangeTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChangeTokenResponse[k], "GetChangeTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used in the request. Use this value in a <code>GetChangeTokenStatus</code> request to get the current status of the request. </p>
-- @return GetChangeTokenResponse structure as a key-value pair table
function M.GetChangeTokenResponse(args)
	assert(args, "You must provide an argument table when creating GetChangeTokenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertGetChangeTokenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleGroupSummary = { ["Name"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertRuleGroupSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleGroupSummary to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleGroupSummary[k], "RuleGroupSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleGroupSummary
-- <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceName] <p>A friendly name or description of the <a>RuleGroup</a>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
-- * RuleGroupId [ResourceId] <p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p> <p> <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
-- Required key: RuleGroupId
-- Required key: Name
-- @return RuleGroupSummary structure as a key-value pair table
function M.RuleGroupSummary(args)
	assert(args, "You must provide an argument table when creating RuleGroupSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertRuleGroupSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePermissionPolicyRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertDeletePermissionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePermissionPolicyRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePermissionPolicyRequest[k], "DeletePermissionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePermissionPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p> <p>The user making the request must be the owner of the RuleGroup.</p>
-- Required key: ResourceArn
-- @return DeletePermissionPolicyRequest structure as a key-value pair table
function M.DeletePermissionPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeletePermissionPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertDeletePermissionPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGeoMatchSetResponse = { ["GeoMatchSet"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateGeoMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGeoMatchSetResponse to be of type 'table'")
	if struct["GeoMatchSet"] then asserts.AssertGeoMatchSet(struct["GeoMatchSet"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGeoMatchSetResponse[k], "CreateGeoMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGeoMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSet [GeoMatchSet] <p>The <a>GeoMatchSet</a> returned in the <code>CreateGeoMatchSet</code> response. The <code>GeoMatchSet</code> contains no <code>GeoMatchConstraints</code>.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateGeoMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return CreateGeoMatchSetResponse structure as a key-value pair table
function M.CreateGeoMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateGeoMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSet"] = args["GeoMatchSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateGeoMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebACL = { ["DefaultAction"] = true, ["Rules"] = true, ["MetricName"] = true, ["WebACLId"] = true, ["Name"] = true, nil }

function asserts.AssertWebACL(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACL to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["DefaultAction"], "Expected key DefaultAction to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["DefaultAction"] then asserts.AssertWafAction(struct["DefaultAction"]) end
	if struct["Rules"] then asserts.AssertActivatedRules(struct["Rules"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebACL[k], "WebACL contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACL
-- <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a <code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultAction [WafAction] <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. The action is specified by the <a>WafAction</a> object.</p>
-- * Rules [ActivatedRules] <p>An array that contains the action for each <code>Rule</code> in a <code>WebACL</code>, the priority of the <code>Rule</code>, and the ID of the <code>Rule</code>.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>WebACL</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change <code>MetricName</code> after you create the <code>WebACL</code>.</p>
-- * WebACLId [ResourceId] <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> (see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF (see <a>DeleteWebACL</a>).</p> <p> <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <code>WebACL</code>. You can't change the name of a <code>WebACL</code> after you create it.</p>
-- Required key: WebACLId
-- Required key: DefaultAction
-- Required key: Rules
-- @return WebACL structure as a key-value pair table
function M.WebACL(args)
	assert(args, "You must provide an argument table when creating WebACL")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultAction"] = args["DefaultAction"],
		["Rules"] = args["Rules"],
		["MetricName"] = args["MetricName"],
		["WebACLId"] = args["WebACLId"],
		["Name"] = args["Name"],
	}
	asserts.AssertWebACL(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListWebACLsResponse = { ["NextMarker"] = true, ["WebACLs"] = true, nil }

function asserts.AssertListWebACLsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebACLsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["WebACLs"] then asserts.AssertWebACLSummaries(struct["WebACLs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWebACLsResponse[k], "ListWebACLsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebACLsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>WebACL</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>WebACL</code> objects, submit another <code>ListWebACLs</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * WebACLs [WebACLSummaries] <p>An array of <a>WebACLSummary</a> objects.</p>
-- @return ListWebACLsResponse structure as a key-value pair table
function M.ListWebACLsResponse(args)
	assert(args, "You must provide an argument table when creating ListWebACLsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["WebACLs"] = args["WebACLs"],
	}
	asserts.AssertListWebACLsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleGroupResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRuleGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleGroupResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleGroupResponse[k], "DeleteRuleGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRuleGroup</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteRuleGroupResponse structure as a key-value pair table
function M.DeleteRuleGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRuleGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRuleGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WafOverrideAction = { ["Type"] = true, nil }

function asserts.AssertWafOverrideAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WafOverrideAction to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertWafOverrideActionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.WafOverrideAction[k], "WafOverrideAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WafOverrideAction
-- <p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [WafOverrideActionType] <p> <code>COUNT</code> overrides the action specified by the individual rule within a <code>RuleGroup</code> . If set to <code>NONE</code>, the rule's action will take place.</p>
-- Required key: Type
-- @return WafOverrideAction structure as a key-value pair table
function M.WafOverrideAction(args)
	assert(args, "You must provide an argument table when creating WafOverrideAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
	}
	asserts.AssertWafOverrideAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoggingConfigurationRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertDeleteLoggingConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggingConfigurationRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoggingConfigurationRequest[k], "DeleteLoggingConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggingConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
-- Required key: ResourceArn
-- @return DeleteLoggingConfigurationRequest structure as a key-value pair table
function M.DeleteLoggingConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLoggingConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertDeleteLoggingConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoggingConfiguration = { ["ResourceArn"] = true, ["RedactedFields"] = true, ["LogDestinationConfigs"] = true, nil }

function asserts.AssertLoggingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingConfiguration to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["LogDestinationConfigs"], "Expected key LogDestinationConfigs to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["RedactedFields"] then asserts.AssertRedactedFields(struct["RedactedFields"]) end
	if struct["LogDestinationConfigs"] then asserts.AssertLogDestinationConfigs(struct["LogDestinationConfigs"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingConfiguration[k], "LoggingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingConfiguration
-- <p>The Amazon Kinesis Data Firehose delivery streams, <code>RedactedFields</code> information, and the web ACL Amazon Resource Name (ARN).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with <code>LogDestinationConfigs</code>.</p>
-- * RedactedFields [RedactedFields] <p>The parts of the request that you want redacted from the logs. For example, if you redact the cookie field, the cookie field in the delivery stream will be <code>xxx</code>. </p>
-- * LogDestinationConfigs [LogDestinationConfigs] <p>An array of Amazon Kinesis Data Firehose delivery stream ARNs.</p>
-- Required key: ResourceArn
-- Required key: LogDestinationConfigs
-- @return LoggingConfiguration structure as a key-value pair table
function M.LoggingConfiguration(args)
	assert(args, "You must provide an argument table when creating LoggingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["RedactedFields"] = args["RedactedFields"],
		["LogDestinationConfigs"] = args["LogDestinationConfigs"],
	}
	asserts.AssertLoggingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSqlInjectionMatchSetResponse = { ["ChangeToken"] = true, ["SqlInjectionMatchSet"] = true, nil }

function asserts.AssertCreateSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["SqlInjectionMatchSet"] then asserts.AssertSqlInjectionMatchSet(struct["SqlInjectionMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSqlInjectionMatchSetResponse[k], "CreateSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSqlInjectionMatchSetResponse
-- <p>The response to a <code>CreateSqlInjectionMatchSet</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateSqlInjectionMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * SqlInjectionMatchSet [SqlInjectionMatchSet] <p>A <a>SqlInjectionMatchSet</a>.</p>
-- @return CreateSqlInjectionMatchSetResponse structure as a key-value pair table
function M.CreateSqlInjectionMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateSqlInjectionMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["SqlInjectionMatchSet"] = args["SqlInjectionMatchSet"],
	}
	asserts.AssertCreateSqlInjectionMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSizeConstraintSetResponse = { ["SizeConstraintSet"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSizeConstraintSetResponse to be of type 'table'")
	if struct["SizeConstraintSet"] then asserts.AssertSizeConstraintSet(struct["SizeConstraintSet"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSizeConstraintSetResponse[k], "CreateSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSizeConstraintSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSet [SizeConstraintSet] <p>A <a>SizeConstraintSet</a> that contains no <code>SizeConstraint</code> objects.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateSizeConstraintSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return CreateSizeConstraintSetResponse structure as a key-value pair table
function M.CreateSizeConstraintSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateSizeConstraintSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSet"] = args["SizeConstraintSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateSizeConstraintSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSampledRequestsRequest = { ["TimeWindow"] = true, ["WebAclId"] = true, ["MaxItems"] = true, ["RuleId"] = true, nil }

function asserts.AssertGetSampledRequestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSampledRequestsRequest to be of type 'table'")
	assert(struct["WebAclId"], "Expected key WebAclId to exist in table")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["TimeWindow"], "Expected key TimeWindow to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TimeWindow"] then asserts.AssertTimeWindow(struct["TimeWindow"]) end
	if struct["WebAclId"] then asserts.AssertResourceId(struct["WebAclId"]) end
	if struct["MaxItems"] then asserts.AssertGetSampledRequestsMaxItems(struct["MaxItems"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSampledRequestsRequest[k], "GetSampledRequestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSampledRequestsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeWindow [TimeWindow] <p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a sample of requests. Specify the date and time in the following format: <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
-- * WebAclId [ResourceId] <p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
-- * MaxItems [GetSampledRequestsMaxItems] <p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> returns information about all of them. </p>
-- * RuleId [ResourceId] <p> <code>RuleId</code> is one of three values:</p> <ul> <li> <p>The <code>RuleId</code> of the <code>Rule</code> or the <code>RuleGroupId</code> of the <code>RuleGroup</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p> </li> <li> <p> <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that didn't match any of the rules in the specified <code>WebACL</code>.</p> </li> </ul>
-- Required key: WebAclId
-- Required key: RuleId
-- Required key: TimeWindow
-- Required key: MaxItems
-- @return GetSampledRequestsRequest structure as a key-value pair table
function M.GetSampledRequestsRequest(args)
	assert(args, "You must provide an argument table when creating GetSampledRequestsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeWindow"] = args["TimeWindow"],
		["WebAclId"] = args["WebAclId"],
		["MaxItems"] = args["MaxItems"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetSampledRequestsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRateBasedRuleManagedKeysResponse = { ["ManagedKeys"] = true, ["NextMarker"] = true, nil }

function asserts.AssertGetRateBasedRuleManagedKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleManagedKeysResponse to be of type 'table'")
	if struct["ManagedKeys"] then asserts.AssertManagedKeys(struct["ManagedKeys"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRateBasedRuleManagedKeysResponse[k], "GetRateBasedRuleManagedKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleManagedKeysResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManagedKeys [ManagedKeys] <p>An array of IP addresses that currently are blocked by the specified <a>RateBasedRule</a>. </p>
-- * NextMarker [NextMarker] <p>A null value and not currently used.</p>
-- @return GetRateBasedRuleManagedKeysResponse structure as a key-value pair table
function M.GetRateBasedRuleManagedKeysResponse(args)
	assert(args, "You must provide an argument table when creating GetRateBasedRuleManagedKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManagedKeys"] = args["ManagedKeys"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertGetRateBasedRuleManagedKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRuleRequest = { ["RuleId"] = true, nil }

function asserts.AssertGetRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRuleRequest[k], "GetRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: RuleId
-- @return GetRuleRequest structure as a key-value pair table
function M.GetRuleRequest(args)
	assert(args, "You must provide an argument table when creating GetRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoMatchSetUpdate = { ["Action"] = true, ["GeoMatchConstraint"] = true, nil }

function asserts.AssertGeoMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["GeoMatchConstraint"], "Expected key GeoMatchConstraint to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["GeoMatchConstraint"] then asserts.AssertGeoMatchConstraint(struct["GeoMatchConstraint"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoMatchSetUpdate[k], "GeoMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoMatchSetUpdate
-- <p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert or delete a country with <a>UpdateGeoMatchSet</a>.</p>
-- * GeoMatchConstraint [GeoMatchConstraint] <p>The country from which web requests originate that you want AWS WAF to search for.</p>
-- Required key: Action
-- Required key: GeoMatchConstraint
-- @return GeoMatchSetUpdate structure as a key-value pair table
function M.GeoMatchSetUpdate(args)
	assert(args, "You must provide an argument table when creating GeoMatchSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["GeoMatchConstraint"] = args["GeoMatchConstraint"],
	}
	asserts.AssertGeoMatchSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateXssMatchSetRequest = { ["ChangeToken"] = true, ["XssMatchSetId"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSetId"] then asserts.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Updates"] then asserts.AssertXssMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateXssMatchSetRequest[k], "UpdateXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateXssMatchSetRequest
-- <p>A request to update an <a>XssMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * XssMatchSetId [ResourceId] <p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update. <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
-- * Updates [XssMatchSetUpdates] <p>An array of <code>XssMatchSetUpdate</code> objects that you want to insert into or delete from a <a>XssMatchSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>XssMatchSetUpdate</a>: Contains <code>Action</code> and <code>XssMatchTuple</code> </p> </li> <li> <p> <a>XssMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- Required key: XssMatchSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateXssMatchSetRequest structure as a key-value pair table
function M.UpdateXssMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateXssMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateXssMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateByteMatchSetRequest = { ["ByteMatchSetId"] = true, ["ChangeToken"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ByteMatchSetId"] then asserts.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertByteMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateByteMatchSetRequest[k], "UpdateByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateByteMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSetId [ResourceId] <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [ByteMatchSetUpdates] <p>An array of <code>ByteMatchSetUpdate</code> objects that you want to insert into or delete from a <a>ByteMatchSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>ByteMatchSetUpdate</a>: Contains <code>Action</code> and <code>ByteMatchTuple</code> </p> </li> <li> <p> <a>ByteMatchTuple</a>: Contains <code>FieldToMatch</code>, <code>PositionalConstraint</code>, <code>TargetString</code>, and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- Required key: ByteMatchSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateByteMatchSetRequest structure as a key-value pair table
function M.UpdateByteMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateByteMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateByteMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLoggingConfigurationResponse = { nil }

function asserts.AssertDeleteLoggingConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggingConfigurationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoggingConfigurationResponse[k], "DeleteLoggingConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggingConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLoggingConfigurationResponse structure as a key-value pair table
function M.DeleteLoggingConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLoggingConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLoggingConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetWebACLRequest = { ["WebACLId"] = true, nil }

function asserts.AssertGetWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetWebACLRequest[k], "GetWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACLId [ResourceId] <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
-- Required key: WebACLId
-- @return GetWebACLRequest structure as a key-value pair table
function M.GetWebACLRequest(args)
	assert(args, "You must provide an argument table when creating GetWebACLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertGetWebACLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SizeConstraintSetSummary = { ["SizeConstraintSetId"] = true, ["Name"] = true, nil }

function asserts.AssertSizeConstraintSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSetSummary to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SizeConstraintSetId"] then asserts.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SizeConstraintSetSummary[k], "SizeConstraintSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSetSummary
-- <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSetId [ResourceId] <p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a <code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> (see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF (see <a>DeleteSizeConstraintSet</a>).</p> <p> <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
-- * Name [ResourceName] <p>The name of the <code>SizeConstraintSet</code>, if any.</p>
-- Required key: SizeConstraintSetId
-- Required key: Name
-- @return SizeConstraintSetSummary structure as a key-value pair table
function M.SizeConstraintSetSummary(args)
	assert(args, "You must provide an argument table when creating SizeConstraintSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertSizeConstraintSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPSetSummary = { ["IPSetId"] = true, ["Name"] = true, nil }

function asserts.AssertIPSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetSummary to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["IPSetId"] then asserts.AssertResourceId(struct["IPSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPSetSummary[k], "IPSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetSummary
-- <p>Contains the identifier and the name of the <code>IPSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> for an <a>IPSet</a>. You can use <code>IPSetId</code> in a <a>GetIPSet</a> request to get detailed information about an <a>IPSet</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>
-- Required key: IPSetId
-- Required key: Name
-- @return IPSetSummary structure as a key-value pair table
function M.IPSetSummary(args)
	assert(args, "You must provide an argument table when creating IPSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPSetId"] = args["IPSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertIPSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIPSetResponse = { ["IPSet"] = true, nil }

function asserts.AssertGetIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetResponse to be of type 'table'")
	if struct["IPSet"] then asserts.AssertIPSet(struct["IPSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIPSetResponse[k], "GetIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSet [IPSet] <p>Information about the <a>IPSet</a> that you specified in the <code>GetIPSet</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>IPSet</a>: Contains <code>IPSetDescriptors</code>, <code>IPSetId</code>, and <code>Name</code> </p> </li> <li> <p> <code>IPSetDescriptors</code>: Contains an array of <a>IPSetDescriptor</a> objects. Each <code>IPSetDescriptor</code> object contains <code>Type</code> and <code>Value</code> </p> </li> </ul>
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
		["IPSet"] = args["IPSet"],
	}
	asserts.AssertGetIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetWebACLResponse = { ["WebACL"] = true, nil }

function asserts.AssertGetWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLResponse to be of type 'table'")
	if struct["WebACL"] then asserts.AssertWebACL(struct["WebACL"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetWebACLResponse[k], "GetWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACL [WebACL] <p>Information about the <a>WebACL</a> that you specified in the <code>GetWebACL</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>WebACL</a>: Contains <code>DefaultAction</code>, <code>MetricName</code>, <code>Name</code>, an array of <code>Rule</code> objects, and <code>WebACLId</code> </p> </li> <li> <p> <code>DefaultAction</code> (Data type is <a>WafAction</a>): Contains <code>Type</code> </p> </li> <li> <p> <code>Rules</code>: Contains an array of <code>ActivatedRule</code> objects, which contain <code>Action</code>, <code>Priority</code>, and <code>RuleId</code> </p> </li> <li> <p> <code>Action</code>: Contains <code>Type</code> </p> </li> </ul>
-- @return GetWebACLResponse structure as a key-value pair table
function M.GetWebACLResponse(args)
	assert(args, "You must provide an argument table when creating GetWebACLResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebACL"] = args["WebACL"],
	}
	asserts.AssertGetWebACLResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSqlInjectionMatchSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListSqlInjectionMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSqlInjectionMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSqlInjectionMatchSetsRequest[k], "ListSqlInjectionMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSqlInjectionMatchSetsRequest
-- <p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more <code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
-- @return ListSqlInjectionMatchSetsRequest structure as a key-value pair table
function M.ListSqlInjectionMatchSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListSqlInjectionMatchSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSqlInjectionMatchSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGeoMatchSetRequest = { ["ChangeToken"] = true, ["GeoMatchSetId"] = true, nil }

function asserts.AssertDeleteGeoMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGeoMatchSetRequest to be of type 'table'")
	assert(struct["GeoMatchSetId"], "Expected key GeoMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["GeoMatchSetId"] then asserts.AssertResourceId(struct["GeoMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGeoMatchSetRequest[k], "DeleteGeoMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGeoMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * GeoMatchSetId [ResourceId] <p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>
-- Required key: GeoMatchSetId
-- Required key: ChangeToken
-- @return DeleteGeoMatchSetRequest structure as a key-value pair table
function M.DeleteGeoMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGeoMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["GeoMatchSetId"] = args["GeoMatchSetId"],
	}
	asserts.AssertDeleteGeoMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRegexPatternSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateRegexPatternSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRegexPatternSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRegexPatternSetResponse[k], "UpdateRegexPatternSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRegexPatternSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexPatternSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateRegexPatternSetResponse structure as a key-value pair table
function M.UpdateRegexPatternSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRegexPatternSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRegexPatternSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteXssMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteXssMatchSetResponse[k], "DeleteXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteXssMatchSetResponse
-- <p>The response to a request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteXssMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteXssMatchSetResponse structure as a key-value pair table
function M.DeleteXssMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteXssMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteXssMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRateBasedRuleRequest = { ["ChangeToken"] = true, ["RuleId"] = true, nil }

function asserts.AssertDeleteRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRateBasedRuleRequest[k], "DeleteRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRateBasedRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
-- Required key: RuleId
-- Required key: ChangeToken
-- @return DeleteRateBasedRuleRequest structure as a key-value pair table
function M.DeleteRateBasedRuleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRateBasedRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertDeleteRateBasedRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGeoMatchSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateGeoMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGeoMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGeoMatchSetRequest[k], "CreateGeoMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGeoMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateGeoMatchSetRequest structure as a key-value pair table
function M.CreateGeoMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateGeoMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateGeoMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGeoMatchSetRequest = { ["ChangeToken"] = true, ["GeoMatchSetId"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateGeoMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGeoMatchSetRequest to be of type 'table'")
	assert(struct["GeoMatchSetId"], "Expected key GeoMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["GeoMatchSetId"] then asserts.AssertResourceId(struct["GeoMatchSetId"]) end
	if struct["Updates"] then asserts.AssertGeoMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGeoMatchSetRequest[k], "UpdateGeoMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGeoMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * GeoMatchSetId [ResourceId] <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>
-- * Updates [GeoMatchSetUpdates] <p>An array of <code>GeoMatchSetUpdate</code> objects that you want to insert into or delete from an <a>GeoMatchSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>GeoMatchSetUpdate</a>: Contains <code>Action</code> and <code>GeoMatchConstraint</code> </p> </li> <li> <p> <a>GeoMatchConstraint</a>: Contains <code>Type</code> and <code>Value</code> </p> <p>You can have only one <code>Type</code> and <code>Value</code> per <code>GeoMatchConstraint</code>. To add multiple countries, include multiple <code>GeoMatchSetUpdate</code> objects in your request.</p> </li> </ul>
-- Required key: GeoMatchSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateGeoMatchSetRequest structure as a key-value pair table
function M.UpdateGeoMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGeoMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["GeoMatchSetId"] = args["GeoMatchSetId"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateGeoMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIPSetRequest = { ["IPSetId"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertDeleteIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["IPSetId"] then asserts.AssertResourceId(struct["IPSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIPSetRequest[k], "DeleteIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- Required key: IPSetId
-- Required key: ChangeToken
-- @return DeleteIPSetRequest structure as a key-value pair table
function M.DeleteIPSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPSetId"] = args["IPSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateWebACLResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebACLResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateWebACLResponse[k], "UpdateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateWebACL</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateWebACLResponse structure as a key-value pair table
function M.UpdateWebACLResponse(args)
	assert(args, "You must provide an argument table when creating UpdateWebACLResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateWebACLResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSizeConstraintSetRequest = { ["SizeConstraintSetId"] = true, ["ChangeToken"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["SizeConstraintSetId"] then asserts.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertSizeConstraintSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSizeConstraintSetRequest[k], "UpdateSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSizeConstraintSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSetId [ResourceId] <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [SizeConstraintSetUpdates] <p>An array of <code>SizeConstraintSetUpdate</code> objects that you want to insert into or delete from a <a>SizeConstraintSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>SizeConstraintSetUpdate</a>: Contains <code>Action</code> and <code>SizeConstraint</code> </p> </li> <li> <p> <a>SizeConstraint</a>: Contains <code>FieldToMatch</code>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, and <code>Size</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- Required key: SizeConstraintSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateSizeConstraintSetRequest structure as a key-value pair table
function M.UpdateSizeConstraintSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSizeConstraintSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateSizeConstraintSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRuleGroupResponse = { ["RuleGroup"] = true, nil }

function asserts.AssertGetRuleGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleGroupResponse to be of type 'table'")
	if struct["RuleGroup"] then asserts.AssertRuleGroup(struct["RuleGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRuleGroupResponse[k], "GetRuleGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleGroup [RuleGroup] <p>Information about the <a>RuleGroup</a> that you specified in the <code>GetRuleGroup</code> request. </p>
-- @return GetRuleGroupResponse structure as a key-value pair table
function M.GetRuleGroupResponse(args)
	assert(args, "You must provide an argument table when creating GetRuleGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleGroup"] = args["RuleGroup"],
	}
	asserts.AssertGetRuleGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetXssMatchSetRequest = { ["XssMatchSetId"] = true, nil }

function asserts.AssertGetXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	if struct["XssMatchSetId"] then asserts.AssertResourceId(struct["XssMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetXssMatchSetRequest[k], "GetXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetXssMatchSetRequest
-- <p>A request to get an <a>XssMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * XssMatchSetId [ResourceId] <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
-- Required key: XssMatchSetId
-- @return GetXssMatchSetRequest structure as a key-value pair table
function M.GetXssMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating GetXssMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["XssMatchSetId"] = args["XssMatchSetId"],
	}
	asserts.AssertGetXssMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRulesRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesRequest[k], "ListRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>. For the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>Rules</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more <code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
-- @return ListRulesRequest structure as a key-value pair table
function M.ListRulesRequest(args)
	assert(args, "You must provide an argument table when creating ListRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGeoMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteGeoMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGeoMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGeoMatchSetResponse[k], "DeleteGeoMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGeoMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteGeoMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteGeoMatchSetResponse structure as a key-value pair table
function M.DeleteGeoMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteGeoMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteGeoMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteWebACLResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebACLResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteWebACLResponse[k], "DeleteWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteWebACL</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteWebACLResponse structure as a key-value pair table
function M.DeleteWebACLResponse(args)
	assert(args, "You must provide an argument table when creating DeleteWebACLResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteWebACLResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRuleGroupRequest = { ["RuleGroupId"] = true, nil }

function asserts.AssertGetRuleGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleGroupRequest to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRuleGroupRequest[k], "GetRuleGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleGroupId [ResourceId] <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
-- Required key: RuleGroupId
-- @return GetRuleGroupRequest structure as a key-value pair table
function M.GetRuleGroupRequest(args)
	assert(args, "You must provide an argument table when creating GetRuleGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertGetRuleGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRegexMatchSetResponse = { ["RegexMatchSet"] = true, nil }

function asserts.AssertGetRegexMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegexMatchSetResponse to be of type 'table'")
	if struct["RegexMatchSet"] then asserts.AssertRegexMatchSet(struct["RegexMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegexMatchSetResponse[k], "GetRegexMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegexMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSet [RegexMatchSet] <p>Information about the <a>RegexMatchSet</a> that you specified in the <code>GetRegexMatchSet</code> request. For more information, see <a>RegexMatchTuple</a>.</p>
-- @return GetRegexMatchSetResponse structure as a key-value pair table
function M.GetRegexMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating GetRegexMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSet"] = args["RegexMatchSet"],
	}
	asserts.AssertGetRegexMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ByteMatchSetUpdate = { ["Action"] = true, ["ByteMatchTuple"] = true, nil }

function asserts.AssertByteMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ByteMatchTuple"], "Expected key ByteMatchTuple to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["ByteMatchTuple"] then asserts.AssertByteMatchTuple(struct["ByteMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(keys.ByteMatchSetUpdate[k], "ByteMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSetUpdate
-- <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a <a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert or delete a <a>ByteMatchTuple</a>.</p>
-- * ByteMatchTuple [ByteMatchTuple] <p>Information about the part of a web request that you want AWS WAF to inspect and the value that you want AWS WAF to search for. If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>ByteMatchTuple</code> values must exactly match the values in the <code>ByteMatchTuple</code> that you want to delete from the <code>ByteMatchSet</code>.</p>
-- Required key: Action
-- Required key: ByteMatchTuple
-- @return ByteMatchSetUpdate structure as a key-value pair table
function M.ByteMatchSetUpdate(args)
	assert(args, "You must provide an argument table when creating ByteMatchSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["ByteMatchTuple"] = args["ByteMatchTuple"],
	}
	asserts.AssertByteMatchSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGeoMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateGeoMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGeoMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGeoMatchSetResponse[k], "UpdateGeoMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGeoMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateGeoMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateGeoMatchSetResponse structure as a key-value pair table
function M.UpdateGeoMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGeoMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateGeoMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleRequest = { ["ChangeToken"] = true, ["Name"] = true, ["MetricName"] = true, nil }

function asserts.AssertCreateRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleRequest[k], "CreateRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>Rule</code>.</p>
-- Required key: Name
-- Required key: MetricName
-- Required key: ChangeToken
-- @return CreateRuleRequest structure as a key-value pair table
function M.CreateRuleRequest(args)
	assert(args, "You must provide an argument table when creating CreateRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteXssMatchSetRequest = { ["ChangeToken"] = true, ["XssMatchSetId"] = true, nil }

function asserts.AssertDeleteXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSetId"] then asserts.AssertResourceId(struct["XssMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteXssMatchSetRequest[k], "DeleteXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteXssMatchSetRequest
-- <p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * XssMatchSetId [ResourceId] <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete. <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
-- Required key: XssMatchSetId
-- Required key: ChangeToken
-- @return DeleteXssMatchSetRequest structure as a key-value pair table
function M.DeleteXssMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteXssMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSetId"] = args["XssMatchSetId"],
	}
	asserts.AssertDeleteXssMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoMatchSetSummary = { ["GeoMatchSetId"] = true, ["Name"] = true, nil }

function asserts.AssertGeoMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoMatchSetSummary to be of type 'table'")
	assert(struct["GeoMatchSetId"], "Expected key GeoMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["GeoMatchSetId"] then asserts.AssertResourceId(struct["GeoMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoMatchSetSummary[k], "GeoMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoMatchSetSummary
-- <p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSetId [ResourceId] <p>The <code>GeoMatchSetId</code> for an <a>GeoMatchSet</a>. You can use <code>GeoMatchSetId</code> in a <a>GetGeoMatchSet</a> request to get detailed information about an <a>GeoMatchSet</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>
-- Required key: GeoMatchSetId
-- Required key: Name
-- @return GeoMatchSetSummary structure as a key-value pair table
function M.GeoMatchSetSummary(args)
	assert(args, "You must provide an argument table when creating GeoMatchSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSetId"] = args["GeoMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertGeoMatchSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRuleGroupRequest = { ["ChangeToken"] = true, ["Updates"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertUpdateRuleGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleGroupRequest to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertRuleGroupUpdates(struct["Updates"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuleGroupRequest[k], "UpdateRuleGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [RuleGroupUpdates] <p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a <a>RuleGroup</a>.</p> <p>You can only insert <code>REGULAR</code> rules into a rule group.</p> <p> <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>. For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
-- * RuleGroupId [ResourceId] <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
-- Required key: RuleGroupId
-- Required key: Updates
-- Required key: ChangeToken
-- @return UpdateRuleGroupRequest structure as a key-value pair table
function M.UpdateRuleGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRuleGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertUpdateRuleGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateXssMatchSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateXssMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateXssMatchSetRequest[k], "CreateXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateXssMatchSetRequest
-- <p>A request to create an <a>XssMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code> after you create the <code>XssMatchSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateXssMatchSetRequest structure as a key-value pair table
function M.CreateXssMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateXssMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateXssMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateByteMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateByteMatchSetResponse[k], "UpdateByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateByteMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateByteMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateByteMatchSetResponse structure as a key-value pair table
function M.UpdateByteMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateByteMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateByteMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLoggingConfigurationRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertGetLoggingConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingConfigurationRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingConfigurationRequest[k], "GetLoggingConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
-- Required key: ResourceArn
-- @return GetLoggingConfigurationRequest structure as a key-value pair table
function M.GetLoggingConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetLoggingConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertGetLoggingConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteByteMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteByteMatchSetResponse[k], "DeleteByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteByteMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteByteMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteByteMatchSetResponse structure as a key-value pair table
function M.DeleteByteMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteByteMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteByteMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexMatchSet = { ["RegexMatchSetId"] = true, ["Name"] = true, ["RegexMatchTuples"] = true, nil }

function asserts.AssertRegexMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexMatchSet to be of type 'table'")
	if struct["RegexMatchSetId"] then asserts.AssertResourceId(struct["RegexMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RegexMatchTuples"] then asserts.AssertRegexMatchTuples(struct["RegexMatchTuples"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexMatchSet[k], "RegexMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexMatchSet
-- <p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and <code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p> <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one <code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSetId [ResourceId] <p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a <code>RegexMatchSet</code> (see <a>GetRegexMatchSet</a>), update a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), insert a <code>RegexMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>RegexMatchSet</code> from AWS WAF (see <a>DeleteRegexMatchSet</a>).</p> <p> <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>
-- * RegexMatchTuples [RegexMatchTuples] <p>Contains an array of <a>RegexMatchTuple</a> objects. Each <code>RegexMatchTuple</code> object contains: </p> <ul> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>.</p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul>
-- @return RegexMatchSet structure as a key-value pair table
function M.RegexMatchSet(args)
	assert(args, "You must provide an argument table when creating RegexMatchSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSetId"] = args["RegexMatchSetId"],
		["Name"] = args["Name"],
		["RegexMatchTuples"] = args["RegexMatchTuples"],
	}
	asserts.AssertRegexMatchSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebACLSummary = { ["WebACLId"] = true, ["Name"] = true, nil }

function asserts.AssertWebACLSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACLSummary to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebACLSummary[k], "WebACLSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACLSummary
-- <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACLId [ResourceId] <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> (see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF (see <a>DeleteWebACL</a>).</p> <p> <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>
-- Required key: WebACLId
-- Required key: Name
-- @return WebACLSummary structure as a key-value pair table
function M.WebACLSummary(args)
	assert(args, "You must provide an argument table when creating WebACLSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebACLId"] = args["WebACLId"],
		["Name"] = args["Name"],
	}
	asserts.AssertWebACLSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRateBasedRuleManagedKeysRequest = { ["NextMarker"] = true, ["RuleId"] = true, nil }

function asserts.AssertGetRateBasedRuleManagedKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleManagedKeysRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRateBasedRuleManagedKeysRequest[k], "GetRateBasedRuleManagedKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleManagedKeysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>A null value and not currently used. Do not include this in your request.</p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
-- Required key: RuleId
-- @return GetRateBasedRuleManagedKeysRequest structure as a key-value pair table
function M.GetRateBasedRuleManagedKeysRequest(args)
	assert(args, "You must provide an argument table when creating GetRateBasedRuleManagedKeysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRateBasedRuleManagedKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRateBasedRuleRequest = { ["RateLimit"] = true, ["ChangeToken"] = true, ["Updates"] = true, ["RuleId"] = true, nil }

function asserts.AssertUpdateRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	if struct["RateLimit"] then asserts.AssertRateLimit(struct["RateLimit"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertRuleUpdates(struct["Updates"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRateBasedRuleRequest[k], "UpdateRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRateBasedRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RateLimit [RateLimit] <p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [RuleUpdates] <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a <a>RateBasedRule</a>. </p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update. <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>
-- Required key: RuleId
-- Required key: ChangeToken
-- Required key: Updates
-- Required key: RateLimit
-- @return UpdateRateBasedRuleRequest structure as a key-value pair table
function M.UpdateRateBasedRuleRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRateBasedRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RateLimit"] = args["RateLimit"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertUpdateRateBasedRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebACLUpdate = { ["Action"] = true, ["ActivatedRule"] = true, nil }

function asserts.AssertWebACLUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACLUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ActivatedRule"], "Expected key ActivatedRule to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["ActivatedRule"] then asserts.AssertActivatedRule(struct["ActivatedRule"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebACLUpdate[k], "WebACLUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACLUpdate
-- <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
-- * ActivatedRule [ActivatedRule] <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
-- Required key: Action
-- Required key: ActivatedRule
-- @return WebACLUpdate structure as a key-value pair table
function M.WebACLUpdate(args)
	assert(args, "You must provide an argument table when creating WebACLUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["ActivatedRule"] = args["ActivatedRule"],
	}
	asserts.AssertWebACLUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rule = { ["Predicates"] = true, ["MetricName"] = true, ["Name"] = true, ["RuleId"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Predicates"], "Expected key Predicates to exist in table")
	if struct["Predicates"] then asserts.AssertPredicates(struct["Predicates"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p> <ul> <li> <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code> header is <code>BadBot</code>.</p> </li> </ul> <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code> header for which the value is <code>BadBot</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Predicates [Predicates] <p>The <code>Predicates</code> object contains one <code>Predicate</code> element for each <a>ByteMatchSet</a>, <a>IPSet</a>, or <a>SqlInjectionMatchSet</a> object that you want to include in a <code>Rule</code>.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change <code>MetricName</code> after you create the <code>Rule</code>.</p>
-- * Name [ResourceName] <p>The friendly name or description for the <code>Rule</code>. You can't change the name of a <code>Rule</code> after you create it.</p>
-- * RuleId [ResourceId] <p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p> <p> <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: RuleId
-- Required key: Predicates
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Predicates"] = args["Predicates"],
		["MetricName"] = args["MetricName"],
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPermissionPolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetPermissionPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPermissionPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicyString(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPermissionPolicyResponse[k], "GetPermissionPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPermissionPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [PolicyString] <p>The IAM policy attached to the specified RuleGroup.</p>
-- @return GetPermissionPolicyResponse structure as a key-value pair table
function M.GetPermissionPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetPermissionPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetPermissionPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIPSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListIPSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIPSetsRequest[k], "ListIPSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>IPSets</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>IPSets</code>. For the second and subsequent <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>IPSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more <code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>
-- @return ListIPSetsRequest structure as a key-value pair table
function M.ListIPSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListIPSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListIPSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivatedRule = { ["Priority"] = true, ["Action"] = true, ["Type"] = true, ["OverrideAction"] = true, ["RuleId"] = true, nil }

function asserts.AssertActivatedRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatedRule to be of type 'table'")
	assert(struct["Priority"], "Expected key Priority to exist in table")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["Priority"] then asserts.AssertRulePriority(struct["Priority"]) end
	if struct["Action"] then asserts.AssertWafAction(struct["Action"]) end
	if struct["Type"] then asserts.AssertWafRuleType(struct["Type"]) end
	if struct["OverrideAction"] then asserts.AssertWafOverrideAction(struct["OverrideAction"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivatedRule[k], "ActivatedRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatedRule
-- <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p> <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Priority [RulePriority] <p>Specifies the order in which the <code>Rules</code> in a <code>WebACL</code> are evaluated. Rules with a lower value for <code>Priority</code> are evaluated before <code>Rules</code> with a higher value. The value must be a unique integer. If you add multiple <code>Rules</code> to a <code>WebACL</code>, the values don't need to be consecutive.</p>
-- * Action [WafAction] <p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the <code>Rule</code>. Valid values for <code>Action</code> include the following:</p> <ul> <li> <p> <code>ALLOW</code>: CloudFront responds with the requested object.</p> </li> <li> <p> <code>BLOCK</code>: CloudFront responds with an HTTP 403 (Forbidden) status code.</p> </li> <li> <p> <code>COUNT</code>: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to inspect the web request based on the remaining rules in the web ACL. </p> </li> </ul> <p> <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>. For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
-- * Type [WafRuleType] <p>The rule type, either <code>REGULAR</code>, as defined by <a>Rule</a>, <code>RATE_BASED</code>, as defined by <a>RateBasedRule</a>, or <code>GROUP</code>, as defined by <a>RuleGroup</a>. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. </p>
-- * OverrideAction [WafOverrideAction] <p>Use the <code>OverrideAction</code> to test your <code>RuleGroup</code>.</p> <p>Any rule in a <code>RuleGroup</code> can potentially block a request. If you set the <code>OverrideAction</code> to <code>None</code>, the <code>RuleGroup</code> will block a request if any individual rule in the <code>RuleGroup</code> matches the request and is configured to block that request. However if you first want to test the <code>RuleGroup</code>, set the <code>OverrideAction</code> to <code>Count</code>. The <code>RuleGroup</code> will then override any block action specified by individual rules contained within the group. Instead of blocking matching requests, those requests will be counted. You can view a record of counted requests using <a>GetSampledRequests</a>. </p> <p> <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>. For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p> <p> <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: Priority
-- Required key: RuleId
-- @return ActivatedRule structure as a key-value pair table
function M.ActivatedRule(args)
	assert(args, "You must provide an argument table when creating ActivatedRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Priority"] = args["Priority"],
		["Action"] = args["Action"],
		["Type"] = args["Type"],
		["OverrideAction"] = args["OverrideAction"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertActivatedRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexPatternSetUpdate = { ["Action"] = true, ["RegexPatternString"] = true, nil }

function asserts.AssertRegexPatternSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexPatternSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["RegexPatternString"], "Expected key RegexPatternString to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["RegexPatternString"] then asserts.AssertRegexPatternString(struct["RegexPatternString"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexPatternSetUpdate[k], "RegexPatternSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexPatternSetUpdate
-- <p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert or delete a <code>RegexPatternString</code>.</p>
-- * RegexPatternString [RegexPatternString] <p>Specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>
-- Required key: Action
-- Required key: RegexPatternString
-- @return RegexPatternSetUpdate structure as a key-value pair table
function M.RegexPatternSetUpdate(args)
	assert(args, "You must provide an argument table when creating RegexPatternSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["RegexPatternString"] = args["RegexPatternString"],
	}
	asserts.AssertRegexPatternSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWebACLRequest = { ["DefaultAction"] = true, ["ChangeToken"] = true, ["Name"] = true, ["MetricName"] = true, nil }

function asserts.AssertCreateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebACLRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["DefaultAction"], "Expected key DefaultAction to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["DefaultAction"] then asserts.AssertWafAction(struct["DefaultAction"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWebACLRequest[k], "CreateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultAction [WafAction] <p>The action that you want AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code> objects that are associated with the <code>WebACL</code>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for this <code>WebACL</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change <code>MetricName</code> after you create the <code>WebACL</code>.</p>
-- Required key: Name
-- Required key: MetricName
-- Required key: DefaultAction
-- Required key: ChangeToken
-- @return CreateWebACLRequest structure as a key-value pair table
function M.CreateWebACLRequest(args)
	assert(args, "You must provide an argument table when creating CreateWebACLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultAction"] = args["DefaultAction"],
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateWebACLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteByteMatchSetRequest = { ["ByteMatchSetId"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertDeleteByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ByteMatchSetId"] then asserts.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteByteMatchSetRequest[k], "DeleteByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteByteMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSetId [ResourceId] <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- Required key: ByteMatchSetId
-- Required key: ChangeToken
-- @return DeleteByteMatchSetRequest structure as a key-value pair table
function M.DeleteByteMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteByteMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteByteMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRegexMatchSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateRegexMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRegexMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRegexMatchSetRequest[k], "CreateRegexMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRegexMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateRegexMatchSetRequest structure as a key-value pair table
function M.CreateRegexMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateRegexMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateRegexMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSizeConstraintSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListSizeConstraintSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSizeConstraintSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSizeConstraintSetsRequest[k], "ListSizeConstraintSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSizeConstraintSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>. For the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more <code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>
-- @return ListSizeConstraintSetsRequest structure as a key-value pair table
function M.ListSizeConstraintSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListSizeConstraintSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSizeConstraintSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRegexMatchSetRequest = { ["RegexMatchSetId"] = true, ["ChangeToken"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateRegexMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRegexMatchSetRequest to be of type 'table'")
	assert(struct["RegexMatchSetId"], "Expected key RegexMatchSetId to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["RegexMatchSetId"] then asserts.AssertResourceId(struct["RegexMatchSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertRegexMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRegexMatchSetRequest[k], "UpdateRegexMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRegexMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSetId [ResourceId] <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [RegexMatchSetUpdates] <p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>. For more information, see <a>RegexMatchTuple</a>.</p>
-- Required key: RegexMatchSetId
-- Required key: Updates
-- Required key: ChangeToken
-- @return UpdateRegexMatchSetRequest structure as a key-value pair table
function M.UpdateRegexMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRegexMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSetId"] = args["RegexMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateRegexMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleGroupUpdate = { ["Action"] = true, ["ActivatedRule"] = true, nil }

function asserts.AssertRuleGroupUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleGroupUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ActivatedRule"], "Expected key ActivatedRule to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["ActivatedRule"] then asserts.AssertActivatedRule(struct["ActivatedRule"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleGroupUpdate[k], "RuleGroupUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleGroupUpdate
-- <p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specify <code>INSERT</code> to add an <code>ActivatedRule</code> to a <code>RuleGroup</code>. Use <code>DELETE</code> to remove an <code>ActivatedRule</code> from a <code>RuleGroup</code>.</p>
-- * ActivatedRule [ActivatedRule] <p>The <code>ActivatedRule</code> object specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
-- Required key: Action
-- Required key: ActivatedRule
-- @return RuleGroupUpdate structure as a key-value pair table
function M.RuleGroupUpdate(args)
	assert(args, "You must provide an argument table when creating RuleGroupUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["ActivatedRule"] = args["ActivatedRule"],
	}
	asserts.AssertRuleGroupUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRuleGroupResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateRuleGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleGroupResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuleGroupResponse[k], "UpdateRuleGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRuleGroup</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateRuleGroupResponse structure as a key-value pair table
function M.UpdateRuleGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRuleGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRuleGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChangeTokenRequest = { nil }

function asserts.AssertGetChangeTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetChangeTokenRequest[k], "GetChangeTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetChangeTokenRequest structure as a key-value pair table
function M.GetChangeTokenRequest(args)
	assert(args, "You must provide an argument table when creating GetChangeTokenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetChangeTokenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRegexMatchSetRequest = { ["RegexMatchSetId"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRegexMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegexMatchSetRequest to be of type 'table'")
	assert(struct["RegexMatchSetId"], "Expected key RegexMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["RegexMatchSetId"] then asserts.AssertResourceId(struct["RegexMatchSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegexMatchSetRequest[k], "DeleteRegexMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegexMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSetId [ResourceId] <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- Required key: RegexMatchSetId
-- Required key: ChangeToken
-- @return DeleteRegexMatchSetRequest structure as a key-value pair table
function M.DeleteRegexMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRegexMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSetId"] = args["RegexMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRegexMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSqlInjectionMatchSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSqlInjectionMatchSetRequest[k], "CreateSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSqlInjectionMatchSetRequest
-- <p>A request to create a <a>SqlInjectionMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code> after you create the <code>SqlInjectionMatchSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateSqlInjectionMatchSetRequest structure as a key-value pair table
function M.CreateSqlInjectionMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateSqlInjectionMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSqlInjectionMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRuleGroupResponse = { ["RuleGroup"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateRuleGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleGroupResponse to be of type 'table'")
	if struct["RuleGroup"] then asserts.AssertRuleGroup(struct["RuleGroup"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRuleGroupResponse[k], "CreateRuleGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleGroup [RuleGroup] <p>An empty <a>RuleGroup</a>.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRuleGroup</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return CreateRuleGroupResponse structure as a key-value pair table
function M.CreateRuleGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateRuleGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleGroup"] = args["RuleGroup"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateRuleGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SizeConstraintSetUpdate = { ["Action"] = true, ["SizeConstraint"] = true, nil }

function asserts.AssertSizeConstraintSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["SizeConstraint"], "Expected key SizeConstraint to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["SizeConstraint"] then asserts.AssertSizeConstraint(struct["SizeConstraint"]) end
	for k,_ in pairs(struct) do
		assert(keys.SizeConstraintSetUpdate[k], "SizeConstraintSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSetUpdate
-- <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specify <code>INSERT</code> to add a <a>SizeConstraintSetUpdate</a> to a <a>SizeConstraintSet</a>. Use <code>DELETE</code> to remove a <code>SizeConstraintSetUpdate</code> from a <code>SizeConstraintSet</code>.</p>
-- * SizeConstraint [SizeConstraint] <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
-- Required key: Action
-- Required key: SizeConstraint
-- @return SizeConstraintSetUpdate structure as a key-value pair table
function M.SizeConstraintSetUpdate(args)
	assert(args, "You must provide an argument table when creating SizeConstraintSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["SizeConstraint"] = args["SizeConstraint"],
	}
	asserts.AssertSizeConstraintSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSizeConstraintSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSizeConstraintSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSizeConstraintSetRequest[k], "CreateSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSizeConstraintSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a <code>SizeConstraintSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateSizeConstraintSetRequest structure as a key-value pair table
function M.CreateSizeConstraintSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateSizeConstraintSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSizeConstraintSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPermissionPolicyResponse = { nil }

function asserts.AssertPutPermissionPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPermissionPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutPermissionPolicyResponse[k], "PutPermissionPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPermissionPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutPermissionPolicyResponse structure as a key-value pair table
function M.PutPermissionPolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutPermissionPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutPermissionPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSqlInjectionMatchSetsResponse = { ["SqlInjectionMatchSets"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListSqlInjectionMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSqlInjectionMatchSetsResponse to be of type 'table'")
	if struct["SqlInjectionMatchSets"] then asserts.AssertSqlInjectionMatchSetSummaries(struct["SqlInjectionMatchSets"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSqlInjectionMatchSetsResponse[k], "ListSqlInjectionMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSqlInjectionMatchSetsResponse
-- <p>The response to a <a>ListSqlInjectionMatchSets</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SqlInjectionMatchSets [SqlInjectionMatchSetSummaries] <p>An array of <a>SqlInjectionMatchSetSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <a>SqlInjectionMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>SqlInjectionMatchSet</code> objects, submit another <code>ListSqlInjectionMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListSqlInjectionMatchSetsResponse structure as a key-value pair table
function M.ListSqlInjectionMatchSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListSqlInjectionMatchSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SqlInjectionMatchSets"] = args["SqlInjectionMatchSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListSqlInjectionMatchSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGeoMatchSetRequest = { ["GeoMatchSetId"] = true, nil }

function asserts.AssertGetGeoMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoMatchSetRequest to be of type 'table'")
	assert(struct["GeoMatchSetId"], "Expected key GeoMatchSetId to exist in table")
	if struct["GeoMatchSetId"] then asserts.AssertResourceId(struct["GeoMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGeoMatchSetRequest[k], "GetGeoMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSetId [ResourceId] <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>
-- Required key: GeoMatchSetId
-- @return GetGeoMatchSetRequest structure as a key-value pair table
function M.GetGeoMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating GetGeoMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSetId"] = args["GeoMatchSetId"],
	}
	asserts.AssertGetGeoMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HTTPRequest = { ["Country"] = true, ["URI"] = true, ["Headers"] = true, ["ClientIP"] = true, ["Method"] = true, ["HTTPVersion"] = true, nil }

function asserts.AssertHTTPRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HTTPRequest to be of type 'table'")
	if struct["Country"] then asserts.AssertCountry(struct["Country"]) end
	if struct["URI"] then asserts.AssertURIString(struct["URI"]) end
	if struct["Headers"] then asserts.AssertHTTPHeaders(struct["Headers"]) end
	if struct["ClientIP"] then asserts.AssertIPString(struct["ClientIP"]) end
	if struct["Method"] then asserts.AssertHTTPMethod(struct["Method"]) end
	if struct["HTTPVersion"] then asserts.AssertHTTPVersion(struct["HTTPVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.HTTPRequest[k], "HTTPRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HTTPRequest
-- <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Country [Country] <p>The two-letter country code for the country that the request originated from. For a current list of country codes, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1 alpha-2</a>.</p>
-- * URI [URIString] <p>The part of a web request that identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>
-- * Headers [HTTPHeaders] <p>A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.</p>
-- * ClientIP [IPString] <p>The IP address that the request originated from. If the <code>WebACL</code> is associated with a CloudFront distribution, this is the value of one of the following fields in CloudFront access logs:</p> <ul> <li> <p> <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send the request</p> </li> <li> <p> <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer to send the request</p> </li> </ul>
-- * Method [HTTPMethod] <p>The HTTP method specified in the sampled web request. CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>. </p>
-- * HTTPVersion [HTTPVersion] <p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>
-- @return HTTPRequest structure as a key-value pair table
function M.HTTPRequest(args)
	assert(args, "You must provide an argument table when creating HTTPRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Country"] = args["Country"],
		["URI"] = args["URI"],
		["Headers"] = args["Headers"],
		["ClientIP"] = args["ClientIP"],
		["Method"] = args["Method"],
		["HTTPVersion"] = args["HTTPVersion"],
	}
	asserts.AssertHTTPRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRegexPatternSetResponse = { ["RegexPatternSet"] = true, nil }

function asserts.AssertGetRegexPatternSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegexPatternSetResponse to be of type 'table'")
	if struct["RegexPatternSet"] then asserts.AssertRegexPatternSet(struct["RegexPatternSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegexPatternSetResponse[k], "GetRegexPatternSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegexPatternSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSet [RegexPatternSet] <p>Information about the <a>RegexPatternSet</a> that you specified in the <code>GetRegexPatternSet</code> request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for. </p>
-- @return GetRegexPatternSetResponse structure as a key-value pair table
function M.GetRegexPatternSetResponse(args)
	assert(args, "You must provide an argument table when creating GetRegexPatternSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSet"] = args["RegexPatternSet"],
	}
	asserts.AssertGetRegexPatternSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListWebACLsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListWebACLsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebACLsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWebACLsRequest[k], "ListWebACLsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebACLsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify for <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>WebACL</code> objects.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more <code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>
-- @return ListWebACLsRequest structure as a key-value pair table
function M.ListWebACLsRequest(args)
	assert(args, "You must provide an argument table when creating ListWebACLsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListWebACLsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.XssMatchSet = { ["XssMatchTuples"] = true, ["XssMatchSetId"] = true, ["Name"] = true, nil }

function asserts.AssertXssMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSet to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["XssMatchTuples"], "Expected key XssMatchTuples to exist in table")
	if struct["XssMatchTuples"] then asserts.AssertXssMatchTuples(struct["XssMatchTuples"]) end
	if struct["XssMatchSetId"] then asserts.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.XssMatchSet[k], "XssMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSet
-- <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a <code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * XssMatchTuples [XssMatchTuples] <p>Specifies the parts of web requests that you want to inspect for cross-site scripting attacks.</p>
-- * XssMatchSetId [ResourceId] <p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about an <code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> (see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF (see <a>DeleteXssMatchSet</a>).</p> <p> <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
-- * Name [ResourceName] <p>The name, if any, of the <code>XssMatchSet</code>.</p>
-- Required key: XssMatchSetId
-- Required key: XssMatchTuples
-- @return XssMatchSet structure as a key-value pair table
function M.XssMatchSet(args)
	assert(args, "You must provide an argument table when creating XssMatchSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["XssMatchTuples"] = args["XssMatchTuples"],
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertXssMatchSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWebACLResponse = { ["WebACL"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebACLResponse to be of type 'table'")
	if struct["WebACL"] then asserts.AssertWebACL(struct["WebACL"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWebACLResponse[k], "CreateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACL [WebACL] <p>The <a>WebACL</a> returned in the <code>CreateWebACL</code> response.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateWebACL</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return CreateWebACLResponse structure as a key-value pair table
function M.CreateWebACLResponse(args)
	assert(args, "You must provide an argument table when creating CreateWebACLResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebACL"] = args["WebACL"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateWebACLResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleResponse[k], "DeleteRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteRuleResponse structure as a key-value pair table
function M.DeleteRuleResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSizeConstraintSetRequest = { ["SizeConstraintSetId"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertDeleteSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["SizeConstraintSetId"] then asserts.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSizeConstraintSetRequest[k], "DeleteSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSizeConstraintSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSetId [ResourceId] <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- Required key: SizeConstraintSetId
-- Required key: ChangeToken
-- @return DeleteSizeConstraintSetRequest structure as a key-value pair table
function M.DeleteSizeConstraintSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSizeConstraintSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSizeConstraintSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRateBasedRuleResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRateBasedRuleResponse[k], "UpdateRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRateBasedRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRateBasedRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateRateBasedRuleResponse structure as a key-value pair table
function M.UpdateRateBasedRuleResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRateBasedRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRateBasedRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSizeConstraintSetResponse = { ["SizeConstraintSet"] = true, nil }

function asserts.AssertGetSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSizeConstraintSetResponse to be of type 'table'")
	if struct["SizeConstraintSet"] then asserts.AssertSizeConstraintSet(struct["SizeConstraintSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSizeConstraintSetResponse[k], "GetSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSizeConstraintSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraintSet [SizeConstraintSet] <p>Information about the <a>SizeConstraintSet</a> that you specified in the <code>GetSizeConstraintSet</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>SizeConstraintSet</a>: Contains <code>SizeConstraintSetId</code>, <code>SizeConstraints</code>, and <code>Name</code> </p> </li> <li> <p> <code>SizeConstraints</code>: Contains an array of <a>SizeConstraint</a> objects. Each <code>SizeConstraint</code> object contains <a>FieldToMatch</a>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, and <code>Size</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- @return GetSizeConstraintSetResponse structure as a key-value pair table
function M.GetSizeConstraintSetResponse(args)
	assert(args, "You must provide an argument table when creating GetSizeConstraintSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraintSet"] = args["SizeConstraintSet"],
	}
	asserts.AssertGetSizeConstraintSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexMatchSetSummary = { ["RegexMatchSetId"] = true, ["Name"] = true, nil }

function asserts.AssertRegexMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexMatchSetSummary to be of type 'table'")
	assert(struct["RegexMatchSetId"], "Expected key RegexMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["RegexMatchSetId"] then asserts.AssertResourceId(struct["RegexMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexMatchSetSummary[k], "RegexMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexMatchSetSummary
-- <p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and <code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSetId [ResourceId] <p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a <code>RegexMatchSet</code>, update a <code>RegexMatchSet</code>, remove a <code>RegexMatchSet</code> from a <code>Rule</code>, and delete a <code>RegexMatchSet</code> from AWS WAF.</p> <p> <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>
-- Required key: RegexMatchSetId
-- Required key: Name
-- @return RegexMatchSetSummary structure as a key-value pair table
function M.RegexMatchSetSummary(args)
	assert(args, "You must provide an argument table when creating RegexMatchSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSetId"] = args["RegexMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertRegexMatchSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRulesResponse = { ["Rules"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesResponse to be of type 'table'")
	if struct["Rules"] then asserts.AssertRuleSummaries(struct["Rules"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesResponse[k], "ListRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [RuleSummaries] <p>An array of <a>RuleSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <code>Rules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>Rules</code>, submit another <code>ListRules</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListRulesResponse structure as a key-value pair table
function M.ListRulesResponse(args)
	assert(args, "You must provide an argument table when creating ListRulesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListRulesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIPSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIPSetRequest[k], "CreateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateIPSetRequest structure as a key-value pair table
function M.CreateIPSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateIPSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateIPSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRuleResponse = { ["Rule"] = true, nil }

function asserts.AssertGetRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleResponse to be of type 'table'")
	if struct["Rule"] then asserts.AssertRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRuleResponse[k], "GetRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rule [Rule] <p>Information about the <a>Rule</a> that you specified in the <code>GetRule</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>Rule</a>: Contains <code>MetricName</code>, <code>Name</code>, an array of <code>Predicate</code> objects, and <code>RuleId</code> </p> </li> <li> <p> <a>Predicate</a>: Each <code>Predicate</code> object contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code> </p> </li> </ul>
-- @return GetRuleResponse structure as a key-value pair table
function M.GetRuleResponse(args)
	assert(args, "You must provide an argument table when creating GetRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rule"] = args["Rule"],
	}
	asserts.AssertGetRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRuleGroupsResponse = { ["RuleGroups"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListRuleGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleGroupsResponse to be of type 'table'")
	if struct["RuleGroups"] then asserts.AssertRuleGroupSummaries(struct["RuleGroups"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRuleGroupsResponse[k], "ListRuleGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleGroups [RuleGroupSummaries] <p>An array of <a>RuleGroup</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <code>RuleGroups</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RuleGroups</code>, submit another <code>ListRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListRuleGroupsResponse structure as a key-value pair table
function M.ListRuleGroupsResponse(args)
	assert(args, "You must provide an argument table when creating ListRuleGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleGroups"] = args["RuleGroups"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListRuleGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SizeConstraintSet = { ["SizeConstraints"] = true, ["SizeConstraintSetId"] = true, ["Name"] = true, nil }

function asserts.AssertSizeConstraintSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSet to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["SizeConstraints"], "Expected key SizeConstraints to exist in table")
	if struct["SizeConstraints"] then asserts.AssertSizeConstraints(struct["SizeConstraints"]) end
	if struct["SizeConstraintSetId"] then asserts.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SizeConstraintSet[k], "SizeConstraintSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSet
-- <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code> object, a request only needs to match one constraint to be considered a match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeConstraints [SizeConstraints] <p>Specifies the parts of web requests that you want to inspect the size of.</p>
-- * SizeConstraintSetId [ResourceId] <p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a <code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> (see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF (see <a>DeleteSizeConstraintSet</a>).</p> <p> <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
-- * Name [ResourceName] <p>The name, if any, of the <code>SizeConstraintSet</code>.</p>
-- Required key: SizeConstraintSetId
-- Required key: SizeConstraints
-- @return SizeConstraintSet structure as a key-value pair table
function M.SizeConstraintSet(args)
	assert(args, "You must provide an argument table when creating SizeConstraintSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeConstraints"] = args["SizeConstraints"],
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertSizeConstraintSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListByteMatchSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListByteMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListByteMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListByteMatchSetsRequest[k], "ListByteMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListByteMatchSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. For the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more <code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>
-- @return ListByteMatchSetsRequest structure as a key-value pair table
function M.ListByteMatchSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListByteMatchSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListByteMatchSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIPSetResponse = { ["IPSet"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertCreateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetResponse to be of type 'table'")
	if struct["IPSet"] then asserts.AssertIPSet(struct["IPSet"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIPSetResponse[k], "CreateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSet [IPSet] <p>The <a>IPSet</a> returned in the <code>CreateIPSet</code> response.</p>
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateIPSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
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
		["IPSet"] = args["IPSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateByteMatchSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateByteMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateByteMatchSetRequest[k], "CreateByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateByteMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateByteMatchSetRequest structure as a key-value pair table
function M.CreateByteMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateByteMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateByteMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPSet = { ["IPSetId"] = true, ["Name"] = true, ["IPSetDescriptors"] = true, nil }

function asserts.AssertIPSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSet to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["IPSetDescriptors"], "Expected key IPSetDescriptors to exist in table")
	if struct["IPSetId"] then asserts.AssertResourceId(struct["IPSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["IPSetDescriptors"] then asserts.AssertIPSetDescriptors(struct["IPSetDescriptors"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPSet[k], "IPSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSet
-- <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF supports IPv6 address ranges: /16, /24, /32, /48, /56, /64, and /128.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify /8 or any range between /16 through /32 (for IPv4) or /16, /24, /32, /48, /56, /64, or /128 (for IPv6). For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> for an <code>IPSet</code>. You use <code>IPSetId</code> to get information about an <code>IPSet</code> (see <a>GetIPSet</a>), update an <code>IPSet</code> (see <a>UpdateIPSet</a>), insert an <code>IPSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>IPSet</code> from AWS WAF (see <a>DeleteIPSet</a>).</p> <p> <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>
-- * IPSetDescriptors [IPSetDescriptors] <p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from. If the <code>WebACL</code> is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.</p>
-- Required key: IPSetId
-- Required key: IPSetDescriptors
-- @return IPSet structure as a key-value pair table
function M.IPSet(args)
	assert(args, "You must provide an argument table when creating IPSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPSetId"] = args["IPSetId"],
		["Name"] = args["Name"],
		["IPSetDescriptors"] = args["IPSetDescriptors"],
	}
	asserts.AssertIPSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLoggingConfigurationResponse = { ["LoggingConfiguration"] = true, nil }

function asserts.AssertPutLoggingConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLoggingConfigurationResponse to be of type 'table'")
	if struct["LoggingConfiguration"] then asserts.AssertLoggingConfiguration(struct["LoggingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLoggingConfigurationResponse[k], "PutLoggingConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLoggingConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingConfiguration [LoggingConfiguration] <p>The <a>LoggingConfiguration</a> that you submitted in the request.</p>
-- @return PutLoggingConfigurationResponse structure as a key-value pair table
function M.PutLoggingConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating PutLoggingConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggingConfiguration"] = args["LoggingConfiguration"],
	}
	asserts.AssertPutLoggingConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ByteMatchSetSummary = { ["ByteMatchSetId"] = true, ["Name"] = true, nil }

function asserts.AssertByteMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSetSummary to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ByteMatchSetId"] then asserts.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ByteMatchSetSummary[k], "ByteMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSetSummary
-- <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and <code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ByteMatchSetId [ResourceId] <p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a <code>ByteMatchSet</code>, update a <code>ByteMatchSet</code>, remove a <code>ByteMatchSet</code> from a <code>Rule</code>, and delete a <code>ByteMatchSet</code> from AWS WAF.</p> <p> <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>
-- Required key: ByteMatchSetId
-- Required key: Name
-- @return ByteMatchSetSummary structure as a key-value pair table
function M.ByteMatchSetSummary(args)
	assert(args, "You must provide an argument table when creating ByteMatchSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertByteMatchSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqlInjectionMatchSetSummary = { ["Name"] = true, ["SqlInjectionMatchSetId"] = true, nil }

function asserts.AssertSqlInjectionMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSetSummary to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["SqlInjectionMatchSetId"] then asserts.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlInjectionMatchSetSummary[k], "SqlInjectionMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSetSummary
-- <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceName] <p>The name of the <code>SqlInjectionMatchSet</code>, if any, specified by <code>Id</code>.</p>
-- * SqlInjectionMatchSetId [ResourceId] <p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a <code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> (see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF (see <a>DeleteSqlInjectionMatchSet</a>).</p> <p> <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
-- Required key: SqlInjectionMatchSetId
-- Required key: Name
-- @return SqlInjectionMatchSetSummary structure as a key-value pair table
function M.SqlInjectionMatchSetSummary(args)
	assert(args, "You must provide an argument table when creating SqlInjectionMatchSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertSqlInjectionMatchSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChangeTokenStatusRequest = { ["ChangeToken"] = true, nil }

function asserts.AssertGetChangeTokenStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenStatusRequest to be of type 'table'")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChangeTokenStatusRequest[k], "GetChangeTokenStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>
-- Required key: ChangeToken
-- @return GetChangeTokenStatusRequest structure as a key-value pair table
function M.GetChangeTokenStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetChangeTokenStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertGetChangeTokenStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSqlInjectionMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSqlInjectionMatchSetResponse[k], "UpdateSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSqlInjectionMatchSetResponse
-- <p>The response to an <a>UpdateSqlInjectionMatchSets</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSqlInjectionMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return UpdateSqlInjectionMatchSetResponse structure as a key-value pair table
function M.UpdateSqlInjectionMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSqlInjectionMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateSqlInjectionMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGeoMatchSetsResponse = { ["GeoMatchSets"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListGeoMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoMatchSetsResponse to be of type 'table'")
	if struct["GeoMatchSets"] then asserts.AssertGeoMatchSetSummaries(struct["GeoMatchSets"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGeoMatchSetsResponse[k], "ListGeoMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoMatchSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoMatchSets [GeoMatchSetSummaries] <p>An array of <a>GeoMatchSetSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <code>GeoMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>GeoMatchSet</code> objects, submit another <code>ListGeoMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListGeoMatchSetsResponse structure as a key-value pair table
function M.ListGeoMatchSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListGeoMatchSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoMatchSets"] = args["GeoMatchSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListGeoMatchSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateWebACLRequest = { ["DefaultAction"] = true, ["ChangeToken"] = true, ["WebACLId"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["DefaultAction"] then asserts.AssertWafAction(struct["DefaultAction"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	if struct["Updates"] then asserts.AssertWebACLUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateWebACLRequest[k], "UpdateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultAction [WafAction] <p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default action if a request doesn't match the criteria in any of the rules in a web ACL.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * WebACLId [ResourceId] <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
-- * Updates [WebACLUpdates] <p>An array of updates to make to the <a>WebACL</a>.</p> <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a <a>WebACL</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code> </p> </li> <li> <p> <a>ActivatedRule</a>: Contains <code>Action</code>, <code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>, and <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>. For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>. </p> </li> <li> <p> <a>WafAction</a>: Contains <code>Type</code> </p> </li> </ul>
-- Required key: WebACLId
-- Required key: ChangeToken
-- @return UpdateWebACLRequest structure as a key-value pair table
function M.UpdateWebACLRequest(args)
	assert(args, "You must provide an argument table when creating UpdateWebACLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultAction"] = args["DefaultAction"],
		["ChangeToken"] = args["ChangeToken"],
		["WebACLId"] = args["WebACLId"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateWebACLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRegexPatternSetsResponse = { ["NextMarker"] = true, ["RegexPatternSets"] = true, nil }

function asserts.AssertListRegexPatternSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRegexPatternSetsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["RegexPatternSets"] then asserts.AssertRegexPatternSetSummaries(struct["RegexPatternSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRegexPatternSetsResponse[k], "ListRegexPatternSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRegexPatternSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>RegexPatternSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RegexPatternSet</code> objects, submit another <code>ListRegexPatternSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * RegexPatternSets [RegexPatternSetSummaries] <p>An array of <a>RegexPatternSetSummary</a> objects.</p>
-- @return ListRegexPatternSetsResponse structure as a key-value pair table
function M.ListRegexPatternSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListRegexPatternSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["RegexPatternSets"] = args["RegexPatternSets"],
	}
	asserts.AssertListRegexPatternSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRegexPatternSetRequest = { ["RegexPatternSetId"] = true, ["ChangeToken"] = true, ["Updates"] = true, nil }

function asserts.AssertUpdateRegexPatternSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRegexPatternSetRequest to be of type 'table'")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then asserts.AssertRegexPatternSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRegexPatternSetRequest[k], "UpdateRegexPatternSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRegexPatternSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Updates [RegexPatternSetUpdates] <p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>
-- Required key: RegexPatternSetId
-- Required key: Updates
-- Required key: ChangeToken
-- @return UpdateRegexPatternSetRequest structure as a key-value pair table
function M.UpdateRegexPatternSetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRegexPatternSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateRegexPatternSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIPSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertUpdateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIPSetResponse[k], "UpdateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateIPSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
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
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRegexPatternSetRequest = { ["RegexPatternSetId"] = true, nil }

function asserts.AssertGetRegexPatternSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegexPatternSetRequest to be of type 'table'")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegexPatternSetRequest[k], "GetRegexPatternSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegexPatternSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- Required key: RegexPatternSetId
-- @return GetRegexPatternSetRequest structure as a key-value pair table
function M.GetRegexPatternSetRequest(args)
	assert(args, "You must provide an argument table when creating GetRegexPatternSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
	}
	asserts.AssertGetRegexPatternSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.XssMatchSetUpdate = { ["Action"] = true, ["XssMatchTuple"] = true, nil }

function asserts.AssertXssMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["XssMatchTuple"], "Expected key XssMatchTuple to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["XssMatchTuple"] then asserts.AssertXssMatchTuple(struct["XssMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(keys.XssMatchSetUpdate[k], "XssMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSetUpdate
-- <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specify <code>INSERT</code> to add a <a>XssMatchSetUpdate</a> to an <a>XssMatchSet</a>. Use <code>DELETE</code> to remove a <code>XssMatchSetUpdate</code> from an <code>XssMatchSet</code>.</p>
-- * XssMatchTuple [XssMatchTuple] <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
-- Required key: Action
-- Required key: XssMatchTuple
-- @return XssMatchSetUpdate structure as a key-value pair table
function M.XssMatchSetUpdate(args)
	assert(args, "You must provide an argument table when creating XssMatchSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["XssMatchTuple"] = args["XssMatchTuple"],
	}
	asserts.AssertXssMatchSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRateBasedRuleResponse = { ["ChangeToken"] = true, ["Rule"] = true, nil }

function asserts.AssertCreateRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Rule"] then asserts.AssertRateBasedRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRateBasedRuleResponse[k], "CreateRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRateBasedRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRateBasedRule</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- * Rule [RateBasedRule] <p>The <a>RateBasedRule</a> that is returned in the <code>CreateRateBasedRule</code> response.</p>
-- @return CreateRateBasedRuleResponse structure as a key-value pair table
function M.CreateRateBasedRuleResponse(args)
	assert(args, "You must provide an argument table when creating CreateRateBasedRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertCreateRateBasedRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RuleSummary = { ["Name"] = true, ["RuleId"] = true, nil }

function asserts.AssertRuleSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleSummary to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleSummary[k], "RuleSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleSummary
-- <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceName] <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
-- * RuleId [ResourceId] <p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p> <p> <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: RuleId
-- Required key: Name
-- @return RuleSummary structure as a key-value pair table
function M.RuleSummary(args)
	assert(args, "You must provide an argument table when creating RuleSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertRuleSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPSetUpdate = { ["Action"] = true, ["IPSetDescriptor"] = true, nil }

function asserts.AssertIPSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["IPSetDescriptor"], "Expected key IPSetDescriptor to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["IPSetDescriptor"] then asserts.AssertIPSetDescriptor(struct["IPSetDescriptor"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPSetUpdate[k], "IPSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetUpdate
-- <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>Specifies whether to insert or delete an IP address with <a>UpdateIPSet</a>.</p>
-- * IPSetDescriptor [IPSetDescriptor] <p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from.</p>
-- Required key: Action
-- Required key: IPSetDescriptor
-- @return IPSetUpdate structure as a key-value pair table
function M.IPSetUpdate(args)
	assert(args, "You must provide an argument table when creating IPSetUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["IPSetDescriptor"] = args["IPSetDescriptor"],
	}
	asserts.AssertIPSetUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListXssMatchSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListXssMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListXssMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListXssMatchSetsRequest[k], "ListXssMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListXssMatchSetsRequest
-- <p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more <code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
-- @return ListXssMatchSetsRequest structure as a key-value pair table
function M.ListXssMatchSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListXssMatchSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListXssMatchSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRateBasedRulesResponse = { ["Rules"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListRateBasedRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRateBasedRulesResponse to be of type 'table'")
	if struct["Rules"] then asserts.AssertRuleSummaries(struct["Rules"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRateBasedRulesResponse[k], "ListRateBasedRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRateBasedRulesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [RuleSummaries] <p>An array of <a>RuleSummary</a> objects.</p>
-- * NextMarker [NextMarker] <p>If you have more <code>Rules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>Rules</code>, submit another <code>ListRateBasedRules</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- @return ListRateBasedRulesResponse structure as a key-value pair table
function M.ListRateBasedRulesResponse(args)
	assert(args, "You must provide an argument table when creating ListRateBasedRulesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListRateBasedRulesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRegexMatchSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRegexMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegexMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegexMatchSetResponse[k], "DeleteRegexMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegexMatchSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexMatchSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
-- @return DeleteRegexMatchSetResponse structure as a key-value pair table
function M.DeleteRegexMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRegexMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRegexMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSizeConstraintSetsResponse = { ["NextMarker"] = true, ["SizeConstraintSets"] = true, nil }

function asserts.AssertListSizeConstraintSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSizeConstraintSetsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["SizeConstraintSets"] then asserts.AssertSizeConstraintSetSummaries(struct["SizeConstraintSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSizeConstraintSetsResponse[k], "ListSizeConstraintSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSizeConstraintSetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you have more <code>SizeConstraintSet</code> objects than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>SizeConstraintSet</code> objects, submit another <code>ListSizeConstraintSets</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
-- * SizeConstraintSets [SizeConstraintSetSummaries] <p>An array of <a>SizeConstraintSetSummary</a> objects.</p>
-- @return ListSizeConstraintSetsResponse structure as a key-value pair table
function M.ListSizeConstraintSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListSizeConstraintSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["SizeConstraintSets"] = args["SizeConstraintSets"],
	}
	asserts.AssertListSizeConstraintSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRegexMatchSetsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListRegexMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRegexMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRegexMatchSetsRequest[k], "ListRegexMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRegexMatchSetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. For the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more <code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>
-- @return ListRegexMatchSetsRequest structure as a key-value pair table
function M.ListRegexMatchSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListRegexMatchSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRegexMatchSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRuleGroupsRequest = { ["NextMarker"] = true, ["Limit"] = true, nil }

function asserts.AssertListRuleGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleGroupsRequest to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then asserts.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRuleGroupsRequest[k], "ListRuleGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>. For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>RuleGroups</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>
-- @return ListRuleGroupsRequest structure as a key-value pair table
function M.ListRuleGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListRuleGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRuleGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRegexPatternSetRequest = { ["ChangeToken"] = true, ["Name"] = true, nil }

function asserts.AssertCreateRegexPatternSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRegexPatternSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRegexPatternSetRequest[k], "CreateRegexPatternSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRegexPatternSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>
-- Required key: Name
-- Required key: ChangeToken
-- @return CreateRegexPatternSetRequest structure as a key-value pair table
function M.CreateRegexPatternSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateRegexPatternSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateRegexPatternSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegexPatternSetSummary = { ["RegexPatternSetId"] = true, ["Name"] = true, nil }

function asserts.AssertRegexPatternSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegexPatternSetSummary to be of type 'table'")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegexPatternSetSummary[k], "RegexPatternSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegexPatternSetSummary
-- <p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>, update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p> <p> <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>
-- Required key: RegexPatternSetId
-- Required key: Name
-- @return RegexPatternSetSummary structure as a key-value pair table
function M.RegexPatternSetSummary(args)
	assert(args, "You must provide an argument table when creating RegexPatternSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertRegexPatternSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RateBasedRule = { ["RateKey"] = true, ["Name"] = true, ["RuleId"] = true, ["RateLimit"] = true, ["MatchPredicates"] = true, ["MetricName"] = true, nil }

function asserts.AssertRateBasedRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RateBasedRule to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["MatchPredicates"], "Expected key MatchPredicates to exist in table")
	assert(struct["RateKey"], "Expected key RateKey to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	if struct["RateKey"] then asserts.AssertRateKey(struct["RateKey"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then asserts.AssertResourceId(struct["RuleId"]) end
	if struct["RateLimit"] then asserts.AssertRateLimit(struct["RateLimit"]) end
	if struct["MatchPredicates"] then asserts.AssertPredicates(struct["MatchPredicates"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RateBasedRule[k], "RateBasedRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RateBasedRule
-- <p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a specified IP address every five minutes. For example, based on recent requests that you've seen from an attacker, you might create a <code>RateBasedRule</code> that includes the following conditions: </p> <ul> <li> <p>The requests come from 192.0.2.44.</p> </li> <li> <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code> header.</p> </li> </ul> <p>In the rule, you also define the rate limit as 15,000.</p> <p>Requests that meet both of these conditions and exceed 15,000 requests every five minutes trigger the rule's action (block or count), which is defined in the web ACL.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RateKey [RateKey] <p>The field that AWS WAF uses to determine if requests are likely arriving from single source and thus subject to rate monitoring. The only valid value for <code>RateKey</code> is <code>IP</code>. <code>IP</code> indicates that requests arriving from the same IP address are subject to the <code>RateLimit</code> that is specified in the <code>RateBasedRule</code>.</p>
-- * Name [ResourceName] <p>A friendly name or description for a <code>RateBasedRule</code>. You can't change the name of a <code>RateBasedRule</code> after you create it.</p>
-- * RuleId [ResourceId] <p>A unique identifier for a <code>RateBasedRule</code>. You use <code>RuleId</code> to get more information about a <code>RateBasedRule</code> (see <a>GetRateBasedRule</a>), update a <code>RateBasedRule</code> (see <a>UpdateRateBasedRule</a>), insert a <code>RateBasedRule</code> into a <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RateBasedRule</code> from AWS WAF (see <a>DeleteRateBasedRule</a>).</p>
-- * RateLimit [RateLimit] <p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.</p>
-- * MatchPredicates [Predicates] <p>The <code>Predicates</code> object contains one <code>Predicate</code> element for each <a>ByteMatchSet</a>, <a>IPSet</a>, or <a>SqlInjectionMatchSet</a> object that you want to include in a <code>RateBasedRule</code>.</p>
-- * MetricName [MetricName] <p>A friendly name or description for the metrics for a <code>RateBasedRule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the <code>RateBasedRule</code>.</p>
-- Required key: RuleId
-- Required key: MatchPredicates
-- Required key: RateKey
-- Required key: RateLimit
-- @return RateBasedRule structure as a key-value pair table
function M.RateBasedRule(args)
	assert(args, "You must provide an argument table when creating RateBasedRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RateKey"] = args["RateKey"],
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
		["RateLimit"] = args["RateLimit"],
		["MatchPredicates"] = args["MatchPredicates"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertRateBasedRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRegexPatternSetRequest = { ["RegexPatternSetId"] = true, ["ChangeToken"] = true, nil }

function asserts.AssertDeleteRegexPatternSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegexPatternSetRequest to be of type 'table'")
	assert(struct["RegexPatternSetId"], "Expected key RegexPatternSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["RegexPatternSetId"] then asserts.AssertResourceId(struct["RegexPatternSetId"]) end
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegexPatternSetRequest[k], "DeleteRegexPatternSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegexPatternSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexPatternSetId [ResourceId] <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- Required key: RegexPatternSetId
-- Required key: ChangeToken
-- @return DeleteRegexPatternSetRequest structure as a key-value pair table
function M.DeleteRegexPatternSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRegexPatternSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexPatternSetId"] = args["RegexPatternSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRegexPatternSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqlInjectionMatchSet = { ["SqlInjectionMatchTuples"] = true, ["Name"] = true, ["SqlInjectionMatchSetId"] = true, nil }

function asserts.AssertSqlInjectionMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSet to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["SqlInjectionMatchTuples"], "Expected key SqlInjectionMatchTuples to exist in table")
	if struct["SqlInjectionMatchTuples"] then asserts.AssertSqlInjectionMatchTuples(struct["SqlInjectionMatchTuples"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["SqlInjectionMatchSetId"] then asserts.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlInjectionMatchSet[k], "SqlInjectionMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSet
-- <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a <code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SqlInjectionMatchTuples [SqlInjectionMatchTuples] <p>Specifies the parts of web requests that you want to inspect for snippets of malicious SQL code.</p>
-- * Name [ResourceName] <p>The name, if any, of the <code>SqlInjectionMatchSet</code>.</p>
-- * SqlInjectionMatchSetId [ResourceId] <p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a <code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> (see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF (see <a>DeleteSqlInjectionMatchSet</a>).</p> <p> <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
-- Required key: SqlInjectionMatchSetId
-- Required key: SqlInjectionMatchTuples
-- @return SqlInjectionMatchSet structure as a key-value pair table
function M.SqlInjectionMatchSet(args)
	assert(args, "You must provide an argument table when creating SqlInjectionMatchSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SqlInjectionMatchTuples"] = args["SqlInjectionMatchTuples"],
		["Name"] = args["Name"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertSqlInjectionMatchSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetXssMatchSetResponse = { ["XssMatchSet"] = true, nil }

function asserts.AssertGetXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetXssMatchSetResponse to be of type 'table'")
	if struct["XssMatchSet"] then asserts.AssertXssMatchSet(struct["XssMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetXssMatchSetResponse[k], "GetXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetXssMatchSetResponse
-- <p>The response to a <a>GetXssMatchSet</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * XssMatchSet [XssMatchSet] <p>Information about the <a>XssMatchSet</a> that you specified in the <code>GetXssMatchSet</code> request. For more information, see the following topics:</p> <ul> <li> <p> <a>XssMatchSet</a>: Contains <code>Name</code>, <code>XssMatchSetId</code>, and an array of <code>XssMatchTuple</code> objects</p> </li> <li> <p> <a>XssMatchTuple</a>: Each <code>XssMatchTuple</code> object contains <code>FieldToMatch</code> and <code>TextTransformation</code> </p> </li> <li> <p> <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code> </p> </li> </ul>
-- @return GetXssMatchSetResponse structure as a key-value pair table
function M.GetXssMatchSetResponse(args)
	assert(args, "You must provide an argument table when creating GetXssMatchSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["XssMatchSet"] = args["XssMatchSet"],
	}
	asserts.AssertGetXssMatchSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleGroupRequest = { ["ChangeToken"] = true, ["RuleGroupId"] = true, nil }

function asserts.AssertDeleteRuleGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleGroupRequest to be of type 'table'")
	assert(struct["RuleGroupId"], "Expected key RuleGroupId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RuleGroupId"] then asserts.AssertResourceId(struct["RuleGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleGroupRequest[k], "DeleteRuleGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
-- * RuleGroupId [ResourceId] <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
-- Required key: RuleGroupId
-- Required key: ChangeToken
-- @return DeleteRuleGroupRequest structure as a key-value pair table
function M.DeleteRuleGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRuleGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChangeToken"] = args["ChangeToken"],
		["RuleGroupId"] = args["RuleGroupId"],
	}
	asserts.AssertDeleteRuleGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIPSetResponse = { ["ChangeToken"] = true, nil }

function asserts.AssertDeleteIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetResponse to be of type 'table'")
	if struct["ChangeToken"] then asserts.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIPSetResponse[k], "DeleteIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeToken [ChangeToken] <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteIPSet</code> request. You can also use this value to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
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
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteIPSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRegexMatchSetRequest = { ["RegexMatchSetId"] = true, nil }

function asserts.AssertGetRegexMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegexMatchSetRequest to be of type 'table'")
	assert(struct["RegexMatchSetId"], "Expected key RegexMatchSetId to exist in table")
	if struct["RegexMatchSetId"] then asserts.AssertResourceId(struct["RegexMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegexMatchSetRequest[k], "GetRegexMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegexMatchSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegexMatchSetId [ResourceId] <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
-- Required key: RegexMatchSetId
-- @return GetRegexMatchSetRequest structure as a key-value pair table
function M.GetRegexMatchSetRequest(args)
	assert(args, "You must provide an argument table when creating GetRegexMatchSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegexMatchSetId"] = args["RegexMatchSetId"],
	}
	asserts.AssertGetRegexMatchSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HTTPHeader = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertHTTPHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HTTPHeader to be of type 'table'")
	if struct["Name"] then asserts.AssertHeaderName(struct["Name"]) end
	if struct["Value"] then asserts.AssertHeaderValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HTTPHeader[k], "HTTPHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HTTPHeader
-- <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [HeaderName] <p>The name of one of the headers in the sampled web request.</p>
-- * Value [HeaderValue] <p>The value of one of the headers in the sampled web request.</p>
-- @return HTTPHeader structure as a key-value pair table
function M.HTTPHeader(args)
	assert(args, "You must provide an argument table when creating HTTPHeader")
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
	asserts.AssertHTTPHeader(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLoggingConfigurationRequest = { ["LoggingConfiguration"] = true, nil }

function asserts.AssertPutLoggingConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLoggingConfigurationRequest to be of type 'table'")
	assert(struct["LoggingConfiguration"], "Expected key LoggingConfiguration to exist in table")
	if struct["LoggingConfiguration"] then asserts.AssertLoggingConfiguration(struct["LoggingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLoggingConfigurationRequest[k], "PutLoggingConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLoggingConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingConfiguration [LoggingConfiguration] <p>The Amazon Kinesis Data Firehose delivery streams that contains the inspected traffic information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL to monitor.</p>
-- Required key: LoggingConfiguration
-- @return PutLoggingConfigurationRequest structure as a key-value pair table
function M.PutLoggingConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutLoggingConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggingConfiguration"] = args["LoggingConfiguration"],
	}
	asserts.AssertPutLoggingConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertGeoMatchConstraintValue(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoMatchConstraintValue to be of type 'string'")
end

--  
function M.GeoMatchConstraintValue(str)
	asserts.AssertGeoMatchConstraintValue(str)
	return str
end

function asserts.AssertManagedKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ManagedKey to be of type 'string'")
end

--  
function M.ManagedKey(str)
	asserts.AssertManagedKey(str)
	return str
end

function asserts.AssertPredicateType(str)
	assert(str)
	assert(type(str) == "string", "Expected PredicateType to be of type 'string'")
end

--  
function M.PredicateType(str)
	asserts.AssertPredicateType(str)
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

function asserts.AssertChangeToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChangeToken(str)
	asserts.AssertChangeToken(str)
	return str
end

function asserts.AssertPositionalConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected PositionalConstraint to be of type 'string'")
end

--  
function M.PositionalConstraint(str)
	asserts.AssertPositionalConstraint(str)
	return str
end

function asserts.AssertPolicyString(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyString(str)
	asserts.AssertPolicyString(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertHTTPVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected HTTPVersion to be of type 'string'")
end

--  
function M.HTTPVersion(str)
	asserts.AssertHTTPVersion(str)
	return str
end

function asserts.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	asserts.AssertChangeAction(str)
	return str
end

function asserts.AssertRegexPatternString(str)
	assert(str)
	assert(type(str) == "string", "Expected RegexPatternString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegexPatternString(str)
	asserts.AssertRegexPatternString(str)
	return str
end

function asserts.AssertMatchFieldData(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchFieldData to be of type 'string'")
end

--  
function M.MatchFieldData(str)
	asserts.AssertMatchFieldData(str)
	return str
end

function asserts.AssertGeoMatchConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoMatchConstraintType to be of type 'string'")
end

--  
function M.GeoMatchConstraintType(str)
	asserts.AssertGeoMatchConstraintType(str)
	return str
end

function asserts.AssertWafRuleType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafRuleType to be of type 'string'")
end

--  
function M.WafRuleType(str)
	asserts.AssertWafRuleType(str)
	return str
end

function asserts.AssertNextMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextMarker to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextMarker(str)
	asserts.AssertNextMarker(str)
	return str
end

function asserts.AssertHTTPMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected HTTPMethod to be of type 'string'")
end

--  
function M.HTTPMethod(str)
	asserts.AssertHTTPMethod(str)
	return str
end

function asserts.AssertIPString(str)
	assert(str)
	assert(type(str) == "string", "Expected IPString to be of type 'string'")
end

--  
function M.IPString(str)
	asserts.AssertIPString(str)
	return str
end

function asserts.AssertWafActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafActionType to be of type 'string'")
end

--  
function M.WafActionType(str)
	asserts.AssertWafActionType(str)
	return str
end

function asserts.AssertIPSetDescriptorType(str)
	assert(str)
	assert(type(str) == "string", "Expected IPSetDescriptorType to be of type 'string'")
end

--  
function M.IPSetDescriptorType(str)
	asserts.AssertIPSetDescriptorType(str)
	return str
end

function asserts.AssertWafOverrideActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafOverrideActionType to be of type 'string'")
end

--  
function M.WafOverrideActionType(str)
	asserts.AssertWafOverrideActionType(str)
	return str
end

function asserts.AssertHeaderName(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderName to be of type 'string'")
end

--  
function M.HeaderName(str)
	asserts.AssertHeaderName(str)
	return str
end

function asserts.AssertTextTransformation(str)
	assert(str)
	assert(type(str) == "string", "Expected TextTransformation to be of type 'string'")
end

--  
function M.TextTransformation(str)
	asserts.AssertTextTransformation(str)
	return str
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertMatchFieldType(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchFieldType to be of type 'string'")
end

--  
function M.MatchFieldType(str)
	asserts.AssertMatchFieldType(str)
	return str
end

function asserts.AssertRateKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RateKey to be of type 'string'")
end

--  
function M.RateKey(str)
	asserts.AssertRateKey(str)
	return str
end

function asserts.AssertIPSetDescriptorValue(str)
	assert(str)
	assert(type(str) == "string", "Expected IPSetDescriptorValue to be of type 'string'")
end

--  
function M.IPSetDescriptorValue(str)
	asserts.AssertIPSetDescriptorValue(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertChangeTokenStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeTokenStatus to be of type 'string'")
end

--  
function M.ChangeTokenStatus(str)
	asserts.AssertChangeTokenStatus(str)
	return str
end

function asserts.AssertURIString(str)
	assert(str)
	assert(type(str) == "string", "Expected URIString to be of type 'string'")
end

--  
function M.URIString(str)
	asserts.AssertURIString(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertHeaderValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValue to be of type 'string'")
end

--  
function M.HeaderValue(str)
	asserts.AssertHeaderValue(str)
	return str
end

function asserts.AssertCountry(str)
	assert(str)
	assert(type(str) == "string", "Expected Country to be of type 'string'")
end

--  
function M.Country(str)
	asserts.AssertCountry(str)
	return str
end

function asserts.AssertGetSampledRequestsMaxItems(long)
	assert(long)
	assert(type(long) == "number", "Expected GetSampledRequestsMaxItems to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.GetSampledRequestsMaxItems(long)
	asserts.AssertGetSampledRequestsMaxItems(long)
	return long
end

function asserts.AssertPopulationSize(long)
	assert(long)
	assert(type(long) == "number", "Expected PopulationSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PopulationSize(long)
	asserts.AssertPopulationSize(long)
	return long
end

function asserts.AssertSampleWeight(long)
	assert(long)
	assert(type(long) == "number", "Expected SampleWeight to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SampleWeight(long)
	asserts.AssertSampleWeight(long)
	return long
end

function asserts.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	asserts.AssertSize(long)
	return long
end

function asserts.AssertRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected RateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.RateLimit(long)
	asserts.AssertRateLimit(long)
	return long
end

function asserts.AssertPaginationLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PaginationLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PaginationLimit(integer)
	asserts.AssertPaginationLimit(integer)
	return integer
end

function asserts.AssertRulePriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RulePriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RulePriority(integer)
	asserts.AssertRulePriority(integer)
	return integer
end

function asserts.AssertNegated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Negated to be of type 'boolean'")
end

function M.Negated(boolean)
	asserts.AssertNegated(boolean)
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

function asserts.AssertByteMatchTargetString(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected ByteMatchTargetString to be of type 'string'")
end

function M.ByteMatchTargetString(blob)
	asserts.AssertByteMatchTargetString(blob)
	return blob
end

function asserts.AssertWebACLSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected WebACLSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWebACLSummary(v)
	end
end

--  
-- List of WebACLSummary objects
function M.WebACLSummaries(list)
	asserts.AssertWebACLSummaries(list)
	return list
end

function asserts.AssertSizeConstraintSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraintSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSizeConstraintSetSummary(v)
	end
end

--  
-- List of SizeConstraintSetSummary objects
function M.SizeConstraintSetSummaries(list)
	asserts.AssertSizeConstraintSetSummaries(list)
	return list
end

function asserts.AssertRuleGroupSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleGroupSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleGroupSummary(v)
	end
end

--  
-- List of RuleGroupSummary objects
function M.RuleGroupSummaries(list)
	asserts.AssertRuleGroupSummaries(list)
	return list
end

function asserts.AssertSqlInjectionMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSqlInjectionMatchSetSummary(v)
	end
end

--  
-- List of SqlInjectionMatchSetSummary objects
function M.SqlInjectionMatchSetSummaries(list)
	asserts.AssertSqlInjectionMatchSetSummaries(list)
	return list
end

function asserts.AssertPredicates(list)
	assert(list)
	assert(type(list) == "table", "Expected Predicates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPredicate(v)
	end
end

--  
-- List of Predicate objects
function M.Predicates(list)
	asserts.AssertPredicates(list)
	return list
end

function asserts.AssertSubscribedRuleGroupSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscribedRuleGroupSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubscribedRuleGroupSummary(v)
	end
end

--  
-- List of SubscribedRuleGroupSummary objects
function M.SubscribedRuleGroupSummaries(list)
	asserts.AssertSubscribedRuleGroupSummaries(list)
	return list
end

function asserts.AssertSqlInjectionMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSqlInjectionMatchTuple(v)
	end
end

--  
-- List of SqlInjectionMatchTuple objects
function M.SqlInjectionMatchTuples(list)
	asserts.AssertSqlInjectionMatchTuples(list)
	return list
end

function asserts.AssertRedactedFields(list)
	assert(list)
	assert(type(list) == "table", "Expected RedactedFields to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFieldToMatch(v)
	end
end

--  
-- List of FieldToMatch objects
function M.RedactedFields(list)
	asserts.AssertRedactedFields(list)
	return list
end

function asserts.AssertRegexPatternSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexPatternSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRegexPatternSetSummary(v)
	end
end

--  
-- List of RegexPatternSetSummary objects
function M.RegexPatternSetSummaries(list)
	asserts.AssertRegexPatternSetSummaries(list)
	return list
end

function asserts.AssertRegexPatternStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexPatternStrings to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertRegexPatternString(v)
	end
end

--  
-- List of RegexPatternString objects
function M.RegexPatternStrings(list)
	asserts.AssertRegexPatternStrings(list)
	return list
end

function asserts.AssertWebACLUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected WebACLUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWebACLUpdate(v)
	end
end

--  
-- List of WebACLUpdate objects
function M.WebACLUpdates(list)
	asserts.AssertWebACLUpdates(list)
	return list
end

function asserts.AssertGeoMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected GeoMatchSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertGeoMatchSetUpdate(v)
	end
end

--  
-- List of GeoMatchSetUpdate objects
function M.GeoMatchSetUpdates(list)
	asserts.AssertGeoMatchSetUpdates(list)
	return list
end

function asserts.AssertByteMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertByteMatchSetSummary(v)
	end
end

--  
-- List of ByteMatchSetSummary objects
function M.ByteMatchSetSummaries(list)
	asserts.AssertByteMatchSetSummaries(list)
	return list
end

function asserts.AssertSizeConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSizeConstraint(v)
	end
end

--  
-- List of SizeConstraint objects
function M.SizeConstraints(list)
	asserts.AssertSizeConstraints(list)
	return list
end

function asserts.AssertIPSetDescriptors(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetDescriptors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIPSetDescriptor(v)
	end
end

--  
-- List of IPSetDescriptor objects
function M.IPSetDescriptors(list)
	asserts.AssertIPSetDescriptors(list)
	return list
end

function asserts.AssertActivatedRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivatedRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivatedRule(v)
	end
end

--  
-- List of ActivatedRule objects
function M.ActivatedRules(list)
	asserts.AssertActivatedRules(list)
	return list
end

function asserts.AssertRegexMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexMatchSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRegexMatchSetUpdate(v)
	end
end

--  
-- List of RegexMatchSetUpdate objects
function M.RegexMatchSetUpdates(list)
	asserts.AssertRegexMatchSetUpdates(list)
	return list
end

function asserts.AssertLoggingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected LoggingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoggingConfiguration(v)
	end
end

--  
-- List of LoggingConfiguration objects
function M.LoggingConfigurations(list)
	asserts.AssertLoggingConfigurations(list)
	return list
end

function asserts.AssertXssMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertXssMatchSetUpdate(v)
	end
end

--  
-- List of XssMatchSetUpdate objects
function M.XssMatchSetUpdates(list)
	asserts.AssertXssMatchSetUpdates(list)
	return list
end

function asserts.AssertXssMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXssMatchSetSummary(v)
	end
end

--  
-- List of XssMatchSetSummary objects
function M.XssMatchSetSummaries(list)
	asserts.AssertXssMatchSetSummaries(list)
	return list
end

function asserts.AssertIPSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIPSetSummary(v)
	end
end

--  
-- List of IPSetSummary objects
function M.IPSetSummaries(list)
	asserts.AssertIPSetSummaries(list)
	return list
end

function asserts.AssertManagedKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertManagedKey(v)
	end
end

--  
-- List of ManagedKey objects
function M.ManagedKeys(list)
	asserts.AssertManagedKeys(list)
	return list
end

function asserts.AssertRuleUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleUpdate(v)
	end
end

--  
-- List of RuleUpdate objects
function M.RuleUpdates(list)
	asserts.AssertRuleUpdates(list)
	return list
end

function asserts.AssertByteMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertByteMatchTuple(v)
	end
end

--  
-- List of ByteMatchTuple objects
function M.ByteMatchTuples(list)
	asserts.AssertByteMatchTuples(list)
	return list
end

function asserts.AssertRegexMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRegexMatchSetSummary(v)
	end
end

--  
-- List of RegexMatchSetSummary objects
function M.RegexMatchSetSummaries(list)
	asserts.AssertRegexMatchSetSummaries(list)
	return list
end

function asserts.AssertRuleSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleSummary(v)
	end
end

--  
-- List of RuleSummary objects
function M.RuleSummaries(list)
	asserts.AssertRuleSummaries(list)
	return list
end

function asserts.AssertHTTPHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected HTTPHeaders to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHTTPHeader(v)
	end
end

--  
-- List of HTTPHeader objects
function M.HTTPHeaders(list)
	asserts.AssertHTTPHeaders(list)
	return list
end

function asserts.AssertLogDestinationConfigs(list)
	assert(list)
	assert(type(list) == "table", "Expected LogDestinationConfigs to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.LogDestinationConfigs(list)
	asserts.AssertLogDestinationConfigs(list)
	return list
end

function asserts.AssertSqlInjectionMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSqlInjectionMatchSetUpdate(v)
	end
end

--  
-- List of SqlInjectionMatchSetUpdate objects
function M.SqlInjectionMatchSetUpdates(list)
	asserts.AssertSqlInjectionMatchSetUpdates(list)
	return list
end

function asserts.AssertXssMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXssMatchTuple(v)
	end
end

--  
-- List of XssMatchTuple objects
function M.XssMatchTuples(list)
	asserts.AssertXssMatchTuples(list)
	return list
end

function asserts.AssertIPSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertIPSetUpdate(v)
	end
end

--  
-- List of IPSetUpdate objects
function M.IPSetUpdates(list)
	asserts.AssertIPSetUpdates(list)
	return list
end

function asserts.AssertSizeConstraintSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraintSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSizeConstraintSetUpdate(v)
	end
end

--  
-- List of SizeConstraintSetUpdate objects
function M.SizeConstraintSetUpdates(list)
	asserts.AssertSizeConstraintSetUpdates(list)
	return list
end

function asserts.AssertRegexMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRegexMatchTuple(v)
	end
end

--  
-- List of RegexMatchTuple objects
function M.RegexMatchTuples(list)
	asserts.AssertRegexMatchTuples(list)
	return list
end

function asserts.AssertByteMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertByteMatchSetUpdate(v)
	end
end

--  
-- List of ByteMatchSetUpdate objects
function M.ByteMatchSetUpdates(list)
	asserts.AssertByteMatchSetUpdates(list)
	return list
end

function asserts.AssertSampledHTTPRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected SampledHTTPRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSampledHTTPRequest(v)
	end
end

--  
-- List of SampledHTTPRequest objects
function M.SampledHTTPRequests(list)
	asserts.AssertSampledHTTPRequests(list)
	return list
end

function asserts.AssertRegexPatternSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected RegexPatternSetUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRegexPatternSetUpdate(v)
	end
end

--  
-- List of RegexPatternSetUpdate objects
function M.RegexPatternSetUpdates(list)
	asserts.AssertRegexPatternSetUpdates(list)
	return list
end

function asserts.AssertGeoMatchConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected GeoMatchConstraints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGeoMatchConstraint(v)
	end
end

--  
-- List of GeoMatchConstraint objects
function M.GeoMatchConstraints(list)
	asserts.AssertGeoMatchConstraints(list)
	return list
end

function asserts.AssertGeoMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected GeoMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGeoMatchSetSummary(v)
	end
end

--  
-- List of GeoMatchSetSummary objects
function M.GeoMatchSetSummaries(list)
	asserts.AssertGeoMatchSetSummaries(list)
	return list
end

function asserts.AssertRuleGroupUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleGroupUpdates to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRuleGroupUpdate(v)
	end
end

--  
-- List of RuleGroupUpdate objects
function M.RuleGroupUpdates(list)
	asserts.AssertRuleGroupUpdates(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "waf.amazonaws.com"
		end
	end
	local ss = { "waf" }
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
--- Call CreateSizeConstraintSet asynchronously, invoking a callback when done
-- @param CreateSizeConstraintSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSizeConstraintSetAsync(CreateSizeConstraintSetRequest, cb)
	assert(CreateSizeConstraintSetRequest, "You must provide a CreateSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateSizeConstraintSet",
	}
	for header,value in pairs(CreateSizeConstraintSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSizeConstraintSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSizeConstraintSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSizeConstraintSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSizeConstraintSetSync(CreateSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSizeConstraintSetAsync(CreateSizeConstraintSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRegexMatchSet asynchronously, invoking a callback when done
-- @param UpdateRegexMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRegexMatchSetAsync(UpdateRegexMatchSetRequest, cb)
	assert(UpdateRegexMatchSetRequest, "You must provide a UpdateRegexMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRegexMatchSet",
	}
	for header,value in pairs(UpdateRegexMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRegexMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRegexMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRegexMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRegexMatchSetSync(UpdateRegexMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRegexMatchSetAsync(UpdateRegexMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPermissionPolicy asynchronously, invoking a callback when done
-- @param GetPermissionPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPermissionPolicyAsync(GetPermissionPolicyRequest, cb)
	assert(GetPermissionPolicyRequest, "You must provide a GetPermissionPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetPermissionPolicy",
	}
	for header,value in pairs(GetPermissionPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPermissionPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPermissionPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPermissionPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPermissionPolicySync(GetPermissionPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPermissionPolicyAsync(GetPermissionPolicyRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListIPSets",
	}
	for header,value in pairs(ListIPSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIPSetsRequest, headers, settings, cb)
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

--- Call DeleteRateBasedRule asynchronously, invoking a callback when done
-- @param DeleteRateBasedRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRateBasedRuleAsync(DeleteRateBasedRuleRequest, cb)
	assert(DeleteRateBasedRuleRequest, "You must provide a DeleteRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRateBasedRule",
	}
	for header,value in pairs(DeleteRateBasedRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRateBasedRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRateBasedRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRateBasedRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRateBasedRuleSync(DeleteRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRateBasedRuleAsync(DeleteRateBasedRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRegexPatternSet asynchronously, invoking a callback when done
-- @param GetRegexPatternSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRegexPatternSetAsync(GetRegexPatternSetRequest, cb)
	assert(GetRegexPatternSetRequest, "You must provide a GetRegexPatternSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRegexPatternSet",
	}
	for header,value in pairs(GetRegexPatternSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRegexPatternSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRegexPatternSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRegexPatternSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRegexPatternSetSync(GetRegexPatternSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegexPatternSetAsync(GetRegexPatternSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLoggingConfiguration asynchronously, invoking a callback when done
-- @param PutLoggingConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLoggingConfigurationAsync(PutLoggingConfigurationRequest, cb)
	assert(PutLoggingConfigurationRequest, "You must provide a PutLoggingConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.PutLoggingConfiguration",
	}
	for header,value in pairs(PutLoggingConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutLoggingConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLoggingConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLoggingConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutLoggingConfigurationSync(PutLoggingConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLoggingConfigurationAsync(PutLoggingConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRegexMatchSet asynchronously, invoking a callback when done
-- @param GetRegexMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRegexMatchSetAsync(GetRegexMatchSetRequest, cb)
	assert(GetRegexMatchSetRequest, "You must provide a GetRegexMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRegexMatchSet",
	}
	for header,value in pairs(GetRegexMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRegexMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRegexMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRegexMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRegexMatchSetSync(GetRegexMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRegexMatchSetAsync(GetRegexMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChangeTokenStatus asynchronously, invoking a callback when done
-- @param GetChangeTokenStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetChangeTokenStatusAsync(GetChangeTokenStatusRequest, cb)
	assert(GetChangeTokenStatusRequest, "You must provide a GetChangeTokenStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetChangeTokenStatus",
	}
	for header,value in pairs(GetChangeTokenStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetChangeTokenStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetChangeTokenStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetChangeTokenStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetChangeTokenStatusSync(GetChangeTokenStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChangeTokenStatusAsync(GetChangeTokenStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRegexPatternSet asynchronously, invoking a callback when done
-- @param UpdateRegexPatternSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRegexPatternSetAsync(UpdateRegexPatternSetRequest, cb)
	assert(UpdateRegexPatternSetRequest, "You must provide a UpdateRegexPatternSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRegexPatternSet",
	}
	for header,value in pairs(UpdateRegexPatternSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRegexPatternSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRegexPatternSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRegexPatternSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRegexPatternSetSync(UpdateRegexPatternSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRegexPatternSetAsync(UpdateRegexPatternSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param DeleteSqlInjectionMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSqlInjectionMatchSetAsync(DeleteSqlInjectionMatchSetRequest, cb)
	assert(DeleteSqlInjectionMatchSetRequest, "You must provide a DeleteSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteSqlInjectionMatchSet",
	}
	for header,value in pairs(DeleteSqlInjectionMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSqlInjectionMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSqlInjectionMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSqlInjectionMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSqlInjectionMatchSetSync(DeleteSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSqlInjectionMatchSetAsync(DeleteSqlInjectionMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListByteMatchSets asynchronously, invoking a callback when done
-- @param ListByteMatchSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListByteMatchSetsAsync(ListByteMatchSetsRequest, cb)
	assert(ListByteMatchSetsRequest, "You must provide a ListByteMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListByteMatchSets",
	}
	for header,value in pairs(ListByteMatchSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListByteMatchSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListByteMatchSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListByteMatchSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListByteMatchSetsSync(ListByteMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListByteMatchSetsAsync(ListByteMatchSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRule asynchronously, invoking a callback when done
-- @param CreateRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRuleAsync(CreateRuleRequest, cb)
	assert(CreateRuleRequest, "You must provide a CreateRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRule",
	}
	for header,value in pairs(CreateRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRuleSync(CreateRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRuleAsync(CreateRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGeoMatchSet asynchronously, invoking a callback when done
-- @param UpdateGeoMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGeoMatchSetAsync(UpdateGeoMatchSetRequest, cb)
	assert(UpdateGeoMatchSetRequest, "You must provide a UpdateGeoMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateGeoMatchSet",
	}
	for header,value in pairs(UpdateGeoMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGeoMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGeoMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGeoMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGeoMatchSetSync(UpdateGeoMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGeoMatchSetAsync(UpdateGeoMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRateBasedRuleManagedKeys asynchronously, invoking a callback when done
-- @param GetRateBasedRuleManagedKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRateBasedRuleManagedKeysAsync(GetRateBasedRuleManagedKeysRequest, cb)
	assert(GetRateBasedRuleManagedKeysRequest, "You must provide a GetRateBasedRuleManagedKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRateBasedRuleManagedKeys",
	}
	for header,value in pairs(GetRateBasedRuleManagedKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRateBasedRuleManagedKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRateBasedRuleManagedKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRateBasedRuleManagedKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRateBasedRuleManagedKeysSync(GetRateBasedRuleManagedKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRateBasedRuleManagedKeysAsync(GetRateBasedRuleManagedKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRuleGroups asynchronously, invoking a callback when done
-- @param ListRuleGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRuleGroupsAsync(ListRuleGroupsRequest, cb)
	assert(ListRuleGroupsRequest, "You must provide a ListRuleGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRuleGroups",
	}
	for header,value in pairs(ListRuleGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRuleGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRuleGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRuleGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRuleGroupsSync(ListRuleGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRuleGroupsAsync(ListRuleGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param CreateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSqlInjectionMatchSetAsync(CreateSqlInjectionMatchSetRequest, cb)
	assert(CreateSqlInjectionMatchSetRequest, "You must provide a CreateSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateSqlInjectionMatchSet",
	}
	for header,value in pairs(CreateSqlInjectionMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSqlInjectionMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSqlInjectionMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSqlInjectionMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSqlInjectionMatchSetSync(CreateSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSqlInjectionMatchSetAsync(CreateSqlInjectionMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param UpdateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSqlInjectionMatchSetAsync(UpdateSqlInjectionMatchSetRequest, cb)
	assert(UpdateSqlInjectionMatchSetRequest, "You must provide a UpdateSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateSqlInjectionMatchSet",
	}
	for header,value in pairs(UpdateSqlInjectionMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSqlInjectionMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSqlInjectionMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSqlInjectionMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSqlInjectionMatchSetSync(UpdateSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSqlInjectionMatchSetAsync(UpdateSqlInjectionMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRateBasedRules asynchronously, invoking a callback when done
-- @param ListRateBasedRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRateBasedRulesAsync(ListRateBasedRulesRequest, cb)
	assert(ListRateBasedRulesRequest, "You must provide a ListRateBasedRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRateBasedRules",
	}
	for header,value in pairs(ListRateBasedRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRateBasedRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRateBasedRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRateBasedRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRateBasedRulesSync(ListRateBasedRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRateBasedRulesAsync(ListRateBasedRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRegexMatchSets asynchronously, invoking a callback when done
-- @param ListRegexMatchSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRegexMatchSetsAsync(ListRegexMatchSetsRequest, cb)
	assert(ListRegexMatchSetsRequest, "You must provide a ListRegexMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRegexMatchSets",
	}
	for header,value in pairs(ListRegexMatchSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRegexMatchSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRegexMatchSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRegexMatchSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRegexMatchSetsSync(ListRegexMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRegexMatchSetsAsync(ListRegexMatchSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutPermissionPolicy asynchronously, invoking a callback when done
-- @param PutPermissionPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutPermissionPolicyAsync(PutPermissionPolicyRequest, cb)
	assert(PutPermissionPolicyRequest, "You must provide a PutPermissionPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.PutPermissionPolicy",
	}
	for header,value in pairs(PutPermissionPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutPermissionPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutPermissionPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPermissionPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutPermissionPolicySync(PutPermissionPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPermissionPolicyAsync(PutPermissionPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteByteMatchSet asynchronously, invoking a callback when done
-- @param DeleteByteMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteByteMatchSetAsync(DeleteByteMatchSetRequest, cb)
	assert(DeleteByteMatchSetRequest, "You must provide a DeleteByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteByteMatchSet",
	}
	for header,value in pairs(DeleteByteMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteByteMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteByteMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteByteMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteByteMatchSetSync(DeleteByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteByteMatchSetAsync(DeleteByteMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRegexPatternSet asynchronously, invoking a callback when done
-- @param DeleteRegexPatternSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRegexPatternSetAsync(DeleteRegexPatternSetRequest, cb)
	assert(DeleteRegexPatternSetRequest, "You must provide a DeleteRegexPatternSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRegexPatternSet",
	}
	for header,value in pairs(DeleteRegexPatternSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRegexPatternSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRegexPatternSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRegexPatternSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRegexPatternSetSync(DeleteRegexPatternSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRegexPatternSetAsync(DeleteRegexPatternSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRegexPatternSet asynchronously, invoking a callback when done
-- @param CreateRegexPatternSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRegexPatternSetAsync(CreateRegexPatternSetRequest, cb)
	assert(CreateRegexPatternSetRequest, "You must provide a CreateRegexPatternSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRegexPatternSet",
	}
	for header,value in pairs(CreateRegexPatternSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRegexPatternSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRegexPatternSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRegexPatternSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRegexPatternSetSync(CreateRegexPatternSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRegexPatternSetAsync(CreateRegexPatternSetRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetIPSet",
	}
	for header,value in pairs(GetIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIPSetRequest, headers, settings, cb)
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

--- Call ListSqlInjectionMatchSets asynchronously, invoking a callback when done
-- @param ListSqlInjectionMatchSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSqlInjectionMatchSetsAsync(ListSqlInjectionMatchSetsRequest, cb)
	assert(ListSqlInjectionMatchSetsRequest, "You must provide a ListSqlInjectionMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListSqlInjectionMatchSets",
	}
	for header,value in pairs(ListSqlInjectionMatchSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSqlInjectionMatchSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSqlInjectionMatchSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSqlInjectionMatchSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSqlInjectionMatchSetsSync(ListSqlInjectionMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSqlInjectionMatchSetsAsync(ListSqlInjectionMatchSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRule asynchronously, invoking a callback when done
-- @param DeleteRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRuleAsync(DeleteRuleRequest, cb)
	assert(DeleteRuleRequest, "You must provide a DeleteRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRule",
	}
	for header,value in pairs(DeleteRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRuleSync(DeleteRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleAsync(DeleteRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscribedRuleGroups asynchronously, invoking a callback when done
-- @param ListSubscribedRuleGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSubscribedRuleGroupsAsync(ListSubscribedRuleGroupsRequest, cb)
	assert(ListSubscribedRuleGroupsRequest, "You must provide a ListSubscribedRuleGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListSubscribedRuleGroups",
	}
	for header,value in pairs(ListSubscribedRuleGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSubscribedRuleGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSubscribedRuleGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscribedRuleGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSubscribedRuleGroupsSync(ListSubscribedRuleGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscribedRuleGroupsAsync(ListSubscribedRuleGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteXssMatchSet asynchronously, invoking a callback when done
-- @param DeleteXssMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteXssMatchSetAsync(DeleteXssMatchSetRequest, cb)
	assert(DeleteXssMatchSetRequest, "You must provide a DeleteXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteXssMatchSet",
	}
	for header,value in pairs(DeleteXssMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteXssMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteXssMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteXssMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteXssMatchSetSync(DeleteXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteXssMatchSetAsync(DeleteXssMatchSetRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateIPSet",
	}
	for header,value in pairs(UpdateIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateIPSetRequest, headers, settings, cb)
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

--- Call ListWebACLs asynchronously, invoking a callback when done
-- @param ListWebACLsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListWebACLsAsync(ListWebACLsRequest, cb)
	assert(ListWebACLsRequest, "You must provide a ListWebACLsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListWebACLs",
	}
	for header,value in pairs(ListWebACLsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListWebACLsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListWebACLs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWebACLsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListWebACLsSync(ListWebACLsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWebACLsAsync(ListWebACLsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRuleGroup asynchronously, invoking a callback when done
-- @param UpdateRuleGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRuleGroupAsync(UpdateRuleGroupRequest, cb)
	assert(UpdateRuleGroupRequest, "You must provide a UpdateRuleGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRuleGroup",
	}
	for header,value in pairs(UpdateRuleGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRuleGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRuleGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRuleGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRuleGroupSync(UpdateRuleGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRuleGroupAsync(UpdateRuleGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRule asynchronously, invoking a callback when done
-- @param UpdateRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRuleAsync(UpdateRuleRequest, cb)
	assert(UpdateRuleRequest, "You must provide a UpdateRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRule",
	}
	for header,value in pairs(UpdateRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRuleSync(UpdateRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRuleAsync(UpdateRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetByteMatchSet asynchronously, invoking a callback when done
-- @param GetByteMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetByteMatchSetAsync(GetByteMatchSetRequest, cb)
	assert(GetByteMatchSetRequest, "You must provide a GetByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetByteMatchSet",
	}
	for header,value in pairs(GetByteMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetByteMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetByteMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetByteMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetByteMatchSetSync(GetByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetByteMatchSetAsync(GetByteMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateXssMatchSet asynchronously, invoking a callback when done
-- @param CreateXssMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateXssMatchSetAsync(CreateXssMatchSetRequest, cb)
	assert(CreateXssMatchSetRequest, "You must provide a CreateXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateXssMatchSet",
	}
	for header,value in pairs(CreateXssMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateXssMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateXssMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateXssMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateXssMatchSetSync(CreateXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateXssMatchSetAsync(CreateXssMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRateBasedRule asynchronously, invoking a callback when done
-- @param UpdateRateBasedRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRateBasedRuleAsync(UpdateRateBasedRuleRequest, cb)
	assert(UpdateRateBasedRuleRequest, "You must provide a UpdateRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRateBasedRule",
	}
	for header,value in pairs(UpdateRateBasedRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRateBasedRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRateBasedRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRateBasedRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRateBasedRuleSync(UpdateRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRateBasedRuleAsync(UpdateRateBasedRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoggingConfiguration asynchronously, invoking a callback when done
-- @param GetLoggingConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoggingConfigurationAsync(GetLoggingConfigurationRequest, cb)
	assert(GetLoggingConfigurationRequest, "You must provide a GetLoggingConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetLoggingConfiguration",
	}
	for header,value in pairs(GetLoggingConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoggingConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoggingConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggingConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoggingConfigurationSync(GetLoggingConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggingConfigurationAsync(GetLoggingConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateByteMatchSet asynchronously, invoking a callback when done
-- @param CreateByteMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateByteMatchSetAsync(CreateByteMatchSetRequest, cb)
	assert(CreateByteMatchSetRequest, "You must provide a CreateByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateByteMatchSet",
	}
	for header,value in pairs(CreateByteMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateByteMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateByteMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateByteMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateByteMatchSetSync(CreateByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateByteMatchSetAsync(CreateByteMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListXssMatchSets asynchronously, invoking a callback when done
-- @param ListXssMatchSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListXssMatchSetsAsync(ListXssMatchSetsRequest, cb)
	assert(ListXssMatchSetsRequest, "You must provide a ListXssMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListXssMatchSets",
	}
	for header,value in pairs(ListXssMatchSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListXssMatchSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListXssMatchSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListXssMatchSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListXssMatchSetsSync(ListXssMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListXssMatchSetsAsync(ListXssMatchSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSizeConstraintSet asynchronously, invoking a callback when done
-- @param GetSizeConstraintSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSizeConstraintSetAsync(GetSizeConstraintSetRequest, cb)
	assert(GetSizeConstraintSetRequest, "You must provide a GetSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSizeConstraintSet",
	}
	for header,value in pairs(GetSizeConstraintSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSizeConstraintSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSizeConstraintSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSizeConstraintSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSizeConstraintSetSync(GetSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSizeConstraintSetAsync(GetSizeConstraintSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLoggingConfigurations asynchronously, invoking a callback when done
-- @param ListLoggingConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLoggingConfigurationsAsync(ListLoggingConfigurationsRequest, cb)
	assert(ListLoggingConfigurationsRequest, "You must provide a ListLoggingConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListLoggingConfigurations",
	}
	for header,value in pairs(ListLoggingConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListLoggingConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLoggingConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLoggingConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListLoggingConfigurationsSync(ListLoggingConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLoggingConfigurationsAsync(ListLoggingConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGeoMatchSet asynchronously, invoking a callback when done
-- @param GetGeoMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGeoMatchSetAsync(GetGeoMatchSetRequest, cb)
	assert(GetGeoMatchSetRequest, "You must provide a GetGeoMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetGeoMatchSet",
	}
	for header,value in pairs(GetGeoMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetGeoMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGeoMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGeoMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGeoMatchSetSync(GetGeoMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGeoMatchSetAsync(GetGeoMatchSetRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateIPSet",
	}
	for header,value in pairs(CreateIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateIPSetRequest, headers, settings, cb)
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

--- Call DeleteRuleGroup asynchronously, invoking a callback when done
-- @param DeleteRuleGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRuleGroupAsync(DeleteRuleGroupRequest, cb)
	assert(DeleteRuleGroupRequest, "You must provide a DeleteRuleGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRuleGroup",
	}
	for header,value in pairs(DeleteRuleGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRuleGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRuleGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRuleGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRuleGroupSync(DeleteRuleGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleGroupAsync(DeleteRuleGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetXssMatchSet asynchronously, invoking a callback when done
-- @param GetXssMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetXssMatchSetAsync(GetXssMatchSetRequest, cb)
	assert(GetXssMatchSetRequest, "You must provide a GetXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetXssMatchSet",
	}
	for header,value in pairs(GetXssMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetXssMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetXssMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetXssMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetXssMatchSetSync(GetXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetXssMatchSetAsync(GetXssMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGeoMatchSets asynchronously, invoking a callback when done
-- @param ListGeoMatchSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGeoMatchSetsAsync(ListGeoMatchSetsRequest, cb)
	assert(ListGeoMatchSetsRequest, "You must provide a ListGeoMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListGeoMatchSets",
	}
	for header,value in pairs(ListGeoMatchSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGeoMatchSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGeoMatchSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGeoMatchSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGeoMatchSetsSync(ListGeoMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGeoMatchSetsAsync(ListGeoMatchSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoggingConfiguration asynchronously, invoking a callback when done
-- @param DeleteLoggingConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoggingConfigurationAsync(DeleteLoggingConfigurationRequest, cb)
	assert(DeleteLoggingConfigurationRequest, "You must provide a DeleteLoggingConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteLoggingConfiguration",
	}
	for header,value in pairs(DeleteLoggingConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoggingConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoggingConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoggingConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoggingConfigurationSync(DeleteLoggingConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoggingConfigurationAsync(DeleteLoggingConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRateBasedRule asynchronously, invoking a callback when done
-- @param GetRateBasedRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRateBasedRuleAsync(GetRateBasedRuleRequest, cb)
	assert(GetRateBasedRuleRequest, "You must provide a GetRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRateBasedRule",
	}
	for header,value in pairs(GetRateBasedRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRateBasedRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRateBasedRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRateBasedRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRateBasedRuleSync(GetRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRateBasedRuleAsync(GetRateBasedRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGeoMatchSet asynchronously, invoking a callback when done
-- @param DeleteGeoMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGeoMatchSetAsync(DeleteGeoMatchSetRequest, cb)
	assert(DeleteGeoMatchSetRequest, "You must provide a DeleteGeoMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteGeoMatchSet",
	}
	for header,value in pairs(DeleteGeoMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGeoMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGeoMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGeoMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGeoMatchSetSync(DeleteGeoMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGeoMatchSetAsync(DeleteGeoMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRateBasedRule asynchronously, invoking a callback when done
-- @param CreateRateBasedRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRateBasedRuleAsync(CreateRateBasedRuleRequest, cb)
	assert(CreateRateBasedRuleRequest, "You must provide a CreateRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRateBasedRule",
	}
	for header,value in pairs(CreateRateBasedRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRateBasedRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRateBasedRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRateBasedRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRateBasedRuleSync(CreateRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRateBasedRuleAsync(CreateRateBasedRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRuleGroup asynchronously, invoking a callback when done
-- @param GetRuleGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRuleGroupAsync(GetRuleGroupRequest, cb)
	assert(GetRuleGroupRequest, "You must provide a GetRuleGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRuleGroup",
	}
	for header,value in pairs(GetRuleGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRuleGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRuleGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRuleGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRuleGroupSync(GetRuleGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRuleGroupAsync(GetRuleGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRules asynchronously, invoking a callback when done
-- @param ListRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRulesAsync(ListRulesRequest, cb)
	assert(ListRulesRequest, "You must provide a ListRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRules",
	}
	for header,value in pairs(ListRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRulesSync(ListRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesAsync(ListRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSampledRequests asynchronously, invoking a callback when done
-- @param GetSampledRequestsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSampledRequestsAsync(GetSampledRequestsRequest, cb)
	assert(GetSampledRequestsRequest, "You must provide a GetSampledRequestsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSampledRequests",
	}
	for header,value in pairs(GetSampledRequestsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSampledRequestsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSampledRequests synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSampledRequestsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSampledRequestsSync(GetSampledRequestsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSampledRequestsAsync(GetSampledRequestsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateWebACL asynchronously, invoking a callback when done
-- @param CreateWebACLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateWebACLAsync(CreateWebACLRequest, cb)
	assert(CreateWebACLRequest, "You must provide a CreateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateWebACL",
	}
	for header,value in pairs(CreateWebACLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateWebACLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateWebACLSync(CreateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateWebACLAsync(CreateWebACLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteWebACL asynchronously, invoking a callback when done
-- @param DeleteWebACLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteWebACLAsync(DeleteWebACLRequest, cb)
	assert(DeleteWebACLRequest, "You must provide a DeleteWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteWebACL",
	}
	for header,value in pairs(DeleteWebACLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteWebACLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteWebACLSync(DeleteWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteWebACLAsync(DeleteWebACLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRuleGroup asynchronously, invoking a callback when done
-- @param CreateRuleGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRuleGroupAsync(CreateRuleGroupRequest, cb)
	assert(CreateRuleGroupRequest, "You must provide a CreateRuleGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRuleGroup",
	}
	for header,value in pairs(CreateRuleGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRuleGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRuleGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRuleGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRuleGroupSync(CreateRuleGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRuleGroupAsync(CreateRuleGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRule asynchronously, invoking a callback when done
-- @param GetRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRuleAsync(GetRuleRequest, cb)
	assert(GetRuleRequest, "You must provide a GetRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRule",
	}
	for header,value in pairs(GetRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRuleSync(GetRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRuleAsync(GetRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSizeConstraintSet asynchronously, invoking a callback when done
-- @param DeleteSizeConstraintSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSizeConstraintSetAsync(DeleteSizeConstraintSetRequest, cb)
	assert(DeleteSizeConstraintSetRequest, "You must provide a DeleteSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteSizeConstraintSet",
	}
	for header,value in pairs(DeleteSizeConstraintSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSizeConstraintSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSizeConstraintSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSizeConstraintSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSizeConstraintSetSync(DeleteSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSizeConstraintSetAsync(DeleteSizeConstraintSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSizeConstraintSet asynchronously, invoking a callback when done
-- @param UpdateSizeConstraintSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSizeConstraintSetAsync(UpdateSizeConstraintSetRequest, cb)
	assert(UpdateSizeConstraintSetRequest, "You must provide a UpdateSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateSizeConstraintSet",
	}
	for header,value in pairs(UpdateSizeConstraintSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSizeConstraintSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSizeConstraintSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSizeConstraintSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSizeConstraintSetSync(UpdateSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSizeConstraintSetAsync(UpdateSizeConstraintSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActivatedRulesInRuleGroup asynchronously, invoking a callback when done
-- @param ListActivatedRulesInRuleGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListActivatedRulesInRuleGroupAsync(ListActivatedRulesInRuleGroupRequest, cb)
	assert(ListActivatedRulesInRuleGroupRequest, "You must provide a ListActivatedRulesInRuleGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListActivatedRulesInRuleGroup",
	}
	for header,value in pairs(ListActivatedRulesInRuleGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListActivatedRulesInRuleGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListActivatedRulesInRuleGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActivatedRulesInRuleGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListActivatedRulesInRuleGroupSync(ListActivatedRulesInRuleGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActivatedRulesInRuleGroupAsync(ListActivatedRulesInRuleGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateWebACL asynchronously, invoking a callback when done
-- @param UpdateWebACLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateWebACLAsync(UpdateWebACLRequest, cb)
	assert(UpdateWebACLRequest, "You must provide a UpdateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateWebACL",
	}
	for header,value in pairs(UpdateWebACLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateWebACLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateWebACLSync(UpdateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateWebACLAsync(UpdateWebACLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChangeToken asynchronously, invoking a callback when done
-- @param GetChangeTokenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetChangeTokenAsync(GetChangeTokenRequest, cb)
	assert(GetChangeTokenRequest, "You must provide a GetChangeTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetChangeToken",
	}
	for header,value in pairs(GetChangeTokenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetChangeTokenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetChangeToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetChangeTokenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetChangeTokenSync(GetChangeTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChangeTokenAsync(GetChangeTokenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRegexMatchSet asynchronously, invoking a callback when done
-- @param DeleteRegexMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRegexMatchSetAsync(DeleteRegexMatchSetRequest, cb)
	assert(DeleteRegexMatchSetRequest, "You must provide a DeleteRegexMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRegexMatchSet",
	}
	for header,value in pairs(DeleteRegexMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRegexMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRegexMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRegexMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRegexMatchSetSync(DeleteRegexMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRegexMatchSetAsync(DeleteRegexMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetWebACL asynchronously, invoking a callback when done
-- @param GetWebACLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetWebACLAsync(GetWebACLRequest, cb)
	assert(GetWebACLRequest, "You must provide a GetWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetWebACL",
	}
	for header,value in pairs(GetWebACLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetWebACLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetWebACLSync(GetWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetWebACLAsync(GetWebACLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePermissionPolicy asynchronously, invoking a callback when done
-- @param DeletePermissionPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePermissionPolicyAsync(DeletePermissionPolicyRequest, cb)
	assert(DeletePermissionPolicyRequest, "You must provide a DeletePermissionPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeletePermissionPolicy",
	}
	for header,value in pairs(DeletePermissionPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePermissionPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePermissionPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePermissionPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePermissionPolicySync(DeletePermissionPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePermissionPolicyAsync(DeletePermissionPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateByteMatchSet asynchronously, invoking a callback when done
-- @param UpdateByteMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateByteMatchSetAsync(UpdateByteMatchSetRequest, cb)
	assert(UpdateByteMatchSetRequest, "You must provide a UpdateByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateByteMatchSet",
	}
	for header,value in pairs(UpdateByteMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateByteMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateByteMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateByteMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateByteMatchSetSync(UpdateByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateByteMatchSetAsync(UpdateByteMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateXssMatchSet asynchronously, invoking a callback when done
-- @param UpdateXssMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateXssMatchSetAsync(UpdateXssMatchSetRequest, cb)
	assert(UpdateXssMatchSetRequest, "You must provide a UpdateXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateXssMatchSet",
	}
	for header,value in pairs(UpdateXssMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateXssMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateXssMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateXssMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateXssMatchSetSync(UpdateXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateXssMatchSetAsync(UpdateXssMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRegexMatchSet asynchronously, invoking a callback when done
-- @param CreateRegexMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRegexMatchSetAsync(CreateRegexMatchSetRequest, cb)
	assert(CreateRegexMatchSetRequest, "You must provide a CreateRegexMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRegexMatchSet",
	}
	for header,value in pairs(CreateRegexMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRegexMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRegexMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRegexMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRegexMatchSetSync(CreateRegexMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRegexMatchSetAsync(CreateRegexMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param GetSqlInjectionMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSqlInjectionMatchSetAsync(GetSqlInjectionMatchSetRequest, cb)
	assert(GetSqlInjectionMatchSetRequest, "You must provide a GetSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSqlInjectionMatchSet",
	}
	for header,value in pairs(GetSqlInjectionMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSqlInjectionMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSqlInjectionMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSqlInjectionMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSqlInjectionMatchSetSync(GetSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSqlInjectionMatchSetAsync(GetSqlInjectionMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRegexPatternSets asynchronously, invoking a callback when done
-- @param ListRegexPatternSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRegexPatternSetsAsync(ListRegexPatternSetsRequest, cb)
	assert(ListRegexPatternSetsRequest, "You must provide a ListRegexPatternSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRegexPatternSets",
	}
	for header,value in pairs(ListRegexPatternSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRegexPatternSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRegexPatternSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRegexPatternSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRegexPatternSetsSync(ListRegexPatternSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRegexPatternSetsAsync(ListRegexPatternSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSizeConstraintSets asynchronously, invoking a callback when done
-- @param ListSizeConstraintSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSizeConstraintSetsAsync(ListSizeConstraintSetsRequest, cb)
	assert(ListSizeConstraintSetsRequest, "You must provide a ListSizeConstraintSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListSizeConstraintSets",
	}
	for header,value in pairs(ListSizeConstraintSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSizeConstraintSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSizeConstraintSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSizeConstraintSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSizeConstraintSetsSync(ListSizeConstraintSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSizeConstraintSetsAsync(ListSizeConstraintSetsRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteIPSet",
	}
	for header,value in pairs(DeleteIPSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIPSetRequest, headers, settings, cb)
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

--- Call CreateGeoMatchSet asynchronously, invoking a callback when done
-- @param CreateGeoMatchSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGeoMatchSetAsync(CreateGeoMatchSetRequest, cb)
	assert(CreateGeoMatchSetRequest, "You must provide a CreateGeoMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateGeoMatchSet",
	}
	for header,value in pairs(CreateGeoMatchSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGeoMatchSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGeoMatchSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGeoMatchSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGeoMatchSetSync(CreateGeoMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGeoMatchSetAsync(CreateGeoMatchSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
