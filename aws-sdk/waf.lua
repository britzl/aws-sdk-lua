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

local GetIPSetRequest_keys = { "IPSetId" = true, nil }

function M.AssertGetIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	if struct["IPSetId"] then M.AssertResourceId(struct["IPSetId"]) end
	for k,_ in pairs(struct) do
		assert(GetIPSetRequest_keys[k], "GetIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetRequest
--  
-- @param IPSetId [ResourceId] &lt;p&gt;The &lt;code&gt;IPSetId&lt;/code&gt; of the &lt;a&gt;IPSet&lt;/a&gt; that you want to get. &lt;code&gt;IPSetId&lt;/code&gt; is returned by &lt;a&gt;CreateIPSet&lt;/a&gt; and by &lt;a&gt;ListIPSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: IPSetId
function M.GetIPSetRequest(IPSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIPSetRequest")
	local t = { 
		["IPSetId"] = IPSetId,
	}
	M.AssertGetIPSetRequest(t)
	return t
end

local ListRateBasedRulesRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListRateBasedRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRateBasedRulesRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListRateBasedRulesRequest_keys[k], "ListRateBasedRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRateBasedRulesRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;Rules&lt;/code&gt; than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;Rules&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListRateBasedRules&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;Rules&lt;/code&gt; that you want AWS WAF to return for this request. If you have more &lt;code&gt;Rules&lt;/code&gt; than the number that you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
function M.ListRateBasedRulesRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRateBasedRulesRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListRateBasedRulesRequest(t)
	return t
end

local TimeWindow_keys = { "EndTime" = true, "StartTime" = true, nil }

function M.AssertTimeWindow(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeWindow to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(TimeWindow_keys[k], "TimeWindow contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeWindow
-- &lt;p&gt;In a &lt;a&gt;GetSampledRequests&lt;/a&gt; request, the &lt;code&gt;StartTime&lt;/code&gt; and &lt;code&gt;EndTime&lt;/code&gt; objects specify the time range for which you want AWS WAF to return a sample of web requests.&lt;/p&gt; &lt;p&gt;In a &lt;a&gt;GetSampledRequests&lt;/a&gt; response, the &lt;code&gt;StartTime&lt;/code&gt; and &lt;code&gt;EndTime&lt;/code&gt; objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, &lt;code&gt;EndTime&lt;/code&gt; is the time that AWS WAF received the 5,000th request. &lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;The end of the time range from which you want &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of the requests that your AWS resource received. Specify the date and time in the following format: &lt;code&gt;&quot;2016-09-27T14:50Z&quot;&lt;/code&gt;. You can specify any time range in the previous three hours.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The beginning of the time range from which you want &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of the requests that your AWS resource received. Specify the date and time in the following format: &lt;code&gt;&quot;2016-09-27T14:50Z&quot;&lt;/code&gt;. You can specify any time range in the previous three hours.&lt;/p&gt;
-- Required parameter: StartTime
-- Required parameter: EndTime
function M.TimeWindow(EndTime, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeWindow")
	local t = { 
		["EndTime"] = EndTime,
		["StartTime"] = StartTime,
	}
	M.AssertTimeWindow(t)
	return t
end

local XssMatchTuple_keys = { "TextTransformation" = true, "FieldToMatch" = true, nil }

function M.AssertXssMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	if struct["TextTransformation"] then M.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then M.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(XssMatchTuple_keys[k], "XssMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchTuple
-- &lt;p&gt;Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.&lt;/p&gt;
-- @param TextTransformation [TextTransformation] &lt;p&gt;Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on &lt;code&gt;FieldToMatch&lt;/code&gt; before inspecting a request for a match.&lt;/p&gt; &lt;p&gt; &lt;b&gt;CMD_LINE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Delete the following characters: \ &quot; ' ^&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Delete spaces before the following characters: / (&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace the following characters with a space: , ;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace multiple spaces with one space&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Convert uppercase letters (A-Z) to lowercase (a-z)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;COMPRESS_WHITE_SPACE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace the following characters with a space character (decimal 32):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;\f, formfeed, decimal 12&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\t, tab, decimal 9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\n, newline, decimal 10&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\r, carriage return, decimal 13&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\v, vertical tab, decimal 11&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;COMPRESS_WHITE_SPACE&lt;/code&gt; also replaces multiple spaces with one space.&lt;/p&gt; &lt;p&gt; &lt;b&gt;HTML_ENTITY_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace HTML-encoded characters with unencoded characters. &lt;code&gt;HTML_ENTITY_DECODE&lt;/code&gt; performs the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)quot;&lt;/code&gt; with &lt;code&gt;&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)nbsp;&lt;/code&gt; with a non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)lt;&lt;/code&gt; with a &quot;less than&quot; symbol&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)gt;&lt;/code&gt; with &lt;code&gt;&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in hexadecimal format, &lt;code&gt;(ampersand)#xhhhh;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in decimal format, &lt;code&gt;(ampersand)#nnnn;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;LOWERCASE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to convert uppercase letters (A-Z) to lowercase (a-z).&lt;/p&gt; &lt;p&gt; &lt;b&gt;URL_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to decode a URL-encoded value.&lt;/p&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Specify &lt;code&gt;NONE&lt;/code&gt; if you don't want to perform any text transformations.&lt;/p&gt;
-- @param FieldToMatch [FieldToMatch] &lt;p&gt;Specifies where in a web request to look for cross-site scripting attacks.&lt;/p&gt;
-- Required parameter: FieldToMatch
-- Required parameter: TextTransformation
function M.XssMatchTuple(TextTransformation, FieldToMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating XssMatchTuple")
	local t = { 
		["TextTransformation"] = TextTransformation,
		["FieldToMatch"] = FieldToMatch,
	}
	M.AssertXssMatchTuple(t)
	return t
end

local GetChangeTokenStatusResponse_keys = { "ChangeTokenStatus" = true, nil }

function M.AssertGetChangeTokenStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenStatusResponse to be of type 'table'")
	if struct["ChangeTokenStatus"] then M.AssertChangeTokenStatus(struct["ChangeTokenStatus"]) end
	for k,_ in pairs(struct) do
		assert(GetChangeTokenStatusResponse_keys[k], "GetChangeTokenStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenStatusResponse
--  
-- @param ChangeTokenStatus [ChangeTokenStatus] &lt;p&gt;The status of the change token.&lt;/p&gt;
function M.GetChangeTokenStatusResponse(ChangeTokenStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeTokenStatusResponse")
	local t = { 
		["ChangeTokenStatus"] = ChangeTokenStatus,
	}
	M.AssertGetChangeTokenStatusResponse(t)
	return t
end

local WafAction_keys = { "Type" = true, nil }

function M.AssertWafAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WafAction to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then M.AssertWafActionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(WafAction_keys[k], "WafAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WafAction
-- &lt;p&gt;For the action that is associated with a rule in a &lt;code&gt;WebACL&lt;/code&gt;, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a &lt;code&gt;WebACL&lt;/code&gt;, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a &lt;code&gt;WebACL&lt;/code&gt;. &lt;/p&gt;
-- @param Type [WafActionType] &lt;p&gt;Specifies how you want AWS WAF to respond to requests that match the settings in a &lt;code&gt;Rule&lt;/code&gt;. Valid settings include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ALLOW&lt;/code&gt;: AWS WAF allows requests&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;BLOCK&lt;/code&gt;: AWS WAF blocks requests&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;COUNT&lt;/code&gt;: AWS WAF increments a counter of the requests that match all of the conditions in the rule. AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify &lt;code&gt;COUNT&lt;/code&gt; for the default action for a &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Type
function M.WafAction(Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WafAction")
	local t = { 
		["Type"] = Type,
	}
	M.AssertWafAction(t)
	return t
end

local DeleteRuleRequest_keys = { "ChangeToken" = true, "RuleId" = true, nil }

function M.AssertDeleteRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRuleRequest_keys[k], "DeleteRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;a&gt;Rule&lt;/a&gt; that you want to delete. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRule&lt;/a&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: ChangeToken
function M.DeleteRuleRequest(ChangeToken, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["RuleId"] = RuleId,
	}
	M.AssertDeleteRuleRequest(t)
	return t
end

local UpdateRuleRequest_keys = { "ChangeToken" = true, "Updates" = true, "RuleId" = true, nil }

function M.AssertUpdateRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertRuleUpdates(struct["Updates"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRuleRequest_keys[k], "UpdateRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [RuleUpdates] &lt;p&gt;An array of &lt;code&gt;RuleUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;Rule&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;RuleUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;Predicate&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;Predicate&lt;/a&gt;: Contains &lt;code&gt;DataId&lt;/code&gt;, &lt;code&gt;Negated&lt;/code&gt;, and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;code&gt;Rule&lt;/code&gt; that you want to update. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;code&gt;CreateRule&lt;/code&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateRuleRequest(ChangeToken, Updates, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuleRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
		["RuleId"] = RuleId,
	}
	M.AssertUpdateRuleRequest(t)
	return t
end

local ListByteMatchSetsResponse_keys = { "NextMarker" = true, "ByteMatchSets" = true, nil }

function M.AssertListByteMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListByteMatchSetsResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["ByteMatchSets"] then M.AssertByteMatchSetSummaries(struct["ByteMatchSets"]) end
	for k,_ in pairs(struct) do
		assert(ListByteMatchSetsResponse_keys[k], "ListByteMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListByteMatchSetsResponse
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;ByteMatchSet&lt;/code&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;ByteMatchSet&lt;/code&gt; objects, submit another &lt;code&gt;ListByteMatchSets&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
-- @param ByteMatchSets [ByteMatchSetSummaries] &lt;p&gt;An array of &lt;a&gt;ByteMatchSetSummary&lt;/a&gt; objects.&lt;/p&gt;
function M.ListByteMatchSetsResponse(NextMarker, ByteMatchSets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListByteMatchSetsResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["ByteMatchSets"] = ByteMatchSets,
	}
	M.AssertListByteMatchSetsResponse(t)
	return t
end

local Predicate_keys = { "Negated" = true, "Type" = true, "DataId" = true, nil }

function M.AssertPredicate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Predicate to be of type 'table'")
	assert(struct["Negated"], "Expected key Negated to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["DataId"], "Expected key DataId to exist in table")
	if struct["Negated"] then M.AssertNegated(struct["Negated"]) end
	if struct["Type"] then M.AssertPredicateType(struct["Type"]) end
	if struct["DataId"] then M.AssertResourceId(struct["DataId"]) end
	for k,_ in pairs(struct) do
		assert(Predicate_keys[k], "Predicate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Predicate
-- &lt;p&gt;Specifies the &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;, &lt;a&gt;XssMatchSet&lt;/a&gt;, and &lt;a&gt;SizeConstraintSet&lt;/a&gt; objects that you want to add to a &lt;code&gt;Rule&lt;/code&gt; and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. &lt;/p&gt;
-- @param Negated [Negated] &lt;p&gt;Set &lt;code&gt;Negated&lt;/code&gt; to &lt;code&gt;False&lt;/code&gt; if you want AWS WAF to allow, block, or count requests based on the settings in the specified &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;, &lt;a&gt;XssMatchSet&lt;/a&gt;, or &lt;a&gt;SizeConstraintSet&lt;/a&gt;. For example, if an &lt;code&gt;IPSet&lt;/code&gt; includes the IP address &lt;code&gt;192.0.2.44&lt;/code&gt;, AWS WAF will allow or block requests based on that IP address.&lt;/p&gt; &lt;p&gt;Set &lt;code&gt;Negated&lt;/code&gt; to &lt;code&gt;True&lt;/code&gt; if you want AWS WAF to allow or block a request based on the negation of the settings in the &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;, &lt;a&gt;XssMatchSet&lt;/a&gt;, or &lt;a&gt;SizeConstraintSet&lt;/a&gt;. For example, if an &lt;code&gt;IPSet&lt;/code&gt; includes the IP address &lt;code&gt;192.0.2.44&lt;/code&gt;, AWS WAF will allow, block, or count requests based on all IP addresses &lt;i&gt;except&lt;/i&gt; &lt;code&gt;192.0.2.44&lt;/code&gt;.&lt;/p&gt;
-- @param Type [PredicateType] &lt;p&gt;The type of predicate in a &lt;code&gt;Rule&lt;/code&gt;, such as &lt;code&gt;ByteMatchSet&lt;/code&gt; or &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt;
-- @param DataId [ResourceId] &lt;p&gt;A unique identifier for a predicate in a &lt;code&gt;Rule&lt;/code&gt;, such as &lt;code&gt;ByteMatchSetId&lt;/code&gt; or &lt;code&gt;IPSetId&lt;/code&gt;. The ID is returned by the corresponding &lt;code&gt;Create&lt;/code&gt; or &lt;code&gt;List&lt;/code&gt; command.&lt;/p&gt;
-- Required parameter: Negated
-- Required parameter: Type
-- Required parameter: DataId
function M.Predicate(Negated, Type, DataId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Predicate")
	local t = { 
		["Negated"] = Negated,
		["Type"] = Type,
		["DataId"] = DataId,
	}
	M.AssertPredicate(t)
	return t
end

local UpdateIPSetRequest_keys = { "IPSetId" = true, "ChangeToken" = true, "Updates" = true, nil }

function M.AssertUpdateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["IPSetId"] then M.AssertResourceId(struct["IPSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertIPSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIPSetRequest_keys[k], "UpdateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetRequest
--  
-- @param IPSetId [ResourceId] &lt;p&gt;The &lt;code&gt;IPSetId&lt;/code&gt; of the &lt;a&gt;IPSet&lt;/a&gt; that you want to update. &lt;code&gt;IPSetId&lt;/code&gt; is returned by &lt;a&gt;CreateIPSet&lt;/a&gt; and by &lt;a&gt;ListIPSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [IPSetUpdates] &lt;p&gt;An array of &lt;code&gt;IPSetUpdate&lt;/code&gt; objects that you want to insert into or delete from an &lt;a&gt;IPSet&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;IPSetUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;IPSetDescriptor&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;IPSetDescriptor&lt;/a&gt;: Contains &lt;code&gt;Type&lt;/code&gt; and &lt;code&gt;Value&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: IPSetId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateIPSetRequest(IPSetId, ChangeToken, Updates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIPSetRequest")
	local t = { 
		["IPSetId"] = IPSetId,
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
	}
	M.AssertUpdateIPSetRequest(t)
	return t
end

local DeleteByteMatchSetRequest_keys = { "ByteMatchSetId" = true, "ChangeToken" = true, nil }

function M.AssertDeleteByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ByteMatchSetId"] then M.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteByteMatchSetRequest_keys[k], "DeleteByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteByteMatchSetRequest
--  
-- @param ByteMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;ByteMatchSetId&lt;/code&gt; of the &lt;a&gt;ByteMatchSet&lt;/a&gt; that you want to delete. &lt;code&gt;ByteMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateByteMatchSet&lt;/a&gt; and by &lt;a&gt;ListByteMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: ByteMatchSetId
-- Required parameter: ChangeToken
function M.DeleteByteMatchSetRequest(ByteMatchSetId, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = ByteMatchSetId,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteByteMatchSetRequest(t)
	return t
end

local DeleteSqlInjectionMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSqlInjectionMatchSetResponse_keys[k], "DeleteSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSqlInjectionMatchSetResponse
-- &lt;p&gt;The response to a request to delete a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; from AWS WAF.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteSqlInjectionMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteSqlInjectionMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteSqlInjectionMatchSetResponse(t)
	return t
end

local UpdateIPSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIPSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIPSetResponse_keys[k], "UpdateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIPSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateIPSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateIPSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIPSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateIPSetResponse(t)
	return t
end

local WAFNonexistentContainerException_keys = { "message" = true, nil }

function M.AssertWAFNonexistentContainerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonexistentContainerException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFNonexistentContainerException_keys[k], "WAFNonexistentContainerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonexistentContainerException
-- &lt;p&gt;The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;Rule&lt;/code&gt; to or delete a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchSet&lt;/code&gt; to or delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; from a &lt;code&gt;Rule&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add an IP address to or delete an IP address from an &lt;code&gt;IPSet&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchTuple&lt;/code&gt; to or delete a &lt;code&gt;ByteMatchTuple&lt;/code&gt; from a &lt;code&gt;ByteMatchSet&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;Rule&lt;/code&gt; to or delete a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchSet&lt;/code&gt; to or delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; from a &lt;code&gt;Rule&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add an IP address to or delete an IP address from an &lt;code&gt;IPSet&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchTuple&lt;/code&gt; to or delete a &lt;code&gt;ByteMatchTuple&lt;/code&gt; from a &lt;code&gt;ByteMatchSet&lt;/code&gt; that doesn't exist.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.WAFNonexistentContainerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFNonexistentContainerException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFNonexistentContainerException(t)
	return t
end

local WAFInvalidAccountException_keys = { nil }

function M.AssertWAFInvalidAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidAccountException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(WAFInvalidAccountException_keys[k], "WAFInvalidAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidAccountException
-- &lt;p&gt;The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.&lt;/p&gt;
function M.WAFInvalidAccountException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFInvalidAccountException")
	local t = { 
	}
	M.AssertWAFInvalidAccountException(t)
	return t
end

local WebACLSummary_keys = { "WebACLId" = true, "Name" = true, nil }

function M.AssertWebACLSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACLSummary to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["WebACLId"] then M.AssertResourceId(struct["WebACLId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(WebACLSummary_keys[k], "WebACLSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACLSummary
-- &lt;p&gt;Contains the identifier and the name or description of the &lt;a&gt;WebACL&lt;/a&gt;.&lt;/p&gt;
-- @param WebACLId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;WebACL&lt;/code&gt;. You use &lt;code&gt;WebACLId&lt;/code&gt; to get information about a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;GetWebACL&lt;/a&gt;), update a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), and delete a &lt;code&gt;WebACL&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteWebACL&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;WebACL&lt;/a&gt;. You can't change the name of a &lt;code&gt;WebACL&lt;/code&gt; after you create it.&lt;/p&gt;
-- Required parameter: WebACLId
-- Required parameter: Name
function M.WebACLSummary(WebACLId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WebACLSummary")
	local t = { 
		["WebACLId"] = WebACLId,
		["Name"] = Name,
	}
	M.AssertWebACLSummary(t)
	return t
end

local GetByteMatchSetRequest_keys = { "ByteMatchSetId" = true, nil }

function M.AssertGetByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	if struct["ByteMatchSetId"] then M.AssertResourceId(struct["ByteMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(GetByteMatchSetRequest_keys[k], "GetByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetByteMatchSetRequest
--  
-- @param ByteMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;ByteMatchSetId&lt;/code&gt; of the &lt;a&gt;ByteMatchSet&lt;/a&gt; that you want to get. &lt;code&gt;ByteMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateByteMatchSet&lt;/a&gt; and by &lt;a&gt;ListByteMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: ByteMatchSetId
function M.GetByteMatchSetRequest(ByteMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = ByteMatchSetId,
	}
	M.AssertGetByteMatchSetRequest(t)
	return t
end

local CreateRateBasedRuleRequest_keys = { "ChangeToken" = true, "RateLimit" = true, "RateKey" = true, "Name" = true, "MetricName" = true, nil }

function M.AssertCreateRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRateBasedRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["RateKey"], "Expected key RateKey to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RateLimit"] then M.AssertRateLimit(struct["RateLimit"]) end
	if struct["RateKey"] then M.AssertRateKey(struct["RateKey"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(CreateRateBasedRuleRequest_keys[k], "CreateRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRateBasedRuleRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateRateBasedRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param RateLimit [RateLimit] &lt;p&gt;The maximum number of requests, which have an identical value in the field that is specified by &lt;code&gt;RateKey&lt;/code&gt;, allowed in a five-minute period. If the number of requests exceeds the &lt;code&gt;RateLimit&lt;/code&gt; and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.&lt;/p&gt;
-- @param RateKey [RateKey] &lt;p&gt;The field that AWS WAF uses to determine if requests are likely arriving from a single source and thus subject to rate monitoring. The only valid value for &lt;code&gt;RateKey&lt;/code&gt; is &lt;code&gt;IP&lt;/code&gt;. &lt;code&gt;IP&lt;/code&gt; indicates that requests that arrive from the same IP address are subject to the &lt;code&gt;RateLimit&lt;/code&gt; that is specified in the &lt;code&gt;RateBasedRule&lt;/code&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;RateBasedRule&lt;/a&gt;. You can't change the name of a &lt;code&gt;RateBasedRule&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for this &lt;code&gt;RateBasedRule&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the &lt;code&gt;RateBasedRule&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: MetricName
-- Required parameter: RateKey
-- Required parameter: RateLimit
-- Required parameter: ChangeToken
function M.CreateRateBasedRuleRequest(ChangeToken, RateLimit, RateKey, Name, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRateBasedRuleRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["RateLimit"] = RateLimit,
		["RateKey"] = RateKey,
		["Name"] = Name,
		["MetricName"] = MetricName,
	}
	M.AssertCreateRateBasedRuleRequest(t)
	return t
end

local DeleteRateBasedRuleResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRateBasedRuleResponse_keys[k], "DeleteRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRateBasedRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteRateBasedRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteRateBasedRuleResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteRateBasedRuleResponse(t)
	return t
end

local DeleteWebACLRequest_keys = { "ChangeToken" = true, "WebACLId" = true, nil }

function M.AssertDeleteWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["WebACLId"] then M.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteWebACLRequest_keys[k], "DeleteWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebACLRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param WebACLId [ResourceId] &lt;p&gt;The &lt;code&gt;WebACLId&lt;/code&gt; of the &lt;a&gt;WebACL&lt;/a&gt; that you want to delete. &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: WebACLId
-- Required parameter: ChangeToken
function M.DeleteWebACLRequest(ChangeToken, WebACLId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWebACLRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["WebACLId"] = WebACLId,
	}
	M.AssertDeleteWebACLRequest(t)
	return t
end

local ListIPSetsResponse_keys = { "IPSets" = true, "NextMarker" = true, nil }

function M.AssertListIPSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsResponse to be of type 'table'")
	if struct["IPSets"] then M.AssertIPSetSummaries(struct["IPSets"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListIPSetsResponse_keys[k], "ListIPSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsResponse
--  
-- @param IPSets [IPSetSummaries] &lt;p&gt;An array of &lt;a&gt;IPSetSummary&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;IPSet&lt;/code&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;IPSet&lt;/code&gt; objects, submit another &lt;code&gt;ListIPSets&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
function M.ListIPSetsResponse(IPSets, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIPSetsResponse")
	local t = { 
		["IPSets"] = IPSets,
		["NextMarker"] = NextMarker,
	}
	M.AssertListIPSetsResponse(t)
	return t
end

local SizeConstraint_keys = { "ComparisonOperator" = true, "TextTransformation" = true, "FieldToMatch" = true, "Size" = true, nil }

function M.AssertSizeConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraint to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["TextTransformation"] then M.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then M.AssertFieldToMatch(struct["FieldToMatch"]) end
	if struct["Size"] then M.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(SizeConstraint_keys[k], "SizeConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraint
-- &lt;p&gt;Specifies a constraint on the size of a part of the web request. AWS WAF uses the &lt;code&gt;Size&lt;/code&gt;, &lt;code&gt;ComparisonOperator&lt;/code&gt;, and &lt;code&gt;FieldToMatch&lt;/code&gt; to build an expression in the form of &quot;&lt;code&gt;Size&lt;/code&gt; &lt;code&gt;ComparisonOperator&lt;/code&gt; size in bytes of &lt;code&gt;FieldToMatch&lt;/code&gt;&quot;. If that expression is true, the &lt;code&gt;SizeConstraint&lt;/code&gt; is considered to match.&lt;/p&gt;
-- @param ComparisonOperator [ComparisonOperator] &lt;p&gt;The type of comparison you want AWS WAF to perform. AWS WAF uses this in combination with the provided &lt;code&gt;Size&lt;/code&gt; and &lt;code&gt;FieldToMatch&lt;/code&gt; to build an expression in the form of &quot;&lt;code&gt;Size&lt;/code&gt; &lt;code&gt;ComparisonOperator&lt;/code&gt; size in bytes of &lt;code&gt;FieldToMatch&lt;/code&gt;&quot;. If that expression is true, the &lt;code&gt;SizeConstraint&lt;/code&gt; is considered to match.&lt;/p&gt; &lt;p&gt; &lt;b&gt;EQ&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is equal to the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;NE&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is not equal to the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;LE&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is less than or equal to the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;LT&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is strictly less than the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;GE&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is greater than or equal to the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;GT&lt;/b&gt;: Used to test if the &lt;code&gt;Size&lt;/code&gt; is strictly greater than the size of the &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;/p&gt;
-- @param TextTransformation [TextTransformation] &lt;p&gt;Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on &lt;code&gt;FieldToMatch&lt;/code&gt; before inspecting a request for a match.&lt;/p&gt; &lt;p&gt;Note that if you choose &lt;code&gt;BODY&lt;/code&gt; for the value of &lt;code&gt;Type&lt;/code&gt;, you must choose &lt;code&gt;NONE&lt;/code&gt; for &lt;code&gt;TextTransformation&lt;/code&gt; because CloudFront forwards only the first 8192 bytes for inspection. &lt;/p&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Specify &lt;code&gt;NONE&lt;/code&gt; if you don't want to perform any text transformations.&lt;/p&gt; &lt;p&gt; &lt;b&gt;CMD_LINE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Delete the following characters: \ &quot; ' ^&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Delete spaces before the following characters: / (&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace the following characters with a space: , ;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace multiple spaces with one space&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Convert uppercase letters (A-Z) to lowercase (a-z)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;COMPRESS_WHITE_SPACE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace the following characters with a space character (decimal 32):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;\f, formfeed, decimal 12&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\t, tab, decimal 9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\n, newline, decimal 10&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\r, carriage return, decimal 13&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\v, vertical tab, decimal 11&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;COMPRESS_WHITE_SPACE&lt;/code&gt; also replaces multiple spaces with one space.&lt;/p&gt; &lt;p&gt; &lt;b&gt;HTML_ENTITY_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace HTML-encoded characters with unencoded characters. &lt;code&gt;HTML_ENTITY_DECODE&lt;/code&gt; performs the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)quot;&lt;/code&gt; with &lt;code&gt;&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)nbsp;&lt;/code&gt; with a non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)lt;&lt;/code&gt; with a &quot;less than&quot; symbol&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)gt;&lt;/code&gt; with &lt;code&gt;&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in hexadecimal format, &lt;code&gt;(ampersand)#xhhhh;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in decimal format, &lt;code&gt;(ampersand)#nnnn;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;LOWERCASE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to convert uppercase letters (A-Z) to lowercase (a-z).&lt;/p&gt; &lt;p&gt; &lt;b&gt;URL_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to decode a URL-encoded value.&lt;/p&gt;
-- @param FieldToMatch [FieldToMatch] &lt;p&gt;Specifies where in a web request to look for the size constraint.&lt;/p&gt;
-- @param Size [Size] &lt;p&gt;The size in bytes that you want AWS WAF to compare against the size of the specified &lt;code&gt;FieldToMatch&lt;/code&gt;. AWS WAF uses this in combination with &lt;code&gt;ComparisonOperator&lt;/code&gt; and &lt;code&gt;FieldToMatch&lt;/code&gt; to build an expression in the form of &quot;&lt;code&gt;Size&lt;/code&gt; &lt;code&gt;ComparisonOperator&lt;/code&gt; size in bytes of &lt;code&gt;FieldToMatch&lt;/code&gt;&quot;. If that expression is true, the &lt;code&gt;SizeConstraint&lt;/code&gt; is considered to match.&lt;/p&gt; &lt;p&gt;Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).&lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;URI&lt;/code&gt; for the value of &lt;code&gt;Type&lt;/code&gt;, the / in the URI counts as one character. For example, the URI &lt;code&gt;/logo.jpg&lt;/code&gt; is nine characters long.&lt;/p&gt;
-- Required parameter: FieldToMatch
-- Required parameter: TextTransformation
-- Required parameter: ComparisonOperator
-- Required parameter: Size
function M.SizeConstraint(ComparisonOperator, TextTransformation, FieldToMatch, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SizeConstraint")
	local t = { 
		["ComparisonOperator"] = ComparisonOperator,
		["TextTransformation"] = TextTransformation,
		["FieldToMatch"] = FieldToMatch,
		["Size"] = Size,
	}
	M.AssertSizeConstraint(t)
	return t
end

local CreateRuleResponse_keys = { "ChangeToken" = true, "Rule" = true, nil }

function M.AssertCreateRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Rule"] then M.AssertRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(CreateRuleResponse_keys[k], "CreateRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param Rule [Rule] &lt;p&gt;The &lt;a&gt;Rule&lt;/a&gt; returned in the &lt;code&gt;CreateRule&lt;/code&gt; response.&lt;/p&gt;
function M.CreateRuleResponse(ChangeToken, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Rule"] = Rule,
	}
	M.AssertCreateRuleResponse(t)
	return t
end

local FieldToMatch_keys = { "Data" = true, "Type" = true, nil }

function M.AssertFieldToMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldToMatch to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Data"] then M.AssertMatchFieldData(struct["Data"]) end
	if struct["Type"] then M.AssertMatchFieldType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(FieldToMatch_keys[k], "FieldToMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldToMatch
-- &lt;p&gt;Specifies where in a web request to look for &lt;code&gt;TargetString&lt;/code&gt;.&lt;/p&gt;
-- @param Data [MatchFieldData] &lt;p&gt;When the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;HEADER&lt;/code&gt;, enter the name of the header that you want AWS WAF to search, for example, &lt;code&gt;User-Agent&lt;/code&gt; or &lt;code&gt;Referer&lt;/code&gt;. If the value of &lt;code&gt;Type&lt;/code&gt; is any other value, omit &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The name of the header is not case sensitive.&lt;/p&gt;
-- @param Type [MatchFieldType] &lt;p&gt;The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;HEADER&lt;/code&gt;: A specified request header, for example, the value of the &lt;code&gt;User-Agent&lt;/code&gt; or &lt;code&gt;Referer&lt;/code&gt; header. If you choose &lt;code&gt;HEADER&lt;/code&gt; for the type, specify the name of the header in &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;METHOD&lt;/code&gt;: The HTTP method, which indicated the type of operation that the request is asking the origin to perform. Amazon CloudFront supports the following methods: &lt;code&gt;DELETE&lt;/code&gt;, &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, &lt;code&gt;OPTIONS&lt;/code&gt;, &lt;code&gt;PATCH&lt;/code&gt;, &lt;code&gt;POST&lt;/code&gt;, and &lt;code&gt;PUT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QUERY_STRING&lt;/code&gt;: A query string, which is the part of a URL that appears after a &lt;code&gt;?&lt;/code&gt; character, if any.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;URI&lt;/code&gt;: The part of a web request that identifies a resource, for example, &lt;code&gt;/images/daily-ad.jpg&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;BODY&lt;/code&gt;: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first &lt;code&gt;8192&lt;/code&gt; bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Type
function M.FieldToMatch(Data, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FieldToMatch")
	local t = { 
		["Data"] = Data,
		["Type"] = Type,
	}
	M.AssertFieldToMatch(t)
	return t
end

local DeleteSqlInjectionMatchSetRequest_keys = { "ChangeToken" = true, "SqlInjectionMatchSetId" = true, nil }

function M.AssertDeleteSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["SqlInjectionMatchSetId"] then M.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSqlInjectionMatchSetRequest_keys[k], "DeleteSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSqlInjectionMatchSetRequest
-- &lt;p&gt;A request to delete a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; from AWS WAF.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; of the &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; that you want to delete. &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSqlInjectionMatchSet&lt;/a&gt; and by &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SqlInjectionMatchSetId
-- Required parameter: ChangeToken
function M.DeleteSqlInjectionMatchSetRequest(ChangeToken, SqlInjectionMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["SqlInjectionMatchSetId"] = SqlInjectionMatchSetId,
	}
	M.AssertDeleteSqlInjectionMatchSetRequest(t)
	return t
end

local GetSizeConstraintSetRequest_keys = { "SizeConstraintSetId" = true, nil }

function M.AssertGetSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	if struct["SizeConstraintSetId"] then M.AssertResourceId(struct["SizeConstraintSetId"]) end
	for k,_ in pairs(struct) do
		assert(GetSizeConstraintSetRequest_keys[k], "GetSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSizeConstraintSetRequest
--  
-- @param SizeConstraintSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SizeConstraintSetId&lt;/code&gt; of the &lt;a&gt;SizeConstraintSet&lt;/a&gt; that you want to get. &lt;code&gt;SizeConstraintSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt; and by &lt;a&gt;ListSizeConstraintSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SizeConstraintSetId
function M.GetSizeConstraintSetRequest(SizeConstraintSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = SizeConstraintSetId,
	}
	M.AssertGetSizeConstraintSetRequest(t)
	return t
end

local ByteMatchTuple_keys = { "TargetString" = true, "PositionalConstraint" = true, "TextTransformation" = true, "FieldToMatch" = true, nil }

function M.AssertByteMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TargetString"], "Expected key TargetString to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	assert(struct["PositionalConstraint"], "Expected key PositionalConstraint to exist in table")
	if struct["TargetString"] then M.AssertByteMatchTargetString(struct["TargetString"]) end
	if struct["PositionalConstraint"] then M.AssertPositionalConstraint(struct["PositionalConstraint"]) end
	if struct["TextTransformation"] then M.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then M.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(ByteMatchTuple_keys[k], "ByteMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchTuple
-- &lt;p&gt;The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.&lt;/p&gt;
-- @param TargetString [ByteMatchTargetString] &lt;p&gt;The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you specified in &lt;code&gt;FieldToMatch&lt;/code&gt;. The maximum length of the value is 50 bytes.&lt;/p&gt; &lt;p&gt;Valid values depend on the values that you specified for &lt;code&gt;FieldToMatch&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;HEADER&lt;/code&gt;: The value that you want AWS WAF to search for in the request header that you specified in &lt;a&gt;FieldToMatch&lt;/a&gt;, for example, the value of the &lt;code&gt;User-Agent&lt;/code&gt; or &lt;code&gt;Referer&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;METHOD&lt;/code&gt;: The HTTP method, which indicates the type of operation specified in the request. CloudFront supports the following methods: &lt;code&gt;DELETE&lt;/code&gt;, &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, &lt;code&gt;OPTIONS&lt;/code&gt;, &lt;code&gt;PATCH&lt;/code&gt;, &lt;code&gt;POST&lt;/code&gt;, and &lt;code&gt;PUT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QUERY_STRING&lt;/code&gt;: The value that you want AWS WAF to search for in the query string, which is the part of a URL that appears after a &lt;code&gt;?&lt;/code&gt; character.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;URI&lt;/code&gt;: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, for example, &lt;code&gt;/images/daily-ad.jpg&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;BODY&lt;/code&gt;: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first &lt;code&gt;8192&lt;/code&gt; bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set. For more information, see &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If &lt;code&gt;TargetString&lt;/code&gt; includes alphabetic characters A-Z and a-z, note that the value is case sensitive.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you're using the AWS WAF API&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.&lt;/p&gt; &lt;p&gt;For example, suppose the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;HEADER&lt;/code&gt; and the value of &lt;code&gt;Data&lt;/code&gt; is &lt;code&gt;User-Agent&lt;/code&gt;. If you want to search the &lt;code&gt;User-Agent&lt;/code&gt; header for the value &lt;code&gt;BadBot&lt;/code&gt;, you base64-encode &lt;code&gt;BadBot&lt;/code&gt; using MIME base64 encoding and include the resulting value, &lt;code&gt;QmFkQm90&lt;/code&gt;, in the value of &lt;code&gt;TargetString&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you're using the AWS CLI or one of the AWS SDKs&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.&lt;/p&gt;
-- @param PositionalConstraint [PositionalConstraint] &lt;p&gt;Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:&lt;/p&gt; &lt;p&gt; &lt;b&gt;CONTAINS&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The specified part of the web request must include the value of &lt;code&gt;TargetString&lt;/code&gt;, but the location doesn't matter.&lt;/p&gt; &lt;p&gt; &lt;b&gt;CONTAINS_WORD&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The specified part of the web request must include the value of &lt;code&gt;TargetString&lt;/code&gt;, and &lt;code&gt;TargetString&lt;/code&gt; must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, &lt;code&gt;TargetString&lt;/code&gt; must be a word, which means one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TargetString&lt;/code&gt; exactly matches the value of the specified part of the web request, such as the value of a header.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TargetString&lt;/code&gt; is at the beginning of the specified part of the web request and is followed by a character other than an alphanumeric character or underscore (_), for example, &lt;code&gt;BadBot;&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TargetString&lt;/code&gt; is at the end of the specified part of the web request and is preceded by a character other than an alphanumeric character or underscore (_), for example, &lt;code&gt;;BadBot&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TargetString&lt;/code&gt; is in the middle of the specified part of the web request and is preceded and followed by characters other than alphanumeric characters or underscore (_), for example, &lt;code&gt;-BadBot;&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;EXACTLY&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The value of the specified part of the web request must exactly match the value of &lt;code&gt;TargetString&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;STARTS_WITH&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The value of &lt;code&gt;TargetString&lt;/code&gt; must appear at the beginning of the specified part of the web request.&lt;/p&gt; &lt;p&gt; &lt;b&gt;ENDS_WITH&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The value of &lt;code&gt;TargetString&lt;/code&gt; must appear at the end of the specified part of the web request.&lt;/p&gt;
-- @param TextTransformation [TextTransformation] &lt;p&gt;Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on &lt;code&gt;TargetString&lt;/code&gt; before inspecting a request for a match.&lt;/p&gt; &lt;p&gt; &lt;b&gt;CMD_LINE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Delete the following characters: \ &quot; ' ^&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Delete spaces before the following characters: / (&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace the following characters with a space: , ;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace multiple spaces with one space&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Convert uppercase letters (A-Z) to lowercase (a-z)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;COMPRESS_WHITE_SPACE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace the following characters with a space character (decimal 32):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;\f, formfeed, decimal 12&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\t, tab, decimal 9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\n, newline, decimal 10&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\r, carriage return, decimal 13&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\v, vertical tab, decimal 11&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;COMPRESS_WHITE_SPACE&lt;/code&gt; also replaces multiple spaces with one space.&lt;/p&gt; &lt;p&gt; &lt;b&gt;HTML_ENTITY_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace HTML-encoded characters with unencoded characters. &lt;code&gt;HTML_ENTITY_DECODE&lt;/code&gt; performs the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)quot;&lt;/code&gt; with &lt;code&gt;&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)nbsp;&lt;/code&gt; with a non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)lt;&lt;/code&gt; with a &quot;less than&quot; symbol&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)gt;&lt;/code&gt; with &lt;code&gt;&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in hexadecimal format, &lt;code&gt;(ampersand)#xhhhh;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in decimal format, &lt;code&gt;(ampersand)#nnnn;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;LOWERCASE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to convert uppercase letters (A-Z) to lowercase (a-z).&lt;/p&gt; &lt;p&gt; &lt;b&gt;URL_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to decode a URL-encoded value.&lt;/p&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Specify &lt;code&gt;NONE&lt;/code&gt; if you don't want to perform any text transformations.&lt;/p&gt;
-- @param FieldToMatch [FieldToMatch] &lt;p&gt;The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see &lt;a&gt;FieldToMatch&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: FieldToMatch
-- Required parameter: TargetString
-- Required parameter: TextTransformation
-- Required parameter: PositionalConstraint
function M.ByteMatchTuple(TargetString, PositionalConstraint, TextTransformation, FieldToMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ByteMatchTuple")
	local t = { 
		["TargetString"] = TargetString,
		["PositionalConstraint"] = PositionalConstraint,
		["TextTransformation"] = TextTransformation,
		["FieldToMatch"] = FieldToMatch,
	}
	M.AssertByteMatchTuple(t)
	return t
end

local GetSampledRequestsResponse_keys = { "TimeWindow" = true, "SampledRequests" = true, "PopulationSize" = true, nil }

function M.AssertGetSampledRequestsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSampledRequestsResponse to be of type 'table'")
	if struct["TimeWindow"] then M.AssertTimeWindow(struct["TimeWindow"]) end
	if struct["SampledRequests"] then M.AssertSampledHTTPRequests(struct["SampledRequests"]) end
	if struct["PopulationSize"] then M.AssertPopulationSize(struct["PopulationSize"]) end
	for k,_ in pairs(struct) do
		assert(GetSampledRequestsResponse_keys[k], "GetSampledRequestsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSampledRequestsResponse
--  
-- @param TimeWindow [TimeWindow] &lt;p&gt;Usually, &lt;code&gt;TimeWindow&lt;/code&gt; is the time range that you specified in the &lt;code&gt;GetSampledRequests&lt;/code&gt; request. However, if your AWS resource received more than 5,000 requests during the time range that you specified in the request, &lt;code&gt;GetSampledRequests&lt;/code&gt; returns the time range for the first 5,000 requests.&lt;/p&gt;
-- @param SampledRequests [SampledHTTPRequests] &lt;p&gt;A complex type that contains detailed information about each of the requests in the sample.&lt;/p&gt;
-- @param PopulationSize [PopulationSize] &lt;p&gt;The total number of requests from which &lt;code&gt;GetSampledRequests&lt;/code&gt; got a sample of &lt;code&gt;MaxItems&lt;/code&gt; requests. If &lt;code&gt;PopulationSize&lt;/code&gt; is less than &lt;code&gt;MaxItems&lt;/code&gt;, the sample includes every request that your AWS resource received during the specified time range.&lt;/p&gt;
function M.GetSampledRequestsResponse(TimeWindow, SampledRequests, PopulationSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSampledRequestsResponse")
	local t = { 
		["TimeWindow"] = TimeWindow,
		["SampledRequests"] = SampledRequests,
		["PopulationSize"] = PopulationSize,
	}
	M.AssertGetSampledRequestsResponse(t)
	return t
end

local IPSetDescriptor_keys = { "Type" = true, "Value" = true, nil }

function M.AssertIPSetDescriptor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetDescriptor to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then M.AssertIPSetDescriptorType(struct["Type"]) end
	if struct["Value"] then M.AssertIPSetDescriptorValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(IPSetDescriptor_keys[k], "IPSetDescriptor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetDescriptor
-- &lt;p&gt;Specifies the IP address type (&lt;code&gt;IPV4&lt;/code&gt; or &lt;code&gt;IPV6&lt;/code&gt;) and the IP address range (in CIDR format) that web requests originate from.&lt;/p&gt;
-- @param Type [IPSetDescriptorType] &lt;p&gt;Specify &lt;code&gt;IPV4&lt;/code&gt; or &lt;code&gt;IPV6&lt;/code&gt;.&lt;/p&gt;
-- @param Value [IPSetDescriptorValue] &lt;p&gt;Specify an IPv4 address by using CIDR notation. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify &lt;code&gt;192.0.2.44/32&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify &lt;code&gt;192.0.2.0/24&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about CIDR notation, see the Wikipedia entry &lt;a href=&quot;https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing&quot;&gt;Classless Inter-Domain Routing&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Specify an IPv6 address by using CIDR notation. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify &lt;code&gt;1111:0000:0000:0000:0000:0000:0000:0111/128&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify &lt;code&gt;1111:0000:0000:0000:0000:0000:0000:0000/64&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Type
-- Required parameter: Value
function M.IPSetDescriptor(Type, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPSetDescriptor")
	local t = { 
		["Type"] = Type,
		["Value"] = Value,
	}
	M.AssertIPSetDescriptor(t)
	return t
end

local WAFDisallowedNameException_keys = { "message" = true, nil }

function M.AssertWAFDisallowedNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFDisallowedNameException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFDisallowedNameException_keys[k], "WAFDisallowedNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFDisallowedNameException
-- &lt;p&gt;The name specified is invalid.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The name specified is invalid.&lt;/p&gt;
function M.WAFDisallowedNameException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFDisallowedNameException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFDisallowedNameException(t)
	return t
end

local GetSqlInjectionMatchSetRequest_keys = { "SqlInjectionMatchSetId" = true, nil }

function M.AssertGetSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	if struct["SqlInjectionMatchSetId"] then M.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(GetSqlInjectionMatchSetRequest_keys[k], "GetSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSqlInjectionMatchSetRequest
-- &lt;p&gt;A request to get a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; of the &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; that you want to get. &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSqlInjectionMatchSet&lt;/a&gt; and by &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SqlInjectionMatchSetId
function M.GetSqlInjectionMatchSetRequest(SqlInjectionMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSqlInjectionMatchSetRequest")
	local t = { 
		["SqlInjectionMatchSetId"] = SqlInjectionMatchSetId,
	}
	M.AssertGetSqlInjectionMatchSetRequest(t)
	return t
end

local CreateXssMatchSetResponse_keys = { "ChangeToken" = true, "XssMatchSet" = true, nil }

function M.AssertCreateXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSet"] then M.AssertXssMatchSet(struct["XssMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateXssMatchSetResponse_keys[k], "CreateXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateXssMatchSetResponse
-- &lt;p&gt;The response to a &lt;code&gt;CreateXssMatchSet&lt;/code&gt; request.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateXssMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param XssMatchSet [XssMatchSet] &lt;p&gt;An &lt;a&gt;XssMatchSet&lt;/a&gt;.&lt;/p&gt;
function M.CreateXssMatchSetResponse(ChangeToken, XssMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["XssMatchSet"] = XssMatchSet,
	}
	M.AssertCreateXssMatchSetResponse(t)
	return t
end

local GetRuleRequest_keys = { "RuleId" = true, nil }

function M.AssertGetRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(GetRuleRequest_keys[k], "GetRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleRequest
--  
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;a&gt;Rule&lt;/a&gt; that you want to get. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRule&lt;/a&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
function M.GetRuleRequest(RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRuleRequest")
	local t = { 
		["RuleId"] = RuleId,
	}
	M.AssertGetRuleRequest(t)
	return t
end

local GetSqlInjectionMatchSetResponse_keys = { "SqlInjectionMatchSet" = true, nil }

function M.AssertGetSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["SqlInjectionMatchSet"] then M.AssertSqlInjectionMatchSet(struct["SqlInjectionMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(GetSqlInjectionMatchSetResponse_keys[k], "GetSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSqlInjectionMatchSetResponse
-- &lt;p&gt;The response to a &lt;a&gt;GetSqlInjectionMatchSet&lt;/a&gt; request.&lt;/p&gt;
-- @param SqlInjectionMatchSet [SqlInjectionMatchSet] &lt;p&gt;Information about the &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; that you specified in the &lt;code&gt;GetSqlInjectionMatchSet&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;: Contains &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt;, and an array of &lt;code&gt;SqlInjectionMatchTuple&lt;/code&gt; objects&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SqlInjectionMatchTuple&lt;/a&gt;: Each &lt;code&gt;SqlInjectionMatchTuple&lt;/code&gt; object contains &lt;code&gt;FieldToMatch&lt;/code&gt; and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetSqlInjectionMatchSetResponse(SqlInjectionMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSqlInjectionMatchSetResponse")
	local t = { 
		["SqlInjectionMatchSet"] = SqlInjectionMatchSet,
	}
	M.AssertGetSqlInjectionMatchSetResponse(t)
	return t
end

local UpdateXssMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateXssMatchSetResponse_keys[k], "UpdateXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateXssMatchSetResponse
-- &lt;p&gt;The response to an &lt;a&gt;UpdateXssMatchSets&lt;/a&gt; request.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateXssMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateXssMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateXssMatchSetResponse(t)
	return t
end

local XssMatchSetSummary_keys = { "XssMatchSetId" = true, "Name" = true, nil }

function M.AssertXssMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSetSummary to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["XssMatchSetId"] then M.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(XssMatchSetSummary_keys[k], "XssMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSetSummary
-- &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; and &lt;code&gt;Name&lt;/code&gt; of an &lt;code&gt;XssMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param XssMatchSetId [ResourceId] &lt;p&gt;A unique identifier for an &lt;code&gt;XssMatchSet&lt;/code&gt;. You use &lt;code&gt;XssMatchSetId&lt;/code&gt; to get information about a &lt;code&gt;XssMatchSet&lt;/code&gt; (see &lt;a&gt;GetXssMatchSet&lt;/a&gt;), update an &lt;code&gt;XssMatchSet&lt;/code&gt; (see &lt;a&gt;UpdateXssMatchSet&lt;/a&gt;), insert an &lt;code&gt;XssMatchSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete an &lt;code&gt;XssMatchSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteXssMatchSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;XssMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateXssMatchSet&lt;/a&gt; and by &lt;a&gt;ListXssMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name of the &lt;code&gt;XssMatchSet&lt;/code&gt;, if any, specified by &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: XssMatchSetId
-- Required parameter: Name
function M.XssMatchSetSummary(XssMatchSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating XssMatchSetSummary")
	local t = { 
		["XssMatchSetId"] = XssMatchSetId,
		["Name"] = Name,
	}
	M.AssertXssMatchSetSummary(t)
	return t
end

local ListXssMatchSetsResponse_keys = { "XssMatchSets" = true, "NextMarker" = true, nil }

function M.AssertListXssMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListXssMatchSetsResponse to be of type 'table'")
	if struct["XssMatchSets"] then M.AssertXssMatchSetSummaries(struct["XssMatchSets"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListXssMatchSetsResponse_keys[k], "ListXssMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListXssMatchSetsResponse
-- &lt;p&gt;The response to a &lt;a&gt;ListXssMatchSets&lt;/a&gt; request.&lt;/p&gt;
-- @param XssMatchSets [XssMatchSetSummaries] &lt;p&gt;An array of &lt;a&gt;XssMatchSetSummary&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;a&gt;XssMatchSet&lt;/a&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;XssMatchSet&lt;/code&gt; objects, submit another &lt;code&gt;ListXssMatchSets&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
function M.ListXssMatchSetsResponse(XssMatchSets, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListXssMatchSetsResponse")
	local t = { 
		["XssMatchSets"] = XssMatchSets,
		["NextMarker"] = NextMarker,
	}
	M.AssertListXssMatchSetsResponse(t)
	return t
end

local ByteMatchSet_keys = { "ByteMatchSetId" = true, "Name" = true, "ByteMatchTuples" = true, nil }

function M.AssertByteMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSet to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ByteMatchTuples"], "Expected key ByteMatchTuples to exist in table")
	if struct["ByteMatchSetId"] then M.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["ByteMatchTuples"] then M.AssertByteMatchTuples(struct["ByteMatchTuples"]) end
	for k,_ in pairs(struct) do
		assert(ByteMatchSet_keys[k], "ByteMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSet
-- &lt;p&gt;In a &lt;a&gt;GetByteMatchSet&lt;/a&gt; request, &lt;code&gt;ByteMatchSet&lt;/code&gt; is a complex type that contains the &lt;code&gt;ByteMatchSetId&lt;/code&gt; and &lt;code&gt;Name&lt;/code&gt; of a &lt;code&gt;ByteMatchSet&lt;/code&gt;, and the values that you specified when you updated the &lt;code&gt;ByteMatchSet&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;A complex type that contains &lt;code&gt;ByteMatchTuple&lt;/code&gt; objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a &lt;code&gt;ByteMatchSet&lt;/code&gt; contains more than one &lt;code&gt;ByteMatchTuple&lt;/code&gt; object, a request needs to match the settings in only one &lt;code&gt;ByteMatchTuple&lt;/code&gt; to be considered a match.&lt;/p&gt;
-- @param ByteMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;ByteMatchSetId&lt;/code&gt; for a &lt;code&gt;ByteMatchSet&lt;/code&gt;. You use &lt;code&gt;ByteMatchSetId&lt;/code&gt; to get information about a &lt;code&gt;ByteMatchSet&lt;/code&gt; (see &lt;a&gt;GetByteMatchSet&lt;/a&gt;), update a &lt;code&gt;ByteMatchSet&lt;/code&gt; (see &lt;a&gt;UpdateByteMatchSet&lt;/a&gt;), insert a &lt;code&gt;ByteMatchSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteByteMatchSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;ByteMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateByteMatchSet&lt;/a&gt; and by &lt;a&gt;ListByteMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;ByteMatchSet&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create a &lt;code&gt;ByteMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param ByteMatchTuples [ByteMatchTuples] &lt;p&gt;Specifies the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.&lt;/p&gt;
-- Required parameter: ByteMatchSetId
-- Required parameter: ByteMatchTuples
function M.ByteMatchSet(ByteMatchSetId, Name, ByteMatchTuples, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ByteMatchSet")
	local t = { 
		["ByteMatchSetId"] = ByteMatchSetId,
		["Name"] = Name,
		["ByteMatchTuples"] = ByteMatchTuples,
	}
	M.AssertByteMatchSet(t)
	return t
end

local GetRateBasedRuleRequest_keys = { "RuleId" = true, nil }

function M.AssertGetRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(GetRateBasedRuleRequest_keys[k], "GetRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleRequest
--  
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;a&gt;RateBasedRule&lt;/a&gt; that you want to get. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRateBasedRule&lt;/a&gt; and by &lt;a&gt;ListRateBasedRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
function M.GetRateBasedRuleRequest(RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRateBasedRuleRequest")
	local t = { 
		["RuleId"] = RuleId,
	}
	M.AssertGetRateBasedRuleRequest(t)
	return t
end

local SampledHTTPRequest_keys = { "Action" = true, "Timestamp" = true, "Request" = true, "Weight" = true, nil }

function M.AssertSampledHTTPRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SampledHTTPRequest to be of type 'table'")
	assert(struct["Request"], "Expected key Request to exist in table")
	assert(struct["Weight"], "Expected key Weight to exist in table")
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["Request"] then M.AssertHTTPRequest(struct["Request"]) end
	if struct["Weight"] then M.AssertSampleWeight(struct["Weight"]) end
	for k,_ in pairs(struct) do
		assert(SampledHTTPRequest_keys[k], "SampledHTTPRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SampledHTTPRequest
-- &lt;p&gt;The response from a &lt;a&gt;GetSampledRequests&lt;/a&gt; request includes a &lt;code&gt;SampledHTTPRequests&lt;/code&gt; complex type that appears as &lt;code&gt;SampledRequests&lt;/code&gt; in the response syntax. &lt;code&gt;SampledHTTPRequests&lt;/code&gt; contains one &lt;code&gt;SampledHTTPRequest&lt;/code&gt; object for each web request that is returned by &lt;code&gt;GetSampledRequests&lt;/code&gt;.&lt;/p&gt;
-- @param Action [Action] &lt;p&gt;The action for the &lt;code&gt;Rule&lt;/code&gt; that the request matched: &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt;
-- @param Timestamp [Timestamp] &lt;p&gt;The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).&lt;/p&gt;
-- @param Request [HTTPRequest] &lt;p&gt;A complex type that contains detailed information about the request.&lt;/p&gt;
-- @param Weight [SampleWeight] &lt;p&gt;A value that indicates how one result in the response relates proportionally to other results in the response. A result that has a weight of &lt;code&gt;2&lt;/code&gt; represents roughly twice as many CloudFront web requests as a result that has a weight of &lt;code&gt;1&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Request
-- Required parameter: Weight
function M.SampledHTTPRequest(Action, Timestamp, Request, Weight, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SampledHTTPRequest")
	local t = { 
		["Action"] = Action,
		["Timestamp"] = Timestamp,
		["Request"] = Request,
		["Weight"] = Weight,
	}
	M.AssertSampledHTTPRequest(t)
	return t
end

local WAFInternalErrorException_keys = { "message" = true, nil }

function M.AssertWAFInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInternalErrorException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFInternalErrorException_keys[k], "WAFInternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInternalErrorException
-- &lt;p&gt;The operation failed because of a system problem, even though the request was valid. Retry your request.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because of a system problem, even though the request was valid. Retry your request.&lt;/p&gt;
function M.WAFInternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFInternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFInternalErrorException(t)
	return t
end

local SqlInjectionMatchTuple_keys = { "TextTransformation" = true, "FieldToMatch" = true, nil }

function M.AssertSqlInjectionMatchTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchTuple to be of type 'table'")
	assert(struct["FieldToMatch"], "Expected key FieldToMatch to exist in table")
	assert(struct["TextTransformation"], "Expected key TextTransformation to exist in table")
	if struct["TextTransformation"] then M.AssertTextTransformation(struct["TextTransformation"]) end
	if struct["FieldToMatch"] then M.AssertFieldToMatch(struct["FieldToMatch"]) end
	for k,_ in pairs(struct) do
		assert(SqlInjectionMatchTuple_keys[k], "SqlInjectionMatchTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchTuple
-- &lt;p&gt;Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.&lt;/p&gt;
-- @param TextTransformation [TextTransformation] &lt;p&gt;Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. If you specify a transformation, AWS WAF performs the transformation on &lt;code&gt;FieldToMatch&lt;/code&gt; before inspecting a request for a match.&lt;/p&gt; &lt;p&gt; &lt;b&gt;CMD_LINE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Delete the following characters: \ &quot; ' ^&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Delete spaces before the following characters: / (&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace the following characters with a space: , ;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replace multiple spaces with one space&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Convert uppercase letters (A-Z) to lowercase (a-z)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;COMPRESS_WHITE_SPACE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace the following characters with a space character (decimal 32):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;\f, formfeed, decimal 12&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\t, tab, decimal 9&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\n, newline, decimal 10&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\r, carriage return, decimal 13&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;\v, vertical tab, decimal 11&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;COMPRESS_WHITE_SPACE&lt;/code&gt; also replaces multiple spaces with one space.&lt;/p&gt; &lt;p&gt; &lt;b&gt;HTML_ENTITY_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to replace HTML-encoded characters with unencoded characters. &lt;code&gt;HTML_ENTITY_DECODE&lt;/code&gt; performs the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)quot;&lt;/code&gt; with &lt;code&gt;&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)nbsp;&lt;/code&gt; with a non-breaking space, decimal 160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)lt;&lt;/code&gt; with a &quot;less than&quot; symbol&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces &lt;code&gt;(ampersand)gt;&lt;/code&gt; with &lt;code&gt;&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in hexadecimal format, &lt;code&gt;(ampersand)#xhhhh;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Replaces characters that are represented in decimal format, &lt;code&gt;(ampersand)#nnnn;&lt;/code&gt;, with the corresponding characters&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;LOWERCASE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to convert uppercase letters (A-Z) to lowercase (a-z).&lt;/p&gt; &lt;p&gt; &lt;b&gt;URL_DECODE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Use this option to decode a URL-encoded value.&lt;/p&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Specify &lt;code&gt;NONE&lt;/code&gt; if you don't want to perform any text transformations.&lt;/p&gt;
-- @param FieldToMatch [FieldToMatch] &lt;p&gt;Specifies where in a web request to look for snippets of malicious SQL code.&lt;/p&gt;
-- Required parameter: FieldToMatch
-- Required parameter: TextTransformation
function M.SqlInjectionMatchTuple(TextTransformation, FieldToMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlInjectionMatchTuple")
	local t = { 
		["TextTransformation"] = TextTransformation,
		["FieldToMatch"] = FieldToMatch,
	}
	M.AssertSqlInjectionMatchTuple(t)
	return t
end

local GetRateBasedRuleResponse_keys = { "Rule" = true, nil }

function M.AssertGetRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleResponse to be of type 'table'")
	if struct["Rule"] then M.AssertRateBasedRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(GetRateBasedRuleResponse_keys[k], "GetRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleResponse
--  
-- @param Rule [RateBasedRule] &lt;p&gt;Information about the &lt;a&gt;RateBasedRule&lt;/a&gt; that you specified in the &lt;code&gt;GetRateBasedRule&lt;/code&gt; request.&lt;/p&gt;
function M.GetRateBasedRuleResponse(Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRateBasedRuleResponse")
	local t = { 
		["Rule"] = Rule,
	}
	M.AssertGetRateBasedRuleResponse(t)
	return t
end

local UpdateSqlInjectionMatchSetRequest_keys = { "ChangeToken" = true, "Updates" = true, "SqlInjectionMatchSetId" = true, nil }

function M.AssertUpdateSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertSqlInjectionMatchSetUpdates(struct["Updates"]) end
	if struct["SqlInjectionMatchSetId"] then M.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSqlInjectionMatchSetRequest_keys[k], "UpdateSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSqlInjectionMatchSetRequest
-- &lt;p&gt;A request to update a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [SqlInjectionMatchSetUpdates] &lt;p&gt;An array of &lt;code&gt;SqlInjectionMatchSetUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SqlInjectionMatchSetUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;SqlInjectionMatchTuple&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SqlInjectionMatchTuple&lt;/a&gt;: Contains &lt;code&gt;FieldToMatch&lt;/code&gt; and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SqlInjectionMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; of the &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; that you want to update. &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSqlInjectionMatchSet&lt;/a&gt; and by &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SqlInjectionMatchSetId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateSqlInjectionMatchSetRequest(ChangeToken, Updates, SqlInjectionMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
		["SqlInjectionMatchSetId"] = SqlInjectionMatchSetId,
	}
	M.AssertUpdateSqlInjectionMatchSetRequest(t)
	return t
end

local WAFInvalidOperationException_keys = { "message" = true, nil }

function M.AssertWAFInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidOperationException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFInvalidOperationException_keys[k], "WAFInvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidOperationException
-- &lt;p&gt;The operation failed because there was nothing to do. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to remove a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt;, but the &lt;code&gt;Rule&lt;/code&gt; isn't in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to remove an IP address from an &lt;code&gt;IPSet&lt;/code&gt;, but the IP address isn't in the specified &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to remove a &lt;code&gt;ByteMatchTuple&lt;/code&gt; from a &lt;code&gt;ByteMatchSet&lt;/code&gt;, but the &lt;code&gt;ByteMatchTuple&lt;/code&gt; isn't in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;Rule&lt;/code&gt; to a &lt;code&gt;WebACL&lt;/code&gt;, but the &lt;code&gt;Rule&lt;/code&gt; already exists in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add an IP address to an &lt;code&gt;IPSet&lt;/code&gt;, but the IP address already exists in the specified &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchTuple&lt;/code&gt; to a &lt;code&gt;ByteMatchSet&lt;/code&gt;, but the &lt;code&gt;ByteMatchTuple&lt;/code&gt; already exists in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because there was nothing to do. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to remove a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt;, but the &lt;code&gt;Rule&lt;/code&gt; isn't in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to remove an IP address from an &lt;code&gt;IPSet&lt;/code&gt;, but the IP address isn't in the specified &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to remove a &lt;code&gt;ByteMatchTuple&lt;/code&gt; from a &lt;code&gt;ByteMatchSet&lt;/code&gt;, but the &lt;code&gt;ByteMatchTuple&lt;/code&gt; isn't in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;Rule&lt;/code&gt; to a &lt;code&gt;WebACL&lt;/code&gt;, but the &lt;code&gt;Rule&lt;/code&gt; already exists in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add an IP address to an &lt;code&gt;IPSet&lt;/code&gt;, but the IP address already exists in the specified &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to add a &lt;code&gt;ByteMatchTuple&lt;/code&gt; to a &lt;code&gt;ByteMatchSet&lt;/code&gt;, but the &lt;code&gt;ByteMatchTuple&lt;/code&gt; already exists in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.WAFInvalidOperationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFInvalidOperationException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFInvalidOperationException(t)
	return t
end

local CreateByteMatchSetResponse_keys = { "ChangeToken" = true, "ByteMatchSet" = true, nil }

function M.AssertCreateByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["ByteMatchSet"] then M.AssertByteMatchSet(struct["ByteMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateByteMatchSetResponse_keys[k], "CreateByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateByteMatchSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateByteMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param ByteMatchSet [ByteMatchSet] &lt;p&gt;A &lt;a&gt;ByteMatchSet&lt;/a&gt; that contains no &lt;code&gt;ByteMatchTuple&lt;/code&gt; objects.&lt;/p&gt;
function M.CreateByteMatchSetResponse(ChangeToken, ByteMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["ByteMatchSet"] = ByteMatchSet,
	}
	M.AssertCreateByteMatchSetResponse(t)
	return t
end

local GetByteMatchSetResponse_keys = { "ByteMatchSet" = true, nil }

function M.AssertGetByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetByteMatchSetResponse to be of type 'table'")
	if struct["ByteMatchSet"] then M.AssertByteMatchSet(struct["ByteMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(GetByteMatchSetResponse_keys[k], "GetByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetByteMatchSetResponse
--  
-- @param ByteMatchSet [ByteMatchSet] &lt;p&gt;Information about the &lt;a&gt;ByteMatchSet&lt;/a&gt; that you specified in the &lt;code&gt;GetByteMatchSet&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ByteMatchSet&lt;/a&gt;: Contains &lt;code&gt;ByteMatchSetId&lt;/code&gt;, &lt;code&gt;ByteMatchTuples&lt;/code&gt;, and &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ByteMatchTuples&lt;/code&gt;: Contains an array of &lt;a&gt;ByteMatchTuple&lt;/a&gt; objects. Each &lt;code&gt;ByteMatchTuple&lt;/code&gt; object contains &lt;a&gt;FieldToMatch&lt;/a&gt;, &lt;code&gt;PositionalConstraint&lt;/code&gt;, &lt;code&gt;TargetString&lt;/code&gt;, and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetByteMatchSetResponse(ByteMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetByteMatchSetResponse")
	local t = { 
		["ByteMatchSet"] = ByteMatchSet,
	}
	M.AssertGetByteMatchSetResponse(t)
	return t
end

local GetChangeTokenResponse_keys = { "ChangeToken" = true, nil }

function M.AssertGetChangeTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(GetChangeTokenResponse_keys[k], "GetChangeTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used in the request. Use this value in a &lt;code&gt;GetChangeTokenStatus&lt;/code&gt; request to get the current status of the request. &lt;/p&gt;
function M.GetChangeTokenResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeTokenResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertGetChangeTokenResponse(t)
	return t
end

local WAFReferencedItemException_keys = { "message" = true, nil }

function M.AssertWAFReferencedItemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFReferencedItemException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFReferencedItemException_keys[k], "WAFReferencedItemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFReferencedItemException
-- &lt;p&gt;The operation failed because you tried to delete an object that is still in use. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; that is still referenced by a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;Rule&lt;/code&gt; that is still referenced by a &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because you tried to delete an object that is still in use. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; that is still referenced by a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;Rule&lt;/code&gt; that is still referenced by a &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.WAFReferencedItemException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFReferencedItemException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFReferencedItemException(t)
	return t
end

local WebACL_keys = { "DefaultAction" = true, "Rules" = true, "MetricName" = true, "WebACLId" = true, "Name" = true, nil }

function M.AssertWebACL(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACL to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["DefaultAction"], "Expected key DefaultAction to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["DefaultAction"] then M.AssertWafAction(struct["DefaultAction"]) end
	if struct["Rules"] then M.AssertActivatedRules(struct["Rules"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	if struct["WebACLId"] then M.AssertResourceId(struct["WebACLId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(WebACL_keys[k], "WebACL contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACL
-- &lt;p&gt;Contains the &lt;code&gt;Rules&lt;/code&gt; that identify the requests that you want to allow, block, or count. In a &lt;code&gt;WebACL&lt;/code&gt;, you also specify a default action (&lt;code&gt;ALLOW&lt;/code&gt; or &lt;code&gt;BLOCK&lt;/code&gt;), and the action for each &lt;code&gt;Rule&lt;/code&gt; that you add to a &lt;code&gt;WebACL&lt;/code&gt;, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the &lt;code&gt;WebACL&lt;/code&gt; with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one &lt;code&gt;Rule&lt;/code&gt; to a &lt;code&gt;WebACL&lt;/code&gt;, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see &lt;a&gt;UpdateWebACL&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultAction [WafAction] &lt;p&gt;The action to perform if none of the &lt;code&gt;Rules&lt;/code&gt; contained in the &lt;code&gt;WebACL&lt;/code&gt; match. The action is specified by the &lt;a&gt;WafAction&lt;/a&gt; object.&lt;/p&gt;
-- @param Rules [ActivatedRules] &lt;p&gt;An array that contains the action for each &lt;code&gt;Rule&lt;/code&gt; in a &lt;code&gt;WebACL&lt;/code&gt;, the priority of the &lt;code&gt;Rule&lt;/code&gt;, and the ID of the &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for this &lt;code&gt;WebACL&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change &lt;code&gt;MetricName&lt;/code&gt; after you create the &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- @param WebACLId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;WebACL&lt;/code&gt;. You use &lt;code&gt;WebACLId&lt;/code&gt; to get information about a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;GetWebACL&lt;/a&gt;), update a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), and delete a &lt;code&gt;WebACL&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteWebACL&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;code&gt;WebACL&lt;/code&gt;. You can't change the name of a &lt;code&gt;WebACL&lt;/code&gt; after you create it.&lt;/p&gt;
-- Required parameter: WebACLId
-- Required parameter: DefaultAction
-- Required parameter: Rules
function M.WebACL(DefaultAction, Rules, MetricName, WebACLId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WebACL")
	local t = { 
		["DefaultAction"] = DefaultAction,
		["Rules"] = Rules,
		["MetricName"] = MetricName,
		["WebACLId"] = WebACLId,
		["Name"] = Name,
	}
	M.AssertWebACL(t)
	return t
end

local ListWebACLsResponse_keys = { "NextMarker" = true, "WebACLs" = true, nil }

function M.AssertListWebACLsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebACLsResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["WebACLs"] then M.AssertWebACLSummaries(struct["WebACLs"]) end
	for k,_ in pairs(struct) do
		assert(ListWebACLsResponse_keys[k], "ListWebACLsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebACLsResponse
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;WebACL&lt;/code&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;WebACL&lt;/code&gt; objects, submit another &lt;code&gt;ListWebACLs&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
-- @param WebACLs [WebACLSummaries] &lt;p&gt;An array of &lt;a&gt;WebACLSummary&lt;/a&gt; objects.&lt;/p&gt;
function M.ListWebACLsResponse(NextMarker, WebACLs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWebACLsResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["WebACLs"] = WebACLs,
	}
	M.AssertListWebACLsResponse(t)
	return t
end

local CreateSqlInjectionMatchSetResponse_keys = { "ChangeToken" = true, "SqlInjectionMatchSet" = true, nil }

function M.AssertCreateSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["SqlInjectionMatchSet"] then M.AssertSqlInjectionMatchSet(struct["SqlInjectionMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateSqlInjectionMatchSetResponse_keys[k], "CreateSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSqlInjectionMatchSetResponse
-- &lt;p&gt;The response to a &lt;code&gt;CreateSqlInjectionMatchSet&lt;/code&gt; request.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateSqlInjectionMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchSet [SqlInjectionMatchSet] &lt;p&gt;A &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;.&lt;/p&gt;
function M.CreateSqlInjectionMatchSetResponse(ChangeToken, SqlInjectionMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["SqlInjectionMatchSet"] = SqlInjectionMatchSet,
	}
	M.AssertCreateSqlInjectionMatchSetResponse(t)
	return t
end

local CreateSizeConstraintSetResponse_keys = { "SizeConstraintSet" = true, "ChangeToken" = true, nil }

function M.AssertCreateSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSizeConstraintSetResponse to be of type 'table'")
	if struct["SizeConstraintSet"] then M.AssertSizeConstraintSet(struct["SizeConstraintSet"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateSizeConstraintSetResponse_keys[k], "CreateSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSizeConstraintSetResponse
--  
-- @param SizeConstraintSet [SizeConstraintSet] &lt;p&gt;A &lt;a&gt;SizeConstraintSet&lt;/a&gt; that contains no &lt;code&gt;SizeConstraint&lt;/code&gt; objects.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateSizeConstraintSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.CreateSizeConstraintSetResponse(SizeConstraintSet, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSizeConstraintSetResponse")
	local t = { 
		["SizeConstraintSet"] = SizeConstraintSet,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertCreateSizeConstraintSetResponse(t)
	return t
end

local GetSampledRequestsRequest_keys = { "TimeWindow" = true, "WebAclId" = true, "MaxItems" = true, "RuleId" = true, nil }

function M.AssertGetSampledRequestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSampledRequestsRequest to be of type 'table'")
	assert(struct["WebAclId"], "Expected key WebAclId to exist in table")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["TimeWindow"], "Expected key TimeWindow to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TimeWindow"] then M.AssertTimeWindow(struct["TimeWindow"]) end
	if struct["WebAclId"] then M.AssertResourceId(struct["WebAclId"]) end
	if struct["MaxItems"] then M.AssertGetSampledRequestsMaxItems(struct["MaxItems"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(GetSampledRequestsRequest_keys[k], "GetSampledRequestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSampledRequestsRequest
--  
-- @param TimeWindow [TimeWindow] &lt;p&gt;The start date and time and the end date and time of the range for which you want &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of requests. Specify the date and time in the following format: &lt;code&gt;&quot;2016-09-27T14:50Z&quot;&lt;/code&gt;. You can specify any time range in the previous three hours.&lt;/p&gt;
-- @param WebAclId [ResourceId] &lt;p&gt;The &lt;code&gt;WebACLId&lt;/code&gt; of the &lt;code&gt;WebACL&lt;/code&gt; for which you want &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of requests.&lt;/p&gt;
-- @param MaxItems [GetSampledRequestsMaxItems] &lt;p&gt;The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of &lt;code&gt;MaxItems&lt;/code&gt;, &lt;code&gt;GetSampledRequests&lt;/code&gt; returns information about all of them. &lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt; &lt;code&gt;RuleId&lt;/code&gt; is one of two values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;code&gt;Rule&lt;/code&gt; for which you want &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Default_Action&lt;/code&gt;, which causes &lt;code&gt;GetSampledRequests&lt;/code&gt; to return a sample of the requests that didn't match any of the rules in the specified &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: WebAclId
-- Required parameter: RuleId
-- Required parameter: TimeWindow
-- Required parameter: MaxItems
function M.GetSampledRequestsRequest(TimeWindow, WebAclId, MaxItems, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSampledRequestsRequest")
	local t = { 
		["TimeWindow"] = TimeWindow,
		["WebAclId"] = WebAclId,
		["MaxItems"] = MaxItems,
		["RuleId"] = RuleId,
	}
	M.AssertGetSampledRequestsRequest(t)
	return t
end

local GetRateBasedRuleManagedKeysResponse_keys = { "ManagedKeys" = true, "NextMarker" = true, nil }

function M.AssertGetRateBasedRuleManagedKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleManagedKeysResponse to be of type 'table'")
	if struct["ManagedKeys"] then M.AssertManagedKeys(struct["ManagedKeys"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(GetRateBasedRuleManagedKeysResponse_keys[k], "GetRateBasedRuleManagedKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleManagedKeysResponse
--  
-- @param ManagedKeys [ManagedKeys] &lt;p&gt;An array of IP addresses that currently are blocked by the specified &lt;a&gt;RateBasedRule&lt;/a&gt;. &lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;A null value and not currently used.&lt;/p&gt;
function M.GetRateBasedRuleManagedKeysResponse(ManagedKeys, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRateBasedRuleManagedKeysResponse")
	local t = { 
		["ManagedKeys"] = ManagedKeys,
		["NextMarker"] = NextMarker,
	}
	M.AssertGetRateBasedRuleManagedKeysResponse(t)
	return t
end

local DeleteSizeConstraintSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSizeConstraintSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSizeConstraintSetResponse_keys[k], "DeleteSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSizeConstraintSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteSizeConstraintSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteSizeConstraintSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSizeConstraintSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteSizeConstraintSetResponse(t)
	return t
end

local UpdateXssMatchSetRequest_keys = { "ChangeToken" = true, "XssMatchSetId" = true, "Updates" = true, nil }

function M.AssertUpdateXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSetId"] then M.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Updates"] then M.AssertXssMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(UpdateXssMatchSetRequest_keys[k], "UpdateXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateXssMatchSetRequest
-- &lt;p&gt;A request to update an &lt;a&gt;XssMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param XssMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;XssMatchSetId&lt;/code&gt; of the &lt;code&gt;XssMatchSet&lt;/code&gt; that you want to update. &lt;code&gt;XssMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateXssMatchSet&lt;/a&gt; and by &lt;a&gt;ListXssMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [XssMatchSetUpdates] &lt;p&gt;An array of &lt;code&gt;XssMatchSetUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;XssMatchSet&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;XssMatchSetUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;XssMatchTuple&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;XssMatchTuple&lt;/a&gt;: Contains &lt;code&gt;FieldToMatch&lt;/code&gt; and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: XssMatchSetId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateXssMatchSetRequest(ChangeToken, XssMatchSetId, Updates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["XssMatchSetId"] = XssMatchSetId,
		["Updates"] = Updates,
	}
	M.AssertUpdateXssMatchSetRequest(t)
	return t
end

local UpdateByteMatchSetRequest_keys = { "ByteMatchSetId" = true, "ChangeToken" = true, "Updates" = true, nil }

function M.AssertUpdateByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateByteMatchSetRequest to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["ByteMatchSetId"] then M.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertByteMatchSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(UpdateByteMatchSetRequest_keys[k], "UpdateByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateByteMatchSetRequest
--  
-- @param ByteMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;ByteMatchSetId&lt;/code&gt; of the &lt;a&gt;ByteMatchSet&lt;/a&gt; that you want to update. &lt;code&gt;ByteMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateByteMatchSet&lt;/a&gt; and by &lt;a&gt;ListByteMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [ByteMatchSetUpdates] &lt;p&gt;An array of &lt;code&gt;ByteMatchSetUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;ByteMatchSet&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ByteMatchSetUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;ByteMatchTuple&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ByteMatchTuple&lt;/a&gt;: Contains &lt;code&gt;FieldToMatch&lt;/code&gt;, &lt;code&gt;PositionalConstraint&lt;/code&gt;, &lt;code&gt;TargetString&lt;/code&gt;, and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: ByteMatchSetId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateByteMatchSetRequest(ByteMatchSetId, ChangeToken, Updates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateByteMatchSetRequest")
	local t = { 
		["ByteMatchSetId"] = ByteMatchSetId,
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
	}
	M.AssertUpdateByteMatchSetRequest(t)
	return t
end

local GetWebACLRequest_keys = { "WebACLId" = true, nil }

function M.AssertGetWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["WebACLId"] then M.AssertResourceId(struct["WebACLId"]) end
	for k,_ in pairs(struct) do
		assert(GetWebACLRequest_keys[k], "GetWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLRequest
--  
-- @param WebACLId [ResourceId] &lt;p&gt;The &lt;code&gt;WebACLId&lt;/code&gt; of the &lt;a&gt;WebACL&lt;/a&gt; that you want to get. &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: WebACLId
function M.GetWebACLRequest(WebACLId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetWebACLRequest")
	local t = { 
		["WebACLId"] = WebACLId,
	}
	M.AssertGetWebACLRequest(t)
	return t
end

local IPSetSummary_keys = { "IPSetId" = true, "Name" = true, nil }

function M.AssertIPSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetSummary to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["IPSetId"] then M.AssertResourceId(struct["IPSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(IPSetSummary_keys[k], "IPSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetSummary
-- &lt;p&gt;Contains the identifier and the name of the &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt;
-- @param IPSetId [ResourceId] &lt;p&gt;The &lt;code&gt;IPSetId&lt;/code&gt; for an &lt;a&gt;IPSet&lt;/a&gt;. You can use &lt;code&gt;IPSetId&lt;/code&gt; in a &lt;a&gt;GetIPSet&lt;/a&gt; request to get detailed information about an &lt;a&gt;IPSet&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;IPSet&lt;/a&gt;. You can't change the name of an &lt;code&gt;IPSet&lt;/code&gt; after you create it.&lt;/p&gt;
-- Required parameter: IPSetId
-- Required parameter: Name
function M.IPSetSummary(IPSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPSetSummary")
	local t = { 
		["IPSetId"] = IPSetId,
		["Name"] = Name,
	}
	M.AssertIPSetSummary(t)
	return t
end

local GetIPSetResponse_keys = { "IPSet" = true, nil }

function M.AssertGetIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIPSetResponse to be of type 'table'")
	if struct["IPSet"] then M.AssertIPSet(struct["IPSet"]) end
	for k,_ in pairs(struct) do
		assert(GetIPSetResponse_keys[k], "GetIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIPSetResponse
--  
-- @param IPSet [IPSet] &lt;p&gt;Information about the &lt;a&gt;IPSet&lt;/a&gt; that you specified in the &lt;code&gt;GetIPSet&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;IPSet&lt;/a&gt;: Contains &lt;code&gt;IPSetDescriptors&lt;/code&gt;, &lt;code&gt;IPSetId&lt;/code&gt;, and &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;IPSetDescriptors&lt;/code&gt;: Contains an array of &lt;a&gt;IPSetDescriptor&lt;/a&gt; objects. Each &lt;code&gt;IPSetDescriptor&lt;/code&gt; object contains &lt;code&gt;Type&lt;/code&gt; and &lt;code&gt;Value&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetIPSetResponse(IPSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIPSetResponse")
	local t = { 
		["IPSet"] = IPSet,
	}
	M.AssertGetIPSetResponse(t)
	return t
end

local GetWebACLResponse_keys = { "WebACL" = true, nil }

function M.AssertGetWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWebACLResponse to be of type 'table'")
	if struct["WebACL"] then M.AssertWebACL(struct["WebACL"]) end
	for k,_ in pairs(struct) do
		assert(GetWebACLResponse_keys[k], "GetWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWebACLResponse
--  
-- @param WebACL [WebACL] &lt;p&gt;Information about the &lt;a&gt;WebACL&lt;/a&gt; that you specified in the &lt;code&gt;GetWebACL&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;WebACL&lt;/a&gt;: Contains &lt;code&gt;DefaultAction&lt;/code&gt;, &lt;code&gt;MetricName&lt;/code&gt;, &lt;code&gt;Name&lt;/code&gt;, an array of &lt;code&gt;Rule&lt;/code&gt; objects, and &lt;code&gt;WebACLId&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DefaultAction&lt;/code&gt; (Data type is &lt;a&gt;WafAction&lt;/a&gt;): Contains &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Rules&lt;/code&gt;: Contains an array of &lt;code&gt;ActivatedRule&lt;/code&gt; objects, which contain &lt;code&gt;Action&lt;/code&gt;, &lt;code&gt;Priority&lt;/code&gt;, and &lt;code&gt;RuleId&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Action&lt;/code&gt;: Contains &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetWebACLResponse(WebACL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetWebACLResponse")
	local t = { 
		["WebACL"] = WebACL,
	}
	M.AssertGetWebACLResponse(t)
	return t
end

local UpdateSizeConstraintSetRequest_keys = { "SizeConstraintSetId" = true, "ChangeToken" = true, "Updates" = true, nil }

function M.AssertUpdateSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	if struct["SizeConstraintSetId"] then M.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertSizeConstraintSetUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSizeConstraintSetRequest_keys[k], "UpdateSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSizeConstraintSetRequest
--  
-- @param SizeConstraintSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SizeConstraintSetId&lt;/code&gt; of the &lt;a&gt;SizeConstraintSet&lt;/a&gt; that you want to update. &lt;code&gt;SizeConstraintSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt; and by &lt;a&gt;ListSizeConstraintSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [SizeConstraintSetUpdates] &lt;p&gt;An array of &lt;code&gt;SizeConstraintSetUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;SizeConstraintSet&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SizeConstraintSetUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;SizeConstraint&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SizeConstraint&lt;/a&gt;: Contains &lt;code&gt;FieldToMatch&lt;/code&gt;, &lt;code&gt;TextTransformation&lt;/code&gt;, &lt;code&gt;ComparisonOperator&lt;/code&gt;, and &lt;code&gt;Size&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: SizeConstraintSetId
-- Required parameter: ChangeToken
-- Required parameter: Updates
function M.UpdateSizeConstraintSetRequest(SizeConstraintSetId, ChangeToken, Updates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = SizeConstraintSetId,
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
	}
	M.AssertUpdateSizeConstraintSetRequest(t)
	return t
end

local DeleteXssMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteXssMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteXssMatchSetResponse_keys[k], "DeleteXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteXssMatchSetResponse
-- &lt;p&gt;The response to a request to delete an &lt;a&gt;XssMatchSet&lt;/a&gt; from AWS WAF.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteXssMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteXssMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteXssMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteXssMatchSetResponse(t)
	return t
end

local DeleteRateBasedRuleRequest_keys = { "ChangeToken" = true, "RuleId" = true, nil }

function M.AssertDeleteRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRateBasedRuleRequest_keys[k], "DeleteRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRateBasedRuleRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;a&gt;RateBasedRule&lt;/a&gt; that you want to delete. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRateBasedRule&lt;/a&gt; and by &lt;a&gt;ListRateBasedRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: ChangeToken
function M.DeleteRateBasedRuleRequest(ChangeToken, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRateBasedRuleRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["RuleId"] = RuleId,
	}
	M.AssertDeleteRateBasedRuleRequest(t)
	return t
end

local DeleteIPSetRequest_keys = { "IPSetId" = true, "ChangeToken" = true, nil }

function M.AssertDeleteIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetRequest to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["IPSetId"] then M.AssertResourceId(struct["IPSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIPSetRequest_keys[k], "DeleteIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetRequest
--  
-- @param IPSetId [ResourceId] &lt;p&gt;The &lt;code&gt;IPSetId&lt;/code&gt; of the &lt;a&gt;IPSet&lt;/a&gt; that you want to delete. &lt;code&gt;IPSetId&lt;/code&gt; is returned by &lt;a&gt;CreateIPSet&lt;/a&gt; and by &lt;a&gt;ListIPSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: IPSetId
-- Required parameter: ChangeToken
function M.DeleteIPSetRequest(IPSetId, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIPSetRequest")
	local t = { 
		["IPSetId"] = IPSetId,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteIPSetRequest(t)
	return t
end

local UpdateWebACLResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebACLResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateWebACLResponse_keys[k], "UpdateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebACLResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateWebACL&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateWebACLResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateWebACLResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateWebACLResponse(t)
	return t
end

local XssMatchSet_keys = { "XssMatchTuples" = true, "XssMatchSetId" = true, "Name" = true, nil }

function M.AssertXssMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSet to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["XssMatchTuples"], "Expected key XssMatchTuples to exist in table")
	if struct["XssMatchTuples"] then M.AssertXssMatchTuples(struct["XssMatchTuples"]) end
	if struct["XssMatchSetId"] then M.AssertResourceId(struct["XssMatchSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(XssMatchSet_keys[k], "XssMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSet
-- &lt;p&gt;A complex type that contains &lt;code&gt;XssMatchTuple&lt;/code&gt; objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a &lt;code&gt;XssMatchSet&lt;/code&gt; contains more than one &lt;code&gt;XssMatchTuple&lt;/code&gt; object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.&lt;/p&gt;
-- @param XssMatchTuples [XssMatchTuples] &lt;p&gt;Specifies the parts of web requests that you want to inspect for cross-site scripting attacks.&lt;/p&gt;
-- @param XssMatchSetId [ResourceId] &lt;p&gt;A unique identifier for an &lt;code&gt;XssMatchSet&lt;/code&gt;. You use &lt;code&gt;XssMatchSetId&lt;/code&gt; to get information about an &lt;code&gt;XssMatchSet&lt;/code&gt; (see &lt;a&gt;GetXssMatchSet&lt;/a&gt;), update an &lt;code&gt;XssMatchSet&lt;/code&gt; (see &lt;a&gt;UpdateXssMatchSet&lt;/a&gt;), insert an &lt;code&gt;XssMatchSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete an &lt;code&gt;XssMatchSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteXssMatchSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;XssMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateXssMatchSet&lt;/a&gt; and by &lt;a&gt;ListXssMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name, if any, of the &lt;code&gt;XssMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: XssMatchSetId
-- Required parameter: XssMatchTuples
function M.XssMatchSet(XssMatchTuples, XssMatchSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating XssMatchSet")
	local t = { 
		["XssMatchTuples"] = XssMatchTuples,
		["XssMatchSetId"] = XssMatchSetId,
		["Name"] = Name,
	}
	M.AssertXssMatchSet(t)
	return t
end

local UpdateSizeConstraintSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSizeConstraintSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSizeConstraintSetResponse_keys[k], "UpdateSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSizeConstraintSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateSizeConstraintSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateSizeConstraintSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSizeConstraintSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateSizeConstraintSetResponse(t)
	return t
end

local SizeConstraintSetUpdate_keys = { "Action" = true, "SizeConstraint" = true, nil }

function M.AssertSizeConstraintSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["SizeConstraint"], "Expected key SizeConstraint to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["SizeConstraint"] then M.AssertSizeConstraint(struct["SizeConstraint"]) end
	for k,_ in pairs(struct) do
		assert(SizeConstraintSetUpdate_keys[k], "SizeConstraintSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSetUpdate
-- &lt;p&gt;Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a &lt;a&gt;SizeConstraintSet&lt;/a&gt; or delete it from a &lt;code&gt;SizeConstraintSet&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specify &lt;code&gt;INSERT&lt;/code&gt; to add a &lt;a&gt;SizeConstraintSetUpdate&lt;/a&gt; to a &lt;a&gt;SizeConstraintSet&lt;/a&gt;. Use &lt;code&gt;DELETE&lt;/code&gt; to remove a &lt;code&gt;SizeConstraintSetUpdate&lt;/code&gt; from a &lt;code&gt;SizeConstraintSet&lt;/code&gt;.&lt;/p&gt;
-- @param SizeConstraint [SizeConstraint] &lt;p&gt;Specifies a constraint on the size of a part of the web request. AWS WAF uses the &lt;code&gt;Size&lt;/code&gt;, &lt;code&gt;ComparisonOperator&lt;/code&gt;, and &lt;code&gt;FieldToMatch&lt;/code&gt; to build an expression in the form of &quot;&lt;code&gt;Size&lt;/code&gt; &lt;code&gt;ComparisonOperator&lt;/code&gt; size in bytes of &lt;code&gt;FieldToMatch&lt;/code&gt;&quot;. If that expression is true, the &lt;code&gt;SizeConstraint&lt;/code&gt; is considered to match.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: SizeConstraint
function M.SizeConstraintSetUpdate(Action, SizeConstraint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SizeConstraintSetUpdate")
	local t = { 
		["Action"] = Action,
		["SizeConstraint"] = SizeConstraint,
	}
	M.AssertSizeConstraintSetUpdate(t)
	return t
end

local GetXssMatchSetRequest_keys = { "XssMatchSetId" = true, nil }

function M.AssertGetXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	if struct["XssMatchSetId"] then M.AssertResourceId(struct["XssMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(GetXssMatchSetRequest_keys[k], "GetXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetXssMatchSetRequest
-- &lt;p&gt;A request to get an &lt;a&gt;XssMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param XssMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;XssMatchSetId&lt;/code&gt; of the &lt;a&gt;XssMatchSet&lt;/a&gt; that you want to get. &lt;code&gt;XssMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateXssMatchSet&lt;/a&gt; and by &lt;a&gt;ListXssMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: XssMatchSetId
function M.GetXssMatchSetRequest(XssMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetXssMatchSetRequest")
	local t = { 
		["XssMatchSetId"] = XssMatchSetId,
	}
	M.AssertGetXssMatchSetRequest(t)
	return t
end

local ListRulesRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesRequest_keys[k], "ListRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;Rules&lt;/code&gt; than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;Rules&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListRules&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;Rules&lt;/code&gt; that you want AWS WAF to return for this request. If you have more &lt;code&gt;Rules&lt;/code&gt; than the number that you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
function M.ListRulesRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListRulesRequest(t)
	return t
end

local DeleteWebACLResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebACLResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteWebACLResponse_keys[k], "DeleteWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebACLResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteWebACL&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteWebACLResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWebACLResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteWebACLResponse(t)
	return t
end

local HTTPRequest_keys = { "Country" = true, "URI" = true, "Headers" = true, "ClientIP" = true, "Method" = true, "HTTPVersion" = true, nil }

function M.AssertHTTPRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HTTPRequest to be of type 'table'")
	if struct["Country"] then M.AssertCountry(struct["Country"]) end
	if struct["URI"] then M.AssertURIString(struct["URI"]) end
	if struct["Headers"] then M.AssertHTTPHeaders(struct["Headers"]) end
	if struct["ClientIP"] then M.AssertIPString(struct["ClientIP"]) end
	if struct["Method"] then M.AssertHTTPMethod(struct["Method"]) end
	if struct["HTTPVersion"] then M.AssertHTTPVersion(struct["HTTPVersion"]) end
	for k,_ in pairs(struct) do
		assert(HTTPRequest_keys[k], "HTTPRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HTTPRequest
-- &lt;p&gt;The response from a &lt;a&gt;GetSampledRequests&lt;/a&gt; request includes an &lt;code&gt;HTTPRequest&lt;/code&gt; complex type that appears as &lt;code&gt;Request&lt;/code&gt; in the response syntax. &lt;code&gt;HTTPRequest&lt;/code&gt; contains information about one of the web requests that were returned by &lt;code&gt;GetSampledRequests&lt;/code&gt;. &lt;/p&gt;
-- @param Country [Country] &lt;p&gt;The two-letter country code for the country that the request originated from. For a current list of country codes, see the Wikipedia entry &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2&quot;&gt;ISO 3166-1 alpha-2&lt;/a&gt;.&lt;/p&gt;
-- @param URI [URIString] &lt;p&gt;The part of a web request that identifies the resource, for example, &lt;code&gt;/images/daily-ad.jpg&lt;/code&gt;.&lt;/p&gt;
-- @param Headers [HTTPHeaders] &lt;p&gt;A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.&lt;/p&gt;
-- @param ClientIP [IPString] &lt;p&gt;The IP address that the request originated from. If the &lt;code&gt;WebACL&lt;/code&gt; is associated with a CloudFront distribution, this is the value of one of the following fields in CloudFront access logs:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;c-ip&lt;/code&gt;, if the viewer did not use an HTTP proxy or a load balancer to send the request&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;x-forwarded-for&lt;/code&gt;, if the viewer did use an HTTP proxy or a load balancer to send the request&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Method [HTTPMethod] &lt;p&gt;The HTTP method specified in the sampled web request. CloudFront supports the following methods: &lt;code&gt;DELETE&lt;/code&gt;, &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, &lt;code&gt;OPTIONS&lt;/code&gt;, &lt;code&gt;PATCH&lt;/code&gt;, &lt;code&gt;POST&lt;/code&gt;, and &lt;code&gt;PUT&lt;/code&gt;. &lt;/p&gt;
-- @param HTTPVersion [HTTPVersion] &lt;p&gt;The HTTP version specified in the sampled web request, for example, &lt;code&gt;HTTP/1.1&lt;/code&gt;.&lt;/p&gt;
function M.HTTPRequest(Country, URI, Headers, ClientIP, Method, HTTPVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HTTPRequest")
	local t = { 
		["Country"] = Country,
		["URI"] = URI,
		["Headers"] = Headers,
		["ClientIP"] = ClientIP,
		["Method"] = Method,
		["HTTPVersion"] = HTTPVersion,
	}
	M.AssertHTTPRequest(t)
	return t
end

local ByteMatchSetUpdate_keys = { "Action" = true, "ByteMatchTuple" = true, nil }

function M.AssertByteMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ByteMatchTuple"], "Expected key ByteMatchTuple to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["ByteMatchTuple"] then M.AssertByteMatchTuple(struct["ByteMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(ByteMatchSetUpdate_keys[k], "ByteMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSetUpdate
-- &lt;p&gt;In an &lt;a&gt;UpdateByteMatchSet&lt;/a&gt; request, &lt;code&gt;ByteMatchSetUpdate&lt;/code&gt; specifies whether to insert or delete a &lt;a&gt;ByteMatchTuple&lt;/a&gt; and includes the settings for the &lt;code&gt;ByteMatchTuple&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specifies whether to insert or delete a &lt;a&gt;ByteMatchTuple&lt;/a&gt;.&lt;/p&gt;
-- @param ByteMatchTuple [ByteMatchTuple] &lt;p&gt;Information about the part of a web request that you want AWS WAF to inspect and the value that you want AWS WAF to search for. If you specify &lt;code&gt;DELETE&lt;/code&gt; for the value of &lt;code&gt;Action&lt;/code&gt;, the &lt;code&gt;ByteMatchTuple&lt;/code&gt; values must exactly match the values in the &lt;code&gt;ByteMatchTuple&lt;/code&gt; that you want to delete from the &lt;code&gt;ByteMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: ByteMatchTuple
function M.ByteMatchSetUpdate(Action, ByteMatchTuple, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ByteMatchSetUpdate")
	local t = { 
		["Action"] = Action,
		["ByteMatchTuple"] = ByteMatchTuple,
	}
	M.AssertByteMatchSetUpdate(t)
	return t
end

local CreateRuleRequest_keys = { "ChangeToken" = true, "Name" = true, "MetricName" = true, nil }

function M.AssertCreateRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(CreateRuleRequest_keys[k], "CreateRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRuleRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;Rule&lt;/a&gt;. You can't change the name of a &lt;code&gt;Rule&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for this &lt;code&gt;Rule&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: MetricName
-- Required parameter: ChangeToken
function M.CreateRuleRequest(ChangeToken, Name, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRuleRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
		["MetricName"] = MetricName,
	}
	M.AssertCreateRuleRequest(t)
	return t
end

local DeleteXssMatchSetRequest_keys = { "ChangeToken" = true, "XssMatchSetId" = true, nil }

function M.AssertDeleteXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteXssMatchSetRequest to be of type 'table'")
	assert(struct["XssMatchSetId"], "Expected key XssMatchSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["XssMatchSetId"] then M.AssertResourceId(struct["XssMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteXssMatchSetRequest_keys[k], "DeleteXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteXssMatchSetRequest
-- &lt;p&gt;A request to delete an &lt;a&gt;XssMatchSet&lt;/a&gt; from AWS WAF.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param XssMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;XssMatchSetId&lt;/code&gt; of the &lt;a&gt;XssMatchSet&lt;/a&gt; that you want to delete. &lt;code&gt;XssMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateXssMatchSet&lt;/a&gt; and by &lt;a&gt;ListXssMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: XssMatchSetId
-- Required parameter: ChangeToken
function M.DeleteXssMatchSetRequest(ChangeToken, XssMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["XssMatchSetId"] = XssMatchSetId,
	}
	M.AssertDeleteXssMatchSetRequest(t)
	return t
end

local WAFLimitsExceededException_keys = { "message" = true, nil }

function M.AssertWAFLimitsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFLimitsExceededException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFLimitsExceededException_keys[k], "WAFLimitsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFLimitsExceededException
-- &lt;p&gt;The operation exceeds a resource limit, for example, the maximum number of &lt;code&gt;WebACL&lt;/code&gt; objects that you can create for an AWS account. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/waf/latest/developerguide/limits.html&quot;&gt;Limits&lt;/a&gt; in the &lt;i&gt;AWS WAF Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The operation exceeds a resource limit, for example, the maximum number of &lt;code&gt;WebACL&lt;/code&gt; objects that you can create for an AWS account. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/waf/latest/developerguide/limits.html&quot;&gt;Limits&lt;/a&gt; in the &lt;i&gt;AWS WAF Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.WAFLimitsExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFLimitsExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFLimitsExceededException(t)
	return t
end

local CreateXssMatchSetRequest_keys = { "ChangeToken" = true, "Name" = true, nil }

function M.AssertCreateXssMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateXssMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateXssMatchSetRequest_keys[k], "CreateXssMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateXssMatchSetRequest
-- &lt;p&gt;A request to create an &lt;a&gt;XssMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description for the &lt;a&gt;XssMatchSet&lt;/a&gt; that you're creating. You can't change &lt;code&gt;Name&lt;/code&gt; after you create the &lt;code&gt;XssMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ChangeToken
function M.CreateXssMatchSetRequest(ChangeToken, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateXssMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
	}
	M.AssertCreateXssMatchSetRequest(t)
	return t
end

local UpdateByteMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateByteMatchSetResponse_keys[k], "UpdateByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateByteMatchSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateByteMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateByteMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateByteMatchSetResponse(t)
	return t
end

local DeleteByteMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteByteMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteByteMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteByteMatchSetResponse_keys[k], "DeleteByteMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteByteMatchSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteByteMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteByteMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteByteMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteByteMatchSetResponse(t)
	return t
end

local GetRateBasedRuleManagedKeysRequest_keys = { "NextMarker" = true, "RuleId" = true, nil }

function M.AssertGetRateBasedRuleManagedKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRateBasedRuleManagedKeysRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(GetRateBasedRuleManagedKeysRequest_keys[k], "GetRateBasedRuleManagedKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRateBasedRuleManagedKeysRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;A null value and not currently used. Do not include this in your request.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;a&gt;RateBasedRule&lt;/a&gt; for which you want to get a list of &lt;code&gt;ManagedKeys&lt;/code&gt;. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRateBasedRule&lt;/a&gt; and by &lt;a&gt;ListRateBasedRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
function M.GetRateBasedRuleManagedKeysRequest(NextMarker, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRateBasedRuleManagedKeysRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["RuleId"] = RuleId,
	}
	M.AssertGetRateBasedRuleManagedKeysRequest(t)
	return t
end

local UpdateRateBasedRuleRequest_keys = { "RateLimit" = true, "ChangeToken" = true, "Updates" = true, "RuleId" = true, nil }

function M.AssertUpdateRateBasedRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRateBasedRuleRequest to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	assert(struct["Updates"], "Expected key Updates to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	if struct["RateLimit"] then M.AssertRateLimit(struct["RateLimit"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Updates"] then M.AssertRuleUpdates(struct["Updates"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRateBasedRuleRequest_keys[k], "UpdateRateBasedRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRateBasedRuleRequest
--  
-- @param RateLimit [RateLimit] &lt;p&gt;The maximum number of requests, which have an identical value in the field specified by the &lt;code&gt;RateKey&lt;/code&gt;, allowed in a five-minute period. If the number of requests exceeds the &lt;code&gt;RateLimit&lt;/code&gt; and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [RuleUpdates] &lt;p&gt;An array of &lt;code&gt;RuleUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;RateBasedRule&lt;/a&gt;. &lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; of the &lt;code&gt;RateBasedRule&lt;/code&gt; that you want to update. &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;code&gt;CreateRateBasedRule&lt;/code&gt; and by &lt;a&gt;ListRateBasedRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: ChangeToken
-- Required parameter: Updates
-- Required parameter: RateLimit
function M.UpdateRateBasedRuleRequest(RateLimit, ChangeToken, Updates, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRateBasedRuleRequest")
	local t = { 
		["RateLimit"] = RateLimit,
		["ChangeToken"] = ChangeToken,
		["Updates"] = Updates,
		["RuleId"] = RuleId,
	}
	M.AssertUpdateRateBasedRuleRequest(t)
	return t
end

local WebACLUpdate_keys = { "Action" = true, "ActivatedRule" = true, nil }

function M.AssertWebACLUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebACLUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ActivatedRule"], "Expected key ActivatedRule to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["ActivatedRule"] then M.AssertActivatedRule(struct["ActivatedRule"]) end
	for k,_ in pairs(struct) do
		assert(WebACLUpdate_keys[k], "WebACLUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebACLUpdate
-- &lt;p&gt;Specifies whether to insert a &lt;code&gt;Rule&lt;/code&gt; into or delete a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specifies whether to insert a &lt;code&gt;Rule&lt;/code&gt; into or delete a &lt;code&gt;Rule&lt;/code&gt; from a &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- @param ActivatedRule [ActivatedRule] &lt;p&gt;The &lt;code&gt;ActivatedRule&lt;/code&gt; object in an &lt;a&gt;UpdateWebACL&lt;/a&gt; request specifies a &lt;code&gt;Rule&lt;/code&gt; that you want to insert or delete, the priority of the &lt;code&gt;Rule&lt;/code&gt; in the &lt;code&gt;WebACL&lt;/code&gt;, and the action that you want AWS WAF to take when a web request matches the &lt;code&gt;Rule&lt;/code&gt; (&lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;).&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: ActivatedRule
function M.WebACLUpdate(Action, ActivatedRule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WebACLUpdate")
	local t = { 
		["Action"] = Action,
		["ActivatedRule"] = ActivatedRule,
	}
	M.AssertWebACLUpdate(t)
	return t
end

local Rule_keys = { "Predicates" = true, "MetricName" = true, "Name" = true, "RuleId" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Predicates"], "Expected key Predicates to exist in table")
	if struct["Predicates"] then M.AssertPredicates(struct["Predicates"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- &lt;p&gt;A combination of &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, and/or &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; objects that identify the web requests that you want to allow, block, or count. For example, you might create a &lt;code&gt;Rule&lt;/code&gt; that includes the following predicates:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;An &lt;code&gt;IPSet&lt;/code&gt; that causes AWS WAF to search for web requests that originate from the IP address &lt;code&gt;192.0.2.44&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A &lt;code&gt;ByteMatchSet&lt;/code&gt; that causes AWS WAF to search for web requests for which the value of the &lt;code&gt;User-Agent&lt;/code&gt; header is &lt;code&gt;BadBot&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To match the settings in this &lt;code&gt;Rule&lt;/code&gt;, a request must originate from &lt;code&gt;192.0.2.44&lt;/code&gt; AND include a &lt;code&gt;User-Agent&lt;/code&gt; header for which the value is &lt;code&gt;BadBot&lt;/code&gt;.&lt;/p&gt;
-- @param Predicates [Predicates] &lt;p&gt;The &lt;code&gt;Predicates&lt;/code&gt; object contains one &lt;code&gt;Predicate&lt;/code&gt; element for each &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, or &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; object that you want to include in a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for this &lt;code&gt;Rule&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change &lt;code&gt;MetricName&lt;/code&gt; after you create the &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The friendly name or description for the &lt;code&gt;Rule&lt;/code&gt;. You can't change the name of a &lt;code&gt;Rule&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;Rule&lt;/code&gt;. You use &lt;code&gt;RuleId&lt;/code&gt; to get more information about a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;GetRule&lt;/a&gt;), update a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), insert a &lt;code&gt;Rule&lt;/code&gt; into a &lt;code&gt;WebACL&lt;/code&gt; or delete a one from a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), or delete a &lt;code&gt;Rule&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteRule&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRule&lt;/a&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: Predicates
function M.Rule(Predicates, MetricName, Name, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["Predicates"] = Predicates,
		["MetricName"] = MetricName,
		["Name"] = Name,
		["RuleId"] = RuleId,
	}
	M.AssertRule(t)
	return t
end

local ListIPSetsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListIPSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIPSetsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListIPSetsRequest_keys[k], "ListIPSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIPSetsRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;IPSets&lt;/code&gt; than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;IPSets&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListIPSets&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;ByteMatchSets&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;IPSet&lt;/code&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;IPSet&lt;/code&gt; objects than the number you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;IPSet&lt;/code&gt; objects.&lt;/p&gt;
function M.ListIPSetsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIPSetsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListIPSetsRequest(t)
	return t
end

local ActivatedRule_keys = { "Priority" = true, "Action" = true, "Type" = true, "RuleId" = true, nil }

function M.AssertActivatedRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatedRule to be of type 'table'")
	assert(struct["Priority"], "Expected key Priority to exist in table")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	if struct["Priority"] then M.AssertRulePriority(struct["Priority"]) end
	if struct["Action"] then M.AssertWafAction(struct["Action"]) end
	if struct["Type"] then M.AssertWafRuleType(struct["Type"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(ActivatedRule_keys[k], "ActivatedRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatedRule
-- &lt;p&gt;The &lt;code&gt;ActivatedRule&lt;/code&gt; object in an &lt;a&gt;UpdateWebACL&lt;/a&gt; request specifies a &lt;code&gt;Rule&lt;/code&gt; that you want to insert or delete, the priority of the &lt;code&gt;Rule&lt;/code&gt; in the &lt;code&gt;WebACL&lt;/code&gt;, and the action that you want AWS WAF to take when a web request matches the &lt;code&gt;Rule&lt;/code&gt; (&lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;To specify whether to insert or delete a &lt;code&gt;Rule&lt;/code&gt;, use the &lt;code&gt;Action&lt;/code&gt; parameter in the &lt;a&gt;WebACLUpdate&lt;/a&gt; data type.&lt;/p&gt;
-- @param Priority [RulePriority] &lt;p&gt;Specifies the order in which the &lt;code&gt;Rules&lt;/code&gt; in a &lt;code&gt;WebACL&lt;/code&gt; are evaluated. Rules with a lower value for &lt;code&gt;Priority&lt;/code&gt; are evaluated before &lt;code&gt;Rules&lt;/code&gt; with a higher value. The value must be a unique integer. If you add multiple &lt;code&gt;Rules&lt;/code&gt; to a &lt;code&gt;WebACL&lt;/code&gt;, the values don't need to be consecutive.&lt;/p&gt;
-- @param Action [WafAction] &lt;p&gt;Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the &lt;code&gt;Rule&lt;/code&gt;. Valid values for &lt;code&gt;Action&lt;/code&gt; include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ALLOW&lt;/code&gt;: CloudFront responds with the requested object.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;BLOCK&lt;/code&gt;: CloudFront responds with an HTTP 403 (Forbidden) status code.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;COUNT&lt;/code&gt;: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to inspect the web request based on the remaining rules in the web ACL. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Type [WafRuleType] &lt;p&gt;The rule type, either &lt;code&gt;REGULAR&lt;/code&gt;, as defined by &lt;a&gt;Rule&lt;/a&gt;, or &lt;code&gt;RATE_BASED&lt;/code&gt;, as defined by &lt;a&gt;RateBasedRule&lt;/a&gt;. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the &lt;a&gt;UpdateWebACL&lt;/a&gt; request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. &lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;The &lt;code&gt;RuleId&lt;/code&gt; for a &lt;code&gt;Rule&lt;/code&gt;. You use &lt;code&gt;RuleId&lt;/code&gt; to get more information about a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;GetRule&lt;/a&gt;), update a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), insert a &lt;code&gt;Rule&lt;/code&gt; into a &lt;code&gt;WebACL&lt;/code&gt; or delete a one from a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), or delete a &lt;code&gt;Rule&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteRule&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRule&lt;/a&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Priority
-- Required parameter: RuleId
-- Required parameter: Action
function M.ActivatedRule(Priority, Action, Type, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivatedRule")
	local t = { 
		["Priority"] = Priority,
		["Action"] = Action,
		["Type"] = Type,
		["RuleId"] = RuleId,
	}
	M.AssertActivatedRule(t)
	return t
end

local CreateWebACLRequest_keys = { "DefaultAction" = true, "ChangeToken" = true, "Name" = true, "MetricName" = true, nil }

function M.AssertCreateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebACLRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["DefaultAction"], "Expected key DefaultAction to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["DefaultAction"] then M.AssertWafAction(struct["DefaultAction"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(CreateWebACLRequest_keys[k], "CreateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebACLRequest
--  
-- @param DefaultAction [WafAction] &lt;p&gt;The action that you want AWS WAF to take when a request doesn't match the criteria specified in any of the &lt;code&gt;Rule&lt;/code&gt; objects that are associated with the &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;WebACL&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create the &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for this &lt;code&gt;WebACL&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change &lt;code&gt;MetricName&lt;/code&gt; after you create the &lt;code&gt;WebACL&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: MetricName
-- Required parameter: DefaultAction
-- Required parameter: ChangeToken
function M.CreateWebACLRequest(DefaultAction, ChangeToken, Name, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWebACLRequest")
	local t = { 
		["DefaultAction"] = DefaultAction,
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
		["MetricName"] = MetricName,
	}
	M.AssertCreateWebACLRequest(t)
	return t
end

local UpdateRuleResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRuleResponse_keys[k], "UpdateRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateRuleResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateRuleResponse(t)
	return t
end

local ListSizeConstraintSetsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListSizeConstraintSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSizeConstraintSetsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListSizeConstraintSetsRequest_keys[k], "ListSizeConstraintSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSizeConstraintSetsRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;SizeConstraintSets&lt;/code&gt; than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;SizeConstraintSets&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListSizeConstraintSets&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;SizeConstraintSets&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;SizeConstraintSet&lt;/code&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;SizeConstraintSets&lt;/code&gt; objects than the number you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;SizeConstraintSet&lt;/code&gt; objects.&lt;/p&gt;
function M.ListSizeConstraintSetsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSizeConstraintSetsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListSizeConstraintSetsRequest(t)
	return t
end

local SqlInjectionMatchSetUpdate_keys = { "Action" = true, "SqlInjectionMatchTuple" = true, nil }

function M.AssertSqlInjectionMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["SqlInjectionMatchTuple"], "Expected key SqlInjectionMatchTuple to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["SqlInjectionMatchTuple"] then M.AssertSqlInjectionMatchTuple(struct["SqlInjectionMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(SqlInjectionMatchSetUpdate_keys[k], "SqlInjectionMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSetUpdate
-- &lt;p&gt;Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; or delete it from a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specify &lt;code&gt;INSERT&lt;/code&gt; to add a &lt;a&gt;SqlInjectionMatchSetUpdate&lt;/a&gt; to a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;. Use &lt;code&gt;DELETE&lt;/code&gt; to remove a &lt;code&gt;SqlInjectionMatchSetUpdate&lt;/code&gt; from a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchTuple [SqlInjectionMatchTuple] &lt;p&gt;Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: SqlInjectionMatchTuple
function M.SqlInjectionMatchSetUpdate(Action, SqlInjectionMatchTuple, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlInjectionMatchSetUpdate")
	local t = { 
		["Action"] = Action,
		["SqlInjectionMatchTuple"] = SqlInjectionMatchTuple,
	}
	M.AssertSqlInjectionMatchSetUpdate(t)
	return t
end

local GetChangeTokenRequest_keys = { nil }

function M.AssertGetChangeTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetChangeTokenRequest_keys[k], "GetChangeTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenRequest
--  
function M.GetChangeTokenRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeTokenRequest")
	local t = { 
	}
	M.AssertGetChangeTokenRequest(t)
	return t
end

local CreateSqlInjectionMatchSetRequest_keys = { "ChangeToken" = true, "Name" = true, nil }

function M.AssertCreateSqlInjectionMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSqlInjectionMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSqlInjectionMatchSetRequest_keys[k], "CreateSqlInjectionMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSqlInjectionMatchSetRequest
-- &lt;p&gt;A request to create a &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description for the &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; that you're creating. You can't change &lt;code&gt;Name&lt;/code&gt; after you create the &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ChangeToken
function M.CreateSqlInjectionMatchSetRequest(ChangeToken, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSqlInjectionMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
	}
	M.AssertCreateSqlInjectionMatchSetRequest(t)
	return t
end

local CreateSizeConstraintSetRequest_keys = { "ChangeToken" = true, "Name" = true, nil }

function M.AssertCreateSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSizeConstraintSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSizeConstraintSetRequest_keys[k], "CreateSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSizeConstraintSetRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;SizeConstraintSet&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create a &lt;code&gt;SizeConstraintSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ChangeToken
function M.CreateSizeConstraintSetRequest(ChangeToken, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSizeConstraintSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
	}
	M.AssertCreateSizeConstraintSetRequest(t)
	return t
end

local SizeConstraintSetSummary_keys = { "SizeConstraintSetId" = true, "Name" = true, nil }

function M.AssertSizeConstraintSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSetSummary to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SizeConstraintSetId"] then M.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SizeConstraintSetSummary_keys[k], "SizeConstraintSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSetSummary
-- &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; and &lt;code&gt;Name&lt;/code&gt; of a &lt;code&gt;SizeConstraintSet&lt;/code&gt;.&lt;/p&gt;
-- @param SizeConstraintSetId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;SizeConstraintSet&lt;/code&gt;. You use &lt;code&gt;SizeConstraintSetId&lt;/code&gt; to get information about a &lt;code&gt;SizeConstraintSet&lt;/code&gt; (see &lt;a&gt;GetSizeConstraintSet&lt;/a&gt;), update a &lt;code&gt;SizeConstraintSet&lt;/code&gt; (see &lt;a&gt;UpdateSizeConstraintSet&lt;/a&gt;), insert a &lt;code&gt;SizeConstraintSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete a &lt;code&gt;SizeConstraintSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteSizeConstraintSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;SizeConstraintSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt; and by &lt;a&gt;ListSizeConstraintSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name of the &lt;code&gt;SizeConstraintSet&lt;/code&gt;, if any.&lt;/p&gt;
-- Required parameter: SizeConstraintSetId
-- Required parameter: Name
function M.SizeConstraintSetSummary(SizeConstraintSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SizeConstraintSetSummary")
	local t = { 
		["SizeConstraintSetId"] = SizeConstraintSetId,
		["Name"] = Name,
	}
	M.AssertSizeConstraintSetSummary(t)
	return t
end

local ListSqlInjectionMatchSetsResponse_keys = { "SqlInjectionMatchSets" = true, "NextMarker" = true, nil }

function M.AssertListSqlInjectionMatchSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSqlInjectionMatchSetsResponse to be of type 'table'")
	if struct["SqlInjectionMatchSets"] then M.AssertSqlInjectionMatchSetSummaries(struct["SqlInjectionMatchSets"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListSqlInjectionMatchSetsResponse_keys[k], "ListSqlInjectionMatchSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSqlInjectionMatchSetsResponse
-- &lt;p&gt;The response to a &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt; request.&lt;/p&gt;
-- @param SqlInjectionMatchSets [SqlInjectionMatchSetSummaries] &lt;p&gt;An array of &lt;a&gt;SqlInjectionMatchSetSummary&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; objects, submit another &lt;code&gt;ListSqlInjectionMatchSets&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
function M.ListSqlInjectionMatchSetsResponse(SqlInjectionMatchSets, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSqlInjectionMatchSetsResponse")
	local t = { 
		["SqlInjectionMatchSets"] = SqlInjectionMatchSets,
		["NextMarker"] = NextMarker,
	}
	M.AssertListSqlInjectionMatchSetsResponse(t)
	return t
end

local ListSqlInjectionMatchSetsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListSqlInjectionMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSqlInjectionMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListSqlInjectionMatchSetsRequest_keys[k], "ListSqlInjectionMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSqlInjectionMatchSetsRequest
-- &lt;p&gt;A request to list the &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; objects created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; objects than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;SqlInjectionMatchSets&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListSqlInjectionMatchSets&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;SqlInjectionMatchSets&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; objects than the number you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
function M.ListSqlInjectionMatchSetsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSqlInjectionMatchSetsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListSqlInjectionMatchSetsRequest(t)
	return t
end

local ListWebACLsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListWebACLsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebACLsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListWebACLsRequest_keys[k], "ListWebACLsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebACLsRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;WebACL&lt;/code&gt; objects than the number that you specify for &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;WebACL&lt;/code&gt; objects. For the second and subsequent &lt;code&gt;ListWebACLs&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;WebACL&lt;/code&gt; objects.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;WebACL&lt;/code&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;WebACL&lt;/code&gt; objects than the number that you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;WebACL&lt;/code&gt; objects.&lt;/p&gt;
function M.ListWebACLsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWebACLsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListWebACLsRequest(t)
	return t
end

local CreateWebACLResponse_keys = { "WebACL" = true, "ChangeToken" = true, nil }

function M.AssertCreateWebACLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebACLResponse to be of type 'table'")
	if struct["WebACL"] then M.AssertWebACL(struct["WebACL"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateWebACLResponse_keys[k], "CreateWebACLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebACLResponse
--  
-- @param WebACL [WebACL] &lt;p&gt;The &lt;a&gt;WebACL&lt;/a&gt; returned in the &lt;code&gt;CreateWebACL&lt;/code&gt; response.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateWebACL&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.CreateWebACLResponse(WebACL, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWebACLResponse")
	local t = { 
		["WebACL"] = WebACL,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertCreateWebACLResponse(t)
	return t
end

local DeleteRuleResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRuleResponse_keys[k], "DeleteRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteRuleResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteRuleResponse(t)
	return t
end

local DeleteSizeConstraintSetRequest_keys = { "SizeConstraintSetId" = true, "ChangeToken" = true, nil }

function M.AssertDeleteSizeConstraintSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSizeConstraintSetRequest to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["SizeConstraintSetId"] then M.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSizeConstraintSetRequest_keys[k], "DeleteSizeConstraintSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSizeConstraintSetRequest
--  
-- @param SizeConstraintSetId [ResourceId] &lt;p&gt;The &lt;code&gt;SizeConstraintSetId&lt;/code&gt; of the &lt;a&gt;SizeConstraintSet&lt;/a&gt; that you want to delete. &lt;code&gt;SizeConstraintSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt; and by &lt;a&gt;ListSizeConstraintSets&lt;/a&gt;.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SizeConstraintSetId
-- Required parameter: ChangeToken
function M.DeleteSizeConstraintSetRequest(SizeConstraintSetId, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSizeConstraintSetRequest")
	local t = { 
		["SizeConstraintSetId"] = SizeConstraintSetId,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteSizeConstraintSetRequest(t)
	return t
end

local UpdateRateBasedRuleResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRateBasedRuleResponse_keys[k], "UpdateRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRateBasedRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateRateBasedRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateRateBasedRuleResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateRateBasedRuleResponse(t)
	return t
end

local GetSizeConstraintSetResponse_keys = { "SizeConstraintSet" = true, nil }

function M.AssertGetSizeConstraintSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSizeConstraintSetResponse to be of type 'table'")
	if struct["SizeConstraintSet"] then M.AssertSizeConstraintSet(struct["SizeConstraintSet"]) end
	for k,_ in pairs(struct) do
		assert(GetSizeConstraintSetResponse_keys[k], "GetSizeConstraintSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSizeConstraintSetResponse
--  
-- @param SizeConstraintSet [SizeConstraintSet] &lt;p&gt;Information about the &lt;a&gt;SizeConstraintSet&lt;/a&gt; that you specified in the &lt;code&gt;GetSizeConstraintSet&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;SizeConstraintSet&lt;/a&gt;: Contains &lt;code&gt;SizeConstraintSetId&lt;/code&gt;, &lt;code&gt;SizeConstraints&lt;/code&gt;, and &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SizeConstraints&lt;/code&gt;: Contains an array of &lt;a&gt;SizeConstraint&lt;/a&gt; objects. Each &lt;code&gt;SizeConstraint&lt;/code&gt; object contains &lt;a&gt;FieldToMatch&lt;/a&gt;, &lt;code&gt;TextTransformation&lt;/code&gt;, &lt;code&gt;ComparisonOperator&lt;/code&gt;, and &lt;code&gt;Size&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetSizeConstraintSetResponse(SizeConstraintSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSizeConstraintSetResponse")
	local t = { 
		["SizeConstraintSet"] = SizeConstraintSet,
	}
	M.AssertGetSizeConstraintSetResponse(t)
	return t
end

local ListRulesResponse_keys = { "Rules" = true, "NextMarker" = true, nil }

function M.AssertListRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesResponse to be of type 'table'")
	if struct["Rules"] then M.AssertRuleSummaries(struct["Rules"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesResponse_keys[k], "ListRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesResponse
--  
-- @param Rules [RuleSummaries] &lt;p&gt;An array of &lt;a&gt;RuleSummary&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;Rules&lt;/code&gt; than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;Rules&lt;/code&gt;, submit another &lt;code&gt;ListRules&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
function M.ListRulesResponse(Rules, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesResponse")
	local t = { 
		["Rules"] = Rules,
		["NextMarker"] = NextMarker,
	}
	M.AssertListRulesResponse(t)
	return t
end

local CreateIPSetRequest_keys = { "ChangeToken" = true, "Name" = true, nil }

function M.AssertCreateIPSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateIPSetRequest_keys[k], "CreateIPSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;IPSet&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create the &lt;code&gt;IPSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ChangeToken
function M.CreateIPSetRequest(ChangeToken, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIPSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
	}
	M.AssertCreateIPSetRequest(t)
	return t
end

local GetRuleResponse_keys = { "Rule" = true, nil }

function M.AssertGetRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRuleResponse to be of type 'table'")
	if struct["Rule"] then M.AssertRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(GetRuleResponse_keys[k], "GetRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRuleResponse
--  
-- @param Rule [Rule] &lt;p&gt;Information about the &lt;a&gt;Rule&lt;/a&gt; that you specified in the &lt;code&gt;GetRule&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;Rule&lt;/a&gt;: Contains &lt;code&gt;MetricName&lt;/code&gt;, &lt;code&gt;Name&lt;/code&gt;, an array of &lt;code&gt;Predicate&lt;/code&gt; objects, and &lt;code&gt;RuleId&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;Predicate&lt;/a&gt;: Each &lt;code&gt;Predicate&lt;/code&gt; object contains &lt;code&gt;DataId&lt;/code&gt;, &lt;code&gt;Negated&lt;/code&gt;, and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetRuleResponse(Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRuleResponse")
	local t = { 
		["Rule"] = Rule,
	}
	M.AssertGetRuleResponse(t)
	return t
end

local ListByteMatchSetsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListByteMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListByteMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListByteMatchSetsRequest_keys[k], "ListByteMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListByteMatchSetsRequest
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;code&gt;ByteMatchSets&lt;/code&gt; than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;ByteMatchSets&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListByteMatchSets&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;ByteMatchSets&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;code&gt;ByteMatchSet&lt;/code&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;ByteMatchSets&lt;/code&gt; objects than the number you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;ByteMatchSet&lt;/code&gt; objects.&lt;/p&gt;
function M.ListByteMatchSetsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListByteMatchSetsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListByteMatchSetsRequest(t)
	return t
end

local CreateRateBasedRuleResponse_keys = { "ChangeToken" = true, "Rule" = true, nil }

function M.AssertCreateRateBasedRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRateBasedRuleResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Rule"] then M.AssertRateBasedRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(CreateRateBasedRuleResponse_keys[k], "CreateRateBasedRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRateBasedRuleResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateRateBasedRule&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
-- @param Rule [RateBasedRule] &lt;p&gt;The &lt;a&gt;RateBasedRule&lt;/a&gt; that is returned in the &lt;code&gt;CreateRateBasedRule&lt;/code&gt; response.&lt;/p&gt;
function M.CreateRateBasedRuleResponse(ChangeToken, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRateBasedRuleResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Rule"] = Rule,
	}
	M.AssertCreateRateBasedRuleResponse(t)
	return t
end

local CreateByteMatchSetRequest_keys = { "ChangeToken" = true, "Name" = true, nil }

function M.AssertCreateByteMatchSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateByteMatchSetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateByteMatchSetRequest_keys[k], "CreateByteMatchSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateByteMatchSetRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;ByteMatchSet&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create a &lt;code&gt;ByteMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: ChangeToken
function M.CreateByteMatchSetRequest(ChangeToken, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateByteMatchSetRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
		["Name"] = Name,
	}
	M.AssertCreateByteMatchSetRequest(t)
	return t
end

local IPSet_keys = { "IPSetId" = true, "Name" = true, "IPSetDescriptors" = true, nil }

function M.AssertIPSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSet to be of type 'table'")
	assert(struct["IPSetId"], "Expected key IPSetId to exist in table")
	assert(struct["IPSetDescriptors"], "Expected key IPSetDescriptors to exist in table")
	if struct["IPSetId"] then M.AssertResourceId(struct["IPSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["IPSetDescriptors"] then M.AssertIPSetDescriptors(struct["IPSetDescriptors"]) end
	for k,_ in pairs(struct) do
		assert(IPSet_keys[k], "IPSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSet
-- &lt;p&gt;Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6.&lt;/p&gt; &lt;p&gt;To specify an individual IP address, you specify the four-part IP address followed by a &lt;code&gt;/32&lt;/code&gt;, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify a &lt;code&gt;/128&lt;/code&gt;, &lt;code&gt;/64&lt;/code&gt;, &lt;code&gt;/56&lt;/code&gt;, &lt;code&gt;/48&lt;/code&gt;, &lt;code&gt;/32&lt;/code&gt;, &lt;code&gt;/24&lt;/code&gt;, &lt;code&gt;/16&lt;/code&gt;, or &lt;code&gt;/8&lt;/code&gt; CIDR. For more information about CIDR notation, see the Wikipedia entry &lt;a href=&quot;https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing&quot;&gt;Classless Inter-Domain Routing&lt;/a&gt;. &lt;/p&gt;
-- @param IPSetId [ResourceId] &lt;p&gt;The &lt;code&gt;IPSetId&lt;/code&gt; for an &lt;code&gt;IPSet&lt;/code&gt;. You use &lt;code&gt;IPSetId&lt;/code&gt; to get information about an &lt;code&gt;IPSet&lt;/code&gt; (see &lt;a&gt;GetIPSet&lt;/a&gt;), update an &lt;code&gt;IPSet&lt;/code&gt; (see &lt;a&gt;UpdateIPSet&lt;/a&gt;), insert an &lt;code&gt;IPSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete an &lt;code&gt;IPSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteIPSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;IPSetId&lt;/code&gt; is returned by &lt;a&gt;CreateIPSet&lt;/a&gt; and by &lt;a&gt;ListIPSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;IPSet&lt;/a&gt;. You can't change the name of an &lt;code&gt;IPSet&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param IPSetDescriptors [IPSetDescriptors] &lt;p&gt;The IP address type (&lt;code&gt;IPV4&lt;/code&gt; or &lt;code&gt;IPV6&lt;/code&gt;) and the IP address range (in CIDR notation) that web requests originate from. If the &lt;code&gt;WebACL&lt;/code&gt; is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.&lt;/p&gt;
-- Required parameter: IPSetId
-- Required parameter: IPSetDescriptors
function M.IPSet(IPSetId, Name, IPSetDescriptors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPSet")
	local t = { 
		["IPSetId"] = IPSetId,
		["Name"] = Name,
		["IPSetDescriptors"] = IPSetDescriptors,
	}
	M.AssertIPSet(t)
	return t
end

local ByteMatchSetSummary_keys = { "ByteMatchSetId" = true, "Name" = true, nil }

function M.AssertByteMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ByteMatchSetSummary to be of type 'table'")
	assert(struct["ByteMatchSetId"], "Expected key ByteMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ByteMatchSetId"] then M.AssertResourceId(struct["ByteMatchSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ByteMatchSetSummary_keys[k], "ByteMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ByteMatchSetSummary
-- &lt;p&gt;Returned by &lt;a&gt;ListByteMatchSets&lt;/a&gt;. Each &lt;code&gt;ByteMatchSetSummary&lt;/code&gt; object includes the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;ByteMatchSetId&lt;/code&gt; for one &lt;a&gt;ByteMatchSet&lt;/a&gt;.&lt;/p&gt;
-- @param ByteMatchSetId [ResourceId] &lt;p&gt;The &lt;code&gt;ByteMatchSetId&lt;/code&gt; for a &lt;code&gt;ByteMatchSet&lt;/code&gt;. You use &lt;code&gt;ByteMatchSetId&lt;/code&gt; to get information about a &lt;code&gt;ByteMatchSet&lt;/code&gt;, update a &lt;code&gt;ByteMatchSet&lt;/code&gt;, remove a &lt;code&gt;ByteMatchSet&lt;/code&gt; from a &lt;code&gt;Rule&lt;/code&gt;, and delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; from AWS WAF.&lt;/p&gt; &lt;p&gt; &lt;code&gt;ByteMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateByteMatchSet&lt;/a&gt; and by &lt;a&gt;ListByteMatchSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;ByteMatchSet&lt;/a&gt;. You can't change &lt;code&gt;Name&lt;/code&gt; after you create a &lt;code&gt;ByteMatchSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: ByteMatchSetId
-- Required parameter: Name
function M.ByteMatchSetSummary(ByteMatchSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ByteMatchSetSummary")
	local t = { 
		["ByteMatchSetId"] = ByteMatchSetId,
		["Name"] = Name,
	}
	M.AssertByteMatchSetSummary(t)
	return t
end

local WAFInvalidParameterException_keys = { "field" = true, "reason" = true, "parameter" = true, nil }

function M.AssertWAFInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFInvalidParameterException to be of type 'table'")
	if struct["field"] then M.AssertParameterExceptionField(struct["field"]) end
	if struct["reason"] then M.AssertParameterExceptionReason(struct["reason"]) end
	if struct["parameter"] then M.AssertParameterExceptionParameter(struct["parameter"]) end
	for k,_ in pairs(struct) do
		assert(WAFInvalidParameterException_keys[k], "WAFInvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFInvalidParameterException
-- &lt;p&gt;The operation failed because AWS WAF didn't recognize a parameter in the request. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You specified an invalid parameter name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You specified an invalid value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update an object (&lt;code&gt;ByteMatchSet&lt;/code&gt;, &lt;code&gt;IPSet&lt;/code&gt;, &lt;code&gt;Rule&lt;/code&gt;, or &lt;code&gt;WebACL&lt;/code&gt;) using an action other than &lt;code&gt;INSERT&lt;/code&gt; or &lt;code&gt;DELETE&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;DefaultAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;RateBasedRule&lt;/code&gt; with a &lt;code&gt;RateKey&lt;/code&gt; value other than &lt;code&gt;IP&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;WafAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than HEADER, QUERY_STRING, or URI.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;Field&lt;/code&gt; of &lt;code&gt;HEADER&lt;/code&gt; but no value for &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param field [ParameterExceptionField] &lt;p&gt;The operation failed because AWS WAF didn't recognize a parameter in the request. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You specified an invalid parameter name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You specified an invalid value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update an object (&lt;code&gt;ByteMatchSet&lt;/code&gt;, &lt;code&gt;IPSet&lt;/code&gt;, &lt;code&gt;Rule&lt;/code&gt;, or &lt;code&gt;WebACL&lt;/code&gt;) using an action other than &lt;code&gt;INSERT&lt;/code&gt; or &lt;code&gt;DELETE&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;DefaultAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;RateBasedRule&lt;/code&gt; with a &lt;code&gt;RateKey&lt;/code&gt; value other than &lt;code&gt;IP&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;WafAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than HEADER, QUERY_STRING, or URI.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;Field&lt;/code&gt; of &lt;code&gt;HEADER&lt;/code&gt; but no value for &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param reason [ParameterExceptionReason] &lt;p&gt;The operation failed because AWS WAF didn't recognize a parameter in the request. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You specified an invalid parameter name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You specified an invalid value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update an object (&lt;code&gt;ByteMatchSet&lt;/code&gt;, &lt;code&gt;IPSet&lt;/code&gt;, &lt;code&gt;Rule&lt;/code&gt;, or &lt;code&gt;WebACL&lt;/code&gt;) using an action other than &lt;code&gt;INSERT&lt;/code&gt; or &lt;code&gt;DELETE&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;DefaultAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;RateBasedRule&lt;/code&gt; with a &lt;code&gt;RateKey&lt;/code&gt; value other than &lt;code&gt;IP&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;WafAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than HEADER, QUERY_STRING, or URI.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;Field&lt;/code&gt; of &lt;code&gt;HEADER&lt;/code&gt; but no value for &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param parameter [ParameterExceptionParameter] &lt;p&gt;The operation failed because AWS WAF didn't recognize a parameter in the request. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You specified an invalid parameter name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You specified an invalid value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update an object (&lt;code&gt;ByteMatchSet&lt;/code&gt;, &lt;code&gt;IPSet&lt;/code&gt;, &lt;code&gt;Rule&lt;/code&gt;, or &lt;code&gt;WebACL&lt;/code&gt;) using an action other than &lt;code&gt;INSERT&lt;/code&gt; or &lt;code&gt;DELETE&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;DefaultAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to create a &lt;code&gt;RateBasedRule&lt;/code&gt; with a &lt;code&gt;RateKey&lt;/code&gt; value other than &lt;code&gt;IP&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;WebACL&lt;/code&gt; with a &lt;code&gt;WafAction&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than &lt;code&gt;ALLOW&lt;/code&gt;, &lt;code&gt;BLOCK&lt;/code&gt;, or &lt;code&gt;COUNT&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;FieldToMatch&lt;/code&gt; &lt;code&gt;Type&lt;/code&gt; other than HEADER, QUERY_STRING, or URI.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to update a &lt;code&gt;ByteMatchSet&lt;/code&gt; with a &lt;code&gt;Field&lt;/code&gt; of &lt;code&gt;HEADER&lt;/code&gt; but no value for &lt;code&gt;Data&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.WAFInvalidParameterException(field, reason, parameter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFInvalidParameterException")
	local t = { 
		["field"] = field,
		["reason"] = reason,
		["parameter"] = parameter,
	}
	M.AssertWAFInvalidParameterException(t)
	return t
end

local SqlInjectionMatchSetSummary_keys = { "Name" = true, "SqlInjectionMatchSetId" = true, nil }

function M.AssertSqlInjectionMatchSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSetSummary to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["SqlInjectionMatchSetId"] then M.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(SqlInjectionMatchSetSummary_keys[k], "SqlInjectionMatchSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSetSummary
-- &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; and &lt;code&gt;Name&lt;/code&gt; of a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name of the &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;, if any, specified by &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchSetId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;. You use &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; to get information about a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; (see &lt;a&gt;GetSqlInjectionMatchSet&lt;/a&gt;), update a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; (see &lt;a&gt;UpdateSqlInjectionMatchSet&lt;/a&gt;), insert a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteSqlInjectionMatchSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSqlInjectionMatchSet&lt;/a&gt; and by &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SqlInjectionMatchSetId
-- Required parameter: Name
function M.SqlInjectionMatchSetSummary(Name, SqlInjectionMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlInjectionMatchSetSummary")
	local t = { 
		["Name"] = Name,
		["SqlInjectionMatchSetId"] = SqlInjectionMatchSetId,
	}
	M.AssertSqlInjectionMatchSetSummary(t)
	return t
end

local GetChangeTokenStatusRequest_keys = { "ChangeToken" = true, nil }

function M.AssertGetChangeTokenStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeTokenStatusRequest to be of type 'table'")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(GetChangeTokenStatusRequest_keys[k], "GetChangeTokenStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeTokenStatusRequest
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The change token for which you want to get the status. This change token was previously returned in the &lt;code&gt;GetChangeToken&lt;/code&gt; response.&lt;/p&gt;
-- Required parameter: ChangeToken
function M.GetChangeTokenStatusRequest(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeTokenStatusRequest")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertGetChangeTokenStatusRequest(t)
	return t
end

local UpdateSqlInjectionMatchSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertUpdateSqlInjectionMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSqlInjectionMatchSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSqlInjectionMatchSetResponse_keys[k], "UpdateSqlInjectionMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSqlInjectionMatchSetResponse
-- &lt;p&gt;The response to an &lt;a&gt;UpdateSqlInjectionMatchSets&lt;/a&gt; request.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;UpdateSqlInjectionMatchSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.UpdateSqlInjectionMatchSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSqlInjectionMatchSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertUpdateSqlInjectionMatchSetResponse(t)
	return t
end

local WAFNonEmptyEntityException_keys = { "message" = true, nil }

function M.AssertWAFNonEmptyEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonEmptyEntityException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFNonEmptyEntityException_keys[k], "WAFNonEmptyEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonEmptyEntityException
-- &lt;p&gt;The operation failed because you tried to delete an object that isn't empty. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;WebACL&lt;/code&gt; that still contains one or more &lt;code&gt;Rule&lt;/code&gt; objects.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;Rule&lt;/code&gt; that still contains one or more &lt;code&gt;ByteMatchSet&lt;/code&gt; objects or other predicates.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; that contains one or more &lt;code&gt;ByteMatchTuple&lt;/code&gt; objects.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete an &lt;code&gt;IPSet&lt;/code&gt; that references one or more IP addresses.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because you tried to delete an object that isn't empty. For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;WebACL&lt;/code&gt; that still contains one or more &lt;code&gt;Rule&lt;/code&gt; objects.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;Rule&lt;/code&gt; that still contains one or more &lt;code&gt;ByteMatchSet&lt;/code&gt; objects or other predicates.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete a &lt;code&gt;ByteMatchSet&lt;/code&gt; that contains one or more &lt;code&gt;ByteMatchTuple&lt;/code&gt; objects.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You tried to delete an &lt;code&gt;IPSet&lt;/code&gt; that references one or more IP addresses.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.WAFNonEmptyEntityException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFNonEmptyEntityException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFNonEmptyEntityException(t)
	return t
end

local WAFStaleDataException_keys = { "message" = true, nil }

function M.AssertWAFStaleDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFStaleDataException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFStaleDataException_keys[k], "WAFStaleDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFStaleDataException
-- &lt;p&gt;The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.&lt;/p&gt;
function M.WAFStaleDataException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFStaleDataException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFStaleDataException(t)
	return t
end

local SizeConstraintSet_keys = { "SizeConstraints" = true, "SizeConstraintSetId" = true, "Name" = true, nil }

function M.AssertSizeConstraintSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SizeConstraintSet to be of type 'table'")
	assert(struct["SizeConstraintSetId"], "Expected key SizeConstraintSetId to exist in table")
	assert(struct["SizeConstraints"], "Expected key SizeConstraints to exist in table")
	if struct["SizeConstraints"] then M.AssertSizeConstraints(struct["SizeConstraints"]) end
	if struct["SizeConstraintSetId"] then M.AssertResourceId(struct["SizeConstraintSetId"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SizeConstraintSet_keys[k], "SizeConstraintSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SizeConstraintSet
-- &lt;p&gt;A complex type that contains &lt;code&gt;SizeConstraint&lt;/code&gt; objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a &lt;code&gt;SizeConstraintSet&lt;/code&gt; contains more than one &lt;code&gt;SizeConstraint&lt;/code&gt; object, a request only needs to match one constraint to be considered a match.&lt;/p&gt;
-- @param SizeConstraints [SizeConstraints] &lt;p&gt;Specifies the parts of web requests that you want to inspect the size of.&lt;/p&gt;
-- @param SizeConstraintSetId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;SizeConstraintSet&lt;/code&gt;. You use &lt;code&gt;SizeConstraintSetId&lt;/code&gt; to get information about a &lt;code&gt;SizeConstraintSet&lt;/code&gt; (see &lt;a&gt;GetSizeConstraintSet&lt;/a&gt;), update a &lt;code&gt;SizeConstraintSet&lt;/code&gt; (see &lt;a&gt;UpdateSizeConstraintSet&lt;/a&gt;), insert a &lt;code&gt;SizeConstraintSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete a &lt;code&gt;SizeConstraintSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteSizeConstraintSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;SizeConstraintSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSizeConstraintSet&lt;/a&gt; and by &lt;a&gt;ListSizeConstraintSets&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name, if any, of the &lt;code&gt;SizeConstraintSet&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: SizeConstraintSetId
-- Required parameter: SizeConstraints
function M.SizeConstraintSet(SizeConstraints, SizeConstraintSetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SizeConstraintSet")
	local t = { 
		["SizeConstraints"] = SizeConstraints,
		["SizeConstraintSetId"] = SizeConstraintSetId,
		["Name"] = Name,
	}
	M.AssertSizeConstraintSet(t)
	return t
end

local UpdateWebACLRequest_keys = { "DefaultAction" = true, "ChangeToken" = true, "WebACLId" = true, "Updates" = true, nil }

function M.AssertUpdateWebACLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebACLRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["ChangeToken"], "Expected key ChangeToken to exist in table")
	if struct["DefaultAction"] then M.AssertWafAction(struct["DefaultAction"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	if struct["WebACLId"] then M.AssertResourceId(struct["WebACLId"]) end
	if struct["Updates"] then M.AssertWebACLUpdates(struct["Updates"]) end
	for k,_ in pairs(struct) do
		assert(UpdateWebACLRequest_keys[k], "UpdateWebACLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebACLRequest
--  
-- @param DefaultAction [WafAction] &lt;p&gt;A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default action if a request doesn't match the criteria in any of the rules in a web ACL.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The value returned by the most recent call to &lt;a&gt;GetChangeToken&lt;/a&gt;.&lt;/p&gt;
-- @param WebACLId [ResourceId] &lt;p&gt;The &lt;code&gt;WebACLId&lt;/code&gt; of the &lt;a&gt;WebACL&lt;/a&gt; that you want to update. &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
-- @param Updates [WebACLUpdates] &lt;p&gt;An array of updates to make to the &lt;a&gt;WebACL&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;An array of &lt;code&gt;WebACLUpdate&lt;/code&gt; objects that you want to insert into or delete from a &lt;a&gt;WebACL&lt;/a&gt;. For more information, see the applicable data types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;WebACLUpdate&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt; and &lt;code&gt;ActivatedRule&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ActivatedRule&lt;/a&gt;: Contains &lt;code&gt;Action&lt;/code&gt;, &lt;code&gt;Priority&lt;/code&gt;, &lt;code&gt;RuleId&lt;/code&gt;, and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;WafAction&lt;/a&gt;: Contains &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: WebACLId
-- Required parameter: ChangeToken
function M.UpdateWebACLRequest(DefaultAction, ChangeToken, WebACLId, Updates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateWebACLRequest")
	local t = { 
		["DefaultAction"] = DefaultAction,
		["ChangeToken"] = ChangeToken,
		["WebACLId"] = WebACLId,
		["Updates"] = Updates,
	}
	M.AssertUpdateWebACLRequest(t)
	return t
end

local XssMatchSetUpdate_keys = { "Action" = true, "XssMatchTuple" = true, nil }

function M.AssertXssMatchSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XssMatchSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["XssMatchTuple"], "Expected key XssMatchTuple to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["XssMatchTuple"] then M.AssertXssMatchTuple(struct["XssMatchTuple"]) end
	for k,_ in pairs(struct) do
		assert(XssMatchSetUpdate_keys[k], "XssMatchSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XssMatchSetUpdate
-- &lt;p&gt;Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an &lt;a&gt;XssMatchSet&lt;/a&gt; or delete it from an &lt;code&gt;XssMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specify &lt;code&gt;INSERT&lt;/code&gt; to add a &lt;a&gt;XssMatchSetUpdate&lt;/a&gt; to an &lt;a&gt;XssMatchSet&lt;/a&gt;. Use &lt;code&gt;DELETE&lt;/code&gt; to remove a &lt;code&gt;XssMatchSetUpdate&lt;/code&gt; from an &lt;code&gt;XssMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param XssMatchTuple [XssMatchTuple] &lt;p&gt;Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: XssMatchTuple
function M.XssMatchSetUpdate(Action, XssMatchTuple, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating XssMatchSetUpdate")
	local t = { 
		["Action"] = Action,
		["XssMatchTuple"] = XssMatchTuple,
	}
	M.AssertXssMatchSetUpdate(t)
	return t
end

local CreateIPSetResponse_keys = { "IPSet" = true, "ChangeToken" = true, nil }

function M.AssertCreateIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIPSetResponse to be of type 'table'")
	if struct["IPSet"] then M.AssertIPSet(struct["IPSet"]) end
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateIPSetResponse_keys[k], "CreateIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIPSetResponse
--  
-- @param IPSet [IPSet] &lt;p&gt;The &lt;a&gt;IPSet&lt;/a&gt; returned in the &lt;code&gt;CreateIPSet&lt;/code&gt; response.&lt;/p&gt;
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;CreateIPSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.CreateIPSetResponse(IPSet, ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIPSetResponse")
	local t = { 
		["IPSet"] = IPSet,
		["ChangeToken"] = ChangeToken,
	}
	M.AssertCreateIPSetResponse(t)
	return t
end

local RuleSummary_keys = { "Name" = true, "RuleId" = true, nil }

function M.AssertRuleSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleSummary to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	for k,_ in pairs(struct) do
		assert(RuleSummary_keys[k], "RuleSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleSummary
-- &lt;p&gt;Contains the identifier and the friendly name or description of the &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description of the &lt;a&gt;Rule&lt;/a&gt;. You can't change the name of a &lt;code&gt;Rule&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;Rule&lt;/code&gt;. You use &lt;code&gt;RuleId&lt;/code&gt; to get more information about a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;GetRule&lt;/a&gt;), update a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), insert a &lt;code&gt;Rule&lt;/code&gt; into a &lt;code&gt;WebACL&lt;/code&gt; or delete one from a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), or delete a &lt;code&gt;Rule&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteRule&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;RuleId&lt;/code&gt; is returned by &lt;a&gt;CreateRule&lt;/a&gt; and by &lt;a&gt;ListRules&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: Name
function M.RuleSummary(Name, RuleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleSummary")
	local t = { 
		["Name"] = Name,
		["RuleId"] = RuleId,
	}
	M.AssertRuleSummary(t)
	return t
end

local IPSetUpdate_keys = { "Action" = true, "IPSetDescriptor" = true, nil }

function M.AssertIPSetUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPSetUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["IPSetDescriptor"], "Expected key IPSetDescriptor to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["IPSetDescriptor"] then M.AssertIPSetDescriptor(struct["IPSetDescriptor"]) end
	for k,_ in pairs(struct) do
		assert(IPSetUpdate_keys[k], "IPSetUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPSetUpdate
-- &lt;p&gt;Specifies the type of update to perform to an &lt;a&gt;IPSet&lt;/a&gt; with &lt;a&gt;UpdateIPSet&lt;/a&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specifies whether to insert or delete an IP address with &lt;a&gt;UpdateIPSet&lt;/a&gt;.&lt;/p&gt;
-- @param IPSetDescriptor [IPSetDescriptor] &lt;p&gt;The IP address type (&lt;code&gt;IPV4&lt;/code&gt; or &lt;code&gt;IPV6&lt;/code&gt;) and the IP address range (in CIDR notation) that web requests originate from.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: IPSetDescriptor
function M.IPSetUpdate(Action, IPSetDescriptor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPSetUpdate")
	local t = { 
		["Action"] = Action,
		["IPSetDescriptor"] = IPSetDescriptor,
	}
	M.AssertIPSetUpdate(t)
	return t
end

local ListXssMatchSetsRequest_keys = { "NextMarker" = true, "Limit" = true, nil }

function M.AssertListXssMatchSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListXssMatchSetsRequest to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Limit"] then M.AssertPaginationLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListXssMatchSetsRequest_keys[k], "ListXssMatchSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListXssMatchSetsRequest
-- &lt;p&gt;A request to list the &lt;a&gt;XssMatchSet&lt;/a&gt; objects created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you specify a value for &lt;code&gt;Limit&lt;/code&gt; and you have more &lt;a&gt;XssMatchSet&lt;/a&gt; objects than the value of &lt;code&gt;Limit&lt;/code&gt;, AWS WAF returns a &lt;code&gt;NextMarker&lt;/code&gt; value in the response that allows you to list another group of &lt;code&gt;XssMatchSets&lt;/code&gt;. For the second and subsequent &lt;code&gt;ListXssMatchSets&lt;/code&gt; requests, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response to get information about another batch of &lt;code&gt;XssMatchSets&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PaginationLimit] &lt;p&gt;Specifies the number of &lt;a&gt;XssMatchSet&lt;/a&gt; objects that you want AWS WAF to return for this request. If you have more &lt;code&gt;XssMatchSet&lt;/code&gt; objects than the number you specify for &lt;code&gt;Limit&lt;/code&gt;, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value that you can use to get another batch of &lt;code&gt;Rules&lt;/code&gt;.&lt;/p&gt;
function M.ListXssMatchSetsRequest(NextMarker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListXssMatchSetsRequest")
	local t = { 
		["NextMarker"] = NextMarker,
		["Limit"] = Limit,
	}
	M.AssertListXssMatchSetsRequest(t)
	return t
end

local ListRateBasedRulesResponse_keys = { "Rules" = true, "NextMarker" = true, nil }

function M.AssertListRateBasedRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRateBasedRulesResponse to be of type 'table'")
	if struct["Rules"] then M.AssertRuleSummaries(struct["Rules"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListRateBasedRulesResponse_keys[k], "ListRateBasedRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRateBasedRulesResponse
--  
-- @param Rules [RuleSummaries] &lt;p&gt;An array of &lt;a&gt;RuleSummary&lt;/a&gt; objects.&lt;/p&gt;
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;Rules&lt;/code&gt; than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;Rules&lt;/code&gt;, submit another &lt;code&gt;ListRateBasedRules&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
function M.ListRateBasedRulesResponse(Rules, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRateBasedRulesResponse")
	local t = { 
		["Rules"] = Rules,
		["NextMarker"] = NextMarker,
	}
	M.AssertListRateBasedRulesResponse(t)
	return t
end

local ListSizeConstraintSetsResponse_keys = { "NextMarker" = true, "SizeConstraintSets" = true, nil }

function M.AssertListSizeConstraintSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSizeConstraintSetsResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["SizeConstraintSets"] then M.AssertSizeConstraintSetSummaries(struct["SizeConstraintSets"]) end
	for k,_ in pairs(struct) do
		assert(ListSizeConstraintSetsResponse_keys[k], "ListSizeConstraintSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSizeConstraintSetsResponse
--  
-- @param NextMarker [NextMarker] &lt;p&gt;If you have more &lt;code&gt;SizeConstraintSet&lt;/code&gt; objects than the number that you specified for &lt;code&gt;Limit&lt;/code&gt; in the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; value. To list more &lt;code&gt;SizeConstraintSet&lt;/code&gt; objects, submit another &lt;code&gt;ListSizeConstraintSets&lt;/code&gt; request, and specify the &lt;code&gt;NextMarker&lt;/code&gt; value from the response in the &lt;code&gt;NextMarker&lt;/code&gt; value in the next request.&lt;/p&gt;
-- @param SizeConstraintSets [SizeConstraintSetSummaries] &lt;p&gt;An array of &lt;a&gt;SizeConstraintSetSummary&lt;/a&gt; objects.&lt;/p&gt;
function M.ListSizeConstraintSetsResponse(NextMarker, SizeConstraintSets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSizeConstraintSetsResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["SizeConstraintSets"] = SizeConstraintSets,
	}
	M.AssertListSizeConstraintSetsResponse(t)
	return t
end

local WAFNonexistentItemException_keys = { "message" = true, nil }

function M.AssertWAFNonexistentItemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WAFNonexistentItemException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WAFNonexistentItemException_keys[k], "WAFNonexistentItemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WAFNonexistentItemException
-- &lt;p&gt;The operation failed because the referenced object doesn't exist.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The operation failed because the referenced object doesn't exist.&lt;/p&gt;
function M.WAFNonexistentItemException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WAFNonexistentItemException")
	local t = { 
		["message"] = message,
	}
	M.AssertWAFNonexistentItemException(t)
	return t
end

local RuleUpdate_keys = { "Action" = true, "Predicate" = true, nil }

function M.AssertRuleUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleUpdate to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Predicate"], "Expected key Predicate to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["Predicate"] then M.AssertPredicate(struct["Predicate"]) end
	for k,_ in pairs(struct) do
		assert(RuleUpdate_keys[k], "RuleUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleUpdate
-- &lt;p&gt;Specifies a &lt;code&gt;Predicate&lt;/code&gt; (such as an &lt;code&gt;IPSet&lt;/code&gt;) and indicates whether you want to add it to a &lt;code&gt;Rule&lt;/code&gt; or delete it from a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;Specify &lt;code&gt;INSERT&lt;/code&gt; to add a &lt;code&gt;Predicate&lt;/code&gt; to a &lt;code&gt;Rule&lt;/code&gt;. Use &lt;code&gt;DELETE&lt;/code&gt; to remove a &lt;code&gt;Predicate&lt;/code&gt; from a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- @param Predicate [Predicate] &lt;p&gt;The ID of the &lt;code&gt;Predicate&lt;/code&gt; (such as an &lt;code&gt;IPSet&lt;/code&gt;) that you want to add to a &lt;code&gt;Rule&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: Predicate
function M.RuleUpdate(Action, Predicate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleUpdate")
	local t = { 
		["Action"] = Action,
		["Predicate"] = Predicate,
	}
	M.AssertRuleUpdate(t)
	return t
end

local RateBasedRule_keys = { "RateKey" = true, "Name" = true, "RuleId" = true, "RateLimit" = true, "MatchPredicates" = true, "MetricName" = true, nil }

function M.AssertRateBasedRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RateBasedRule to be of type 'table'")
	assert(struct["RuleId"], "Expected key RuleId to exist in table")
	assert(struct["MatchPredicates"], "Expected key MatchPredicates to exist in table")
	assert(struct["RateKey"], "Expected key RateKey to exist in table")
	assert(struct["RateLimit"], "Expected key RateLimit to exist in table")
	if struct["RateKey"] then M.AssertRateKey(struct["RateKey"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["RuleId"] then M.AssertResourceId(struct["RuleId"]) end
	if struct["RateLimit"] then M.AssertRateLimit(struct["RateLimit"]) end
	if struct["MatchPredicates"] then M.AssertPredicates(struct["MatchPredicates"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(RateBasedRule_keys[k], "RateBasedRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RateBasedRule
-- &lt;p&gt;A &lt;code&gt;RateBasedRule&lt;/code&gt; is identical to a regular &lt;a&gt;Rule&lt;/a&gt;, with one addition: a &lt;code&gt;RateBasedRule&lt;/code&gt; counts the number of requests that arrive from a specified IP address every five minutes. For example, based on recent requests that you've seen from an attacker, you might create a &lt;code&gt;RateBasedRule&lt;/code&gt; that includes the following conditions: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The requests come from 192.0.2.44.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;They contain the value &lt;code&gt;BadBot&lt;/code&gt; in the &lt;code&gt;User-Agent&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;In the rule, you also define the rate limit as 15,000.&lt;/p&gt; &lt;p&gt;Requests that meet both of these conditions and exceed 15,000 requests every five minutes trigger the rule's action (block or count), which is defined in the web ACL.&lt;/p&gt;
-- @param RateKey [RateKey] &lt;p&gt;The field that AWS WAF uses to determine if requests are likely arriving from single source and thus subject to rate monitoring. The only valid value for &lt;code&gt;RateKey&lt;/code&gt; is &lt;code&gt;IP&lt;/code&gt;. &lt;code&gt;IP&lt;/code&gt; indicates that requests arriving from the same IP address are subject to the &lt;code&gt;RateLimit&lt;/code&gt; that is specified in the &lt;code&gt;RateBasedRule&lt;/code&gt;.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;A friendly name or description for a &lt;code&gt;RateBasedRule&lt;/code&gt;. You can't change the name of a &lt;code&gt;RateBasedRule&lt;/code&gt; after you create it.&lt;/p&gt;
-- @param RuleId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;RateBasedRule&lt;/code&gt;. You use &lt;code&gt;RuleId&lt;/code&gt; to get more information about a &lt;code&gt;RateBasedRule&lt;/code&gt; (see &lt;a&gt;GetRateBasedRule&lt;/a&gt;), update a &lt;code&gt;RateBasedRule&lt;/code&gt; (see &lt;a&gt;UpdateRateBasedRule&lt;/a&gt;), insert a &lt;code&gt;RateBasedRule&lt;/code&gt; into a &lt;code&gt;WebACL&lt;/code&gt; or delete one from a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), or delete a &lt;code&gt;RateBasedRule&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteRateBasedRule&lt;/a&gt;).&lt;/p&gt;
-- @param RateLimit [RateLimit] &lt;p&gt;The maximum number of requests, which have an identical value in the field specified by the &lt;code&gt;RateKey&lt;/code&gt;, allowed in a five-minute period. If the number of requests exceeds the &lt;code&gt;RateLimit&lt;/code&gt; and the other predicates specified in the rule are also met, AWS WAF triggers the action that is specified for this rule.&lt;/p&gt;
-- @param MatchPredicates [Predicates] &lt;p&gt;The &lt;code&gt;Predicates&lt;/code&gt; object contains one &lt;code&gt;Predicate&lt;/code&gt; element for each &lt;a&gt;ByteMatchSet&lt;/a&gt;, &lt;a&gt;IPSet&lt;/a&gt;, or &lt;a&gt;SqlInjectionMatchSet&lt;/a&gt; object that you want to include in a &lt;code&gt;RateBasedRule&lt;/code&gt;.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;A friendly name or description for the metrics for a &lt;code&gt;RateBasedRule&lt;/code&gt;. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace. You can't change the name of the metric after you create the &lt;code&gt;RateBasedRule&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: RuleId
-- Required parameter: MatchPredicates
-- Required parameter: RateKey
-- Required parameter: RateLimit
function M.RateBasedRule(RateKey, Name, RuleId, RateLimit, MatchPredicates, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RateBasedRule")
	local t = { 
		["RateKey"] = RateKey,
		["Name"] = Name,
		["RuleId"] = RuleId,
		["RateLimit"] = RateLimit,
		["MatchPredicates"] = MatchPredicates,
		["MetricName"] = MetricName,
	}
	M.AssertRateBasedRule(t)
	return t
end

local SqlInjectionMatchSet_keys = { "SqlInjectionMatchTuples" = true, "Name" = true, "SqlInjectionMatchSetId" = true, nil }

function M.AssertSqlInjectionMatchSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlInjectionMatchSet to be of type 'table'")
	assert(struct["SqlInjectionMatchSetId"], "Expected key SqlInjectionMatchSetId to exist in table")
	assert(struct["SqlInjectionMatchTuples"], "Expected key SqlInjectionMatchTuples to exist in table")
	if struct["SqlInjectionMatchTuples"] then M.AssertSqlInjectionMatchTuples(struct["SqlInjectionMatchTuples"]) end
	if struct["Name"] then M.AssertResourceName(struct["Name"]) end
	if struct["SqlInjectionMatchSetId"] then M.AssertResourceId(struct["SqlInjectionMatchSetId"]) end
	for k,_ in pairs(struct) do
		assert(SqlInjectionMatchSet_keys[k], "SqlInjectionMatchSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlInjectionMatchSet
-- &lt;p&gt;A complex type that contains &lt;code&gt;SqlInjectionMatchTuple&lt;/code&gt; objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; contains more than one &lt;code&gt;SqlInjectionMatchTuple&lt;/code&gt; object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.&lt;/p&gt;
-- @param SqlInjectionMatchTuples [SqlInjectionMatchTuples] &lt;p&gt;Specifies the parts of web requests that you want to inspect for snippets of malicious SQL code.&lt;/p&gt;
-- @param Name [ResourceName] &lt;p&gt;The name, if any, of the &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;.&lt;/p&gt;
-- @param SqlInjectionMatchSetId [ResourceId] &lt;p&gt;A unique identifier for a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt;. You use &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; to get information about a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; (see &lt;a&gt;GetSqlInjectionMatchSet&lt;/a&gt;), update a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; (see &lt;a&gt;UpdateSqlInjectionMatchSet&lt;/a&gt;), insert a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; into a &lt;code&gt;Rule&lt;/code&gt; or delete one from a &lt;code&gt;Rule&lt;/code&gt; (see &lt;a&gt;UpdateRule&lt;/a&gt;), and delete a &lt;code&gt;SqlInjectionMatchSet&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteSqlInjectionMatchSet&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;SqlInjectionMatchSetId&lt;/code&gt; is returned by &lt;a&gt;CreateSqlInjectionMatchSet&lt;/a&gt; and by &lt;a&gt;ListSqlInjectionMatchSets&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SqlInjectionMatchSetId
-- Required parameter: SqlInjectionMatchTuples
function M.SqlInjectionMatchSet(SqlInjectionMatchTuples, Name, SqlInjectionMatchSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlInjectionMatchSet")
	local t = { 
		["SqlInjectionMatchTuples"] = SqlInjectionMatchTuples,
		["Name"] = Name,
		["SqlInjectionMatchSetId"] = SqlInjectionMatchSetId,
	}
	M.AssertSqlInjectionMatchSet(t)
	return t
end

local GetXssMatchSetResponse_keys = { "XssMatchSet" = true, nil }

function M.AssertGetXssMatchSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetXssMatchSetResponse to be of type 'table'")
	if struct["XssMatchSet"] then M.AssertXssMatchSet(struct["XssMatchSet"]) end
	for k,_ in pairs(struct) do
		assert(GetXssMatchSetResponse_keys[k], "GetXssMatchSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetXssMatchSetResponse
-- &lt;p&gt;The response to a &lt;a&gt;GetXssMatchSet&lt;/a&gt; request.&lt;/p&gt;
-- @param XssMatchSet [XssMatchSet] &lt;p&gt;Information about the &lt;a&gt;XssMatchSet&lt;/a&gt; that you specified in the &lt;code&gt;GetXssMatchSet&lt;/code&gt; request. For more information, see the following topics:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;XssMatchSet&lt;/a&gt;: Contains &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;XssMatchSetId&lt;/code&gt;, and an array of &lt;code&gt;XssMatchTuple&lt;/code&gt; objects&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;XssMatchTuple&lt;/a&gt;: Each &lt;code&gt;XssMatchTuple&lt;/code&gt; object contains &lt;code&gt;FieldToMatch&lt;/code&gt; and &lt;code&gt;TextTransformation&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;FieldToMatch&lt;/a&gt;: Contains &lt;code&gt;Data&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetXssMatchSetResponse(XssMatchSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetXssMatchSetResponse")
	local t = { 
		["XssMatchSet"] = XssMatchSet,
	}
	M.AssertGetXssMatchSetResponse(t)
	return t
end

local DeleteIPSetResponse_keys = { "ChangeToken" = true, nil }

function M.AssertDeleteIPSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIPSetResponse to be of type 'table'")
	if struct["ChangeToken"] then M.AssertChangeToken(struct["ChangeToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIPSetResponse_keys[k], "DeleteIPSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIPSetResponse
--  
-- @param ChangeToken [ChangeToken] &lt;p&gt;The &lt;code&gt;ChangeToken&lt;/code&gt; that you used to submit the &lt;code&gt;DeleteIPSet&lt;/code&gt; request. You can also use this value to query the status of the request. For more information, see &lt;a&gt;GetChangeTokenStatus&lt;/a&gt;.&lt;/p&gt;
function M.DeleteIPSetResponse(ChangeToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIPSetResponse")
	local t = { 
		["ChangeToken"] = ChangeToken,
	}
	M.AssertDeleteIPSetResponse(t)
	return t
end

local HTTPHeader_keys = { "Name" = true, "Value" = true, nil }

function M.AssertHTTPHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HTTPHeader to be of type 'table'")
	if struct["Name"] then M.AssertHeaderName(struct["Name"]) end
	if struct["Value"] then M.AssertHeaderValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(HTTPHeader_keys[k], "HTTPHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HTTPHeader
-- &lt;p&gt;The response from a &lt;a&gt;GetSampledRequests&lt;/a&gt; request includes an &lt;code&gt;HTTPHeader&lt;/code&gt; complex type that appears as &lt;code&gt;Headers&lt;/code&gt; in the response syntax. &lt;code&gt;HTTPHeader&lt;/code&gt; contains the names and values of all of the headers that appear in one of the web requests that were returned by &lt;code&gt;GetSampledRequests&lt;/code&gt;. &lt;/p&gt;
-- @param Name [HeaderName] &lt;p&gt;The name of one of the headers in the sampled web request.&lt;/p&gt;
-- @param Value [HeaderValue] &lt;p&gt;The value of one of the headers in the sampled web request.&lt;/p&gt;
function M.HTTPHeader(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HTTPHeader")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertHTTPHeader(t)
	return t
end

function M.AssertManagedKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ManagedKey to be of type 'string'")
end

--  
function M.ManagedKey(str)
	M.AssertManagedKey(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertPredicateType(str)
	assert(str)
	assert(type(str) == "string", "Expected PredicateType to be of type 'string'")
end

--  
function M.PredicateType(str)
	M.AssertPredicateType(str)
	return str
end

function M.AssertParameterExceptionField(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionField to be of type 'string'")
end

--  
function M.ParameterExceptionField(str)
	M.AssertParameterExceptionField(str)
	return str
end

function M.AssertChangeToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChangeToken(str)
	M.AssertChangeToken(str)
	return str
end

function M.AssertParameterExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionReason to be of type 'string'")
end

--  
function M.ParameterExceptionReason(str)
	M.AssertParameterExceptionReason(str)
	return str
end

function M.AssertPositionalConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected PositionalConstraint to be of type 'string'")
end

--  
function M.PositionalConstraint(str)
	M.AssertPositionalConstraint(str)
	return str
end

function M.AssertHTTPVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected HTTPVersion to be of type 'string'")
end

--  
function M.HTTPVersion(str)
	M.AssertHTTPVersion(str)
	return str
end

function M.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	M.AssertChangeAction(str)
	return str
end

function M.AssertMatchFieldData(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchFieldData to be of type 'string'")
end

--  
function M.MatchFieldData(str)
	M.AssertMatchFieldData(str)
	return str
end

function M.AssertNextMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextMarker to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextMarker(str)
	M.AssertNextMarker(str)
	return str
end

function M.AssertHTTPMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected HTTPMethod to be of type 'string'")
end

--  
function M.HTTPMethod(str)
	M.AssertHTTPMethod(str)
	return str
end

function M.AssertParameterExceptionParameter(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterExceptionParameter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterExceptionParameter(str)
	M.AssertParameterExceptionParameter(str)
	return str
end

function M.AssertWafRuleType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafRuleType to be of type 'string'")
end

--  
function M.WafRuleType(str)
	M.AssertWafRuleType(str)
	return str
end

function M.AssertIPString(str)
	assert(str)
	assert(type(str) == "string", "Expected IPString to be of type 'string'")
end

--  
function M.IPString(str)
	M.AssertIPString(str)
	return str
end

function M.AssertHeaderName(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderName to be of type 'string'")
end

--  
function M.HeaderName(str)
	M.AssertHeaderName(str)
	return str
end

function M.AssertTextTransformation(str)
	assert(str)
	assert(type(str) == "string", "Expected TextTransformation to be of type 'string'")
end

--  
function M.TextTransformation(str)
	M.AssertTextTransformation(str)
	return str
end

function M.AssertWafActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected WafActionType to be of type 'string'")
end

--  
function M.WafActionType(str)
	M.AssertWafActionType(str)
	return str
end

function M.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	M.AssertAction(str)
	return str
end

function M.AssertMatchFieldType(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchFieldType to be of type 'string'")
end

--  
function M.MatchFieldType(str)
	M.AssertMatchFieldType(str)
	return str
end

function M.AssertRateKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RateKey to be of type 'string'")
end

--  
function M.RateKey(str)
	M.AssertRateKey(str)
	return str
end

function M.AssertIPSetDescriptorValue(str)
	assert(str)
	assert(type(str) == "string", "Expected IPSetDescriptorValue to be of type 'string'")
end

--  
function M.IPSetDescriptorValue(str)
	M.AssertIPSetDescriptorValue(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
	return str
end

function M.AssertChangeTokenStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeTokenStatus to be of type 'string'")
end

--  
function M.ChangeTokenStatus(str)
	M.AssertChangeTokenStatus(str)
	return str
end

function M.AssertIPSetDescriptorType(str)
	assert(str)
	assert(type(str) == "string", "Expected IPSetDescriptorType to be of type 'string'")
end

--  
function M.IPSetDescriptorType(str)
	M.AssertIPSetDescriptorType(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	M.AssertResourceName(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertHeaderValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValue to be of type 'string'")
end

--  
function M.HeaderValue(str)
	M.AssertHeaderValue(str)
	return str
end

function M.AssertCountry(str)
	assert(str)
	assert(type(str) == "string", "Expected Country to be of type 'string'")
end

--  
function M.Country(str)
	M.AssertCountry(str)
	return str
end

function M.AssertURIString(str)
	assert(str)
	assert(type(str) == "string", "Expected URIString to be of type 'string'")
end

--  
function M.URIString(str)
	M.AssertURIString(str)
	return str
end

function M.AssertPopulationSize(long)
	assert(long)
	assert(type(long) == "number", "Expected PopulationSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PopulationSize(long)
	M.AssertPopulationSize(long)
	return long
end

function M.AssertSampleWeight(long)
	assert(long)
	assert(type(long) == "number", "Expected SampleWeight to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SampleWeight(long)
	M.AssertSampleWeight(long)
	return long
end

function M.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	M.AssertSize(long)
	return long
end

function M.AssertGetSampledRequestsMaxItems(long)
	assert(long)
	assert(type(long) == "number", "Expected GetSampledRequestsMaxItems to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.GetSampledRequestsMaxItems(long)
	M.AssertGetSampledRequestsMaxItems(long)
	return long
end

function M.AssertRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected RateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.RateLimit(long)
	M.AssertRateLimit(long)
	return long
end

function M.AssertPaginationLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PaginationLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PaginationLimit(integer)
	M.AssertPaginationLimit(integer)
	return integer
end

function M.AssertRulePriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RulePriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RulePriority(integer)
	M.AssertRulePriority(integer)
	return integer
end

function M.AssertNegated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Negated to be of type 'boolean'")
end

function M.Negated(boolean)
	M.AssertNegated(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertByteMatchTargetString(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ByteMatchTargetString to be of type 'string'")
end

function M.ByteMatchTargetString(blob)
	M.AssertByteMatchTargetString(blob)
	return blob
end

function M.AssertSizeConstraintSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraintSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSizeConstraintSetSummary(v)
	end
end

--  
-- List of SizeConstraintSetSummary objects
function M.SizeConstraintSetSummaries(list)
	M.AssertSizeConstraintSetSummaries(list)
	return list
end

function M.AssertSqlInjectionMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSqlInjectionMatchSetSummary(v)
	end
end

--  
-- List of SqlInjectionMatchSetSummary objects
function M.SqlInjectionMatchSetSummaries(list)
	M.AssertSqlInjectionMatchSetSummaries(list)
	return list
end

function M.AssertSqlInjectionMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSqlInjectionMatchTuple(v)
	end
end

--  
-- List of SqlInjectionMatchTuple objects
function M.SqlInjectionMatchTuples(list)
	M.AssertSqlInjectionMatchTuples(list)
	return list
end

function M.AssertWebACLUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected WebACLUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWebACLUpdate(v)
	end
end

--  
-- List of WebACLUpdate objects
function M.WebACLUpdates(list)
	M.AssertWebACLUpdates(list)
	return list
end

function M.AssertByteMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertByteMatchSetSummary(v)
	end
end

--  
-- List of ByteMatchSetSummary objects
function M.ByteMatchSetSummaries(list)
	M.AssertByteMatchSetSummaries(list)
	return list
end

function M.AssertSizeConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSizeConstraint(v)
	end
end

--  
-- List of SizeConstraint objects
function M.SizeConstraints(list)
	M.AssertSizeConstraints(list)
	return list
end

function M.AssertIPSetDescriptors(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetDescriptors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIPSetDescriptor(v)
	end
end

--  
-- List of IPSetDescriptor objects
function M.IPSetDescriptors(list)
	M.AssertIPSetDescriptors(list)
	return list
end

function M.AssertActivatedRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivatedRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivatedRule(v)
	end
end

--  
-- List of ActivatedRule objects
function M.ActivatedRules(list)
	M.AssertActivatedRules(list)
	return list
end

function M.AssertXssMatchSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXssMatchSetSummary(v)
	end
end

--  
-- List of XssMatchSetSummary objects
function M.XssMatchSetSummaries(list)
	M.AssertXssMatchSetSummaries(list)
	return list
end

function M.AssertIPSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIPSetSummary(v)
	end
end

--  
-- List of IPSetSummary objects
function M.IPSetSummaries(list)
	M.AssertIPSetSummaries(list)
	return list
end

function M.AssertManagedKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertManagedKey(v)
	end
end

--  
-- List of ManagedKey objects
function M.ManagedKeys(list)
	M.AssertManagedKeys(list)
	return list
end

function M.AssertRuleUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRuleUpdate(v)
	end
end

--  
-- List of RuleUpdate objects
function M.RuleUpdates(list)
	M.AssertRuleUpdates(list)
	return list
end

function M.AssertByteMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertByteMatchTuple(v)
	end
end

--  
-- List of ByteMatchTuple objects
function M.ByteMatchTuples(list)
	M.AssertByteMatchTuples(list)
	return list
end

function M.AssertWebACLSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected WebACLSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWebACLSummary(v)
	end
end

--  
-- List of WebACLSummary objects
function M.WebACLSummaries(list)
	M.AssertWebACLSummaries(list)
	return list
end

function M.AssertPredicates(list)
	assert(list)
	assert(type(list) == "table", "Expected Predicates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPredicate(v)
	end
end

--  
-- List of Predicate objects
function M.Predicates(list)
	M.AssertPredicates(list)
	return list
end

function M.AssertSqlInjectionMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected SqlInjectionMatchSetUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSqlInjectionMatchSetUpdate(v)
	end
end

--  
-- List of SqlInjectionMatchSetUpdate objects
function M.SqlInjectionMatchSetUpdates(list)
	M.AssertSqlInjectionMatchSetUpdates(list)
	return list
end

function M.AssertXssMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchSetUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXssMatchSetUpdate(v)
	end
end

--  
-- List of XssMatchSetUpdate objects
function M.XssMatchSetUpdates(list)
	M.AssertXssMatchSetUpdates(list)
	return list
end

function M.AssertXssMatchTuples(list)
	assert(list)
	assert(type(list) == "table", "Expected XssMatchTuples to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertXssMatchTuple(v)
	end
end

--  
-- List of XssMatchTuple objects
function M.XssMatchTuples(list)
	M.AssertXssMatchTuples(list)
	return list
end

function M.AssertIPSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected IPSetUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIPSetUpdate(v)
	end
end

--  
-- List of IPSetUpdate objects
function M.IPSetUpdates(list)
	M.AssertIPSetUpdates(list)
	return list
end

function M.AssertSizeConstraintSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected SizeConstraintSetUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSizeConstraintSetUpdate(v)
	end
end

--  
-- List of SizeConstraintSetUpdate objects
function M.SizeConstraintSetUpdates(list)
	M.AssertSizeConstraintSetUpdates(list)
	return list
end

function M.AssertByteMatchSetUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected ByteMatchSetUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertByteMatchSetUpdate(v)
	end
end

--  
-- List of ByteMatchSetUpdate objects
function M.ByteMatchSetUpdates(list)
	M.AssertByteMatchSetUpdates(list)
	return list
end

function M.AssertSampledHTTPRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected SampledHTTPRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSampledHTTPRequest(v)
	end
end

--  
-- List of SampledHTTPRequest objects
function M.SampledHTTPRequests(list)
	M.AssertSampledHTTPRequests(list)
	return list
end

function M.AssertHTTPHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected HTTPHeaders to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHTTPHeader(v)
	end
end

--  
-- List of HTTPHeader objects
function M.HTTPHeaders(list)
	M.AssertHTTPHeaders(list)
	return list
end

function M.AssertRuleSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRuleSummary(v)
	end
end

--  
-- List of RuleSummary objects
function M.RuleSummaries(list)
	M.AssertRuleSummaries(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateSizeConstraintSet
-- @param CreateSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSizeConstraintSetAsync(CreateSizeConstraintSetRequest, cb)
	assert(CreateSizeConstraintSetRequest, "You must provide a CreateSizeConstraintSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSizeConstraintSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIPSets
-- @param ListIPSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIPSetsAsync(ListIPSetsRequest, cb)
	assert(ListIPSetsRequest, "You must provide a ListIPSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListIPSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIPSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRateBasedRule
-- @param DeleteRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRateBasedRuleAsync(DeleteRateBasedRuleRequest, cb)
	assert(DeleteRateBasedRuleRequest, "You must provide a DeleteRateBasedRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRateBasedRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListWebACLs
-- @param ListWebACLsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListWebACLsAsync(ListWebACLsRequest, cb)
	assert(ListWebACLsRequest, "You must provide a ListWebACLsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListWebACLs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListWebACLsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetChangeTokenStatus
-- @param GetChangeTokenStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeTokenStatusAsync(GetChangeTokenStatusRequest, cb)
	assert(GetChangeTokenStatusRequest, "You must provide a GetChangeTokenStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetChangeTokenStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetChangeTokenStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSqlInjectionMatchSet
-- @param DeleteSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSqlInjectionMatchSetAsync(DeleteSqlInjectionMatchSetRequest, cb)
	assert(DeleteSqlInjectionMatchSetRequest, "You must provide a DeleteSqlInjectionMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSqlInjectionMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListByteMatchSets
-- @param ListByteMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListByteMatchSetsAsync(ListByteMatchSetsRequest, cb)
	assert(ListByteMatchSetsRequest, "You must provide a ListByteMatchSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListByteMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListByteMatchSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRule
-- @param CreateRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRuleAsync(CreateRuleRequest, cb)
	assert(CreateRuleRequest, "You must provide a CreateRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRateBasedRuleManagedKeys
-- @param GetRateBasedRuleManagedKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRateBasedRuleManagedKeysAsync(GetRateBasedRuleManagedKeysRequest, cb)
	assert(GetRateBasedRuleManagedKeysRequest, "You must provide a GetRateBasedRuleManagedKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRateBasedRuleManagedKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRateBasedRuleManagedKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSqlInjectionMatchSet
-- @param CreateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSqlInjectionMatchSetAsync(CreateSqlInjectionMatchSetRequest, cb)
	assert(CreateSqlInjectionMatchSetRequest, "You must provide a CreateSqlInjectionMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSqlInjectionMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRateBasedRules
-- @param ListRateBasedRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRateBasedRulesAsync(ListRateBasedRulesRequest, cb)
	assert(ListRateBasedRulesRequest, "You must provide a ListRateBasedRulesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRateBasedRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRateBasedRulesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteByteMatchSet
-- @param DeleteByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteByteMatchSetAsync(DeleteByteMatchSetRequest, cb)
	assert(DeleteByteMatchSetRequest, "You must provide a DeleteByteMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteByteMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIPSet
-- @param GetIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIPSetAsync(GetIPSetRequest, cb)
	assert(GetIPSetRequest, "You must provide a GetIPSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIPSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSqlInjectionMatchSets
-- @param ListSqlInjectionMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSqlInjectionMatchSetsAsync(ListSqlInjectionMatchSetsRequest, cb)
	assert(ListSqlInjectionMatchSetsRequest, "You must provide a ListSqlInjectionMatchSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListSqlInjectionMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSqlInjectionMatchSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRule
-- @param DeleteRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRuleAsync(DeleteRuleRequest, cb)
	assert(DeleteRuleRequest, "You must provide a DeleteRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteXssMatchSet
-- @param DeleteXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteXssMatchSetAsync(DeleteXssMatchSetRequest, cb)
	assert(DeleteXssMatchSetRequest, "You must provide a DeleteXssMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteXssMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateIPSet
-- @param UpdateIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIPSetAsync(UpdateIPSetRequest, cb)
	assert(UpdateIPSetRequest, "You must provide a UpdateIPSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateIPSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRule
-- @param UpdateRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRuleAsync(UpdateRuleRequest, cb)
	assert(UpdateRuleRequest, "You must provide a UpdateRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetByteMatchSet
-- @param GetByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetByteMatchSetAsync(GetByteMatchSetRequest, cb)
	assert(GetByteMatchSetRequest, "You must provide a GetByteMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetByteMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateXssMatchSet
-- @param CreateXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateXssMatchSetAsync(CreateXssMatchSetRequest, cb)
	assert(CreateXssMatchSetRequest, "You must provide a CreateXssMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateXssMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRateBasedRule
-- @param UpdateRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRateBasedRuleAsync(UpdateRateBasedRuleRequest, cb)
	assert(UpdateRateBasedRuleRequest, "You must provide a UpdateRateBasedRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRateBasedRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetChangeToken
-- @param GetChangeTokenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeTokenAsync(GetChangeTokenRequest, cb)
	assert(GetChangeTokenRequest, "You must provide a GetChangeTokenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetChangeToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetChangeTokenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListXssMatchSets
-- @param ListXssMatchSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListXssMatchSetsAsync(ListXssMatchSetsRequest, cb)
	assert(ListXssMatchSetsRequest, "You must provide a ListXssMatchSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListXssMatchSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListXssMatchSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSizeConstraintSet
-- @param GetSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSizeConstraintSetAsync(GetSizeConstraintSetRequest, cb)
	assert(GetSizeConstraintSetRequest, "You must provide a GetSizeConstraintSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSizeConstraintSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateIPSet
-- @param CreateIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIPSetAsync(CreateIPSetRequest, cb)
	assert(CreateIPSetRequest, "You must provide a CreateIPSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateIPSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetXssMatchSet
-- @param GetXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetXssMatchSetAsync(GetXssMatchSetRequest, cb)
	assert(GetXssMatchSetRequest, "You must provide a GetXssMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetXssMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateXssMatchSet
-- @param UpdateXssMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateXssMatchSetAsync(UpdateXssMatchSetRequest, cb)
	assert(UpdateXssMatchSetRequest, "You must provide a UpdateXssMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateXssMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateXssMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRateBasedRule
-- @param GetRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRateBasedRuleAsync(GetRateBasedRuleRequest, cb)
	assert(GetRateBasedRuleRequest, "You must provide a GetRateBasedRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRateBasedRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSizeConstraintSet
-- @param UpdateSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSizeConstraintSetAsync(UpdateSizeConstraintSetRequest, cb)
	assert(UpdateSizeConstraintSetRequest, "You must provide a UpdateSizeConstraintSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSizeConstraintSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRateBasedRule
-- @param CreateRateBasedRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRateBasedRuleAsync(CreateRateBasedRuleRequest, cb)
	assert(CreateRateBasedRuleRequest, "You must provide a CreateRateBasedRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateRateBasedRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRateBasedRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRules
-- @param ListRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRulesAsync(ListRulesRequest, cb)
	assert(ListRulesRequest, "You must provide a ListRulesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRulesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSampledRequests
-- @param GetSampledRequestsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSampledRequestsAsync(GetSampledRequestsRequest, cb)
	assert(GetSampledRequestsRequest, "You must provide a GetSampledRequestsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSampledRequests",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSampledRequestsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateWebACL
-- @param CreateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateWebACLAsync(CreateWebACLRequest, cb)
	assert(CreateWebACLRequest, "You must provide a CreateWebACLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateWebACLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteWebACL
-- @param DeleteWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteWebACLAsync(DeleteWebACLRequest, cb)
	assert(DeleteWebACLRequest, "You must provide a DeleteWebACLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteWebACLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRule
-- @param GetRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRuleAsync(GetRuleRequest, cb)
	assert(GetRuleRequest, "You must provide a GetRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSizeConstraintSet
-- @param DeleteSizeConstraintSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSizeConstraintSetAsync(DeleteSizeConstraintSetRequest, cb)
	assert(DeleteSizeConstraintSetRequest, "You must provide a DeleteSizeConstraintSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteSizeConstraintSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSizeConstraintSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSqlInjectionMatchSet
-- @param UpdateSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSqlInjectionMatchSetAsync(UpdateSqlInjectionMatchSetRequest, cb)
	assert(UpdateSqlInjectionMatchSetRequest, "You must provide a UpdateSqlInjectionMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSqlInjectionMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateWebACL
-- @param UpdateWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateWebACLAsync(UpdateWebACLRequest, cb)
	assert(UpdateWebACLRequest, "You must provide a UpdateWebACLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateWebACLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateByteMatchSet
-- @param CreateByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateByteMatchSetAsync(CreateByteMatchSetRequest, cb)
	assert(CreateByteMatchSetRequest, "You must provide a CreateByteMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.CreateByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateByteMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetWebACL
-- @param GetWebACLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetWebACLAsync(GetWebACLRequest, cb)
	assert(GetWebACLRequest, "You must provide a GetWebACLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetWebACL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetWebACLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateByteMatchSet
-- @param UpdateByteMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateByteMatchSetAsync(UpdateByteMatchSetRequest, cb)
	assert(UpdateByteMatchSetRequest, "You must provide a UpdateByteMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.UpdateByteMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateByteMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSqlInjectionMatchSet
-- @param GetSqlInjectionMatchSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSqlInjectionMatchSetAsync(GetSqlInjectionMatchSetRequest, cb)
	assert(GetSqlInjectionMatchSetRequest, "You must provide a GetSqlInjectionMatchSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.GetSqlInjectionMatchSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSqlInjectionMatchSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSizeConstraintSets
-- @param ListSizeConstraintSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSizeConstraintSetsAsync(ListSizeConstraintSetsRequest, cb)
	assert(ListSizeConstraintSetsRequest, "You must provide a ListSizeConstraintSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.ListSizeConstraintSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSizeConstraintSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIPSet
-- @param DeleteIPSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIPSetAsync(DeleteIPSetRequest, cb)
	assert(DeleteIPSetRequest, "You must provide a DeleteIPSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSWAF_20150824.DeleteIPSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIPSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
