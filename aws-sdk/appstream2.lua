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

local ListAssociatedStacksResult_keys = { "NextToken" = true, "Names" = true, nil }

function M.AssertListAssociatedStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedStacksResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Names"] then M.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociatedStacksResult_keys[k], "ListAssociatedStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedStacksResult
-- <p>The response from a successful operation.</p>
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param Names [StringList] <p>The names of associated stacks.</p>
function M.ListAssociatedStacksResult(NextToken, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedStacksResult")
	local t = { 
		["NextToken"] = NextToken,
		["Names"] = Names,
	}
	M.AssertListAssociatedStacksResult(t)
	return t
end

local StopFleetResult_keys = { nil }

function M.AssertStopFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StopFleetResult_keys[k], "StopFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopFleetResult
--  
function M.StopFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopFleetResult")
	local t = { 
	}
	M.AssertStopFleetResult(t)
	return t
end

local DescribeImagesResult_keys = { "Images" = true, nil }

function M.AssertDescribeImagesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesResult to be of type 'table'")
	if struct["Images"] then M.AssertImageList(struct["Images"]) end
	for k,_ in pairs(struct) do
		assert(DescribeImagesResult_keys[k], "DescribeImagesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesResult
--  
-- @param Images [ImageList] <p>The list of images.</p>
function M.DescribeImagesResult(Images, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesResult")
	local t = { 
		["Images"] = Images,
	}
	M.AssertDescribeImagesResult(t)
	return t
end

local OperationNotPermittedException_keys = { "Message" = true, nil }

function M.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedException_keys[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- <p>The attempted operation is not permitted.</p>
-- @param Message [ErrorMessage] <p>The attempted operation is not permitted.</p>
function M.OperationNotPermittedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertOperationNotPermittedException(t)
	return t
end

local DeleteFleetRequest_keys = { "Name" = true, nil }

function M.AssertDeleteFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFleetRequest_keys[k], "DeleteFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetRequest
--  
-- @param Name [String] <p>The name of the fleet to be deleted.</p>
-- Required parameter: Name
function M.DeleteFleetRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteFleetRequest(t)
	return t
end

local CreateStackRequest_keys = { "DisplayName" = true, "Name" = true, "StorageConnectors" = true, "Description" = true, nil }

function M.AssertCreateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["StorageConnectors"] then M.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackRequest_keys[k], "CreateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackRequest
--  
-- @param DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param Name [String] <p>The unique identifier for this stack.</p>
-- @param StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required parameter: Name
function M.CreateStackRequest(DisplayName, Name, StorageConnectors, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackRequest")
	local t = { 
		["DisplayName"] = DisplayName,
		["Name"] = Name,
		["StorageConnectors"] = StorageConnectors,
		["Description"] = Description,
	}
	M.AssertCreateStackRequest(t)
	return t
end

local DescribeSessionsResult_keys = { "NextToken" = true, "Sessions" = true, nil }

function M.AssertDescribeSessionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSessionsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Sessions"] then M.AssertSessionList(struct["Sessions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSessionsResult_keys[k], "DescribeSessionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSessionsResult
--  
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param Sessions [SessionList] <p>The list of streaming sessions.</p>
function M.DescribeSessionsResult(NextToken, Sessions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSessionsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Sessions"] = Sessions,
	}
	M.AssertDescribeSessionsResult(t)
	return t
end

local Stack_keys = { "DisplayName" = true, "Name" = true, "StorageConnectors" = true, "StackErrors" = true, "CreatedTime" = true, "Arn" = true, "Description" = true, nil }

function M.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then M.AssertString(struct["DisplayName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["StorageConnectors"] then M.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["StackErrors"] then M.AssertStackErrors(struct["StackErrors"]) end
	if struct["CreatedTime"] then M.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Arn"] then M.AssertArn(struct["Arn"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(Stack_keys[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>Details about a stack.</p>
-- @param DisplayName [String] <p>A display name for the stack.</p>
-- @param Name [String] <p>The unique identifier of the stack.</p>
-- @param StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param StackErrors [StackErrors] <p>The list of errors associated with the stack.</p>
-- @param CreatedTime [Timestamp] <p>The timestamp when the stack was created.</p>
-- @param Arn [Arn] <p>The ARN of the stack.</p>
-- @param Description [String] <p>A meaningful description for the stack.</p>
-- Required parameter: Name
function M.Stack(DisplayName, Name, StorageConnectors, StackErrors, CreatedTime, Arn, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stack")
	local t = { 
		["DisplayName"] = DisplayName,
		["Name"] = Name,
		["StorageConnectors"] = StorageConnectors,
		["StackErrors"] = StackErrors,
		["CreatedTime"] = CreatedTime,
		["Arn"] = Arn,
		["Description"] = Description,
	}
	M.AssertStack(t)
	return t
end

local StartFleetResult_keys = { nil }

function M.AssertStartFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StartFleetResult_keys[k], "StartFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFleetResult
--  
function M.StartFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartFleetResult")
	local t = { 
	}
	M.AssertStartFleetResult(t)
	return t
end

local ComputeCapacityStatus_keys = { "Available" = true, "Desired" = true, "Running" = true, "InUse" = true, nil }

function M.AssertComputeCapacityStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeCapacityStatus to be of type 'table'")
	assert(struct["Desired"], "Expected key Desired to exist in table")
	if struct["Available"] then M.AssertInteger(struct["Available"]) end
	if struct["Desired"] then M.AssertInteger(struct["Desired"]) end
	if struct["Running"] then M.AssertInteger(struct["Running"]) end
	if struct["InUse"] then M.AssertInteger(struct["InUse"]) end
	for k,_ in pairs(struct) do
		assert(ComputeCapacityStatus_keys[k], "ComputeCapacityStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeCapacityStatus
-- <p>The capacity information for the fleet.</p>
-- @param Available [Integer] <p>The number of currently available instances that can be used to stream sessions.</p>
-- @param Desired [Integer] <p>The desired number of streaming instances.</p>
-- @param Running [Integer] <p>The total number of simultaneous streaming instances that are running.</p>
-- @param InUse [Integer] <p>The number of instances that are being used for streaming.</p>
-- Required parameter: Desired
function M.ComputeCapacityStatus(Available, Desired, Running, InUse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeCapacityStatus")
	local t = { 
		["Available"] = Available,
		["Desired"] = Desired,
		["Running"] = Running,
		["InUse"] = InUse,
	}
	M.AssertComputeCapacityStatus(t)
	return t
end

local LimitExceededException_keys = { "Message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The requested limit exceeds the permitted limit for an account.</p>
-- @param Message [ErrorMessage] <p>The requested limit exceeds the permitted limit for an account.</p>
function M.LimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ConcurrentModificationException_keys = { "Message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>An API error occurred. Wait a few minutes and try again.</p>
-- @param Message [ErrorMessage] <p>An API error occurred. Wait a few minutes and try again.</p>
function M.ConcurrentModificationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local StartFleetRequest_keys = { "Name" = true, nil }

function M.AssertStartFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StartFleetRequest_keys[k], "StartFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFleetRequest
--  
-- @param Name [String] <p>The name of the fleet to start.</p>
-- Required parameter: Name
function M.StartFleetRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartFleetRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertStartFleetRequest(t)
	return t
end

local DescribeStacksRequest_keys = { "NextToken" = true, "Names" = true, nil }

function M.AssertDescribeStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Names"] then M.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksRequest_keys[k], "DescribeStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksRequest
--  
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param Names [StringList] <p>The stack names to describe. Use null to describe all the stacks for the AWS account.</p>
function M.DescribeStacksRequest(NextToken, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Names"] = Names,
	}
	M.AssertDescribeStacksRequest(t)
	return t
end

local CreateStreamingURLRequest_keys = { "FleetName" = true, "UserId" = true, "Validity" = true, "StackName" = true, "SessionContext" = true, "ApplicationId" = true, nil }

function M.AssertCreateStreamingURLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingURLRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	if struct["UserId"] then M.AssertUserId(struct["UserId"]) end
	if struct["Validity"] then M.AssertLong(struct["Validity"]) end
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["SessionContext"] then M.AssertString(struct["SessionContext"]) end
	if struct["ApplicationId"] then M.AssertString(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingURLRequest_keys[k], "CreateStreamingURLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingURLRequest
--  
-- @param FleetName [String] <p>The fleet for which the URL is generated.</p>
-- @param UserId [UserId] <p>A unique user ID for whom the URL is generated.</p>
-- @param Validity [Long] <p>The duration up to which the URL returned by this action is valid. The input can be any numeric value in seconds between 1 and 604800 seconds.</p>
-- @param StackName [String] <p>The stack for which the URL is generated.</p>
-- @param SessionContext [String] <p>The sessionContext of the streaming URL.</p>
-- @param ApplicationId [String] <p>The ID of the application that must be launched after the session starts.</p>
-- Required parameter: StackName
-- Required parameter: FleetName
-- Required parameter: UserId
function M.CreateStreamingURLRequest(FleetName, UserId, Validity, StackName, SessionContext, ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingURLRequest")
	local t = { 
		["FleetName"] = FleetName,
		["UserId"] = UserId,
		["Validity"] = Validity,
		["StackName"] = StackName,
		["SessionContext"] = SessionContext,
		["ApplicationId"] = ApplicationId,
	}
	M.AssertCreateStreamingURLRequest(t)
	return t
end

local Application_keys = { "DisplayName" = true, "Name" = true, "LaunchParameters" = true, "Enabled" = true, "IconURL" = true, "LaunchPath" = true, "Metadata" = true, nil }

function M.AssertApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Application to be of type 'table'")
	if struct["DisplayName"] then M.AssertString(struct["DisplayName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["LaunchParameters"] then M.AssertString(struct["LaunchParameters"]) end
	if struct["Enabled"] then M.AssertBoolean(struct["Enabled"]) end
	if struct["IconURL"] then M.AssertString(struct["IconURL"]) end
	if struct["LaunchPath"] then M.AssertString(struct["LaunchPath"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(Application_keys[k], "Application contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Application
-- <p>An entry for a single application in the application catalog.</p>
-- @param DisplayName [String] <p>The name of the application shown to the end users.</p>
-- @param Name [String] <p>The unique identifier for the application.</p>
-- @param LaunchParameters [String] <p>A list of arguments that are passed to the application at launch.</p>
-- @param Enabled [Boolean] <p>An application can be disabled after image creation if there is a problem.</p>
-- @param IconURL [String] <p>The URL for the application icon. This URL may be time-limited.</p>
-- @param LaunchPath [String] <p>The path to the application executable in the instance.</p>
-- @param Metadata [Metadata] <p>Additional attributes that describe the application.</p>
function M.Application(DisplayName, Name, LaunchParameters, Enabled, IconURL, LaunchPath, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Application")
	local t = { 
		["DisplayName"] = DisplayName,
		["Name"] = Name,
		["LaunchParameters"] = LaunchParameters,
		["Enabled"] = Enabled,
		["IconURL"] = IconURL,
		["LaunchPath"] = LaunchPath,
		["Metadata"] = Metadata,
	}
	M.AssertApplication(t)
	return t
end

local DisassociateFleetResult_keys = { nil }

function M.AssertDisassociateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateFleetResult_keys[k], "DisassociateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFleetResult
--  
function M.DisassociateFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateFleetResult")
	local t = { 
	}
	M.AssertDisassociateFleetResult(t)
	return t
end

local UpdateStackRequest_keys = { "DeleteStorageConnectors" = true, "DisplayName" = true, "Description" = true, "StorageConnectors" = true, "Name" = true, nil }

function M.AssertUpdateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DeleteStorageConnectors"] then M.AssertBoolean(struct["DeleteStorageConnectors"]) end
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["StorageConnectors"] then M.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStackRequest_keys[k], "UpdateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackRequest
--  
-- @param DeleteStorageConnectors [Boolean] <p>Remove all the storage connectors currently enabled for the stack.</p>
-- @param DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- @param StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- @param Name [String] <p>The name of the stack to update.</p>
-- Required parameter: Name
function M.UpdateStackRequest(DeleteStorageConnectors, DisplayName, Description, StorageConnectors, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackRequest")
	local t = { 
		["DeleteStorageConnectors"] = DeleteStorageConnectors,
		["DisplayName"] = DisplayName,
		["Description"] = Description,
		["StorageConnectors"] = StorageConnectors,
		["Name"] = Name,
	}
	M.AssertUpdateStackRequest(t)
	return t
end

local ListAssociatedFleetsResult_keys = { "NextToken" = true, "Names" = true, nil }

function M.AssertListAssociatedFleetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedFleetsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Names"] then M.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociatedFleetsResult_keys[k], "ListAssociatedFleetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedFleetsResult
-- <p>The response from a successful operation.</p>
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param Names [StringList] <p>The names of associated fleets.</p>
function M.ListAssociatedFleetsResult(NextToken, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedFleetsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Names"] = Names,
	}
	M.AssertListAssociatedFleetsResult(t)
	return t
end

local InvalidParameterCombinationException_keys = { "Message" = true, nil }

function M.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterCombinationException_keys[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Indicates an incorrect combination of parameters, or a missing parameter.</p>
-- @param Message [ErrorMessage] <p>Indicates an incorrect combination of parameters, or a missing parameter.</p>
function M.InvalidParameterCombinationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidParameterCombinationException(t)
	return t
end

local UpdateStackResult_keys = { "Stack" = true, nil }

function M.AssertUpdateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackResult to be of type 'table'")
	if struct["Stack"] then M.AssertStack(struct["Stack"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStackResult_keys[k], "UpdateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackResult
--  
-- @param Stack [Stack] <p>A list of stack details.</p>
function M.UpdateStackResult(Stack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackResult")
	local t = { 
		["Stack"] = Stack,
	}
	M.AssertUpdateStackResult(t)
	return t
end

local ComputeCapacity_keys = { "DesiredInstances" = true, nil }

function M.AssertComputeCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeCapacity to be of type 'table'")
	assert(struct["DesiredInstances"], "Expected key DesiredInstances to exist in table")
	if struct["DesiredInstances"] then M.AssertInteger(struct["DesiredInstances"]) end
	for k,_ in pairs(struct) do
		assert(ComputeCapacity_keys[k], "ComputeCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeCapacity
-- <p>The capacity configuration for the fleet.</p>
-- @param DesiredInstances [Integer] <p>The desired number of streaming instances.</p>
-- Required parameter: DesiredInstances
function M.ComputeCapacity(DesiredInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeCapacity")
	local t = { 
		["DesiredInstances"] = DesiredInstances,
	}
	M.AssertComputeCapacity(t)
	return t
end

local ExpireSessionRequest_keys = { "SessionId" = true, nil }

function M.AssertExpireSessionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpireSessionRequest to be of type 'table'")
	assert(struct["SessionId"], "Expected key SessionId to exist in table")
	if struct["SessionId"] then M.AssertString(struct["SessionId"]) end
	for k,_ in pairs(struct) do
		assert(ExpireSessionRequest_keys[k], "ExpireSessionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpireSessionRequest
--  
-- @param SessionId [String] <p>The unique identifier of the streaming session to be stopped.</p>
-- Required parameter: SessionId
function M.ExpireSessionRequest(SessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpireSessionRequest")
	local t = { 
		["SessionId"] = SessionId,
	}
	M.AssertExpireSessionRequest(t)
	return t
end

local IncompatibleImageException_keys = { "Message" = true, nil }

function M.AssertIncompatibleImageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleImageException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IncompatibleImageException_keys[k], "IncompatibleImageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleImageException
-- <p>The image does not support storage connectors.</p>
-- @param Message [ErrorMessage] <p>The image does not support storage connectors.</p>
function M.IncompatibleImageException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleImageException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIncompatibleImageException(t)
	return t
end

local ResourceAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The specified resource already exists.</p>
-- @param Message [ErrorMessage] <p>The specified resource already exists.</p>
function M.ResourceAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local DeleteStackRequest_keys = { "Name" = true, nil }

function M.AssertDeleteStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStackRequest_keys[k], "DeleteStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackRequest
--  
-- @param Name [String] <p>The name of the stack to delete.</p>
-- Required parameter: Name
function M.DeleteStackRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteStackRequest(t)
	return t
end

local CreateStackResult_keys = { "Stack" = true, nil }

function M.AssertCreateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackResult to be of type 'table'")
	if struct["Stack"] then M.AssertStack(struct["Stack"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackResult_keys[k], "CreateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackResult
--  
-- @param Stack [Stack] <p>The details for the created stack.</p>
function M.CreateStackResult(Stack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackResult")
	local t = { 
		["Stack"] = Stack,
	}
	M.AssertCreateStackResult(t)
	return t
end

local Image_keys = { "PublicBaseImageReleasedDate" = true, "DisplayName" = true, "Name" = true, "Applications" = true, "BaseImageArn" = true, "Visibility" = true, "Platform" = true, "State" = true, "CreatedTime" = true, "Description" = true, "StateChangeReason" = true, "Arn" = true, "ImageBuilderSupported" = true, nil }

function M.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["PublicBaseImageReleasedDate"] then M.AssertTimestamp(struct["PublicBaseImageReleasedDate"]) end
	if struct["DisplayName"] then M.AssertString(struct["DisplayName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Applications"] then M.AssertApplications(struct["Applications"]) end
	if struct["BaseImageArn"] then M.AssertArn(struct["BaseImageArn"]) end
	if struct["Visibility"] then M.AssertVisibilityType(struct["Visibility"]) end
	if struct["Platform"] then M.AssertPlatformType(struct["Platform"]) end
	if struct["State"] then M.AssertImageState(struct["State"]) end
	if struct["CreatedTime"] then M.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["StateChangeReason"] then M.AssertImageStateChangeReason(struct["StateChangeReason"]) end
	if struct["Arn"] then M.AssertArn(struct["Arn"]) end
	if struct["ImageBuilderSupported"] then M.AssertBoolean(struct["ImageBuilderSupported"]) end
	for k,_ in pairs(struct) do
		assert(Image_keys[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>New streaming instances are booted from images. The image stores the application catalog and is connected to fleets.</p>
-- @param PublicBaseImageReleasedDate [Timestamp] <p>The AWS release date of the public base image. For private images, this date is the release date of the base image from which the image was created.</p>
-- @param DisplayName [String] <p>The display name for the image.</p>
-- @param Name [String] <p>The unique identifier for the image.</p>
-- @param Applications [Applications] <p>The applications associated with an image.</p>
-- @param BaseImageArn [Arn] <p>The source image ARN from which this image was created.</p>
-- @param Visibility [VisibilityType] <p>The visibility of an image to the user; images can be public or private.</p>
-- @param Platform [PlatformType] <p>The operating system platform of the image.</p>
-- @param State [ImageState] <p>The image starts in the <b>PENDING</b> state, and then moves to <b>AVAILABLE</b> if image creation succeeds and <b>FAILED</b> if image creation has failed.</p>
-- @param CreatedTime [Timestamp] <p>The timestamp when the image was created.</p>
-- @param Description [String] <p>A meaningful description for the image.</p>
-- @param StateChangeReason [ImageStateChangeReason] <p>The reason why the last state change occurred.</p>
-- @param Arn [Arn] <p>The ARN for the image.</p>
-- @param ImageBuilderSupported [Boolean] <p>Whether an image builder can be launched from this image.</p>
-- Required parameter: Name
function M.Image(PublicBaseImageReleasedDate, DisplayName, Name, Applications, BaseImageArn, Visibility, Platform, State, CreatedTime, Description, StateChangeReason, Arn, ImageBuilderSupported, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Image")
	local t = { 
		["PublicBaseImageReleasedDate"] = PublicBaseImageReleasedDate,
		["DisplayName"] = DisplayName,
		["Name"] = Name,
		["Applications"] = Applications,
		["BaseImageArn"] = BaseImageArn,
		["Visibility"] = Visibility,
		["Platform"] = Platform,
		["State"] = State,
		["CreatedTime"] = CreatedTime,
		["Description"] = Description,
		["StateChangeReason"] = StateChangeReason,
		["Arn"] = Arn,
		["ImageBuilderSupported"] = ImageBuilderSupported,
	}
	M.AssertImage(t)
	return t
end

local Session_keys = { "AuthenticationType" = true, "UserId" = true, "FleetName" = true, "StackName" = true, "State" = true, "Id" = true, nil }

function M.AssertSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Session to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["AuthenticationType"] then M.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["UserId"] then M.AssertUserId(struct["UserId"]) end
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["State"] then M.AssertSessionState(struct["State"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Session_keys[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- <p>Contains the parameters for a streaming session.</p>
-- @param AuthenticationType [AuthenticationType] <p>The authentication method of the user for whom the session was created. It can be <code>API</code> for a user authenticated using a streaming URL or <code>SAML</code> for a SAML federated user.</p>
-- @param UserId [UserId] <p>The identifier of the user for whom the session was created.</p>
-- @param FleetName [String] <p>The name of the fleet for which the streaming session was created.</p>
-- @param StackName [String] <p>The name of the stack for which the streaming session was created.</p>
-- @param State [SessionState] <p>The current state of the streaming session.</p>
-- @param Id [String] <p>The unique ID for a streaming session.</p>
-- Required parameter: Id
-- Required parameter: UserId
-- Required parameter: StackName
-- Required parameter: FleetName
-- Required parameter: State
function M.Session(AuthenticationType, UserId, FleetName, StackName, State, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Session")
	local t = { 
		["AuthenticationType"] = AuthenticationType,
		["UserId"] = UserId,
		["FleetName"] = FleetName,
		["StackName"] = StackName,
		["State"] = State,
		["Id"] = Id,
	}
	M.AssertSession(t)
	return t
end

local StopFleetRequest_keys = { "Name" = true, nil }

function M.AssertStopFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StopFleetRequest_keys[k], "StopFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopFleetRequest
--  
-- @param Name [String] <p>The name of the fleet to stop.</p>
-- Required parameter: Name
function M.StopFleetRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopFleetRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertStopFleetRequest(t)
	return t
end

local ImageStateChangeReason_keys = { "Message" = true, "Code" = true, nil }

function M.AssertImageStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageStateChangeReason to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertImageStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(ImageStateChangeReason_keys[k], "ImageStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageStateChangeReason
-- <p>The reason why the last state change occurred.</p>
-- @param Message [String] <p>The state change reason message to the end user.</p>
-- @param Code [ImageStateChangeReasonCode] <p>The state change reason code of the image.</p>
function M.ImageStateChangeReason(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageStateChangeReason")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertImageStateChangeReason(t)
	return t
end

local ExpireSessionResult_keys = { nil }

function M.AssertExpireSessionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpireSessionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ExpireSessionResult_keys[k], "ExpireSessionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpireSessionResult
--  
function M.ExpireSessionResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpireSessionResult")
	local t = { 
	}
	M.AssertExpireSessionResult(t)
	return t
end

local ListAssociatedFleetsRequest_keys = { "StackName" = true, "NextToken" = true, nil }

function M.AssertListAssociatedFleetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedFleetsRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociatedFleetsRequest_keys[k], "ListAssociatedFleetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedFleetsRequest
--  
-- @param StackName [String] <p>The name of the stack whose associated fleets are listed.</p>
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required parameter: StackName
function M.ListAssociatedFleetsRequest(StackName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedFleetsRequest")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
	}
	M.AssertListAssociatedFleetsRequest(t)
	return t
end

local DescribeStacksResult_keys = { "NextToken" = true, "Stacks" = true, nil }

function M.AssertDescribeStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Stacks"] then M.AssertStackList(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksResult_keys[k], "DescribeStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksResult
--  
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param Stacks [StackList] <p>The list of stack details.</p>
function M.DescribeStacksResult(NextToken, Stacks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksResult")
	local t = { 
		["NextToken"] = NextToken,
		["Stacks"] = Stacks,
	}
	M.AssertDescribeStacksResult(t)
	return t
end

local CreateFleetRequest_keys = { "DisplayName" = true, "MaxUserDurationInSeconds" = true, "VpcConfig" = true, "DisconnectTimeoutInSeconds" = true, "EnableDefaultInternetAccess" = true, "ImageName" = true, "ComputeCapacity" = true, "Description" = true, "InstanceType" = true, "Name" = true, nil }

function M.AssertCreateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ImageName"], "Expected key ImageName to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacity"], "Expected key ComputeCapacity to exist in table")
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["MaxUserDurationInSeconds"] then M.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["VpcConfig"] then M.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then M.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then M.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageName"] then M.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then M.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateFleetRequest_keys[k], "CreateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetRequest
-- <p>Contains the parameters for the new fleet to create.</p>
-- @param DisplayName [DisplayName] <p>The display name of the fleet.</p>
-- @param MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- @param VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600. </p>
-- @param EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- @param ImageName [String] <p>Unique name of the image used by the fleet.</p>
-- @param ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet.</p>
-- @param Description [Description] <p>The description of the fleet.</p>
-- @param InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- @param Name [Name] <p>A unique identifier for the fleet.</p>
-- Required parameter: Name
-- Required parameter: ImageName
-- Required parameter: InstanceType
-- Required parameter: ComputeCapacity
function M.CreateFleetRequest(DisplayName, MaxUserDurationInSeconds, VpcConfig, DisconnectTimeoutInSeconds, EnableDefaultInternetAccess, ImageName, ComputeCapacity, Description, InstanceType, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetRequest")
	local t = { 
		["DisplayName"] = DisplayName,
		["MaxUserDurationInSeconds"] = MaxUserDurationInSeconds,
		["VpcConfig"] = VpcConfig,
		["DisconnectTimeoutInSeconds"] = DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = EnableDefaultInternetAccess,
		["ImageName"] = ImageName,
		["ComputeCapacity"] = ComputeCapacity,
		["Description"] = Description,
		["InstanceType"] = InstanceType,
		["Name"] = Name,
	}
	M.AssertCreateFleetRequest(t)
	return t
end

local UpdateFleetResult_keys = { "Fleet" = true, nil }

function M.AssertUpdateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetResult to be of type 'table'")
	if struct["Fleet"] then M.AssertFleet(struct["Fleet"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetResult_keys[k], "UpdateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetResult
--  
-- @param Fleet [Fleet] <p>A list of fleet details.</p>
function M.UpdateFleetResult(Fleet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetResult")
	local t = { 
		["Fleet"] = Fleet,
	}
	M.AssertUpdateFleetResult(t)
	return t
end

local InvalidRoleException_keys = { "Message" = true, nil }

function M.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRoleException_keys[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- <p>The specified role is invalid.</p>
-- @param Message [ErrorMessage] <p>The specified role is invalid.</p>
function M.InvalidRoleException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRoleException(t)
	return t
end

local ListAssociatedStacksRequest_keys = { "NextToken" = true, "FleetName" = true, nil }

function M.AssertListAssociatedStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociatedStacksRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociatedStacksRequest_keys[k], "ListAssociatedStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociatedStacksRequest
--  
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param FleetName [String] <p>The name of the fleet whose associated stacks are listed.</p>
-- Required parameter: FleetName
function M.ListAssociatedStacksRequest(NextToken, FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociatedStacksRequest")
	local t = { 
		["NextToken"] = NextToken,
		["FleetName"] = FleetName,
	}
	M.AssertListAssociatedStacksRequest(t)
	return t
end

local DeleteStackResult_keys = { nil }

function M.AssertDeleteStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteStackResult_keys[k], "DeleteStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackResult
--  
function M.DeleteStackResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackResult")
	local t = { 
	}
	M.AssertDeleteStackResult(t)
	return t
end

local Fleet_keys = { "ComputeCapacityStatus" = true, "DisplayName" = true, "Name" = true, "VpcConfig" = true, "FleetErrors" = true, "DisconnectTimeoutInSeconds" = true, "EnableDefaultInternetAccess" = true, "State" = true, "ImageName" = true, "CreatedTime" = true, "MaxUserDurationInSeconds" = true, "InstanceType" = true, "Arn" = true, "Description" = true, nil }

function M.AssertFleet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Fleet to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ImageName"], "Expected key ImageName to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacityStatus"], "Expected key ComputeCapacityStatus to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["ComputeCapacityStatus"] then M.AssertComputeCapacityStatus(struct["ComputeCapacityStatus"]) end
	if struct["DisplayName"] then M.AssertString(struct["DisplayName"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["VpcConfig"] then M.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["FleetErrors"] then M.AssertFleetErrors(struct["FleetErrors"]) end
	if struct["DisconnectTimeoutInSeconds"] then M.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then M.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["State"] then M.AssertFleetState(struct["State"]) end
	if struct["ImageName"] then M.AssertString(struct["ImageName"]) end
	if struct["CreatedTime"] then M.AssertTimestamp(struct["CreatedTime"]) end
	if struct["MaxUserDurationInSeconds"] then M.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["Arn"] then M.AssertArn(struct["Arn"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(Fleet_keys[k], "Fleet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Fleet
-- <p>Contains the parameters for a fleet.</p>
-- @param ComputeCapacityStatus [ComputeCapacityStatus] <p>The capacity information for the fleet.</p>
-- @param DisplayName [String] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param Name [String] <p>The name of the fleet.</p>
-- @param VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param FleetErrors [FleetErrors] <p>The list of fleet errors is appended to this list.</p>
-- @param DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- @param EnableDefaultInternetAccess [BooleanObject] <p>Whether default Internet access is enabled for the fleet. </p>
-- @param State [FleetState] <p>The current state for the fleet.</p>
-- @param ImageName [String] <p>The image used by the fleet.</p>
-- @param CreatedTime [Timestamp] <p>The time at which the fleet was created.</p>
-- @param MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The value can be any numeric value in seconds between 600 and 57600.</p>
-- @param InstanceType [String] <p>The instance type of compute resources for the fleet. The fleet instances are launched from this instance type. </p>
-- @param Arn [Arn] <p>The ARN for the fleet.</p>
-- @param Description [String] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required parameter: Arn
-- Required parameter: Name
-- Required parameter: ImageName
-- Required parameter: InstanceType
-- Required parameter: ComputeCapacityStatus
-- Required parameter: State
function M.Fleet(ComputeCapacityStatus, DisplayName, Name, VpcConfig, FleetErrors, DisconnectTimeoutInSeconds, EnableDefaultInternetAccess, State, ImageName, CreatedTime, MaxUserDurationInSeconds, InstanceType, Arn, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Fleet")
	local t = { 
		["ComputeCapacityStatus"] = ComputeCapacityStatus,
		["DisplayName"] = DisplayName,
		["Name"] = Name,
		["VpcConfig"] = VpcConfig,
		["FleetErrors"] = FleetErrors,
		["DisconnectTimeoutInSeconds"] = DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = EnableDefaultInternetAccess,
		["State"] = State,
		["ImageName"] = ImageName,
		["CreatedTime"] = CreatedTime,
		["MaxUserDurationInSeconds"] = MaxUserDurationInSeconds,
		["InstanceType"] = InstanceType,
		["Arn"] = Arn,
		["Description"] = Description,
	}
	M.AssertFleet(t)
	return t
end

local DescribeFleetsRequest_keys = { "NextToken" = true, "Names" = true, nil }

function M.AssertDescribeFleetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Names"] then M.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetsRequest_keys[k], "DescribeFleetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetsRequest
--  
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- @param Names [StringList] <p>The fleet names to describe. Use null to describe all the fleets for the AWS account.</p>
function M.DescribeFleetsRequest(NextToken, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Names"] = Names,
	}
	M.AssertDescribeFleetsRequest(t)
	return t
end

local DescribeFleetsResult_keys = { "Fleets" = true, "NextToken" = true, nil }

function M.AssertDescribeFleetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetsResult to be of type 'table'")
	if struct["Fleets"] then M.AssertFleetList(struct["Fleets"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetsResult_keys[k], "DescribeFleetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetsResult
--  
-- @param Fleets [FleetList] <p>The list of fleet details.</p>
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
function M.DescribeFleetsResult(Fleets, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetsResult")
	local t = { 
		["Fleets"] = Fleets,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeFleetsResult(t)
	return t
end

local ResourceNotFoundException_keys = { "Message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource was not found.</p>
-- @param Message [ErrorMessage] <p>The specified resource was not found.</p>
function M.ResourceNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local UpdateFleetRequest_keys = { "AttributesToDelete" = true, "DeleteVpcConfig" = true, "DisplayName" = true, "MaxUserDurationInSeconds" = true, "VpcConfig" = true, "DisconnectTimeoutInSeconds" = true, "EnableDefaultInternetAccess" = true, "ImageName" = true, "ComputeCapacity" = true, "Description" = true, "InstanceType" = true, "Name" = true, nil }

function M.AssertUpdateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributesToDelete"] then M.AssertFleetAttributes(struct["AttributesToDelete"]) end
	if struct["DeleteVpcConfig"] then M.AssertBoolean(struct["DeleteVpcConfig"]) end
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["MaxUserDurationInSeconds"] then M.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["VpcConfig"] then M.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then M.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then M.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageName"] then M.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then M.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetRequest_keys[k], "UpdateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetRequest
--  
-- @param AttributesToDelete [FleetAttributes] <p>Fleet attributes to be deleted.</p>
-- @param DeleteVpcConfig [Boolean] <p>Delete the VPC association for the specified fleet.</p>
-- @param DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- @param MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- @param VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- @param DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- @param EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- @param ImageName [String] <p>The image name from which a fleet is created.</p>
-- @param ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet. </p>
-- @param Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- @param InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- @param Name [String] <p>The name of the fleet.</p>
-- Required parameter: Name
function M.UpdateFleetRequest(AttributesToDelete, DeleteVpcConfig, DisplayName, MaxUserDurationInSeconds, VpcConfig, DisconnectTimeoutInSeconds, EnableDefaultInternetAccess, ImageName, ComputeCapacity, Description, InstanceType, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetRequest")
	local t = { 
		["AttributesToDelete"] = AttributesToDelete,
		["DeleteVpcConfig"] = DeleteVpcConfig,
		["DisplayName"] = DisplayName,
		["MaxUserDurationInSeconds"] = MaxUserDurationInSeconds,
		["VpcConfig"] = VpcConfig,
		["DisconnectTimeoutInSeconds"] = DisconnectTimeoutInSeconds,
		["EnableDefaultInternetAccess"] = EnableDefaultInternetAccess,
		["ImageName"] = ImageName,
		["ComputeCapacity"] = ComputeCapacity,
		["Description"] = Description,
		["InstanceType"] = InstanceType,
		["Name"] = Name,
	}
	M.AssertUpdateFleetRequest(t)
	return t
end

local FleetError_keys = { "ErrorCode" = true, "ErrorMessage" = true, nil }

function M.AssertFleetError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetError to be of type 'table'")
	if struct["ErrorCode"] then M.AssertFleetErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(FleetError_keys[k], "FleetError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetError
-- <p>The details of the fleet error.</p>
-- @param ErrorCode [FleetErrorCode] <p>The error code for the fleet error.</p>
-- @param ErrorMessage [String] <p>The error message generated when the fleet has errors.</p>
function M.FleetError(ErrorCode, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetError")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertFleetError(t)
	return t
end

local DescribeSessionsRequest_keys = { "AuthenticationType" = true, "FleetName" = true, "UserId" = true, "StackName" = true, "Limit" = true, "NextToken" = true, nil }

function M.AssertDescribeSessionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSessionsRequest to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	if struct["AuthenticationType"] then M.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	if struct["UserId"] then M.AssertUserId(struct["UserId"]) end
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["Limit"] then M.AssertInteger(struct["Limit"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSessionsRequest_keys[k], "DescribeSessionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSessionsRequest
--  
-- @param AuthenticationType [AuthenticationType] <p>The authentication method of the user. It can be <code>API</code> for a user authenticated using a streaming URL, or <code>SAML</code> for a SAML federated user. If an authentication type is not provided, the operation defaults to users authenticated using a streaming URL.</p>
-- @param FleetName [String] <p>The name of the fleet for which to list sessions.</p>
-- @param UserId [UserId] <p>The user for whom to list sessions. Use null to describe all the sessions for the stack and fleet.</p>
-- @param StackName [String] <p>The name of the stack for which to list sessions.</p>
-- @param Limit [Integer] <p>The size of each page of results. The default value is 20 and the maximum supported value is 50.</p>
-- @param NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required parameter: StackName
-- Required parameter: FleetName
function M.DescribeSessionsRequest(AuthenticationType, FleetName, UserId, StackName, Limit, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSessionsRequest")
	local t = { 
		["AuthenticationType"] = AuthenticationType,
		["FleetName"] = FleetName,
		["UserId"] = UserId,
		["StackName"] = StackName,
		["Limit"] = Limit,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeSessionsRequest(t)
	return t
end

local AssociateFleetRequest_keys = { "StackName" = true, "FleetName" = true, nil }

function M.AssertAssociateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateFleetRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(AssociateFleetRequest_keys[k], "AssociateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateFleetRequest
--  
-- @param StackName [String] <p>The name of the stack to which the fleet is associated.</p>
-- @param FleetName [String] <p>The name of the fleet to associate.</p>
-- Required parameter: FleetName
-- Required parameter: StackName
function M.AssociateFleetRequest(StackName, FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateFleetRequest")
	local t = { 
		["StackName"] = StackName,
		["FleetName"] = FleetName,
	}
	M.AssertAssociateFleetRequest(t)
	return t
end

local ResourceNotAvailableException_keys = { "Message" = true, nil }

function M.AssertResourceNotAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotAvailableException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotAvailableException_keys[k], "ResourceNotAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotAvailableException
-- <p>The specified resource exists and is not in use, but isn't available.</p>
-- @param Message [ErrorMessage] <p>The specified resource exists and is not in use, but isn't available.</p>
function M.ResourceNotAvailableException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotAvailableException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceNotAvailableException(t)
	return t
end

local CreateFleetResult_keys = { "Fleet" = true, nil }

function M.AssertCreateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetResult to be of type 'table'")
	if struct["Fleet"] then M.AssertFleet(struct["Fleet"]) end
	for k,_ in pairs(struct) do
		assert(CreateFleetResult_keys[k], "CreateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetResult
--  
-- @param Fleet [Fleet] <p>The details for the created fleet.</p>
function M.CreateFleetResult(Fleet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetResult")
	local t = { 
		["Fleet"] = Fleet,
	}
	M.AssertCreateFleetResult(t)
	return t
end

local StorageConnector_keys = { "ConnectorType" = true, "ResourceIdentifier" = true, nil }

function M.AssertStorageConnector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageConnector to be of type 'table'")
	assert(struct["ConnectorType"], "Expected key ConnectorType to exist in table")
	if struct["ConnectorType"] then M.AssertStorageConnectorType(struct["ConnectorType"]) end
	if struct["ResourceIdentifier"] then M.AssertResourceIdentifier(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(StorageConnector_keys[k], "StorageConnector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageConnector
-- <p>Contains the parameters for a storage connector.</p>
-- @param ConnectorType [StorageConnectorType] <p>The type of storage connector. The possible values include: HOMEFOLDERS.</p>
-- @param ResourceIdentifier [ResourceIdentifier] <p>The ARN associated with the storage connector.</p>
-- Required parameter: ConnectorType
function M.StorageConnector(ConnectorType, ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageConnector")
	local t = { 
		["ConnectorType"] = ConnectorType,
		["ResourceIdentifier"] = ResourceIdentifier,
	}
	M.AssertStorageConnector(t)
	return t
end

local DescribeImagesRequest_keys = { "Names" = true, nil }

function M.AssertDescribeImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesRequest to be of type 'table'")
	if struct["Names"] then M.AssertStringList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(DescribeImagesRequest_keys[k], "DescribeImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesRequest
--  
-- @param Names [StringList] <p>A specific list of images to describe.</p>
function M.DescribeImagesRequest(Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesRequest")
	local t = { 
		["Names"] = Names,
	}
	M.AssertDescribeImagesRequest(t)
	return t
end

local StackError_keys = { "ErrorCode" = true, "ErrorMessage" = true, nil }

function M.AssertStackError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackError to be of type 'table'")
	if struct["ErrorCode"] then M.AssertStackErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(StackError_keys[k], "StackError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackError
-- <p>Contains the parameters for a stack error.</p>
-- @param ErrorCode [StackErrorCode] <p>The error code of a stack error.</p>
-- @param ErrorMessage [String] <p>The error message of a stack error.</p>
function M.StackError(ErrorCode, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackError")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertStackError(t)
	return t
end

local DeleteFleetResult_keys = { nil }

function M.AssertDeleteFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteFleetResult_keys[k], "DeleteFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetResult
--  
function M.DeleteFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetResult")
	local t = { 
	}
	M.AssertDeleteFleetResult(t)
	return t
end

local AssociateFleetResult_keys = { nil }

function M.AssertAssociateFleetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateFleetResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociateFleetResult_keys[k], "AssociateFleetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateFleetResult
--  
function M.AssociateFleetResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateFleetResult")
	local t = { 
	}
	M.AssertAssociateFleetResult(t)
	return t
end

local CreateStreamingURLResult_keys = { "Expires" = true, "StreamingURL" = true, nil }

function M.AssertCreateStreamingURLResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingURLResult to be of type 'table'")
	if struct["Expires"] then M.AssertTimestamp(struct["Expires"]) end
	if struct["StreamingURL"] then M.AssertString(struct["StreamingURL"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingURLResult_keys[k], "CreateStreamingURLResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingURLResult
--  
-- @param Expires [Timestamp] <p>Elapsed seconds after the Unix epoch, at which time this URL expires.</p>
-- @param StreamingURL [String] <p>The URL to start the AppStream 2.0 streaming session.</p>
function M.CreateStreamingURLResult(Expires, StreamingURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingURLResult")
	local t = { 
		["Expires"] = Expires,
		["StreamingURL"] = StreamingURL,
	}
	M.AssertCreateStreamingURLResult(t)
	return t
end

local DisassociateFleetRequest_keys = { "StackName" = true, "FleetName" = true, nil }

function M.AssertDisassociateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateFleetRequest to be of type 'table'")
	assert(struct["FleetName"], "Expected key FleetName to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertString(struct["StackName"]) end
	if struct["FleetName"] then M.AssertString(struct["FleetName"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateFleetRequest_keys[k], "DisassociateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateFleetRequest
--  
-- @param StackName [String] <p>The name of the stack with which the fleet is associated.</p>
-- @param FleetName [String] <p>The name of the fleet to disassociate.</p>
-- Required parameter: FleetName
-- Required parameter: StackName
function M.DisassociateFleetRequest(StackName, FleetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateFleetRequest")
	local t = { 
		["StackName"] = StackName,
		["FleetName"] = FleetName,
	}
	M.AssertDisassociateFleetRequest(t)
	return t
end

local VpcConfig_keys = { "SubnetIds" = true, "SecurityGroupIds" = true, nil }

function M.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["SubnetIds"] then M.AssertSubnetIdList(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdList(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(VpcConfig_keys[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>VPC configuration information.</p>
-- @param SubnetIds [SubnetIdList] <p>The list of subnets to which a network interface is established from the fleet instance.</p>
-- @param SecurityGroupIds [SecurityGroupIdList] <p>Security groups associated with the fleet.</p>
function M.VpcConfig(SubnetIds, SecurityGroupIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcConfig")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["SecurityGroupIds"] = SecurityGroupIds,
	}
	M.AssertVpcConfig(t)
	return t
end

local ResourceInUseException_keys = { "Message" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The specified resource is in use.</p>
-- @param Message [ErrorMessage] <p>The specified resource is in use.</p>
function M.ResourceInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceInUseException(t)
	return t
end

function M.AssertSessionState(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionState to be of type 'string'")
end

-- <p>Possible values for the state of a streaming session.</p>
function M.SessionState(str)
	M.AssertSessionState(str)
	return str
end

function M.AssertFleetErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetErrorCode to be of type 'string'")
end

--  
function M.FleetErrorCode(str)
	M.AssertFleetErrorCode(str)
	return str
end

function M.AssertStackErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StackErrorCode to be of type 'string'")
end

--  
function M.StackErrorCode(str)
	M.AssertStackErrorCode(str)
	return str
end

function M.AssertFleetAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetAttribute to be of type 'string'")
end

-- <p>Fleet attribute.</p>
function M.FleetAttribute(str)
	M.AssertFleetAttribute(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(str:match("^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"), "Expected string to match pattern '^arn:aws:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.DisplayName(str)
	M.AssertDisplayName(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(str:match("^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"), "Expected string to match pattern '^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$'")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertFleetState(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetState to be of type 'string'")
end

--  
function M.FleetState(str)
	M.AssertFleetState(str)
	return str
end

function M.AssertImageStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageStateChangeReasonCode to be of type 'string'")
end

--  
function M.ImageStateChangeReasonCode(str)
	M.AssertImageStateChangeReasonCode(str)
	return str
end

function M.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	M.AssertPlatformType(str)
	return str
end

function M.AssertResourceIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceIdentifier to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The ARN of the resource.</p>
function M.ResourceIdentifier(str)
	M.AssertResourceIdentifier(str)
	return str
end

function M.AssertVisibilityType(str)
	assert(str)
	assert(type(str) == "string", "Expected VisibilityType to be of type 'string'")
end

--  
function M.VisibilityType(str)
	M.AssertVisibilityType(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- <p>The error message in the exception.</p>
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertAuthenticationType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationType to be of type 'string'")
end

--  
function M.AuthenticationType(str)
	M.AssertAuthenticationType(str)
	return str
end

function M.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.UserId(str)
	M.AssertUserId(str)
	return str
end

function M.AssertImageState(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageState to be of type 'string'")
end

--  
function M.ImageState(str)
	M.AssertImageState(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertStorageConnectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageConnectorType to be of type 'string'")
end

-- <p>The type of storage connector. The possible values include: HOMEFOLDERS.</p>
function M.StorageConnectorType(str)
	M.AssertStorageConnectorType(str)
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

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	M.AssertBooleanObject(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected Metadata to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.Metadata(map)
	M.AssertMetadata(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertStorageConnectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected StorageConnectorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStorageConnector(v)
	end
end

-- <p>A list of storage connectors.</p>
-- List of StorageConnector objects
function M.StorageConnectorList(list)
	M.AssertStorageConnectorList(list)
	return list
end

function M.AssertFleetAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleetAttribute(v)
	end
end

-- <p>A list of fleet attributes.</p>
-- List of FleetAttribute objects
function M.FleetAttributes(list)
	M.AssertFleetAttributes(list)
	return list
end

function M.AssertApplications(list)
	assert(list)
	assert(type(list) == "table", "Expected Applications to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplication(v)
	end
end

--  
-- List of Application objects
function M.Applications(list)
	M.AssertApplications(list)
	return list
end

function M.AssertSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SessionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSession(v)
	end
end

-- <p>List of sessions.</p>
-- List of Session objects
function M.SessionList(list)
	M.AssertSessionList(list)
	return list
end

function M.AssertFleetErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetErrors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleetError(v)
	end
end

--  
-- List of FleetError objects
function M.FleetErrors(list)
	M.AssertFleetErrors(list)
	return list
end

function M.AssertStackList(list)
	assert(list)
	assert(type(list) == "table", "Expected StackList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStack(v)
	end
end

-- <p>A list of stacks.</p>
-- List of Stack objects
function M.StackList(list)
	M.AssertStackList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertSubnetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

-- <p>A list of subnet IDs.</p>
-- List of String objects
function M.SubnetIdList(list)
	M.AssertSubnetIdList(list)
	return list
end

function M.AssertFleetList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleet(v)
	end
end

-- <p>A list of fleets.</p>
-- List of Fleet objects
function M.FleetList(list)
	M.AssertFleetList(list)
	return list
end

function M.AssertImageList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImage(v)
	end
end

--  
-- List of Image objects
function M.ImageList(list)
	M.AssertImageList(list)
	return list
end

function M.AssertStackErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected StackErrors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackError(v)
	end
end

-- <p>A list of stack errors.</p>
-- List of StackError objects
function M.StackErrors(list)
	M.AssertStackErrors(list)
	return list
end

function M.AssertSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

-- <p>A list of security groups.</p>
-- List of String objects
function M.SecurityGroupIdList(list)
	M.AssertSecurityGroupIdList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- UpdateStack
-- @param UpdateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackRequest, cb)
	assert(UpdateStackRequest, "You must provide a UpdateStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFleet
-- @param CreateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFleetAsync(CreateFleetRequest, cb)
	assert(CreateFleetRequest, "You must provide a CreateFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFleet
-- @param DeleteFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFleetAsync(DeleteFleetRequest, cb)
	assert(DeleteFleetRequest, "You must provide a DeleteFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStreamingURL
-- @param CreateStreamingURLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingURLAsync(CreateStreamingURLRequest, cb)
	assert(CreateStreamingURLRequest, "You must provide a CreateStreamingURLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateStreamingURL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStreamingURLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSessions
-- @param DescribeSessionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSessionsAsync(DescribeSessionsRequest, cb)
	assert(DescribeSessionsRequest, "You must provide a DescribeSessionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSessionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateFleet
-- @param AssociateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateFleetAsync(AssociateFleetRequest, cb)
	assert(AssociateFleetRequest, "You must provide a AssociateFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.AssociateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopFleet
-- @param StopFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopFleetAsync(StopFleetRequest, cb)
	assert(StopFleetRequest, "You must provide a StopFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StopFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleets
-- @param DescribeFleetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetsAsync(DescribeFleetsRequest, cb)
	assert(DescribeFleetsRequest, "You must provide a DescribeFleetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFleet
-- @param UpdateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetAsync(UpdateFleetRequest, cb)
	assert(UpdateFleetRequest, "You must provide a UpdateFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeImages
-- @param DescribeImagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeImagesAsync(DescribeImagesRequest, cb)
	assert(DescribeImagesRequest, "You must provide a DescribeImagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeImagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStack
-- @param DeleteStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackRequest, cb)
	assert(DeleteStackRequest, "You must provide a DeleteStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ExpireSession
-- @param ExpireSessionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ExpireSessionAsync(ExpireSessionRequest, cb)
	assert(ExpireSessionRequest, "You must provide a ExpireSessionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ExpireSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ExpireSessionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssociatedStacks
-- @param ListAssociatedStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociatedStacksAsync(ListAssociatedStacksRequest, cb)
	assert(ListAssociatedStacksRequest, "You must provide a ListAssociatedStacksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ListAssociatedStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssociatedStacksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssociatedFleets
-- @param ListAssociatedFleetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociatedFleetsAsync(ListAssociatedFleetsRequest, cb)
	assert(ListAssociatedFleetsRequest, "You must provide a ListAssociatedFleetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ListAssociatedFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssociatedFleetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartFleet
-- @param StartFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartFleetAsync(StartFleetRequest, cb)
	assert(StartFleetRequest, "You must provide a StartFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StartFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateFleet
-- @param DisassociateFleetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateFleetAsync(DisassociateFleetRequest, cb)
	assert(DisassociateFleetRequest, "You must provide a DisassociateFleetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DisassociateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateFleetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStacks
-- @param DescribeStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksRequest, cb)
	assert(DescribeStacksRequest, "You must provide a DescribeStacksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStacksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStack
-- @param CreateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackRequest, cb)
	assert(CreateStackRequest, "You must provide a CreateStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
