--- GENERATED CODE - DO NOT MODIFY
-- AWS Application Discovery Service (discovery-2015-11-01)

local M = {}

M.metadata = {
	api_version = "2015-11-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "discovery",
	service_abbreviation = "",
	service_full_name = "AWS Application Discovery Service",
	signature_version = "v4",
	target_prefix = "AWSPoseidonService_V2015_11_01",
	timestamp_format = "",
	global_endpoint = "",
	uid = "discovery-2015-11-01",
}

local keys = {}
local asserts = {}

keys.DisassociateConfigurationItemsFromApplicationResponse = { nil }

function asserts.AssertDisassociateConfigurationItemsFromApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConfigurationItemsFromApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateConfigurationItemsFromApplicationResponse[k], "DisassociateConfigurationItemsFromApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConfigurationItemsFromApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateConfigurationItemsFromApplicationResponse structure as a key-value pair table
function M.DisassociateConfigurationItemsFromApplicationResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateConfigurationItemsFromApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateConfigurationItemsFromApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationsResponse = { ["configurations"] = true, nil }

function asserts.AssertDescribeConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationsResponse to be of type 'table'")
	if struct["configurations"] then asserts.AssertDescribeConfigurationsAttributes(struct["configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationsResponse[k], "DescribeConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurations [DescribeConfigurationsAttributes] <p>A key in the response map. The value is an array of data.</p>
-- @return DescribeConfigurationsResponse structure as a key-value pair table
function M.DescribeConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurations"] = args["configurations"],
	}
	asserts.AssertDescribeConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AgentInfo = { ["version"] = true, ["connectorId"] = true, ["agentType"] = true, ["hostName"] = true, ["collectionStatus"] = true, ["agentNetworkInfoList"] = true, ["health"] = true, ["agentId"] = true, ["registeredTime"] = true, ["lastHealthPingTime"] = true, nil }

function asserts.AssertAgentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentInfo to be of type 'table'")
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["connectorId"] then asserts.AssertString(struct["connectorId"]) end
	if struct["agentType"] then asserts.AssertString(struct["agentType"]) end
	if struct["hostName"] then asserts.AssertString(struct["hostName"]) end
	if struct["collectionStatus"] then asserts.AssertString(struct["collectionStatus"]) end
	if struct["agentNetworkInfoList"] then asserts.AssertAgentNetworkInfoList(struct["agentNetworkInfoList"]) end
	if struct["health"] then asserts.AssertAgentStatus(struct["health"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	if struct["registeredTime"] then asserts.AssertString(struct["registeredTime"]) end
	if struct["lastHealthPingTime"] then asserts.AssertString(struct["lastHealthPingTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentInfo[k], "AgentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentInfo
-- <p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [String] <p>The agent or connector version.</p>
-- * connectorId [String] <p>The ID of the connector.</p>
-- * agentType [String] <p>Type of agent.</p>
-- * hostName [String] <p>The name of the host where the agent or connector resides. The host can be a server or virtual machine.</p>
-- * collectionStatus [String] <p>Status of the collection process for an agent or connector.</p>
-- * agentNetworkInfoList [AgentNetworkInfoList] <p>Network details about the host where the agent or connector resides.</p>
-- * health [AgentStatus] <p>The health of the agent or connector.</p>
-- * agentId [AgentId] <p>The agent or connector ID.</p>
-- * registeredTime [String] <p>Agent's first registration timestamp in UTC.</p>
-- * lastHealthPingTime [String] <p>Time since agent or connector health was reported.</p>
-- @return AgentInfo structure as a key-value pair table
function M.AgentInfo(args)
	assert(args, "You must provide an argument table when creating AgentInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["connectorId"] = args["connectorId"],
		["agentType"] = args["agentType"],
		["hostName"] = args["hostName"],
		["collectionStatus"] = args["collectionStatus"],
		["agentNetworkInfoList"] = args["agentNetworkInfoList"],
		["health"] = args["health"],
		["agentId"] = args["agentId"],
		["registeredTime"] = args["registeredTime"],
		["lastHealthPingTime"] = args["lastHealthPingTime"],
	}
	asserts.AssertAgentInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["filters"] = true, nil }

function asserts.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then asserts.AssertTagFilters(struct["filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsRequest[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results.</p>
-- * maxResults [Integer] <p>The total number of items to return in a single page of output. The maximum value is 100.</p>
-- * filters [TagFilters] <p>You can filter the list using a <i>key</i>-<i>value</i> format. You can separate these items by using logical operators. Allowed filters include <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
-- @return DescribeTagsRequest structure as a key-value pair table
function M.DescribeTagsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["filters"] = args["filters"],
	}
	asserts.AssertDescribeTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationRequest = { ["configurationId"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertUpdateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationRequest to be of type 'table'")
	assert(struct["configurationId"], "Expected key configurationId to exist in table")
	if struct["configurationId"] then asserts.AssertApplicationId(struct["configurationId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationRequest[k], "UpdateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationId [ApplicationId] <p>Configuration ID of the application to be updated.</p>
-- * name [String] <p>New name of the application to be updated.</p>
-- * description [String] <p>New description of the application to be updated.</p>
-- Required key: configurationId
-- @return UpdateApplicationRequest structure as a key-value pair table
function M.UpdateApplicationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationId"] = args["configurationId"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AgentNetworkInfo = { ["macAddress"] = true, ["ipAddress"] = true, nil }

function asserts.AssertAgentNetworkInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentNetworkInfo to be of type 'table'")
	if struct["macAddress"] then asserts.AssertString(struct["macAddress"]) end
	if struct["ipAddress"] then asserts.AssertString(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentNetworkInfo[k], "AgentNetworkInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentNetworkInfo
-- <p>Network details about the host where the agent/connector resides.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * macAddress [String] <p>The MAC address for the host where the agent/connector resides.</p>
-- * ipAddress [String] <p>The IP address for the host where the agent/connector resides.</p>
-- @return AgentNetworkInfo structure as a key-value pair table
function M.AgentNetworkInfo(args)
	assert(args, "You must provide an argument table when creating AgentNetworkInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["macAddress"] = args["macAddress"],
		["ipAddress"] = args["ipAddress"],
	}
	asserts.AssertAgentNetworkInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationsRequest = { ["configurationIds"] = true, nil }

function asserts.AssertDeleteApplicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then asserts.AssertApplicationIdsList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationsRequest[k], "DeleteApplicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationIds [ApplicationIdsList] <p>Configuration ID of an application to be deleted.</p>
-- Required key: configurationIds
-- @return DeleteApplicationsRequest structure as a key-value pair table
function M.DeleteApplicationsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationIds"] = args["configurationIds"],
	}
	asserts.AssertDeleteApplicationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagsRequest = { ["configurationIds"] = true, ["tags"] = true, nil }

function asserts.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["configurationIds"] then asserts.AssertConfigurationIdList(struct["configurationIds"]) end
	if struct["tags"] then asserts.AssertTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsRequest[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationIds [ConfigurationIdList] <p>A list of configuration items that you want to tag.</p>
-- * tags [TagSet] <p>Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p>
-- Required key: configurationIds
-- Required key: tags
-- @return CreateTagsRequest structure as a key-value pair table
function M.CreateTagsRequest(args)
	assert(args, "You must provide an argument table when creating CreateTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationIds"] = args["configurationIds"],
		["tags"] = args["tags"],
	}
	asserts.AssertCreateTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationsResponse = { ["nextToken"] = true, ["configurations"] = true, nil }

function asserts.AssertListConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["configurations"] then asserts.AssertConfigurations(struct["configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationsResponse[k], "ListConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if your call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
-- * configurations [Configurations] <p>Returns configuration details, including the configuration ID, attribute names, and attribute values.</p>
-- @return ListConfigurationsResponse structure as a key-value pair table
function M.ListConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating ListConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["configurations"] = args["configurations"],
	}
	asserts.AssertListConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata that help you categorize IT assets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [TagValue] <p>A value for a tag key on which to filter.</p>
-- * key [TagKey] <p>The type of tag on which to filter.</p>
-- Required key: key
-- Required key: value
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
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAgentsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["filters"] = true, ["agentIds"] = true, nil }

function asserts.AssertDescribeAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then asserts.AssertFilters(struct["filters"]) end
	if struct["agentIds"] then asserts.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAgentsRequest[k], "DescribeAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- * maxResults [Integer] <p>The total number of agents/Connectors to return in a single page of output. The maximum value is 100.</p>
-- * filters [Filters] <p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{"key": "collectionStatus", "value": "STARTED"}</code> </p>
-- * agentIds [AgentIds] <p>The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.</p>
-- @return DescribeAgentsRequest structure as a key-value pair table
function M.DescribeAgentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAgentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["filters"] = args["filters"],
		["agentIds"] = args["agentIds"],
	}
	asserts.AssertDescribeAgentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationsRequest = { ["orderBy"] = true, ["nextToken"] = true, ["maxResults"] = true, ["filters"] = true, ["configurationType"] = true, nil }

function asserts.AssertListConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsRequest to be of type 'table'")
	assert(struct["configurationType"], "Expected key configurationType to exist in table")
	if struct["orderBy"] then asserts.AssertOrderByList(struct["orderBy"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then asserts.AssertFilters(struct["filters"]) end
	if struct["configurationType"] then asserts.AssertConfigurationItemType(struct["configurationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationsRequest[k], "ListConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * orderBy [OrderByList] <p>Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a>.</p>
-- * nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- * maxResults [Integer] <p>The total number of items to return. The maximum value is 100.</p>
-- * filters [Filters] <p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p> <p>For a complete list of filter options and guidance about using them with this action, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations">Querying Discovered Configuration Items</a>. </p>
-- * configurationType [ConfigurationItemType] <p>A valid configuration identified by Application Discovery Service. </p>
-- Required key: configurationType
-- @return ListConfigurationsRequest structure as a key-value pair table
function M.ListConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["orderBy"] = args["orderBy"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["filters"] = args["filters"],
		["configurationType"] = args["configurationType"],
	}
	asserts.AssertListConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAgentsResponse = { ["agentsInfo"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentsResponse to be of type 'table'")
	if struct["agentsInfo"] then asserts.AssertAgentsInfo(struct["agentsInfo"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAgentsResponse[k], "DescribeAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentsInfo [AgentsInfo] <p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.</p>
-- * nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
-- @return DescribeAgentsResponse structure as a key-value pair table
function M.DescribeAgentsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAgentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentsInfo"] = args["agentsInfo"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeAgentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportFilter = { ["values"] = true, ["name"] = true, ["condition"] = true, nil }

function asserts.AssertExportFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportFilter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["values"], "Expected key values to exist in table")
	assert(struct["condition"], "Expected key condition to exist in table")
	if struct["values"] then asserts.AssertFilterValues(struct["values"]) end
	if struct["name"] then asserts.AssertFilterName(struct["name"]) end
	if struct["condition"] then asserts.AssertCondition(struct["condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportFilter[k], "ExportFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportFilter
-- <p>Used to select which agent's data is to be exported. A single agent ID may be selected for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * values [FilterValues] <p>A single <code>agentId</code> for a Discovery Agent. An <code>agentId</code> can be found using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html">DescribeAgents</a> action. Typically an ADS <code>agentId</code> is in the form <code>o-0123456789abcdef0</code>.</p>
-- * name [FilterName] <p>A single <code>ExportFilter</code> name. Supported filters: <code>agentId</code>.</p>
-- * condition [Condition] <p>Supported condition: <code>EQUALS</code> </p>
-- Required key: name
-- Required key: values
-- Required key: condition
-- @return ExportFilter structure as a key-value pair table
function M.ExportFilter(args)
	assert(args, "You must provide an argument table when creating ExportFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["values"] = args["values"],
		["name"] = args["name"],
		["condition"] = args["condition"],
	}
	asserts.AssertExportFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportConfigurationsResponse = { ["exportId"] = true, nil }

function asserts.AssertExportConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportConfigurationsResponse to be of type 'table'")
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportConfigurationsResponse[k], "ExportConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportId [ConfigurationsExportId] <p>A unique identifier that you can use to query the export status.</p>
-- @return ExportConfigurationsResponse structure as a key-value pair table
function M.ExportConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating ExportConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportId"] = args["exportId"],
	}
	asserts.AssertExportConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDataCollectionByAgentIdsRequest = { ["agentIds"] = true, nil }

function asserts.AssertStartDataCollectionByAgentIdsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDataCollectionByAgentIdsRequest to be of type 'table'")
	assert(struct["agentIds"], "Expected key agentIds to exist in table")
	if struct["agentIds"] then asserts.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDataCollectionByAgentIdsRequest[k], "StartDataCollectionByAgentIdsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDataCollectionByAgentIdsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentIds [AgentIds] <p>The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the <i>Description</i> field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows <code>Failed</code> in the <i>Description</i> field.</p>
-- Required key: agentIds
-- @return StartDataCollectionByAgentIdsRequest structure as a key-value pair table
function M.StartDataCollectionByAgentIdsRequest(args)
	assert(args, "You must provide an argument table when creating StartDataCollectionByAgentIdsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentIds"] = args["agentIds"],
	}
	asserts.AssertStartDataCollectionByAgentIdsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationsResponse = { nil }

function asserts.AssertDeleteApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationsResponse[k], "DeleteApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApplicationsResponse structure as a key-value pair table
function M.DeleteApplicationsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteApplicationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateConfigurationItemsToApplicationRequest = { ["applicationConfigurationId"] = true, ["configurationIds"] = true, nil }

function asserts.AssertAssociateConfigurationItemsToApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConfigurationItemsToApplicationRequest to be of type 'table'")
	assert(struct["applicationConfigurationId"], "Expected key applicationConfigurationId to exist in table")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["applicationConfigurationId"] then asserts.AssertApplicationId(struct["applicationConfigurationId"]) end
	if struct["configurationIds"] then asserts.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateConfigurationItemsToApplicationRequest[k], "AssociateConfigurationItemsToApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConfigurationItemsToApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationConfigurationId [ApplicationId] <p>The configuration ID of an application with which items are to be associated.</p>
-- * configurationIds [ConfigurationIdList] <p>The ID of each configuration item to be associated with an application.</p>
-- Required key: applicationConfigurationId
-- Required key: configurationIds
-- @return AssociateConfigurationItemsToApplicationRequest structure as a key-value pair table
function M.AssociateConfigurationItemsToApplicationRequest(args)
	assert(args, "You must provide an argument table when creating AssociateConfigurationItemsToApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationConfigurationId"] = args["applicationConfigurationId"],
		["configurationIds"] = args["configurationIds"],
	}
	asserts.AssertAssociateConfigurationItemsToApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServerNeighborsResponse = { ["neighbors"] = true, ["nextToken"] = true, ["knownDependencyCount"] = true, nil }

function asserts.AssertListServerNeighborsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerNeighborsResponse to be of type 'table'")
	assert(struct["neighbors"], "Expected key neighbors to exist in table")
	if struct["neighbors"] then asserts.AssertNeighborDetailsList(struct["neighbors"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["knownDependencyCount"] then asserts.AssertLong(struct["knownDependencyCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServerNeighborsResponse[k], "ListServerNeighborsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerNeighborsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * neighbors [NeighborDetailsList] <p>List of distinct servers that are one hop away from the given server.</p>
-- * nextToken [String] <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
-- * knownDependencyCount [Long] <p>Count of distinct servers that are one hop away from the given server.</p>
-- Required key: neighbors
-- @return ListServerNeighborsResponse structure as a key-value pair table
function M.ListServerNeighborsResponse(args)
	assert(args, "You must provide an argument table when creating ListServerNeighborsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["neighbors"] = args["neighbors"],
		["nextToken"] = args["nextToken"],
		["knownDependencyCount"] = args["knownDependencyCount"],
	}
	asserts.AssertListServerNeighborsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NeighborConnectionDetail = { ["connectionsCount"] = true, ["destinationServerId"] = true, ["sourceServerId"] = true, ["transportProtocol"] = true, ["destinationPort"] = true, nil }

function asserts.AssertNeighborConnectionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NeighborConnectionDetail to be of type 'table'")
	assert(struct["sourceServerId"], "Expected key sourceServerId to exist in table")
	assert(struct["destinationServerId"], "Expected key destinationServerId to exist in table")
	assert(struct["connectionsCount"], "Expected key connectionsCount to exist in table")
	if struct["connectionsCount"] then asserts.AssertLong(struct["connectionsCount"]) end
	if struct["destinationServerId"] then asserts.AssertConfigurationId(struct["destinationServerId"]) end
	if struct["sourceServerId"] then asserts.AssertConfigurationId(struct["sourceServerId"]) end
	if struct["transportProtocol"] then asserts.AssertString(struct["transportProtocol"]) end
	if struct["destinationPort"] then asserts.AssertBoxedInteger(struct["destinationPort"]) end
	for k,_ in pairs(struct) do
		assert(keys.NeighborConnectionDetail[k], "NeighborConnectionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NeighborConnectionDetail
-- <p>Details about neighboring servers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionsCount [Long] <p>The number of open network connections with the neighboring server.</p>
-- * destinationServerId [ConfigurationId] <p>The ID of the server that accepted the network connection.</p>
-- * sourceServerId [ConfigurationId] <p>The ID of the server that opened the network connection.</p>
-- * transportProtocol [String] <p>The network protocol used for the connection.</p>
-- * destinationPort [BoxedInteger] <p>The destination network port for the connection.</p>
-- Required key: sourceServerId
-- Required key: destinationServerId
-- Required key: connectionsCount
-- @return NeighborConnectionDetail structure as a key-value pair table
function M.NeighborConnectionDetail(args)
	assert(args, "You must provide an argument table when creating NeighborConnectionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionsCount"] = args["connectionsCount"],
		["destinationServerId"] = args["destinationServerId"],
		["sourceServerId"] = args["sourceServerId"],
		["transportProtocol"] = args["transportProtocol"],
		["destinationPort"] = args["destinationPort"],
	}
	asserts.AssertNeighborConnectionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDataCollectionByAgentIdsResponse = { ["agentsConfigurationStatus"] = true, nil }

function asserts.AssertStartDataCollectionByAgentIdsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDataCollectionByAgentIdsResponse to be of type 'table'")
	if struct["agentsConfigurationStatus"] then asserts.AssertAgentConfigurationStatusList(struct["agentsConfigurationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDataCollectionByAgentIdsResponse[k], "StartDataCollectionByAgentIdsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDataCollectionByAgentIdsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentsConfigurationStatus [AgentConfigurationStatusList] <p>Information about agents or the connector that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>
-- @return StartDataCollectionByAgentIdsResponse structure as a key-value pair table
function M.StartDataCollectionByAgentIdsResponse(args)
	assert(args, "You must provide an argument table when creating StartDataCollectionByAgentIdsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentsConfigurationStatus"] = args["agentsConfigurationStatus"],
	}
	asserts.AssertStartDataCollectionByAgentIdsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsResponse = { nil }

function asserts.AssertDeleteTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsResponse[k], "DeleteTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTagsResponse structure as a key-value pair table
function M.DeleteTagsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartExportTaskRequest = { ["endTime"] = true, ["startTime"] = true, ["filters"] = true, ["exportDataFormat"] = true, nil }

function asserts.AssertStartExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExportTaskRequest to be of type 'table'")
	if struct["endTime"] then asserts.AssertTimeStamp(struct["endTime"]) end
	if struct["startTime"] then asserts.AssertTimeStamp(struct["startTime"]) end
	if struct["filters"] then asserts.AssertExportFilters(struct["filters"]) end
	if struct["exportDataFormat"] then asserts.AssertExportDataFormats(struct["exportDataFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartExportTaskRequest[k], "StartExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExportTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endTime [TimeStamp] <p>The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.</p>
-- * startTime [TimeStamp] <p>The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.</p>
-- * filters [ExportFilters] <p>If a filter is present, it selects the single <code>agentId</code> of the Application Discovery Agent for which data is exported. The <code>agentId</code> can be found in the results of the <code>DescribeAgents</code> API or CLI. If no filter is present, <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents. </p>
-- * exportDataFormat [ExportDataFormats] <p>The file format for the returned export data. Default value is <code>CSV</code>. <b>Note:</b> <i>The</i> <code>GRAPHML</code> <i>option has been deprecated.</i> </p>
-- @return StartExportTaskRequest structure as a key-value pair table
function M.StartExportTaskRequest(args)
	assert(args, "You must provide an argument table when creating StartExportTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endTime"] = args["endTime"],
		["startTime"] = args["startTime"],
		["filters"] = args["filters"],
		["exportDataFormat"] = args["exportDataFormat"],
	}
	asserts.AssertStartExportTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportTasksResponse = { ["exportsInfo"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeExportTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksResponse to be of type 'table'")
	if struct["exportsInfo"] then asserts.AssertExportsInfo(struct["exportsInfo"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportTasksResponse[k], "DescribeExportTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportsInfo [ExportsInfo] <p>Contains one or more sets of export request details. When the status of a request is <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeExportTasks</code> request. When the results of a <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.</p>
-- @return DescribeExportTasksResponse structure as a key-value pair table
function M.DescribeExportTasksResponse(args)
	assert(args, "You must provide an argument table when creating DescribeExportTasksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportsInfo"] = args["exportsInfo"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeExportTasksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsRequest = { ["configurationIds"] = true, ["tags"] = true, nil }

function asserts.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then asserts.AssertConfigurationIdList(struct["configurationIds"]) end
	if struct["tags"] then asserts.AssertTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsRequest[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationIds [ConfigurationIdList] <p>A list of configuration items with tags that you want to delete.</p>
-- * tags [TagSet] <p>Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p>
-- Required key: configurationIds
-- @return DeleteTagsRequest structure as a key-value pair table
function M.DeleteTagsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationIds"] = args["configurationIds"],
		["tags"] = args["tags"],
	}
	asserts.AssertDeleteTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AgentConfigurationStatus = { ["operationSucceeded"] = true, ["agentId"] = true, ["description"] = true, nil }

function asserts.AssertAgentConfigurationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentConfigurationStatus to be of type 'table'")
	if struct["operationSucceeded"] then asserts.AssertBoolean(struct["operationSucceeded"]) end
	if struct["agentId"] then asserts.AssertString(struct["agentId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentConfigurationStatus[k], "AgentConfigurationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentConfigurationStatus
-- <p>Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operationSucceeded [Boolean] <p>Information about the status of the <code>StartDataCollection</code> and <code>StopDataCollection</code> operations. The system has recorded the data collection operation. The agent/connector receives this command the next time it polls for a new command. </p>
-- * agentId [String] <p>The agent/connector ID.</p>
-- * description [String] <p>A description of the operation performed.</p>
-- @return AgentConfigurationStatus structure as a key-value pair table
function M.AgentConfigurationStatus(args)
	assert(args, "You must provide an argument table when creating AgentConfigurationStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operationSucceeded"] = args["operationSucceeded"],
		["agentId"] = args["agentId"],
		["description"] = args["description"],
	}
	asserts.AssertAgentConfigurationStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationResponse = { nil }

function asserts.AssertUpdateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationResponse[k], "UpdateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateApplicationResponse structure as a key-value pair table
function M.UpdateApplicationResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContinuousExportDescription = { ["status"] = true, ["schemaStorageConfig"] = true, ["statusDetail"] = true, ["s3Bucket"] = true, ["exportId"] = true, ["stopTime"] = true, ["dataSource"] = true, ["startTime"] = true, nil }

function asserts.AssertContinuousExportDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinuousExportDescription to be of type 'table'")
	if struct["status"] then asserts.AssertContinuousExportStatus(struct["status"]) end
	if struct["schemaStorageConfig"] then asserts.AssertSchemaStorageConfig(struct["schemaStorageConfig"]) end
	if struct["statusDetail"] then asserts.AssertStringMax255(struct["statusDetail"]) end
	if struct["s3Bucket"] then asserts.AssertS3Bucket(struct["s3Bucket"]) end
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	if struct["stopTime"] then asserts.AssertTimeStamp(struct["stopTime"]) end
	if struct["dataSource"] then asserts.AssertDataSource(struct["dataSource"]) end
	if struct["startTime"] then asserts.AssertTimeStamp(struct["startTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinuousExportDescription[k], "ContinuousExportDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinuousExportDescription
-- <p>A list of continuous export descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ContinuousExportStatus] <p>Describes the status of the export. Can be one of the following values:</p> <ul> <li> <p>START_IN_PROGRESS - setting up resources to start continuous export.</p> </li> <li> <p>START_FAILED - an error occurred setting up continuous export. To recover, call start-continuous-export again.</p> </li> <li> <p>ACTIVE - data is being exported to the customer bucket.</p> </li> <li> <p>ERROR - an error occurred during export. To fix the issue, call stop-continuous-export and start-continuous-export.</p> </li> <li> <p>STOP_IN_PROGRESS - stopping the export.</p> </li> <li> <p>STOP_FAILED - an error occurred stopping the export. To recover, call stop-continuous-export again.</p> </li> <li> <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported to the customer bucket.</p> </li> </ul>
-- * schemaStorageConfig [SchemaStorageConfig] <p>An object which describes how the data is stored.</p> <ul> <li> <p> <code>databaseName</code> - the name of the Glue database used to store the schema.</p> </li> </ul>
-- * statusDetail [StringMax255] <p>Contains information about any errors that may have occurred.</p>
-- * s3Bucket [S3Bucket] <p>The name of the s3 bucket where the export data parquet files are stored.</p>
-- * exportId [ConfigurationsExportId] <p>The unique ID assigned to this export.</p>
-- * stopTime [TimeStamp] <p>The timestamp that represents when this continuous export was stopped.</p>
-- * dataSource [DataSource] <p>The type of data collector used to gather this data (currently only offered for AGENT).</p>
-- * startTime [TimeStamp] <p>The timestamp representing when the continuous export was started.</p>
-- @return ContinuousExportDescription structure as a key-value pair table
function M.ContinuousExportDescription(args)
	assert(args, "You must provide an argument table when creating ContinuousExportDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["schemaStorageConfig"] = args["schemaStorageConfig"],
		["statusDetail"] = args["statusDetail"],
		["s3Bucket"] = args["s3Bucket"],
		["exportId"] = args["exportId"],
		["stopTime"] = args["stopTime"],
		["dataSource"] = args["dataSource"],
		["startTime"] = args["startTime"],
	}
	asserts.AssertContinuousExportDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartContinuousExportResponse = { ["s3Bucket"] = true, ["exportId"] = true, ["dataSource"] = true, ["startTime"] = true, ["schemaStorageConfig"] = true, nil }

function asserts.AssertStartContinuousExportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartContinuousExportResponse to be of type 'table'")
	if struct["s3Bucket"] then asserts.AssertS3Bucket(struct["s3Bucket"]) end
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	if struct["dataSource"] then asserts.AssertDataSource(struct["dataSource"]) end
	if struct["startTime"] then asserts.AssertTimeStamp(struct["startTime"]) end
	if struct["schemaStorageConfig"] then asserts.AssertSchemaStorageConfig(struct["schemaStorageConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartContinuousExportResponse[k], "StartContinuousExportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartContinuousExportResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3Bucket [S3Bucket] <p>The name of the s3 bucket where the export data parquet files are stored.</p>
-- * exportId [ConfigurationsExportId] <p>The unique ID assigned to this export.</p>
-- * dataSource [DataSource] <p>The type of data collector used to gather this data (currently only offered for AGENT).</p>
-- * startTime [TimeStamp] <p>The timestamp representing when the continuous export was started.</p>
-- * schemaStorageConfig [SchemaStorageConfig] <p>A dictionary which describes how the data is stored.</p> <ul> <li> <p> <code>databaseName</code> - the name of the Glue database used to store the schema.</p> </li> </ul>
-- @return StartContinuousExportResponse structure as a key-value pair table
function M.StartContinuousExportResponse(args)
	assert(args, "You must provide an argument table when creating StartContinuousExportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3Bucket"] = args["s3Bucket"],
		["exportId"] = args["exportId"],
		["dataSource"] = args["dataSource"],
		["startTime"] = args["startTime"],
		["schemaStorageConfig"] = args["schemaStorageConfig"],
	}
	asserts.AssertStartContinuousExportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopContinuousExportResponse = { ["stopTime"] = true, ["startTime"] = true, nil }

function asserts.AssertStopContinuousExportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopContinuousExportResponse to be of type 'table'")
	if struct["stopTime"] then asserts.AssertTimeStamp(struct["stopTime"]) end
	if struct["startTime"] then asserts.AssertTimeStamp(struct["startTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopContinuousExportResponse[k], "StopContinuousExportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopContinuousExportResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stopTime [TimeStamp] <p>Timestamp that represents when this continuous export was stopped.</p>
-- * startTime [TimeStamp] <p>Timestamp that represents when this continuous export started collecting data.</p>
-- @return StopContinuousExportResponse structure as a key-value pair table
function M.StopContinuousExportResponse(args)
	assert(args, "You must provide an argument table when creating StopContinuousExportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stopTime"] = args["stopTime"],
		["startTime"] = args["startTime"],
	}
	asserts.AssertStopContinuousExportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrderByElement = { ["fieldName"] = true, ["sortOrder"] = true, nil }

function asserts.AssertOrderByElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderByElement to be of type 'table'")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	if struct["fieldName"] then asserts.AssertString(struct["fieldName"]) end
	if struct["sortOrder"] then asserts.AssertorderString(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderByElement[k], "OrderByElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderByElement
-- <p>A field and direction for ordered output.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fieldName [String] <p>The field on which to order.</p>
-- * sortOrder [orderString] <p>Ordering direction.</p>
-- Required key: fieldName
-- @return OrderByElement structure as a key-value pair table
function M.OrderByElement(args)
	assert(args, "You must provide an argument table when creating OrderByElement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fieldName"] = args["fieldName"],
		["sortOrder"] = args["sortOrder"],
	}
	asserts.AssertOrderByElement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServerNeighborsRequest = { ["nextToken"] = true, ["configurationId"] = true, ["portInformationNeeded"] = true, ["maxResults"] = true, ["neighborConfigurationIds"] = true, nil }

function asserts.AssertListServerNeighborsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerNeighborsRequest to be of type 'table'")
	assert(struct["configurationId"], "Expected key configurationId to exist in table")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["configurationId"] then asserts.AssertConfigurationId(struct["configurationId"]) end
	if struct["portInformationNeeded"] then asserts.AssertBoolean(struct["portInformationNeeded"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["neighborConfigurationIds"] then asserts.AssertConfigurationIdList(struct["neighborConfigurationIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServerNeighborsRequest[k], "ListServerNeighborsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerNeighborsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- * configurationId [ConfigurationId] <p>Configuration ID of the server for which neighbors are being listed.</p>
-- * portInformationNeeded [Boolean] <p>Flag to indicate if port and protocol information is needed as part of the response.</p>
-- * maxResults [Integer] <p>Maximum number of results to return in a single page of output.</p>
-- * neighborConfigurationIds [ConfigurationIdList] <p>List of configuration IDs to test for one-hop-away.</p>
-- Required key: configurationId
-- @return ListServerNeighborsRequest structure as a key-value pair table
function M.ListServerNeighborsRequest(args)
	assert(args, "You must provide an argument table when creating ListServerNeighborsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["configurationId"] = args["configurationId"],
		["portInformationNeeded"] = args["portInformationNeeded"],
		["maxResults"] = args["maxResults"],
		["neighborConfigurationIds"] = args["neighborConfigurationIds"],
	}
	asserts.AssertListServerNeighborsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDataCollectionByAgentIdsRequest = { ["agentIds"] = true, nil }

function asserts.AssertStopDataCollectionByAgentIdsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDataCollectionByAgentIdsRequest to be of type 'table'")
	assert(struct["agentIds"], "Expected key agentIds to exist in table")
	if struct["agentIds"] then asserts.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDataCollectionByAgentIdsRequest[k], "StopDataCollectionByAgentIdsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDataCollectionByAgentIdsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentIds [AgentIds] <p>The IDs of the agents or connectors from which to stop collecting data.</p>
-- Required key: agentIds
-- @return StopDataCollectionByAgentIdsRequest structure as a key-value pair table
function M.StopDataCollectionByAgentIdsRequest(args)
	assert(args, "You must provide an argument table when creating StopDataCollectionByAgentIdsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentIds"] = args["agentIds"],
	}
	asserts.AssertStopDataCollectionByAgentIdsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["values"] = true, ["name"] = true, ["condition"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["values"], "Expected key values to exist in table")
	assert(struct["condition"], "Expected key condition to exist in table")
	if struct["values"] then asserts.AssertFilterValues(struct["values"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["condition"] then asserts.AssertCondition(struct["condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>A filter that can use conditional operators.</p> <p>For more information about filters, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html">Querying Discovered Configuration Items</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * values [FilterValues] <p>A string value on which to filter. For example, if you choose the <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code> for the value.</p>
-- * name [String] <p>The name of the filter.</p>
-- * condition [Condition] <p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as though concatenated by <i>AND</i>. If you specify multiple values for a particular filter, the system differentiates the values using <i>OR</i>. Calling either <i>DescribeConfigurations</i> or <i>ListConfigurations</i> returns attributes of matching configuration items.</p>
-- Required key: name
-- Required key: values
-- Required key: condition
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["values"] = args["values"],
		["name"] = args["name"],
		["condition"] = args["condition"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportInfo = { ["requestedStartTime"] = true, ["exportId"] = true, ["exportStatus"] = true, ["exportRequestTime"] = true, ["configurationsDownloadUrl"] = true, ["isTruncated"] = true, ["statusMessage"] = true, ["requestedEndTime"] = true, nil }

function asserts.AssertExportInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportInfo to be of type 'table'")
	assert(struct["exportId"], "Expected key exportId to exist in table")
	assert(struct["exportStatus"], "Expected key exportStatus to exist in table")
	assert(struct["statusMessage"], "Expected key statusMessage to exist in table")
	assert(struct["exportRequestTime"], "Expected key exportRequestTime to exist in table")
	if struct["requestedStartTime"] then asserts.AssertTimeStamp(struct["requestedStartTime"]) end
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	if struct["exportStatus"] then asserts.AssertExportStatus(struct["exportStatus"]) end
	if struct["exportRequestTime"] then asserts.AssertExportRequestTime(struct["exportRequestTime"]) end
	if struct["configurationsDownloadUrl"] then asserts.AssertConfigurationsDownloadUrl(struct["configurationsDownloadUrl"]) end
	if struct["isTruncated"] then asserts.AssertBoolean(struct["isTruncated"]) end
	if struct["statusMessage"] then asserts.AssertExportStatusMessage(struct["statusMessage"]) end
	if struct["requestedEndTime"] then asserts.AssertTimeStamp(struct["requestedEndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportInfo[k], "ExportInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportInfo
-- <p>Information regarding the export status of discovered data. The value is an array of objects.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * requestedStartTime [TimeStamp] <p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code> request. If no <code>startTime</code> was requested, this result does not appear in <code>ExportInfo</code>.</p>
-- * exportId [ConfigurationsExportId] <p>A unique identifier used to query an export.</p>
-- * exportStatus [ExportStatus] <p>The status of the data export job.</p>
-- * exportRequestTime [ExportRequestTime] <p>The time that the data export was initiated.</p>
-- * configurationsDownloadUrl [ConfigurationsDownloadUrl] <p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is displayed only if the export succeeded.</p>
-- * isTruncated [Boolean] <p>If true, the export of agent information exceeded the size limit for a single export and the exported data is incomplete for the requested time range. To address this, select a smaller time range for the export by using <code>startDate</code> and <code>endDate</code>.</p>
-- * statusMessage [ExportStatusMessage] <p>A status message provided for API callers.</p>
-- * requestedEndTime [TimeStamp] <p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no <code>endTime</code> was requested, this result does not appear in <code>ExportInfo</code>.</p>
-- Required key: exportId
-- Required key: exportStatus
-- Required key: statusMessage
-- Required key: exportRequestTime
-- @return ExportInfo structure as a key-value pair table
function M.ExportInfo(args)
	assert(args, "You must provide an argument table when creating ExportInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["requestedStartTime"] = args["requestedStartTime"],
		["exportId"] = args["exportId"],
		["exportStatus"] = args["exportStatus"],
		["exportRequestTime"] = args["exportRequestTime"],
		["configurationsDownloadUrl"] = args["configurationsDownloadUrl"],
		["isTruncated"] = args["isTruncated"],
		["statusMessage"] = args["statusMessage"],
		["requestedEndTime"] = args["requestedEndTime"],
	}
	asserts.AssertExportInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartExportTaskResponse = { ["exportId"] = true, nil }

function asserts.AssertStartExportTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExportTaskResponse to be of type 'table'")
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartExportTaskResponse[k], "StartExportTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExportTaskResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportId [ConfigurationsExportId] <p>A unique identifier used to query the status of an export request.</p>
-- @return StartExportTaskResponse structure as a key-value pair table
function M.StartExportTaskResponse(args)
	assert(args, "You must provide an argument table when creating StartExportTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportId"] = args["exportId"],
	}
	asserts.AssertStartExportTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateConfigurationItemsToApplicationResponse = { nil }

function asserts.AssertAssociateConfigurationItemsToApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConfigurationItemsToApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateConfigurationItemsToApplicationResponse[k], "AssociateConfigurationItemsToApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConfigurationItemsToApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateConfigurationItemsToApplicationResponse structure as a key-value pair table
function M.AssociateConfigurationItemsToApplicationResponse(args)
	assert(args, "You must provide an argument table when creating AssociateConfigurationItemsToApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateConfigurationItemsToApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagsResponse = { nil }

function asserts.AssertCreateTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsResponse[k], "CreateTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateTagsResponse structure as a key-value pair table
function M.CreateTagsResponse(args)
	assert(args, "You must provide an argument table when creating CreateTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContinuousExportsRequest = { ["exportIds"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeContinuousExportsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContinuousExportsRequest to be of type 'table'")
	if struct["exportIds"] then asserts.AssertContinuousExportIds(struct["exportIds"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertDescribeContinuousExportsMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContinuousExportsRequest[k], "DescribeContinuousExportsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContinuousExportsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportIds [ContinuousExportIds] <p>The unique IDs assigned to the exports.</p>
-- * nextToken [NextToken] <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
-- * maxResults [DescribeContinuousExportsMaxResults] <p>A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.</p>
-- @return DescribeContinuousExportsRequest structure as a key-value pair table
function M.DescribeContinuousExportsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeContinuousExportsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportIds"] = args["exportIds"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeContinuousExportsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiscoverySummaryResponse = { ["serversMappedtoTags"] = true, ["agentSummary"] = true, ["servers"] = true, ["applications"] = true, ["serversMappedToApplications"] = true, ["connectorSummary"] = true, nil }

function asserts.AssertGetDiscoverySummaryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoverySummaryResponse to be of type 'table'")
	if struct["serversMappedtoTags"] then asserts.AssertLong(struct["serversMappedtoTags"]) end
	if struct["agentSummary"] then asserts.AssertCustomerAgentInfo(struct["agentSummary"]) end
	if struct["servers"] then asserts.AssertLong(struct["servers"]) end
	if struct["applications"] then asserts.AssertLong(struct["applications"]) end
	if struct["serversMappedToApplications"] then asserts.AssertLong(struct["serversMappedToApplications"]) end
	if struct["connectorSummary"] then asserts.AssertCustomerConnectorInfo(struct["connectorSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDiscoverySummaryResponse[k], "GetDiscoverySummaryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoverySummaryResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * serversMappedtoTags [Long] <p>The number of servers mapped to tags.</p>
-- * agentSummary [CustomerAgentInfo] <p>Details about discovered agents, including agent status and health.</p>
-- * servers [Long] <p>The number of servers discovered.</p>
-- * applications [Long] <p>The number of applications discovered.</p>
-- * serversMappedToApplications [Long] <p>The number of servers mapped to applications.</p>
-- * connectorSummary [CustomerConnectorInfo] <p>Details about discovered connectors, including connector status and health.</p>
-- @return GetDiscoverySummaryResponse structure as a key-value pair table
function M.GetDiscoverySummaryResponse(args)
	assert(args, "You must provide an argument table when creating GetDiscoverySummaryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["serversMappedtoTags"] = args["serversMappedtoTags"],
		["agentSummary"] = args["agentSummary"],
		["servers"] = args["servers"],
		["applications"] = args["applications"],
		["serversMappedToApplications"] = args["serversMappedToApplications"],
		["connectorSummary"] = args["connectorSummary"],
	}
	asserts.AssertGetDiscoverySummaryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportConfigurationsResponse = { ["exportsInfo"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeExportConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportConfigurationsResponse to be of type 'table'")
	if struct["exportsInfo"] then asserts.AssertExportsInfo(struct["exportsInfo"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportConfigurationsResponse[k], "DescribeExportConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportsInfo [ExportsInfo] <p/>
-- * nextToken [NextToken] <p>The token from the previous call to describe-export-tasks.</p>
-- @return DescribeExportConfigurationsResponse structure as a key-value pair table
function M.DescribeExportConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeExportConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportsInfo"] = args["exportsInfo"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeExportConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsResponse = { ["nextToken"] = true, ["tags"] = true, nil }

function asserts.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["tags"] then asserts.AssertConfigurationTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsResponse[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The call returns a token. Use this token to get the next set of results.</p>
-- * tags [ConfigurationTagSet] <p>Depending on the input, this is a list of configuration items tagged with a specific tag, or a list of tags for a specific configuration item.</p>
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
		["nextToken"] = args["nextToken"],
		["tags"] = args["tags"],
	}
	asserts.AssertDescribeTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationsRequest = { ["configurationIds"] = true, nil }

function asserts.AssertDescribeConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then asserts.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationsRequest[k], "DescribeConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationIds [ConfigurationIdList] <p>One or more configuration IDs.</p>
-- Required key: configurationIds
-- @return DescribeConfigurationsRequest structure as a key-value pair table
function M.DescribeConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationIds"] = args["configurationIds"],
	}
	asserts.AssertDescribeConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContinuousExportsResponse = { ["nextToken"] = true, ["descriptions"] = true, nil }

function asserts.AssertDescribeContinuousExportsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContinuousExportsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["descriptions"] then asserts.AssertContinuousExportDescriptions(struct["descriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContinuousExportsResponse[k], "DescribeContinuousExportsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContinuousExportsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
-- * descriptions [ContinuousExportDescriptions] <p>A list of continuous export descriptions.</p>
-- @return DescribeContinuousExportsResponse structure as a key-value pair table
function M.DescribeContinuousExportsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeContinuousExportsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["descriptions"] = args["descriptions"],
	}
	asserts.AssertDescribeContinuousExportsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDiscoverySummaryRequest = { nil }

function asserts.AssertGetDiscoverySummaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoverySummaryRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetDiscoverySummaryRequest[k], "GetDiscoverySummaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoverySummaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetDiscoverySummaryRequest structure as a key-value pair table
function M.GetDiscoverySummaryRequest(args)
	assert(args, "You must provide an argument table when creating GetDiscoverySummaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetDiscoverySummaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomerConnectorInfo = { ["shutdownConnectors"] = true, ["activeConnectors"] = true, ["unhealthyConnectors"] = true, ["blackListedConnectors"] = true, ["unknownConnectors"] = true, ["totalConnectors"] = true, ["healthyConnectors"] = true, nil }

function asserts.AssertCustomerConnectorInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomerConnectorInfo to be of type 'table'")
	assert(struct["activeConnectors"], "Expected key activeConnectors to exist in table")
	assert(struct["healthyConnectors"], "Expected key healthyConnectors to exist in table")
	assert(struct["blackListedConnectors"], "Expected key blackListedConnectors to exist in table")
	assert(struct["shutdownConnectors"], "Expected key shutdownConnectors to exist in table")
	assert(struct["unhealthyConnectors"], "Expected key unhealthyConnectors to exist in table")
	assert(struct["totalConnectors"], "Expected key totalConnectors to exist in table")
	assert(struct["unknownConnectors"], "Expected key unknownConnectors to exist in table")
	if struct["shutdownConnectors"] then asserts.AssertInteger(struct["shutdownConnectors"]) end
	if struct["activeConnectors"] then asserts.AssertInteger(struct["activeConnectors"]) end
	if struct["unhealthyConnectors"] then asserts.AssertInteger(struct["unhealthyConnectors"]) end
	if struct["blackListedConnectors"] then asserts.AssertInteger(struct["blackListedConnectors"]) end
	if struct["unknownConnectors"] then asserts.AssertInteger(struct["unknownConnectors"]) end
	if struct["totalConnectors"] then asserts.AssertInteger(struct["totalConnectors"]) end
	if struct["healthyConnectors"] then asserts.AssertInteger(struct["healthyConnectors"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomerConnectorInfo[k], "CustomerConnectorInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomerConnectorInfo
-- <p>Inventory data for installed discovery connectors.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * shutdownConnectors [Integer] <p>Number of discovery connectors with status SHUTDOWN,</p>
-- * activeConnectors [Integer] <p>Number of active discovery connectors.</p>
-- * unhealthyConnectors [Integer] <p>Number of unhealthy discovery connectors.</p>
-- * blackListedConnectors [Integer] <p>Number of blacklisted discovery connectors.</p>
-- * unknownConnectors [Integer] <p>Number of unknown discovery connectors.</p>
-- * totalConnectors [Integer] <p>Total number of discovery connectors.</p>
-- * healthyConnectors [Integer] <p>Number of healthy discovery connectors.</p>
-- Required key: activeConnectors
-- Required key: healthyConnectors
-- Required key: blackListedConnectors
-- Required key: shutdownConnectors
-- Required key: unhealthyConnectors
-- Required key: totalConnectors
-- Required key: unknownConnectors
-- @return CustomerConnectorInfo structure as a key-value pair table
function M.CustomerConnectorInfo(args)
	assert(args, "You must provide an argument table when creating CustomerConnectorInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["shutdownConnectors"] = args["shutdownConnectors"],
		["activeConnectors"] = args["activeConnectors"],
		["unhealthyConnectors"] = args["unhealthyConnectors"],
		["blackListedConnectors"] = args["blackListedConnectors"],
		["unknownConnectors"] = args["unknownConnectors"],
		["totalConnectors"] = args["totalConnectors"],
		["healthyConnectors"] = args["healthyConnectors"],
	}
	asserts.AssertCustomerConnectorInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportTasksRequest = { ["exportIds"] = true, ["nextToken"] = true, ["maxResults"] = true, ["filters"] = true, nil }

function asserts.AssertDescribeExportTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksRequest to be of type 'table'")
	if struct["exportIds"] then asserts.AssertExportIds(struct["exportIds"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then asserts.AssertExportFilters(struct["filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportTasksRequest[k], "DescribeExportTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportIds [ExportIds] <p>One or more unique identifiers used to query the status of an export request.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
-- * maxResults [Integer] <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element.</p>
-- * filters [ExportFilters] <p>One or more filters.</p> <ul> <li> <p> <code>AgentId</code> - ID of the agent whose collected data will be exported</p> </li> </ul>
-- @return DescribeExportTasksRequest structure as a key-value pair table
function M.DescribeExportTasksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeExportTasksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportIds"] = args["exportIds"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["filters"] = args["filters"],
	}
	asserts.AssertDescribeExportTasksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationRequest = { ["name"] = true, ["description"] = true, nil }

function asserts.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationRequest[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>Name of the application to be created.</p>
-- * description [String] <p>Description of the application to be created.</p>
-- Required key: name
-- @return CreateApplicationRequest structure as a key-value pair table
function M.CreateApplicationRequest(args)
	assert(args, "You must provide an argument table when creating CreateApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopContinuousExportRequest = { ["exportId"] = true, nil }

function asserts.AssertStopContinuousExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopContinuousExportRequest to be of type 'table'")
	assert(struct["exportId"], "Expected key exportId to exist in table")
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopContinuousExportRequest[k], "StopContinuousExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopContinuousExportRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportId [ConfigurationsExportId] <p>The unique ID assigned to this export.</p>
-- Required key: exportId
-- @return StopContinuousExportRequest structure as a key-value pair table
function M.StopContinuousExportRequest(args)
	assert(args, "You must provide an argument table when creating StopContinuousExportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportId"] = args["exportId"],
	}
	asserts.AssertStopContinuousExportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationTag = { ["timeOfCreation"] = true, ["configurationId"] = true, ["value"] = true, ["key"] = true, ["configurationType"] = true, nil }

function asserts.AssertConfigurationTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationTag to be of type 'table'")
	if struct["timeOfCreation"] then asserts.AssertTimeStamp(struct["timeOfCreation"]) end
	if struct["configurationId"] then asserts.AssertConfigurationId(struct["configurationId"]) end
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	if struct["configurationType"] then asserts.AssertConfigurationItemType(struct["configurationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationTag[k], "ConfigurationTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationTag
-- <p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timeOfCreation [TimeStamp] <p>The time the configuration tag was created in Coordinated Universal Time (UTC).</p>
-- * configurationId [ConfigurationId] <p>The configuration ID for the item to tag. You can specify a list of keys and values.</p>
-- * value [TagValue] <p>A value on which to filter. For example <i>key = serverType</i> and <i>value = web server</i>.</p>
-- * key [TagKey] <p>A type of tag on which to filter. For example, <i>serverType</i>.</p>
-- * configurationType [ConfigurationItemType] <p>A type of IT asset to tag.</p>
-- @return ConfigurationTag structure as a key-value pair table
function M.ConfigurationTag(args)
	assert(args, "You must provide an argument table when creating ConfigurationTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timeOfCreation"] = args["timeOfCreation"],
		["configurationId"] = args["configurationId"],
		["value"] = args["value"],
		["key"] = args["key"],
		["configurationType"] = args["configurationType"],
	}
	asserts.AssertConfigurationTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDataCollectionByAgentIdsResponse = { ["agentsConfigurationStatus"] = true, nil }

function asserts.AssertStopDataCollectionByAgentIdsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDataCollectionByAgentIdsResponse to be of type 'table'")
	if struct["agentsConfigurationStatus"] then asserts.AssertAgentConfigurationStatusList(struct["agentsConfigurationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDataCollectionByAgentIdsResponse[k], "StopDataCollectionByAgentIdsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDataCollectionByAgentIdsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentsConfigurationStatus [AgentConfigurationStatusList] <p>Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>
-- @return StopDataCollectionByAgentIdsResponse structure as a key-value pair table
function M.StopDataCollectionByAgentIdsResponse(args)
	assert(args, "You must provide an argument table when creating StopDataCollectionByAgentIdsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentsConfigurationStatus"] = args["agentsConfigurationStatus"],
	}
	asserts.AssertStopDataCollectionByAgentIdsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartContinuousExportRequest = { nil }

function asserts.AssertStartContinuousExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartContinuousExportRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartContinuousExportRequest[k], "StartContinuousExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartContinuousExportRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartContinuousExportRequest structure as a key-value pair table
function M.StartContinuousExportRequest(args)
	assert(args, "You must provide an argument table when creating StartContinuousExportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartContinuousExportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagFilter = { ["values"] = true, ["name"] = true, nil }

function asserts.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["values"], "Expected key values to exist in table")
	if struct["values"] then asserts.AssertFilterValues(struct["values"]) end
	if struct["name"] then asserts.AssertFilterName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagFilter[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- <p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * values [FilterValues] <p>Values for the tag filter.</p>
-- * name [FilterName] <p>A name of the tag filter.</p>
-- Required key: name
-- Required key: values
-- @return TagFilter structure as a key-value pair table
function M.TagFilter(args)
	assert(args, "You must provide an argument table when creating TagFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["values"] = args["values"],
		["name"] = args["name"],
	}
	asserts.AssertTagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationResponse = { ["configurationId"] = true, nil }

function asserts.AssertCreateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationResponse to be of type 'table'")
	if struct["configurationId"] then asserts.AssertString(struct["configurationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationResponse[k], "CreateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationId [String] <p>Configuration ID of an application to be created.</p>
-- @return CreateApplicationResponse structure as a key-value pair table
function M.CreateApplicationResponse(args)
	assert(args, "You must provide an argument table when creating CreateApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationId"] = args["configurationId"],
	}
	asserts.AssertCreateApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomerAgentInfo = { ["healthyAgents"] = true, ["unhealthyAgents"] = true, ["unknownAgents"] = true, ["activeAgents"] = true, ["shutdownAgents"] = true, ["totalAgents"] = true, ["blackListedAgents"] = true, nil }

function asserts.AssertCustomerAgentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomerAgentInfo to be of type 'table'")
	assert(struct["activeAgents"], "Expected key activeAgents to exist in table")
	assert(struct["healthyAgents"], "Expected key healthyAgents to exist in table")
	assert(struct["blackListedAgents"], "Expected key blackListedAgents to exist in table")
	assert(struct["shutdownAgents"], "Expected key shutdownAgents to exist in table")
	assert(struct["unhealthyAgents"], "Expected key unhealthyAgents to exist in table")
	assert(struct["totalAgents"], "Expected key totalAgents to exist in table")
	assert(struct["unknownAgents"], "Expected key unknownAgents to exist in table")
	if struct["healthyAgents"] then asserts.AssertInteger(struct["healthyAgents"]) end
	if struct["unhealthyAgents"] then asserts.AssertInteger(struct["unhealthyAgents"]) end
	if struct["unknownAgents"] then asserts.AssertInteger(struct["unknownAgents"]) end
	if struct["activeAgents"] then asserts.AssertInteger(struct["activeAgents"]) end
	if struct["shutdownAgents"] then asserts.AssertInteger(struct["shutdownAgents"]) end
	if struct["totalAgents"] then asserts.AssertInteger(struct["totalAgents"]) end
	if struct["blackListedAgents"] then asserts.AssertInteger(struct["blackListedAgents"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomerAgentInfo[k], "CustomerAgentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomerAgentInfo
-- <p>Inventory data for installed discovery agents.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * healthyAgents [Integer] <p>Number of healthy discovery agents</p>
-- * unhealthyAgents [Integer] <p>Number of unhealthy discovery agents.</p>
-- * unknownAgents [Integer] <p>Number of unknown discovery agents.</p>
-- * activeAgents [Integer] <p>Number of active discovery agents.</p>
-- * shutdownAgents [Integer] <p>Number of discovery agents with status SHUTDOWN.</p>
-- * totalAgents [Integer] <p>Total number of discovery agents.</p>
-- * blackListedAgents [Integer] <p>Number of blacklisted discovery agents.</p>
-- Required key: activeAgents
-- Required key: healthyAgents
-- Required key: blackListedAgents
-- Required key: shutdownAgents
-- Required key: unhealthyAgents
-- Required key: totalAgents
-- Required key: unknownAgents
-- @return CustomerAgentInfo structure as a key-value pair table
function M.CustomerAgentInfo(args)
	assert(args, "You must provide an argument table when creating CustomerAgentInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["healthyAgents"] = args["healthyAgents"],
		["unhealthyAgents"] = args["unhealthyAgents"],
		["unknownAgents"] = args["unknownAgents"],
		["activeAgents"] = args["activeAgents"],
		["shutdownAgents"] = args["shutdownAgents"],
		["totalAgents"] = args["totalAgents"],
		["blackListedAgents"] = args["blackListedAgents"],
	}
	asserts.AssertCustomerAgentInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportConfigurationsRequest = { ["exportIds"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeExportConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportConfigurationsRequest to be of type 'table'")
	if struct["exportIds"] then asserts.AssertExportIds(struct["exportIds"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportConfigurationsRequest[k], "DescribeExportConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportIds [ExportIds] <p>A list of continuous export ids to search for.</p>
-- * nextToken [NextToken] <p>The token from the previous call to describe-export-tasks.</p>
-- * maxResults [Integer] <p>A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.</p>
-- @return DescribeExportConfigurationsRequest structure as a key-value pair table
function M.DescribeExportConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeExportConfigurationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exportIds"] = args["exportIds"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeExportConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateConfigurationItemsFromApplicationRequest = { ["applicationConfigurationId"] = true, ["configurationIds"] = true, nil }

function asserts.AssertDisassociateConfigurationItemsFromApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConfigurationItemsFromApplicationRequest to be of type 'table'")
	assert(struct["applicationConfigurationId"], "Expected key applicationConfigurationId to exist in table")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["applicationConfigurationId"] then asserts.AssertApplicationId(struct["applicationConfigurationId"]) end
	if struct["configurationIds"] then asserts.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateConfigurationItemsFromApplicationRequest[k], "DisassociateConfigurationItemsFromApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConfigurationItemsFromApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationConfigurationId [ApplicationId] <p>Configuration ID of an application from which each item is disassociated.</p>
-- * configurationIds [ConfigurationIdList] <p>Configuration ID of each item to be disassociated from an application.</p>
-- Required key: applicationConfigurationId
-- Required key: configurationIds
-- @return DisassociateConfigurationItemsFromApplicationRequest structure as a key-value pair table
function M.DisassociateConfigurationItemsFromApplicationRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateConfigurationItemsFromApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationConfigurationId"] = args["applicationConfigurationId"],
		["configurationIds"] = args["configurationIds"],
	}
	asserts.AssertDisassociateConfigurationItemsFromApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertConfigurationsExportId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationsExportId to be of type 'string'")
end

--  
function M.ConfigurationsExportId(str)
	asserts.AssertConfigurationsExportId(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertAgentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentId to be of type 'string'")
end

--  
function M.AgentId(str)
	asserts.AssertAgentId(str)
	return str
end

function asserts.AssertorderString(str)
	assert(str)
	assert(type(str) == "string", "Expected orderString to be of type 'string'")
end

--  
function M.orderString(str)
	asserts.AssertorderString(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertConfigurationsDownloadUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationsDownloadUrl to be of type 'string'")
end

--  
function M.ConfigurationsDownloadUrl(str)
	asserts.AssertConfigurationsDownloadUrl(str)
	return str
end

function asserts.AssertConfigurationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationId to be of type 'string'")
end

--  
function M.ConfigurationId(str)
	asserts.AssertConfigurationId(str)
	return str
end

function asserts.AssertDataSource(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSource to be of type 'string'")
end

--  
function M.DataSource(str)
	asserts.AssertDataSource(str)
	return str
end

function asserts.AssertDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatabaseName to be of type 'string'")
	assert(#str <= 252, "Expected string to be max 252 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatabaseName(str)
	asserts.AssertDatabaseName(str)
	return str
end

function asserts.AssertContinuousExportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinuousExportStatus to be of type 'string'")
end

--  
function M.ContinuousExportStatus(str)
	asserts.AssertContinuousExportStatus(str)
	return str
end

function asserts.AssertExportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportStatus to be of type 'string'")
end

--  
function M.ExportStatus(str)
	asserts.AssertExportStatus(str)
	return str
end

function asserts.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
end

--  
function M.FilterValue(str)
	asserts.AssertFilterValue(str)
	return str
end

function asserts.AssertCondition(str)
	assert(str)
	assert(type(str) == "string", "Expected Condition to be of type 'string'")
end

--  
function M.Condition(str)
	asserts.AssertCondition(str)
	return str
end

function asserts.AssertAgentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentStatus to be of type 'string'")
end

--  
function M.AgentStatus(str)
	asserts.AssertAgentStatus(str)
	return str
end

function asserts.AssertConfigurationItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemType to be of type 'string'")
end

--  
function M.ConfigurationItemType(str)
	asserts.AssertConfigurationItemType(str)
	return str
end

function asserts.AssertExportStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportStatusMessage to be of type 'string'")
end

--  
function M.ExportStatusMessage(str)
	asserts.AssertExportStatusMessage(str)
	return str
end

function asserts.AssertExportDataFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDataFormat to be of type 'string'")
end

--  
function M.ExportDataFormat(str)
	asserts.AssertExportDataFormat(str)
	return str
end

function asserts.AssertFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterName to be of type 'string'")
end

--  
function M.FilterName(str)
	asserts.AssertFilterName(str)
	return str
end

function asserts.AssertStringMax255(str)
	assert(str)
	assert(type(str) == "string", "Expected StringMax255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringMax255(str)
	asserts.AssertStringMax255(str)
	return str
end

function asserts.AssertApplicationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationId to be of type 'string'")
end

--  
function M.ApplicationId(str)
	asserts.AssertApplicationId(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
end

--  
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertBoxedInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BoxedInteger(integer)
	asserts.AssertBoxedInteger(integer)
	return integer
end

function asserts.AssertDescribeContinuousExportsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeContinuousExportsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeContinuousExportsMaxResults(integer)
	asserts.AssertDescribeContinuousExportsMaxResults(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
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

function asserts.AssertSchemaStorageConfig(map)
	assert(map)
	assert(type(map) == "table", "Expected SchemaStorageConfig to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDatabaseName(k)
		asserts.AssertString(v)
	end
end

function M.SchemaStorageConfig(map)
	asserts.AssertSchemaStorageConfig(map)
	return map
end

function asserts.AssertConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected Configuration to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.Configuration(map)
	asserts.AssertConfiguration(map)
	return map
end

function asserts.AssertDescribeConfigurationsAttribute(map)
	assert(map)
	assert(type(map) == "table", "Expected DescribeConfigurationsAttribute to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.DescribeConfigurationsAttribute(map)
	asserts.AssertDescribeConfigurationsAttribute(map)
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

function asserts.AssertExportRequestTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExportRequestTime to be of type 'string'")
end

function M.ExportRequestTime(timestamp)
	asserts.AssertExportRequestTime(timestamp)
	return timestamp
end

function asserts.AssertApplicationIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationId(v)
	end
end

--  
-- List of ApplicationId objects
function M.ApplicationIdsList(list)
	asserts.AssertApplicationIdsList(list)
	return list
end

function asserts.AssertExportFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExportFilter(v)
	end
end

--  
-- List of ExportFilter objects
function M.ExportFilters(list)
	asserts.AssertExportFilters(list)
	return list
end

function asserts.AssertExportDataFormats(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportDataFormats to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExportDataFormat(v)
	end
end

--  
-- List of ExportDataFormat objects
function M.ExportDataFormats(list)
	asserts.AssertExportDataFormats(list)
	return list
end

function asserts.AssertTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected TagSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagSet(list)
	asserts.AssertTagSet(list)
	return list
end

function asserts.AssertAgentNetworkInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentNetworkInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAgentNetworkInfo(v)
	end
end

--  
-- List of AgentNetworkInfo objects
function M.AgentNetworkInfoList(list)
	asserts.AssertAgentNetworkInfoList(list)
	return list
end

function asserts.AssertTagFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilters(list)
	asserts.AssertTagFilters(list)
	return list
end

function asserts.AssertExportsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportsInfo to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExportInfo(v)
	end
end

--  
-- List of ExportInfo objects
function M.ExportsInfo(list)
	asserts.AssertExportsInfo(list)
	return list
end

function asserts.AssertContinuousExportDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected ContinuousExportDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContinuousExportDescription(v)
	end
end

--  
-- List of ContinuousExportDescription objects
function M.ContinuousExportDescriptions(list)
	asserts.AssertContinuousExportDescriptions(list)
	return list
end

function asserts.AssertDescribeConfigurationsAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeConfigurationsAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDescribeConfigurationsAttribute(v)
	end
end

--  
-- List of DescribeConfigurationsAttribute objects
function M.DescribeConfigurationsAttributes(list)
	asserts.AssertDescribeConfigurationsAttributes(list)
	return list
end

function asserts.AssertAgentIds(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAgentId(v)
	end
end

--  
-- List of AgentId objects
function M.AgentIds(list)
	asserts.AssertAgentIds(list)
	return list
end

function asserts.AssertConfigurationIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationId(v)
	end
end

--  
-- List of ConfigurationId objects
function M.ConfigurationIdList(list)
	asserts.AssertConfigurationIdList(list)
	return list
end

function asserts.AssertAgentConfigurationStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentConfigurationStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAgentConfigurationStatus(v)
	end
end

--  
-- List of AgentConfigurationStatus objects
function M.AgentConfigurationStatusList(list)
	asserts.AssertAgentConfigurationStatusList(list)
	return list
end

function asserts.AssertOrderByList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderByList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrderByElement(v)
	end
end

--  
-- List of OrderByElement objects
function M.OrderByList(list)
	asserts.AssertOrderByList(list)
	return list
end

function asserts.AssertNeighborDetailsList(list)
	assert(list)
	assert(type(list) == "table", "Expected NeighborDetailsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNeighborConnectionDetail(v)
	end
end

--  
-- List of NeighborConnectionDetail objects
function M.NeighborDetailsList(list)
	asserts.AssertNeighborDetailsList(list)
	return list
end

function asserts.AssertFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValues(list)
	asserts.AssertFilterValues(list)
	return list
end

function asserts.AssertContinuousExportIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ContinuousExportIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationsExportId(v)
	end
end

--  
-- List of ConfigurationsExportId objects
function M.ContinuousExportIds(list)
	asserts.AssertContinuousExportIds(list)
	return list
end

function asserts.AssertExportIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationsExportId(v)
	end
end

--  
-- List of ConfigurationsExportId objects
function M.ExportIds(list)
	asserts.AssertExportIds(list)
	return list
end

function asserts.AssertAgentsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentsInfo to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAgentInfo(v)
	end
end

--  
-- List of AgentInfo objects
function M.AgentsInfo(list)
	asserts.AssertAgentsInfo(list)
	return list
end

function asserts.AssertConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected Configurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfiguration(v)
	end
end

--  
-- List of Configuration objects
function M.Configurations(list)
	asserts.AssertConfigurations(list)
	return list
end

function asserts.AssertConfigurationTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationTagSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationTag(v)
	end
end

--  
-- List of ConfigurationTag objects
function M.ConfigurationTagSet(list)
	asserts.AssertConfigurationTagSet(list)
	return list
end

function asserts.AssertFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected Filters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.Filters(list)
	asserts.AssertFilters(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "discovery.amazonaws.com"
		end
	end
	local ss = { "discovery" }
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteTags",
	}
	for header,value in pairs(DeleteTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsRequest, headers, settings, cb)
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

--- Call StopDataCollectionByAgentIds asynchronously, invoking a callback when done
-- @param StopDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopDataCollectionByAgentIdsAsync(StopDataCollectionByAgentIdsRequest, cb)
	assert(StopDataCollectionByAgentIdsRequest, "You must provide a StopDataCollectionByAgentIdsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StopDataCollectionByAgentIds",
	}
	for header,value in pairs(StopDataCollectionByAgentIdsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopDataCollectionByAgentIdsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopDataCollectionByAgentIds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopDataCollectionByAgentIdsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopDataCollectionByAgentIdsSync(StopDataCollectionByAgentIdsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDataCollectionByAgentIdsAsync(StopDataCollectionByAgentIdsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDataCollectionByAgentIds asynchronously, invoking a callback when done
-- @param StartDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartDataCollectionByAgentIdsAsync(StartDataCollectionByAgentIdsRequest, cb)
	assert(StartDataCollectionByAgentIdsRequest, "You must provide a StartDataCollectionByAgentIdsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartDataCollectionByAgentIds",
	}
	for header,value in pairs(StartDataCollectionByAgentIdsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartDataCollectionByAgentIdsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartDataCollectionByAgentIds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartDataCollectionByAgentIdsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartDataCollectionByAgentIdsSync(StartDataCollectionByAgentIdsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDataCollectionByAgentIdsAsync(StartDataCollectionByAgentIdsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateConfigurationItemsToApplication asynchronously, invoking a callback when done
-- @param AssociateConfigurationItemsToApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateConfigurationItemsToApplicationAsync(AssociateConfigurationItemsToApplicationRequest, cb)
	assert(AssociateConfigurationItemsToApplicationRequest, "You must provide a AssociateConfigurationItemsToApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.AssociateConfigurationItemsToApplication",
	}
	for header,value in pairs(AssociateConfigurationItemsToApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateConfigurationItemsToApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateConfigurationItemsToApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateConfigurationItemsToApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateConfigurationItemsToApplicationSync(AssociateConfigurationItemsToApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateConfigurationItemsToApplicationAsync(AssociateConfigurationItemsToApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartContinuousExport asynchronously, invoking a callback when done
-- @param StartContinuousExportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartContinuousExportAsync(StartContinuousExportRequest, cb)
	assert(StartContinuousExportRequest, "You must provide a StartContinuousExportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartContinuousExport",
	}
	for header,value in pairs(StartContinuousExportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartContinuousExportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartContinuousExport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartContinuousExportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartContinuousExportSync(StartContinuousExportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartContinuousExportAsync(StartContinuousExportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurations asynchronously, invoking a callback when done
-- @param ListConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConfigurationsAsync(ListConfigurationsRequest, cb)
	assert(ListConfigurationsRequest, "You must provide a ListConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListConfigurations",
	}
	for header,value in pairs(ListConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListConfigurationsSync(ListConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationsAsync(ListConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeContinuousExports asynchronously, invoking a callback when done
-- @param DescribeContinuousExportsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeContinuousExportsAsync(DescribeContinuousExportsRequest, cb)
	assert(DescribeContinuousExportsRequest, "You must provide a DescribeContinuousExportsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeContinuousExports",
	}
	for header,value in pairs(DescribeContinuousExportsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeContinuousExportsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeContinuousExports synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeContinuousExportsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeContinuousExportsSync(DescribeContinuousExportsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeContinuousExportsAsync(DescribeContinuousExportsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartExportTask asynchronously, invoking a callback when done
-- @param StartExportTaskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartExportTaskAsync(StartExportTaskRequest, cb)
	assert(StartExportTaskRequest, "You must provide a StartExportTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartExportTask",
	}
	for header,value in pairs(StartExportTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartExportTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartExportTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartExportTaskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartExportTaskSync(StartExportTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartExportTaskAsync(StartExportTaskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplications asynchronously, invoking a callback when done
-- @param DeleteApplicationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApplicationsAsync(DeleteApplicationsRequest, cb)
	assert(DeleteApplicationsRequest, "You must provide a DeleteApplicationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteApplications",
	}
	for header,value in pairs(DeleteApplicationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApplicationsSync(DeleteApplicationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationsAsync(DeleteApplicationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplication asynchronously, invoking a callback when done
-- @param CreateApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApplicationAsync(CreateApplicationRequest, cb)
	assert(CreateApplicationRequest, "You must provide a CreateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateApplication",
	}
	for header,value in pairs(CreateApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApplicationSync(CreateApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationAsync(CreateApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.UpdateApplication",
	}
	for header,value in pairs(UpdateApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationSync(UpdateApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationAsync(UpdateApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExportTasks asynchronously, invoking a callback when done
-- @param DescribeExportTasksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeExportTasksAsync(DescribeExportTasksRequest, cb)
	assert(DescribeExportTasksRequest, "You must provide a DescribeExportTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeExportTasks",
	}
	for header,value in pairs(DescribeExportTasksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeExportTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeExportTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExportTasksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeExportTasksSync(DescribeExportTasksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExportTasksAsync(DescribeExportTasksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAgents asynchronously, invoking a callback when done
-- @param DescribeAgentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAgentsAsync(DescribeAgentsRequest, cb)
	assert(DescribeAgentsRequest, "You must provide a DescribeAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeAgents",
	}
	for header,value in pairs(DescribeAgentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAgentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAgents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAgentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAgentsSync(DescribeAgentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAgentsAsync(DescribeAgentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurations asynchronously, invoking a callback when done
-- @param DescribeConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationsAsync(DescribeConfigurationsRequest, cb)
	assert(DescribeConfigurationsRequest, "You must provide a DescribeConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeConfigurations",
	}
	for header,value in pairs(DescribeConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationsSync(DescribeConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationsAsync(DescribeConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopContinuousExport asynchronously, invoking a callback when done
-- @param StopContinuousExportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopContinuousExportAsync(StopContinuousExportRequest, cb)
	assert(StopContinuousExportRequest, "You must provide a StopContinuousExportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StopContinuousExport",
	}
	for header,value in pairs(StopContinuousExportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopContinuousExportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopContinuousExport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopContinuousExportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopContinuousExportSync(StopContinuousExportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopContinuousExportAsync(StopContinuousExportRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateTags",
	}
	for header,value in pairs(CreateTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTagsRequest, headers, settings, cb)
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

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeTags",
	}
	for header,value in pairs(DescribeTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsRequest, headers, settings, cb)
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

--- Call GetDiscoverySummary asynchronously, invoking a callback when done
-- @param GetDiscoverySummaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDiscoverySummaryAsync(GetDiscoverySummaryRequest, cb)
	assert(GetDiscoverySummaryRequest, "You must provide a GetDiscoverySummaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.GetDiscoverySummary",
	}
	for header,value in pairs(GetDiscoverySummaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDiscoverySummaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDiscoverySummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDiscoverySummaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDiscoverySummarySync(GetDiscoverySummaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiscoverySummaryAsync(GetDiscoverySummaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServerNeighbors asynchronously, invoking a callback when done
-- @param ListServerNeighborsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServerNeighborsAsync(ListServerNeighborsRequest, cb)
	assert(ListServerNeighborsRequest, "You must provide a ListServerNeighborsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListServerNeighbors",
	}
	for header,value in pairs(ListServerNeighborsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServerNeighborsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServerNeighbors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServerNeighborsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListServerNeighborsSync(ListServerNeighborsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServerNeighborsAsync(ListServerNeighborsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateConfigurationItemsFromApplication asynchronously, invoking a callback when done
-- @param DisassociateConfigurationItemsFromApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateConfigurationItemsFromApplicationAsync(DisassociateConfigurationItemsFromApplicationRequest, cb)
	assert(DisassociateConfigurationItemsFromApplicationRequest, "You must provide a DisassociateConfigurationItemsFromApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DisassociateConfigurationItemsFromApplication",
	}
	for header,value in pairs(DisassociateConfigurationItemsFromApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateConfigurationItemsFromApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateConfigurationItemsFromApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateConfigurationItemsFromApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateConfigurationItemsFromApplicationSync(DisassociateConfigurationItemsFromApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateConfigurationItemsFromApplicationAsync(DisassociateConfigurationItemsFromApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
