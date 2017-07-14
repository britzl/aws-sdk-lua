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

local DisassociateConfigurationItemsFromApplicationResponse_keys = { nil }

function M.AssertDisassociateConfigurationItemsFromApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConfigurationItemsFromApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateConfigurationItemsFromApplicationResponse_keys[k], "DisassociateConfigurationItemsFromApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConfigurationItemsFromApplicationResponse
--  
function M.DisassociateConfigurationItemsFromApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConfigurationItemsFromApplicationResponse")
	local t = { 
	}
	M.AssertDisassociateConfigurationItemsFromApplicationResponse(t)
	return t
end

local DescribeConfigurationsResponse_keys = { "configurations" = true, nil }

function M.AssertDescribeConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationsResponse to be of type 'table'")
	if struct["configurations"] then M.AssertDescribeConfigurationsAttributes(struct["configurations"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationsResponse_keys[k], "DescribeConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationsResponse
--  
-- @param configurations [DescribeConfigurationsAttributes] &lt;p&gt;A key in the response map. The value is an array of data.&lt;/p&gt;
function M.DescribeConfigurationsResponse(configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationsResponse")
	local t = { 
		["configurations"] = configurations,
	}
	M.AssertDescribeConfigurationsResponse(t)
	return t
end

local AgentInfo_keys = { "version" = true, "connectorId" = true, "agentType" = true, "hostName" = true, "collectionStatus" = true, "agentNetworkInfoList" = true, "health" = true, "agentId" = true, "registeredTime" = true, "lastHealthPingTime" = true, nil }

function M.AssertAgentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentInfo to be of type 'table'")
	if struct["version"] then M.AssertString(struct["version"]) end
	if struct["connectorId"] then M.AssertString(struct["connectorId"]) end
	if struct["agentType"] then M.AssertString(struct["agentType"]) end
	if struct["hostName"] then M.AssertString(struct["hostName"]) end
	if struct["collectionStatus"] then M.AssertString(struct["collectionStatus"]) end
	if struct["agentNetworkInfoList"] then M.AssertAgentNetworkInfoList(struct["agentNetworkInfoList"]) end
	if struct["health"] then M.AssertAgentStatus(struct["health"]) end
	if struct["agentId"] then M.AssertAgentId(struct["agentId"]) end
	if struct["registeredTime"] then M.AssertString(struct["registeredTime"]) end
	if struct["lastHealthPingTime"] then M.AssertString(struct["lastHealthPingTime"]) end
	for k,_ in pairs(struct) do
		assert(AgentInfo_keys[k], "AgentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentInfo
-- &lt;p&gt;Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.&lt;/p&gt;
-- @param version [String] &lt;p&gt;The agent or connector version.&lt;/p&gt;
-- @param connectorId [String] &lt;p&gt;The ID of the connector.&lt;/p&gt;
-- @param agentType [String] &lt;p&gt;Type of agent.&lt;/p&gt;
-- @param hostName [String] &lt;p&gt;The name of the host where the agent or connector resides. The host can be a server or virtual machine.&lt;/p&gt;
-- @param collectionStatus [String] &lt;p&gt;Status of the collection process for an agent or connector.&lt;/p&gt;
-- @param agentNetworkInfoList [AgentNetworkInfoList] &lt;p&gt;Network details about the host where the agent or connector resides.&lt;/p&gt;
-- @param health [AgentStatus] &lt;p&gt;The health of the agent or connector.&lt;/p&gt;
-- @param agentId [AgentId] &lt;p&gt;The agent or connector ID.&lt;/p&gt;
-- @param registeredTime [String] &lt;p&gt;Agent's first registration timestamp in UTC.&lt;/p&gt;
-- @param lastHealthPingTime [String] &lt;p&gt;Time since agent or connector health was reported.&lt;/p&gt;
function M.AgentInfo(version, connectorId, agentType, hostName, collectionStatus, agentNetworkInfoList, health, agentId, registeredTime, lastHealthPingTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentInfo")
	local t = { 
		["version"] = version,
		["connectorId"] = connectorId,
		["agentType"] = agentType,
		["hostName"] = hostName,
		["collectionStatus"] = collectionStatus,
		["agentNetworkInfoList"] = agentNetworkInfoList,
		["health"] = health,
		["agentId"] = agentId,
		["registeredTime"] = registeredTime,
		["lastHealthPingTime"] = lastHealthPingTime,
	}
	M.AssertAgentInfo(t)
	return t
end

local DescribeTagsRequest_keys = { "nextToken" = true, "maxResults" = true, "filters" = true, nil }

function M.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then M.AssertTagFilters(struct["filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsRequest_keys[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
--  
-- @param nextToken [NextToken] &lt;p&gt;A token to start the list. Use this token to get the next set of results.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The total number of items to return in a single page of output. The maximum value is 100.&lt;/p&gt;
-- @param filters [TagFilters] &lt;p&gt;You can filter the list using a &lt;i&gt;key&lt;/i&gt;-&lt;i&gt;value&lt;/i&gt; format. You can separate these items by using logical operators. Allowed filters include &lt;code&gt;tagKey&lt;/code&gt;, &lt;code&gt;tagValue&lt;/code&gt;, and &lt;code&gt;configurationId&lt;/code&gt;. &lt;/p&gt;
function M.DescribeTagsRequest(nextToken, maxResults, filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["filters"] = filters,
	}
	M.AssertDescribeTagsRequest(t)
	return t
end

local OperationNotPermittedException_keys = { "message" = true, nil }

function M.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedException_keys[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- &lt;p&gt;This operation is not permitted.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;This operation is not permitted.&lt;/p&gt;
function M.OperationNotPermittedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["message"] = message,
	}
	M.AssertOperationNotPermittedException(t)
	return t
end

local UpdateApplicationRequest_keys = { "configurationId" = true, "name" = true, "description" = true, nil }

function M.AssertUpdateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationRequest to be of type 'table'")
	assert(struct["configurationId"], "Expected key configurationId to exist in table")
	if struct["configurationId"] then M.AssertApplicationId(struct["configurationId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApplicationRequest_keys[k], "UpdateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationRequest
--  
-- @param configurationId [ApplicationId] &lt;p&gt;Configuration ID of the application to be updated.&lt;/p&gt;
-- @param name [String] &lt;p&gt;New name of the application to be updated.&lt;/p&gt;
-- @param description [String] &lt;p&gt;New description of the application to be updated.&lt;/p&gt;
-- Required parameter: configurationId
function M.UpdateApplicationRequest(configurationId, name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationRequest")
	local t = { 
		["configurationId"] = configurationId,
		["name"] = name,
		["description"] = description,
	}
	M.AssertUpdateApplicationRequest(t)
	return t
end

local AgentNetworkInfo_keys = { "macAddress" = true, "ipAddress" = true, nil }

function M.AssertAgentNetworkInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentNetworkInfo to be of type 'table'")
	if struct["macAddress"] then M.AssertString(struct["macAddress"]) end
	if struct["ipAddress"] then M.AssertString(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(AgentNetworkInfo_keys[k], "AgentNetworkInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentNetworkInfo
-- &lt;p&gt;Network details about the host where the agent/connector resides.&lt;/p&gt;
-- @param macAddress [String] &lt;p&gt;The MAC address for the host where the agent/connector resides.&lt;/p&gt;
-- @param ipAddress [String] &lt;p&gt;The IP address for the host where the agent/connector resides.&lt;/p&gt;
function M.AgentNetworkInfo(macAddress, ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentNetworkInfo")
	local t = { 
		["macAddress"] = macAddress,
		["ipAddress"] = ipAddress,
	}
	M.AssertAgentNetworkInfo(t)
	return t
end

local DeleteApplicationsRequest_keys = { "configurationIds" = true, nil }

function M.AssertDeleteApplicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then M.AssertApplicationIdsList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationsRequest_keys[k], "DeleteApplicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationsRequest
--  
-- @param configurationIds [ApplicationIdsList] &lt;p&gt;Configuration ID of an application to be deleted.&lt;/p&gt;
-- Required parameter: configurationIds
function M.DeleteApplicationsRequest(configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationsRequest")
	local t = { 
		["configurationIds"] = configurationIds,
	}
	M.AssertDeleteApplicationsRequest(t)
	return t
end

local CreateTagsRequest_keys = { "configurationIds" = true, "tags" = true, nil }

function M.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["configurationIds"] then M.AssertConfigurationIdList(struct["configurationIds"]) end
	if struct["tags"] then M.AssertTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagsRequest_keys[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
--  
-- @param configurationIds [ConfigurationIdList] &lt;p&gt;A list of configuration items that you want to tag.&lt;/p&gt;
-- @param tags [TagSet] &lt;p&gt;Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a &lt;i&gt;key&lt;/i&gt;-&lt;i&gt;value&lt;/i&gt; format. For example:&lt;/p&gt; &lt;p&gt; &lt;code&gt;{&quot;key&quot;: &quot;serverType&quot;, &quot;value&quot;: &quot;webServer&quot;}&lt;/code&gt; &lt;/p&gt;
-- Required parameter: configurationIds
-- Required parameter: tags
function M.CreateTagsRequest(configurationIds, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsRequest")
	local t = { 
		["configurationIds"] = configurationIds,
		["tags"] = tags,
	}
	M.AssertCreateTagsRequest(t)
	return t
end

local ListConfigurationsResponse_keys = { "nextToken" = true, "configurations" = true, nil }

function M.AssertListConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["configurations"] then M.AssertConfigurations(struct["configurations"]) end
	for k,_ in pairs(struct) do
		assert(ListConfigurationsResponse_keys[k], "ListConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;Token to retrieve the next set of results. For example, if your call to ListConfigurations returned 100 items, but you set &lt;code&gt;ListConfigurationsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.&lt;/p&gt;
-- @param configurations [Configurations] &lt;p&gt;Returns configuration details, including the configuration ID, attribute names, and attribute values.&lt;/p&gt;
function M.ListConfigurationsResponse(nextToken, configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["configurations"] = configurations,
	}
	M.AssertListConfigurationsResponse(t)
	return t
end

local Tag_keys = { "value" = true, "key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AssertTagValue(struct["value"]) end
	if struct["key"] then M.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;Metadata that help you categorize IT assets.&lt;/p&gt;
-- @param value [TagValue] &lt;p&gt;A value for a tag key on which to filter.&lt;/p&gt;
-- @param key [TagKey] &lt;p&gt;The type of tag on which to filter.&lt;/p&gt;
-- Required parameter: key
-- Required parameter: value
function M.Tag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertTag(t)
	return t
end

local DescribeAgentsRequest_keys = { "nextToken" = true, "maxResults" = true, "filters" = true, "agentIds" = true, nil }

function M.AssertDescribeAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then M.AssertFilters(struct["filters"]) end
	if struct["agentIds"] then M.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAgentsRequest_keys[k], "DescribeAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentsRequest
--  
-- @param nextToken [NextToken] &lt;p&gt;Token to retrieve the next set of results. For example, if you previously specified 100 IDs for &lt;code&gt;DescribeAgentsRequest$agentIds&lt;/code&gt; but set &lt;code&gt;DescribeAgentsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The total number of agents/Connectors to return in a single page of output. The maximum value is 100.&lt;/p&gt;
-- @param filters [Filters] &lt;p&gt;You can filter the request using various logical operators and a &lt;i&gt;key&lt;/i&gt;-&lt;i&gt;value&lt;/i&gt; format. For example: &lt;/p&gt; &lt;p&gt; &lt;code&gt;{&quot;key&quot;: &quot;collectionStatus&quot;, &quot;value&quot;: &quot;STARTED&quot;}&lt;/code&gt; &lt;/p&gt;
-- @param agentIds [AgentIds] &lt;p&gt;The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.&lt;/p&gt;
function M.DescribeAgentsRequest(nextToken, maxResults, filters, agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["filters"] = filters,
		["agentIds"] = agentIds,
	}
	M.AssertDescribeAgentsRequest(t)
	return t
end

local ListConfigurationsRequest_keys = { "orderBy" = true, "nextToken" = true, "maxResults" = true, "filters" = true, "configurationType" = true, nil }

function M.AssertListConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsRequest to be of type 'table'")
	assert(struct["configurationType"], "Expected key configurationType to exist in table")
	if struct["orderBy"] then M.AssertOrderByList(struct["orderBy"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["filters"] then M.AssertFilters(struct["filters"]) end
	if struct["configurationType"] then M.AssertConfigurationItemType(struct["configurationType"]) end
	for k,_ in pairs(struct) do
		assert(ListConfigurationsRequest_keys[k], "ListConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsRequest
--  
-- @param orderBy [OrderByList] &lt;p&gt;Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see &lt;a href=&quot;http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations&quot;&gt;Using the ListConfigurations Action&lt;/a&gt;.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set &lt;code&gt;ListConfigurationsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The total number of items to return. The maximum value is 100.&lt;/p&gt;
-- @param filters [Filters] &lt;p&gt;You can filter the request using various logical operators and a &lt;i&gt;key&lt;/i&gt;-&lt;i&gt;value&lt;/i&gt; format. For example: &lt;/p&gt; &lt;p&gt; &lt;code&gt;{&quot;key&quot;: &quot;serverType&quot;, &quot;value&quot;: &quot;webServer&quot;}&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For a complete list of filter options and guidance about using them with this action, see &lt;a href=&quot;http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations&quot;&gt;Querying Discovered Configuration Items&lt;/a&gt;. &lt;/p&gt;
-- @param configurationType [ConfigurationItemType] &lt;p&gt;A valid configuration identified by Application Discovery Service. &lt;/p&gt;
-- Required parameter: configurationType
function M.ListConfigurationsRequest(orderBy, nextToken, maxResults, filters, configurationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationsRequest")
	local t = { 
		["orderBy"] = orderBy,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["filters"] = filters,
		["configurationType"] = configurationType,
	}
	M.AssertListConfigurationsRequest(t)
	return t
end

local DescribeAgentsResponse_keys = { "agentsInfo" = true, "nextToken" = true, nil }

function M.AssertDescribeAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentsResponse to be of type 'table'")
	if struct["agentsInfo"] then M.AssertAgentsInfo(struct["agentsInfo"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAgentsResponse_keys[k], "DescribeAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentsResponse
--  
-- @param agentsInfo [AgentsInfo] &lt;p&gt;Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;Token to retrieve the next set of results. For example, if you specified 100 IDs for &lt;code&gt;DescribeAgentsRequest$agentIds&lt;/code&gt; but set &lt;code&gt;DescribeAgentsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.&lt;/p&gt;
function M.DescribeAgentsResponse(agentsInfo, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentsResponse")
	local t = { 
		["agentsInfo"] = agentsInfo,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeAgentsResponse(t)
	return t
end

local ExportConfigurationsResponse_keys = { "exportId" = true, nil }

function M.AssertExportConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportConfigurationsResponse to be of type 'table'")
	if struct["exportId"] then M.AssertConfigurationsExportId(struct["exportId"]) end
	for k,_ in pairs(struct) do
		assert(ExportConfigurationsResponse_keys[k], "ExportConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportConfigurationsResponse
--  
-- @param exportId [ConfigurationsExportId] &lt;p&gt;A unique identifier that you can use to query the export status.&lt;/p&gt;
function M.ExportConfigurationsResponse(exportId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportConfigurationsResponse")
	local t = { 
		["exportId"] = exportId,
	}
	M.AssertExportConfigurationsResponse(t)
	return t
end

local ServerInternalErrorException_keys = { "message" = true, nil }

function M.AssertServerInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerInternalErrorException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServerInternalErrorException_keys[k], "ServerInternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerInternalErrorException
-- &lt;p&gt;The server experienced an internal error. Try again.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;The server experienced an internal error. Try again.&lt;/p&gt;
function M.ServerInternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerInternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertServerInternalErrorException(t)
	return t
end

local StartDataCollectionByAgentIdsRequest_keys = { "agentIds" = true, nil }

function M.AssertStartDataCollectionByAgentIdsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDataCollectionByAgentIdsRequest to be of type 'table'")
	assert(struct["agentIds"], "Expected key agentIds to exist in table")
	if struct["agentIds"] then M.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(StartDataCollectionByAgentIdsRequest_keys[k], "StartDataCollectionByAgentIdsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDataCollectionByAgentIdsRequest
--  
-- @param agentIds [AgentIds] &lt;p&gt;The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the &lt;i&gt;Description&lt;/i&gt; field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows &lt;code&gt;Failed&lt;/code&gt; in the &lt;i&gt;Description&lt;/i&gt; field.&lt;/p&gt;
-- Required parameter: agentIds
function M.StartDataCollectionByAgentIdsRequest(agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDataCollectionByAgentIdsRequest")
	local t = { 
		["agentIds"] = agentIds,
	}
	M.AssertStartDataCollectionByAgentIdsRequest(t)
	return t
end

local DeleteApplicationsResponse_keys = { nil }

function M.AssertDeleteApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteApplicationsResponse_keys[k], "DeleteApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationsResponse
--  
function M.DeleteApplicationsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationsResponse")
	local t = { 
	}
	M.AssertDeleteApplicationsResponse(t)
	return t
end

local AssociateConfigurationItemsToApplicationRequest_keys = { "applicationConfigurationId" = true, "configurationIds" = true, nil }

function M.AssertAssociateConfigurationItemsToApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConfigurationItemsToApplicationRequest to be of type 'table'")
	assert(struct["applicationConfigurationId"], "Expected key applicationConfigurationId to exist in table")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["applicationConfigurationId"] then M.AssertApplicationId(struct["applicationConfigurationId"]) end
	if struct["configurationIds"] then M.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(AssociateConfigurationItemsToApplicationRequest_keys[k], "AssociateConfigurationItemsToApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConfigurationItemsToApplicationRequest
--  
-- @param applicationConfigurationId [ApplicationId] &lt;p&gt;The configuration ID of an application with which items are to be associated.&lt;/p&gt;
-- @param configurationIds [ConfigurationIdList] &lt;p&gt;The ID of each configuration item to be associated with an application.&lt;/p&gt;
-- Required parameter: applicationConfigurationId
-- Required parameter: configurationIds
function M.AssociateConfigurationItemsToApplicationRequest(applicationConfigurationId, configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConfigurationItemsToApplicationRequest")
	local t = { 
		["applicationConfigurationId"] = applicationConfigurationId,
		["configurationIds"] = configurationIds,
	}
	M.AssertAssociateConfigurationItemsToApplicationRequest(t)
	return t
end

local ListServerNeighborsResponse_keys = { "neighbors" = true, "nextToken" = true, "knownDependencyCount" = true, nil }

function M.AssertListServerNeighborsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerNeighborsResponse to be of type 'table'")
	assert(struct["neighbors"], "Expected key neighbors to exist in table")
	if struct["neighbors"] then M.AssertNeighborDetailsList(struct["neighbors"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["knownDependencyCount"] then M.AssertLong(struct["knownDependencyCount"]) end
	for k,_ in pairs(struct) do
		assert(ListServerNeighborsResponse_keys[k], "ListServerNeighborsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerNeighborsResponse
--  
-- @param neighbors [NeighborDetailsList] &lt;p&gt;List of distinct servers that are one hop away from the given server.&lt;/p&gt;
-- @param nextToken [String] &lt;p&gt;Token to retrieve the next set of results. For example, if you specified 100 IDs for &lt;code&gt;ListServerNeighborsRequest$neighborConfigurationIds&lt;/code&gt; but set &lt;code&gt;ListServerNeighborsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.&lt;/p&gt;
-- @param knownDependencyCount [Long] &lt;p&gt;Count of distinct servers that are one hop away from the given server.&lt;/p&gt;
-- Required parameter: neighbors
function M.ListServerNeighborsResponse(neighbors, nextToken, knownDependencyCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerNeighborsResponse")
	local t = { 
		["neighbors"] = neighbors,
		["nextToken"] = nextToken,
		["knownDependencyCount"] = knownDependencyCount,
	}
	M.AssertListServerNeighborsResponse(t)
	return t
end

local StopDataCollectionByAgentIdsResponse_keys = { "agentsConfigurationStatus" = true, nil }

function M.AssertStopDataCollectionByAgentIdsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDataCollectionByAgentIdsResponse to be of type 'table'")
	if struct["agentsConfigurationStatus"] then M.AssertAgentConfigurationStatusList(struct["agentsConfigurationStatus"]) end
	for k,_ in pairs(struct) do
		assert(StopDataCollectionByAgentIdsResponse_keys[k], "StopDataCollectionByAgentIdsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDataCollectionByAgentIdsResponse
--  
-- @param agentsConfigurationStatus [AgentConfigurationStatusList] &lt;p&gt;Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.&lt;/p&gt;
function M.StopDataCollectionByAgentIdsResponse(agentsConfigurationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDataCollectionByAgentIdsResponse")
	local t = { 
		["agentsConfigurationStatus"] = agentsConfigurationStatus,
	}
	M.AssertStopDataCollectionByAgentIdsResponse(t)
	return t
end

local NeighborConnectionDetail_keys = { "connectionsCount" = true, "destinationServerId" = true, "sourceServerId" = true, "transportProtocol" = true, "destinationPort" = true, nil }

function M.AssertNeighborConnectionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NeighborConnectionDetail to be of type 'table'")
	assert(struct["sourceServerId"], "Expected key sourceServerId to exist in table")
	assert(struct["destinationServerId"], "Expected key destinationServerId to exist in table")
	assert(struct["connectionsCount"], "Expected key connectionsCount to exist in table")
	if struct["connectionsCount"] then M.AssertLong(struct["connectionsCount"]) end
	if struct["destinationServerId"] then M.AssertConfigurationId(struct["destinationServerId"]) end
	if struct["sourceServerId"] then M.AssertConfigurationId(struct["sourceServerId"]) end
	if struct["transportProtocol"] then M.AssertString(struct["transportProtocol"]) end
	if struct["destinationPort"] then M.AssertBoxedInteger(struct["destinationPort"]) end
	for k,_ in pairs(struct) do
		assert(NeighborConnectionDetail_keys[k], "NeighborConnectionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NeighborConnectionDetail
-- &lt;p&gt;Details about neighboring servers.&lt;/p&gt;
-- @param connectionsCount [Long] &lt;p&gt;The number of open network connections with the neighboring server.&lt;/p&gt;
-- @param destinationServerId [ConfigurationId] &lt;p&gt;The ID of the server that accepted the network connection.&lt;/p&gt;
-- @param sourceServerId [ConfigurationId] &lt;p&gt;The ID of the server that opened the network connection.&lt;/p&gt;
-- @param transportProtocol [String] &lt;p&gt;The network protocol used for the connection.&lt;/p&gt;
-- @param destinationPort [BoxedInteger] &lt;p&gt;The destination network port for the connection.&lt;/p&gt;
-- Required parameter: sourceServerId
-- Required parameter: destinationServerId
-- Required parameter: connectionsCount
function M.NeighborConnectionDetail(connectionsCount, destinationServerId, sourceServerId, transportProtocol, destinationPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NeighborConnectionDetail")
	local t = { 
		["connectionsCount"] = connectionsCount,
		["destinationServerId"] = destinationServerId,
		["sourceServerId"] = sourceServerId,
		["transportProtocol"] = transportProtocol,
		["destinationPort"] = destinationPort,
	}
	M.AssertNeighborConnectionDetail(t)
	return t
end

local StartDataCollectionByAgentIdsResponse_keys = { "agentsConfigurationStatus" = true, nil }

function M.AssertStartDataCollectionByAgentIdsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDataCollectionByAgentIdsResponse to be of type 'table'")
	if struct["agentsConfigurationStatus"] then M.AssertAgentConfigurationStatusList(struct["agentsConfigurationStatus"]) end
	for k,_ in pairs(struct) do
		assert(StartDataCollectionByAgentIdsResponse_keys[k], "StartDataCollectionByAgentIdsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDataCollectionByAgentIdsResponse
--  
-- @param agentsConfigurationStatus [AgentConfigurationStatusList] &lt;p&gt;Information about agents or the connector that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.&lt;/p&gt;
function M.StartDataCollectionByAgentIdsResponse(agentsConfigurationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDataCollectionByAgentIdsResponse")
	local t = { 
		["agentsConfigurationStatus"] = agentsConfigurationStatus,
	}
	M.AssertStartDataCollectionByAgentIdsResponse(t)
	return t
end

local DeleteTagsResponse_keys = { nil }

function M.AssertDeleteTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTagsResponse_keys[k], "DeleteTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsResponse
--  
function M.DeleteTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsResponse")
	local t = { 
	}
	M.AssertDeleteTagsResponse(t)
	return t
end

local StartExportTaskRequest_keys = { "exportDataFormat" = true, nil }

function M.AssertStartExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExportTaskRequest to be of type 'table'")
	if struct["exportDataFormat"] then M.AssertExportDataFormats(struct["exportDataFormat"]) end
	for k,_ in pairs(struct) do
		assert(StartExportTaskRequest_keys[k], "StartExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExportTaskRequest
--  
-- @param exportDataFormat [ExportDataFormats] &lt;p&gt;The file format for the returned export data. Default value is &lt;code&gt;CSV&lt;/code&gt;.&lt;/p&gt;
function M.StartExportTaskRequest(exportDataFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExportTaskRequest")
	local t = { 
		["exportDataFormat"] = exportDataFormat,
	}
	M.AssertStartExportTaskRequest(t)
	return t
end

local DescribeExportTasksResponse_keys = { "exportsInfo" = true, "nextToken" = true, nil }

function M.AssertDescribeExportTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksResponse to be of type 'table'")
	if struct["exportsInfo"] then M.AssertExportsInfo(struct["exportsInfo"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportTasksResponse_keys[k], "DescribeExportTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksResponse
--  
-- @param exportsInfo [ExportsInfo] &lt;p&gt;Contains one or more sets of export request details. When the status of a request is &lt;code&gt;SUCCEEDED&lt;/code&gt;, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value to include in a future &lt;code&gt;DescribeExportTasks&lt;/code&gt; request. When the results of a &lt;code&gt;DescribeExportTasks&lt;/code&gt; request exceed &lt;code&gt;maxResults&lt;/code&gt;, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.&lt;/p&gt;
function M.DescribeExportTasksResponse(exportsInfo, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksResponse")
	local t = { 
		["exportsInfo"] = exportsInfo,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeExportTasksResponse(t)
	return t
end

local DeleteTagsRequest_keys = { "configurationIds" = true, "tags" = true, nil }

function M.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then M.AssertConfigurationIdList(struct["configurationIds"]) end
	if struct["tags"] then M.AssertTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsRequest_keys[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
--  
-- @param configurationIds [ConfigurationIdList] &lt;p&gt;A list of configuration items with tags that you want to delete.&lt;/p&gt;
-- @param tags [TagSet] &lt;p&gt;Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a &lt;i&gt;key&lt;/i&gt;-&lt;i&gt;value&lt;/i&gt; format. For example:&lt;/p&gt; &lt;p&gt; &lt;code&gt;{&quot;key&quot;: &quot;serverType&quot;, &quot;value&quot;: &quot;webServer&quot;}&lt;/code&gt; &lt;/p&gt;
-- Required parameter: configurationIds
function M.DeleteTagsRequest(configurationIds, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsRequest")
	local t = { 
		["configurationIds"] = configurationIds,
		["tags"] = tags,
	}
	M.AssertDeleteTagsRequest(t)
	return t
end

local AgentConfigurationStatus_keys = { "operationSucceeded" = true, "agentId" = true, "description" = true, nil }

function M.AssertAgentConfigurationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentConfigurationStatus to be of type 'table'")
	if struct["operationSucceeded"] then M.AssertBoolean(struct["operationSucceeded"]) end
	if struct["agentId"] then M.AssertString(struct["agentId"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(AgentConfigurationStatus_keys[k], "AgentConfigurationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentConfigurationStatus
-- &lt;p&gt;Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.&lt;/p&gt;
-- @param operationSucceeded [Boolean] &lt;p&gt;Information about the status of the &lt;code&gt;StartDataCollection&lt;/code&gt; and &lt;code&gt;StopDataCollection&lt;/code&gt; operations. The system has recorded the data collection operation. The agent/connector receives this command the next time it polls for a new command. &lt;/p&gt;
-- @param agentId [String] &lt;p&gt;The agent/connector ID.&lt;/p&gt;
-- @param description [String] &lt;p&gt;A description of the operation performed.&lt;/p&gt;
function M.AgentConfigurationStatus(operationSucceeded, agentId, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentConfigurationStatus")
	local t = { 
		["operationSucceeded"] = operationSucceeded,
		["agentId"] = agentId,
		["description"] = description,
	}
	M.AssertAgentConfigurationStatus(t)
	return t
end

local UpdateApplicationResponse_keys = { nil }

function M.AssertUpdateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateApplicationResponse_keys[k], "UpdateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResponse
--  
function M.UpdateApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationResponse")
	local t = { 
	}
	M.AssertUpdateApplicationResponse(t)
	return t
end

local AuthorizationErrorException_keys = { "message" = true, nil }

function M.AssertAuthorizationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationErrorException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizationErrorException_keys[k], "AuthorizationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationErrorException
-- &lt;p&gt;The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.&lt;/p&gt;
function M.AuthorizationErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertAuthorizationErrorException(t)
	return t
end

local OrderByElement_keys = { "fieldName" = true, "sortOrder" = true, nil }

function M.AssertOrderByElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderByElement to be of type 'table'")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	if struct["fieldName"] then M.AssertString(struct["fieldName"]) end
	if struct["sortOrder"] then M.AssertorderString(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(OrderByElement_keys[k], "OrderByElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderByElement
-- &lt;p&gt;A field and direction for ordered output.&lt;/p&gt;
-- @param fieldName [String] &lt;p&gt;The field on which to order.&lt;/p&gt;
-- @param sortOrder [orderString] &lt;p&gt;Ordering direction.&lt;/p&gt;
-- Required parameter: fieldName
function M.OrderByElement(fieldName, sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderByElement")
	local t = { 
		["fieldName"] = fieldName,
		["sortOrder"] = sortOrder,
	}
	M.AssertOrderByElement(t)
	return t
end

local ListServerNeighborsRequest_keys = { "nextToken" = true, "configurationId" = true, "portInformationNeeded" = true, "maxResults" = true, "neighborConfigurationIds" = true, nil }

function M.AssertListServerNeighborsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerNeighborsRequest to be of type 'table'")
	assert(struct["configurationId"], "Expected key configurationId to exist in table")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["configurationId"] then M.AssertConfigurationId(struct["configurationId"]) end
	if struct["portInformationNeeded"] then M.AssertBoolean(struct["portInformationNeeded"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["neighborConfigurationIds"] then M.AssertConfigurationIdList(struct["neighborConfigurationIds"]) end
	for k,_ in pairs(struct) do
		assert(ListServerNeighborsRequest_keys[k], "ListServerNeighborsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerNeighborsRequest
--  
-- @param nextToken [String] &lt;p&gt;Token to retrieve the next set of results. For example, if you previously specified 100 IDs for &lt;code&gt;ListServerNeighborsRequest$neighborConfigurationIds&lt;/code&gt; but set &lt;code&gt;ListServerNeighborsRequest$maxResults&lt;/code&gt; to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.&lt;/p&gt;
-- @param configurationId [ConfigurationId] &lt;p&gt;Configuration ID of the server for which neighbors are being listed.&lt;/p&gt;
-- @param portInformationNeeded [Boolean] &lt;p&gt;Flag to indicate if port and protocol information is needed as part of the response.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;Maximum number of results to return in a single page of output.&lt;/p&gt;
-- @param neighborConfigurationIds [ConfigurationIdList] &lt;p&gt;List of configuration IDs to test for one-hop-away.&lt;/p&gt;
-- Required parameter: configurationId
function M.ListServerNeighborsRequest(nextToken, configurationId, portInformationNeeded, maxResults, neighborConfigurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerNeighborsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["configurationId"] = configurationId,
		["portInformationNeeded"] = portInformationNeeded,
		["maxResults"] = maxResults,
		["neighborConfigurationIds"] = neighborConfigurationIds,
	}
	M.AssertListServerNeighborsRequest(t)
	return t
end

local StopDataCollectionByAgentIdsRequest_keys = { "agentIds" = true, nil }

function M.AssertStopDataCollectionByAgentIdsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDataCollectionByAgentIdsRequest to be of type 'table'")
	assert(struct["agentIds"], "Expected key agentIds to exist in table")
	if struct["agentIds"] then M.AssertAgentIds(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(StopDataCollectionByAgentIdsRequest_keys[k], "StopDataCollectionByAgentIdsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDataCollectionByAgentIdsRequest
--  
-- @param agentIds [AgentIds] &lt;p&gt;The IDs of the agents or connectors from which to stop collecting data.&lt;/p&gt;
-- Required parameter: agentIds
function M.StopDataCollectionByAgentIdsRequest(agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDataCollectionByAgentIdsRequest")
	local t = { 
		["agentIds"] = agentIds,
	}
	M.AssertStopDataCollectionByAgentIdsRequest(t)
	return t
end

local Filter_keys = { "values" = true, "name" = true, "condition" = true, nil }

function M.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["values"], "Expected key values to exist in table")
	assert(struct["condition"], "Expected key condition to exist in table")
	if struct["values"] then M.AssertFilterValues(struct["values"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["condition"] then M.AssertCondition(struct["condition"]) end
	for k,_ in pairs(struct) do
		assert(Filter_keys[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- &lt;p&gt;A filter that can use conditional operators.&lt;/p&gt; &lt;p&gt;For more information about filters, see &lt;a href=&quot;http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html&quot;&gt;Querying Discovered Configuration Items&lt;/a&gt;. &lt;/p&gt;
-- @param values [FilterValues] &lt;p&gt;A string value on which to filter. For example, if you choose the &lt;code&gt;destinationServer.osVersion&lt;/code&gt; filter name, you could specify &lt;code&gt;Ubuntu&lt;/code&gt; for the value.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The name of the filter.&lt;/p&gt;
-- @param condition [Condition] &lt;p&gt;A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as though concatenated by &lt;i&gt;AND&lt;/i&gt;. If you specify multiple values for a particular filter, the system differentiates the values using &lt;i&gt;OR&lt;/i&gt;. Calling either &lt;i&gt;DescribeConfigurations&lt;/i&gt; or &lt;i&gt;ListConfigurations&lt;/i&gt; returns attributes of matching configuration items.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: values
-- Required parameter: condition
function M.Filter(values, name, condition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Filter")
	local t = { 
		["values"] = values,
		["name"] = name,
		["condition"] = condition,
	}
	M.AssertFilter(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- &lt;p&gt;The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.&lt;/p&gt;
function M.InvalidParameterValueException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local ExportInfo_keys = { "exportId" = true, "exportRequestTime" = true, "exportStatus" = true, "statusMessage" = true, "configurationsDownloadUrl" = true, nil }

function M.AssertExportInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportInfo to be of type 'table'")
	assert(struct["exportId"], "Expected key exportId to exist in table")
	assert(struct["exportStatus"], "Expected key exportStatus to exist in table")
	assert(struct["statusMessage"], "Expected key statusMessage to exist in table")
	assert(struct["exportRequestTime"], "Expected key exportRequestTime to exist in table")
	if struct["exportId"] then M.AssertConfigurationsExportId(struct["exportId"]) end
	if struct["exportRequestTime"] then M.AssertExportRequestTime(struct["exportRequestTime"]) end
	if struct["exportStatus"] then M.AssertExportStatus(struct["exportStatus"]) end
	if struct["statusMessage"] then M.AssertExportStatusMessage(struct["statusMessage"]) end
	if struct["configurationsDownloadUrl"] then M.AssertConfigurationsDownloadUrl(struct["configurationsDownloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(ExportInfo_keys[k], "ExportInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportInfo
-- &lt;p&gt;Information regarding the export status of the discovered data. The value is an array of objects.&lt;/p&gt;
-- @param exportId [ConfigurationsExportId] &lt;p&gt;A unique identifier that you can use to query the export.&lt;/p&gt;
-- @param exportRequestTime [ExportRequestTime] &lt;p&gt;The time that the configuration data export was initiated.&lt;/p&gt;
-- @param exportStatus [ExportStatus] &lt;p&gt;The status of the configuration data export. The status can succeed, fail, or be in-progress.&lt;/p&gt;
-- @param statusMessage [ExportStatusMessage] &lt;p&gt;Helpful status messages for API callers. For example: Too many exports in the last 6 hours. Export in progress. Export was successful.&lt;/p&gt;
-- @param configurationsDownloadUrl [ConfigurationsDownloadUrl] &lt;p&gt;A URL for an Amazon S3 bucket where you can review the configuration data. The URL is displayed only if the export succeeded.&lt;/p&gt;
-- Required parameter: exportId
-- Required parameter: exportStatus
-- Required parameter: statusMessage
-- Required parameter: exportRequestTime
function M.ExportInfo(exportId, exportRequestTime, exportStatus, statusMessage, configurationsDownloadUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportInfo")
	local t = { 
		["exportId"] = exportId,
		["exportRequestTime"] = exportRequestTime,
		["exportStatus"] = exportStatus,
		["statusMessage"] = statusMessage,
		["configurationsDownloadUrl"] = configurationsDownloadUrl,
	}
	M.AssertExportInfo(t)
	return t
end

local StartExportTaskResponse_keys = { "exportId" = true, nil }

function M.AssertStartExportTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExportTaskResponse to be of type 'table'")
	if struct["exportId"] then M.AssertConfigurationsExportId(struct["exportId"]) end
	for k,_ in pairs(struct) do
		assert(StartExportTaskResponse_keys[k], "StartExportTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExportTaskResponse
--  
-- @param exportId [ConfigurationsExportId] &lt;p&gt; A unique identifier used to query the status of an export request.&lt;/p&gt;
function M.StartExportTaskResponse(exportId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExportTaskResponse")
	local t = { 
		["exportId"] = exportId,
	}
	M.AssertStartExportTaskResponse(t)
	return t
end

local AssociateConfigurationItemsToApplicationResponse_keys = { nil }

function M.AssertAssociateConfigurationItemsToApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConfigurationItemsToApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociateConfigurationItemsToApplicationResponse_keys[k], "AssociateConfigurationItemsToApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConfigurationItemsToApplicationResponse
--  
function M.AssociateConfigurationItemsToApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConfigurationItemsToApplicationResponse")
	local t = { 
	}
	M.AssertAssociateConfigurationItemsToApplicationResponse(t)
	return t
end

local CreateTagsResponse_keys = { nil }

function M.AssertCreateTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateTagsResponse_keys[k], "CreateTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsResponse
--  
function M.CreateTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsResponse")
	local t = { 
	}
	M.AssertCreateTagsResponse(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The specified configuration ID was not located. Verify the configuration ID and try again.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;The specified configuration ID was not located. Verify the configuration ID and try again.&lt;/p&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local GetDiscoverySummaryResponse_keys = { "serversMappedtoTags" = true, "agentSummary" = true, "servers" = true, "applications" = true, "serversMappedToApplications" = true, "connectorSummary" = true, nil }

function M.AssertGetDiscoverySummaryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoverySummaryResponse to be of type 'table'")
	if struct["serversMappedtoTags"] then M.AssertLong(struct["serversMappedtoTags"]) end
	if struct["agentSummary"] then M.AssertCustomerAgentInfo(struct["agentSummary"]) end
	if struct["servers"] then M.AssertLong(struct["servers"]) end
	if struct["applications"] then M.AssertLong(struct["applications"]) end
	if struct["serversMappedToApplications"] then M.AssertLong(struct["serversMappedToApplications"]) end
	if struct["connectorSummary"] then M.AssertCustomerConnectorInfo(struct["connectorSummary"]) end
	for k,_ in pairs(struct) do
		assert(GetDiscoverySummaryResponse_keys[k], "GetDiscoverySummaryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoverySummaryResponse
--  
-- @param serversMappedtoTags [Long] &lt;p&gt;The number of servers mapped to tags.&lt;/p&gt;
-- @param agentSummary [CustomerAgentInfo] &lt;p&gt;Details about discovered agents, including agent status and health.&lt;/p&gt;
-- @param servers [Long] &lt;p&gt;The number of servers discovered.&lt;/p&gt;
-- @param applications [Long] &lt;p&gt;The number of applications discovered.&lt;/p&gt;
-- @param serversMappedToApplications [Long] &lt;p&gt;The number of servers mapped to applications.&lt;/p&gt;
-- @param connectorSummary [CustomerConnectorInfo] &lt;p&gt;Details about discovered connectors, including connector status and health.&lt;/p&gt;
function M.GetDiscoverySummaryResponse(serversMappedtoTags, agentSummary, servers, applications, serversMappedToApplications, connectorSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDiscoverySummaryResponse")
	local t = { 
		["serversMappedtoTags"] = serversMappedtoTags,
		["agentSummary"] = agentSummary,
		["servers"] = servers,
		["applications"] = applications,
		["serversMappedToApplications"] = serversMappedToApplications,
		["connectorSummary"] = connectorSummary,
	}
	M.AssertGetDiscoverySummaryResponse(t)
	return t
end

local DescribeExportConfigurationsResponse_keys = { "exportsInfo" = true, "nextToken" = true, nil }

function M.AssertDescribeExportConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportConfigurationsResponse to be of type 'table'")
	if struct["exportsInfo"] then M.AssertExportsInfo(struct["exportsInfo"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportConfigurationsResponse_keys[k], "DescribeExportConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportConfigurationsResponse
--  
-- @param exportsInfo [ExportsInfo] &lt;p&gt;Returns export details. When the status is complete, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A token to get the next set of results. For example, if you specify 100 IDs for &lt;code&gt;DescribeExportConfigurationsRequest$exportIds&lt;/code&gt; but set &lt;code&gt;DescribeExportConfigurationsRequest$maxResults&lt;/code&gt; to 10, you get results in a set of 10. Use the token in the query to get the next set of 10.&lt;/p&gt;
function M.DescribeExportConfigurationsResponse(exportsInfo, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportConfigurationsResponse")
	local t = { 
		["exportsInfo"] = exportsInfo,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeExportConfigurationsResponse(t)
	return t
end

local DescribeTagsResponse_keys = { "nextToken" = true, "tags" = true, nil }

function M.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["tags"] then M.AssertConfigurationTagSet(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsResponse_keys[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;The call returns a token. Use this token to get the next set of results.&lt;/p&gt;
-- @param tags [ConfigurationTagSet] &lt;p&gt;Depending on the input, this is a list of configuration items tagged with a specific tag, or a list of tags for a specific configuration item.&lt;/p&gt;
function M.DescribeTagsResponse(nextToken, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["tags"] = tags,
	}
	M.AssertDescribeTagsResponse(t)
	return t
end

local DescribeConfigurationsRequest_keys = { "configurationIds" = true, nil }

function M.AssertDescribeConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationsRequest to be of type 'table'")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["configurationIds"] then M.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationsRequest_keys[k], "DescribeConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationsRequest
--  
-- @param configurationIds [ConfigurationIdList] &lt;p&gt;One or more configuration IDs.&lt;/p&gt;
-- Required parameter: configurationIds
function M.DescribeConfigurationsRequest(configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationsRequest")
	local t = { 
		["configurationIds"] = configurationIds,
	}
	M.AssertDescribeConfigurationsRequest(t)
	return t
end

local GetDiscoverySummaryRequest_keys = { nil }

function M.AssertGetDiscoverySummaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDiscoverySummaryRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetDiscoverySummaryRequest_keys[k], "GetDiscoverySummaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDiscoverySummaryRequest
--  
function M.GetDiscoverySummaryRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDiscoverySummaryRequest")
	local t = { 
	}
	M.AssertGetDiscoverySummaryRequest(t)
	return t
end

local CustomerConnectorInfo_keys = { "shutdownConnectors" = true, "activeConnectors" = true, "unhealthyConnectors" = true, "blackListedConnectors" = true, "unknownConnectors" = true, "totalConnectors" = true, "healthyConnectors" = true, nil }

function M.AssertCustomerConnectorInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomerConnectorInfo to be of type 'table'")
	assert(struct["activeConnectors"], "Expected key activeConnectors to exist in table")
	assert(struct["healthyConnectors"], "Expected key healthyConnectors to exist in table")
	assert(struct["blackListedConnectors"], "Expected key blackListedConnectors to exist in table")
	assert(struct["shutdownConnectors"], "Expected key shutdownConnectors to exist in table")
	assert(struct["unhealthyConnectors"], "Expected key unhealthyConnectors to exist in table")
	assert(struct["totalConnectors"], "Expected key totalConnectors to exist in table")
	assert(struct["unknownConnectors"], "Expected key unknownConnectors to exist in table")
	if struct["shutdownConnectors"] then M.AssertInteger(struct["shutdownConnectors"]) end
	if struct["activeConnectors"] then M.AssertInteger(struct["activeConnectors"]) end
	if struct["unhealthyConnectors"] then M.AssertInteger(struct["unhealthyConnectors"]) end
	if struct["blackListedConnectors"] then M.AssertInteger(struct["blackListedConnectors"]) end
	if struct["unknownConnectors"] then M.AssertInteger(struct["unknownConnectors"]) end
	if struct["totalConnectors"] then M.AssertInteger(struct["totalConnectors"]) end
	if struct["healthyConnectors"] then M.AssertInteger(struct["healthyConnectors"]) end
	for k,_ in pairs(struct) do
		assert(CustomerConnectorInfo_keys[k], "CustomerConnectorInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomerConnectorInfo
-- &lt;p&gt;Inventory data for installed discovery connectors.&lt;/p&gt;
-- @param shutdownConnectors [Integer] &lt;p&gt;Number of discovery connectors with status SHUTDOWN,&lt;/p&gt;
-- @param activeConnectors [Integer] &lt;p&gt;Number of active discovery connectors.&lt;/p&gt;
-- @param unhealthyConnectors [Integer] &lt;p&gt;Number of unhealthy discovery connectors.&lt;/p&gt;
-- @param blackListedConnectors [Integer] &lt;p&gt;Number of blacklisted discovery connectors.&lt;/p&gt;
-- @param unknownConnectors [Integer] &lt;p&gt;Number of unknown discovery connectors.&lt;/p&gt;
-- @param totalConnectors [Integer] &lt;p&gt;Total number of discovery connectors.&lt;/p&gt;
-- @param healthyConnectors [Integer] &lt;p&gt;Number of healthy discovery connectors.&lt;/p&gt;
-- Required parameter: activeConnectors
-- Required parameter: healthyConnectors
-- Required parameter: blackListedConnectors
-- Required parameter: shutdownConnectors
-- Required parameter: unhealthyConnectors
-- Required parameter: totalConnectors
-- Required parameter: unknownConnectors
function M.CustomerConnectorInfo(shutdownConnectors, activeConnectors, unhealthyConnectors, blackListedConnectors, unknownConnectors, totalConnectors, healthyConnectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomerConnectorInfo")
	local t = { 
		["shutdownConnectors"] = shutdownConnectors,
		["activeConnectors"] = activeConnectors,
		["unhealthyConnectors"] = unhealthyConnectors,
		["blackListedConnectors"] = blackListedConnectors,
		["unknownConnectors"] = unknownConnectors,
		["totalConnectors"] = totalConnectors,
		["healthyConnectors"] = healthyConnectors,
	}
	M.AssertCustomerConnectorInfo(t)
	return t
end

local DescribeExportTasksRequest_keys = { "exportIds" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeExportTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksRequest to be of type 'table'")
	if struct["exportIds"] then M.AssertExportIds(struct["exportIds"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportTasksRequest_keys[k], "DescribeExportTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksRequest
--  
-- @param exportIds [ExportIds] &lt;p&gt;One or more unique identifiers used to query the status of an export request.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value returned from a previous paginated &lt;code&gt;DescribeExportTasks&lt;/code&gt; request where &lt;code&gt;maxResults&lt;/code&gt; was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the &lt;code&gt;nextToken&lt;/code&gt; value. This value is null when there are no more results to return.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of volume results returned by &lt;code&gt;DescribeExportTasks&lt;/code&gt; in paginated output. When this parameter is used, &lt;code&gt;DescribeExportTasks&lt;/code&gt; only returns &lt;code&gt;maxResults&lt;/code&gt; results in a single page along with a &lt;code&gt;nextToken&lt;/code&gt; response element.&lt;/p&gt;
function M.DescribeExportTasksRequest(exportIds, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksRequest")
	local t = { 
		["exportIds"] = exportIds,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeExportTasksRequest(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;One or more parameters are not valid. Verify the parameters and try again.&lt;/p&gt;
-- @param message [Message] &lt;p&gt;One or more parameters are not valid. Verify the parameters and try again.&lt;/p&gt;
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local CreateApplicationRequest_keys = { "name" = true, "description" = true, nil }

function M.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationRequest_keys[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
--  
-- @param name [String] &lt;p&gt;Name of the application to be created.&lt;/p&gt;
-- @param description [String] &lt;p&gt;Description of the application to be created.&lt;/p&gt;
-- Required parameter: name
function M.CreateApplicationRequest(name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationRequest")
	local t = { 
		["name"] = name,
		["description"] = description,
	}
	M.AssertCreateApplicationRequest(t)
	return t
end

local ConfigurationTag_keys = { "timeOfCreation" = true, "configurationId" = true, "value" = true, "key" = true, "configurationType" = true, nil }

function M.AssertConfigurationTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationTag to be of type 'table'")
	if struct["timeOfCreation"] then M.AssertTimeStamp(struct["timeOfCreation"]) end
	if struct["configurationId"] then M.AssertConfigurationId(struct["configurationId"]) end
	if struct["value"] then M.AssertTagValue(struct["value"]) end
	if struct["key"] then M.AssertTagKey(struct["key"]) end
	if struct["configurationType"] then M.AssertConfigurationItemType(struct["configurationType"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationTag_keys[k], "ConfigurationTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationTag
-- &lt;p&gt;Tags for a configuration item. Tags are metadata that help you categorize IT assets.&lt;/p&gt;
-- @param timeOfCreation [TimeStamp] &lt;p&gt;The time the configuration tag was created in Coordinated Universal Time (UTC).&lt;/p&gt;
-- @param configurationId [ConfigurationId] &lt;p&gt;The configuration ID for the item to tag. You can specify a list of keys and values.&lt;/p&gt;
-- @param value [TagValue] &lt;p&gt;A value on which to filter. For example &lt;i&gt;key = serverType&lt;/i&gt; and &lt;i&gt;value = web server&lt;/i&gt;.&lt;/p&gt;
-- @param key [TagKey] &lt;p&gt;A type of tag on which to filter. For example, &lt;i&gt;serverType&lt;/i&gt;.&lt;/p&gt;
-- @param configurationType [ConfigurationItemType] &lt;p&gt;A type of IT asset to tag.&lt;/p&gt;
function M.ConfigurationTag(timeOfCreation, configurationId, value, key, configurationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationTag")
	local t = { 
		["timeOfCreation"] = timeOfCreation,
		["configurationId"] = configurationId,
		["value"] = value,
		["key"] = key,
		["configurationType"] = configurationType,
	}
	M.AssertConfigurationTag(t)
	return t
end

local TagFilter_keys = { "values" = true, "name" = true, nil }

function M.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["values"], "Expected key values to exist in table")
	if struct["values"] then M.AssertFilterValues(struct["values"]) end
	if struct["name"] then M.AssertFilterName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(TagFilter_keys[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- &lt;p&gt;The tag filter. Valid names are: &lt;code&gt;tagKey&lt;/code&gt;, &lt;code&gt;tagValue&lt;/code&gt;, &lt;code&gt;configurationId&lt;/code&gt;.&lt;/p&gt;
-- @param values [FilterValues] &lt;p&gt;Values for the tag filter.&lt;/p&gt;
-- @param name [FilterName] &lt;p&gt;A name of the tag filter.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: values
function M.TagFilter(values, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["values"] = values,
		["name"] = name,
	}
	M.AssertTagFilter(t)
	return t
end

local CreateApplicationResponse_keys = { "configurationId" = true, nil }

function M.AssertCreateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationResponse to be of type 'table'")
	if struct["configurationId"] then M.AssertString(struct["configurationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationResponse_keys[k], "CreateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationResponse
--  
-- @param configurationId [String] &lt;p&gt;Configuration ID of an application to be created.&lt;/p&gt;
function M.CreateApplicationResponse(configurationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationResponse")
	local t = { 
		["configurationId"] = configurationId,
	}
	M.AssertCreateApplicationResponse(t)
	return t
end

local CustomerAgentInfo_keys = { "healthyAgents" = true, "unhealthyAgents" = true, "unknownAgents" = true, "activeAgents" = true, "shutdownAgents" = true, "totalAgents" = true, "blackListedAgents" = true, nil }

function M.AssertCustomerAgentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomerAgentInfo to be of type 'table'")
	assert(struct["activeAgents"], "Expected key activeAgents to exist in table")
	assert(struct["healthyAgents"], "Expected key healthyAgents to exist in table")
	assert(struct["blackListedAgents"], "Expected key blackListedAgents to exist in table")
	assert(struct["shutdownAgents"], "Expected key shutdownAgents to exist in table")
	assert(struct["unhealthyAgents"], "Expected key unhealthyAgents to exist in table")
	assert(struct["totalAgents"], "Expected key totalAgents to exist in table")
	assert(struct["unknownAgents"], "Expected key unknownAgents to exist in table")
	if struct["healthyAgents"] then M.AssertInteger(struct["healthyAgents"]) end
	if struct["unhealthyAgents"] then M.AssertInteger(struct["unhealthyAgents"]) end
	if struct["unknownAgents"] then M.AssertInteger(struct["unknownAgents"]) end
	if struct["activeAgents"] then M.AssertInteger(struct["activeAgents"]) end
	if struct["shutdownAgents"] then M.AssertInteger(struct["shutdownAgents"]) end
	if struct["totalAgents"] then M.AssertInteger(struct["totalAgents"]) end
	if struct["blackListedAgents"] then M.AssertInteger(struct["blackListedAgents"]) end
	for k,_ in pairs(struct) do
		assert(CustomerAgentInfo_keys[k], "CustomerAgentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomerAgentInfo
-- &lt;p&gt;Inventory data for installed discovery agents.&lt;/p&gt;
-- @param healthyAgents [Integer] &lt;p&gt;Number of healthy discovery agents&lt;/p&gt;
-- @param unhealthyAgents [Integer] &lt;p&gt;Number of unhealthy discovery agents.&lt;/p&gt;
-- @param unknownAgents [Integer] &lt;p&gt;Number of unknown discovery agents.&lt;/p&gt;
-- @param activeAgents [Integer] &lt;p&gt;Number of active discovery agents.&lt;/p&gt;
-- @param shutdownAgents [Integer] &lt;p&gt;Number of discovery agents with status SHUTDOWN.&lt;/p&gt;
-- @param totalAgents [Integer] &lt;p&gt;Total number of discovery agents.&lt;/p&gt;
-- @param blackListedAgents [Integer] &lt;p&gt;Number of blacklisted discovery agents.&lt;/p&gt;
-- Required parameter: activeAgents
-- Required parameter: healthyAgents
-- Required parameter: blackListedAgents
-- Required parameter: shutdownAgents
-- Required parameter: unhealthyAgents
-- Required parameter: totalAgents
-- Required parameter: unknownAgents
function M.CustomerAgentInfo(healthyAgents, unhealthyAgents, unknownAgents, activeAgents, shutdownAgents, totalAgents, blackListedAgents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomerAgentInfo")
	local t = { 
		["healthyAgents"] = healthyAgents,
		["unhealthyAgents"] = unhealthyAgents,
		["unknownAgents"] = unknownAgents,
		["activeAgents"] = activeAgents,
		["shutdownAgents"] = shutdownAgents,
		["totalAgents"] = totalAgents,
		["blackListedAgents"] = blackListedAgents,
	}
	M.AssertCustomerAgentInfo(t)
	return t
end

local DescribeExportConfigurationsRequest_keys = { "exportIds" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeExportConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportConfigurationsRequest to be of type 'table'")
	if struct["exportIds"] then M.AssertExportIds(struct["exportIds"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportConfigurationsRequest_keys[k], "DescribeExportConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportConfigurationsRequest
--  
-- @param exportIds [ExportIds] &lt;p&gt;A unique identifier that you can use to query the export status.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A token to get the next set of results. For example, if you specify 100 IDs for &lt;code&gt;DescribeExportConfigurationsRequest$exportIds&lt;/code&gt; but set &lt;code&gt;DescribeExportConfigurationsRequest$maxResults&lt;/code&gt; to 10, you get results in a set of 10. Use the token in the query to get the next set of 10.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of results that you want to display as a part of the query.&lt;/p&gt;
function M.DescribeExportConfigurationsRequest(exportIds, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportConfigurationsRequest")
	local t = { 
		["exportIds"] = exportIds,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeExportConfigurationsRequest(t)
	return t
end

local DisassociateConfigurationItemsFromApplicationRequest_keys = { "applicationConfigurationId" = true, "configurationIds" = true, nil }

function M.AssertDisassociateConfigurationItemsFromApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConfigurationItemsFromApplicationRequest to be of type 'table'")
	assert(struct["applicationConfigurationId"], "Expected key applicationConfigurationId to exist in table")
	assert(struct["configurationIds"], "Expected key configurationIds to exist in table")
	if struct["applicationConfigurationId"] then M.AssertApplicationId(struct["applicationConfigurationId"]) end
	if struct["configurationIds"] then M.AssertConfigurationIdList(struct["configurationIds"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateConfigurationItemsFromApplicationRequest_keys[k], "DisassociateConfigurationItemsFromApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConfigurationItemsFromApplicationRequest
--  
-- @param applicationConfigurationId [ApplicationId] &lt;p&gt;Configuration ID of an application from which each item is disassociated.&lt;/p&gt;
-- @param configurationIds [ConfigurationIdList] &lt;p&gt;Configuration ID of each item to be disassociated from an application.&lt;/p&gt;
-- Required parameter: applicationConfigurationId
-- Required parameter: configurationIds
function M.DisassociateConfigurationItemsFromApplicationRequest(applicationConfigurationId, configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConfigurationItemsFromApplicationRequest")
	local t = { 
		["applicationConfigurationId"] = applicationConfigurationId,
		["configurationIds"] = configurationIds,
	}
	M.AssertDisassociateConfigurationItemsFromApplicationRequest(t)
	return t
end

function M.AssertConfigurationsExportId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationsExportId to be of type 'string'")
end

--  
function M.ConfigurationsExportId(str)
	M.AssertConfigurationsExportId(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertAgentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentId to be of type 'string'")
end

--  
function M.AgentId(str)
	M.AssertAgentId(str)
	return str
end

function M.AssertorderString(str)
	assert(str)
	assert(type(str) == "string", "Expected orderString to be of type 'string'")
end

--  
function M.orderString(str)
	M.AssertorderString(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertConfigurationsDownloadUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationsDownloadUrl to be of type 'string'")
end

--  
function M.ConfigurationsDownloadUrl(str)
	M.AssertConfigurationsDownloadUrl(str)
	return str
end

function M.AssertConfigurationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationId to be of type 'string'")
end

--  
function M.ConfigurationId(str)
	M.AssertConfigurationId(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertExportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportStatus to be of type 'string'")
end

--  
function M.ExportStatus(str)
	M.AssertExportStatus(str)
	return str
end

function M.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
end

--  
function M.FilterValue(str)
	M.AssertFilterValue(str)
	return str
end

function M.AssertCondition(str)
	assert(str)
	assert(type(str) == "string", "Expected Condition to be of type 'string'")
end

--  
function M.Condition(str)
	M.AssertCondition(str)
	return str
end

function M.AssertAgentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentStatus to be of type 'string'")
end

--  
function M.AgentStatus(str)
	M.AssertAgentStatus(str)
	return str
end

function M.AssertConfigurationItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationItemType to be of type 'string'")
end

--  
function M.ConfigurationItemType(str)
	M.AssertConfigurationItemType(str)
	return str
end

function M.AssertExportStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportStatusMessage to be of type 'string'")
end

--  
function M.ExportStatusMessage(str)
	M.AssertExportStatusMessage(str)
	return str
end

function M.AssertExportDataFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDataFormat to be of type 'string'")
end

--  
function M.ExportDataFormat(str)
	M.AssertExportDataFormat(str)
	return str
end

function M.AssertFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterName to be of type 'string'")
end

--  
function M.FilterName(str)
	M.AssertFilterName(str)
	return str
end

function M.AssertApplicationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationId to be of type 'string'")
end

--  
function M.ApplicationId(str)
	M.AssertApplicationId(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertBoxedInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BoxedInteger(integer)
	M.AssertBoxedInteger(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected Configuration to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.Configuration(map)
	M.AssertConfiguration(map)
	return map
end

function M.AssertDescribeConfigurationsAttribute(map)
	assert(map)
	assert(type(map) == "table", "Expected DescribeConfigurationsAttribute to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.DescribeConfigurationsAttribute(map)
	M.AssertDescribeConfigurationsAttribute(map)
	return map
end

function M.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	M.AssertTimeStamp(timestamp)
	return timestamp
end

function M.AssertExportRequestTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExportRequestTime to be of type 'string'")
end

function M.ExportRequestTime(timestamp)
	M.AssertExportRequestTime(timestamp)
	return timestamp
end

function M.AssertApplicationIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplicationId(v)
	end
end

--  
-- List of ApplicationId objects
function M.ApplicationIdsList(list)
	M.AssertApplicationIdsList(list)
	return list
end

function M.AssertConfigurationIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationId(v)
	end
end

--  
-- List of ConfigurationId objects
function M.ConfigurationIdList(list)
	M.AssertConfigurationIdList(list)
	return list
end

function M.AssertExportDataFormats(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportDataFormats to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExportDataFormat(v)
	end
end

--  
-- List of ExportDataFormat objects
function M.ExportDataFormats(list)
	M.AssertExportDataFormats(list)
	return list
end

function M.AssertTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected TagSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagSet(list)
	M.AssertTagSet(list)
	return list
end

function M.AssertAgentNetworkInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentNetworkInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAgentNetworkInfo(v)
	end
end

--  
-- List of AgentNetworkInfo objects
function M.AgentNetworkInfoList(list)
	M.AssertAgentNetworkInfoList(list)
	return list
end

function M.AssertTagFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilters(list)
	M.AssertTagFilters(list)
	return list
end

function M.AssertExportsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportsInfo to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExportInfo(v)
	end
end

--  
-- List of ExportInfo objects
function M.ExportsInfo(list)
	M.AssertExportsInfo(list)
	return list
end

function M.AssertDescribeConfigurationsAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeConfigurationsAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDescribeConfigurationsAttribute(v)
	end
end

--  
-- List of DescribeConfigurationsAttribute objects
function M.DescribeConfigurationsAttributes(list)
	M.AssertDescribeConfigurationsAttributes(list)
	return list
end

function M.AssertAgentIds(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAgentId(v)
	end
end

--  
-- List of AgentId objects
function M.AgentIds(list)
	M.AssertAgentIds(list)
	return list
end

function M.AssertAgentConfigurationStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentConfigurationStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAgentConfigurationStatus(v)
	end
end

--  
-- List of AgentConfigurationStatus objects
function M.AgentConfigurationStatusList(list)
	M.AssertAgentConfigurationStatusList(list)
	return list
end

function M.AssertOrderByList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderByList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOrderByElement(v)
	end
end

--  
-- List of OrderByElement objects
function M.OrderByList(list)
	M.AssertOrderByList(list)
	return list
end

function M.AssertNeighborDetailsList(list)
	assert(list)
	assert(type(list) == "table", "Expected NeighborDetailsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNeighborConnectionDetail(v)
	end
end

--  
-- List of NeighborConnectionDetail objects
function M.NeighborDetailsList(list)
	M.AssertNeighborDetailsList(list)
	return list
end

function M.AssertFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValues(list)
	M.AssertFilterValues(list)
	return list
end

function M.AssertExportIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationsExportId(v)
	end
end

--  
-- List of ConfigurationsExportId objects
function M.ExportIds(list)
	M.AssertExportIds(list)
	return list
end

function M.AssertAgentsInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentsInfo to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAgentInfo(v)
	end
end

--  
-- List of AgentInfo objects
function M.AgentsInfo(list)
	M.AssertAgentsInfo(list)
	return list
end

function M.AssertConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected Configurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfiguration(v)
	end
end

--  
-- List of Configuration objects
function M.Configurations(list)
	M.AssertConfigurations(list)
	return list
end

function M.AssertConfigurationTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationTagSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationTag(v)
	end
end

--  
-- List of ConfigurationTag objects
function M.ConfigurationTagSet(list)
	M.AssertConfigurationTagSet(list)
	return list
end

function M.AssertFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected Filters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.Filters(list)
	M.AssertFilters(list)
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
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeExportConfigurations
-- @param DescribeExportConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExportConfigurationsAsync(DescribeExportConfigurationsRequest, cb)
	assert(DescribeExportConfigurationsRequest, "You must provide a DescribeExportConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeExportConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeExportConfigurationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDiscoverySummary
-- @param GetDiscoverySummaryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDiscoverySummaryAsync(GetDiscoverySummaryRequest, cb)
	assert(GetDiscoverySummaryRequest, "You must provide a GetDiscoverySummaryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.GetDiscoverySummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDiscoverySummaryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListConfigurations
-- @param ListConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListConfigurationsAsync(ListConfigurationsRequest, cb)
	assert(ListConfigurationsRequest, "You must provide a ListConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListConfigurationsRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeExportTasks
-- @param DescribeExportTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExportTasksAsync(DescribeExportTasksRequest, cb)
	assert(DescribeExportTasksRequest, "You must provide a DescribeExportTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeExportTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeExportTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateConfigurationItemsFromApplication
-- @param DisassociateConfigurationItemsFromApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateConfigurationItemsFromApplicationAsync(DisassociateConfigurationItemsFromApplicationRequest, cb)
	assert(DisassociateConfigurationItemsFromApplicationRequest, "You must provide a DisassociateConfigurationItemsFromApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DisassociateConfigurationItemsFromApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateConfigurationItemsFromApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartDataCollectionByAgentIds
-- @param StartDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartDataCollectionByAgentIdsAsync(StartDataCollectionByAgentIdsRequest, cb)
	assert(StartDataCollectionByAgentIdsRequest, "You must provide a StartDataCollectionByAgentIdsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartDataCollectionByAgentIds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartDataCollectionByAgentIdsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ExportConfigurations
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.ExportConfigurationsAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ExportConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApplication
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListServerNeighbors
-- @param ListServerNeighborsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServerNeighborsAsync(ListServerNeighborsRequest, cb)
	assert(ListServerNeighborsRequest, "You must provide a ListServerNeighborsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListServerNeighbors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListServerNeighborsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopDataCollectionByAgentIds
-- @param StopDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopDataCollectionByAgentIdsAsync(StopDataCollectionByAgentIdsRequest, cb)
	assert(StopDataCollectionByAgentIdsRequest, "You must provide a StopDataCollectionByAgentIdsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StopDataCollectionByAgentIds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopDataCollectionByAgentIdsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAgents
-- @param DescribeAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAgentsAsync(DescribeAgentsRequest, cb)
	assert(DescribeAgentsRequest, "You must provide a DescribeAgentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAgentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigurations
-- @param DescribeConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationsAsync(DescribeConfigurationsRequest, cb)
	assert(DescribeConfigurationsRequest, "You must provide a DescribeConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigurationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartExportTask
-- @param StartExportTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartExportTaskAsync(StartExportTaskRequest, cb)
	assert(StartExportTaskRequest, "You must provide a StartExportTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartExportTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartExportTaskRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplications
-- @param DeleteApplicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationsAsync(DeleteApplicationsRequest, cb)
	assert(DeleteApplicationsRequest, "You must provide a DeleteApplicationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateConfigurationItemsToApplication
-- @param AssociateConfigurationItemsToApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateConfigurationItemsToApplicationAsync(AssociateConfigurationItemsToApplicationRequest, cb)
	assert(AssociateConfigurationItemsToApplicationRequest, "You must provide a AssociateConfigurationItemsToApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.AssociateConfigurationItemsToApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateConfigurationItemsToApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApplication
-- @param CreateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationRequest, cb)
	assert(CreateApplicationRequest, "You must provide a CreateApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
