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
function M.DisassociateConfigurationItemsFromApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConfigurationItemsFromApplicationResponse")
	local t = { 
	}
	asserts.AssertDisassociateConfigurationItemsFromApplicationResponse(t)
	return t
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
-- @param _configurations [DescribeConfigurationsAttributes] <p>A key in the response map. The value is an array of data.</p>
function M.DescribeConfigurationsResponse(_configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationsResponse")
	local t = { 
		["configurations"] = _configurations,
	}
	asserts.AssertDescribeConfigurationsResponse(t)
	return t
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
-- @param _version [String] <p>The agent or connector version.</p>
-- @param _connectorId [String] <p>The ID of the connector.</p>
-- @param _agentType [String] <p>Type of agent.</p>
-- @param _hostName [String] <p>The name of the host where the agent or connector resides. The host can be a server or virtual machine.</p>
-- @param _collectionStatus [String] <p>Status of the collection process for an agent or connector.</p>
-- @param _agentNetworkInfoList [AgentNetworkInfoList] <p>Network details about the host where the agent or connector resides.</p>
-- @param _health [AgentStatus] <p>The health of the agent or connector.</p>
-- @param _agentId [AgentId] <p>The agent or connector ID.</p>
-- @param _registeredTime [String] <p>Agent's first registration timestamp in UTC.</p>
-- @param _lastHealthPingTime [String] <p>Time since agent or connector health was reported.</p>
function M.AgentInfo(_version, _connectorId, _agentType, _hostName, _collectionStatus, _agentNetworkInfoList, _health, _agentId, _registeredTime, _lastHealthPingTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentInfo")
	local t = { 
		["version"] = _version,
		["connectorId"] = _connectorId,
		["agentType"] = _agentType,
		["hostName"] = _hostName,
		["collectionStatus"] = _collectionStatus,
		["agentNetworkInfoList"] = _agentNetworkInfoList,
		["health"] = _health,
		["agentId"] = _agentId,
		["registeredTime"] = _registeredTime,
		["lastHealthPingTime"] = _lastHealthPingTime,
	}
	asserts.AssertAgentInfo(t)
	return t
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
-- @param _nextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results.</p>
-- @param _maxResults [Integer] <p>The total number of items to return in a single page of output. The maximum value is 100.</p>
-- @param _filters [TagFilters] <p>You can filter the list using a <i>key</i>-<i>value</i> format. You can separate these items by using logical operators. Allowed filters include <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
function M.DescribeTagsRequest(_nextToken, _maxResults, _filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["filters"] = _filters,
	}
	asserts.AssertDescribeTagsRequest(t)
	return t
end

keys.OperationNotPermittedException = { ["message"] = true, nil }

function asserts.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedException[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- <p>This operation is not permitted.</p>
-- @param _message [Message] 
function M.OperationNotPermittedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOperationNotPermittedException(t)
	return t
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
-- @param _configurationId [ApplicationId] <p>Configuration ID of the application to be updated.</p>
-- @param _name [String] <p>New name of the application to be updated.</p>
-- @param _description [String] <p>New description of the application to be updated.</p>
-- Required parameter: configurationId
function M.UpdateApplicationRequest(_configurationId, _name, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationRequest")
	local t = { 
		["configurationId"] = _configurationId,
		["name"] = _name,
		["description"] = _description,
	}
	asserts.AssertUpdateApplicationRequest(t)
	return t
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
-- @param _macAddress [String] <p>The MAC address for the host where the agent/connector resides.</p>
-- @param _ipAddress [String] <p>The IP address for the host where the agent/connector resides.</p>
function M.AgentNetworkInfo(_macAddress, _ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentNetworkInfo")
	local t = { 
		["macAddress"] = _macAddress,
		["ipAddress"] = _ipAddress,
	}
	asserts.AssertAgentNetworkInfo(t)
	return t
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
-- @param _configurationIds [ApplicationIdsList] <p>Configuration ID of an application to be deleted.</p>
-- Required parameter: configurationIds
function M.DeleteApplicationsRequest(_configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationsRequest")
	local t = { 
		["configurationIds"] = _configurationIds,
	}
	asserts.AssertDeleteApplicationsRequest(t)
	return t
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
-- @param _configurationIds [ConfigurationIdList] <p>A list of configuration items that you want to tag.</p>
-- @param _tags [TagSet] <p>Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p>
-- Required parameter: configurationIds
-- Required parameter: tags
function M.CreateTagsRequest(_configurationIds, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsRequest")
	local t = { 
		["configurationIds"] = _configurationIds,
		["tags"] = _tags,
	}
	asserts.AssertCreateTagsRequest(t)
	return t
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
-- @param _nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if your call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
-- @param _configurations [Configurations] <p>Returns configuration details, including the configuration ID, attribute names, and attribute values.</p>
function M.ListConfigurationsResponse(_nextToken, _configurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["configurations"] = _configurations,
	}
	asserts.AssertListConfigurationsResponse(t)
	return t
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
-- @param _value [TagValue] <p>A value for a tag key on which to filter.</p>
-- @param _key [TagKey] <p>The type of tag on which to filter.</p>
-- Required parameter: key
-- Required parameter: value
function M.Tag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- @param _maxResults [Integer] <p>The total number of agents/Connectors to return in a single page of output. The maximum value is 100.</p>
-- @param _filters [Filters] <p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{"key": "collectionStatus", "value": "STARTED"}</code> </p>
-- @param _agentIds [AgentIds] <p>The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.</p>
function M.DescribeAgentsRequest(_nextToken, _maxResults, _filters, _agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["filters"] = _filters,
		["agentIds"] = _agentIds,
	}
	asserts.AssertDescribeAgentsRequest(t)
	return t
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
-- @param _orderBy [OrderByList] <p>Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a>.</p>
-- @param _nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- @param _maxResults [Integer] <p>The total number of items to return. The maximum value is 100.</p>
-- @param _filters [Filters] <p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p> <p>For a complete list of filter options and guidance about using them with this action, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations">Querying Discovered Configuration Items</a>. </p>
-- @param _configurationType [ConfigurationItemType] <p>A valid configuration identified by Application Discovery Service. </p>
-- Required parameter: configurationType
function M.ListConfigurationsRequest(_orderBy, _nextToken, _maxResults, _filters, _configurationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationsRequest")
	local t = { 
		["orderBy"] = _orderBy,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["filters"] = _filters,
		["configurationType"] = _configurationType,
	}
	asserts.AssertListConfigurationsRequest(t)
	return t
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
-- @param _agentsInfo [AgentsInfo] <p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.</p>
-- @param _nextToken [NextToken] <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
function M.DescribeAgentsResponse(_agentsInfo, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentsResponse")
	local t = { 
		["agentsInfo"] = _agentsInfo,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeAgentsResponse(t)
	return t
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
-- @param _exportId [ConfigurationsExportId] <p>A unique identifier that you can use to query the export status.</p>
function M.ExportConfigurationsResponse(_exportId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportConfigurationsResponse")
	local t = { 
		["exportId"] = _exportId,
	}
	asserts.AssertExportConfigurationsResponse(t)
	return t
end

keys.ServerInternalErrorException = { ["message"] = true, nil }

function asserts.AssertServerInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerInternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerInternalErrorException[k], "ServerInternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerInternalErrorException
-- <p>The server experienced an internal error. Try again.</p>
-- @param _message [Message] 
function M.ServerInternalErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerInternalErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServerInternalErrorException(t)
	return t
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
-- @param _agentIds [AgentIds] <p>The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the <i>Description</i> field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows <code>Failed</code> in the <i>Description</i> field.</p>
-- Required parameter: agentIds
function M.StartDataCollectionByAgentIdsRequest(_agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDataCollectionByAgentIdsRequest")
	local t = { 
		["agentIds"] = _agentIds,
	}
	asserts.AssertStartDataCollectionByAgentIdsRequest(t)
	return t
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
function M.DeleteApplicationsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationsResponse")
	local t = { 
	}
	asserts.AssertDeleteApplicationsResponse(t)
	return t
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
-- @param _applicationConfigurationId [ApplicationId] <p>The configuration ID of an application with which items are to be associated.</p>
-- @param _configurationIds [ConfigurationIdList] <p>The ID of each configuration item to be associated with an application.</p>
-- Required parameter: applicationConfigurationId
-- Required parameter: configurationIds
function M.AssociateConfigurationItemsToApplicationRequest(_applicationConfigurationId, _configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConfigurationItemsToApplicationRequest")
	local t = { 
		["applicationConfigurationId"] = _applicationConfigurationId,
		["configurationIds"] = _configurationIds,
	}
	asserts.AssertAssociateConfigurationItemsToApplicationRequest(t)
	return t
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
-- @param _neighbors [NeighborDetailsList] <p>List of distinct servers that are one hop away from the given server.</p>
-- @param _nextToken [String] <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>
-- @param _knownDependencyCount [Long] <p>Count of distinct servers that are one hop away from the given server.</p>
-- Required parameter: neighbors
function M.ListServerNeighborsResponse(_neighbors, _nextToken, _knownDependencyCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerNeighborsResponse")
	local t = { 
		["neighbors"] = _neighbors,
		["nextToken"] = _nextToken,
		["knownDependencyCount"] = _knownDependencyCount,
	}
	asserts.AssertListServerNeighborsResponse(t)
	return t
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
-- @param _agentsConfigurationStatus [AgentConfigurationStatusList] <p>Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>
function M.StopDataCollectionByAgentIdsResponse(_agentsConfigurationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDataCollectionByAgentIdsResponse")
	local t = { 
		["agentsConfigurationStatus"] = _agentsConfigurationStatus,
	}
	asserts.AssertStopDataCollectionByAgentIdsResponse(t)
	return t
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
-- @param _connectionsCount [Long] <p>The number of open network connections with the neighboring server.</p>
-- @param _destinationServerId [ConfigurationId] <p>The ID of the server that accepted the network connection.</p>
-- @param _sourceServerId [ConfigurationId] <p>The ID of the server that opened the network connection.</p>
-- @param _transportProtocol [String] <p>The network protocol used for the connection.</p>
-- @param _destinationPort [BoxedInteger] <p>The destination network port for the connection.</p>
-- Required parameter: sourceServerId
-- Required parameter: destinationServerId
-- Required parameter: connectionsCount
function M.NeighborConnectionDetail(_connectionsCount, _destinationServerId, _sourceServerId, _transportProtocol, _destinationPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NeighborConnectionDetail")
	local t = { 
		["connectionsCount"] = _connectionsCount,
		["destinationServerId"] = _destinationServerId,
		["sourceServerId"] = _sourceServerId,
		["transportProtocol"] = _transportProtocol,
		["destinationPort"] = _destinationPort,
	}
	asserts.AssertNeighborConnectionDetail(t)
	return t
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
-- @param _agentsConfigurationStatus [AgentConfigurationStatusList] <p>Information about agents or the connector that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>
function M.StartDataCollectionByAgentIdsResponse(_agentsConfigurationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDataCollectionByAgentIdsResponse")
	local t = { 
		["agentsConfigurationStatus"] = _agentsConfigurationStatus,
	}
	asserts.AssertStartDataCollectionByAgentIdsResponse(t)
	return t
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
function M.DeleteTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsResponse")
	local t = { 
	}
	asserts.AssertDeleteTagsResponse(t)
	return t
end

keys.StartExportTaskRequest = { ["exportDataFormat"] = true, nil }

function asserts.AssertStartExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExportTaskRequest to be of type 'table'")
	if struct["exportDataFormat"] then asserts.AssertExportDataFormats(struct["exportDataFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartExportTaskRequest[k], "StartExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExportTaskRequest
--  
-- @param _exportDataFormat [ExportDataFormats] <p>The file format for the returned export data. Default value is <code>CSV</code>.</p>
function M.StartExportTaskRequest(_exportDataFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExportTaskRequest")
	local t = { 
		["exportDataFormat"] = _exportDataFormat,
	}
	asserts.AssertStartExportTaskRequest(t)
	return t
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
-- @param _exportsInfo [ExportsInfo] <p>Contains one or more sets of export request details. When the status of a request is <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.</p>
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeExportTasks</code> request. When the results of a <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.</p>
function M.DescribeExportTasksResponse(_exportsInfo, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksResponse")
	local t = { 
		["exportsInfo"] = _exportsInfo,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeExportTasksResponse(t)
	return t
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
-- @param _configurationIds [ConfigurationIdList] <p>A list of configuration items with tags that you want to delete.</p>
-- @param _tags [TagSet] <p>Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{"key": "serverType", "value": "webServer"}</code> </p>
-- Required parameter: configurationIds
function M.DeleteTagsRequest(_configurationIds, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsRequest")
	local t = { 
		["configurationIds"] = _configurationIds,
		["tags"] = _tags,
	}
	asserts.AssertDeleteTagsRequest(t)
	return t
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
-- @param _operationSucceeded [Boolean] <p>Information about the status of the <code>StartDataCollection</code> and <code>StopDataCollection</code> operations. The system has recorded the data collection operation. The agent/connector receives this command the next time it polls for a new command. </p>
-- @param _agentId [String] <p>The agent/connector ID.</p>
-- @param _description [String] <p>A description of the operation performed.</p>
function M.AgentConfigurationStatus(_operationSucceeded, _agentId, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentConfigurationStatus")
	local t = { 
		["operationSucceeded"] = _operationSucceeded,
		["agentId"] = _agentId,
		["description"] = _description,
	}
	asserts.AssertAgentConfigurationStatus(t)
	return t
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
function M.UpdateApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationResponse")
	local t = { 
	}
	asserts.AssertUpdateApplicationResponse(t)
	return t
end

keys.AuthorizationErrorException = { ["message"] = true, nil }

function asserts.AssertAuthorizationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationErrorException[k], "AuthorizationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationErrorException
-- <p>The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.</p>
-- @param _message [Message] 
function M.AuthorizationErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAuthorizationErrorException(t)
	return t
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
-- @param _fieldName [String] <p>The field on which to order.</p>
-- @param _sortOrder [orderString] <p>Ordering direction.</p>
-- Required parameter: fieldName
function M.OrderByElement(_fieldName, _sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderByElement")
	local t = { 
		["fieldName"] = _fieldName,
		["sortOrder"] = _sortOrder,
	}
	asserts.AssertOrderByElement(t)
	return t
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
-- @param _nextToken [String] <p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>
-- @param _configurationId [ConfigurationId] <p>Configuration ID of the server for which neighbors are being listed.</p>
-- @param _portInformationNeeded [Boolean] <p>Flag to indicate if port and protocol information is needed as part of the response.</p>
-- @param _maxResults [Integer] <p>Maximum number of results to return in a single page of output.</p>
-- @param _neighborConfigurationIds [ConfigurationIdList] <p>List of configuration IDs to test for one-hop-away.</p>
-- Required parameter: configurationId
function M.ListServerNeighborsRequest(_nextToken, _configurationId, _portInformationNeeded, _maxResults, _neighborConfigurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerNeighborsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["configurationId"] = _configurationId,
		["portInformationNeeded"] = _portInformationNeeded,
		["maxResults"] = _maxResults,
		["neighborConfigurationIds"] = _neighborConfigurationIds,
	}
	asserts.AssertListServerNeighborsRequest(t)
	return t
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
-- @param _agentIds [AgentIds] <p>The IDs of the agents or connectors from which to stop collecting data.</p>
-- Required parameter: agentIds
function M.StopDataCollectionByAgentIdsRequest(_agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDataCollectionByAgentIdsRequest")
	local t = { 
		["agentIds"] = _agentIds,
	}
	asserts.AssertStopDataCollectionByAgentIdsRequest(t)
	return t
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
-- @param _values [FilterValues] <p>A string value on which to filter. For example, if you choose the <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code> for the value.</p>
-- @param _name [String] <p>The name of the filter.</p>
-- @param _condition [Condition] <p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as though concatenated by <i>AND</i>. If you specify multiple values for a particular filter, the system differentiates the values using <i>OR</i>. Calling either <i>DescribeConfigurations</i> or <i>ListConfigurations</i> returns attributes of matching configuration items.</p>
-- Required parameter: name
-- Required parameter: values
-- Required parameter: condition
function M.Filter(_values, _name, _condition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Filter")
	local t = { 
		["values"] = _values,
		["name"] = _name,
		["condition"] = _condition,
	}
	asserts.AssertFilter(t)
	return t
end

keys.InvalidParameterValueException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.</p>
-- @param _message [Message] 
function M.InvalidParameterValueException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
end

keys.ExportInfo = { ["exportId"] = true, ["exportRequestTime"] = true, ["exportStatus"] = true, ["statusMessage"] = true, ["configurationsDownloadUrl"] = true, nil }

function asserts.AssertExportInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportInfo to be of type 'table'")
	assert(struct["exportId"], "Expected key exportId to exist in table")
	assert(struct["exportStatus"], "Expected key exportStatus to exist in table")
	assert(struct["statusMessage"], "Expected key statusMessage to exist in table")
	assert(struct["exportRequestTime"], "Expected key exportRequestTime to exist in table")
	if struct["exportId"] then asserts.AssertConfigurationsExportId(struct["exportId"]) end
	if struct["exportRequestTime"] then asserts.AssertExportRequestTime(struct["exportRequestTime"]) end
	if struct["exportStatus"] then asserts.AssertExportStatus(struct["exportStatus"]) end
	if struct["statusMessage"] then asserts.AssertExportStatusMessage(struct["statusMessage"]) end
	if struct["configurationsDownloadUrl"] then asserts.AssertConfigurationsDownloadUrl(struct["configurationsDownloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportInfo[k], "ExportInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportInfo
-- <p>Information regarding the export status of the discovered data. The value is an array of objects.</p>
-- @param _exportId [ConfigurationsExportId] <p>A unique identifier that you can use to query the export.</p>
-- @param _exportRequestTime [ExportRequestTime] <p>The time that the configuration data export was initiated.</p>
-- @param _exportStatus [ExportStatus] <p>The status of the configuration data export. The status can succeed, fail, or be in-progress.</p>
-- @param _statusMessage [ExportStatusMessage] <p>Helpful status messages for API callers. For example: Too many exports in the last 6 hours. Export in progress. Export was successful.</p>
-- @param _configurationsDownloadUrl [ConfigurationsDownloadUrl] <p>A URL for an Amazon S3 bucket where you can review the configuration data. The URL is displayed only if the export succeeded.</p>
-- Required parameter: exportId
-- Required parameter: exportStatus
-- Required parameter: statusMessage
-- Required parameter: exportRequestTime
function M.ExportInfo(_exportId, _exportRequestTime, _exportStatus, _statusMessage, _configurationsDownloadUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportInfo")
	local t = { 
		["exportId"] = _exportId,
		["exportRequestTime"] = _exportRequestTime,
		["exportStatus"] = _exportStatus,
		["statusMessage"] = _statusMessage,
		["configurationsDownloadUrl"] = _configurationsDownloadUrl,
	}
	asserts.AssertExportInfo(t)
	return t
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
-- @param _exportId [ConfigurationsExportId] <p> A unique identifier used to query the status of an export request.</p>
function M.StartExportTaskResponse(_exportId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExportTaskResponse")
	local t = { 
		["exportId"] = _exportId,
	}
	asserts.AssertStartExportTaskResponse(t)
	return t
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
function M.AssociateConfigurationItemsToApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConfigurationItemsToApplicationResponse")
	local t = { 
	}
	asserts.AssertAssociateConfigurationItemsToApplicationResponse(t)
	return t
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
function M.CreateTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsResponse")
	local t = { 
	}
	asserts.AssertCreateTagsResponse(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified configuration ID was not located. Verify the configuration ID and try again.</p>
-- @param _message [Message] 
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- @param _serversMappedtoTags [Long] <p>The number of servers mapped to tags.</p>
-- @param _agentSummary [CustomerAgentInfo] <p>Details about discovered agents, including agent status and health.</p>
-- @param _servers [Long] <p>The number of servers discovered.</p>
-- @param _applications [Long] <p>The number of applications discovered.</p>
-- @param _serversMappedToApplications [Long] <p>The number of servers mapped to applications.</p>
-- @param _connectorSummary [CustomerConnectorInfo] <p>Details about discovered connectors, including connector status and health.</p>
function M.GetDiscoverySummaryResponse(_serversMappedtoTags, _agentSummary, _servers, _applications, _serversMappedToApplications, _connectorSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDiscoverySummaryResponse")
	local t = { 
		["serversMappedtoTags"] = _serversMappedtoTags,
		["agentSummary"] = _agentSummary,
		["servers"] = _servers,
		["applications"] = _applications,
		["serversMappedToApplications"] = _serversMappedToApplications,
		["connectorSummary"] = _connectorSummary,
	}
	asserts.AssertGetDiscoverySummaryResponse(t)
	return t
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
-- @param _exportsInfo [ExportsInfo] <p>Returns export details. When the status is complete, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.</p>
-- @param _nextToken [NextToken] <p>A token to get the next set of results. For example, if you specify 100 IDs for <code>DescribeExportConfigurationsRequest$exportIds</code> but set <code>DescribeExportConfigurationsRequest$maxResults</code> to 10, you get results in a set of 10. Use the token in the query to get the next set of 10.</p>
function M.DescribeExportConfigurationsResponse(_exportsInfo, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportConfigurationsResponse")
	local t = { 
		["exportsInfo"] = _exportsInfo,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeExportConfigurationsResponse(t)
	return t
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
-- @param _nextToken [NextToken] <p>The call returns a token. Use this token to get the next set of results.</p>
-- @param _tags [ConfigurationTagSet] <p>Depending on the input, this is a list of configuration items tagged with a specific tag, or a list of tags for a specific configuration item.</p>
function M.DescribeTagsResponse(_nextToken, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["tags"] = _tags,
	}
	asserts.AssertDescribeTagsResponse(t)
	return t
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
-- @param _configurationIds [ConfigurationIdList] <p>One or more configuration IDs.</p>
-- Required parameter: configurationIds
function M.DescribeConfigurationsRequest(_configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationsRequest")
	local t = { 
		["configurationIds"] = _configurationIds,
	}
	asserts.AssertDescribeConfigurationsRequest(t)
	return t
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
function M.GetDiscoverySummaryRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDiscoverySummaryRequest")
	local t = { 
	}
	asserts.AssertGetDiscoverySummaryRequest(t)
	return t
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
-- @param _shutdownConnectors [Integer] <p>Number of discovery connectors with status SHUTDOWN,</p>
-- @param _activeConnectors [Integer] <p>Number of active discovery connectors.</p>
-- @param _unhealthyConnectors [Integer] <p>Number of unhealthy discovery connectors.</p>
-- @param _blackListedConnectors [Integer] <p>Number of blacklisted discovery connectors.</p>
-- @param _unknownConnectors [Integer] <p>Number of unknown discovery connectors.</p>
-- @param _totalConnectors [Integer] <p>Total number of discovery connectors.</p>
-- @param _healthyConnectors [Integer] <p>Number of healthy discovery connectors.</p>
-- Required parameter: activeConnectors
-- Required parameter: healthyConnectors
-- Required parameter: blackListedConnectors
-- Required parameter: shutdownConnectors
-- Required parameter: unhealthyConnectors
-- Required parameter: totalConnectors
-- Required parameter: unknownConnectors
function M.CustomerConnectorInfo(_shutdownConnectors, _activeConnectors, _unhealthyConnectors, _blackListedConnectors, _unknownConnectors, _totalConnectors, _healthyConnectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomerConnectorInfo")
	local t = { 
		["shutdownConnectors"] = _shutdownConnectors,
		["activeConnectors"] = _activeConnectors,
		["unhealthyConnectors"] = _unhealthyConnectors,
		["blackListedConnectors"] = _blackListedConnectors,
		["unknownConnectors"] = _unknownConnectors,
		["totalConnectors"] = _totalConnectors,
		["healthyConnectors"] = _healthyConnectors,
	}
	asserts.AssertCustomerConnectorInfo(t)
	return t
end

keys.DescribeExportTasksRequest = { ["exportIds"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeExportTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksRequest to be of type 'table'")
	if struct["exportIds"] then asserts.AssertExportIds(struct["exportIds"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportTasksRequest[k], "DescribeExportTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksRequest
--  
-- @param _exportIds [ExportIds] <p>One or more unique identifiers used to query the status of an export request.</p>
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
-- @param _maxResults [Integer] <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element.</p>
function M.DescribeExportTasksRequest(_exportIds, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksRequest")
	local t = { 
		["exportIds"] = _exportIds,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeExportTasksRequest(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters are not valid. Verify the parameters and try again.</p>
-- @param _message [Message] 
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
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
-- @param _name [String] <p>Name of the application to be created.</p>
-- @param _description [String] <p>Description of the application to be created.</p>
-- Required parameter: name
function M.CreateApplicationRequest(_name, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationRequest")
	local t = { 
		["name"] = _name,
		["description"] = _description,
	}
	asserts.AssertCreateApplicationRequest(t)
	return t
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
-- @param _timeOfCreation [TimeStamp] <p>The time the configuration tag was created in Coordinated Universal Time (UTC).</p>
-- @param _configurationId [ConfigurationId] <p>The configuration ID for the item to tag. You can specify a list of keys and values.</p>
-- @param _value [TagValue] <p>A value on which to filter. For example <i>key = serverType</i> and <i>value = web server</i>.</p>
-- @param _key [TagKey] <p>A type of tag on which to filter. For example, <i>serverType</i>.</p>
-- @param _configurationType [ConfigurationItemType] <p>A type of IT asset to tag.</p>
function M.ConfigurationTag(_timeOfCreation, _configurationId, _value, _key, _configurationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationTag")
	local t = { 
		["timeOfCreation"] = _timeOfCreation,
		["configurationId"] = _configurationId,
		["value"] = _value,
		["key"] = _key,
		["configurationType"] = _configurationType,
	}
	asserts.AssertConfigurationTag(t)
	return t
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
-- @param _values [FilterValues] <p>Values for the tag filter.</p>
-- @param _name [FilterName] <p>A name of the tag filter.</p>
-- Required parameter: name
-- Required parameter: values
function M.TagFilter(_values, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["values"] = _values,
		["name"] = _name,
	}
	asserts.AssertTagFilter(t)
	return t
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
-- @param _configurationId [String] <p>Configuration ID of an application to be created.</p>
function M.CreateApplicationResponse(_configurationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationResponse")
	local t = { 
		["configurationId"] = _configurationId,
	}
	asserts.AssertCreateApplicationResponse(t)
	return t
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
-- @param _healthyAgents [Integer] <p>Number of healthy discovery agents</p>
-- @param _unhealthyAgents [Integer] <p>Number of unhealthy discovery agents.</p>
-- @param _unknownAgents [Integer] <p>Number of unknown discovery agents.</p>
-- @param _activeAgents [Integer] <p>Number of active discovery agents.</p>
-- @param _shutdownAgents [Integer] <p>Number of discovery agents with status SHUTDOWN.</p>
-- @param _totalAgents [Integer] <p>Total number of discovery agents.</p>
-- @param _blackListedAgents [Integer] <p>Number of blacklisted discovery agents.</p>
-- Required parameter: activeAgents
-- Required parameter: healthyAgents
-- Required parameter: blackListedAgents
-- Required parameter: shutdownAgents
-- Required parameter: unhealthyAgents
-- Required parameter: totalAgents
-- Required parameter: unknownAgents
function M.CustomerAgentInfo(_healthyAgents, _unhealthyAgents, _unknownAgents, _activeAgents, _shutdownAgents, _totalAgents, _blackListedAgents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomerAgentInfo")
	local t = { 
		["healthyAgents"] = _healthyAgents,
		["unhealthyAgents"] = _unhealthyAgents,
		["unknownAgents"] = _unknownAgents,
		["activeAgents"] = _activeAgents,
		["shutdownAgents"] = _shutdownAgents,
		["totalAgents"] = _totalAgents,
		["blackListedAgents"] = _blackListedAgents,
	}
	asserts.AssertCustomerAgentInfo(t)
	return t
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
-- @param _exportIds [ExportIds] <p>A unique identifier that you can use to query the export status.</p>
-- @param _nextToken [NextToken] <p>A token to get the next set of results. For example, if you specify 100 IDs for <code>DescribeExportConfigurationsRequest$exportIds</code> but set <code>DescribeExportConfigurationsRequest$maxResults</code> to 10, you get results in a set of 10. Use the token in the query to get the next set of 10.</p>
-- @param _maxResults [Integer] <p>The maximum number of results that you want to display as a part of the query.</p>
function M.DescribeExportConfigurationsRequest(_exportIds, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportConfigurationsRequest")
	local t = { 
		["exportIds"] = _exportIds,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeExportConfigurationsRequest(t)
	return t
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
-- @param _applicationConfigurationId [ApplicationId] <p>Configuration ID of an application from which each item is disassociated.</p>
-- @param _configurationIds [ConfigurationIdList] <p>Configuration ID of each item to be disassociated from an application.</p>
-- Required parameter: applicationConfigurationId
-- Required parameter: configurationIds
function M.DisassociateConfigurationItemsFromApplicationRequest(_applicationConfigurationId, _configurationIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConfigurationItemsFromApplicationRequest")
	local t = { 
		["applicationConfigurationId"] = _applicationConfigurationId,
		["configurationIds"] = _configurationIds,
	}
	asserts.AssertDisassociateConfigurationItemsFromApplicationRequest(t)
	return t
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

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
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

function asserts.AssertApplicationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationId to be of type 'string'")
end

--  
function M.ApplicationId(str)
	asserts.AssertApplicationId(str)
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
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsRequest, cb)
	assert(DeleteTagsRequest, "You must provide a DeleteTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDiscoverySummary asynchronously, invoking a callback when done
-- @param GetDiscoverySummaryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDiscoverySummaryAsync(GetDiscoverySummaryRequest, cb)
	assert(GetDiscoverySummaryRequest, "You must provide a GetDiscoverySummaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.GetDiscoverySummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetDiscoverySummarySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDiscoverySummaryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurations asynchronously, invoking a callback when done
-- @param ListConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListConfigurationsAsync(ListConfigurationsRequest, cb)
	assert(ListConfigurationsRequest, "You must provide a ListConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListConfigurationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTags asynchronously, invoking a callback when done
-- @param CreateTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagsAsync(CreateTagsRequest, cb)
	assert(CreateTagsRequest, "You must provide a CreateTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExportTasks asynchronously, invoking a callback when done
-- @param DescribeExportTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExportTasksAsync(DescribeExportTasksRequest, cb)
	assert(DescribeExportTasksRequest, "You must provide a DescribeExportTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeExportTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeExportTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExportTasksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateConfigurationItemsFromApplication asynchronously, invoking a callback when done
-- @param DisassociateConfigurationItemsFromApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateConfigurationItemsFromApplicationAsync(DisassociateConfigurationItemsFromApplicationRequest, cb)
	assert(DisassociateConfigurationItemsFromApplicationRequest, "You must provide a DisassociateConfigurationItemsFromApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DisassociateConfigurationItemsFromApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociateConfigurationItemsFromApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateConfigurationItemsFromApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDataCollectionByAgentIds asynchronously, invoking a callback when done
-- @param StartDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartDataCollectionByAgentIdsAsync(StartDataCollectionByAgentIdsRequest, cb)
	assert(StartDataCollectionByAgentIdsRequest, "You must provide a StartDataCollectionByAgentIdsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartDataCollectionByAgentIds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StartDataCollectionByAgentIdsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDataCollectionByAgentIdsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServerNeighbors asynchronously, invoking a callback when done
-- @param ListServerNeighborsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServerNeighborsAsync(ListServerNeighborsRequest, cb)
	assert(ListServerNeighborsRequest, "You must provide a ListServerNeighborsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.ListServerNeighbors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListServerNeighborsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServerNeighborsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopDataCollectionByAgentIds asynchronously, invoking a callback when done
-- @param StopDataCollectionByAgentIdsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopDataCollectionByAgentIdsAsync(StopDataCollectionByAgentIdsRequest, cb)
	assert(StopDataCollectionByAgentIdsRequest, "You must provide a StopDataCollectionByAgentIdsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StopDataCollectionByAgentIds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StopDataCollectionByAgentIdsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDataCollectionByAgentIdsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAgents asynchronously, invoking a callback when done
-- @param DescribeAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAgentsAsync(DescribeAgentsRequest, cb)
	assert(DescribeAgentsRequest, "You must provide a DescribeAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeAgentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAgentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurations asynchronously, invoking a callback when done
-- @param DescribeConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationsAsync(DescribeConfigurationsRequest, cb)
	assert(DescribeConfigurationsRequest, "You must provide a DescribeConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConfigurationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartExportTask asynchronously, invoking a callback when done
-- @param StartExportTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartExportTaskAsync(StartExportTaskRequest, cb)
	assert(StartExportTaskRequest, "You must provide a StartExportTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.StartExportTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StartExportTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartExportTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplications asynchronously, invoking a callback when done
-- @param DeleteApplicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationsAsync(DeleteApplicationsRequest, cb)
	assert(DeleteApplicationsRequest, "You must provide a DeleteApplicationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.DeleteApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteApplicationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateConfigurationItemsToApplication asynchronously, invoking a callback when done
-- @param AssociateConfigurationItemsToApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateConfigurationItemsToApplicationAsync(AssociateConfigurationItemsToApplicationRequest, cb)
	assert(AssociateConfigurationItemsToApplicationRequest, "You must provide a AssociateConfigurationItemsToApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.AssociateConfigurationItemsToApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateConfigurationItemsToApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateConfigurationItemsToApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplication asynchronously, invoking a callback when done
-- @param CreateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationRequest, cb)
	assert(CreateApplicationRequest, "You must provide a CreateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPoseidonService_V2015_11_01.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
