--- GENERATED CODE - DO NOT MODIFY
-- AWS Import/Export (importexport-2010-06-01)

local M = {}

M.metadata = {
	api_version = "2010-06-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "importexport",
	service_abbreviation = "",
	service_full_name = "AWS Import/Export",
	signature_version = "v2",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "importexport.amazonaws.com",
	uid = "importexport-2010-06-01",
}

local keys = {}
local asserts = {}

keys.NoSuchBucketException = { ["message"] = true, nil }

function asserts.AssertNoSuchBucketException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucketException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchBucketException[k], "NoSuchBucketException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucketException
-- The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return NoSuchBucketException structure as a key-value pair table
function M.NoSuchBucketException(args)
	assert(args, "You must provide an argument table when creating NoSuchBucketException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchBucketException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidCustomsException = { ["message"] = true, nil }

function asserts.AssertInvalidCustomsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCustomsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCustomsException[k], "InvalidCustomsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCustomsException
-- One or more customs parameters was invalid. Please correct and resubmit.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidCustomsException structure as a key-value pair table
function M.InvalidCustomsException(args)
	assert(args, "You must provide an argument table when creating InvalidCustomsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidCustomsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingParameterException = { ["message"] = true, nil }

function asserts.AssertMissingParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingParameterException[k], "MissingParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameterException
-- One or more required parameters was missing from the request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MissingParameterException structure as a key-value pair table
function M.MissingParameterException(args)
	assert(args, "You must provide an argument table when creating MissingParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnableToUpdateJobIdException = { ["message"] = true, nil }

function asserts.AssertUnableToUpdateJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToUpdateJobIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnableToUpdateJobIdException[k], "UnableToUpdateJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToUpdateJobIdException
-- AWS Import/Export cannot update the job
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return UnableToUpdateJobIdException structure as a key-value pair table
function M.UnableToUpdateJobIdException(args)
	assert(args, "You must provide an argument table when creating UnableToUpdateJobIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnableToUpdateJobIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobInput = { ["APIVersion"] = true, ["JobId"] = true, nil }

function asserts.AssertCancelJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobInput[k], "CancelJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobInput
-- Input structure for the CancelJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APIVersion [APIVersion] 
-- * JobId [JobId] 
-- Required key: JobId
-- @return CancelJobInput structure as a key-value pair table
function M.CancelJobInput(args)
	assert(args, "You must provide an argument table when creating CancelJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APIVersion"] = args["APIVersion"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertCancelJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidFileSystemException = { ["message"] = true, nil }

function asserts.AssertInvalidFileSystemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFileSystemException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFileSystemException[k], "InvalidFileSystemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFileSystemException
-- File system specified in export manifest is invalid.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidFileSystemException structure as a key-value pair table
function M.InvalidFileSystemException(args)
	assert(args, "You must provide an argument table when creating InvalidFileSystemException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidFileSystemException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExpiredJobIdException = { ["message"] = true, nil }

function asserts.AssertExpiredJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredJobIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredJobIdException[k], "ExpiredJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredJobIdException
-- Indicates that the specified job has expired out of the system.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ExpiredJobIdException structure as a key-value pair table
function M.ExpiredJobIdException(args)
	assert(args, "You must provide an argument table when creating ExpiredJobIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExpiredJobIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnableToCancelJobIdException = { ["message"] = true, nil }

function asserts.AssertUnableToCancelJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToCancelJobIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnableToCancelJobIdException[k], "UnableToCancelJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToCancelJobIdException
-- AWS Import/Export cannot cancel the job
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return UnableToCancelJobIdException structure as a key-value pair table
function M.UnableToCancelJobIdException(args)
	assert(args, "You must provide an argument table when creating UnableToCancelJobIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnableToCancelJobIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetShippingLabelInput = { ["city"] = true, ["street3"] = true, ["name"] = true, ["country"] = true, ["company"] = true, ["jobIds"] = true, ["APIVersion"] = true, ["phoneNumber"] = true, ["street1"] = true, ["postalCode"] = true, ["stateOrProvince"] = true, ["street2"] = true, nil }

function asserts.AssertGetShippingLabelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShippingLabelInput to be of type 'table'")
	assert(struct["jobIds"], "Expected key jobIds to exist in table")
	if struct["city"] then asserts.Assertcity(struct["city"]) end
	if struct["street3"] then asserts.Assertstreet3(struct["street3"]) end
	if struct["name"] then asserts.Assertname(struct["name"]) end
	if struct["country"] then asserts.Assertcountry(struct["country"]) end
	if struct["company"] then asserts.Assertcompany(struct["company"]) end
	if struct["jobIds"] then asserts.AssertJobIdList(struct["jobIds"]) end
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	if struct["phoneNumber"] then asserts.AssertphoneNumber(struct["phoneNumber"]) end
	if struct["street1"] then asserts.Assertstreet1(struct["street1"]) end
	if struct["postalCode"] then asserts.AssertpostalCode(struct["postalCode"]) end
	if struct["stateOrProvince"] then asserts.AssertstateOrProvince(struct["stateOrProvince"]) end
	if struct["street2"] then asserts.Assertstreet2(struct["street2"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetShippingLabelInput[k], "GetShippingLabelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShippingLabelInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * city [city] 
-- * street3 [street3] 
-- * name [name] 
-- * country [country] 
-- * company [company] 
-- * jobIds [JobIdList] 
-- * APIVersion [APIVersion] 
-- * phoneNumber [phoneNumber] 
-- * street1 [street1] 
-- * postalCode [postalCode] 
-- * stateOrProvince [stateOrProvince] 
-- * street2 [street2] 
-- Required key: jobIds
-- @return GetShippingLabelInput structure as a key-value pair table
function M.GetShippingLabelInput(args)
	assert(args, "You must provide an argument table when creating GetShippingLabelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["city"] = args["city"],
		["street3"] = args["street3"],
		["name"] = args["name"],
		["country"] = args["country"],
		["company"] = args["company"],
		["jobIds"] = args["jobIds"],
		["APIVersion"] = args["APIVersion"],
		["phoneNumber"] = args["phoneNumber"],
		["street1"] = args["street1"],
		["postalCode"] = args["postalCode"],
		["stateOrProvince"] = args["stateOrProvince"],
		["street2"] = args["street2"],
	}
	asserts.AssertGetShippingLabelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStatusInput = { ["APIVersion"] = true, ["JobId"] = true, nil }

function asserts.AssertGetStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStatusInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStatusInput[k], "GetStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStatusInput
-- Input structure for the GetStatus operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APIVersion [APIVersion] 
-- * JobId [JobId] 
-- Required key: JobId
-- @return GetStatusInput structure as a key-value pair table
function M.GetStatusInput(args)
	assert(args, "You must provide an argument table when creating GetStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APIVersion"] = args["APIVersion"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- One or more parameters had an invalid value.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAccessKeyIdException = { ["message"] = true, nil }

function asserts.AssertInvalidAccessKeyIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAccessKeyIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAccessKeyIdException[k], "InvalidAccessKeyIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAccessKeyIdException
-- The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidAccessKeyIdException structure as a key-value pair table
function M.InvalidAccessKeyIdException(args)
	assert(args, "You must provide an argument table when creating InvalidAccessKeyIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidAccessKeyIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Artifact = { ["URL"] = true, ["Description"] = true, nil }

function asserts.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["URL"] then asserts.AssertURL(struct["URL"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Artifact[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- A discrete item that contains the description and URL of an artifact (such as a PDF).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * URL [URL] 
-- * Description [Description] 
-- @return Artifact structure as a key-value pair table
function M.Artifact(args)
	assert(args, "You must provide an argument table when creating Artifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["URL"] = args["URL"],
		["Description"] = args["Description"],
	}
	asserts.AssertArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidJobIdException = { ["message"] = true, nil }

function asserts.AssertInvalidJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidJobIdException[k], "InvalidJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobIdException
-- The JOBID was missing, not found, or not associated with the AWS account.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidJobIdException structure as a key-value pair table
function M.InvalidJobIdException(args)
	assert(args, "You must provide an argument table when creating InvalidJobIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidJobIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobQuotaExceededException = { ["message"] = true, nil }

function asserts.AssertCreateJobQuotaExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQuotaExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobQuotaExceededException[k], "CreateJobQuotaExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQuotaExceededException
-- Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return CreateJobQuotaExceededException structure as a key-value pair table
function M.CreateJobQuotaExceededException(args)
	assert(args, "You must provide an argument table when creating CreateJobQuotaExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCreateJobQuotaExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobOutput = { ["ArtifactList"] = true, ["WarningMessage"] = true, ["SignatureFileContents"] = true, ["Signature"] = true, ["JobId"] = true, ["JobType"] = true, nil }

function asserts.AssertCreateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobOutput to be of type 'table'")
	if struct["ArtifactList"] then asserts.AssertArtifactList(struct["ArtifactList"]) end
	if struct["WarningMessage"] then asserts.AssertWarningMessage(struct["WarningMessage"]) end
	if struct["SignatureFileContents"] then asserts.AssertSignatureFileContents(struct["SignatureFileContents"]) end
	if struct["Signature"] then asserts.AssertSignature(struct["Signature"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobOutput[k], "CreateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobOutput
-- Output structure for the CreateJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ArtifactList [ArtifactList] 
-- * WarningMessage [WarningMessage] 
-- * SignatureFileContents [SignatureFileContents] 
-- * Signature [Signature] 
-- * JobId [JobId] 
-- * JobType [JobType] 
-- @return CreateJobOutput structure as a key-value pair table
function M.CreateJobOutput(args)
	assert(args, "You must provide an argument table when creating CreateJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ArtifactList"] = args["ArtifactList"],
		["WarningMessage"] = args["WarningMessage"],
		["SignatureFileContents"] = args["SignatureFileContents"],
		["Signature"] = args["Signature"],
		["JobId"] = args["JobId"],
		["JobType"] = args["JobType"],
	}
	asserts.AssertCreateJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["CreationDate"] = true, ["IsCanceled"] = true, ["JobType"] = true, ["JobId"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["CreationDate"] then asserts.AssertCreationDate(struct["CreationDate"]) end
	if struct["IsCanceled"] then asserts.AssertIsCanceled(struct["IsCanceled"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- Representation of a job returned by the ListJobs operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationDate [CreationDate] 
-- * IsCanceled [IsCanceled] 
-- * JobType [JobType] 
-- * JobId [JobId] 
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationDate"] = args["CreationDate"],
		["IsCanceled"] = args["IsCanceled"],
		["JobType"] = args["JobType"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CanceledJobIdException = { ["message"] = true, nil }

function asserts.AssertCanceledJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CanceledJobIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CanceledJobIdException[k], "CanceledJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CanceledJobIdException
-- The specified job ID has been canceled and is no longer valid.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return CanceledJobIdException structure as a key-value pair table
function M.CanceledJobIdException(args)
	assert(args, "You must provide an argument table when creating CanceledJobIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCanceledJobIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BucketPermissionException = { ["message"] = true, nil }

function asserts.AssertBucketPermissionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketPermissionException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BucketPermissionException[k], "BucketPermissionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketPermissionException
-- The account specified does not have the appropriate bucket permissions.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return BucketPermissionException structure as a key-value pair table
function M.BucketPermissionException(args)
	assert(args, "You must provide an argument table when creating BucketPermissionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertBucketPermissionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingCustomsException = { ["message"] = true, nil }

function asserts.AssertMissingCustomsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingCustomsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingCustomsException[k], "MissingCustomsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingCustomsException
-- One or more required customs parameters was missing from the manifest.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MissingCustomsException structure as a key-value pair table
function M.MissingCustomsException(args)
	assert(args, "You must provide an argument table when creating MissingCustomsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingCustomsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MultipleRegionsException = { ["message"] = true, nil }

function asserts.AssertMultipleRegionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipleRegionsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MultipleRegionsException[k], "MultipleRegionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipleRegionsException
-- Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MultipleRegionsException structure as a key-value pair table
function M.MultipleRegionsException(args)
	assert(args, "You must provide an argument table when creating MultipleRegionsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMultipleRegionsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsOutput = { ["Jobs"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsOutput to be of type 'table'")
	if struct["Jobs"] then asserts.AssertJobsList(struct["Jobs"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsOutput[k], "ListJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsOutput
-- Output structure for the ListJobs operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Jobs [JobsList] 
-- * IsTruncated [IsTruncated] 
-- @return ListJobsOutput structure as a key-value pair table
function M.ListJobsOutput(args)
	assert(args, "You must provide an argument table when creating ListJobsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Jobs"] = args["Jobs"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListJobsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobOutput = { ["ArtifactList"] = true, ["Success"] = true, ["WarningMessage"] = true, nil }

function asserts.AssertUpdateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobOutput to be of type 'table'")
	if struct["ArtifactList"] then asserts.AssertArtifactList(struct["ArtifactList"]) end
	if struct["Success"] then asserts.AssertSuccess(struct["Success"]) end
	if struct["WarningMessage"] then asserts.AssertWarningMessage(struct["WarningMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobOutput[k], "UpdateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobOutput
-- Output structure for the UpateJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ArtifactList [ArtifactList] 
-- * Success [Success] 
-- * WarningMessage [WarningMessage] 
-- @return UpdateJobOutput structure as a key-value pair table
function M.UpdateJobOutput(args)
	assert(args, "You must provide an argument table when creating UpdateJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ArtifactList"] = args["ArtifactList"],
		["Success"] = args["Success"],
		["WarningMessage"] = args["WarningMessage"],
	}
	asserts.AssertUpdateJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobInput = { ["ManifestAddendum"] = true, ["ValidateOnly"] = true, ["APIVersion"] = true, ["JobType"] = true, ["Manifest"] = true, nil }

function asserts.AssertCreateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobInput to be of type 'table'")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["Manifest"], "Expected key Manifest to exist in table")
	assert(struct["ValidateOnly"], "Expected key ValidateOnly to exist in table")
	if struct["ManifestAddendum"] then asserts.AssertManifestAddendum(struct["ManifestAddendum"]) end
	if struct["ValidateOnly"] then asserts.AssertValidateOnly(struct["ValidateOnly"]) end
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["Manifest"] then asserts.AssertManifest(struct["Manifest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobInput[k], "CreateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobInput
-- Input structure for the CreateJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManifestAddendum [ManifestAddendum] 
-- * ValidateOnly [ValidateOnly] 
-- * APIVersion [APIVersion] 
-- * JobType [JobType] 
-- * Manifest [Manifest] 
-- Required key: JobType
-- Required key: Manifest
-- Required key: ValidateOnly
-- @return CreateJobInput structure as a key-value pair table
function M.CreateJobInput(args)
	assert(args, "You must provide an argument table when creating CreateJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManifestAddendum"] = args["ManifestAddendum"],
		["ValidateOnly"] = args["ValidateOnly"],
		["APIVersion"] = args["APIVersion"],
		["JobType"] = args["JobType"],
		["Manifest"] = args["Manifest"],
	}
	asserts.AssertCreateJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobOutput = { ["Success"] = true, nil }

function asserts.AssertCancelJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobOutput to be of type 'table'")
	if struct["Success"] then asserts.AssertSuccess(struct["Success"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobOutput[k], "CancelJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobOutput
-- Output structure for the CancelJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Success [Success] 
-- @return CancelJobOutput structure as a key-value pair table
function M.CancelJobOutput(args)
	assert(args, "You must provide an argument table when creating CancelJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Success"] = args["Success"],
	}
	asserts.AssertCancelJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetShippingLabelOutput = { ["ShippingLabelURL"] = true, ["Warning"] = true, nil }

function asserts.AssertGetShippingLabelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShippingLabelOutput to be of type 'table'")
	if struct["ShippingLabelURL"] then asserts.AssertGenericString(struct["ShippingLabelURL"]) end
	if struct["Warning"] then asserts.AssertGenericString(struct["Warning"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetShippingLabelOutput[k], "GetShippingLabelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShippingLabelOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShippingLabelURL [GenericString] 
-- * Warning [GenericString] 
-- @return GetShippingLabelOutput structure as a key-value pair table
function M.GetShippingLabelOutput(args)
	assert(args, "You must provide an argument table when creating GetShippingLabelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShippingLabelURL"] = args["ShippingLabelURL"],
		["Warning"] = args["Warning"],
	}
	asserts.AssertGetShippingLabelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MalformedManifestException = { ["message"] = true, nil }

function asserts.AssertMalformedManifestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedManifestException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedManifestException[k], "MalformedManifestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedManifestException
-- Your manifest is not well-formed.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MalformedManifestException structure as a key-value pair table
function M.MalformedManifestException(args)
	assert(args, "You must provide an argument table when creating MalformedManifestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedManifestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingManifestFieldException = { ["message"] = true, nil }

function asserts.AssertMissingManifestFieldException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingManifestFieldException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingManifestFieldException[k], "MissingManifestFieldException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingManifestFieldException
-- One or more required fields were missing from the manifest file. Please correct and resubmit.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MissingManifestFieldException structure as a key-value pair table
function M.MissingManifestFieldException(args)
	assert(args, "You must provide an argument table when creating MissingManifestFieldException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingManifestFieldException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidVersionException = { ["message"] = true, nil }

function asserts.AssertInvalidVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVersionException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidVersionException[k], "InvalidVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVersionException
-- The client tool version is invalid.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidVersionException structure as a key-value pair table
function M.InvalidVersionException(args)
	assert(args, "You must provide an argument table when creating InvalidVersionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidVersionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAddressException = { ["message"] = true, nil }

function asserts.AssertInvalidAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAddressException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAddressException[k], "InvalidAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAddressException
-- The address specified in the manifest is invalid.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidAddressException structure as a key-value pair table
function M.InvalidAddressException(args)
	assert(args, "You must provide an argument table when creating InvalidAddressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidAddressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsInput = { ["Marker"] = true, ["MaxJobs"] = true, ["APIVersion"] = true, nil }

function asserts.AssertListJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["MaxJobs"] then asserts.AssertMaxJobs(struct["MaxJobs"]) end
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsInput[k], "ListJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsInput
-- Input structure for the ListJobs operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] 
-- * MaxJobs [MaxJobs] 
-- * APIVersion [APIVersion] 
-- @return ListJobsInput structure as a key-value pair table
function M.ListJobsInput(args)
	assert(args, "You must provide an argument table when creating ListJobsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxJobs"] = args["MaxJobs"],
		["APIVersion"] = args["APIVersion"],
	}
	asserts.AssertListJobsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStatusOutput = { ["ProgressMessage"] = true, ["ProgressCode"] = true, ["CreationDate"] = true, ["LogBucket"] = true, ["ArtifactList"] = true, ["LocationMessage"] = true, ["CurrentManifest"] = true, ["JobId"] = true, ["Carrier"] = true, ["JobType"] = true, ["Signature"] = true, ["TrackingNumber"] = true, ["SignatureFileContents"] = true, ["ErrorCount"] = true, ["LocationCode"] = true, ["LogKey"] = true, nil }

function asserts.AssertGetStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStatusOutput to be of type 'table'")
	if struct["ProgressMessage"] then asserts.AssertProgressMessage(struct["ProgressMessage"]) end
	if struct["ProgressCode"] then asserts.AssertProgressCode(struct["ProgressCode"]) end
	if struct["CreationDate"] then asserts.AssertCreationDate(struct["CreationDate"]) end
	if struct["LogBucket"] then asserts.AssertLogBucket(struct["LogBucket"]) end
	if struct["ArtifactList"] then asserts.AssertArtifactList(struct["ArtifactList"]) end
	if struct["LocationMessage"] then asserts.AssertLocationMessage(struct["LocationMessage"]) end
	if struct["CurrentManifest"] then asserts.AssertCurrentManifest(struct["CurrentManifest"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["Carrier"] then asserts.AssertCarrier(struct["Carrier"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["Signature"] then asserts.AssertSignature(struct["Signature"]) end
	if struct["TrackingNumber"] then asserts.AssertTrackingNumber(struct["TrackingNumber"]) end
	if struct["SignatureFileContents"] then asserts.AssertSignature(struct["SignatureFileContents"]) end
	if struct["ErrorCount"] then asserts.AssertErrorCount(struct["ErrorCount"]) end
	if struct["LocationCode"] then asserts.AssertLocationCode(struct["LocationCode"]) end
	if struct["LogKey"] then asserts.AssertLogKey(struct["LogKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStatusOutput[k], "GetStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStatusOutput
-- Output structure for the GetStatus operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressMessage [ProgressMessage] 
-- * ProgressCode [ProgressCode] 
-- * CreationDate [CreationDate] 
-- * LogBucket [LogBucket] 
-- * ArtifactList [ArtifactList] 
-- * LocationMessage [LocationMessage] 
-- * CurrentManifest [CurrentManifest] 
-- * JobId [JobId] 
-- * Carrier [Carrier] 
-- * JobType [JobType] 
-- * Signature [Signature] 
-- * TrackingNumber [TrackingNumber] 
-- * SignatureFileContents [Signature] 
-- * ErrorCount [ErrorCount] 
-- * LocationCode [LocationCode] 
-- * LogKey [LogKey] 
-- @return GetStatusOutput structure as a key-value pair table
function M.GetStatusOutput(args)
	assert(args, "You must provide an argument table when creating GetStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressMessage"] = args["ProgressMessage"],
		["ProgressCode"] = args["ProgressCode"],
		["CreationDate"] = args["CreationDate"],
		["LogBucket"] = args["LogBucket"],
		["ArtifactList"] = args["ArtifactList"],
		["LocationMessage"] = args["LocationMessage"],
		["CurrentManifest"] = args["CurrentManifest"],
		["JobId"] = args["JobId"],
		["Carrier"] = args["Carrier"],
		["JobType"] = args["JobType"],
		["Signature"] = args["Signature"],
		["TrackingNumber"] = args["TrackingNumber"],
		["SignatureFileContents"] = args["SignatureFileContents"],
		["ErrorCount"] = args["ErrorCount"],
		["LocationCode"] = args["LocationCode"],
		["LogKey"] = args["LogKey"],
	}
	asserts.AssertGetStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidManifestFieldException = { ["message"] = true, nil }

function asserts.AssertInvalidManifestFieldException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidManifestFieldException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidManifestFieldException[k], "InvalidManifestFieldException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidManifestFieldException
-- One or more manifest fields was invalid. Please correct and resubmit.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidManifestFieldException structure as a key-value pair table
function M.InvalidManifestFieldException(args)
	assert(args, "You must provide an argument table when creating InvalidManifestFieldException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidManifestFieldException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobInput = { ["Manifest"] = true, ["ValidateOnly"] = true, ["APIVersion"] = true, ["JobType"] = true, ["JobId"] = true, nil }

function asserts.AssertUpdateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	assert(struct["Manifest"], "Expected key Manifest to exist in table")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["ValidateOnly"], "Expected key ValidateOnly to exist in table")
	if struct["Manifest"] then asserts.AssertManifest(struct["Manifest"]) end
	if struct["ValidateOnly"] then asserts.AssertValidateOnly(struct["ValidateOnly"]) end
	if struct["APIVersion"] then asserts.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobInput[k], "UpdateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobInput
-- Input structure for the UpateJob operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Manifest [Manifest] 
-- * ValidateOnly [ValidateOnly] 
-- * APIVersion [APIVersion] 
-- * JobType [JobType] 
-- * JobId [JobId] 
-- Required key: JobId
-- Required key: Manifest
-- Required key: JobType
-- Required key: ValidateOnly
-- @return UpdateJobInput structure as a key-value pair table
function M.UpdateJobInput(args)
	assert(args, "You must provide an argument table when creating UpdateJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Manifest"] = args["Manifest"],
		["ValidateOnly"] = args["ValidateOnly"],
		["APIVersion"] = args["APIVersion"],
		["JobType"] = args["JobType"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertUpdateJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.Assertstreet2(str)
	assert(str)
	assert(type(str) == "string", "Expected street2 to be of type 'string'")
end

-- Specifies the optional second part of the street address for the return address, for example Suite 100.
function M.street2(str)
	asserts.Assertstreet2(str)
	return str
end

function asserts.AssertLocationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationMessage to be of type 'string'")
end

-- A more human readable form of the physical location of the storage device.
function M.LocationMessage(str)
	asserts.AssertLocationMessage(str)
	return str
end

function asserts.AssertAPIVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected APIVersion to be of type 'string'")
end

-- Specifies the version of the client tool.
function M.APIVersion(str)
	asserts.AssertAPIVersion(str)
	return str
end

function asserts.Assertcountry(str)
	assert(str)
	assert(type(str) == "string", "Expected country to be of type 'string'")
end

-- Specifies the name of your country for the return address.
function M.country(str)
	asserts.Assertcountry(str)
	return str
end

function asserts.AssertTrackingNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected TrackingNumber to be of type 'string'")
end

-- The shipping tracking number assigned by AWS Import/Export to the storage device when it's returned to you. We return this value when the LocationCode is "Returned".
function M.TrackingNumber(str)
	asserts.AssertTrackingNumber(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
end

-- A unique identifier which refers to a particular job.
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertProgressCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ProgressCode to be of type 'string'")
end

-- A token representing the state of the job, such as "Started".
function M.ProgressCode(str)
	asserts.AssertProgressCode(str)
	return str
end

function asserts.AssertProgressMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ProgressMessage to be of type 'string'")
end

-- A more human readable form of the job status.
function M.ProgressMessage(str)
	asserts.AssertProgressMessage(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

-- The associated description for this object.
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertWarningMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected WarningMessage to be of type 'string'")
end

-- An optional message notifying you of non-fatal issues with the job, such as use of an incompatible Amazon S3 bucket name.
function M.WarningMessage(str)
	asserts.AssertWarningMessage(str)
	return str
end

function asserts.AssertphoneNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected phoneNumber to be of type 'string'")
end

-- Specifies the phone number of the person responsible for shipping this package.
function M.phoneNumber(str)
	asserts.AssertphoneNumber(str)
	return str
end

function asserts.Assertstreet1(str)
	assert(str)
	assert(type(str) == "string", "Expected street1 to be of type 'string'")
end

-- Specifies the first part of the street address for the return address, for example 1234 Main Street.
function M.street1(str)
	asserts.Assertstreet1(str)
	return str
end

function asserts.AssertpostalCode(str)
	assert(str)
	assert(type(str) == "string", "Expected postalCode to be of type 'string'")
end

-- Specifies the postal code for the return address.
function M.postalCode(str)
	asserts.AssertpostalCode(str)
	return str
end

function asserts.AssertJobType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobType to be of type 'string'")
end

-- Specifies whether the job to initiate is an import or export job.
function M.JobType(str)
	asserts.AssertJobType(str)
	return str
end

function asserts.AssertLogKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LogKey to be of type 'string'")
end

-- The key where the user logs were stored.
function M.LogKey(str)
	asserts.AssertLogKey(str)
	return str
end

function asserts.AssertSignatureFileContents(str)
	assert(str)
	assert(type(str) == "string", "Expected SignatureFileContents to be of type 'string'")
end

-- The actual text of the SIGNATURE file to be written to disk.
function M.SignatureFileContents(str)
	asserts.AssertSignatureFileContents(str)
	return str
end

function asserts.AssertLogBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected LogBucket to be of type 'string'")
end

-- Amazon S3 bucket for user logs.
function M.LogBucket(str)
	asserts.AssertLogBucket(str)
	return str
end

function asserts.Assertcity(str)
	assert(str)
	assert(type(str) == "string", "Expected city to be of type 'string'")
end

-- Specifies the name of your city for the return address.
function M.city(str)
	asserts.Assertcity(str)
	return str
end

function asserts.AssertURL(str)
	assert(str)
	assert(type(str) == "string", "Expected URL to be of type 'string'")
end

-- The URL for a given Artifact.
function M.URL(str)
	asserts.AssertURL(str)
	return str
end

function asserts.AssertManifestAddendum(str)
	assert(str)
	assert(type(str) == "string", "Expected ManifestAddendum to be of type 'string'")
end

-- For internal use only.
function M.ManifestAddendum(str)
	asserts.AssertManifestAddendum(str)
	return str
end

function asserts.Assertcompany(str)
	assert(str)
	assert(type(str) == "string", "Expected company to be of type 'string'")
end

-- Specifies the name of the company that will ship this package.
function M.company(str)
	asserts.Assertcompany(str)
	return str
end

function asserts.Assertstreet3(str)
	assert(str)
	assert(type(str) == "string", "Expected street3 to be of type 'string'")
end

-- Specifies the optional third part of the street address for the return address, for example c/o Jane Doe.
function M.street3(str)
	asserts.Assertstreet3(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

--  
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertCurrentManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrentManifest to be of type 'string'")
end

-- The last manifest submitted, which will be used to process the job.
function M.CurrentManifest(str)
	asserts.AssertCurrentManifest(str)
	return str
end

function asserts.AssertSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected Signature to be of type 'string'")
end

-- An encrypted code used to authenticate the request and response, for example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is you want to create the signature file yourself. Generally you should use the SignatureFileContents value.
function M.Signature(str)
	asserts.AssertSignature(str)
	return str
end

function asserts.Assertname(str)
	assert(str)
	assert(type(str) == "string", "Expected name to be of type 'string'")
end

-- Specifies the name of the person responsible for shipping this package.
function M.name(str)
	asserts.Assertname(str)
	return str
end

function asserts.AssertManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected Manifest to be of type 'string'")
end

-- The UTF-8 encoded text of the manifest file.
function M.Manifest(str)
	asserts.AssertManifest(str)
	return str
end

function asserts.AssertstateOrProvince(str)
	assert(str)
	assert(type(str) == "string", "Expected stateOrProvince to be of type 'string'")
end

-- Specifies the name of your state or your province for the return address.
function M.stateOrProvince(str)
	asserts.AssertstateOrProvince(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- The human-readable description of a particular error.
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertCarrier(str)
	assert(str)
	assert(type(str) == "string", "Expected Carrier to be of type 'string'")
end

-- Name of the shipping company. This value is included when the LocationCode is "Returned".
function M.Carrier(str)
	asserts.AssertCarrier(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

-- Specifies the JOBID to start after when listing the jobs created with your account. AWS Import/Export lists your jobs in reverse chronological order. See MaxJobs.
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertLocationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationCode to be of type 'string'")
end

-- A token representing the location of the storage device, such as "AtAWS".
function M.LocationCode(str)
	asserts.AssertLocationCode(str)
	return str
end

function asserts.AssertMaxJobs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxJobs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxJobs(integer)
	asserts.AssertMaxJobs(integer)
	return integer
end

function asserts.AssertErrorCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCount(integer)
	asserts.AssertErrorCount(integer)
	return integer
end

function asserts.AssertIsCanceled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsCanceled to be of type 'boolean'")
end

function M.IsCanceled(boolean)
	asserts.AssertIsCanceled(boolean)
	return boolean
end

function asserts.AssertSuccess(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Success to be of type 'boolean'")
end

function M.Success(boolean)
	asserts.AssertSuccess(boolean)
	return boolean
end

function asserts.AssertValidateOnly(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ValidateOnly to be of type 'boolean'")
end

function M.ValidateOnly(boolean)
	asserts.AssertValidateOnly(boolean)
	return boolean
end

function asserts.AssertIsTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsTruncated to be of type 'boolean'")
end

function M.IsTruncated(boolean)
	asserts.AssertIsTruncated(boolean)
	return boolean
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertJobIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.JobIdList(list)
	asserts.AssertJobIdList(list)
	return list
end

function asserts.AssertArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArtifact(v)
	end
end

-- A collection of artifacts.
-- List of Artifact objects
function M.ArtifactList(list)
	asserts.AssertArtifactList(list)
	return list
end

function asserts.AssertJobsList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

-- A list container for Jobs returned by the ListJobs operation.
-- List of Job objects
function M.JobsList(list)
	asserts.AssertJobsList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "importexport.amazonaws.com"
		end
	end
	local ss = { "importexport" }
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
--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsInput, cb)
	assert(ListJobsInput, "You must provide a ListJobsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}
	for header,value in pairs(ListJobsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=ListJobs", ListJobsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJob asynchronously, invoking a callback when done
-- @param UpdateJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobAsync(UpdateJobInput, cb)
	assert(UpdateJobInput, "You must provide a UpdateJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateJob",
	}
	for header,value in pairs(UpdateJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=UpdateJob", UpdateJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobSync(UpdateJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobAsync(UpdateJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
-- @param CreateJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobAsync(CreateJobInput, cb)
	assert(CreateJobInput, "You must provide a CreateJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateJob",
	}
	for header,value in pairs(CreateJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=CreateJob", CreateJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobSync(CreateJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(CreateJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStatus asynchronously, invoking a callback when done
-- @param GetStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStatusAsync(GetStatusInput, cb)
	assert(GetStatusInput, "You must provide a GetStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStatus",
	}
	for header,value in pairs(GetStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=GetStatus", GetStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetStatusSync(GetStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStatusAsync(GetStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
-- @param CancelJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelJobAsync(CancelJobInput, cb)
	assert(CancelJobInput, "You must provide a CancelJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}
	for header,value in pairs(CancelJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=CancelJob", CancelJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.CancelJobSync(CancelJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(CancelJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetShippingLabel asynchronously, invoking a callback when done
-- @param GetShippingLabelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetShippingLabelAsync(GetShippingLabelInput, cb)
	assert(GetShippingLabelInput, "You must provide a GetShippingLabelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetShippingLabel",
	}
	for header,value in pairs(GetShippingLabelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/?Operation=GetShippingLabel", GetShippingLabelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetShippingLabel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetShippingLabelInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetShippingLabelSync(GetShippingLabelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetShippingLabelAsync(GetShippingLabelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
