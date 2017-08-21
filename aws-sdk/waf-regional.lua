--- GENERATED CODE - DO NOT MODIFY
-- AWS WAF Regional (waf-regional-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "waf-regional",
	service_abbreviation = "WAF Regional",
	service_full_name = "AWS WAF Regional",
	signature_version = "v4",
	target_prefix = "AWSWAF_Regional_20161128",
	timestamp_format = "",
	global_endpoint = "",
	uid = "waf-regional-2016-11-28",
}

local keys = {}
local asserts = {}

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
	assert(args, "You must provdide an argument table when creating GetIPSetRequest")
	local t = { 
		["IPSetId"] = args["IPSetId"],
	}
	asserts.AssertGetIPSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRateBasedRulesRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRateBasedRulesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating TimeWindow")
	local t = { 
		["EndTime"] = args["EndTime"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertTimeWindow(t)
	return t
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
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for cross-site scripting attacks.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- @return XssMatchTuple structure as a key-value pair table
function M.XssMatchTuple(args)
	assert(args, "You must provdide an argument table when creating XssMatchTuple")
	local t = { 
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertXssMatchTuple(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetChangeTokenStatusResponse")
	local t = { 
		["ChangeTokenStatus"] = args["ChangeTokenStatus"],
	}
	asserts.AssertGetChangeTokenStatusResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating WafAction")
	local t = { 
		["Type"] = args["Type"],
	}
	asserts.AssertWafAction(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRuleRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertDeleteRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRuleRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertUpdateRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListByteMatchSetsResponse")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["ByteMatchSets"] = args["ByteMatchSets"],
	}
	asserts.AssertListByteMatchSetsResponse(t)
	return t
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
-- <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Negated [Negated] <p>Set <code>Negated</code> to <code>False</code> if you want AWS WAF to allow, block, or count requests based on the settings in the specified <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, or <a>SizeConstraintSet</a>. For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow or block requests based on that IP address.</p> <p>Set <code>Negated</code> to <code>True</code> if you want AWS WAF to allow or block a request based on the negation of the settings in the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, or <a>SizeConstraintSet</a>. For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow, block, or count requests based on all IP addresses <i>except</i> <code>192.0.2.44</code>.</p>
-- * Type [PredicateType] <p>The type of predicate in a <code>Rule</code>, such as <code>ByteMatchSet</code> or <code>IPSet</code>.</p>
-- * DataId [ResourceId] <p>A unique identifier for a predicate in a <code>Rule</code>, such as <code>ByteMatchSetId</code> or <code>IPSetId</code>. The ID is returned by the corresponding <code>Create</code> or <code>List</code> command.</p>
-- Required key: Negated
-- Required key: Type
-- Required key: DataId
-- @return Predicate structure as a key-value pair table
function M.Predicate(args)
	assert(args, "You must provdide an argument table when creating Predicate")
	local t = { 
		["Negated"] = args["Negated"],
		["Type"] = args["Type"],
		["DataId"] = args["DataId"],
	}
	asserts.AssertPredicate(t)
	return t
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
-- * Updates [IPSetUpdates] <p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code> </p> </li> <li> <p> <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code> </p> </li> </ul>
-- Required key: IPSetId
-- Required key: ChangeToken
-- Required key: Updates
-- @return UpdateIPSetRequest structure as a key-value pair table
function M.UpdateIPSetRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateIPSetRequest")
	local t = { 
		["IPSetId"] = args["IPSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateIPSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteByteMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSqlInjectionMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateIPSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateIPSetResponse(t)
	return t
end

keys.WAFNonexistentContainerException = { ["message"] = true, nil }

function asserts.AssertWAFNonexistentContainerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonexistentContainerException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFNonexistentContainerException[k], "WAFNonexistentContainerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonexistentContainerException
-- <p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p> <ul> <li> <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p> </li> <li> <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code> that doesn't exist.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFNonexistentContainerException structure as a key-value pair table
function M.WAFNonexistentContainerException(args)
	assert(args, "You must provdide an argument table when creating WAFNonexistentContainerException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFNonexistentContainerException(t)
	return t
end

keys.WAFInvalidAccountException = { nil }

function asserts.AssertWAFInvalidAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidAccountException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.WAFInvalidAccountException[k], "WAFInvalidAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidAccountException
-- <p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return WAFInvalidAccountException structure as a key-value pair table
function M.WAFInvalidAccountException(args)
	assert(args, "You must provdide an argument table when creating WAFInvalidAccountException")
	local t = { 
	}
	asserts.AssertWAFInvalidAccountException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating WebACLSummary")
	local t = { 
		["WebACLId"] = args["WebACLId"],
		["Name"] = args["Name"],
	}
	asserts.AssertWebACLSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
	}
	asserts.AssertGetByteMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRateBasedRuleRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["RateLimit"] = args["RateLimit"],
		["RateKey"] = args["RateKey"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateRateBasedRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRateBasedRuleResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteWebACLRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertDeleteWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListIPSetsResponse")
	local t = { 
		["IPSets"] = args["IPSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListIPSetsResponse(t)
	return t
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
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p>Note that if you choose <code>BODY</code> for the value of <code>Type</code>, you must choose <code>NONE</code> for <code>TextTransformation</code> because CloudFront forwards only the first 8192 bytes for inspection. </p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for the size constraint.</p>
-- * Size [Size] <p>The size in bytes that you want AWS WAF to compare against the size of the specified <code>FieldToMatch</code>. AWS WAF uses this in combination with <code>ComparisonOperator</code> and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p> <p>Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).</p> <p>If you specify <code>URI</code> for the value of <code>Type</code>, the / in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- Required key: ComparisonOperator
-- Required key: Size
-- @return SizeConstraint structure as a key-value pair table
function M.SizeConstraint(args)
	assert(args, "You must provdide an argument table when creating SizeConstraint")
	local t = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
		["Size"] = args["Size"],
	}
	asserts.AssertSizeConstraint(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertCreateRuleResponse(t)
	return t
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
-- * Data [MatchFieldData] <p>When the value of <code>Type</code> is <code>HEADER</code>, enter the name of the header that you want AWS WAF to search, for example, <code>User-Agent</code> or <code>Referer</code>. If the value of <code>Type</code> is any other value, omit <code>Data</code>.</p> <p>The name of the header is not case sensitive.</p>
-- * Type [MatchFieldType] <p>The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:</p> <ul> <li> <p> <code>HEADER</code>: A specified request header, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header. If you choose <code>HEADER</code> for the type, specify the name of the header in <code>Data</code>.</p> </li> <li> <p> <code>METHOD</code>: The HTTP method, which indicated the type of operation that the request is asking the origin to perform. Amazon CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p> </li> <li> <p> <code>QUERY_STRING</code>: A query string, which is the part of a URL that appears after a <code>?</code> character, if any.</p> </li> <li> <p> <code>URI</code>: The part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p> </li> <li> <p> <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see <a>CreateSizeConstraintSet</a>. </p> </li> </ul>
-- Required key: Type
-- @return FieldToMatch structure as a key-value pair table
function M.FieldToMatch(args)
	assert(args, "You must provdide an argument table when creating FieldToMatch")
	local t = { 
		["Data"] = args["Data"],
		["Type"] = args["Type"],
	}
	asserts.AssertFieldToMatch(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertDeleteSqlInjectionMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
	}
	asserts.AssertGetSizeConstraintSetRequest(t)
	return t
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
-- * TargetString [ByteMatchTargetString] <p>The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you specified in <code>FieldToMatch</code>. The maximum length of the value is 50 bytes.</p> <p>Valid values depend on the values that you specified for <code>FieldToMatch</code>:</p> <ul> <li> <p> <code>HEADER</code>: The value that you want AWS WAF to search for in the request header that you specified in <a>FieldToMatch</a>, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.</p> </li> <li> <p> <code>METHOD</code>: The HTTP method, which indicates the type of operation specified in the request. CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p> </li> <li> <p> <code>QUERY_STRING</code>: The value that you want AWS WAF to search for in the query string, which is the part of a URL that appears after a <code>?</code> character.</p> </li> <li> <p> <code>URI</code>: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p> </li> <li> <p> <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see <a>CreateSizeConstraintSet</a>. </p> </li> </ul> <p>If <code>TargetString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p> <p> <b>If you're using the AWS WAF API</b> </p> <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p> <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the value of <code>Data</code> is <code>User-Agent</code>. If you want to search the <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode <code>BadBot</code> using MIME base64 encoding and include the resulting value, <code>QmFkQm90</code>, in the value of <code>TargetString</code>.</p> <p> <b>If you're using the AWS CLI or one of the AWS SDKs</b> </p> <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>
-- * PositionalConstraint [PositionalConstraint] <p>Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:</p> <p> <b>CONTAINS</b> </p> <p>The specified part of the web request must include the value of <code>TargetString</code>, but the location doesn't matter.</p> <p> <b>CONTAINS_WORD</b> </p> <p>The specified part of the web request must include the value of <code>TargetString</code>, and <code>TargetString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, <code>TargetString</code> must be a word, which means one of the following:</p> <ul> <li> <p> <code>TargetString</code> exactly matches the value of the specified part of the web request, such as the value of a header.</p> </li> <li> <p> <code>TargetString</code> is at the beginning of the specified part of the web request and is followed by a character other than an alphanumeric character or underscore (_), for example, <code>BadBot;</code>.</p> </li> <li> <p> <code>TargetString</code> is at the end of the specified part of the web request and is preceded by a character other than an alphanumeric character or underscore (_), for example, <code>;BadBot</code>.</p> </li> <li> <p> <code>TargetString</code> is in the middle of the specified part of the web request and is preceded and followed by characters other than alphanumeric characters or underscore (_), for example, <code>-BadBot;</code>.</p> </li> </ul> <p> <b>EXACTLY</b> </p> <p>The value of the specified part of the web request must exactly match the value of <code>TargetString</code>.</p> <p> <b>STARTS_WITH</b> </p> <p>The value of <code>TargetString</code> must appear at the beginning of the specified part of the web request.</p> <p> <b>ENDS_WITH</b> </p> <p>The value of <code>TargetString</code> must appear at the end of the specified part of the web request.</p>
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>TargetString</code> before inspecting a request for a match.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see <a>FieldToMatch</a>.</p>
-- Required key: FieldToMatch
-- Required key: TargetString
-- Required key: TextTransformation
-- Required key: PositionalConstraint
-- @return ByteMatchTuple structure as a key-value pair table
function M.ByteMatchTuple(args)
	assert(args, "You must provdide an argument table when creating ByteMatchTuple")
	local t = { 
		["TargetString"] = args["TargetString"],
		["PositionalConstraint"] = args["PositionalConstraint"],
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertByteMatchTuple(t)
	return t
end

keys.ListResourcesForWebACLRequest = { ["WebACLId"] = true, nil }

function asserts.AssertListResourcesForWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesForWebACLRequest[k], "ListResourcesForWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACLId [ResourceId] <p>The unique identifier (ID) of the web ACL for which to list the associated resources.</p>
-- Required key: WebACLId
-- @return ListResourcesForWebACLRequest structure as a key-value pair table
function M.ListResourcesForWebACLRequest(args)
	assert(args, "You must provdide an argument table when creating ListResourcesForWebACLRequest")
	local t = { 
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertListResourcesForWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetSampledRequestsResponse")
	local t = { 
		["TimeWindow"] = args["TimeWindow"],
		["SampledRequests"] = args["SampledRequests"],
		["PopulationSize"] = args["PopulationSize"],
	}
	asserts.AssertGetSampledRequestsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating IPSetDescriptor")
	local t = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertIPSetDescriptor(t)
	return t
end

keys.WAFDisallowedNameException = { ["message"] = true, nil }

function asserts.AssertWAFDisallowedNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFDisallowedNameException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFDisallowedNameException[k], "WAFDisallowedNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFDisallowedNameException
-- <p>The name specified is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFDisallowedNameException structure as a key-value pair table
function M.WAFDisallowedNameException(args)
	assert(args, "You must provdide an argument table when creating WAFDisallowedNameException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFDisallowedNameException(t)
	return t
end

keys.AssociateWebACLResponse = { nil }

function asserts.AssertAssociateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateWebACLResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateWebACLResponse[k], "AssociateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateWebACLResponse structure as a key-value pair table
function M.AssociateWebACLResponse(args)
	assert(args, "You must provdide an argument table when creating AssociateWebACLResponse")
	local t = { 
	}
	asserts.AssertAssociateWebACLResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetSqlInjectionMatchSetRequest")
	local t = { 
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertGetSqlInjectionMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSet"] = args["XssMatchSet"],
	}
	asserts.AssertCreateXssMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRuleRequest")
	local t = { 
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetSqlInjectionMatchSetResponse")
	local t = { 
		["SqlInjectionMatchSet"] = args["SqlInjectionMatchSet"],
	}
	asserts.AssertGetSqlInjectionMatchSetResponse(t)
	return t
end

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
	assert(args, "You must provdide an argument table when creating UpdateXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateXssMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating XssMatchSetSummary")
	local t = { 
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertXssMatchSetSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListXssMatchSetsResponse")
	local t = { 
		["XssMatchSets"] = args["XssMatchSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListXssMatchSetsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ByteMatchSet")
	local t = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["Name"] = args["Name"],
		["ByteMatchTuples"] = args["ByteMatchTuples"],
	}
	asserts.AssertByteMatchSet(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRateBasedRuleRequest")
	local t = { 
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRateBasedRuleRequest(t)
	return t
end

keys.SampledHTTPRequest = { ["Action"] = true, ["Timestamp"] = true, ["Request"] = true, ["Weight"] = true, nil }

function asserts.AssertSampledHTTPRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SampledHTTPRequest to be of type 'table'")
	assert(struct["Request"], "Expected key Request to exist in table")
	assert(struct["Weight"], "Expected key Weight to exist in table")
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Request"] then asserts.AssertHTTPRequest(struct["Request"]) end
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
-- * Weight [SampleWeight] <p>A value that indicates how one result in the response relates proportionally to other results in the response. A result that has a weight of <code>2</code> represents roughly twice as many CloudFront web requests as a result that has a weight of <code>1</code>.</p>
-- Required key: Request
-- Required key: Weight
-- @return SampledHTTPRequest structure as a key-value pair table
function M.SampledHTTPRequest(args)
	assert(args, "You must provdide an argument table when creating SampledHTTPRequest")
	local t = { 
		["Action"] = args["Action"],
		["Timestamp"] = args["Timestamp"],
		["Request"] = args["Request"],
		["Weight"] = args["Weight"],
	}
	asserts.AssertSampledHTTPRequest(t)
	return t
end

keys.DisassociateWebACLResponse = { nil }

function asserts.AssertDisassociateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateWebACLResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateWebACLResponse[k], "DisassociateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateWebACLResponse structure as a key-value pair table
function M.DisassociateWebACLResponse(args)
	assert(args, "You must provdide an argument table when creating DisassociateWebACLResponse")
	local t = { 
	}
	asserts.AssertDisassociateWebACLResponse(t)
	return t
end

keys.WAFInternalErrorException = { ["message"] = true, nil }

function asserts.AssertWAFInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFInternalErrorException[k], "WAFInternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInternalErrorException
-- <p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFInternalErrorException structure as a key-value pair table
function M.WAFInternalErrorException(args)
	assert(args, "You must provdide an argument table when creating WAFInternalErrorException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFInternalErrorException(t)
	return t
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
-- * TextTransformation [TextTransformation] <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting a request for a match.</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \ " ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\f, formfeed, decimal 12</p> </li> <li> <p>\t, tab, decimal 9</p> </li> <li> <p>\n, newline, decimal 10</p> </li> <li> <p>\r, carriage return, decimal 13</p> </li> <li> <p>\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
-- * FieldToMatch [FieldToMatch] <p>Specifies where in a web request to look for snippets of malicious SQL code.</p>
-- Required key: FieldToMatch
-- Required key: TextTransformation
-- @return SqlInjectionMatchTuple structure as a key-value pair table
function M.SqlInjectionMatchTuple(args)
	assert(args, "You must provdide an argument table when creating SqlInjectionMatchTuple")
	local t = { 
		["TextTransformation"] = args["TextTransformation"],
		["FieldToMatch"] = args["FieldToMatch"],
	}
	asserts.AssertSqlInjectionMatchTuple(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRateBasedRuleResponse")
	local t = { 
		["Rule"] = args["Rule"],
	}
	asserts.AssertGetRateBasedRuleResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertUpdateSqlInjectionMatchSetRequest(t)
	return t
end

keys.WAFInvalidOperationException = { ["message"] = true, nil }

function asserts.AssertWAFInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidOperationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFInvalidOperationException[k], "WAFInvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidOperationException
-- <p>The operation failed because there was nothing to do. For example:</p> <ul> <li> <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add an IP address to an <code>IPSet</code>, but the IP address already exists in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> already exists in the specified <code>WebACL</code>.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFInvalidOperationException structure as a key-value pair table
function M.WAFInvalidOperationException(args)
	assert(args, "You must provdide an argument table when creating WAFInvalidOperationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFInvalidOperationException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["ByteMatchSet"] = args["ByteMatchSet"],
	}
	asserts.AssertCreateByteMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetByteMatchSetResponse")
	local t = { 
		["ByteMatchSet"] = args["ByteMatchSet"],
	}
	asserts.AssertGetByteMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetChangeTokenResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertGetChangeTokenResponse(t)
	return t
end

keys.WAFReferencedItemException = { ["message"] = true, nil }

function asserts.AssertWAFReferencedItemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFReferencedItemException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFReferencedItemException[k], "WAFReferencedItemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFReferencedItemException
-- <p>The operation failed because you tried to delete an object that is still in use. For example:</p> <ul> <li> <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFReferencedItemException structure as a key-value pair table
function M.WAFReferencedItemException(args)
	assert(args, "You must provdide an argument table when creating WAFReferencedItemException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFReferencedItemException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating WebACL")
	local t = { 
		["DefaultAction"] = args["DefaultAction"],
		["Rules"] = args["Rules"],
		["MetricName"] = args["MetricName"],
		["WebACLId"] = args["WebACLId"],
		["Name"] = args["Name"],
	}
	asserts.AssertWebACL(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListWebACLsResponse")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["WebACLs"] = args["WebACLs"],
	}
	asserts.AssertListWebACLsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["SqlInjectionMatchSet"] = args["SqlInjectionMatchSet"],
	}
	asserts.AssertCreateSqlInjectionMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateSizeConstraintSetResponse")
	local t = { 
		["SizeConstraintSet"] = args["SizeConstraintSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateSizeConstraintSetResponse(t)
	return t
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
-- * RuleId [ResourceId] <p> <code>RuleId</code> is one of two values:</p> <ul> <li> <p>The <code>RuleId</code> of the <code>Rule</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p> </li> <li> <p> <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that didn't match any of the rules in the specified <code>WebACL</code>.</p> </li> </ul>
-- Required key: WebAclId
-- Required key: RuleId
-- Required key: TimeWindow
-- Required key: MaxItems
-- @return GetSampledRequestsRequest structure as a key-value pair table
function M.GetSampledRequestsRequest(args)
	assert(args, "You must provdide an argument table when creating GetSampledRequestsRequest")
	local t = { 
		["TimeWindow"] = args["TimeWindow"],
		["WebAclId"] = args["WebAclId"],
		["MaxItems"] = args["MaxItems"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetSampledRequestsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRateBasedRuleManagedKeysResponse")
	local t = { 
		["ManagedKeys"] = args["ManagedKeys"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertGetRateBasedRuleManagedKeysResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteSizeConstraintSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSizeConstraintSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateXssMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateByteMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetWebACLRequest")
	local t = { 
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertGetWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating IPSetSummary")
	local t = { 
		["IPSetId"] = args["IPSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertIPSetSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetIPSetResponse")
	local t = { 
		["IPSet"] = args["IPSet"],
	}
	asserts.AssertGetIPSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetWebACLResponse")
	local t = { 
		["WebACL"] = args["WebACL"],
	}
	asserts.AssertGetWebACLResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateSizeConstraintSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteXssMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRateBasedRuleRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertDeleteRateBasedRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteIPSetRequest")
	local t = { 
		["IPSetId"] = args["IPSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteIPSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateWebACLResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateWebACLResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating XssMatchSet")
	local t = { 
		["XssMatchTuples"] = args["XssMatchTuples"],
		["XssMatchSetId"] = args["XssMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertXssMatchSet(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateSizeConstraintSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateSizeConstraintSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SizeConstraintSetUpdate")
	local t = { 
		["Action"] = args["Action"],
		["SizeConstraint"] = args["SizeConstraint"],
	}
	asserts.AssertSizeConstraintSetUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetXssMatchSetRequest")
	local t = { 
		["XssMatchSetId"] = args["XssMatchSetId"],
	}
	asserts.AssertGetXssMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRulesRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRulesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteWebACLResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteWebACLResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ByteMatchSetUpdate")
	local t = { 
		["Action"] = args["Action"],
		["ByteMatchTuple"] = args["ByteMatchTuple"],
	}
	asserts.AssertByteMatchSetUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRuleRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["XssMatchSetId"] = args["XssMatchSetId"],
	}
	asserts.AssertDeleteXssMatchSetRequest(t)
	return t
end

keys.ListResourcesForWebACLResponse = { ["ResourceArns"] = true, nil }

function asserts.AssertListResourcesForWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForWebACLResponse to be of type 'table'")
	if struct["ResourceArns"] then asserts.AssertResourceArns(struct["ResourceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesForWebACLResponse[k], "ListResourcesForWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForWebACLResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArns [ResourceArns] <p>An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.</p>
-- @return ListResourcesForWebACLResponse structure as a key-value pair table
function M.ListResourcesForWebACLResponse(args)
	assert(args, "You must provdide an argument table when creating ListResourcesForWebACLResponse")
	local t = { 
		["ResourceArns"] = args["ResourceArns"],
	}
	asserts.AssertListResourcesForWebACLResponse(t)
	return t
end

keys.WAFLimitsExceededException = { ["message"] = true, nil }

function asserts.AssertWAFLimitsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFLimitsExceededException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFLimitsExceededException[k], "WAFLimitsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFLimitsExceededException
-- <p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create for an AWS account. For more information, see <a href="http://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFLimitsExceededException structure as a key-value pair table
function M.WAFLimitsExceededException(args)
	assert(args, "You must provdide an argument table when creating WAFLimitsExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFLimitsExceededException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateXssMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateByteMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteByteMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRateBasedRuleManagedKeysRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertGetRateBasedRuleManagedKeysRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRateBasedRuleRequest")
	local t = { 
		["RateLimit"] = args["RateLimit"],
		["ChangeToken"] = args["ChangeToken"],
		["Updates"] = args["Updates"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertUpdateRateBasedRuleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating WebACLUpdate")
	local t = { 
		["Action"] = args["Action"],
		["ActivatedRule"] = args["ActivatedRule"],
	}
	asserts.AssertWebACLUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Rule")
	local t = { 
		["Predicates"] = args["Predicates"],
		["MetricName"] = args["MetricName"],
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertRule(t)
	return t
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
-- * NextMarker [NextMarker] <p>If you specify a value for <code>Limit</code> and you have more <code>IPSets</code> than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>IPSets</code>. For the second and subsequent <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>
-- * Limit [PaginationLimit] <p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more <code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>
-- @return ListIPSetsRequest structure as a key-value pair table
function M.ListIPSetsRequest(args)
	assert(args, "You must provdide an argument table when creating ListIPSetsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListIPSetsRequest(t)
	return t
end

keys.ActivatedRule = { ["Priority"] = true, ["Action"] = true, ["Type"] = true, ["RuleId"] = true, nil }

function asserts.AssertActivatedRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatedRule to be of type 'table'")
	assert(struct["Priority"], "Expected key Priority to exist in table")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	if struct["Priority"] then asserts.AssertRulePriority(struct["Priority"]) end
	if struct["Action"] then asserts.AssertWafAction(struct["Action"]) end
	if struct["Type"] then asserts.AssertWafRuleType(struct["Type"]) end
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
-- * Action [WafAction] <p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the <code>Rule</code>. Valid values for <code>Action</code> include the following:</p> <ul> <li> <p> <code>ALLOW</code>: CloudFront responds with the requested object.</p> </li> <li> <p> <code>BLOCK</code>: CloudFront responds with an HTTP 403 (Forbidden) status code.</p> </li> <li> <p> <code>COUNT</code>: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to inspect the web request based on the remaining rules in the web ACL. </p> </li> </ul>
-- * Type [WafRuleType] <p>The rule type, either <code>REGULAR</code>, as defined by <a>Rule</a>, or <code>RATE_BASED</code>, as defined by <a>RateBasedRule</a>. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. </p>
-- * RuleId [ResourceId] <p>The <code>RuleId</code> for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p> <p> <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
-- Required key: Priority
-- Required key: RuleId
-- Required key: Action
-- @return ActivatedRule structure as a key-value pair table
function M.ActivatedRule(args)
	assert(args, "You must provdide an argument table when creating ActivatedRule")
	local t = { 
		["Priority"] = args["Priority"],
		["Action"] = args["Action"],
		["Type"] = args["Type"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertActivatedRule(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateWebACLRequest")
	local t = { 
		["DefaultAction"] = args["DefaultAction"],
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCreateWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRuleResponse(t)
	return t
end

keys.DisassociateWebACLRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertDisassociateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateWebACLRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateWebACLRequest[k], "DisassociateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed.</p>
-- Required key: ResourceArn
-- @return DisassociateWebACLRequest structure as a key-value pair table
function M.DisassociateWebACLRequest(args)
	assert(args, "You must provdide an argument table when creating DisassociateWebACLRequest")
	local t = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertDisassociateWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListSizeConstraintSetsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSizeConstraintSetsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SqlInjectionMatchSetUpdate")
	local t = { 
		["Action"] = args["Action"],
		["SqlInjectionMatchTuple"] = args["SqlInjectionMatchTuple"],
	}
	asserts.AssertSqlInjectionMatchSetUpdate(t)
	return t
end

keys.WAFUnavailableEntityException = { ["message"] = true, nil }

function asserts.AssertWAFUnavailableEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFUnavailableEntityException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFUnavailableEntityException[k], "WAFUnavailableEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFUnavailableEntityException
-- <p>The operation failed because the entity referenced is temporarily unavailable. Retry your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFUnavailableEntityException structure as a key-value pair table
function M.WAFUnavailableEntityException(args)
	assert(args, "You must provdide an argument table when creating WAFUnavailableEntityException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFUnavailableEntityException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetChangeTokenRequest")
	local t = { 
	}
	asserts.AssertGetChangeTokenRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSqlInjectionMatchSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateSizeConstraintSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSizeConstraintSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SizeConstraintSetSummary")
	local t = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertSizeConstraintSetSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListSqlInjectionMatchSetsResponse")
	local t = { 
		["SqlInjectionMatchSets"] = args["SqlInjectionMatchSets"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListSqlInjectionMatchSetsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListSqlInjectionMatchSetsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListSqlInjectionMatchSetsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating HTTPRequest")
	local t = { 
		["Country"] = args["Country"],
		["URI"] = args["URI"],
		["Headers"] = args["Headers"],
		["ClientIP"] = args["ClientIP"],
		["Method"] = args["Method"],
		["HTTPVersion"] = args["HTTPVersion"],
	}
	asserts.AssertHTTPRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListWebACLsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListWebACLsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateWebACLResponse")
	local t = { 
		["WebACL"] = args["WebACL"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateWebACLResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteRuleResponse(t)
	return t
end

keys.GetWebACLForResourceRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertGetWebACLForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetWebACLForResourceRequest[k], "GetWebACLForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource for which to get the web ACL.</p>
-- Required key: ResourceArn
-- @return GetWebACLForResourceRequest structure as a key-value pair table
function M.GetWebACLForResourceRequest(args)
	assert(args, "You must provdide an argument table when creating GetWebACLForResourceRequest")
	local t = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertGetWebACLForResourceRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteSizeConstraintSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateRateBasedRuleResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetSizeConstraintSetResponse")
	local t = { 
		["SizeConstraintSet"] = args["SizeConstraintSet"],
	}
	asserts.AssertGetSizeConstraintSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRulesResponse")
	local t = { 
		["Rules"] = args["Rules"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListRulesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateIPSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateIPSetRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRuleResponse")
	local t = { 
		["Rule"] = args["Rule"],
	}
	asserts.AssertGetRuleResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListByteMatchSetsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListByteMatchSetsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateIPSetResponse")
	local t = { 
		["IPSet"] = args["IPSet"],
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertCreateIPSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateByteMatchSetRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateByteMatchSetRequest(t)
	return t
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
-- <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify a <code>/128</code>, <code>/64</code>, <code>/56</code>, <code>/48</code>, <code>/32</code>, <code>/24</code>, <code>/16</code>, or <code>/8</code> CIDR. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPSetId [ResourceId] <p>The <code>IPSetId</code> for an <code>IPSet</code>. You use <code>IPSetId</code> to get information about an <code>IPSet</code> (see <a>GetIPSet</a>), update an <code>IPSet</code> (see <a>UpdateIPSet</a>), insert an <code>IPSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>IPSet</code> from AWS WAF (see <a>DeleteIPSet</a>).</p> <p> <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
-- * Name [ResourceName] <p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>
-- * IPSetDescriptors [IPSetDescriptors] <p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from. If the <code>WebACL</code> is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.</p>
-- Required key: IPSetId
-- Required key: IPSetDescriptors
-- @return IPSet structure as a key-value pair table
function M.IPSet(args)
	assert(args, "You must provdide an argument table when creating IPSet")
	local t = { 
		["IPSetId"] = args["IPSetId"],
		["Name"] = args["Name"],
		["IPSetDescriptors"] = args["IPSetDescriptors"],
	}
	asserts.AssertIPSet(t)
	return t
end

keys.AssociateWebACLRequest = { ["ResourceArn"] = true, ["WebACLId"] = true, nil }

function asserts.AssertAssociateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["WebACLId"] then asserts.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateWebACLRequest[k], "AssociateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateWebACLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
-- * WebACLId [ResourceId] <p>A unique identifier (ID) for the web ACL.</p>
-- Required key: WebACLId
-- Required key: ResourceArn
-- @return AssociateWebACLRequest structure as a key-value pair table
function M.AssociateWebACLRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateWebACLRequest")
	local t = { 
		["ResourceArn"] = args["ResourceArn"],
		["WebACLId"] = args["WebACLId"],
	}
	asserts.AssertAssociateWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ByteMatchSetSummary")
	local t = { 
		["ByteMatchSetId"] = args["ByteMatchSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertByteMatchSetSummary(t)
	return t
end

keys.WAFInvalidParameterException = { ["field"] = true, ["reason"] = true, ["parameter"] = true, nil }

function asserts.AssertWAFInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidParameterException to be of type 'table'")
	if struct["field"] then asserts.AssertParameterExceptionField(struct["field"]) end
	if struct["reason"] then asserts.AssertParameterExceptionReason(struct["reason"]) end
	if struct["parameter"] then asserts.AssertParameterExceptionParameter(struct["parameter"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFInvalidParameterException[k], "WAFInvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidParameterException
-- <p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p> <ul> <li> <p>You specified an invalid parameter name.</p> </li> <li> <p>You specified an invalid value.</p> </li> <li> <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>) using an action other than <code>INSERT</code> or <code>DELETE</code>.</p> </li> <li> <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to create a <code>RateBasedRule</code> with a <code>RateKey</code> value other than <code>IP</code>.</p> </li> <li> <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code> <code>Type</code> other than HEADER, QUERY_STRING, or URI.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code> but no value for <code>Data</code>.</p> </li> <li> <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * field [ParameterExceptionField] 
-- * reason [ParameterExceptionReason] 
-- * parameter [ParameterExceptionParameter] 
-- @return WAFInvalidParameterException structure as a key-value pair table
function M.WAFInvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating WAFInvalidParameterException")
	local t = { 
		["field"] = args["field"],
		["reason"] = args["reason"],
		["parameter"] = args["parameter"],
	}
	asserts.AssertWAFInvalidParameterException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SqlInjectionMatchSetSummary")
	local t = { 
		["Name"] = args["Name"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertSqlInjectionMatchSetSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetChangeTokenStatusRequest")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertGetChangeTokenStatusRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertUpdateSqlInjectionMatchSetResponse(t)
	return t
end

keys.WAFNonEmptyEntityException = { ["message"] = true, nil }

function asserts.AssertWAFNonEmptyEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonEmptyEntityException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFNonEmptyEntityException[k], "WAFNonEmptyEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonEmptyEntityException
-- <p>The operation failed because you tried to delete an object that isn't empty. For example:</p> <ul> <li> <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects or other predicates.</p> </li> <li> <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p> </li> <li> <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFNonEmptyEntityException structure as a key-value pair table
function M.WAFNonEmptyEntityException(args)
	assert(args, "You must provdide an argument table when creating WAFNonEmptyEntityException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFNonEmptyEntityException(t)
	return t
end

keys.WAFStaleDataException = { ["message"] = true, nil }

function asserts.AssertWAFStaleDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFStaleDataException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFStaleDataException[k], "WAFStaleDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFStaleDataException
-- <p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFStaleDataException structure as a key-value pair table
function M.WAFStaleDataException(args)
	assert(args, "You must provdide an argument table when creating WAFStaleDataException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFStaleDataException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SizeConstraintSet")
	local t = { 
		["SizeConstraints"] = args["SizeConstraints"],
		["SizeConstraintSetId"] = args["SizeConstraintSetId"],
		["Name"] = args["Name"],
	}
	asserts.AssertSizeConstraintSet(t)
	return t
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
-- * Updates [WebACLUpdates] <p>An array of updates to make to the <a>WebACL</a>.</p> <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a <a>WebACL</a>. For more information, see the applicable data types:</p> <ul> <li> <p> <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code> </p> </li> <li> <p> <a>ActivatedRule</a>: Contains <code>Action</code>, <code>Priority</code>, <code>RuleId</code>, and <code>Type</code> </p> </li> <li> <p> <a>WafAction</a>: Contains <code>Type</code> </p> </li> </ul>
-- Required key: WebACLId
-- Required key: ChangeToken
-- @return UpdateWebACLRequest structure as a key-value pair table
function M.UpdateWebACLRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateWebACLRequest")
	local t = { 
		["DefaultAction"] = args["DefaultAction"],
		["ChangeToken"] = args["ChangeToken"],
		["WebACLId"] = args["WebACLId"],
		["Updates"] = args["Updates"],
	}
	asserts.AssertUpdateWebACLRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating XssMatchSetUpdate")
	local t = { 
		["Action"] = args["Action"],
		["XssMatchTuple"] = args["XssMatchTuple"],
	}
	asserts.AssertXssMatchSetUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertCreateRateBasedRuleResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RuleSummary")
	local t = { 
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
	}
	asserts.AssertRuleSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating IPSetUpdate")
	local t = { 
		["Action"] = args["Action"],
		["IPSetDescriptor"] = args["IPSetDescriptor"],
	}
	asserts.AssertIPSetUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListXssMatchSetsRequest")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListXssMatchSetsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRateBasedRulesResponse")
	local t = { 
		["Rules"] = args["Rules"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListRateBasedRulesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListSizeConstraintSetsResponse")
	local t = { 
		["NextMarker"] = args["NextMarker"],
		["SizeConstraintSets"] = args["SizeConstraintSets"],
	}
	asserts.AssertListSizeConstraintSetsResponse(t)
	return t
end

keys.WAFNonexistentItemException = { ["message"] = true, nil }

function asserts.AssertWAFNonexistentItemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonexistentItemException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WAFNonexistentItemException[k], "WAFNonexistentItemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonexistentItemException
-- <p>The operation failed because the referenced object doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] 
-- @return WAFNonexistentItemException structure as a key-value pair table
function M.WAFNonexistentItemException(args)
	assert(args, "You must provdide an argument table when creating WAFNonexistentItemException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertWAFNonexistentItemException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RuleUpdate")
	local t = { 
		["Action"] = args["Action"],
		["Predicate"] = args["Predicate"],
	}
	asserts.AssertRuleUpdate(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RateBasedRule")
	local t = { 
		["RateKey"] = args["RateKey"],
		["Name"] = args["Name"],
		["RuleId"] = args["RuleId"],
		["RateLimit"] = args["RateLimit"],
		["MatchPredicates"] = args["MatchPredicates"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertRateBasedRule(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SqlInjectionMatchSet")
	local t = { 
		["SqlInjectionMatchTuples"] = args["SqlInjectionMatchTuples"],
		["Name"] = args["Name"],
		["SqlInjectionMatchSetId"] = args["SqlInjectionMatchSetId"],
	}
	asserts.AssertSqlInjectionMatchSet(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetXssMatchSetResponse")
	local t = { 
		["XssMatchSet"] = args["XssMatchSet"],
	}
	asserts.AssertGetXssMatchSetResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteIPSetResponse")
	local t = { 
		["ChangeToken"] = args["ChangeToken"],
	}
	asserts.AssertDeleteIPSetResponse(t)
	return t
end

keys.GetWebACLForResourceResponse = { ["WebACLSummary"] = true, nil }

function asserts.AssertGetWebACLForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLForResourceResponse to be of type 'table'")
	if struct["WebACLSummary"] then asserts.AssertWebACLSummary(struct["WebACLSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetWebACLForResourceResponse[k], "GetWebACLForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLForResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebACLSummary [WebACLSummary] <p>Information about the web ACL that you specified in the <code>GetWebACLForResource</code> request. If there is no associated resource, a null WebACLSummary is returned.</p>
-- @return GetWebACLForResourceResponse structure as a key-value pair table
function M.GetWebACLForResourceResponse(args)
	assert(args, "You must provdide an argument table when creating GetWebACLForResourceResponse")
	local t = { 
		["WebACLSummary"] = args["WebACLSummary"],
	}
	asserts.AssertGetWebACLForResourceResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating HTTPHeader")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertHTTPHeader(t)
	return t
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

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
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

function asserts.AssertParameterExceptionField(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionField to be of type 'string'")
end

--  
function M.ParameterExceptionField(str)
	asserts.AssertParameterExceptionField(str)
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

function asserts.AssertParameterExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionReason to be of type 'string'")
end

--  
function M.ParameterExceptionReason(str)
	asserts.AssertParameterExceptionReason(str)
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

function asserts.AssertMatchFieldData(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchFieldData to be of type 'string'")
end

--  
function M.MatchFieldData(str)
	asserts.AssertMatchFieldData(str)
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

function asserts.AssertParameterExceptionParameter(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionParameter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterExceptionParameter(str)
	asserts.AssertParameterExceptionParameter(str)
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

function asserts.AssertIPString(str)
	assert(str)
	assert(type(str) == "string", "Expected IPString to be of type 'string'")
end

--  
function M.IPString(str)
	asserts.AssertIPString(str)
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

function asserts.AssertWafActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafActionType to be of type 'string'")
end

--  
function M.WafActionType(str)
	asserts.AssertWafActionType(str)
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

function asserts.AssertURIString(str)
	assert(str)
	assert(type(str) == "string", "Expected URIString to be of type 'string'")
end

--  
function M.URIString(str)
	asserts.AssertURIString(str)
	return str
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

function asserts.AssertGetSampledRequestsMaxItems(long)
	assert(long)
	assert(type(long) == "number", "Expected GetSampledRequestsMaxItems to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.GetSampledRequestsMaxItems(long)
	asserts.AssertGetSampledRequestsMaxItems(long)
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
	assert(type(string) == "string", "Expected ByteMatchTargetString to be of type 'string'")
end

function M.ByteMatchTargetString(blob)
	asserts.AssertByteMatchTargetString(blob)
	return blob
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

function asserts.AssertResourceArns(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArns(list)
	asserts.AssertResourceArns(list)
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

function asserts.AssertSqlInjectionMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchSetUpdates to be of type ''table")
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

function asserts.AssertXssMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchSetUpdates to be of type ''table")
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

function asserts.AssertByteMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchSetUpdates to be of type ''table")
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "waf-regional.amazonaws.com"
		end
	end
	local ss = { "waf-regional" }
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
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call CreateSizeConstraintSet asynchronously, invoking a callback when done
-- @param CreateSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSizeConstraintSetAsync(CreateSizeConstraintSetRequest, cb)
	assert(CreateSizeConstraintSetRequest, "You must provide a CreateSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateSizeConstraintSetSync(CreateSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSizeConstraintSetAsync(CreateSizeConstraintSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIPSets asynchronously, invoking a callback when done
-- @param ListIPSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIPSetsAsync(ListIPSetsRequest, cb)
	assert(ListIPSetsRequest, "You must provide a ListIPSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListIPSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListIPSetsSync(ListIPSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIPSetsAsync(ListIPSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRateBasedRule asynchronously, invoking a callback when done
-- @param DeleteRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRateBasedRuleAsync(DeleteRateBasedRuleRequest, cb)
	assert(DeleteRateBasedRuleRequest, "You must provide a DeleteRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteRateBasedRuleSync(DeleteRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRateBasedRuleAsync(DeleteRateBasedRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWebACLs asynchronously, invoking a callback when done
-- @param ListWebACLsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListWebACLsAsync(ListWebACLsRequest, cb)
	assert(ListWebACLsRequest, "You must provide a ListWebACLsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListWebACLs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListWebACLsSync(ListWebACLsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWebACLsAsync(ListWebACLsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChangeTokenStatus asynchronously, invoking a callback when done
-- @param GetChangeTokenStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeTokenStatusAsync(GetChangeTokenStatusRequest, cb)
	assert(GetChangeTokenStatusRequest, "You must provide a GetChangeTokenStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetChangeTokenStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetChangeTokenStatusSync(GetChangeTokenStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChangeTokenStatusAsync(GetChangeTokenStatusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param DeleteSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSqlInjectionMatchSetAsync(DeleteSqlInjectionMatchSetRequest, cb)
	assert(DeleteSqlInjectionMatchSetRequest, "You must provide a DeleteSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteSqlInjectionMatchSetSync(DeleteSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSqlInjectionMatchSetAsync(DeleteSqlInjectionMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListByteMatchSets asynchronously, invoking a callback when done
-- @param ListByteMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListByteMatchSetsAsync(ListByteMatchSetsRequest, cb)
	assert(ListByteMatchSetsRequest, "You must provide a ListByteMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListByteMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListByteMatchSetsSync(ListByteMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListByteMatchSetsAsync(ListByteMatchSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRule asynchronously, invoking a callback when done
-- @param CreateRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRuleAsync(CreateRuleRequest, cb)
	assert(CreateRuleRequest, "You must provide a CreateRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateRuleSync(CreateRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRuleAsync(CreateRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRateBasedRuleManagedKeys asynchronously, invoking a callback when done
-- @param GetRateBasedRuleManagedKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRateBasedRuleManagedKeysAsync(GetRateBasedRuleManagedKeysRequest, cb)
	assert(GetRateBasedRuleManagedKeysRequest, "You must provide a GetRateBasedRuleManagedKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetRateBasedRuleManagedKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetRateBasedRuleManagedKeysSync(GetRateBasedRuleManagedKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRateBasedRuleManagedKeysAsync(GetRateBasedRuleManagedKeysRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param CreateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSqlInjectionMatchSetAsync(CreateSqlInjectionMatchSetRequest, cb)
	assert(CreateSqlInjectionMatchSetRequest, "You must provide a CreateSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateSqlInjectionMatchSetSync(CreateSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSqlInjectionMatchSetAsync(CreateSqlInjectionMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRateBasedRules asynchronously, invoking a callback when done
-- @param ListRateBasedRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRateBasedRulesAsync(ListRateBasedRulesRequest, cb)
	assert(ListRateBasedRulesRequest, "You must provide a ListRateBasedRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListRateBasedRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListRateBasedRulesSync(ListRateBasedRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRateBasedRulesAsync(ListRateBasedRulesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteByteMatchSet asynchronously, invoking a callback when done
-- @param DeleteByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteByteMatchSetAsync(DeleteByteMatchSetRequest, cb)
	assert(DeleteByteMatchSetRequest, "You must provide a DeleteByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteByteMatchSetSync(DeleteByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteByteMatchSetAsync(DeleteByteMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteXssMatchSet asynchronously, invoking a callback when done
-- @param DeleteXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteXssMatchSetAsync(DeleteXssMatchSetRequest, cb)
	assert(DeleteXssMatchSetRequest, "You must provide a DeleteXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteXssMatchSetSync(DeleteXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteXssMatchSetAsync(DeleteXssMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSqlInjectionMatchSets asynchronously, invoking a callback when done
-- @param ListSqlInjectionMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSqlInjectionMatchSetsAsync(ListSqlInjectionMatchSetsRequest, cb)
	assert(ListSqlInjectionMatchSetsRequest, "You must provide a ListSqlInjectionMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListSqlInjectionMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListSqlInjectionMatchSetsSync(ListSqlInjectionMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSqlInjectionMatchSetsAsync(ListSqlInjectionMatchSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRule asynchronously, invoking a callback when done
-- @param DeleteRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRuleAsync(DeleteRuleRequest, cb)
	assert(DeleteRuleRequest, "You must provide a DeleteRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteRuleSync(DeleteRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleAsync(DeleteRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIPSet asynchronously, invoking a callback when done
-- @param GetIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIPSetAsync(GetIPSetRequest, cb)
	assert(GetIPSetRequest, "You must provide a GetIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetIPSetSync(GetIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIPSetAsync(GetIPSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIPSet asynchronously, invoking a callback when done
-- @param UpdateIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIPSetAsync(UpdateIPSetRequest, cb)
	assert(UpdateIPSetRequest, "You must provide a UpdateIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateIPSetSync(UpdateIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIPSetAsync(UpdateIPSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRule asynchronously, invoking a callback when done
-- @param UpdateRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRuleAsync(UpdateRuleRequest, cb)
	assert(UpdateRuleRequest, "You must provide a UpdateRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateRuleSync(UpdateRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRuleAsync(UpdateRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetByteMatchSet asynchronously, invoking a callback when done
-- @param GetByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetByteMatchSetAsync(GetByteMatchSetRequest, cb)
	assert(GetByteMatchSetRequest, "You must provide a GetByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetByteMatchSetSync(GetByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetByteMatchSetAsync(GetByteMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateXssMatchSet asynchronously, invoking a callback when done
-- @param CreateXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateXssMatchSetAsync(CreateXssMatchSetRequest, cb)
	assert(CreateXssMatchSetRequest, "You must provide a CreateXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateXssMatchSetSync(CreateXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateXssMatchSetAsync(CreateXssMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRateBasedRule asynchronously, invoking a callback when done
-- @param UpdateRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRateBasedRuleAsync(UpdateRateBasedRuleRequest, cb)
	assert(UpdateRateBasedRuleRequest, "You must provide a UpdateRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateRateBasedRuleSync(UpdateRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRateBasedRuleAsync(UpdateRateBasedRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChangeToken asynchronously, invoking a callback when done
-- @param GetChangeTokenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeTokenAsync(GetChangeTokenRequest, cb)
	assert(GetChangeTokenRequest, "You must provide a GetChangeTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetChangeToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetChangeTokenSync(GetChangeTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChangeTokenAsync(GetChangeTokenRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListXssMatchSets asynchronously, invoking a callback when done
-- @param ListXssMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListXssMatchSetsAsync(ListXssMatchSetsRequest, cb)
	assert(ListXssMatchSetsRequest, "You must provide a ListXssMatchSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListXssMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListXssMatchSetsSync(ListXssMatchSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListXssMatchSetsAsync(ListXssMatchSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateWebACL asynchronously, invoking a callback when done
-- @param AssociateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateWebACLAsync(AssociateWebACLRequest, cb)
	assert(AssociateWebACLRequest, "You must provide a AssociateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.AssociateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateWebACLRequest
-- @return response
-- @return error_message
function M.AssociateWebACLSync(AssociateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateWebACLAsync(AssociateWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSizeConstraintSet asynchronously, invoking a callback when done
-- @param GetSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSizeConstraintSetAsync(GetSizeConstraintSetRequest, cb)
	assert(GetSizeConstraintSetRequest, "You must provide a GetSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetSizeConstraintSetSync(GetSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSizeConstraintSetAsync(GetSizeConstraintSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIPSet asynchronously, invoking a callback when done
-- @param CreateIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIPSetAsync(CreateIPSetRequest, cb)
	assert(CreateIPSetRequest, "You must provide a CreateIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateIPSetSync(CreateIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIPSetAsync(CreateIPSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetXssMatchSet asynchronously, invoking a callback when done
-- @param GetXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetXssMatchSetAsync(GetXssMatchSetRequest, cb)
	assert(GetXssMatchSetRequest, "You must provide a GetXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetXssMatchSetSync(GetXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetXssMatchSetAsync(GetXssMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateXssMatchSet asynchronously, invoking a callback when done
-- @param UpdateXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateXssMatchSetAsync(UpdateXssMatchSetRequest, cb)
	assert(UpdateXssMatchSetRequest, "You must provide a UpdateXssMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateXssMatchSetSync(UpdateXssMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateXssMatchSetAsync(UpdateXssMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRateBasedRule asynchronously, invoking a callback when done
-- @param GetRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRateBasedRuleAsync(GetRateBasedRuleRequest, cb)
	assert(GetRateBasedRuleRequest, "You must provide a GetRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetRateBasedRuleSync(GetRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRateBasedRuleAsync(GetRateBasedRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSizeConstraintSet asynchronously, invoking a callback when done
-- @param UpdateSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSizeConstraintSetAsync(UpdateSizeConstraintSetRequest, cb)
	assert(UpdateSizeConstraintSetRequest, "You must provide a UpdateSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateSizeConstraintSetSync(UpdateSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSizeConstraintSetAsync(UpdateSizeConstraintSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRateBasedRule asynchronously, invoking a callback when done
-- @param CreateRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRateBasedRuleAsync(CreateRateBasedRuleRequest, cb)
	assert(CreateRateBasedRuleRequest, "You must provide a CreateRateBasedRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateRateBasedRuleSync(CreateRateBasedRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRateBasedRuleAsync(CreateRateBasedRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRules asynchronously, invoking a callback when done
-- @param ListRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRulesAsync(ListRulesRequest, cb)
	assert(ListRulesRequest, "You must provide a ListRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListRulesSync(ListRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesAsync(ListRulesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSampledRequests asynchronously, invoking a callback when done
-- @param GetSampledRequestsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSampledRequestsAsync(GetSampledRequestsRequest, cb)
	assert(GetSampledRequestsRequest, "You must provide a GetSampledRequestsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetSampledRequests",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetSampledRequestsSync(GetSampledRequestsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSampledRequestsAsync(GetSampledRequestsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateWebACL asynchronously, invoking a callback when done
-- @param CreateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateWebACLAsync(CreateWebACLRequest, cb)
	assert(CreateWebACLRequest, "You must provide a CreateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateWebACLSync(CreateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateWebACLAsync(CreateWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteWebACL asynchronously, invoking a callback when done
-- @param DeleteWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteWebACLAsync(DeleteWebACLRequest, cb)
	assert(DeleteWebACLRequest, "You must provide a DeleteWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteWebACLSync(DeleteWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteWebACLAsync(DeleteWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRule asynchronously, invoking a callback when done
-- @param GetRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRuleAsync(GetRuleRequest, cb)
	assert(GetRuleRequest, "You must provide a GetRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetRuleSync(GetRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRuleAsync(GetRuleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSizeConstraintSet asynchronously, invoking a callback when done
-- @param DeleteSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSizeConstraintSetAsync(DeleteSizeConstraintSetRequest, cb)
	assert(DeleteSizeConstraintSetRequest, "You must provide a DeleteSizeConstraintSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteSizeConstraintSetSync(DeleteSizeConstraintSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSizeConstraintSetAsync(DeleteSizeConstraintSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetWebACLForResource asynchronously, invoking a callback when done
-- @param GetWebACLForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetWebACLForResourceAsync(GetWebACLForResourceRequest, cb)
	assert(GetWebACLForResourceRequest, "You must provide a GetWebACLForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetWebACLForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetWebACLForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetWebACLForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetWebACLForResourceRequest
-- @return response
-- @return error_message
function M.GetWebACLForResourceSync(GetWebACLForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetWebACLForResourceAsync(GetWebACLForResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param UpdateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSqlInjectionMatchSetAsync(UpdateSqlInjectionMatchSetRequest, cb)
	assert(UpdateSqlInjectionMatchSetRequest, "You must provide a UpdateSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateSqlInjectionMatchSetSync(UpdateSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSqlInjectionMatchSetAsync(UpdateSqlInjectionMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateWebACL asynchronously, invoking a callback when done
-- @param UpdateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateWebACLAsync(UpdateWebACLRequest, cb)
	assert(UpdateWebACLRequest, "You must provide a UpdateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateWebACLSync(UpdateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateWebACLAsync(UpdateWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateByteMatchSet asynchronously, invoking a callback when done
-- @param CreateByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateByteMatchSetAsync(CreateByteMatchSetRequest, cb)
	assert(CreateByteMatchSetRequest, "You must provide a CreateByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.CreateByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateByteMatchSetSync(CreateByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateByteMatchSetAsync(CreateByteMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourcesForWebACL asynchronously, invoking a callback when done
-- @param ListResourcesForWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourcesForWebACLAsync(ListResourcesForWebACLRequest, cb)
	assert(ListResourcesForWebACLRequest, "You must provide a ListResourcesForWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListResourcesForWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourcesForWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourcesForWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourcesForWebACLRequest
-- @return response
-- @return error_message
function M.ListResourcesForWebACLSync(ListResourcesForWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesForWebACLAsync(ListResourcesForWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetWebACL asynchronously, invoking a callback when done
-- @param GetWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetWebACLAsync(GetWebACLRequest, cb)
	assert(GetWebACLRequest, "You must provide a GetWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetWebACLSync(GetWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetWebACLAsync(GetWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateByteMatchSet asynchronously, invoking a callback when done
-- @param UpdateByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateByteMatchSetAsync(UpdateByteMatchSetRequest, cb)
	assert(UpdateByteMatchSetRequest, "You must provide a UpdateByteMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.UpdateByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateByteMatchSetSync(UpdateByteMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateByteMatchSetAsync(UpdateByteMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateWebACL asynchronously, invoking a callback when done
-- @param DisassociateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateWebACLAsync(DisassociateWebACLRequest, cb)
	assert(DisassociateWebACLRequest, "You must provide a DisassociateWebACLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DisassociateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateWebACLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateWebACL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateWebACLRequest
-- @return response
-- @return error_message
function M.DisassociateWebACLSync(DisassociateWebACLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateWebACLAsync(DisassociateWebACLRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSqlInjectionMatchSet asynchronously, invoking a callback when done
-- @param GetSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSqlInjectionMatchSetAsync(GetSqlInjectionMatchSetRequest, cb)
	assert(GetSqlInjectionMatchSetRequest, "You must provide a GetSqlInjectionMatchSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.GetSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetSqlInjectionMatchSetSync(GetSqlInjectionMatchSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSqlInjectionMatchSetAsync(GetSqlInjectionMatchSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSizeConstraintSets asynchronously, invoking a callback when done
-- @param ListSizeConstraintSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSizeConstraintSetsAsync(ListSizeConstraintSetsRequest, cb)
	assert(ListSizeConstraintSetsRequest, "You must provide a ListSizeConstraintSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.ListSizeConstraintSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListSizeConstraintSetsSync(ListSizeConstraintSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSizeConstraintSetsAsync(ListSizeConstraintSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIPSet asynchronously, invoking a callback when done
-- @param DeleteIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIPSetAsync(DeleteIPSetRequest, cb)
	assert(DeleteIPSetRequest, "You must provide a DeleteIPSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSWAF_Regional_20161128.DeleteIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteIPSetSync(DeleteIPSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIPSetAsync(DeleteIPSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
