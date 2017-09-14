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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Names [StringList] <p>The names of associated stacks.</p>
-- @return ListAssociatedStacksResult structure as a key-value pair table
function M.ListAssociatedStacksResult(args)
	assert(args, "You must provide an argument table when creating ListAssociatedStacksResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Names"] = args["Names"],
	}
	asserts.AssertListAssociatedStacksResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopFleetResult structure as a key-value pair table
function M.StopFleetResult(args)
	assert(args, "You must provide an argument table when creating StopFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Images [ImageList] <p>The list of images.</p>
-- @return DescribeImagesResult structure as a key-value pair table
function M.DescribeImagesResult(args)
	assert(args, "You must provide an argument table when creating DescribeImagesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Images"] = args["Images"],
	}
	asserts.AssertDescribeImagesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return OperationNotPermittedException structure as a key-value pair table
function M.OperationNotPermittedException(args)
	assert(args, "You must provide an argument table when creating OperationNotPermittedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertOperationNotPermittedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the fleet to be deleted.</p>
-- Required key: Name
-- @return DeleteFleetRequest structure as a key-value pair table
function M.DeleteFleetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- * Name [String] <p>The unique identifier for this stack.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- * Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required key: Name
-- @return CreateStackRequest structure as a key-value pair table
function M.CreateStackRequest(args)
	assert(args, "You must provide an argument table when creating CreateStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["StorageConnectors"] = args["StorageConnectors"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Sessions [SessionList] <p>The list of streaming sessions.</p>
-- @return DescribeSessionsResult structure as a key-value pair table
function M.DescribeSessionsResult(args)
	assert(args, "You must provide an argument table when creating DescribeSessionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Sessions"] = args["Sessions"],
	}
	asserts.AssertDescribeSessionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>A display name for the stack.</p>
-- * Name [String] <p>The unique identifier of the stack.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- * StackErrors [StackErrors] <p>The list of errors associated with the stack.</p>
-- * CreatedTime [Timestamp] <p>The timestamp when the stack was created.</p>
-- * Arn [Arn] <p>The ARN of the stack.</p>
-- * Description [String] <p>A meaningful description for the stack.</p>
-- Required key: Name
-- @return Stack structure as a key-value pair table
function M.Stack(args)
	assert(args, "You must provide an argument table when creating Stack")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["StorageConnectors"] = args["StorageConnectors"],
		["StackErrors"] = args["StackErrors"],
		["CreatedTime"] = args["CreatedTime"],
		["Arn"] = args["Arn"],
		["Description"] = args["Description"],
	}
	asserts.AssertStack(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartFleetResult structure as a key-value pair table
function M.StartFleetResult(args)
	assert(args, "You must provide an argument table when creating StartFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Available [Integer] <p>The number of currently available instances that can be used to stream sessions.</p>
-- * Desired [Integer] <p>The desired number of streaming instances.</p>
-- * Running [Integer] <p>The total number of simultaneous streaming instances that are running.</p>
-- * InUse [Integer] <p>The number of instances that are being used for streaming.</p>
-- Required key: Desired
-- @return ComputeCapacityStatus structure as a key-value pair table
function M.ComputeCapacityStatus(args)
	assert(args, "You must provide an argument table when creating ComputeCapacityStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Available"] = args["Available"],
		["Desired"] = args["Desired"],
		["Running"] = args["Running"],
		["InUse"] = args["InUse"],
	}
	asserts.AssertComputeCapacityStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provide an argument table when creating ConcurrentModificationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertConcurrentModificationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the fleet to start.</p>
-- Required key: Name
-- @return StartFleetRequest structure as a key-value pair table
function M.StartFleetRequest(args)
	assert(args, "You must provide an argument table when creating StartFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * Names [StringList] <p>The stack names to describe. Use null to describe all the stacks for the AWS account.</p>
-- @return DescribeStacksRequest structure as a key-value pair table
function M.DescribeStacksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeStacksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Names"] = args["Names"],
	}
	asserts.AssertDescribeStacksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FleetName [String] <p>The fleet for which the URL is generated.</p>
-- * UserId [UserId] <p>A unique user ID for whom the URL is generated.</p>
-- * Validity [Long] <p>The duration up to which the URL returned by this action is valid. The input can be any numeric value in seconds between 1 and 604800 seconds.</p>
-- * StackName [String] <p>The stack for which the URL is generated.</p>
-- * SessionContext [String] <p>The sessionContext of the streaming URL.</p>
-- * ApplicationId [String] <p>The ID of the application that must be launched after the session starts.</p>
-- Required key: StackName
-- Required key: FleetName
-- Required key: UserId
-- @return CreateStreamingURLRequest structure as a key-value pair table
function M.CreateStreamingURLRequest(args)
	assert(args, "You must provide an argument table when creating CreateStreamingURLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FleetName"] = args["FleetName"],
		["UserId"] = args["UserId"],
		["Validity"] = args["Validity"],
		["StackName"] = args["StackName"],
		["SessionContext"] = args["SessionContext"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertCreateStreamingURLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The name of the application shown to the end users.</p>
-- * Name [String] <p>The unique identifier for the application.</p>
-- * LaunchParameters [String] <p>A list of arguments that are passed to the application at launch.</p>
-- * Enabled [Boolean] <p>An application can be disabled after image creation if there is a problem.</p>
-- * IconURL [String] <p>The URL for the application icon. This URL may be time-limited.</p>
-- * LaunchPath [String] <p>The path to the application executable in the instance.</p>
-- * Metadata [Metadata] <p>Additional attributes that describe the application.</p>
-- @return Application structure as a key-value pair table
function M.Application(args)
	assert(args, "You must provide an argument table when creating Application")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["LaunchParameters"] = args["LaunchParameters"],
		["Enabled"] = args["Enabled"],
		["IconURL"] = args["IconURL"],
		["LaunchPath"] = args["LaunchPath"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertApplication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateFleetResult structure as a key-value pair table
function M.DisassociateFleetResult(args)
	assert(args, "You must provide an argument table when creating DisassociateFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeleteStorageConnectors [Boolean] <p>Remove all the storage connectors currently enabled for the stack.</p>
-- * DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- * Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to be enabled for the stack.</p>
-- * Name [String] <p>The name of the stack to update.</p>
-- Required key: Name
-- @return UpdateStackRequest structure as a key-value pair table
function M.UpdateStackRequest(args)
	assert(args, "You must provide an argument table when creating UpdateStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeleteStorageConnectors"] = args["DeleteStorageConnectors"],
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["StorageConnectors"] = args["StorageConnectors"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Names [StringList] <p>The names of associated fleets.</p>
-- @return ListAssociatedFleetsResult structure as a key-value pair table
function M.ListAssociatedFleetsResult(args)
	assert(args, "You must provide an argument table when creating ListAssociatedFleetsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Names"] = args["Names"],
	}
	asserts.AssertListAssociatedFleetsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidParameterCombinationException structure as a key-value pair table
function M.InvalidParameterCombinationException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterCombinationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameterCombinationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Stack [Stack] <p>A list of stack details.</p>
-- @return UpdateStackResult structure as a key-value pair table
function M.UpdateStackResult(args)
	assert(args, "You must provide an argument table when creating UpdateStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Stack"] = args["Stack"],
	}
	asserts.AssertUpdateStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DesiredInstances [Integer] <p>The desired number of streaming instances.</p>
-- Required key: DesiredInstances
-- @return ComputeCapacity structure as a key-value pair table
function M.ComputeCapacity(args)
	assert(args, "You must provide an argument table when creating ComputeCapacity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DesiredInstances"] = args["DesiredInstances"],
	}
	asserts.AssertComputeCapacity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SessionId [String] <p>The unique identifier of the streaming session to be stopped.</p>
-- Required key: SessionId
-- @return ExpireSessionRequest structure as a key-value pair table
function M.ExpireSessionRequest(args)
	assert(args, "You must provide an argument table when creating ExpireSessionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SessionId"] = args["SessionId"],
	}
	asserts.AssertExpireSessionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return IncompatibleImageException structure as a key-value pair table
function M.IncompatibleImageException(args)
	assert(args, "You must provide an argument table when creating IncompatibleImageException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertIncompatibleImageException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceAlreadyExistsException structure as a key-value pair table
function M.ResourceAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating ResourceAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the stack to delete.</p>
-- Required key: Name
-- @return DeleteStackRequest structure as a key-value pair table
function M.DeleteStackRequest(args)
	assert(args, "You must provide an argument table when creating DeleteStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Stack [Stack] <p>The details for the created stack.</p>
-- @return CreateStackResult structure as a key-value pair table
function M.CreateStackResult(args)
	assert(args, "You must provide an argument table when creating CreateStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Stack"] = args["Stack"],
	}
	asserts.AssertCreateStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicBaseImageReleasedDate [Timestamp] <p>The AWS release date of the public base image. For private images, this date is the release date of the base image from which the image was created.</p>
-- * DisplayName [String] <p>The display name for the image.</p>
-- * Name [String] <p>The unique identifier for the image.</p>
-- * Applications [Applications] <p>The applications associated with an image.</p>
-- * BaseImageArn [Arn] <p>The source image ARN from which this image was created.</p>
-- * Visibility [VisibilityType] <p>The visibility of an image to the user; images can be public or private.</p>
-- * Platform [PlatformType] <p>The operating system platform of the image.</p>
-- * State [ImageState] <p>The image starts in the <b>PENDING</b> state, and then moves to <b>AVAILABLE</b> if image creation succeeds and <b>FAILED</b> if image creation has failed.</p>
-- * CreatedTime [Timestamp] <p>The timestamp when the image was created.</p>
-- * Description [String] <p>A meaningful description for the image.</p>
-- * StateChangeReason [ImageStateChangeReason] <p>The reason why the last state change occurred.</p>
-- * Arn [Arn] <p>The ARN for the image.</p>
-- * ImageBuilderSupported [Boolean] <p>Whether an image builder can be launched from this image.</p>
-- Required key: Name
-- @return Image structure as a key-value pair table
function M.Image(args)
	assert(args, "You must provide an argument table when creating Image")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PublicBaseImageReleasedDate"] = args["PublicBaseImageReleasedDate"],
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["Applications"] = args["Applications"],
		["BaseImageArn"] = args["BaseImageArn"],
		["Visibility"] = args["Visibility"],
		["Platform"] = args["Platform"],
		["State"] = args["State"],
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["StateChangeReason"] = args["StateChangeReason"],
		["Arn"] = args["Arn"],
		["ImageBuilderSupported"] = args["ImageBuilderSupported"],
	}
	asserts.AssertImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationType [AuthenticationType] <p>The authentication method of the user for whom the session was created. It can be <code>API</code> for a user authenticated using a streaming URL or <code>SAML</code> for a SAML federated user.</p>
-- * UserId [UserId] <p>The identifier of the user for whom the session was created.</p>
-- * FleetName [String] <p>The name of the fleet for which the streaming session was created.</p>
-- * StackName [String] <p>The name of the stack for which the streaming session was created.</p>
-- * State [SessionState] <p>The current state of the streaming session.</p>
-- * Id [String] <p>The unique ID for a streaming session.</p>
-- Required key: Id
-- Required key: UserId
-- Required key: StackName
-- Required key: FleetName
-- Required key: State
-- @return Session structure as a key-value pair table
function M.Session(args)
	assert(args, "You must provide an argument table when creating Session")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationType"] = args["AuthenticationType"],
		["UserId"] = args["UserId"],
		["FleetName"] = args["FleetName"],
		["StackName"] = args["StackName"],
		["State"] = args["State"],
		["Id"] = args["Id"],
	}
	asserts.AssertSession(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the fleet to stop.</p>
-- Required key: Name
-- @return StopFleetRequest structure as a key-value pair table
function M.StopFleetRequest(args)
	assert(args, "You must provide an argument table when creating StopFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The state change reason message to the end user.</p>
-- * Code [ImageStateChangeReasonCode] <p>The state change reason code of the image.</p>
-- @return ImageStateChangeReason structure as a key-value pair table
function M.ImageStateChangeReason(args)
	assert(args, "You must provide an argument table when creating ImageStateChangeReason")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertImageStateChangeReason(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ExpireSessionResult structure as a key-value pair table
function M.ExpireSessionResult(args)
	assert(args, "You must provide an argument table when creating ExpireSessionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertExpireSessionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [String] <p>The name of the stack whose associated fleets are listed.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required key: StackName
-- @return ListAssociatedFleetsRequest structure as a key-value pair table
function M.ListAssociatedFleetsRequest(args)
	assert(args, "You must provide an argument table when creating ListAssociatedFleetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListAssociatedFleetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Stacks [StackList] <p>The list of stack details.</p>
-- @return DescribeStacksResult structure as a key-value pair table
function M.DescribeStacksResult(args)
	assert(args, "You must provide an argument table when creating DescribeStacksResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Stacks"] = args["Stacks"],
	}
	asserts.AssertDescribeStacksResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] <p>The display name of the fleet.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600. </p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- * ImageName [String] <p>Unique name of the image used by the fleet.</p>
-- * ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet.</p>
-- * Description [Description] <p>The description of the fleet.</p>
-- * InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- * Name [Name] <p>A unique identifier for the fleet.</p>
-- Required key: Name
-- Required key: ImageName
-- Required key: InstanceType
-- Required key: ComputeCapacity
-- @return CreateFleetRequest structure as a key-value pair table
function M.CreateFleetRequest(args)
	assert(args, "You must provide an argument table when creating CreateFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
		["VpcConfig"] = args["VpcConfig"],
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["ImageName"] = args["ImageName"],
		["ComputeCapacity"] = args["ComputeCapacity"],
		["Description"] = args["Description"],
		["InstanceType"] = args["InstanceType"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fleet [Fleet] <p>A list of fleet details.</p>
-- @return UpdateFleetResult structure as a key-value pair table
function M.UpdateFleetResult(args)
	assert(args, "You must provide an argument table when creating UpdateFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Fleet"] = args["Fleet"],
	}
	asserts.AssertUpdateFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidRoleException structure as a key-value pair table
function M.InvalidRoleException(args)
	assert(args, "You must provide an argument table when creating InvalidRoleException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidRoleException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * FleetName [String] <p>The name of the fleet whose associated stacks are listed.</p>
-- Required key: FleetName
-- @return ListAssociatedStacksRequest structure as a key-value pair table
function M.ListAssociatedStacksRequest(args)
	assert(args, "You must provide an argument table when creating ListAssociatedStacksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["FleetName"] = args["FleetName"],
	}
	asserts.AssertListAssociatedStacksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteStackResult structure as a key-value pair table
function M.DeleteStackResult(args)
	assert(args, "You must provide an argument table when creating DeleteStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComputeCapacityStatus [ComputeCapacityStatus] <p>The capacity information for the fleet.</p>
-- * DisplayName [String] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- * Name [String] <p>The name of the fleet.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * FleetErrors [FleetErrors] <p>The list of fleet errors is appended to this list.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Whether default Internet access is enabled for the fleet. </p>
-- * State [FleetState] <p>The current state for the fleet.</p>
-- * ImageName [String] <p>The image used by the fleet.</p>
-- * CreatedTime [Timestamp] <p>The time at which the fleet was created.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The value can be any numeric value in seconds between 600 and 57600.</p>
-- * InstanceType [String] <p>The instance type of compute resources for the fleet. The fleet instances are launched from this instance type. </p>
-- * Arn [Arn] <p>The ARN for the fleet.</p>
-- * Description [String] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- Required key: Arn
-- Required key: Name
-- Required key: ImageName
-- Required key: InstanceType
-- Required key: ComputeCapacityStatus
-- Required key: State
-- @return Fleet structure as a key-value pair table
function M.Fleet(args)
	assert(args, "You must provide an argument table when creating Fleet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComputeCapacityStatus"] = args["ComputeCapacityStatus"],
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["VpcConfig"] = args["VpcConfig"],
		["FleetErrors"] = args["FleetErrors"],
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["State"] = args["State"],
		["ImageName"] = args["ImageName"],
		["CreatedTime"] = args["CreatedTime"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
		["InstanceType"] = args["InstanceType"],
		["Arn"] = args["Arn"],
		["Description"] = args["Description"],
	}
	asserts.AssertFleet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * Names [StringList] <p>The fleet names to describe. Use null to describe all the fleets for the AWS account.</p>
-- @return DescribeFleetsRequest structure as a key-value pair table
function M.DescribeFleetsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeFleetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Names"] = args["Names"],
	}
	asserts.AssertDescribeFleetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fleets [FleetList] <p>The list of fleet details.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @return DescribeFleetsResult structure as a key-value pair table
function M.DescribeFleetsResult(args)
	assert(args, "You must provide an argument table when creating DescribeFleetsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Fleets"] = args["Fleets"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeFleetsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributesToDelete [FleetAttributes] <p>Fleet attributes to be deleted.</p>
-- * DeleteVpcConfig [Boolean] <p>Delete the VPC association for the specified fleet.</p>
-- * DisplayName [DisplayName] <p>The name displayed to end users on the AppStream 2.0 portal.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.</p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default Internet access for the fleet.</p>
-- * ImageName [String] <p>The image name from which a fleet is created.</p>
-- * ComputeCapacity [ComputeCapacity] <p>The parameters for the capacity allocated to the fleet. </p>
-- * Description [Description] <p>The description displayed to end users on the AppStream 2.0 portal.</p>
-- * InstanceType [String] <p>The instance type of compute resources for the fleet. Fleet instances are launched from this instance type.</p>
-- * Name [String] <p>The name of the fleet.</p>
-- Required key: Name
-- @return UpdateFleetRequest structure as a key-value pair table
function M.UpdateFleetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributesToDelete"] = args["AttributesToDelete"],
		["DeleteVpcConfig"] = args["DeleteVpcConfig"],
		["DisplayName"] = args["DisplayName"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
		["VpcConfig"] = args["VpcConfig"],
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["ImageName"] = args["ImageName"],
		["ComputeCapacity"] = args["ComputeCapacity"],
		["Description"] = args["Description"],
		["InstanceType"] = args["InstanceType"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [FleetErrorCode] <p>The error code for the fleet error.</p>
-- * ErrorMessage [String] <p>The error message generated when the fleet has errors.</p>
-- @return FleetError structure as a key-value pair table
function M.FleetError(args)
	assert(args, "You must provide an argument table when creating FleetError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertFleetError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationType [AuthenticationType] <p>The authentication method of the user. It can be <code>API</code> for a user authenticated using a streaming URL, or <code>SAML</code> for a SAML federated user. If an authentication type is not provided, the operation defaults to users authenticated using a streaming URL.</p>
-- * FleetName [String] <p>The name of the fleet for which to list sessions.</p>
-- * UserId [UserId] <p>The user for whom to list sessions. Use null to describe all the sessions for the stack and fleet.</p>
-- * StackName [String] <p>The name of the stack for which to list sessions.</p>
-- * Limit [Integer] <p>The size of each page of results. The default value is 20 and the maximum supported value is 50.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- Required key: StackName
-- Required key: FleetName
-- @return DescribeSessionsRequest structure as a key-value pair table
function M.DescribeSessionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSessionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationType"] = args["AuthenticationType"],
		["FleetName"] = args["FleetName"],
		["UserId"] = args["UserId"],
		["StackName"] = args["StackName"],
		["Limit"] = args["Limit"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeSessionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [String] <p>The name of the stack to which the fleet is associated.</p>
-- * FleetName [String] <p>The name of the fleet to associate.</p>
-- Required key: FleetName
-- Required key: StackName
-- @return AssociateFleetRequest structure as a key-value pair table
function M.AssociateFleetRequest(args)
	assert(args, "You must provide an argument table when creating AssociateFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["FleetName"] = args["FleetName"],
	}
	asserts.AssertAssociateFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceNotAvailableException structure as a key-value pair table
function M.ResourceNotAvailableException(args)
	assert(args, "You must provide an argument table when creating ResourceNotAvailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceNotAvailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fleet [Fleet] <p>The details for the created fleet.</p>
-- @return CreateFleetResult structure as a key-value pair table
function M.CreateFleetResult(args)
	assert(args, "You must provide an argument table when creating CreateFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Fleet"] = args["Fleet"],
	}
	asserts.AssertCreateFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectorType [StorageConnectorType] <p>The type of storage connector. The possible values include: HOMEFOLDERS.</p>
-- * ResourceIdentifier [ResourceIdentifier] <p>The ARN associated with the storage connector.</p>
-- Required key: ConnectorType
-- @return StorageConnector structure as a key-value pair table
function M.StorageConnector(args)
	assert(args, "You must provide an argument table when creating StorageConnector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectorType"] = args["ConnectorType"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertStorageConnector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Names [StringList] <p>A specific list of images to describe.</p>
-- @return DescribeImagesRequest structure as a key-value pair table
function M.DescribeImagesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeImagesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Names"] = args["Names"],
	}
	asserts.AssertDescribeImagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [StackErrorCode] <p>The error code of a stack error.</p>
-- * ErrorMessage [String] <p>The error message of a stack error.</p>
-- @return StackError structure as a key-value pair table
function M.StackError(args)
	assert(args, "You must provide an argument table when creating StackError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertStackError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteFleetResult structure as a key-value pair table
function M.DeleteFleetResult(args)
	assert(args, "You must provide an argument table when creating DeleteFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateFleetResult structure as a key-value pair table
function M.AssociateFleetResult(args)
	assert(args, "You must provide an argument table when creating AssociateFleetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateFleetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expires [Timestamp] <p>Elapsed seconds after the Unix epoch, at which time this URL expires.</p>
-- * StreamingURL [String] <p>The URL to start the AppStream 2.0 streaming session.</p>
-- @return CreateStreamingURLResult structure as a key-value pair table
function M.CreateStreamingURLResult(args)
	assert(args, "You must provide an argument table when creating CreateStreamingURLResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expires"] = args["Expires"],
		["StreamingURL"] = args["StreamingURL"],
	}
	asserts.AssertCreateStreamingURLResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [String] <p>The name of the stack with which the fleet is associated.</p>
-- * FleetName [String] <p>The name of the fleet to disassociate.</p>
-- Required key: FleetName
-- Required key: StackName
-- @return DisassociateFleetRequest structure as a key-value pair table
function M.DisassociateFleetRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateFleetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["FleetName"] = args["FleetName"],
	}
	asserts.AssertDisassociateFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdList] <p>The list of subnets to which a network interface is established from the fleet instance.</p>
-- * SecurityGroupIds [SecurityGroupIdList] <p>Security groups associated with the fleet.</p>
-- @return VpcConfig structure as a key-value pair table
function M.VpcConfig(args)
	assert(args, "You must provide an argument table when creating VpcConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provide an argument table when creating ResourceInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
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
	for header,value in pairs(UpdateStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.UpdateStackSync(UpdateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(UpdateStackRequest, function(response, error_message)
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
	for header,value in pairs(CreateFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateFleetSync(CreateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFleetAsync(CreateFleetRequest, function(response, error_message)
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
	for header,value in pairs(DeleteFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteFleetSync(DeleteFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFleetAsync(DeleteFleetRequest, function(response, error_message)
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
	for header,value in pairs(CreateStreamingURLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateStreamingURLSync(CreateStreamingURLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingURLAsync(CreateStreamingURLRequest, function(response, error_message)
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
	for header,value in pairs(DescribeSessionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DescribeSessionsSync(DescribeSessionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSessionsAsync(DescribeSessionsRequest, function(response, error_message)
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
	for header,value in pairs(AssociateFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.AssociateFleetSync(AssociateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateFleetAsync(AssociateFleetRequest, function(response, error_message)
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
	for header,value in pairs(StopFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.StopFleetSync(StopFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopFleetAsync(StopFleetRequest, function(response, error_message)
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
	for header,value in pairs(DescribeFleetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DescribeFleetsSync(DescribeFleetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetsAsync(DescribeFleetsRequest, function(response, error_message)
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
	for header,value in pairs(UpdateFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.UpdateFleetSync(UpdateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetAsync(UpdateFleetRequest, function(response, error_message)
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
	for header,value in pairs(DescribeImagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DescribeImagesSync(DescribeImagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagesAsync(DescribeImagesRequest, function(response, error_message)
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
	for header,value in pairs(DeleteStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DeleteStackSync(DeleteStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(DeleteStackRequest, function(response, error_message)
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
	for header,value in pairs(ExpireSessionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.ExpireSessionSync(ExpireSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExpireSessionAsync(ExpireSessionRequest, function(response, error_message)
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
	for header,value in pairs(ListAssociatedStacksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.ListAssociatedStacksSync(ListAssociatedStacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedStacksAsync(ListAssociatedStacksRequest, function(response, error_message)
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
	for header,value in pairs(ListAssociatedFleetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.ListAssociatedFleetsSync(ListAssociatedFleetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedFleetsAsync(ListAssociatedFleetsRequest, function(response, error_message)
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
	for header,value in pairs(StartFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.StartFleetSync(StartFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartFleetAsync(StartFleetRequest, function(response, error_message)
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
	for header,value in pairs(DisassociateFleetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DisassociateFleetSync(DisassociateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateFleetAsync(DisassociateFleetRequest, function(response, error_message)
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
	for header,value in pairs(DescribeStacksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.DescribeStacksSync(DescribeStacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(DescribeStacksRequest, function(response, error_message)
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
	for header,value in pairs(CreateStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
function M.CreateStackSync(CreateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(CreateStackRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
