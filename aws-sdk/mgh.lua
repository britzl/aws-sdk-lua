--- GENERATED CODE - DO NOT MODIFY
-- AWS Migration Hub (AWSMigrationHub-2017-05-31)

local M = {}

M.metadata = {
	api_version = "2017-05-31",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "mgh",
	service_abbreviation = "",
	service_full_name = "AWS Migration Hub",
	signature_version = "v4",
	target_prefix = "AWSMigrationHub",
	timestamp_format = "",
	global_endpoint = "",
	uid = "AWSMigrationHub-2017-05-31",
}

local keys = {}
local asserts = {}

keys.PutResourceAttributesResult = { nil }

function asserts.AssertPutResourceAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourceAttributesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutResourceAttributesResult[k], "PutResourceAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourceAttributesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutResourceAttributesResult structure as a key-value pair table
function M.PutResourceAttributesResult(args)
	assert(args, "You must provide an argument table when creating PutResourceAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutResourceAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyMigrationTaskStateResult = { nil }

function asserts.AssertNotifyMigrationTaskStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyMigrationTaskStateResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NotifyMigrationTaskStateResult[k], "NotifyMigrationTaskStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyMigrationTaskStateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NotifyMigrationTaskStateResult structure as a key-value pair table
function M.NotifyMigrationTaskStateResult(args)
	assert(args, "You must provide an argument table when creating NotifyMigrationTaskStateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertNotifyMigrationTaskStateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Task = { ["Status"] = true, ["StatusDetail"] = true, ["ProgressPercent"] = true, nil }

function asserts.AssertTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Task to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["StatusDetail"] then asserts.AssertStatusDetail(struct["StatusDetail"]) end
	if struct["ProgressPercent"] then asserts.AssertProgressPercent(struct["ProgressPercent"]) end
	for k,_ in pairs(struct) do
		assert(keys.Task[k], "Task contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Task
-- <p>Task object encapsulating task information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>Status of the task - Not Started, In-Progress, Complete.</p>
-- * StatusDetail [StatusDetail] <p>Details of task status as notified by a migration tool. A tool might use this field to provide clarifying information about the status that is unique to that tool or that explains an error state.</p>
-- * ProgressPercent [ProgressPercent] <p>Indication of the percentage completion of the task.</p>
-- Required key: Status
-- @return Task structure as a key-value pair table
function M.Task(args)
	assert(args, "You must provide an argument table when creating Task")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["StatusDetail"] = args["StatusDetail"],
		["ProgressPercent"] = args["ProgressPercent"],
	}
	asserts.AssertTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDiscoveredResourceRequest = { ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["ConfigurationId"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertDisassociateDiscoveredResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDiscoveredResourceRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["ConfigurationId"] then asserts.AssertConfigurationId(struct["ConfigurationId"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDiscoveredResourceRequest[k], "DisassociateDiscoveredResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDiscoveredResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream.</p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * ConfigurationId [ConfigurationId] <p>ConfigurationId of the ADS resource to be disassociated.</p>
-- * MigrationTaskName [MigrationTaskName] <p>The identifier given to the MigrationTask.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: ConfigurationId
-- @return DisassociateDiscoveredResourceRequest structure as a key-value pair table
function M.DisassociateDiscoveredResourceRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDiscoveredResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["ConfigurationId"] = args["ConfigurationId"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertDisassociateDiscoveredResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDiscoveredResourceResult = { nil }

function asserts.AssertAssociateDiscoveredResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDiscoveredResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDiscoveredResourceResult[k], "AssociateDiscoveredResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDiscoveredResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDiscoveredResourceResult structure as a key-value pair table
function M.AssociateDiscoveredResourceResult(args)
	assert(args, "You must provide an argument table when creating AssociateDiscoveredResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDiscoveredResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyErrorException = { ["Message"] = true, nil }

function asserts.AssertPolicyErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyErrorException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyErrorException[k], "PolicyErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyErrorException
-- <p>Exception raised when there are problems accessing ADS (Application Discovery Service); most likely due to a misconfigured policy or the <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return PolicyErrorException structure as a key-value pair table
function M.PolicyErrorException(args)
	assert(args, "You must provide an argument table when creating PolicyErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertPolicyErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMigrationTaskResult = { ["MigrationTask"] = true, nil }

function asserts.AssertDescribeMigrationTaskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMigrationTaskResult to be of type 'table'")
	if struct["MigrationTask"] then asserts.AssertMigrationTask(struct["MigrationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMigrationTaskResult[k], "DescribeMigrationTaskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMigrationTaskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MigrationTask [MigrationTask] <p>Object encapsulating information about the migration task.</p>
-- @return DescribeMigrationTaskResult structure as a key-value pair table
function M.DescribeMigrationTaskResult(args)
	assert(args, "You must provide an argument table when creating DescribeMigrationTaskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MigrationTask"] = args["MigrationTask"],
	}
	asserts.AssertDescribeMigrationTaskResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProgressUpdateStreamsResult = { ["ProgressUpdateStreamSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListProgressUpdateStreamsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProgressUpdateStreamsResult to be of type 'table'")
	if struct["ProgressUpdateStreamSummaryList"] then asserts.AssertProgressUpdateStreamSummaryList(struct["ProgressUpdateStreamSummaryList"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProgressUpdateStreamsResult[k], "ListProgressUpdateStreamsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProgressUpdateStreamsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStreamSummaryList [ProgressUpdateStreamSummaryList] <p>List of progress update streams up to the max number of results passed in the input.</p>
-- * NextToken [Token] <p>If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.</p>
-- @return ListProgressUpdateStreamsResult structure as a key-value pair table
function M.ListProgressUpdateStreamsResult(args)
	assert(args, "You must provide an argument table when creating ListProgressUpdateStreamsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStreamSummaryList"] = args["ProgressUpdateStreamSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListProgressUpdateStreamsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedOperation = { ["Message"] = true, nil }

function asserts.AssertUnauthorizedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperation to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedOperation[k], "UnauthorizedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperation
-- <p>Exception raised to indicate a request was not authorized when the <code>DryRun</code> flag is set to "true".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return UnauthorizedOperation structure as a key-value pair table
function M.UnauthorizedOperation(args)
	assert(args, "You must provide an argument table when creating UnauthorizedOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnauthorizedOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDiscoveredResourcesResult = { ["DiscoveredResourceList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDiscoveredResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesResult to be of type 'table'")
	if struct["DiscoveredResourceList"] then asserts.AssertDiscoveredResourceList(struct["DiscoveredResourceList"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDiscoveredResourcesResult[k], "ListDiscoveredResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DiscoveredResourceList [DiscoveredResourceList] <p>Returned list of discovered resources associated with the given MigrationTask.</p>
-- * NextToken [Token] <p>If there are more discovered resources than the max result, return the next token to be passed to the next call as a bookmark of where to start from.</p>
-- @return ListDiscoveredResourcesResult structure as a key-value pair table
function M.ListDiscoveredResourcesResult(args)
	assert(args, "You must provide an argument table when creating ListDiscoveredResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DiscoveredResourceList"] = args["DiscoveredResourceList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDiscoveredResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeApplicationStateRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDescribeApplicationStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationStateRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.AssertApplicationId(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationStateRequest[k], "DescribeApplicationStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [ApplicationId] <p>The configurationId in ADS that uniquely identifies the grouped application.</p>
-- Required key: ApplicationId
-- @return DescribeApplicationStateRequest structure as a key-value pair table
function M.DescribeApplicationStateRequest(args)
	assert(args, "You must provide an argument table when creating DescribeApplicationStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDescribeApplicationStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProgressUpdateStreamResult = { nil }

function asserts.AssertCreateProgressUpdateStreamResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProgressUpdateStreamResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateProgressUpdateStreamResult[k], "CreateProgressUpdateStreamResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProgressUpdateStreamResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateProgressUpdateStreamResult structure as a key-value pair table
function M.CreateProgressUpdateStreamResult(args)
	assert(args, "You must provide an argument table when creating CreateProgressUpdateStreamResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateProgressUpdateStreamResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportMigrationTaskRequest = { ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertImportMigrationTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportMigrationTaskRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportMigrationTaskRequest[k], "ImportMigrationTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportMigrationTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- @return ImportMigrationTaskRequest structure as a key-value pair table
function M.ImportMigrationTaskRequest(args)
	assert(args, "You must provide an argument table when creating ImportMigrationTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertImportMigrationTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateCreatedArtifactResult = { nil }

function asserts.AssertDisassociateCreatedArtifactResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateCreatedArtifactResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateCreatedArtifactResult[k], "DisassociateCreatedArtifactResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateCreatedArtifactResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateCreatedArtifactResult structure as a key-value pair table
function M.DisassociateCreatedArtifactResult(args)
	assert(args, "You must provide an argument table when creating DisassociateCreatedArtifactResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateCreatedArtifactResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDiscoveredResourceResult = { nil }

function asserts.AssertDisassociateDiscoveredResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDiscoveredResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDiscoveredResourceResult[k], "DisassociateDiscoveredResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDiscoveredResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDiscoveredResourceResult structure as a key-value pair table
function M.DisassociateDiscoveredResourceResult(args)
	assert(args, "You must provide an argument table when creating DisassociateDiscoveredResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDiscoveredResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DryRunOperation = { ["Message"] = true, nil }

function asserts.AssertDryRunOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DryRunOperation to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DryRunOperation[k], "DryRunOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DryRunOperation
-- <p>Exception raised to indicate a successfully authorized action when the <code>DryRun</code> flag is set to "true".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DryRunOperation structure as a key-value pair table
function M.DryRunOperation(args)
	assert(args, "You must provide an argument table when creating DryRunOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDryRunOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProgressUpdateStreamRequest = { ["ProgressUpdateStreamName"] = true, ["DryRun"] = true, nil }

function asserts.AssertDeleteProgressUpdateStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProgressUpdateStreamRequest to be of type 'table'")
	assert(struct["ProgressUpdateStreamName"], "Expected key ProgressUpdateStreamName to exist in table")
	if struct["ProgressUpdateStreamName"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStreamName"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProgressUpdateStreamRequest[k], "DeleteProgressUpdateStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProgressUpdateStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStreamName [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- Required key: ProgressUpdateStreamName
-- @return DeleteProgressUpdateStreamRequest structure as a key-value pair table
function M.DeleteProgressUpdateStreamRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProgressUpdateStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStreamName"] = args["ProgressUpdateStreamName"],
		["DryRun"] = args["DryRun"],
	}
	asserts.AssertDeleteProgressUpdateStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateCreatedArtifactResult = { nil }

function asserts.AssertAssociateCreatedArtifactResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateCreatedArtifactResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateCreatedArtifactResult[k], "AssociateCreatedArtifactResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateCreatedArtifactResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateCreatedArtifactResult structure as a key-value pair table
function M.AssociateCreatedArtifactResult(args)
	assert(args, "You must provide an argument table when creating AssociateCreatedArtifactResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateCreatedArtifactResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportMigrationTaskResult = { nil }

function asserts.AssertImportMigrationTaskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportMigrationTaskResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportMigrationTaskResult[k], "ImportMigrationTaskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportMigrationTaskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImportMigrationTaskResult structure as a key-value pair table
function M.ImportMigrationTaskResult(args)
	assert(args, "You must provide an argument table when creating ImportMigrationTaskResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertImportMigrationTaskResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["Message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDiscoveredResourcesRequest = { ["ProgressUpdateStream"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertListDiscoveredResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDiscoveredResourcesRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsResources(struct["MaxResults"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDiscoveredResourcesRequest[k], "ListDiscoveredResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDiscoveredResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream.</p>
-- * NextToken [Token] <p>If a <code>NextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>
-- * MaxResults [MaxResultsResources] <p>The maximum number of results returned per page.</p>
-- * MigrationTaskName [MigrationTaskName] <p>The name of the MigrationTask.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- @return ListDiscoveredResourcesRequest structure as a key-value pair table
function M.ListDiscoveredResourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListDiscoveredResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertListDiscoveredResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MigrationTaskSummary = { ["Status"] = true, ["StatusDetail"] = true, ["ProgressPercent"] = true, ["ProgressUpdateStream"] = true, ["UpdateDateTime"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertMigrationTaskSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MigrationTaskSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["StatusDetail"] then asserts.AssertStatusDetail(struct["StatusDetail"]) end
	if struct["ProgressPercent"] then asserts.AssertProgressPercent(struct["ProgressPercent"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["UpdateDateTime"] then asserts.AssertUpdateDateTime(struct["UpdateDateTime"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MigrationTaskSummary[k], "MigrationTaskSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MigrationTaskSummary
-- <p>MigrationTaskSummary includes <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and <code>UpdateDateTime</code> for each task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>Status of the task.</p>
-- * StatusDetail [StatusDetail] <p>Detail information of what is being done within the overall status state.</p>
-- * ProgressPercent [ProgressPercent] <p/>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.</p>
-- * UpdateDateTime [UpdateDateTime] <p>The timestamp when the task was gathered.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- @return MigrationTaskSummary structure as a key-value pair table
function M.MigrationTaskSummary(args)
	assert(args, "You must provide an argument table when creating MigrationTaskSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["StatusDetail"] = args["StatusDetail"],
		["ProgressPercent"] = args["ProgressPercent"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["UpdateDateTime"] = args["UpdateDateTime"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertMigrationTaskSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateCreatedArtifactRequest = { ["CreatedArtifactName"] = true, ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertDisassociateCreatedArtifactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateCreatedArtifactRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["CreatedArtifactName"], "Expected key CreatedArtifactName to exist in table")
	if struct["CreatedArtifactName"] then asserts.AssertCreatedArtifactName(struct["CreatedArtifactName"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateCreatedArtifactRequest[k], "DisassociateCreatedArtifactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateCreatedArtifactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedArtifactName [CreatedArtifactName] <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)</p>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task to be disassociated with the artifact.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: CreatedArtifactName
-- @return DisassociateCreatedArtifactRequest structure as a key-value pair table
function M.DisassociateCreatedArtifactRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateCreatedArtifactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedArtifactName"] = args["CreatedArtifactName"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertDisassociateCreatedArtifactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessDeniedException = { ["Message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You do not have sufficient access to perform this action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return AccessDeniedException structure as a key-value pair table
function M.AccessDeniedException(args)
	assert(args, "You must provide an argument table when creating AccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAccessDeniedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCreatedArtifactsResult = { ["CreatedArtifactList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListCreatedArtifactsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreatedArtifactsResult to be of type 'table'")
	if struct["CreatedArtifactList"] then asserts.AssertCreatedArtifactList(struct["CreatedArtifactList"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCreatedArtifactsResult[k], "ListCreatedArtifactsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreatedArtifactsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedArtifactList [CreatedArtifactList] <p>List of created artifacts up to the maximum number of results specified in the request.</p>
-- * NextToken [Token] <p>If there are more created artifacts than the max result, return the next token to be passed to the next call as a bookmark of where to start from.</p>
-- @return ListCreatedArtifactsResult structure as a key-value pair table
function M.ListCreatedArtifactsResult(args)
	assert(args, "You must provide an argument table when creating ListCreatedArtifactsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedArtifactList"] = args["CreatedArtifactList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListCreatedArtifactsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDiscoveredResourceRequest = { ["DiscoveredResource"] = true, ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertAssociateDiscoveredResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDiscoveredResourceRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["DiscoveredResource"], "Expected key DiscoveredResource to exist in table")
	if struct["DiscoveredResource"] then asserts.AssertDiscoveredResource(struct["DiscoveredResource"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDiscoveredResourceRequest[k], "AssociateDiscoveredResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDiscoveredResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DiscoveredResource [DiscoveredResource] <p>Object representing a Resource.</p>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream.</p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * MigrationTaskName [MigrationTaskName] <p>The identifier given to the MigrationTask.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: DiscoveredResource
-- @return AssociateDiscoveredResourceRequest structure as a key-value pair table
function M.AssociateDiscoveredResourceRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDiscoveredResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DiscoveredResource"] = args["DiscoveredResource"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertAssociateDiscoveredResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerError = { ["Message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InternalServerError structure as a key-value pair table
function M.InternalServerError(args)
	assert(args, "You must provide an argument table when creating InternalServerError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyApplicationStateResult = { nil }

function asserts.AssertNotifyApplicationStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyApplicationStateResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NotifyApplicationStateResult[k], "NotifyApplicationStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyApplicationStateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NotifyApplicationStateResult structure as a key-value pair table
function M.NotifyApplicationStateResult(args)
	assert(args, "You must provide an argument table when creating NotifyApplicationStateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertNotifyApplicationStateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyApplicationStateRequest = { ["Status"] = true, ["DryRun"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertNotifyApplicationStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyApplicationStateRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertApplicationStatus(struct["Status"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["ApplicationId"] then asserts.AssertApplicationId(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyApplicationStateRequest[k], "NotifyApplicationStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyApplicationStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ApplicationStatus] <p>Status of the application - Not Started, In-Progress, Complete.</p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * ApplicationId [ApplicationId] <p>The configurationId in ADS that uniquely identifies the grouped application.</p>
-- Required key: ApplicationId
-- Required key: Status
-- @return NotifyApplicationStateRequest structure as a key-value pair table
function M.NotifyApplicationStateRequest(args)
	assert(args, "You must provide an argument table when creating NotifyApplicationStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DryRun"] = args["DryRun"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertNotifyApplicationStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourceAttributesRequest = { ["ResourceAttributeList"] = true, ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertPutResourceAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourceAttributesRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["ResourceAttributeList"], "Expected key ResourceAttributeList to exist in table")
	if struct["ResourceAttributeList"] then asserts.AssertResourceAttributeList(struct["ResourceAttributeList"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourceAttributesRequest[k], "PutResourceAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourceAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceAttributeList [ResourceAttributeList] <p>Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.</p> <note> <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code> field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a string up to 256 characters.</p> </note> <important> <ul> <li> <p>If any "VM" related value is set for a <code>ResourceAttribute</code> object, it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If <code>VM_MANAGER_ID</code> is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples">Example</a> section below for a use case of specifying "VM" related values.</p> </li> <li> <p> If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the <code>ResourceAttributeList</code> parameter to maximize the chances of matching.</p> </li> </ul> </important>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: ResourceAttributeList
-- @return PutResourceAttributesRequest structure as a key-value pair table
function M.PutResourceAttributesRequest(args)
	assert(args, "You must provide an argument table when creating PutResourceAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceAttributeList"] = args["ResourceAttributeList"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertPutResourceAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMigrationTasksResult = { ["NextToken"] = true, ["MigrationTaskSummaryList"] = true, nil }

function asserts.AssertListMigrationTasksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMigrationTasksResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MigrationTaskSummaryList"] then asserts.AssertMigrationTaskSummaryList(struct["MigrationTaskSummaryList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMigrationTasksResult[k], "ListMigrationTasksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMigrationTasksResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>If there are more migration tasks than the max result, return the next token to be passed to the next call as a bookmark of where to start from.</p>
-- * MigrationTaskSummaryList [MigrationTaskSummaryList] <p>Lists the migration task's summary which includes: <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and the <code>UpdateDateTime</code> for each task.</p>
-- @return ListMigrationTasksResult structure as a key-value pair table
function M.ListMigrationTasksResult(args)
	assert(args, "You must provide an argument table when creating ListMigrationTasksResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MigrationTaskSummaryList"] = args["MigrationTaskSummaryList"],
	}
	asserts.AssertListMigrationTasksResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProgressUpdateStreamRequest = { ["ProgressUpdateStreamName"] = true, ["DryRun"] = true, nil }

function asserts.AssertCreateProgressUpdateStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProgressUpdateStreamRequest to be of type 'table'")
	assert(struct["ProgressUpdateStreamName"], "Expected key ProgressUpdateStreamName to exist in table")
	if struct["ProgressUpdateStreamName"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStreamName"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProgressUpdateStreamRequest[k], "CreateProgressUpdateStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProgressUpdateStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStreamName [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- Required key: ProgressUpdateStreamName
-- @return CreateProgressUpdateStreamRequest structure as a key-value pair table
function M.CreateProgressUpdateStreamRequest(args)
	assert(args, "You must provide an argument table when creating CreateProgressUpdateStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStreamName"] = args["ProgressUpdateStreamName"],
		["DryRun"] = args["DryRun"],
	}
	asserts.AssertCreateProgressUpdateStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProgressUpdateStreamSummary = { ["ProgressUpdateStreamName"] = true, nil }

function asserts.AssertProgressUpdateStreamSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProgressUpdateStreamSummary to be of type 'table'")
	if struct["ProgressUpdateStreamName"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProgressUpdateStreamSummary[k], "ProgressUpdateStreamSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProgressUpdateStreamSummary
-- <p>Summary of the AWS resource used for access control that is implicitly linked to your AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStreamName [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- @return ProgressUpdateStreamSummary structure as a key-value pair table
function M.ProgressUpdateStreamSummary(args)
	assert(args, "You must provide an argument table when creating ProgressUpdateStreamSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStreamName"] = args["ProgressUpdateStreamName"],
	}
	asserts.AssertProgressUpdateStreamSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyMigrationTaskStateRequest = { ["Task"] = true, ["DryRun"] = true, ["ProgressUpdateStream"] = true, ["UpdateDateTime"] = true, ["NextUpdateSeconds"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertNotifyMigrationTaskStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyMigrationTaskStateRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["Task"], "Expected key Task to exist in table")
	assert(struct["UpdateDateTime"], "Expected key UpdateDateTime to exist in table")
	assert(struct["NextUpdateSeconds"], "Expected key NextUpdateSeconds to exist in table")
	if struct["Task"] then asserts.AssertTask(struct["Task"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["UpdateDateTime"] then asserts.AssertUpdateDateTime(struct["UpdateDateTime"]) end
	if struct["NextUpdateSeconds"] then asserts.AssertNextUpdateSeconds(struct["NextUpdateSeconds"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyMigrationTaskStateRequest[k], "NotifyMigrationTaskStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyMigrationTaskStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Task [Task] <p>Information about the task's progress and status.</p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * UpdateDateTime [UpdateDateTime] <p>The timestamp when the task was gathered.</p>
-- * NextUpdateSeconds [NextUpdateSeconds] <p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: Task
-- Required key: UpdateDateTime
-- Required key: NextUpdateSeconds
-- @return NotifyMigrationTaskStateRequest structure as a key-value pair table
function M.NotifyMigrationTaskStateRequest(args)
	assert(args, "You must provide an argument table when creating NotifyMigrationTaskStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Task"] = args["Task"],
		["DryRun"] = args["DryRun"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["UpdateDateTime"] = args["UpdateDateTime"],
		["NextUpdateSeconds"] = args["NextUpdateSeconds"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertNotifyMigrationTaskStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMigrationTaskRequest = { ["ProgressUpdateStream"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertDescribeMigrationTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMigrationTaskRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMigrationTaskRequest[k], "DescribeMigrationTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMigrationTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * MigrationTaskName [MigrationTaskName] <p>The identifier given to the MigrationTask.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- @return DescribeMigrationTaskRequest structure as a key-value pair table
function M.DescribeMigrationTaskRequest(args)
	assert(args, "You must provide an argument table when creating DescribeMigrationTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertDescribeMigrationTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeApplicationStateResult = { ["ApplicationStatus"] = true, ["LastUpdatedTime"] = true, nil }

function asserts.AssertDescribeApplicationStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationStateResult to be of type 'table'")
	if struct["ApplicationStatus"] then asserts.AssertApplicationStatus(struct["ApplicationStatus"]) end
	if struct["LastUpdatedTime"] then asserts.AssertUpdateDateTime(struct["LastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationStateResult[k], "DescribeApplicationStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationStateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationStatus [ApplicationStatus] <p>Status of the application - Not Started, In-Progress, Complete.</p>
-- * LastUpdatedTime [UpdateDateTime] <p>The timestamp when the application status was last updated.</p>
-- @return DescribeApplicationStateResult structure as a key-value pair table
function M.DescribeApplicationStateResult(args)
	assert(args, "You must provide an argument table when creating DescribeApplicationStateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationStatus"] = args["ApplicationStatus"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
	}
	asserts.AssertDescribeApplicationStateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMigrationTasksRequest = { ["ResourceName"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListMigrationTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMigrationTasksRequest to be of type 'table'")
	if struct["ResourceName"] then asserts.AssertResourceName(struct["ResourceName"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMigrationTasksRequest[k], "ListMigrationTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMigrationTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [ResourceName] <p>Filter migration tasks by discovered resource name.</p>
-- * NextToken [Token] <p>If a <code>NextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>
-- * MaxResults [MaxResults] <p>Value to specify how many results are returned per page.</p>
-- @return ListMigrationTasksRequest structure as a key-value pair table
function M.ListMigrationTasksRequest(args)
	assert(args, "You must provide an argument table when creating ListMigrationTasksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceName"] = args["ResourceName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListMigrationTasksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatedArtifact = { ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreatedArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatedArtifact to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertCreatedArtifactName(struct["Name"]) end
	if struct["Description"] then asserts.AssertCreatedArtifactDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatedArtifact[k], "CreatedArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatedArtifact
-- <p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2 instance, RDS instance, etc.).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [CreatedArtifactName] <p>An ARN that uniquely identifies the result of a migration task.</p>
-- * Description [CreatedArtifactDescription] <p>A description that can be free-form text to record additional detail about the artifact for clarity or for later reference.</p>
-- Required key: Name
-- @return CreatedArtifact structure as a key-value pair table
function M.CreatedArtifact(args)
	assert(args, "You must provide an argument table when creating CreatedArtifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreatedArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProgressUpdateStreamResult = { nil }

function asserts.AssertDeleteProgressUpdateStreamResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProgressUpdateStreamResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProgressUpdateStreamResult[k], "DeleteProgressUpdateStreamResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProgressUpdateStreamResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProgressUpdateStreamResult structure as a key-value pair table
function M.DeleteProgressUpdateStreamResult(args)
	assert(args, "You must provide an argument table when creating DeleteProgressUpdateStreamResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProgressUpdateStreamResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DiscoveredResource = { ["ConfigurationId"] = true, ["Description"] = true, nil }

function asserts.AssertDiscoveredResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoveredResource to be of type 'table'")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ConfigurationId"] then asserts.AssertConfigurationId(struct["ConfigurationId"]) end
	if struct["Description"] then asserts.AssertDiscoveredResourceDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiscoveredResource[k], "DiscoveredResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoveredResource
-- <p>Object representing the on-premises resource being migrated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [ConfigurationId] <p>The configurationId in ADS that uniquely identifies the on-premise resource.</p>
-- * Description [DiscoveredResourceDescription] <p>A description that can be free-form text to record additional detail about the discovered resource for clarity or later reference.</p>
-- Required key: ConfigurationId
-- @return DiscoveredResource structure as a key-value pair table
function M.DiscoveredResource(args)
	assert(args, "You must provide an argument table when creating DiscoveredResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["Description"] = args["Description"],
	}
	asserts.AssertDiscoveredResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProgressUpdateStreamsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListProgressUpdateStreamsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProgressUpdateStreamsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProgressUpdateStreamsRequest[k], "ListProgressUpdateStreamsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProgressUpdateStreamsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>If a <code>NextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>
-- * MaxResults [MaxResults] <p>Filter to limit the maximum number of results to list per page.</p>
-- @return ListProgressUpdateStreamsRequest structure as a key-value pair table
function M.ListProgressUpdateStreamsRequest(args)
	assert(args, "You must provide an argument table when creating ListProgressUpdateStreamsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListProgressUpdateStreamsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MigrationTask = { ["ResourceAttributeList"] = true, ["ProgressUpdateStream"] = true, ["Task"] = true, ["UpdateDateTime"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertMigrationTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MigrationTask to be of type 'table'")
	if struct["ResourceAttributeList"] then asserts.AssertLatestResourceAttributeList(struct["ResourceAttributeList"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["Task"] then asserts.AssertTask(struct["Task"]) end
	if struct["UpdateDateTime"] then asserts.AssertUpdateDateTime(struct["UpdateDateTime"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MigrationTask[k], "MigrationTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MigrationTask
-- <p>Represents a migration task in a migration tool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceAttributeList [LatestResourceAttributeList] <p/>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>A name that identifies the vendor of the migration tool being used.</p>
-- * Task [Task] <p>Task object encapsulating task information.</p>
-- * UpdateDateTime [UpdateDateTime] <p>The timestamp when the task was gathered.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- @return MigrationTask structure as a key-value pair table
function M.MigrationTask(args)
	assert(args, "You must provide an argument table when creating MigrationTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceAttributeList"] = args["ResourceAttributeList"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["Task"] = args["Task"],
		["UpdateDateTime"] = args["UpdateDateTime"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertMigrationTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCreatedArtifactsRequest = { ["ProgressUpdateStream"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertListCreatedArtifactsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreatedArtifactsRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsCreatedArtifacts(struct["MaxResults"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCreatedArtifactsRequest[k], "ListCreatedArtifactsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreatedArtifactsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * NextToken [Token] <p>If a <code>NextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>NextToken</code>.</p>
-- * MaxResults [MaxResultsCreatedArtifacts] <p>Maximum number of results to be returned per page.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- @return ListCreatedArtifactsRequest structure as a key-value pair table
function M.ListCreatedArtifactsRequest(args)
	assert(args, "You must provide an argument table when creating ListCreatedArtifactsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertListCreatedArtifactsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateCreatedArtifactRequest = { ["CreatedArtifact"] = true, ["ProgressUpdateStream"] = true, ["DryRun"] = true, ["MigrationTaskName"] = true, nil }

function asserts.AssertAssociateCreatedArtifactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateCreatedArtifactRequest to be of type 'table'")
	assert(struct["ProgressUpdateStream"], "Expected key ProgressUpdateStream to exist in table")
	assert(struct["MigrationTaskName"], "Expected key MigrationTaskName to exist in table")
	assert(struct["CreatedArtifact"], "Expected key CreatedArtifact to exist in table")
	if struct["CreatedArtifact"] then asserts.AssertCreatedArtifact(struct["CreatedArtifact"]) end
	if struct["ProgressUpdateStream"] then asserts.AssertProgressUpdateStream(struct["ProgressUpdateStream"]) end
	if struct["DryRun"] then asserts.AssertDryRun(struct["DryRun"]) end
	if struct["MigrationTaskName"] then asserts.AssertMigrationTaskName(struct["MigrationTaskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateCreatedArtifactRequest[k], "AssociateCreatedArtifactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateCreatedArtifactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedArtifact [CreatedArtifact] <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.) </p>
-- * ProgressUpdateStream [ProgressUpdateStream] <p>The name of the ProgressUpdateStream. </p>
-- * DryRun [DryRun] <p>Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.</p>
-- * MigrationTaskName [MigrationTaskName] <p>Unique identifier that references the migration task.</p>
-- Required key: ProgressUpdateStream
-- Required key: MigrationTaskName
-- Required key: CreatedArtifact
-- @return AssociateCreatedArtifactRequest structure as a key-value pair table
function M.AssociateCreatedArtifactRequest(args)
	assert(args, "You must provide an argument table when creating AssociateCreatedArtifactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedArtifact"] = args["CreatedArtifact"],
		["ProgressUpdateStream"] = args["ProgressUpdateStream"],
		["DryRun"] = args["DryRun"],
		["MigrationTaskName"] = args["MigrationTaskName"],
	}
	asserts.AssertAssociateCreatedArtifactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInputException = { ["Message"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidInputException structure as a key-value pair table
function M.InvalidInputException(args)
	assert(args, "You must provide an argument table when creating InvalidInputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceAttribute = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertResourceAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAttribute to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then asserts.AssertResourceAttributeType(struct["Type"]) end
	if struct["Value"] then asserts.AssertResourceAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAttribute[k], "ResourceAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAttribute
-- <p>Attribute associated with a resource.</p> <p>Note the corresponding format required per type listed below:</p> <dl> <dt>IPV4</dt> <dd> <p> <code>x.x.x.x</code> </p> <p> <i>where x is an integer in the range [0,255]</i> </p> </dd> <dt>IPV6</dt> <dd> <p> <code>y : y : y : y : y : y : y : y</code> </p> <p> <i>where y is a hexadecimal between 0 and FFFF. [0, FFFF]</i> </p> </dd> <dt>MAC_ADDRESS</dt> <dd> <p> <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code> </p> </dd> <dt>FQDN</dt> <dd> <p> <code>^[^&lt;&gt;{}\\\\/?,=\\p{Cntrl}]{1,256}$</code> </p> </dd> </dl>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ResourceAttributeType] <p>Type of resource.</p>
-- * Value [ResourceAttributeValue] <p>Value of the resource type.</p>
-- Required key: Type
-- Required key: Value
-- @return ResourceAttribute structure as a key-value pair table
function M.ResourceAttribute(args)
	assert(args, "You must provide an argument table when creating ResourceAttribute")
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
	asserts.AssertResourceAttribute(all_args)
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
-- <p>Exception raised when the request references a resource (ADS configuration, update stream, migration task, etc.) that does not exist in ADS (Application Discovery Service) or in Migration Hub's repository.</p>
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

function asserts.AssertCreatedArtifactDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected CreatedArtifactDescription to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.CreatedArtifactDescription(str)
	asserts.AssertCreatedArtifactDescription(str)
	return str
end

function asserts.AssertResourceAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceAttributeValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceAttributeValue(str)
	asserts.AssertResourceAttributeValue(str)
	return str
end

function asserts.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	asserts.AssertStatus(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertApplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationStatus to be of type 'string'")
end

--  
function M.ApplicationStatus(str)
	asserts.AssertApplicationStatus(str)
	return str
end

function asserts.AssertDiscoveredResourceDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected DiscoveredResourceDescription to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.DiscoveredResourceDescription(str)
	asserts.AssertDiscoveredResourceDescription(str)
	return str
end

function asserts.AssertProgressUpdateStream(str)
	assert(str)
	assert(type(str) == "string", "Expected ProgressUpdateStream to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProgressUpdateStream(str)
	asserts.AssertProgressUpdateStream(str)
	return str
end

function asserts.AssertMigrationTaskName(str)
	assert(str)
	assert(type(str) == "string", "Expected MigrationTaskName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MigrationTaskName(str)
	asserts.AssertMigrationTaskName(str)
	return str
end

function asserts.AssertApplicationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationId to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ApplicationId(str)
	asserts.AssertApplicationId(str)
	return str
end

function asserts.AssertCreatedArtifactName(str)
	assert(str)
	assert(type(str) == "string", "Expected CreatedArtifactName to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CreatedArtifactName(str)
	asserts.AssertCreatedArtifactName(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertConfigurationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConfigurationId(str)
	asserts.AssertConfigurationId(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertStatusDetail(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusDetail to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.StatusDetail(str)
	asserts.AssertStatusDetail(str)
	return str
end

function asserts.AssertResourceAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceAttributeType to be of type 'string'")
end

--  
function M.ResourceAttributeType(str)
	asserts.AssertResourceAttributeType(str)
	return str
end

function asserts.AssertNextUpdateSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NextUpdateSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NextUpdateSeconds(integer)
	asserts.AssertNextUpdateSeconds(integer)
	return integer
end

function asserts.AssertProgressPercent(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ProgressPercent to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ProgressPercent(integer)
	asserts.AssertProgressPercent(integer)
	return integer
end

function asserts.AssertMaxResultsResources(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsResources to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResultsResources(integer)
	asserts.AssertMaxResultsResources(integer)
	return integer
end

function asserts.AssertMaxResultsCreatedArtifacts(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsCreatedArtifacts to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResultsCreatedArtifacts(integer)
	asserts.AssertMaxResultsCreatedArtifacts(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertDryRun(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DryRun to be of type 'boolean'")
end

function M.DryRun(boolean)
	asserts.AssertDryRun(boolean)
	return boolean
end

function asserts.AssertUpdateDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdateDateTime to be of type 'string'")
end

function M.UpdateDateTime(timestamp)
	asserts.AssertUpdateDateTime(timestamp)
	return timestamp
end

function asserts.AssertDiscoveredResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DiscoveredResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDiscoveredResource(v)
	end
end

--  
-- List of DiscoveredResource objects
function M.DiscoveredResourceList(list)
	asserts.AssertDiscoveredResourceList(list)
	return list
end

function asserts.AssertResourceAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceAttributeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceAttribute(v)
	end
end

--  
-- List of ResourceAttribute objects
function M.ResourceAttributeList(list)
	asserts.AssertResourceAttributeList(list)
	return list
end

function asserts.AssertLatestResourceAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected LatestResourceAttributeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceAttribute(v)
	end
end

--  
-- List of ResourceAttribute objects
function M.LatestResourceAttributeList(list)
	asserts.AssertLatestResourceAttributeList(list)
	return list
end

function asserts.AssertMigrationTaskSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected MigrationTaskSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMigrationTaskSummary(v)
	end
end

--  
-- List of MigrationTaskSummary objects
function M.MigrationTaskSummaryList(list)
	asserts.AssertMigrationTaskSummaryList(list)
	return list
end

function asserts.AssertProgressUpdateStreamSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProgressUpdateStreamSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProgressUpdateStreamSummary(v)
	end
end

--  
-- List of ProgressUpdateStreamSummary objects
function M.ProgressUpdateStreamSummaryList(list)
	asserts.AssertProgressUpdateStreamSummaryList(list)
	return list
end

function asserts.AssertCreatedArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected CreatedArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCreatedArtifact(v)
	end
end

--  
-- List of CreatedArtifact objects
function M.CreatedArtifactList(list)
	asserts.AssertCreatedArtifactList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mgh.amazonaws.com"
		end
	end
	local ss = { "mgh" }
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
--- Call CreateProgressUpdateStream asynchronously, invoking a callback when done
-- @param CreateProgressUpdateStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProgressUpdateStreamAsync(CreateProgressUpdateStreamRequest, cb)
	assert(CreateProgressUpdateStreamRequest, "You must provide a CreateProgressUpdateStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.CreateProgressUpdateStream",
	}
	for header,value in pairs(CreateProgressUpdateStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProgressUpdateStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProgressUpdateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProgressUpdateStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProgressUpdateStreamSync(CreateProgressUpdateStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProgressUpdateStreamAsync(CreateProgressUpdateStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call NotifyApplicationState asynchronously, invoking a callback when done
-- @param NotifyApplicationStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.NotifyApplicationStateAsync(NotifyApplicationStateRequest, cb)
	assert(NotifyApplicationStateRequest, "You must provide a NotifyApplicationStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.NotifyApplicationState",
	}
	for header,value in pairs(NotifyApplicationStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", NotifyApplicationStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call NotifyApplicationState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param NotifyApplicationStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.NotifyApplicationStateSync(NotifyApplicationStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.NotifyApplicationStateAsync(NotifyApplicationStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDiscoveredResource asynchronously, invoking a callback when done
-- @param AssociateDiscoveredResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDiscoveredResourceAsync(AssociateDiscoveredResourceRequest, cb)
	assert(AssociateDiscoveredResourceRequest, "You must provide a AssociateDiscoveredResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.AssociateDiscoveredResource",
	}
	for header,value in pairs(AssociateDiscoveredResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateDiscoveredResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDiscoveredResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDiscoveredResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDiscoveredResourceSync(AssociateDiscoveredResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDiscoveredResourceAsync(AssociateDiscoveredResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutResourceAttributes asynchronously, invoking a callback when done
-- @param PutResourceAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutResourceAttributesAsync(PutResourceAttributesRequest, cb)
	assert(PutResourceAttributesRequest, "You must provide a PutResourceAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.PutResourceAttributes",
	}
	for header,value in pairs(PutResourceAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutResourceAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutResourceAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutResourceAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutResourceAttributesSync(PutResourceAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutResourceAttributesAsync(PutResourceAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProgressUpdateStreams asynchronously, invoking a callback when done
-- @param ListProgressUpdateStreamsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProgressUpdateStreamsAsync(ListProgressUpdateStreamsRequest, cb)
	assert(ListProgressUpdateStreamsRequest, "You must provide a ListProgressUpdateStreamsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.ListProgressUpdateStreams",
	}
	for header,value in pairs(ListProgressUpdateStreamsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProgressUpdateStreamsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProgressUpdateStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProgressUpdateStreamsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListProgressUpdateStreamsSync(ListProgressUpdateStreamsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProgressUpdateStreamsAsync(ListProgressUpdateStreamsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateDiscoveredResource asynchronously, invoking a callback when done
-- @param DisassociateDiscoveredResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDiscoveredResourceAsync(DisassociateDiscoveredResourceRequest, cb)
	assert(DisassociateDiscoveredResourceRequest, "You must provide a DisassociateDiscoveredResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.DisassociateDiscoveredResource",
	}
	for header,value in pairs(DisassociateDiscoveredResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateDiscoveredResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDiscoveredResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDiscoveredResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDiscoveredResourceSync(DisassociateDiscoveredResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDiscoveredResourceAsync(DisassociateDiscoveredResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProgressUpdateStream asynchronously, invoking a callback when done
-- @param DeleteProgressUpdateStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProgressUpdateStreamAsync(DeleteProgressUpdateStreamRequest, cb)
	assert(DeleteProgressUpdateStreamRequest, "You must provide a DeleteProgressUpdateStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.DeleteProgressUpdateStream",
	}
	for header,value in pairs(DeleteProgressUpdateStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProgressUpdateStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProgressUpdateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProgressUpdateStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProgressUpdateStreamSync(DeleteProgressUpdateStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProgressUpdateStreamAsync(DeleteProgressUpdateStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCreatedArtifacts asynchronously, invoking a callback when done
-- @param ListCreatedArtifactsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCreatedArtifactsAsync(ListCreatedArtifactsRequest, cb)
	assert(ListCreatedArtifactsRequest, "You must provide a ListCreatedArtifactsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.ListCreatedArtifacts",
	}
	for header,value in pairs(ListCreatedArtifactsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCreatedArtifactsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCreatedArtifacts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCreatedArtifactsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCreatedArtifactsSync(ListCreatedArtifactsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCreatedArtifactsAsync(ListCreatedArtifactsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call NotifyMigrationTaskState asynchronously, invoking a callback when done
-- @param NotifyMigrationTaskStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.NotifyMigrationTaskStateAsync(NotifyMigrationTaskStateRequest, cb)
	assert(NotifyMigrationTaskStateRequest, "You must provide a NotifyMigrationTaskStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.NotifyMigrationTaskState",
	}
	for header,value in pairs(NotifyMigrationTaskStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", NotifyMigrationTaskStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call NotifyMigrationTaskState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param NotifyMigrationTaskStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.NotifyMigrationTaskStateSync(NotifyMigrationTaskStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.NotifyMigrationTaskStateAsync(NotifyMigrationTaskStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportMigrationTask asynchronously, invoking a callback when done
-- @param ImportMigrationTaskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportMigrationTaskAsync(ImportMigrationTaskRequest, cb)
	assert(ImportMigrationTaskRequest, "You must provide a ImportMigrationTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.ImportMigrationTask",
	}
	for header,value in pairs(ImportMigrationTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportMigrationTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportMigrationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportMigrationTaskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ImportMigrationTaskSync(ImportMigrationTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportMigrationTaskAsync(ImportMigrationTaskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMigrationTask asynchronously, invoking a callback when done
-- @param DescribeMigrationTaskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMigrationTaskAsync(DescribeMigrationTaskRequest, cb)
	assert(DescribeMigrationTaskRequest, "You must provide a DescribeMigrationTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.DescribeMigrationTask",
	}
	for header,value in pairs(DescribeMigrationTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMigrationTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMigrationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMigrationTaskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMigrationTaskSync(DescribeMigrationTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMigrationTaskAsync(DescribeMigrationTaskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMigrationTasks asynchronously, invoking a callback when done
-- @param ListMigrationTasksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMigrationTasksAsync(ListMigrationTasksRequest, cb)
	assert(ListMigrationTasksRequest, "You must provide a ListMigrationTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.ListMigrationTasks",
	}
	for header,value in pairs(ListMigrationTasksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMigrationTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMigrationTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMigrationTasksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMigrationTasksSync(ListMigrationTasksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMigrationTasksAsync(ListMigrationTasksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateCreatedArtifact asynchronously, invoking a callback when done
-- @param DisassociateCreatedArtifactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateCreatedArtifactAsync(DisassociateCreatedArtifactRequest, cb)
	assert(DisassociateCreatedArtifactRequest, "You must provide a DisassociateCreatedArtifactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.DisassociateCreatedArtifact",
	}
	for header,value in pairs(DisassociateCreatedArtifactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateCreatedArtifactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateCreatedArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateCreatedArtifactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateCreatedArtifactSync(DisassociateCreatedArtifactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateCreatedArtifactAsync(DisassociateCreatedArtifactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateCreatedArtifact asynchronously, invoking a callback when done
-- @param AssociateCreatedArtifactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateCreatedArtifactAsync(AssociateCreatedArtifactRequest, cb)
	assert(AssociateCreatedArtifactRequest, "You must provide a AssociateCreatedArtifactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.AssociateCreatedArtifact",
	}
	for header,value in pairs(AssociateCreatedArtifactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateCreatedArtifactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateCreatedArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateCreatedArtifactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateCreatedArtifactSync(AssociateCreatedArtifactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateCreatedArtifactAsync(AssociateCreatedArtifactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDiscoveredResources asynchronously, invoking a callback when done
-- @param ListDiscoveredResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, cb)
	assert(ListDiscoveredResourcesRequest, "You must provide a ListDiscoveredResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.ListDiscoveredResources",
	}
	for header,value in pairs(ListDiscoveredResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDiscoveredResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDiscoveredResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDiscoveredResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDiscoveredResourcesSync(ListDiscoveredResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDiscoveredResourcesAsync(ListDiscoveredResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApplicationState asynchronously, invoking a callback when done
-- @param DescribeApplicationStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeApplicationStateAsync(DescribeApplicationStateRequest, cb)
	assert(DescribeApplicationStateRequest, "You must provide a DescribeApplicationStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSMigrationHub.DescribeApplicationState",
	}
	for header,value in pairs(DescribeApplicationStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeApplicationStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeApplicationState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeApplicationStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeApplicationStateSync(DescribeApplicationStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeApplicationStateAsync(DescribeApplicationStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
