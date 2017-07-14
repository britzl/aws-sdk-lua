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

local NoSuchBucketException_keys = { "message" = true, nil }

function M.AssertNoSuchBucketException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucketException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchBucketException_keys[k], "NoSuchBucketException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucketException
-- The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
-- @param message [ErrorMessage] The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
function M.NoSuchBucketException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchBucketException")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchBucketException(t)
	return t
end

local InvalidCustomsException_keys = { "message" = true, nil }

function M.AssertInvalidCustomsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCustomsException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCustomsException_keys[k], "InvalidCustomsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCustomsException
-- One or more customs parameters was invalid. Please correct and resubmit.
-- @param message [ErrorMessage] One or more customs parameters was invalid. Please correct and resubmit.
function M.InvalidCustomsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCustomsException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidCustomsException(t)
	return t
end

local MissingParameterException_keys = { "message" = true, nil }

function M.AssertMissingParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameterException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MissingParameterException_keys[k], "MissingParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameterException
-- One or more required parameters was missing from the request.
-- @param message [ErrorMessage] One or more required parameters was missing from the request.
function M.MissingParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertMissingParameterException(t)
	return t
end

local UnableToUpdateJobIdException_keys = { "message" = true, nil }

function M.AssertUnableToUpdateJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToUpdateJobIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnableToUpdateJobIdException_keys[k], "UnableToUpdateJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToUpdateJobIdException
-- AWS Import/Export cannot update the job
-- @param message [ErrorMessage] AWS Import/Export cannot update the job
function M.UnableToUpdateJobIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnableToUpdateJobIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnableToUpdateJobIdException(t)
	return t
end

local CancelJobInput_keys = { "APIVersion" = true, "JobId" = true, nil }

function M.AssertCancelJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(CancelJobInput_keys[k], "CancelJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobInput
-- Input structure for the CancelJob operation.
-- @param APIVersion [APIVersion] Input structure for the CancelJob operation.
-- @param JobId [JobId] Input structure for the CancelJob operation.
-- Required parameter: JobId
function M.CancelJobInput(APIVersion, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobInput")
	local t = { 
		["APIVersion"] = APIVersion,
		["JobId"] = JobId,
	}
	M.AssertCancelJobInput(t)
	return t
end

local InvalidFileSystemException_keys = { "message" = true, nil }

function M.AssertInvalidFileSystemException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFileSystemException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFileSystemException_keys[k], "InvalidFileSystemException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFileSystemException
-- File system specified in export manifest is invalid.
-- @param message [ErrorMessage] File system specified in export manifest is invalid.
function M.InvalidFileSystemException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFileSystemException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidFileSystemException(t)
	return t
end

local ExpiredJobIdException_keys = { "message" = true, nil }

function M.AssertExpiredJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredJobIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredJobIdException_keys[k], "ExpiredJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredJobIdException
-- Indicates that the specified job has expired out of the system.
-- @param message [ErrorMessage] Indicates that the specified job has expired out of the system.
function M.ExpiredJobIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredJobIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredJobIdException(t)
	return t
end

local UnableToCancelJobIdException_keys = { "message" = true, nil }

function M.AssertUnableToCancelJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToCancelJobIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnableToCancelJobIdException_keys[k], "UnableToCancelJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToCancelJobIdException
-- AWS Import/Export cannot cancel the job
-- @param message [ErrorMessage] AWS Import/Export cannot cancel the job
function M.UnableToCancelJobIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnableToCancelJobIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnableToCancelJobIdException(t)
	return t
end

local GetShippingLabelInput_keys = { "city" = true, "street3" = true, "name" = true, "country" = true, "company" = true, "jobIds" = true, "APIVersion" = true, "phoneNumber" = true, "street1" = true, "postalCode" = true, "stateOrProvince" = true, "street2" = true, nil }

function M.AssertGetShippingLabelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShippingLabelInput to be of type 'table'")
	assert(struct["jobIds"], "Expected key jobIds to exist in table")
	if struct["city"] then M.Assertcity(struct["city"]) end
	if struct["street3"] then M.Assertstreet3(struct["street3"]) end
	if struct["name"] then M.Assertname(struct["name"]) end
	if struct["country"] then M.Assertcountry(struct["country"]) end
	if struct["company"] then M.Assertcompany(struct["company"]) end
	if struct["jobIds"] then M.AssertJobIdList(struct["jobIds"]) end
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	if struct["phoneNumber"] then M.AssertphoneNumber(struct["phoneNumber"]) end
	if struct["street1"] then M.Assertstreet1(struct["street1"]) end
	if struct["postalCode"] then M.AssertpostalCode(struct["postalCode"]) end
	if struct["stateOrProvince"] then M.AssertstateOrProvince(struct["stateOrProvince"]) end
	if struct["street2"] then M.Assertstreet2(struct["street2"]) end
	for k,_ in pairs(struct) do
		assert(GetShippingLabelInput_keys[k], "GetShippingLabelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShippingLabelInput
--  
-- @param city [city]  
-- @param street3 [street3]  
-- @param name [name]  
-- @param country [country]  
-- @param company [company]  
-- @param jobIds [JobIdList]  
-- @param APIVersion [APIVersion]  
-- @param phoneNumber [phoneNumber]  
-- @param street1 [street1]  
-- @param postalCode [postalCode]  
-- @param stateOrProvince [stateOrProvince]  
-- @param street2 [street2]  
-- Required parameter: jobIds
function M.GetShippingLabelInput(city, street3, name, country, company, jobIds, APIVersion, phoneNumber, street1, postalCode, stateOrProvince, street2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShippingLabelInput")
	local t = { 
		["city"] = city,
		["street3"] = street3,
		["name"] = name,
		["country"] = country,
		["company"] = company,
		["jobIds"] = jobIds,
		["APIVersion"] = APIVersion,
		["phoneNumber"] = phoneNumber,
		["street1"] = street1,
		["postalCode"] = postalCode,
		["stateOrProvince"] = stateOrProvince,
		["street2"] = street2,
	}
	M.AssertGetShippingLabelInput(t)
	return t
end

local GetStatusInput_keys = { "APIVersion" = true, "JobId" = true, nil }

function M.AssertGetStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStatusInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(GetStatusInput_keys[k], "GetStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStatusInput
-- Input structure for the GetStatus operation.
-- @param APIVersion [APIVersion] Input structure for the GetStatus operation.
-- @param JobId [JobId] Input structure for the GetStatus operation.
-- Required parameter: JobId
function M.GetStatusInput(APIVersion, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStatusInput")
	local t = { 
		["APIVersion"] = APIVersion,
		["JobId"] = JobId,
	}
	M.AssertGetStatusInput(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- One or more parameters had an invalid value.
-- @param message [ErrorMessage] One or more parameters had an invalid value.
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local InvalidAccessKeyIdException_keys = { "message" = true, nil }

function M.AssertInvalidAccessKeyIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAccessKeyIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAccessKeyIdException_keys[k], "InvalidAccessKeyIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAccessKeyIdException
-- The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
-- @param message [ErrorMessage] The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
function M.InvalidAccessKeyIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAccessKeyIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAccessKeyIdException(t)
	return t
end

local Artifact_keys = { "URL" = true, "Description" = true, nil }

function M.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["URL"] then M.AssertURL(struct["URL"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(Artifact_keys[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- A discrete item that contains the description and URL of an artifact (such as a PDF).
-- @param URL [URL] A discrete item that contains the description and URL of an artifact (such as a PDF).
-- @param Description [Description] A discrete item that contains the description and URL of an artifact (such as a PDF).
function M.Artifact(URL, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Artifact")
	local t = { 
		["URL"] = URL,
		["Description"] = Description,
	}
	M.AssertArtifact(t)
	return t
end

local InvalidJobIdException_keys = { "message" = true, nil }

function M.AssertInvalidJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidJobIdException_keys[k], "InvalidJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobIdException
-- The JOBID was missing, not found, or not associated with the AWS account.
-- @param message [ErrorMessage] The JOBID was missing, not found, or not associated with the AWS account.
function M.InvalidJobIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidJobIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidJobIdException(t)
	return t
end

local CreateJobQuotaExceededException_keys = { "message" = true, nil }

function M.AssertCreateJobQuotaExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQuotaExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobQuotaExceededException_keys[k], "CreateJobQuotaExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQuotaExceededException
-- Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
-- @param message [ErrorMessage] Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
function M.CreateJobQuotaExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobQuotaExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertCreateJobQuotaExceededException(t)
	return t
end

local CreateJobOutput_keys = { "ArtifactList" = true, "WarningMessage" = true, "SignatureFileContents" = true, "Signature" = true, "JobId" = true, "JobType" = true, nil }

function M.AssertCreateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobOutput to be of type 'table'")
	if struct["ArtifactList"] then M.AssertArtifactList(struct["ArtifactList"]) end
	if struct["WarningMessage"] then M.AssertWarningMessage(struct["WarningMessage"]) end
	if struct["SignatureFileContents"] then M.AssertSignatureFileContents(struct["SignatureFileContents"]) end
	if struct["Signature"] then M.AssertSignature(struct["Signature"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobOutput_keys[k], "CreateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobOutput
-- Output structure for the CreateJob operation.
-- @param ArtifactList [ArtifactList] Output structure for the CreateJob operation.
-- @param WarningMessage [WarningMessage] Output structure for the CreateJob operation.
-- @param SignatureFileContents [SignatureFileContents] Output structure for the CreateJob operation.
-- @param Signature [Signature] Output structure for the CreateJob operation.
-- @param JobId [JobId] Output structure for the CreateJob operation.
-- @param JobType [JobType] Output structure for the CreateJob operation.
function M.CreateJobOutput(ArtifactList, WarningMessage, SignatureFileContents, Signature, JobId, JobType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobOutput")
	local t = { 
		["ArtifactList"] = ArtifactList,
		["WarningMessage"] = WarningMessage,
		["SignatureFileContents"] = SignatureFileContents,
		["Signature"] = Signature,
		["JobId"] = JobId,
		["JobType"] = JobType,
	}
	M.AssertCreateJobOutput(t)
	return t
end

local Job_keys = { "CreationDate" = true, "IsCanceled" = true, "JobType" = true, "JobId" = true, nil }

function M.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["CreationDate"] then M.AssertCreationDate(struct["CreationDate"]) end
	if struct["IsCanceled"] then M.AssertIsCanceled(struct["IsCanceled"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(Job_keys[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- Representation of a job returned by the ListJobs operation.
-- @param CreationDate [CreationDate] Representation of a job returned by the ListJobs operation.
-- @param IsCanceled [IsCanceled] Representation of a job returned by the ListJobs operation.
-- @param JobType [JobType] Representation of a job returned by the ListJobs operation.
-- @param JobId [JobId] Representation of a job returned by the ListJobs operation.
function M.Job(CreationDate, IsCanceled, JobType, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Job")
	local t = { 
		["CreationDate"] = CreationDate,
		["IsCanceled"] = IsCanceled,
		["JobType"] = JobType,
		["JobId"] = JobId,
	}
	M.AssertJob(t)
	return t
end

local CanceledJobIdException_keys = { "message" = true, nil }

function M.AssertCanceledJobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CanceledJobIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CanceledJobIdException_keys[k], "CanceledJobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CanceledJobIdException
-- The specified job ID has been canceled and is no longer valid.
-- @param message [ErrorMessage] The specified job ID has been canceled and is no longer valid.
function M.CanceledJobIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CanceledJobIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertCanceledJobIdException(t)
	return t
end

local BucketPermissionException_keys = { "message" = true, nil }

function M.AssertBucketPermissionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketPermissionException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(BucketPermissionException_keys[k], "BucketPermissionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketPermissionException
-- The account specified does not have the appropriate bucket permissions.
-- @param message [ErrorMessage] The account specified does not have the appropriate bucket permissions.
function M.BucketPermissionException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketPermissionException")
	local t = { 
		["message"] = message,
	}
	M.AssertBucketPermissionException(t)
	return t
end

local MissingCustomsException_keys = { "message" = true, nil }

function M.AssertMissingCustomsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingCustomsException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MissingCustomsException_keys[k], "MissingCustomsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingCustomsException
-- One or more required customs parameters was missing from the manifest.
-- @param message [ErrorMessage] One or more required customs parameters was missing from the manifest.
function M.MissingCustomsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingCustomsException")
	local t = { 
		["message"] = message,
	}
	M.AssertMissingCustomsException(t)
	return t
end

local MultipleRegionsException_keys = { "message" = true, nil }

function M.AssertMultipleRegionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipleRegionsException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MultipleRegionsException_keys[k], "MultipleRegionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipleRegionsException
-- Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
-- @param message [ErrorMessage] Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
function M.MultipleRegionsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MultipleRegionsException")
	local t = { 
		["message"] = message,
	}
	M.AssertMultipleRegionsException(t)
	return t
end

local ListJobsOutput_keys = { "Jobs" = true, "IsTruncated" = true, nil }

function M.AssertListJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsOutput to be of type 'table'")
	if struct["Jobs"] then M.AssertJobsList(struct["Jobs"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsOutput_keys[k], "ListJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsOutput
-- Output structure for the ListJobs operation.
-- @param Jobs [JobsList] Output structure for the ListJobs operation.
-- @param IsTruncated [IsTruncated] Output structure for the ListJobs operation.
function M.ListJobsOutput(Jobs, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsOutput")
	local t = { 
		["Jobs"] = Jobs,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListJobsOutput(t)
	return t
end

local UpdateJobOutput_keys = { "ArtifactList" = true, "Success" = true, "WarningMessage" = true, nil }

function M.AssertUpdateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobOutput to be of type 'table'")
	if struct["ArtifactList"] then M.AssertArtifactList(struct["ArtifactList"]) end
	if struct["Success"] then M.AssertSuccess(struct["Success"]) end
	if struct["WarningMessage"] then M.AssertWarningMessage(struct["WarningMessage"]) end
	for k,_ in pairs(struct) do
		assert(UpdateJobOutput_keys[k], "UpdateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobOutput
-- Output structure for the UpateJob operation.
-- @param ArtifactList [ArtifactList] Output structure for the UpateJob operation.
-- @param Success [Success] Output structure for the UpateJob operation.
-- @param WarningMessage [WarningMessage] Output structure for the UpateJob operation.
function M.UpdateJobOutput(ArtifactList, Success, WarningMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobOutput")
	local t = { 
		["ArtifactList"] = ArtifactList,
		["Success"] = Success,
		["WarningMessage"] = WarningMessage,
	}
	M.AssertUpdateJobOutput(t)
	return t
end

local CreateJobInput_keys = { "ManifestAddendum" = true, "ValidateOnly" = true, "APIVersion" = true, "JobType" = true, "Manifest" = true, nil }

function M.AssertCreateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobInput to be of type 'table'")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["Manifest"], "Expected key Manifest to exist in table")
	assert(struct["ValidateOnly"], "Expected key ValidateOnly to exist in table")
	if struct["ManifestAddendum"] then M.AssertManifestAddendum(struct["ManifestAddendum"]) end
	if struct["ValidateOnly"] then M.AssertValidateOnly(struct["ValidateOnly"]) end
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["Manifest"] then M.AssertManifest(struct["Manifest"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobInput_keys[k], "CreateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobInput
-- Input structure for the CreateJob operation.
-- @param ManifestAddendum [ManifestAddendum] Input structure for the CreateJob operation.
-- @param ValidateOnly [ValidateOnly] Input structure for the CreateJob operation.
-- @param APIVersion [APIVersion] Input structure for the CreateJob operation.
-- @param JobType [JobType] Input structure for the CreateJob operation.
-- @param Manifest [Manifest] Input structure for the CreateJob operation.
-- Required parameter: JobType
-- Required parameter: Manifest
-- Required parameter: ValidateOnly
function M.CreateJobInput(ManifestAddendum, ValidateOnly, APIVersion, JobType, Manifest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobInput")
	local t = { 
		["ManifestAddendum"] = ManifestAddendum,
		["ValidateOnly"] = ValidateOnly,
		["APIVersion"] = APIVersion,
		["JobType"] = JobType,
		["Manifest"] = Manifest,
	}
	M.AssertCreateJobInput(t)
	return t
end

local CancelJobOutput_keys = { "Success" = true, nil }

function M.AssertCancelJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobOutput to be of type 'table'")
	if struct["Success"] then M.AssertSuccess(struct["Success"]) end
	for k,_ in pairs(struct) do
		assert(CancelJobOutput_keys[k], "CancelJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobOutput
-- Output structure for the CancelJob operation.
-- @param Success [Success] Output structure for the CancelJob operation.
function M.CancelJobOutput(Success, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobOutput")
	local t = { 
		["Success"] = Success,
	}
	M.AssertCancelJobOutput(t)
	return t
end

local GetShippingLabelOutput_keys = { "ShippingLabelURL" = true, "Warning" = true, nil }

function M.AssertGetShippingLabelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShippingLabelOutput to be of type 'table'")
	if struct["ShippingLabelURL"] then M.AssertGenericString(struct["ShippingLabelURL"]) end
	if struct["Warning"] then M.AssertGenericString(struct["Warning"]) end
	for k,_ in pairs(struct) do
		assert(GetShippingLabelOutput_keys[k], "GetShippingLabelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShippingLabelOutput
--  
-- @param ShippingLabelURL [GenericString]  
-- @param Warning [GenericString]  
function M.GetShippingLabelOutput(ShippingLabelURL, Warning, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShippingLabelOutput")
	local t = { 
		["ShippingLabelURL"] = ShippingLabelURL,
		["Warning"] = Warning,
	}
	M.AssertGetShippingLabelOutput(t)
	return t
end

local MalformedManifestException_keys = { "message" = true, nil }

function M.AssertMalformedManifestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedManifestException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedManifestException_keys[k], "MalformedManifestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedManifestException
-- Your manifest is not well-formed.
-- @param message [ErrorMessage] Your manifest is not well-formed.
function M.MalformedManifestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedManifestException")
	local t = { 
		["message"] = message,
	}
	M.AssertMalformedManifestException(t)
	return t
end

local MissingManifestFieldException_keys = { "message" = true, nil }

function M.AssertMissingManifestFieldException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingManifestFieldException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MissingManifestFieldException_keys[k], "MissingManifestFieldException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingManifestFieldException
-- One or more required fields were missing from the manifest file. Please correct and resubmit.
-- @param message [ErrorMessage] One or more required fields were missing from the manifest file. Please correct and resubmit.
function M.MissingManifestFieldException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingManifestFieldException")
	local t = { 
		["message"] = message,
	}
	M.AssertMissingManifestFieldException(t)
	return t
end

local InvalidVersionException_keys = { "message" = true, nil }

function M.AssertInvalidVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVersionException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidVersionException_keys[k], "InvalidVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVersionException
-- The client tool version is invalid.
-- @param message [ErrorMessage] The client tool version is invalid.
function M.InvalidVersionException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVersionException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidVersionException(t)
	return t
end

local InvalidAddressException_keys = { "message" = true, nil }

function M.AssertInvalidAddressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAddressException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAddressException_keys[k], "InvalidAddressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAddressException
-- The address specified in the manifest is invalid.
-- @param message [ErrorMessage] The address specified in the manifest is invalid.
function M.InvalidAddressException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAddressException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAddressException(t)
	return t
end

local ListJobsInput_keys = { "Marker" = true, "MaxJobs" = true, "APIVersion" = true, nil }

function M.AssertListJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["MaxJobs"] then M.AssertMaxJobs(struct["MaxJobs"]) end
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsInput_keys[k], "ListJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsInput
-- Input structure for the ListJobs operation.
-- @param Marker [Marker] Input structure for the ListJobs operation.
-- @param MaxJobs [MaxJobs] Input structure for the ListJobs operation.
-- @param APIVersion [APIVersion] Input structure for the ListJobs operation.
function M.ListJobsInput(Marker, MaxJobs, APIVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsInput")
	local t = { 
		["Marker"] = Marker,
		["MaxJobs"] = MaxJobs,
		["APIVersion"] = APIVersion,
	}
	M.AssertListJobsInput(t)
	return t
end

local GetStatusOutput_keys = { "ProgressMessage" = true, "ProgressCode" = true, "CreationDate" = true, "LogBucket" = true, "ArtifactList" = true, "LocationMessage" = true, "CurrentManifest" = true, "JobId" = true, "Carrier" = true, "JobType" = true, "Signature" = true, "TrackingNumber" = true, "SignatureFileContents" = true, "ErrorCount" = true, "LocationCode" = true, "LogKey" = true, nil }

function M.AssertGetStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStatusOutput to be of type 'table'")
	if struct["ProgressMessage"] then M.AssertProgressMessage(struct["ProgressMessage"]) end
	if struct["ProgressCode"] then M.AssertProgressCode(struct["ProgressCode"]) end
	if struct["CreationDate"] then M.AssertCreationDate(struct["CreationDate"]) end
	if struct["LogBucket"] then M.AssertLogBucket(struct["LogBucket"]) end
	if struct["ArtifactList"] then M.AssertArtifactList(struct["ArtifactList"]) end
	if struct["LocationMessage"] then M.AssertLocationMessage(struct["LocationMessage"]) end
	if struct["CurrentManifest"] then M.AssertCurrentManifest(struct["CurrentManifest"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	if struct["Carrier"] then M.AssertCarrier(struct["Carrier"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["Signature"] then M.AssertSignature(struct["Signature"]) end
	if struct["TrackingNumber"] then M.AssertTrackingNumber(struct["TrackingNumber"]) end
	if struct["SignatureFileContents"] then M.AssertSignature(struct["SignatureFileContents"]) end
	if struct["ErrorCount"] then M.AssertErrorCount(struct["ErrorCount"]) end
	if struct["LocationCode"] then M.AssertLocationCode(struct["LocationCode"]) end
	if struct["LogKey"] then M.AssertLogKey(struct["LogKey"]) end
	for k,_ in pairs(struct) do
		assert(GetStatusOutput_keys[k], "GetStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStatusOutput
-- Output structure for the GetStatus operation.
-- @param ProgressMessage [ProgressMessage] Output structure for the GetStatus operation.
-- @param ProgressCode [ProgressCode] Output structure for the GetStatus operation.
-- @param CreationDate [CreationDate] Output structure for the GetStatus operation.
-- @param LogBucket [LogBucket] Output structure for the GetStatus operation.
-- @param ArtifactList [ArtifactList] Output structure for the GetStatus operation.
-- @param LocationMessage [LocationMessage] Output structure for the GetStatus operation.
-- @param CurrentManifest [CurrentManifest] Output structure for the GetStatus operation.
-- @param JobId [JobId] Output structure for the GetStatus operation.
-- @param Carrier [Carrier] Output structure for the GetStatus operation.
-- @param JobType [JobType] Output structure for the GetStatus operation.
-- @param Signature [Signature] Output structure for the GetStatus operation.
-- @param TrackingNumber [TrackingNumber] Output structure for the GetStatus operation.
-- @param SignatureFileContents [Signature] Output structure for the GetStatus operation.
-- @param ErrorCount [ErrorCount] Output structure for the GetStatus operation.
-- @param LocationCode [LocationCode] Output structure for the GetStatus operation.
-- @param LogKey [LogKey] Output structure for the GetStatus operation.
function M.GetStatusOutput(ProgressMessage, ProgressCode, CreationDate, LogBucket, ArtifactList, LocationMessage, CurrentManifest, JobId, Carrier, JobType, Signature, TrackingNumber, SignatureFileContents, ErrorCount, LocationCode, LogKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStatusOutput")
	local t = { 
		["ProgressMessage"] = ProgressMessage,
		["ProgressCode"] = ProgressCode,
		["CreationDate"] = CreationDate,
		["LogBucket"] = LogBucket,
		["ArtifactList"] = ArtifactList,
		["LocationMessage"] = LocationMessage,
		["CurrentManifest"] = CurrentManifest,
		["JobId"] = JobId,
		["Carrier"] = Carrier,
		["JobType"] = JobType,
		["Signature"] = Signature,
		["TrackingNumber"] = TrackingNumber,
		["SignatureFileContents"] = SignatureFileContents,
		["ErrorCount"] = ErrorCount,
		["LocationCode"] = LocationCode,
		["LogKey"] = LogKey,
	}
	M.AssertGetStatusOutput(t)
	return t
end

local InvalidManifestFieldException_keys = { "message" = true, nil }

function M.AssertInvalidManifestFieldException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidManifestFieldException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidManifestFieldException_keys[k], "InvalidManifestFieldException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidManifestFieldException
-- One or more manifest fields was invalid. Please correct and resubmit.
-- @param message [ErrorMessage] One or more manifest fields was invalid. Please correct and resubmit.
function M.InvalidManifestFieldException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidManifestFieldException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidManifestFieldException(t)
	return t
end

local UpdateJobInput_keys = { "Manifest" = true, "ValidateOnly" = true, "APIVersion" = true, "JobType" = true, "JobId" = true, nil }

function M.AssertUpdateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobInput to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	assert(struct["Manifest"], "Expected key Manifest to exist in table")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["ValidateOnly"], "Expected key ValidateOnly to exist in table")
	if struct["Manifest"] then M.AssertManifest(struct["Manifest"]) end
	if struct["ValidateOnly"] then M.AssertValidateOnly(struct["ValidateOnly"]) end
	if struct["APIVersion"] then M.AssertAPIVersion(struct["APIVersion"]) end
	if struct["JobType"] then M.AssertJobType(struct["JobType"]) end
	if struct["JobId"] then M.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateJobInput_keys[k], "UpdateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobInput
-- Input structure for the UpateJob operation.
-- @param Manifest [Manifest] Input structure for the UpateJob operation.
-- @param ValidateOnly [ValidateOnly] Input structure for the UpateJob operation.
-- @param APIVersion [APIVersion] Input structure for the UpateJob operation.
-- @param JobType [JobType] Input structure for the UpateJob operation.
-- @param JobId [JobId] Input structure for the UpateJob operation.
-- Required parameter: JobId
-- Required parameter: Manifest
-- Required parameter: JobType
-- Required parameter: ValidateOnly
function M.UpdateJobInput(Manifest, ValidateOnly, APIVersion, JobType, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobInput")
	local t = { 
		["Manifest"] = Manifest,
		["ValidateOnly"] = ValidateOnly,
		["APIVersion"] = APIVersion,
		["JobType"] = JobType,
		["JobId"] = JobId,
	}
	M.AssertUpdateJobInput(t)
	return t
end

function M.Assertstreet2(str)
	assert(str)
	assert(type(str) == "string", "Expected street2 to be of type 'string'")
end

-- Specifies the optional second part of the street address for the return address, for example Suite 100.
function M.street2(str)
	M.Assertstreet2(str)
	return str
end

function M.AssertLocationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationMessage to be of type 'string'")
end

-- A more human readable form of the physical location of the storage device.
function M.LocationMessage(str)
	M.AssertLocationMessage(str)
	return str
end

function M.AssertAPIVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected APIVersion to be of type 'string'")
end

-- Specifies the version of the client tool.
function M.APIVersion(str)
	M.AssertAPIVersion(str)
	return str
end

function M.Assertcountry(str)
	assert(str)
	assert(type(str) == "string", "Expected country to be of type 'string'")
end

-- Specifies the name of your country for the return address.
function M.country(str)
	M.Assertcountry(str)
	return str
end

function M.AssertTrackingNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected TrackingNumber to be of type 'string'")
end

-- The shipping tracking number assigned by AWS Import/Export to the storage device when it's returned to you. We return this value when the LocationCode is "Returned".
function M.TrackingNumber(str)
	M.AssertTrackingNumber(str)
	return str
end

function M.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
end

-- A unique identifier which refers to a particular job.
function M.JobId(str)
	M.AssertJobId(str)
	return str
end

function M.AssertProgressCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ProgressCode to be of type 'string'")
end

-- A token representing the state of the job, such as "Started".
function M.ProgressCode(str)
	M.AssertProgressCode(str)
	return str
end

function M.AssertProgressMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ProgressMessage to be of type 'string'")
end

-- A more human readable form of the job status.
function M.ProgressMessage(str)
	M.AssertProgressMessage(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

-- The associated description for this object.
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertWarningMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected WarningMessage to be of type 'string'")
end

-- An optional message notifying you of non-fatal issues with the job, such as use of an incompatible Amazon S3 bucket name.
function M.WarningMessage(str)
	M.AssertWarningMessage(str)
	return str
end

function M.AssertphoneNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected phoneNumber to be of type 'string'")
end

-- Specifies the phone number of the person responsible for shipping this package.
function M.phoneNumber(str)
	M.AssertphoneNumber(str)
	return str
end

function M.Assertstreet1(str)
	assert(str)
	assert(type(str) == "string", "Expected street1 to be of type 'string'")
end

-- Specifies the first part of the street address for the return address, for example 1234 Main Street.
function M.street1(str)
	M.Assertstreet1(str)
	return str
end

function M.AssertpostalCode(str)
	assert(str)
	assert(type(str) == "string", "Expected postalCode to be of type 'string'")
end

-- Specifies the postal code for the return address.
function M.postalCode(str)
	M.AssertpostalCode(str)
	return str
end

function M.AssertJobType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobType to be of type 'string'")
end

-- Specifies whether the job to initiate is an import or export job.
function M.JobType(str)
	M.AssertJobType(str)
	return str
end

function M.AssertLogKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LogKey to be of type 'string'")
end

-- The key where the user logs were stored.
function M.LogKey(str)
	M.AssertLogKey(str)
	return str
end

function M.AssertSignatureFileContents(str)
	assert(str)
	assert(type(str) == "string", "Expected SignatureFileContents to be of type 'string'")
end

-- The actual text of the SIGNATURE file to be written to disk.
function M.SignatureFileContents(str)
	M.AssertSignatureFileContents(str)
	return str
end

function M.AssertLogBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected LogBucket to be of type 'string'")
end

-- Amazon S3 bucket for user logs.
function M.LogBucket(str)
	M.AssertLogBucket(str)
	return str
end

function M.Assertcity(str)
	assert(str)
	assert(type(str) == "string", "Expected city to be of type 'string'")
end

-- Specifies the name of your city for the return address.
function M.city(str)
	M.Assertcity(str)
	return str
end

function M.AssertURL(str)
	assert(str)
	assert(type(str) == "string", "Expected URL to be of type 'string'")
end

-- The URL for a given Artifact.
function M.URL(str)
	M.AssertURL(str)
	return str
end

function M.AssertManifestAddendum(str)
	assert(str)
	assert(type(str) == "string", "Expected ManifestAddendum to be of type 'string'")
end

-- For internal use only.
function M.ManifestAddendum(str)
	M.AssertManifestAddendum(str)
	return str
end

function M.Assertcompany(str)
	assert(str)
	assert(type(str) == "string", "Expected company to be of type 'string'")
end

-- Specifies the name of the company that will ship this package.
function M.company(str)
	M.Assertcompany(str)
	return str
end

function M.Assertstreet3(str)
	assert(str)
	assert(type(str) == "string", "Expected street3 to be of type 'string'")
end

-- Specifies the optional third part of the street address for the return address, for example c/o Jane Doe.
function M.street3(str)
	M.Assertstreet3(str)
	return str
end

function M.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

--  
function M.GenericString(str)
	M.AssertGenericString(str)
	return str
end

function M.AssertCurrentManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrentManifest to be of type 'string'")
end

-- The last manifest submitted, which will be used to process the job.
function M.CurrentManifest(str)
	M.AssertCurrentManifest(str)
	return str
end

function M.AssertSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected Signature to be of type 'string'")
end

-- An encrypted code used to authenticate the request and response, for example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is you want to create the signature file yourself. Generally you should use the SignatureFileContents value.
function M.Signature(str)
	M.AssertSignature(str)
	return str
end

function M.Assertname(str)
	assert(str)
	assert(type(str) == "string", "Expected name to be of type 'string'")
end

-- Specifies the name of the person responsible for shipping this package.
function M.name(str)
	M.Assertname(str)
	return str
end

function M.AssertManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected Manifest to be of type 'string'")
end

-- The UTF-8 encoded text of the manifest file.
function M.Manifest(str)
	M.AssertManifest(str)
	return str
end

function M.AssertstateOrProvince(str)
	assert(str)
	assert(type(str) == "string", "Expected stateOrProvince to be of type 'string'")
end

-- Specifies the name of your state or your province for the return address.
function M.stateOrProvince(str)
	M.AssertstateOrProvince(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- The human-readable description of a particular error.
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertCarrier(str)
	assert(str)
	assert(type(str) == "string", "Expected Carrier to be of type 'string'")
end

-- Name of the shipping company. This value is included when the LocationCode is "Returned".
function M.Carrier(str)
	M.AssertCarrier(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

-- Specifies the JOBID to start after when listing the jobs created with your account. AWS Import/Export lists your jobs in reverse chronological order. See MaxJobs.
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertLocationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationCode to be of type 'string'")
end

-- A token representing the location of the storage device, such as "AtAWS".
function M.LocationCode(str)
	M.AssertLocationCode(str)
	return str
end

function M.AssertMaxJobs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxJobs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxJobs(integer)
	M.AssertMaxJobs(integer)
	return integer
end

function M.AssertErrorCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCount(integer)
	M.AssertErrorCount(integer)
	return integer
end

function M.AssertIsCanceled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsCanceled to be of type 'boolean'")
end

function M.IsCanceled(boolean)
	M.AssertIsCanceled(boolean)
	return boolean
end

function M.AssertSuccess(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Success to be of type 'boolean'")
end

function M.Success(boolean)
	M.AssertSuccess(boolean)
	return boolean
end

function M.AssertValidateOnly(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ValidateOnly to be of type 'boolean'")
end

function M.ValidateOnly(boolean)
	M.AssertValidateOnly(boolean)
	return boolean
end

function M.AssertIsTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsTruncated to be of type 'boolean'")
end

function M.IsTruncated(boolean)
	M.AssertIsTruncated(boolean)
	return boolean
end

function M.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	M.AssertCreationDate(timestamp)
	return timestamp
end

function M.AssertJobIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.JobIdList(list)
	M.AssertJobIdList(list)
	return list
end

function M.AssertArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArtifact(v)
	end
end

-- A collection of artifacts.
-- List of Artifact objects
function M.ArtifactList(list)
	M.AssertArtifactList(list)
	return list
end

function M.AssertJobsList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJob(v)
	end
end

-- A list container for Jobs returned by the ListJobs operation.
-- List of Job objects
function M.JobsList(list)
	M.AssertJobsList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListJobs
-- @param ListJobsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsAsync(ListJobsInput, cb)
	assert(ListJobsInput, "You must provide a ListJobsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=ListJobs", ListJobsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateJob
-- @param UpdateJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateJobAsync(UpdateJobInput, cb)
	assert(UpdateJobInput, "You must provide a UpdateJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=UpdateJob", UpdateJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateJob
-- @param CreateJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateJobAsync(CreateJobInput, cb)
	assert(CreateJobInput, "You must provide a CreateJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=CreateJob", CreateJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStatus
-- @param GetStatusInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetStatusAsync(GetStatusInput, cb)
	assert(GetStatusInput, "You must provide a GetStatusInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=GetStatus", GetStatusInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelJob
-- @param CancelJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelJobAsync(CancelJobInput, cb)
	assert(CancelJobInput, "You must provide a CancelJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=CancelJob", CancelJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetShippingLabel
-- @param GetShippingLabelInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetShippingLabelAsync(GetShippingLabelInput, cb)
	assert(GetShippingLabelInput, "You must provide a GetShippingLabelInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetShippingLabel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/?Operation=GetShippingLabel", GetShippingLabelInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
