--- GENERATED CODE - DO NOT MODIFY
-- Amazon AppStream (appstream-2016-12-01)

local M = {}

M.metadata = {
	api_version = "2016-12-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "appstream2",
	service_abbreviation = "",
	service_full_name = "Amazon AppStream",
	signature_version = "v4",
	target_prefix = "PhotonAdminProxyService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "appstream-2016-12-01",
}

local keys = {}
local asserts = {}

keys.ListAssociatedStacksResult = { ["NextToken"] = true, ["Names"] = true, nil }

function asserts.AssertListAssociatedStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedStacksResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociatedStacksResult[k], "ListAssociatedStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedStacksResult
-- <p>The response from a successful operation.</p>
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _Names [StringList] <p>The names of associated stacks.</p>
function M.ListAssociatedStacksResult(_NextToken, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedStacksResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Names"] = _Names,
	}
	asserts.AssertListAssociatedStacksResult(t)
	return t
end

keys.StopFleetResult = { nil }

function asserts.AssertStopFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopFleetResult[k], "StopFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopFleetResult
--  
function M.StopFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopFleetResult")
	local t = { 
	}
	asserts.AssertStopFleetResult(t)
	return t
end

keys.DescribeImagesResult = { ["Images"] = true, nil }

function asserts.AssertDescribeImagesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesResult to be of type 'table'")
	if struct["Images"] then asserts.AssertImageList(struct["Images"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesResult[k], "DescribeImagesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesResult
--  
-- @param _Images [ImageList] <p>The list of images.</p>
function M.DescribeImagesResult(_Images, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesResult")
	local t = { 
		["Images"] = _Images,
	}
	asserts.AssertDescribeImagesResult(t)
	return t
end

keys.OperationNotPermittedException = { ["Message"] = true, nil }

function asserts.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedException[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- <p>The attempted operation is not permitted.</p>
-- @param _Message [ErrorMessage] 
function M.OperationNotPermittedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertOperationNotPermittedException(t)
	return t
end

keys.DeleteFleetRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFleetRequest[k], "DeleteFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetRequest
--  
-- @param _Name [String] <p>The name of the fleet to be deleted.</p>
-- Required parameter: Name
function M.DeleteFleetRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteFleetRequest(t)
	return t
end

keys.CreateStackRequest = { ["DisplayName"] = true, ["Name"] = true, ["StorageConnectors"] = true, ["Description"] = true, nil }

function asserts.AssertCreateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackRequest[k], "CreateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackRequest
--  
-- @param _DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param _Name [String] <p>The unique identifier for this stack.</p>
-- @param _StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param _Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required parameter: Name
function M.CreateStackRequest(_DisplayName, _Name, _StorageConnectors, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackRequest")
	local t = { 
		["DisplayName"] = _DisplayName,
		["Name"] = _Name,
		["StorageConnectors"] = _StorageConnectors,
		["Description"] = _Description,
	}
	asserts.AssertCreateStackRequest(t)
	return t
end

keys.DescribeSessionsResult = { ["NextToken"] = true, ["Sessions"] = true, nil }

function asserts.AssertDescribeSessionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSessionsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Sessions"] then asserts.AssertSessionList(struct["Sessions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSessionsResult[k], "DescribeSessionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSessionsResult
--  
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _Sessions [SessionList] <p>The list of streaming sessions.</p>
function M.DescribeSessionsResult(_NextToken, _Sessions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSessionsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Sessions"] = _Sessions,
	}
	asserts.AssertDescribeSessionsResult(t)
	return t
end

keys.Stack = { ["DisplayName"] = true, ["Name"] = true, ["StorageConnectors"] = true, ["StackErrors"] = true, ["CreatedTime"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["StackErrors"] then asserts.AssertStackErrors(struct["StackErrors"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stack[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>Details about a stack.</p>
-- @param _DisplayName [String] <p>A display name for the stack.</p>
-- @param _Name [String] <p>The unique identifier of the stack.</p>
-- @param _StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param _StackErrors [StackErrors] <p>The list of errors associated with the stack.</p>
-- @param _CreatedTime [Timestamp] <p>The timestamp when the stack was created.</p>
-- @param _Arn [Arn] <p>The ARN of the stack.</p>
-- @param _Description [String] <p>A meaningful description for the stack.</p>
-- Required parameter: Name
function M.Stack(_DisplayName, _Name, _StorageConnectors, _StackErrors, _CreatedTime, _Arn, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stack")
	local t = { 
		["DisplayName"] = _DisplayName,
		["Name"] = _Name,
		["StorageConnectors"] = _StorageConnectors,
		["StackErrors"] = _StackErrors,
		["CreatedTime"] = _CreatedTime,
		["Arn"] = _Arn,
		["Description"] = _Description,
	}
	asserts.AssertStack(t)
	return t
end

keys.StartFleetResult = { nil }

function asserts.AssertStartFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartFleetResult[k], "StartFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFleetResult
--  
function M.StartFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartFleetResult")
	local t = { 
	}
	asserts.AssertStartFleetResult(t)
	return t
end

keys.ComputeCapacityStatus = { ["Available"] = true, ["Desired"] = true, ["Running"] = true, ["InUse"] = true, nil }

function asserts.AssertComputeCapacityStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeCapacityStatus to be of type 'table'")
	assert(struct["Desired"], "Expected key Desired to exist in table")
	if struct["Available"] then asserts.AssertInteger(struct["Available"]) end
	if struct["Desired"] then asserts.AssertInteger(struct["Desired"]) end
	if struct["Running"] then asserts.AssertInteger(struct["Running"]) end
	if struct["InUse"] then asserts.AssertInteger(struct["InUse"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeCapacityStatus[k], "ComputeCapacityStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeCapacityStatus
-- <p>The capacity information for the fleet.</p>
-- @param _Available [Integer] <p>The number of currently available instances that can be used to stream sessions.</p>
-- @param _Desired [Integer] <p>The desired number of streaming instances.</p>
-- @param _Running [Integer] <p>The total number of simultaneous streaming instances that are running.</p>
-- @param _InUse [Integer] <p>The number of instances that are being used for streaming.</p>
-- Required parameter: Desired
function M.ComputeCapacityStatus(_Available, _Desired, _Running, _InUse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeCapacityStatus")
	local t = { 
		["Available"] = _Available,
		["Desired"] = _Desired,
		["Running"] = _Running,
		["InUse"] = _InUse,
	}
	asserts.AssertComputeCapacityStatus(t)
	return t
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The requested limit exceeds the permitted limit for an account.</p>
-- @param _Message [ErrorMessage] 
function M.LimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ConcurrentModificationException = { ["Message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>An API error occurred. Wait a few minutes and try again.</p>
-- @param _Message [ErrorMessage] 
function M.ConcurrentModificationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.StartFleetRequest = { ["Name"] = true, nil }

function asserts.AssertStartFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartFleetRequest[k], "StartFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFleetRequest
--  
-- @param _Name [String] <p>The name of the fleet to start.</p>
-- Required parameter: Name
function M.StartFleetRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartFleetRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertStartFleetRequest(t)
	return t
end

keys.DescribeStacksRequest = { ["NextToken"] = true, ["Names"] = true, nil }

function asserts.AssertDescribeStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksRequest[k], "DescribeStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksRequest
--  
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param _Names [StringList] <p>The stack names to describe. Use null to describe all the stacks for the AWS account.</p>
function M.DescribeStacksRequest(_NextToken, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["Names"] = _Names,
	}
	asserts.AssertDescribeStacksRequest(t)
	return t
end

keys.CreateStreamingURLRequest = { ["FleetName"] = true, ["UserId"] = true, ["Validity"] = true, ["StackName"] = true, ["SessionContext"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertCreateStreamingURLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingURLRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["Validity"] then asserts.AssertLong(struct["Validity"]) end
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["SessionContext"] then asserts.AssertString(struct["SessionContext"]) end
	if struct["ApplicationId"] then asserts.AssertString(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingURLRequest[k], "CreateStreamingURLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingURLRequest
--  
-- @param _FleetName [String] <p>The fleet for which the URL is generated.</p>
-- @param _UserId [UserId] <p>A unique user ID for whom the URL is generated.</p>
-- @param _Validity [Long] <p>The duration up to which the URL returned by this action is valid. The input can be any numeric value in seconds between 1 and 604800 seconds.</p>
-- @param _StackName [String] <p>The stack for which the URL is generated.</p>
-- @param _SessionContext [String] <p>The sessionContext of the streaming URL.</p>
-- @param _ApplicationId [String] <p>The ID of the application that must be launched after the session starts.</p>
-- Required parameter: StackName
-- Required parameter: FleetName
-- Required parameter: UserId
function M.CreateStreamingURLRequest(_FleetName, _UserId, _Validity, _StackName, _SessionContext, _ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingURLRequest")
	local t = { 
		["FleetName"] = _FleetName,
		["UserId"] = _UserId,
		["Validity"] = _Validity,
		["StackName"] = _StackName,
		["SessionContext"] = _SessionContext,
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertCreateStreamingURLRequest(t)
	return t
end

keys.Application = { ["DisplayName"] = true, ["Name"] = true, ["LaunchParameters"] = true, ["Enabled"] = true, ["IconURL"] = true, ["LaunchPath"] = true, ["Metadata"] = true, nil }

function asserts.AssertApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Application to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["LaunchParameters"] then asserts.AssertString(struct["LaunchParameters"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["IconURL"] then asserts.AssertString(struct["IconURL"]) end
	if struct["LaunchPath"] then asserts.AssertString(struct["LaunchPath"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.Application[k], "Application contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Application
-- <p>An entry for a single application in the application catalog.</p>
-- @param _DisplayName [String] <p>The name of the application shown to the end users.</p>
-- @param _Name [String] <p>The unique identifier for the application.</p>
-- @param _LaunchParameters [String] <p>A list of arguments that are passed to the application at launch.</p>
-- @param _Enabled [Boolean] <p>An application can be disabled after image creation if there is a problem.</p>
-- @param _IconURL [String] <p>The URL for the application icon. This URL may be time-limited.</p>
-- @param _LaunchPath [String] <p>The path to the application executable in the instance.</p>
-- @param _Metadata [Metadata] <p>Additional attributes that describe the application.</p>
function M.Application(_DisplayName, _Name, _LaunchParameters, _Enabled, _IconURL, _LaunchPath, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Application")
	local t = { 
		["DisplayName"] = _DisplayName,
		["Name"] = _Name,
		["LaunchParameters"] = _LaunchParameters,
		["Enabled"] = _Enabled,
		["IconURL"] = _IconURL,
		["LaunchPath"] = _LaunchPath,
		["Metadata"] = _Metadata,
	}
	asserts.AssertApplication(t)
	return t
end

keys.DisassociateFleetResult = { nil }

function asserts.AssertDisassociateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateFleetResult[k], "DisassociateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFleetResult
--  
function M.DisassociateFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateFleetResult")
	local t = { 
	}
	asserts.AssertDisassociateFleetResult(t)
	return t
end

keys.UpdateStackRequest = { ["DeleteStorageConnectors"] = true, ["DisplayName"] = true, ["Description"] = true, ["StorageConnectors"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DeleteStorageConnectors"] then asserts.AssertBoolean(struct["DeleteStorageConnectors"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackRequest[k], "UpdateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackRequest
--  
-- @param _DeleteStorageConnectors [Boolean] <p>Remove all the storage connectors currently enabled for the stack.</p>
-- @param _DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param _Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- @param _StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param _Name [String] <p>The name of the stack to update.</p>
-- Required parameter: Name
function M.UpdateStackRequest(_DeleteStorageConnectors, _DisplayName, _Description, _StorageConnectors, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackRequest")
	local t = { 
		["DeleteStorageConnectors"] = _DeleteStorageConnectors,
		["DisplayName"] = _DisplayName,
		["Description"] = _Description,
		["StorageConnectors"] = _StorageConnectors,
		["Name"] = _Name,
	}
	asserts.AssertUpdateStackRequest(t)
	return t
end

keys.ListAssociatedFleetsResult = { ["NextToken"] = true, ["Names"] = true, nil }

function asserts.AssertListAssociatedFleetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedFleetsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociatedFleetsResult[k], "ListAssociatedFleetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedFleetsResult
-- <p>The response from a successful operation.</p>
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _Names [StringList] <p>The names of associated fleets.</p>
function M.ListAssociatedFleetsResult(_NextToken, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedFleetsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Names"] = _Names,
	}
	asserts.AssertListAssociatedFleetsResult(t)
	return t
end

keys.InvalidParameterCombinationException = { ["Message"] = true, nil }

function asserts.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterCombinationException[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Indicates an incorrect combination of parameters, or a missing parameter.</p>
-- @param _Message [ErrorMessage] 
function M.InvalidParameterCombinationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidParameterCombinationException(t)
	return t
end

keys.UpdateStackResult = { ["Stack"] = true, nil }

function asserts.AssertUpdateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackResult to be of type 'table'")
	if struct["Stack"] then asserts.AssertStack(struct["Stack"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackResult[k], "UpdateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackResult
--  
-- @param _Stack [Stack] <p>A list of stack details.</p>
function M.UpdateStackResult(_Stack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackResult")
	local t = { 
		["Stack"] = _Stack,
	}
	asserts.AssertUpdateStackResult(t)
	return t
end

keys.ComputeCapacity = { ["DesiredInstances"] = true, nil }

function asserts.AssertComputeCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeCapacity to be of type 'table'")
	assert(struct["DesiredInstances"], "Expected key DesiredInstances to exist in table")
	if struct["DesiredInstances"] then asserts.AssertInteger(struct["DesiredInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeCapacity[k], "ComputeCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeCapacity
-- <p>The capacity configuration for the fleet.</p>
-- @param _DesiredInstances [Integer] <p>The desired number of streaming instances.</p>
-- Required parameter: DesiredInstances
function M.ComputeCapacity(_DesiredInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeCapacity")
	local t = { 
		["DesiredInstances"] = _DesiredInstances,
	}
	asserts.AssertComputeCapacity(t)
	return t
end

keys.ExpireSessionRequest = { ["SessionId"] = true, nil }

function asserts.AssertExpireSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpireSessionRequest to be of type 'table'")
	assert(struct["SessionId"], "Expected key SessionId to exist in table")
	if struct["SessionId"] then asserts.AssertString(struct["SessionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpireSessionRequest[k], "ExpireSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpireSessionRequest
--  
-- @param _SessionId [String] <p>The unique identifier of the streaming session to be stopped.</p>
-- Required parameter: SessionId
function M.ExpireSessionRequest(_SessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpireSessionRequest")
	local t = { 
		["SessionId"] = _SessionId,
	}
	asserts.AssertExpireSessionRequest(t)
	return t
end

keys.IncompatibleImageException = { ["Message"] = true, nil }

function asserts.AssertIncompatibleImageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleImageException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncompatibleImageException[k], "IncompatibleImageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleImageException
-- <p>The image does not support storage connectors.</p>
-- @param _Message [ErrorMessage] 
function M.IncompatibleImageException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleImageException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertIncompatibleImageException(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The specified resource already exists.</p>
-- @param _Message [ErrorMessage] 
function M.ResourceAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

keys.DeleteStackRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackRequest[k], "DeleteStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackRequest
--  
-- @param _Name [String] <p>The name of the stack to delete.</p>
-- Required parameter: Name
function M.DeleteStackRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteStackRequest(t)
	return t
end

keys.CreateStackResult = { ["Stack"] = true, nil }

function asserts.AssertCreateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackResult to be of type 'table'")
	if struct["Stack"] then asserts.AssertStack(struct["Stack"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackResult[k], "CreateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackResult
--  
-- @param _Stack [Stack] <p>The details for the created stack.</p>
function M.CreateStackResult(_Stack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackResult")
	local t = { 
		["Stack"] = _Stack,
	}
	asserts.AssertCreateStackResult(t)
	return t
end

keys.Image = { ["PublicBaseImageReleasedDate"] = true, ["DisplayName"] = true, ["Name"] = true, ["Applications"] = true, ["BaseImageArn"] = true, ["Visibility"] = true, ["Platform"] = true, ["State"] = true, ["CreatedTime"] = true, ["Description"] = true, ["StateChangeReason"] = true, ["Arn"] = true, ["ImageBuilderSupported"] = true, nil }

function asserts.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["PublicBaseImageReleasedDate"] then asserts.AssertTimestamp(struct["PublicBaseImageReleasedDate"]) end
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Applications"] then asserts.AssertApplications(struct["Applications"]) end
	if struct["BaseImageArn"] then asserts.AssertArn(struct["BaseImageArn"]) end
	if struct["Visibility"] then asserts.AssertVisibilityType(struct["Visibility"]) end
	if struct["Platform"] then asserts.AssertPlatformType(struct["Platform"]) end
	if struct["State"] then asserts.AssertImageState(struct["State"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["StateChangeReason"] then asserts.AssertImageStateChangeReason(struct["StateChangeReason"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["ImageBuilderSupported"] then asserts.AssertBoolean(struct["ImageBuilderSupported"]) end
	for k,_ in pairs(struct) do
		assert(keys.Image[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>New streaming instances are booted from images. The image stores the application catalog and is connected to fleets.</p>
-- @param _PublicBaseImageReleasedDate [Timestamp] <p>The AWS release date of the public base image. For private images, this date is the release date of the base image from which the image was created.</p>
-- @param _DisplayName [String] <p>The display name for the image.</p>
-- @param _Name [String] <p>The unique identifier for the image.</p>
-- @param _Applications [Applications] <p>The applications associated with an image.</p>
-- @param _BaseImageArn [Arn] <p>The source image ARN from which this image was created.</p>
-- @param _Visibility [VisibilityType] <p>The visibility of an image to the user; images can be public or private.</p>
-- @param _Platform [PlatformType] <p>The operating system platform of the image.</p>
-- @param _State [ImageState] <p>The image starts in the <b>PENDING</b> state, and then moves to <b>AVAILABLE</b> if image creation succeeds and <b>FAILED</b> if image creation has failed.</p>
-- @param _CreatedTime [Timestamp] <p>The timestamp when the image was created.</p>
-- @param _Description [String] <p>A meaningful description for the image.</p>
-- @param _StateChangeReason [ImageStateChangeReason] <p>The reason why the last state change occurred.</p>
-- @param _Arn [Arn] <p>The ARN for the image.</p>
-- @param _ImageBuilderSupported [Boolean] <p>Whether an image builder can be launched from this image.</p>
-- Required parameter: Name
function M.Image(_PublicBaseImageReleasedDate, _DisplayName, _Name, _Applications, _BaseImageArn, _Visibility, _Platform, _State, _CreatedTime, _Description, _StateChangeReason, _Arn, _ImageBuilderSupported, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Image")
	local t = { 
		["PublicBaseImageReleasedDate"] = _PublicBaseImageReleasedDate,
		["DisplayName"] = _DisplayName,
		["Name"] = _Name,
		["Applications"] = _Applications,
		["BaseImageArn"] = _BaseImageArn,
		["Visibility"] = _Visibility,
		["Platform"] = _Platform,
		["State"] = _State,
		["CreatedTime"] = _CreatedTime,
		["Description"] = _Description,
		["StateChangeReason"] = _StateChangeReason,
		["Arn"] = _Arn,
		["ImageBuilderSupported"] = _ImageBuilderSupported,
	}
	asserts.AssertImage(t)
	return t
end

keys.Session = { ["AuthenticationType"] = true, ["UserId"] = true, ["FleetName"] = true, ["StackName"] = true, ["State"] = true, ["Id"] = true, nil }

function asserts.AssertSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Session to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["State"] then asserts.AssertSessionState(struct["State"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Session[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- <p>Contains the parameters for a streaming session.</p>
-- @param _AuthenticationType [AuthenticationType] <p>The authentication method of the user for whom the session was created. It can be <code>API</code> for a user authenticated using a streaming URL or <code>SAML</code> for a SAML federated user.</p>
-- @param _UserId [UserId] <p>The identifier of the user for whom the session was created.</p>
-- @param _FleetName [String] <p>The name of the fleet for which the streaming session was created.</p>
-- @param _StackName [String] <p>The name of the stack for which the streaming session was created.</p>
-- @param _State [SessionState] <p>The current state of the streaming session.</p>
-- @param _Id [String] <p>The unique ID for a streaming session.</p>
-- Required parameter: Id
-- Required parameter: UserId
-- Required parameter: StackName
-- Required parameter: FleetName
-- Required parameter: State
function M.Session(_AuthenticationType, _UserId, _FleetName, _StackName, _State, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Session")
	local t = { 
		["AuthenticationType"] = _AuthenticationType,
		["UserId"] = _UserId,
		["FleetName"] = _FleetName,
		["StackName"] = _StackName,
		["State"] = _State,
		["Id"] = _Id,
	}
	asserts.AssertSession(t)
	return t
end

keys.StopFleetRequest = { ["Name"] = true, nil }

function asserts.AssertStopFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopFleetRequest[k], "StopFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopFleetRequest
--  
-- @param _Name [String] <p>The name of the fleet to stop.</p>
-- Required parameter: Name
function M.StopFleetRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopFleetRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertStopFleetRequest(t)
	return t
end

keys.ImageStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertImageStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertImageStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageStateChangeReason[k], "ImageStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageStateChangeReason
-- <p>The reason why the last state change occurred.</p>
-- @param _Message [String] <p>The state change reason message to the end user.</p>
-- @param _Code [ImageStateChangeReasonCode] <p>The state change reason code of the image.</p>
function M.ImageStateChangeReason(_Message, _Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageStateChangeReason")
	local t = { 
		["Message"] = _Message,
		["Code"] = _Code,
	}
	asserts.AssertImageStateChangeReason(t)
	return t
end

keys.ExpireSessionResult = { nil }

function asserts.AssertExpireSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpireSessionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ExpireSessionResult[k], "ExpireSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpireSessionResult
--  
function M.ExpireSessionResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpireSessionResult")
	local t = { 
	}
	asserts.AssertExpireSessionResult(t)
	return t
end

keys.ListAssociatedFleetsRequest = { ["StackName"] = true, ["NextToken"] = true, nil }

function asserts.AssertListAssociatedFleetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedFleetsRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociatedFleetsRequest[k], "ListAssociatedFleetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedFleetsRequest
--  
-- @param _StackName [String] <p>The name of the stack whose associated fleets are listed.</p>
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required parameter: StackName
function M.ListAssociatedFleetsRequest(_StackName, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedFleetsRequest")
	local t = { 
		["StackName"] = _StackName,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListAssociatedFleetsRequest(t)
	return t
end

keys.DescribeStacksResult = { ["NextToken"] = true, ["Stacks"] = true, nil }

function asserts.AssertDescribeStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Stacks"] then asserts.AssertStackList(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksResult[k], "DescribeStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksResult
--  
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _Stacks [StackList] <p>The list of stack details.</p>
function M.DescribeStacksResult(_NextToken, _Stacks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Stacks"] = _Stacks,
	}
	asserts.AssertDescribeStacksResult(t)
	return t
end

keys.CreateFleetRequest = { ["DisplayName"] = true, ["MaxUserDurationInSeconds"] = true, ["VpcConfig"] = true, ["DisconnectTimeoutInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["ImageName"] = true, ["ComputeCapacity"] = true, ["Description"] = true, ["InstanceType"] = true, ["Name"] = true, nil }

function asserts.AssertCreateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ImageName"], "Expected key ImageName to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacity"], "Expected key ComputeCapacity to exist in table")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then asserts.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFleetRequest[k], "CreateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetRequest
-- <p>Contains the parameters for the new fleet to create.</p>
-- @param _DisplayName [DisplayName] <p>The display name of the fleet.</p>
-- @param _MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- @param _VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param _DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600. </p>
-- @param _EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- @param _ImageName [String] <p>Unique name of the image used by the fleet.</p>
-- @param _ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet.</p>
-- @param _Description [Description] <p>The description of the fleet.</p>
-- @param _InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- @param _Name [Name] <p>A unique identifier for the fleet.</p>
-- Required parameter: Name
-- Required parameter: ImageName
-- Required parameter: InstanceType
-- Required parameter: ComputeCapacity
function M.CreateFleetRequest(_DisplayName, _MaxUserDurationInSeconds, _VpcConfig, _DisconnectTimeoutInSeconds, _EnableDefaultInternetAccess, _ImageName, _ComputeCapacity, _Description, _InstanceType, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetRequest")
	local t = { 
		["DisplayName"] = _DisplayName,
		["MaxUserDurationInSeconds"] = _MaxUserDurationInSeconds,
		["VpcConfig"] = _VpcConfig,
		["DisconnectTimeoutInSeconds"] = _DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = _EnableDefaultInternetAccess,
		["ImageName"] = _ImageName,
		["ComputeCapacity"] = _ComputeCapacity,
		["Description"] = _Description,
		["InstanceType"] = _InstanceType,
		["Name"] = _Name,
	}
	asserts.AssertCreateFleetRequest(t)
	return t
end

keys.UpdateFleetResult = { ["Fleet"] = true, nil }

function asserts.AssertUpdateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetResult to be of type 'table'")
	if struct["Fleet"] then asserts.AssertFleet(struct["Fleet"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetResult[k], "UpdateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetResult
--  
-- @param _Fleet [Fleet] <p>A list of fleet details.</p>
function M.UpdateFleetResult(_Fleet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetResult")
	local t = { 
		["Fleet"] = _Fleet,
	}
	asserts.AssertUpdateFleetResult(t)
	return t
end

keys.InvalidRoleException = { ["Message"] = true, nil }

function asserts.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRoleException[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- <p>The specified role is invalid.</p>
-- @param _Message [ErrorMessage] 
function M.InvalidRoleException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidRoleException(t)
	return t
end

keys.ListAssociatedStacksRequest = { ["NextToken"] = true, ["FleetName"] = true, nil }

function asserts.AssertListAssociatedStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedStacksRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociatedStacksRequest[k], "ListAssociatedStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedStacksRequest
--  
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param _FleetName [String] <p>The name of the fleet whose associated stacks are listed.</p>
-- Required parameter: FleetName
function M.ListAssociatedStacksRequest(_NextToken, _FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedStacksRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["FleetName"] = _FleetName,
	}
	asserts.AssertListAssociatedStacksRequest(t)
	return t
end

keys.DeleteStackResult = { nil }

function asserts.AssertDeleteStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackResult[k], "DeleteStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackResult
--  
function M.DeleteStackResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackResult")
	local t = { 
	}
	asserts.AssertDeleteStackResult(t)
	return t
end

keys.Fleet = { ["ComputeCapacityStatus"] = true, ["DisplayName"] = true, ["Name"] = true, ["VpcConfig"] = true, ["FleetErrors"] = true, ["DisconnectTimeoutInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["State"] = true, ["ImageName"] = true, ["CreatedTime"] = true, ["MaxUserDurationInSeconds"] = true, ["InstanceType"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertFleet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Fleet to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ImageName"], "Expected key ImageName to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacityStatus"], "Expected key ComputeCapacityStatus to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["ComputeCapacityStatus"] then asserts.AssertComputeCapacityStatus(struct["ComputeCapacityStatus"]) end
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["FleetErrors"] then asserts.AssertFleetErrors(struct["FleetErrors"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["State"] then asserts.AssertFleetState(struct["State"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Fleet[k], "Fleet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Fleet
-- <p>Contains the parameters for a fleet.</p>
-- @param _ComputeCapacityStatus [ComputeCapacityStatus] <p>The capacity information for the fleet.</p>
-- @param _DisplayName [String] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param _Name [String] <p>The name of the fleet.</p>
-- @param _VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param _FleetErrors [FleetErrors] <p>The list of fleet errors is appended to this list.</p>
-- @param _DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- @param _EnableDefaultInternetAccess [BooleanObject] <p>Whether default Internet access is enabled for the fleet. </p>
-- @param _State [FleetState] <p>The current state for the fleet.</p>
-- @param _ImageName [String] <p>The image used by the fleet.</p>
-- @param _CreatedTime [Timestamp] <p>The time at which the fleet was created.</p>
-- @param _MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The value can be any numeric value in seconds between 600 and 57600.</p>
-- @param _InstanceType [String] <p>The instance type of compute resources for the fleet. The fleet instances are launched from this instance type. </p>
-- @param _Arn [Arn] <p>The ARN for the fleet.</p>
-- @param _Description [String] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required parameter: Arn
-- Required parameter: Name
-- Required parameter: ImageName
-- Required parameter: InstanceType
-- Required parameter: ComputeCapacityStatus
-- Required parameter: State
function M.Fleet(_ComputeCapacityStatus, _DisplayName, _Name, _VpcConfig, _FleetErrors, _DisconnectTimeoutInSeconds, _EnableDefaultInternetAccess, _State, _ImageName, _CreatedTime, _MaxUserDurationInSeconds, _InstanceType, _Arn, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Fleet")
	local t = { 
		["ComputeCapacityStatus"] = _ComputeCapacityStatus,
		["DisplayName"] = _DisplayName,
		["Name"] = _Name,
		["VpcConfig"] = _VpcConfig,
		["FleetErrors"] = _FleetErrors,
		["DisconnectTimeoutInSeconds"] = _DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = _EnableDefaultInternetAccess,
		["State"] = _State,
		["ImageName"] = _ImageName,
		["CreatedTime"] = _CreatedTime,
		["MaxUserDurationInSeconds"] = _MaxUserDurationInSeconds,
		["InstanceType"] = _InstanceType,
		["Arn"] = _Arn,
		["Description"] = _Description,
	}
	asserts.AssertFleet(t)
	return t
end

keys.DescribeFleetsRequest = { ["NextToken"] = true, ["Names"] = true, nil }

function asserts.AssertDescribeFleetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetsRequest[k], "DescribeFleetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetsRequest
--  
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param _Names [StringList] <p>The fleet names to describe. Use null to describe all the fleets for the AWS account.</p>
function M.DescribeFleetsRequest(_NextToken, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["Names"] = _Names,
	}
	asserts.AssertDescribeFleetsRequest(t)
	return t
end

keys.DescribeFleetsResult = { ["Fleets"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeFleetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetsResult to be of type 'table'")
	if struct["Fleets"] then asserts.AssertFleetList(struct["Fleets"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetsResult[k], "DescribeFleetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetsResult
--  
-- @param _Fleets [FleetList] <p>The list of fleet details.</p>
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
function M.DescribeFleetsResult(_Fleets, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetsResult")
	local t = { 
		["Fleets"] = _Fleets,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeFleetsResult(t)
	return t
end

keys.ResourceNotFoundException = { ["Message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource was not found.</p>
-- @param _Message [ErrorMessage] 
function M.ResourceNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.UpdateFleetRequest = { ["AttributesToDelete"] = true, ["DeleteVpcConfig"] = true, ["DisplayName"] = true, ["MaxUserDurationInSeconds"] = true, ["VpcConfig"] = true, ["DisconnectTimeoutInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["ImageName"] = true, ["ComputeCapacity"] = true, ["Description"] = true, ["InstanceType"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributesToDelete"] then asserts.AssertFleetAttributes(struct["AttributesToDelete"]) end
	if struct["DeleteVpcConfig"] then asserts.AssertBoolean(struct["DeleteVpcConfig"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then asserts.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetRequest[k], "UpdateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetRequest
--  
-- @param _AttributesToDelete [FleetAttributes] <p>Fleet attributes to be deleted.</p>
-- @param _DeleteVpcConfig [Boolean] <p>Delete the VPC association for the specified fleet.</p>
-- @param _DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param _MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- @param _VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param _DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- @param _EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- @param _ImageName [String] <p>The image name from which a fleet is created.</p>
-- @param _ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet. </p>
-- @param _Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- @param _InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- @param _Name [String] <p>The name of the fleet.</p>
-- Required parameter: Name
function M.UpdateFleetRequest(_AttributesToDelete, _DeleteVpcConfig, _DisplayName, _MaxUserDurationInSeconds, _VpcConfig, _DisconnectTimeoutInSeconds, _EnableDefaultInternetAccess, _ImageName, _ComputeCapacity, _Description, _InstanceType, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetRequest")
	local t = { 
		["AttributesToDelete"] = _AttributesToDelete,
		["DeleteVpcConfig"] = _DeleteVpcConfig,
		["DisplayName"] = _DisplayName,
		["MaxUserDurationInSeconds"] = _MaxUserDurationInSeconds,
		["VpcConfig"] = _VpcConfig,
		["DisconnectTimeoutInSeconds"] = _DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = _EnableDefaultInternetAccess,
		["ImageName"] = _ImageName,
		["ComputeCapacity"] = _ComputeCapacity,
		["Description"] = _Description,
		["InstanceType"] = _InstanceType,
		["Name"] = _Name,
	}
	asserts.AssertUpdateFleetRequest(t)
	return t
end

keys.FleetError = { ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertFleetError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertFleetErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.FleetError[k], "FleetError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetError
-- <p>The details of the fleet error.</p>
-- @param _ErrorCode [FleetErrorCode] <p>The error code for the fleet error.</p>
-- @param _ErrorMessage [String] <p>The error message generated when the fleet has errors.</p>
function M.FleetError(_ErrorCode, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetError")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertFleetError(t)
	return t
end

keys.DescribeSessionsRequest = { ["AuthenticationType"] = true, ["FleetName"] = true, ["UserId"] = true, ["StackName"] = true, ["Limit"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeSessionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSessionsRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["Limit"] then asserts.AssertInteger(struct["Limit"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSessionsRequest[k], "DescribeSessionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSessionsRequest
--  
-- @param _AuthenticationType [AuthenticationType] <p>The authentication method of the user. It can be <code>API</code> for a user authenticated using a streaming URL, or <code>SAML</code> for a SAML federated user. If an authentication type is not provided, the operation defaults to users authenticated using a streaming URL.</p>
-- @param _FleetName [String] <p>The name of the fleet for which to list sessions.</p>
-- @param _UserId [UserId] <p>The user for whom to list sessions. Use null to describe all the sessions for the stack and fleet.</p>
-- @param _StackName [String] <p>The name of the stack for which to list sessions.</p>
-- @param _Limit [Integer] <p>The size of each page of results. The default value is 20 and the maximum supported value is 50.</p>
-- @param _NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required parameter: StackName
-- Required parameter: FleetName
function M.DescribeSessionsRequest(_AuthenticationType, _FleetName, _UserId, _StackName, _Limit, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSessionsRequest")
	local t = { 
		["AuthenticationType"] = _AuthenticationType,
		["FleetName"] = _FleetName,
		["UserId"] = _UserId,
		["StackName"] = _StackName,
		["Limit"] = _Limit,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeSessionsRequest(t)
	return t
end

keys.AssociateFleetRequest = { ["StackName"] = true, ["FleetName"] = true, nil }

function asserts.AssertAssociateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateFleetRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateFleetRequest[k], "AssociateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateFleetRequest
--  
-- @param _StackName [String] <p>The name of the stack to which the fleet is associated.</p>
-- @param _FleetName [String] <p>The name of the fleet to associate.</p>
-- Required parameter: FleetName
-- Required parameter: StackName
function M.AssociateFleetRequest(_StackName, _FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateFleetRequest")
	local t = { 
		["StackName"] = _StackName,
		["FleetName"] = _FleetName,
	}
	asserts.AssertAssociateFleetRequest(t)
	return t
end

keys.ResourceNotAvailableException = { ["Message"] = true, nil }

function asserts.AssertResourceNotAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotAvailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotAvailableException[k], "ResourceNotAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotAvailableException
-- <p>The specified resource exists and is not in use, but isn't available.</p>
-- @param _Message [ErrorMessage] 
function M.ResourceNotAvailableException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotAvailableException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceNotAvailableException(t)
	return t
end

keys.CreateFleetResult = { ["Fleet"] = true, nil }

function asserts.AssertCreateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetResult to be of type 'table'")
	if struct["Fleet"] then asserts.AssertFleet(struct["Fleet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFleetResult[k], "CreateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetResult
--  
-- @param _Fleet [Fleet] <p>The details for the created fleet.</p>
function M.CreateFleetResult(_Fleet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetResult")
	local t = { 
		["Fleet"] = _Fleet,
	}
	asserts.AssertCreateFleetResult(t)
	return t
end

keys.StorageConnector = { ["ConnectorType"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertStorageConnector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageConnector to be of type 'table'")
	assert(struct["ConnectorType"], "Expected key ConnectorType to exist in table")
	if struct["ConnectorType"] then asserts.AssertStorageConnectorType(struct["ConnectorType"]) end
	if struct["ResourceIdentifier"] then asserts.AssertResourceIdentifier(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageConnector[k], "StorageConnector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageConnector
-- <p>Contains the parameters for a storage connector.</p>
-- @param _ConnectorType [StorageConnectorType] <p>The type of storage connector. The possible values include: HOMEFOLDERS.</p>
-- @param _ResourceIdentifier [ResourceIdentifier] <p>The ARN associated with the storage connector.</p>
-- Required parameter: ConnectorType
function M.StorageConnector(_ConnectorType, _ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageConnector")
	local t = { 
		["ConnectorType"] = _ConnectorType,
		["ResourceIdentifier"] = _ResourceIdentifier,
	}
	asserts.AssertStorageConnector(t)
	return t
end

keys.DescribeImagesRequest = { ["Names"] = true, nil }

function asserts.AssertDescribeImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesRequest to be of type 'table'")
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesRequest[k], "DescribeImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesRequest
--  
-- @param _Names [StringList] <p>A specific list of images to describe.</p>
function M.DescribeImagesRequest(_Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesRequest")
	local t = { 
		["Names"] = _Names,
	}
	asserts.AssertDescribeImagesRequest(t)
	return t
end

keys.StackError = { ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertStackError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertStackErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackError[k], "StackError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackError
-- <p>Contains the parameters for a stack error.</p>
-- @param _ErrorCode [StackErrorCode] <p>The error code of a stack error.</p>
-- @param _ErrorMessage [String] <p>The error message of a stack error.</p>
function M.StackError(_ErrorCode, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackError")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertStackError(t)
	return t
end

keys.DeleteFleetResult = { nil }

function asserts.AssertDeleteFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteFleetResult[k], "DeleteFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetResult
--  
function M.DeleteFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetResult")
	local t = { 
	}
	asserts.AssertDeleteFleetResult(t)
	return t
end

keys.AssociateFleetResult = { nil }

function asserts.AssertAssociateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateFleetResult[k], "AssociateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateFleetResult
--  
function M.AssociateFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateFleetResult")
	local t = { 
	}
	asserts.AssertAssociateFleetResult(t)
	return t
end

keys.CreateStreamingURLResult = { ["Expires"] = true, ["StreamingURL"] = true, nil }

function asserts.AssertCreateStreamingURLResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingURLResult to be of type 'table'")
	if struct["Expires"] then asserts.AssertTimestamp(struct["Expires"]) end
	if struct["StreamingURL"] then asserts.AssertString(struct["StreamingURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingURLResult[k], "CreateStreamingURLResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingURLResult
--  
-- @param _Expires [Timestamp] <p>Elapsed seconds after the Unix epoch, at which time this URL expires.</p>
-- @param _StreamingURL [String] <p>The URL to start the AppStream 2.0 streaming session.</p>
function M.CreateStreamingURLResult(_Expires, _StreamingURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingURLResult")
	local t = { 
		["Expires"] = _Expires,
		["StreamingURL"] = _StreamingURL,
	}
	asserts.AssertCreateStreamingURLResult(t)
	return t
end

keys.DisassociateFleetRequest = { ["StackName"] = true, ["FleetName"] = true, nil }

function asserts.AssertDisassociateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFleetRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["FleetName"] then asserts.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateFleetRequest[k], "DisassociateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFleetRequest
--  
-- @param _StackName [String] <p>The name of the stack with which the fleet is associated.</p>
-- @param _FleetName [String] <p>The name of the fleet to disassociate.</p>
-- Required parameter: FleetName
-- Required parameter: StackName
function M.DisassociateFleetRequest(_StackName, _FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateFleetRequest")
	local t = { 
		["StackName"] = _StackName,
		["FleetName"] = _FleetName,
	}
	asserts.AssertDisassociateFleetRequest(t)
	return t
end

keys.VpcConfig = { ["SubnetIds"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIdList(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdList(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfig[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>VPC configuration information.</p>
-- @param _SubnetIds [SubnetIdList] <p>The list of subnets to which a network interface is established from the fleet instance.</p>
-- @param _SecurityGroupIds [SecurityGroupIdList] <p>Security groups associated with the fleet.</p>
function M.VpcConfig(_SubnetIds, _SecurityGroupIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcConfig")
	local t = { 
		["SubnetIds"] = _SubnetIds,
		["SecurityGroupIds"] = _SecurityGroupIds,
	}
	asserts.AssertVpcConfig(t)
	return t
end

keys.ResourceInUseException = { ["Message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The specified resource is in use.</p>
-- @param _Message [ErrorMessage] 
function M.ResourceInUseException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceInUseException(t)
	return t
end

function asserts.AssertSessionState(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionState to be of type 'string'")
end

-- <p>Possible values for the state of a streaming session.</p>
function M.SessionState(str)
	asserts.AssertSessionState(str)
	return str
end

function asserts.AssertFleetErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetErrorCode to be of type 'string'")
end

--  
function M.FleetErrorCode(str)
	asserts.AssertFleetErrorCode(str)
	return str
end

function asserts.AssertStackErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StackErrorCode to be of type 'string'")
end

--  
function M.StackErrorCode(str)
	asserts.AssertStackErrorCode(str)
	return str
end

function asserts.AssertFleetAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetAttribute to be of type 'string'")
end

-- <p>Fleet attribute.</p>
function M.FleetAttribute(str)
	asserts.AssertFleetAttribute(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.DisplayName(str)
	asserts.AssertDisplayName(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertFleetState(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetState to be of type 'string'")
end

--  
function M.FleetState(str)
	asserts.AssertFleetState(str)
	return str
end

function asserts.AssertImageStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageStateChangeReasonCode to be of type 'string'")
end

--  
function M.ImageStateChangeReasonCode(str)
	asserts.AssertImageStateChangeReasonCode(str)
	return str
end

function asserts.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	asserts.AssertPlatformType(str)
	return str
end

function asserts.AssertResourceIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceIdentifier to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The ARN of the resource.</p>
function M.ResourceIdentifier(str)
	asserts.AssertResourceIdentifier(str)
	return str
end

function asserts.AssertVisibilityType(str)
	assert(str)
	assert(type(str) == "string", "Expected VisibilityType to be of type 'string'")
end

--  
function M.VisibilityType(str)
	asserts.AssertVisibilityType(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- <p>The error message in the exception.</p>
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertAuthenticationType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationType to be of type 'string'")
end

--  
function M.AuthenticationType(str)
	asserts.AssertAuthenticationType(str)
	return str
end

function asserts.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.UserId(str)
	asserts.AssertUserId(str)
	return str
end

function asserts.AssertImageState(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageState to be of type 'string'")
end

--  
function M.ImageState(str)
	asserts.AssertImageState(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertStorageConnectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageConnectorType to be of type 'string'")
end

-- <p>The type of storage connector. The possible values include: HOMEFOLDERS.</p>
function M.StorageConnectorType(str)
	asserts.AssertStorageConnectorType(str)
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected Metadata to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.Metadata(map)
	asserts.AssertMetadata(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertStorageConnectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageConnectorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStorageConnector(v)
	end
end

-- <p>A list of storage connectors.</p>
-- List of StorageConnector objects
function M.StorageConnectorList(list)
	asserts.AssertStorageConnectorList(list)
	return list
end

function asserts.AssertFleetAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleetAttribute(v)
	end
end

-- <p>A list of fleet attributes.</p>
-- List of FleetAttribute objects
function M.FleetAttributes(list)
	asserts.AssertFleetAttributes(list)
	return list
end

function asserts.AssertApplications(list)
	assert(list)
	assert(type(list) == "table", "Expected Applications to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplication(v)
	end
end

--  
-- List of Application objects
function M.Applications(list)
	asserts.AssertApplications(list)
	return list
end

function asserts.AssertSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SessionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSession(v)
	end
end

-- <p>List of sessions.</p>
-- List of Session objects
function M.SessionList(list)
	asserts.AssertSessionList(list)
	return list
end

function asserts.AssertFleetErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleetError(v)
	end
end

--  
-- List of FleetError objects
function M.FleetErrors(list)
	asserts.AssertFleetErrors(list)
	return list
end

function asserts.AssertStackList(list)
	assert(list)
	assert(type(list) == "table", "Expected StackList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStack(v)
	end
end

-- <p>A list of stacks.</p>
-- List of Stack objects
function M.StackList(list)
	asserts.AssertStackList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertSubnetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

-- <p>A list of subnet IDs.</p>
-- List of String objects
function M.SubnetIdList(list)
	asserts.AssertSubnetIdList(list)
	return list
end

function asserts.AssertFleetList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleet(v)
	end
end

-- <p>A list of fleets.</p>
-- List of Fleet objects
function M.FleetList(list)
	asserts.AssertFleetList(list)
	return list
end

function asserts.AssertImageList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImage(v)
	end
end

--  
-- List of Image objects
function M.ImageList(list)
	asserts.AssertImageList(list)
	return list
end

function asserts.AssertStackErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected StackErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackError(v)
	end
end

-- <p>A list of stack errors.</p>
-- List of StackError objects
function M.StackErrors(list)
	asserts.AssertStackErrors(list)
	return list
end

function asserts.AssertSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

-- <p>A list of security groups.</p>
-- List of String objects
function M.SecurityGroupIdList(list)
	asserts.AssertSecurityGroupIdList(list)
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
			return "appstream2.amazonaws.com"
		end
	end
	local ss = { "appstream2" }
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
--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackRequest, cb)
	assert(UpdateStackRequest, "You must provide a UpdateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStackRequest
-- @return response
-- @return error_message
function M.UpdateStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFleet asynchronously, invoking a callback when done
-- @param CreateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFleetAsync(CreateFleetRequest, cb)
	assert(CreateFleetRequest, "You must provide a CreateFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFleetRequest
-- @return response
-- @return error_message
function M.CreateFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFleet asynchronously, invoking a callback when done
-- @param DeleteFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFleetAsync(DeleteFleetRequest, cb)
	assert(DeleteFleetRequest, "You must provide a DeleteFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFleetRequest
-- @return response
-- @return error_message
function M.DeleteFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingURL asynchronously, invoking a callback when done
-- @param CreateStreamingURLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingURLAsync(CreateStreamingURLRequest, cb)
	assert(CreateStreamingURLRequest, "You must provide a CreateStreamingURLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateStreamingURL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStreamingURLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamingURL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamingURLRequest
-- @return response
-- @return error_message
function M.CreateStreamingURLSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingURLAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSessions asynchronously, invoking a callback when done
-- @param DescribeSessionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSessionsAsync(DescribeSessionsRequest, cb)
	assert(DescribeSessionsRequest, "You must provide a DescribeSessionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSessionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSessionsRequest
-- @return response
-- @return error_message
function M.DescribeSessionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSessionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateFleet asynchronously, invoking a callback when done
-- @param AssociateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateFleetAsync(AssociateFleetRequest, cb)
	assert(AssociateFleetRequest, "You must provide a AssociateFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.AssociateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateFleetRequest
-- @return response
-- @return error_message
function M.AssociateFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopFleet asynchronously, invoking a callback when done
-- @param StopFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopFleetAsync(StopFleetRequest, cb)
	assert(StopFleetRequest, "You must provide a StopFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StopFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopFleetRequest
-- @return response
-- @return error_message
function M.StopFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleets asynchronously, invoking a callback when done
-- @param DescribeFleetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetsAsync(DescribeFleetsRequest, cb)
	assert(DescribeFleetsRequest, "You must provide a DescribeFleetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetsRequest
-- @return response
-- @return error_message
function M.DescribeFleetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFleet asynchronously, invoking a callback when done
-- @param UpdateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetAsync(UpdateFleetRequest, cb)
	assert(UpdateFleetRequest, "You must provide a UpdateFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFleetRequest
-- @return response
-- @return error_message
function M.UpdateFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImages asynchronously, invoking a callback when done
-- @param DescribeImagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeImagesAsync(DescribeImagesRequest, cb)
	assert(DescribeImagesRequest, "You must provide a DescribeImagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeImagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeImagesRequest
-- @return response
-- @return error_message
function M.DescribeImagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackRequest, cb)
	assert(DeleteStackRequest, "You must provide a DeleteStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStackRequest
-- @return response
-- @return error_message
function M.DeleteStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ExpireSession asynchronously, invoking a callback when done
-- @param ExpireSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ExpireSessionAsync(ExpireSessionRequest, cb)
	assert(ExpireSessionRequest, "You must provide a ExpireSessionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ExpireSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ExpireSessionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExpireSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExpireSessionRequest
-- @return response
-- @return error_message
function M.ExpireSessionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExpireSessionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssociatedStacks asynchronously, invoking a callback when done
-- @param ListAssociatedStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociatedStacksAsync(ListAssociatedStacksRequest, cb)
	assert(ListAssociatedStacksRequest, "You must provide a ListAssociatedStacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ListAssociatedStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssociatedStacksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssociatedStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssociatedStacksRequest
-- @return response
-- @return error_message
function M.ListAssociatedStacksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedStacksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssociatedFleets asynchronously, invoking a callback when done
-- @param ListAssociatedFleetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociatedFleetsAsync(ListAssociatedFleetsRequest, cb)
	assert(ListAssociatedFleetsRequest, "You must provide a ListAssociatedFleetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ListAssociatedFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssociatedFleetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssociatedFleets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssociatedFleetsRequest
-- @return response
-- @return error_message
function M.ListAssociatedFleetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedFleetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartFleet asynchronously, invoking a callback when done
-- @param StartFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartFleetAsync(StartFleetRequest, cb)
	assert(StartFleetRequest, "You must provide a StartFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StartFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartFleetRequest
-- @return response
-- @return error_message
function M.StartFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateFleet asynchronously, invoking a callback when done
-- @param DisassociateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateFleetAsync(DisassociateFleetRequest, cb)
	assert(DisassociateFleetRequest, "You must provide a DisassociateFleetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DisassociateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateFleetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateFleetRequest
-- @return response
-- @return error_message
function M.DisassociateFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksRequest, cb)
	assert(DescribeStacksRequest, "You must provide a DescribeStacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStacksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStacksRequest
-- @return response
-- @return error_message
function M.DescribeStacksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackRequest, cb)
	assert(CreateStackRequest, "You must provide a CreateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStackRequest
-- @return response
-- @return error_message
function M.CreateStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
