--- GENERATED CODE - DO NOT MODIFY
-- AWSServerlessApplicationRepository (serverlessrepo-2017-09-08)

local M = {}

M.metadata = {
	api_version = "2017-09-08",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "serverlessrepo",
	service_abbreviation = "",
	service_full_name = "AWSServerlessApplicationRepository",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "serverlessrepo-2017-09-08",
}

local keys = {}
local asserts = {}

keys.CreateApplicationVersionResponse = { ["CreationTime"] = true, ["SourceCodeUrl"] = true, ["ParameterDefinitions"] = true, ["SemanticVersion"] = true, ["TemplateUrl"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertCreateApplicationVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationVersionResponse to be of type 'table'")
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["ParameterDefinitions"] then asserts.Assert__listOfParameterDefinition(struct["ParameterDefinitions"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationVersionResponse[k], "CreateApplicationVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * ParameterDefinitions [__listOfParameterDefinition] <p>An array of parameter types supported by the application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- * TemplateUrl [__string] <p>A link to the packaged AWS SAM template of your application.</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- @return CreateApplicationVersionResponse structure as a key-value pair table
function M.CreateApplicationVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateApplicationVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTime"] = args["CreationTime"],
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["ParameterDefinitions"] = args["ParameterDefinitions"],
		["SemanticVersion"] = args["SemanticVersion"],
		["TemplateUrl"] = args["TemplateUrl"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertCreateApplicationVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationRequest[k], "DeleteApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- Required key: ApplicationId
-- @return DeleteApplicationRequest structure as a key-value pair table
function M.DeleteApplicationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationsRequest = { ["NextToken"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListApplicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsRequest[k], "ListApplicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>A token to specify where to start paginating.</p>
-- * MaxItems [MaxItems] <p>The total number of items to return.</p>
-- @return ListApplicationsRequest structure as a key-value pair table
function M.ListApplicationsRequest(args)
	assert(args, "You must provide an argument table when creating ListApplicationsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListApplicationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BadRequestException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p>One of the parameters in the request is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>400</p>
-- * Message [__string] <p>One of the parameters in the request is invalid.</p>
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provide an argument table when creating BadRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationRequest = { ["ReadmeBody"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, nil }

function asserts.AssertUpdateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ReadmeBody"] then asserts.Assert__string(struct["ReadmeBody"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationRequest[k], "UpdateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadmeBody [__string] <p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- Required key: ApplicationId
-- @return UpdateApplicationRequest structure as a key-value pair table
function M.UpdateApplicationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadmeBody"] = args["ReadmeBody"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
	}
	asserts.AssertUpdateApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutApplicationPolicyRequest = { ["Statements"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertPutApplicationPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApplicationPolicyRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["Statements"], "Expected key Statements to exist in table")
	if struct["Statements"] then asserts.Assert__listOfApplicationPolicyStatement(struct["Statements"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutApplicationPolicyRequest[k], "PutApplicationPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApplicationPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statements [__listOfApplicationPolicyStatement] <p>An array of policy statements applied to the application.</p>
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- Required key: ApplicationId
-- Required key: Statements
-- @return PutApplicationPolicyRequest structure as a key-value pair table
function M.PutApplicationPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutApplicationPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Statements"] = args["Statements"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertPutApplicationPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Application = { ["SpdxLicenseId"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["CreationTime"] = true, ["Version"] = true, ["LicenseUrl"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Application to be of type 'table'")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Author"], "Expected key Author to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Application[k], "Application contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Application
-- <p>Details about the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpdxLicenseId [__string] <p>A valid identifier from https://spdx.org/licenses/.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * Version [Version] <p>Version information about the application.</p>
-- * LicenseUrl [__string] <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
-- Required key: Description
-- Required key: Author
-- Required key: ApplicationId
-- Required key: Name
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
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["CreationTime"] = args["CreationTime"],
		["Version"] = args["Version"],
		["LicenseUrl"] = args["LicenseUrl"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertApplication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCloudFormationChangeSetRequest = { ["StackName"] = true, ["ApplicationId"] = true, ["ParameterOverrides"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertCreateCloudFormationChangeSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFormationChangeSetRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.Assert__string(struct["StackName"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["ParameterOverrides"] then asserts.Assert__listOfParameterValue(struct["ParameterOverrides"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFormationChangeSetRequest[k], "CreateCloudFormationChangeSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFormationChangeSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [__string] <p>The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates
-- the change set by comparing this stack's information with the information that you submit, such as a modified
-- template or different parameter input values. </p><p>Constraints: Minimum length of 1.</p><p>Pattern: ([a-zA-Z][-a-zA-Z0-9]*)|(arn:\b(aws|aws-us-gov|aws-cn)\b:[-a-zA-Z0-9:/._+]*)</p>
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- * ParameterOverrides [__listOfParameterValue] <p>A list of parameter values for the parameters of the application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- Required key: ApplicationId
-- Required key: StackName
-- @return CreateCloudFormationChangeSetRequest structure as a key-value pair table
function M.CreateCloudFormationChangeSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateCloudFormationChangeSetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["ApplicationId"] = args["ApplicationId"],
		["ParameterOverrides"] = args["ParameterOverrides"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertCreateCloudFormationChangeSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerErrorException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerErrorException[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- <p>The AWS Serverless Application Repository service encountered an internal error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>500</p>
-- * Message [__string] <p>The AWS Serverless Application Repository service encountered an internal error.</p>
-- @return InternalServerErrorException structure as a key-value pair table
function M.InternalServerErrorException(args)
	assert(args, "You must provide an argument table when creating InternalServerErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VersionSummary = { ["CreationTime"] = true, ["SourceCodeUrl"] = true, ["ApplicationId"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertVersionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionSummary to be of type 'table'")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SemanticVersion"], "Expected key SemanticVersion to exist in table")
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionSummary[k], "VersionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionSummary
-- <p>An application version summary.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- Required key: CreationTime
-- Required key: ApplicationId
-- Required key: SemanticVersion
-- @return VersionSummary structure as a key-value pair table
function M.VersionSummary(args)
	assert(args, "You must provide an argument table when creating VersionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTime"] = args["CreationTime"],
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["ApplicationId"] = args["ApplicationId"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertVersionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationPolicyRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApplicationPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationPolicyRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationPolicyRequest[k], "GetApplicationPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- Required key: ApplicationId
-- @return GetApplicationPolicyRequest structure as a key-value pair table
function M.GetApplicationPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetApplicationPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApplicationPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationSummary = { ["SpdxLicenseId"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["CreationTime"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertApplicationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSummary to be of type 'table'")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Author"], "Expected key Author to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSummary[k], "ApplicationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSummary
-- <p>Summary of details about the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpdxLicenseId [__string] <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
-- Required key: Description
-- Required key: Author
-- Required key: ApplicationId
-- Required key: Name
-- @return ApplicationSummary structure as a key-value pair table
function M.ApplicationSummary(args)
	assert(args, "You must provide an argument table when creating ApplicationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["CreationTime"] = args["CreationTime"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertApplicationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationInput = { ["ReadmeBody"] = true, ["Description"] = true, ["Author"] = true, ["Labels"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, nil }

function asserts.AssertUpdateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationInput to be of type 'table'")
	if struct["ReadmeBody"] then asserts.Assert__string(struct["ReadmeBody"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationInput[k], "UpdateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationInput
-- <p>Update the application request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadmeBody [__string] <p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- @return UpdateApplicationInput structure as a key-value pair table
function M.UpdateApplicationInput(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadmeBody"] = args["ReadmeBody"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["Labels"] = args["Labels"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
	}
	asserts.AssertUpdateApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationPolicyStatement = { ["Principals"] = true, ["StatementId"] = true, ["Actions"] = true, nil }

function asserts.AssertApplicationPolicyStatement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationPolicyStatement to be of type 'table'")
	assert(struct["Principals"], "Expected key Principals to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["Principals"] then asserts.Assert__listOf__string(struct["Principals"]) end
	if struct["StatementId"] then asserts.Assert__string(struct["StatementId"]) end
	if struct["Actions"] then asserts.Assert__listOf__string(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationPolicyStatement[k], "ApplicationPolicyStatement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationPolicyStatement
-- <p>Policy statement applied to the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Principals [__listOf__string] <p>An AWS account ID, or * to make the application public.</p>
-- * StatementId [__string] <p>A unique ID for the statement.</p>
-- * Actions [__listOf__string] <p>See <a href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application Permissions</a> for the list of supported actions.</p>
-- Required key: Principals
-- Required key: Actions
-- @return ApplicationPolicyStatement structure as a key-value pair table
function M.ApplicationPolicyStatement(args)
	assert(args, "You must provide an argument table when creating ApplicationPolicyStatement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Principals"] = args["Principals"],
		["StatementId"] = args["StatementId"],
		["Actions"] = args["Actions"],
	}
	asserts.AssertApplicationPolicyStatement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationPage = { ["Applications"] = true, ["NextToken"] = true, nil }

function asserts.AssertApplicationPage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationPage to be of type 'table'")
	assert(struct["Applications"], "Expected key Applications to exist in table")
	if struct["Applications"] then asserts.Assert__listOfApplicationSummary(struct["Applications"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationPage[k], "ApplicationPage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationPage
-- <p>A list of application details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Applications [__listOfApplicationSummary] <p>An array of application summaries.</p>
-- * NextToken [__string] <p>The token to request the next page of results.</p>
-- Required key: Applications
-- @return ApplicationPage structure as a key-value pair table
function M.ApplicationPage(args)
	assert(args, "You must provide an argument table when creating ApplicationPage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Applications"] = args["Applications"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertApplicationPage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationInput = { ["ReadmeBody"] = true, ["SpdxLicenseId"] = true, ["Description"] = true, ["TemplateBody"] = true, ["Author"] = true, ["Labels"] = true, ["SourceCodeUrl"] = true, ["LicenseBody"] = true, ["LicenseUrl"] = true, ["SemanticVersion"] = true, ["ReadmeUrl"] = true, ["TemplateUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertCreateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationInput to be of type 'table'")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Author"], "Expected key Author to exist in table")
	if struct["ReadmeBody"] then asserts.Assert__string(struct["ReadmeBody"]) end
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["TemplateBody"] then asserts.Assert__string(struct["TemplateBody"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["LicenseBody"] then asserts.Assert__string(struct["LicenseBody"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationInput[k], "CreateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationInput
-- <p>Create an application request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadmeBody [__string] <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.</p>
-- * SpdxLicenseId [__string] <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * TemplateBody [__string] <p>The local raw packaged AWS SAM template file of your application.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * LicenseBody [__string] <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.</p>
-- * LicenseUrl [__string] <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- * ReadmeUrl [__string] <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.</p>
-- * TemplateUrl [__string] <p>A link to the S3 object cotaining the packaged AWS SAM template of your application.</p><p>Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
-- Required key: Description
-- Required key: Name
-- Required key: Author
-- @return CreateApplicationInput structure as a key-value pair table
function M.CreateApplicationInput(args)
	assert(args, "You must provide an argument table when creating CreateApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReadmeBody"] = args["ReadmeBody"],
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["TemplateBody"] = args["TemplateBody"],
		["Author"] = args["Author"],
		["Labels"] = args["Labels"],
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["LicenseBody"] = args["LicenseBody"],
		["LicenseUrl"] = args["LicenseUrl"],
		["SemanticVersion"] = args["SemanticVersion"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["TemplateUrl"] = args["TemplateUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationResponse = { ["SpdxLicenseId"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["CreationTime"] = true, ["Version"] = true, ["LicenseUrl"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResponse to be of type 'table'")
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationResponse[k], "UpdateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpdxLicenseId [__string] <p>A valid identifier from https://spdx.org/licenses/.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * Version [Version] <p>Version information about the application.</p>
-- * LicenseUrl [__string] <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
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
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["CreationTime"] = args["CreationTime"],
		["Version"] = args["Version"],
		["LicenseUrl"] = args["LicenseUrl"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationRequest = { ["ReadmeBody"] = true, ["SpdxLicenseId"] = true, ["Description"] = true, ["TemplateBody"] = true, ["Author"] = true, ["Labels"] = true, ["SourceCodeUrl"] = true, ["LicenseBody"] = true, ["LicenseUrl"] = true, ["SemanticVersion"] = true, ["ReadmeUrl"] = true, ["TemplateUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Author"], "Expected key Author to exist in table")
	if struct["ReadmeBody"] then asserts.Assert__string(struct["ReadmeBody"]) end
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["TemplateBody"] then asserts.Assert__string(struct["TemplateBody"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["LicenseBody"] then asserts.Assert__string(struct["LicenseBody"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationRequest[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReadmeBody [__string] <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.</p>
-- * SpdxLicenseId [__string] <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * TemplateBody [__string] <p>The local raw packaged AWS SAM template file of your application.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * LicenseBody [__string] <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
-- The file is of the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.</p>
-- * LicenseUrl [__string] <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>Note: Only one of licenseBody and licenseUrl can be specified, otherwise an error will result.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- * ReadmeUrl [__string] <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>Note: Only one of readmeBody and readmeUrl can be specified, otherwise an error will result.</p>
-- * TemplateUrl [__string] <p>A link to the S3 object cotaining the packaged AWS SAM template of your application.</p><p>Note: Only one of templateBody and templateUrl can be specified, otherwise an error will result.</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
-- Required key: Description
-- Required key: Name
-- Required key: Author
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
		["ReadmeBody"] = args["ReadmeBody"],
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["TemplateBody"] = args["TemplateBody"],
		["Author"] = args["Author"],
		["Labels"] = args["Labels"],
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["LicenseBody"] = args["LicenseBody"],
		["LicenseUrl"] = args["LicenseUrl"],
		["SemanticVersion"] = args["SemanticVersion"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["TemplateUrl"] = args["TemplateUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>404</p>
-- * Message [__string] <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParameterDefinition = { ["Type"] = true, ["Description"] = true, ["MinLength"] = true, ["DefaultValue"] = true, ["MaxValue"] = true, ["AllowedValues"] = true, ["AllowedPattern"] = true, ["NoEcho"] = true, ["MaxLength"] = true, ["ReferencedByResources"] = true, ["MinValue"] = true, ["ConstraintDescription"] = true, ["Name"] = true, nil }

function asserts.AssertParameterDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterDefinition to be of type 'table'")
	assert(struct["ReferencedByResources"], "Expected key ReferencedByResources to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["MinLength"] then asserts.Assert__integer(struct["MinLength"]) end
	if struct["DefaultValue"] then asserts.Assert__string(struct["DefaultValue"]) end
	if struct["MaxValue"] then asserts.Assert__integer(struct["MaxValue"]) end
	if struct["AllowedValues"] then asserts.Assert__listOf__string(struct["AllowedValues"]) end
	if struct["AllowedPattern"] then asserts.Assert__string(struct["AllowedPattern"]) end
	if struct["NoEcho"] then asserts.Assert__boolean(struct["NoEcho"]) end
	if struct["MaxLength"] then asserts.Assert__integer(struct["MaxLength"]) end
	if struct["ReferencedByResources"] then asserts.Assert__listOf__string(struct["ReferencedByResources"]) end
	if struct["MinValue"] then asserts.Assert__integer(struct["MinValue"]) end
	if struct["ConstraintDescription"] then asserts.Assert__string(struct["ConstraintDescription"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterDefinition[k], "ParameterDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterDefinition
-- <p>Parameters supported by the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [__string] <p>The type of the parameter.</p><p>Valid values: String | Number | List&lt;Number> | CommaDelimitedList
-- </p><p>
-- String: A literal string.</p><p>For example, users can specify "MyUserName".</p><p>
-- Number: An integer or float. AWS CloudFormation validates the parameter value as a number. However, when you use the
-- parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.</p><p>For example, users might specify "8888".</p><p>
-- List&lt;Number>: An array of integers or floats that are separated by commas. AWS CloudFormation validates the parameter value as numbers. However, when
-- you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.</p><p>For example, users might specify "80,20", and then Ref results in ["80","20"].</p><p>
-- CommaDelimitedList: An array of literal strings that are separated by commas. The total number of strings should be one more than the total number of commas.
-- Also, each member string is space-trimmed.</p><p>For example, users might specify "test,dev,prod", and then Ref results in ["test","dev","prod"].</p>
-- * Description [__string] <p>A string of up to 4,000 characters that describes the parameter.</p>
-- * MinLength [__integer] <p>An integer value that determines the smallest number of characters that you want to allow for String types.</p>
-- * DefaultValue [__string] <p>A value of the appropriate type for the template to use if no value is specified when a stack is created.
-- If you define constraints for the parameter, you must specify a value that adheres to those constraints.</p>
-- * MaxValue [__integer] <p>A numeric value that determines the largest numeric value that you want to allow for Number types.</p>
-- * AllowedValues [__listOf__string] <p>An array containing the list of values allowed for the parameter.</p>
-- * AllowedPattern [__string] <p>A regular expression that represents the patterns to allow for String types.</p>
-- * NoEcho [__boolean] <p>Whether to mask the parameter value whenever anyone makes a call that describes the stack. If you set the
-- value to true, the parameter value is masked with asterisks (*****).</p>
-- * MaxLength [__integer] <p>An integer value that determines the largest number of characters that you want to allow for String types.</p>
-- * ReferencedByResources [__listOf__string] <p>A list of AWS SAM resources that use this parameter.</p>
-- * MinValue [__integer] <p>A numeric value that determines the smallest numeric value that you want to allow for Number types.</p>
-- * ConstraintDescription [__string] <p>A string that explains a constraint when the constraint is violated. For example, without a constraint description,
-- a parameter that has an allowed pattern of [A-Za-z0-9]+ displays the following error message when the user
-- specifies an invalid value:</p><p>
-- Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+
-- </p><p>By adding a constraint description, such as "must contain only uppercase and lowercase letters and numbers," you can display
-- the following customized error message:</p><p>
-- Malformed input-Parameter MyParameter must contain only uppercase and lowercase letters and numbers.
-- </p>
-- * Name [__string] <p>The name of the parameter.</p>
-- Required key: ReferencedByResources
-- Required key: Name
-- @return ParameterDefinition structure as a key-value pair table
function M.ParameterDefinition(args)
	assert(args, "You must provide an argument table when creating ParameterDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Description"] = args["Description"],
		["MinLength"] = args["MinLength"],
		["DefaultValue"] = args["DefaultValue"],
		["MaxValue"] = args["MaxValue"],
		["AllowedValues"] = args["AllowedValues"],
		["AllowedPattern"] = args["AllowedPattern"],
		["NoEcho"] = args["NoEcho"],
		["MaxLength"] = args["MaxLength"],
		["ReferencedByResources"] = args["ReferencedByResources"],
		["MinValue"] = args["MinValue"],
		["ConstraintDescription"] = args["ConstraintDescription"],
		["Name"] = args["Name"],
	}
	asserts.AssertParameterDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationRequest = { ["ApplicationId"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertGetApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationRequest[k], "GetApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application to get.</p>
-- Required key: ApplicationId
-- @return GetApplicationRequest structure as a key-value pair table
function M.GetApplicationRequest(args)
	assert(args, "You must provide an argument table when creating GetApplicationRequest")
    local query_args = { 
        ["semanticVersion"] = args["SemanticVersion"],
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertGetApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCloudFormationChangeSetInput = { ["StackName"] = true, ["ParameterOverrides"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertCreateCloudFormationChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFormationChangeSetInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.Assert__string(struct["StackName"]) end
	if struct["ParameterOverrides"] then asserts.Assert__listOfParameterValue(struct["ParameterOverrides"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFormationChangeSetInput[k], "CreateCloudFormationChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFormationChangeSetInput
-- <p>Create an application change set request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [__string] <p>The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates
-- the change set by comparing this stack's information with the information that you submit, such as a modified
-- template or different parameter input values. </p><p>Constraints: Minimum length of 1.</p><p>Pattern: ([a-zA-Z][-a-zA-Z0-9]*)|(arn:\b(aws|aws-us-gov|aws-cn)\b:[-a-zA-Z0-9:/._+]*)</p>
-- * ParameterOverrides [__listOfParameterValue] <p>A list of parameter values for the parameters of the application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- Required key: StackName
-- @return CreateCloudFormationChangeSetInput structure as a key-value pair table
function M.CreateCloudFormationChangeSetInput(args)
	assert(args, "You must provide an argument table when creating CreateCloudFormationChangeSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["ParameterOverrides"] = args["ParameterOverrides"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertCreateCloudFormationChangeSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Version = { ["CreationTime"] = true, ["SourceCodeUrl"] = true, ["ParameterDefinitions"] = true, ["SemanticVersion"] = true, ["TemplateUrl"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Version to be of type 'table'")
	assert(struct["TemplateUrl"], "Expected key TemplateUrl to exist in table")
	assert(struct["ParameterDefinitions"], "Expected key ParameterDefinitions to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SemanticVersion"], "Expected key SemanticVersion to exist in table")
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["ParameterDefinitions"] then asserts.Assert__listOfParameterDefinition(struct["ParameterDefinitions"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Version[k], "Version contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Version
-- <p>Application version details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * ParameterDefinitions [__listOfParameterDefinition] <p>An array of parameter types supported by the application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- * TemplateUrl [__string] <p>A link to the packaged AWS SAM template of your application.</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- Required key: TemplateUrl
-- Required key: ParameterDefinitions
-- Required key: CreationTime
-- Required key: ApplicationId
-- Required key: SemanticVersion
-- @return Version structure as a key-value pair table
function M.Version(args)
	assert(args, "You must provide an argument table when creating Version")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTime"] = args["CreationTime"],
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["ParameterDefinitions"] = args["ParameterDefinitions"],
		["SemanticVersion"] = args["SemanticVersion"],
		["TemplateUrl"] = args["TemplateUrl"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationVersionRequest = { ["SourceCodeUrl"] = true, ["ApplicationId"] = true, ["TemplateUrl"] = true, ["TemplateBody"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertCreateApplicationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationVersionRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SemanticVersion"], "Expected key SemanticVersion to exist in table")
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["TemplateBody"] then asserts.Assert__string(struct["TemplateBody"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationVersionRequest[k], "CreateApplicationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- * TemplateUrl [__string] <p>A link to the packaged AWS SAM template of your application.</p>
-- * TemplateBody [__string] <p>The raw packaged AWS SAM template of your application.</p>
-- * SemanticVersion [__string] <p>The semantic version of the new version.</p>
-- Required key: ApplicationId
-- Required key: SemanticVersion
-- @return CreateApplicationVersionRequest structure as a key-value pair table
function M.CreateApplicationVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateApplicationVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
        ["{semanticVersion}"] = args["SemanticVersion"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["ApplicationId"] = args["ApplicationId"],
		["TemplateUrl"] = args["TemplateUrl"],
		["TemplateBody"] = args["TemplateBody"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertCreateApplicationVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListApplicationVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.Assert__listOfVersionSummary(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationVersionsResponse[k], "ListApplicationVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to request the next page of results.</p>
-- * Versions [__listOfVersionSummary] <p>An array of version summaries for the application.</p>
-- @return ListApplicationVersionsResponse structure as a key-value pair table
function M.ListApplicationVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListApplicationVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListApplicationVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCloudFormationChangeSetResponse = { ["StackId"] = true, ["ChangeSetId"] = true, ["ApplicationId"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertCreateCloudFormationChangeSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFormationChangeSetResponse to be of type 'table'")
	if struct["StackId"] then asserts.Assert__string(struct["StackId"]) end
	if struct["ChangeSetId"] then asserts.Assert__string(struct["ChangeSetId"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFormationChangeSetResponse[k], "CreateCloudFormationChangeSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFormationChangeSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [__string] <p>The unique ID of the stack.</p>
-- * ChangeSetId [__string] <p>The Amazon Resource Name (ARN) of the change set.</p><p>Length constraints: Minimum length of 1.</p><p>Pattern: ARN:[-a-zA-Z0-9:/]*</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- @return CreateCloudFormationChangeSetResponse structure as a key-value pair table
function M.CreateCloudFormationChangeSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateCloudFormationChangeSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ChangeSetId"] = args["ChangeSetId"],
		["ApplicationId"] = args["ApplicationId"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertCreateCloudFormationChangeSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>The client is sending more than the allowed number of requests per unit of time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>429</p>
-- * Message [__string] <p>The client is sending more than the allowed number of requests per unit of time.</p>
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParameterValue = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertParameterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterValue to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Value"] then asserts.Assert__string(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterValue[k], "ParameterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterValue
-- <p>Parameter value of the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation
-- uses the default value that is specified in your template.</p>
-- * Value [__string] <p>The input value associated with the parameter.</p>
-- Required key: Value
-- Required key: Name
-- @return ParameterValue structure as a key-value pair table
function M.ParameterValue(args)
	assert(args, "You must provide an argument table when creating ParameterValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertParameterValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationVersionPage = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertApplicationVersionPage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationVersionPage to be of type 'table'")
	assert(struct["Versions"], "Expected key Versions to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.Assert__listOfVersionSummary(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationVersionPage[k], "ApplicationVersionPage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationVersionPage
-- <p>A list of version summaries for the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>The token to request the next page of results.</p>
-- * Versions [__listOfVersionSummary] <p>An array of version summaries for the application.</p>
-- Required key: Versions
-- @return ApplicationVersionPage structure as a key-value pair table
function M.ApplicationVersionPage(args)
	assert(args, "You must provide an argument table when creating ApplicationVersionPage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertApplicationVersionPage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConflictException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p>The resource already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>409</p>
-- * Message [__string] <p>The resource already exists.</p>
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provide an argument table when creating ConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChangeSetDetails = { ["StackId"] = true, ["ChangeSetId"] = true, ["ApplicationId"] = true, ["SemanticVersion"] = true, nil }

function asserts.AssertChangeSetDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeSetDetails to be of type 'table'")
	assert(struct["ChangeSetId"], "Expected key ChangeSetId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["SemanticVersion"], "Expected key SemanticVersion to exist in table")
	if struct["StackId"] then asserts.Assert__string(struct["StackId"]) end
	if struct["ChangeSetId"] then asserts.Assert__string(struct["ChangeSetId"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SemanticVersion"] then asserts.Assert__string(struct["SemanticVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeSetDetails[k], "ChangeSetDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeSetDetails
-- <p>Details of the change set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [__string] <p>The unique ID of the stack.</p>
-- * ChangeSetId [__string] <p>The Amazon Resource Name (ARN) of the change set.</p><p>Length constraints: Minimum length of 1.</p><p>Pattern: ARN:[-a-zA-Z0-9:/]*</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * SemanticVersion [__string] <p>The semantic version of the application:</p><p>
-- <a href="https://semver.org/">https://semver.org/</a>
-- </p>
-- Required key: ChangeSetId
-- Required key: ApplicationId
-- Required key: StackId
-- Required key: SemanticVersion
-- @return ChangeSetDetails structure as a key-value pair table
function M.ChangeSetDetails(args)
	assert(args, "You must provide an argument table when creating ChangeSetDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ChangeSetId"] = args["ChangeSetId"],
		["ApplicationId"] = args["ApplicationId"],
		["SemanticVersion"] = args["SemanticVersion"],
	}
	asserts.AssertChangeSetDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutApplicationPolicyResponse = { ["Statements"] = true, nil }

function asserts.AssertPutApplicationPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApplicationPolicyResponse to be of type 'table'")
	if struct["Statements"] then asserts.Assert__listOfApplicationPolicyStatement(struct["Statements"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutApplicationPolicyResponse[k], "PutApplicationPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApplicationPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statements [__listOfApplicationPolicyStatement] <p>An array of policy statements applied to the application.</p>
-- @return PutApplicationPolicyResponse structure as a key-value pair table
function M.PutApplicationPolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutApplicationPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statements"] = args["Statements"],
	}
	asserts.AssertPutApplicationPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationPolicyResponse = { ["Statements"] = true, nil }

function asserts.AssertGetApplicationPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationPolicyResponse to be of type 'table'")
	if struct["Statements"] then asserts.Assert__listOfApplicationPolicyStatement(struct["Statements"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationPolicyResponse[k], "GetApplicationPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statements [__listOfApplicationPolicyStatement] <p>An array of policy statements applied to the application.</p>
-- @return GetApplicationPolicyResponse structure as a key-value pair table
function M.GetApplicationPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetApplicationPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statements"] = args["Statements"],
	}
	asserts.AssertGetApplicationPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationResponse = { ["SpdxLicenseId"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["CreationTime"] = true, ["Version"] = true, ["LicenseUrl"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertGetApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationResponse to be of type 'table'")
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationResponse[k], "GetApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpdxLicenseId [__string] <p>A valid identifier from https://spdx.org/licenses/.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * Version [Version] <p>Version information about the application.</p>
-- * LicenseUrl [__string] <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
-- @return GetApplicationResponse structure as a key-value pair table
function M.GetApplicationResponse(args)
	assert(args, "You must provide an argument table when creating GetApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["CreationTime"] = args["CreationTime"],
		["Version"] = args["Version"],
		["LicenseUrl"] = args["LicenseUrl"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationVersionsRequest = { ["NextToken"] = true, ["ApplicationId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListApplicationVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationVersionsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationVersionsRequest[k], "ListApplicationVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>A token to specify where to start paginating.</p>
-- * ApplicationId [__string] <p>The Amazon Resource Name (ARN) of the application.</p>
-- * MaxItems [MaxItems] <p>The total number of items to return.</p>
-- Required key: ApplicationId
-- @return ListApplicationVersionsRequest structure as a key-value pair table
function M.ListApplicationVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListApplicationVersionsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{applicationId}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ApplicationId"] = args["ApplicationId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListApplicationVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationResponse = { ["SpdxLicenseId"] = true, ["Description"] = true, ["Author"] = true, ["ApplicationId"] = true, ["Labels"] = true, ["CreationTime"] = true, ["Version"] = true, ["LicenseUrl"] = true, ["ReadmeUrl"] = true, ["HomePageUrl"] = true, ["Name"] = true, nil }

function asserts.AssertCreateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationResponse to be of type 'table'")
	if struct["SpdxLicenseId"] then asserts.Assert__string(struct["SpdxLicenseId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Author"] then asserts.Assert__string(struct["Author"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Labels"] then asserts.Assert__listOf__string(struct["Labels"]) end
	if struct["CreationTime"] then asserts.Assert__string(struct["CreationTime"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["LicenseUrl"] then asserts.Assert__string(struct["LicenseUrl"]) end
	if struct["ReadmeUrl"] then asserts.Assert__string(struct["ReadmeUrl"]) end
	if struct["HomePageUrl"] then asserts.Assert__string(struct["HomePageUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationResponse[k], "CreateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpdxLicenseId [__string] <p>A valid identifier from https://spdx.org/licenses/.</p>
-- * Description [__string] <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
-- * Author [__string] <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
-- * ApplicationId [__string] <p>The application Amazon Resource Name (ARN).</p>
-- * Labels [__listOf__string] <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
-- * CreationTime [__string] <p>The date and time this resource was created.</p>
-- * Version [Version] <p>Version information about the application.</p>
-- * LicenseUrl [__string] <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
-- * ReadmeUrl [__string] <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
-- * HomePageUrl [__string] <p>A URL with more information about the application, for example
-- the location of your GitHub repository for the application.</p>
-- * Name [__string] <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
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
		["SpdxLicenseId"] = args["SpdxLicenseId"],
		["Description"] = args["Description"],
		["Author"] = args["Author"],
		["ApplicationId"] = args["ApplicationId"],
		["Labels"] = args["Labels"],
		["CreationTime"] = args["CreationTime"],
		["Version"] = args["Version"],
		["LicenseUrl"] = args["LicenseUrl"],
		["ReadmeUrl"] = args["ReadmeUrl"],
		["HomePageUrl"] = args["HomePageUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationsResponse = { ["Applications"] = true, ["NextToken"] = true, nil }

function asserts.AssertListApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsResponse to be of type 'table'")
	if struct["Applications"] then asserts.Assert__listOfApplicationSummary(struct["Applications"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsResponse[k], "ListApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Applications [__listOfApplicationSummary] <p>An array of application summaries.</p>
-- * NextToken [__string] <p>The token to request the next page of results.</p>
-- @return ListApplicationsResponse structure as a key-value pair table
function M.ListApplicationsResponse(args)
	assert(args, "You must provide an argument table when creating ListApplicationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Applications"] = args["Applications"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListApplicationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationPolicy = { ["Statements"] = true, nil }

function asserts.AssertApplicationPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationPolicy to be of type 'table'")
	assert(struct["Statements"], "Expected key Statements to exist in table")
	if struct["Statements"] then asserts.Assert__listOfApplicationPolicyStatement(struct["Statements"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationPolicy[k], "ApplicationPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationPolicy
-- <p>Policy statements applied to the application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statements [__listOfApplicationPolicyStatement] <p>An array of policy statements applied to the application.</p>
-- Required key: Statements
-- @return ApplicationPolicy structure as a key-value pair table
function M.ApplicationPolicy(args)
	assert(args, "You must provide an argument table when creating ApplicationPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statements"] = args["Statements"],
	}
	asserts.AssertApplicationPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationVersionInput = { ["SourceCodeUrl"] = true, ["TemplateUrl"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertCreateApplicationVersionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationVersionInput to be of type 'table'")
	if struct["SourceCodeUrl"] then asserts.Assert__string(struct["SourceCodeUrl"]) end
	if struct["TemplateUrl"] then asserts.Assert__string(struct["TemplateUrl"]) end
	if struct["TemplateBody"] then asserts.Assert__string(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationVersionInput[k], "CreateApplicationVersionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationVersionInput
-- <p>Create a version request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceCodeUrl [__string] <p>A link to a public repository for the source code of your application.</p>
-- * TemplateUrl [__string] <p>A link to the packaged AWS SAM template of your application.</p>
-- * TemplateBody [__string] <p>The raw packaged AWS SAM template of your application.</p>
-- @return CreateApplicationVersionInput structure as a key-value pair table
function M.CreateApplicationVersionInput(args)
	assert(args, "You must provide an argument table when creating CreateApplicationVersionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceCodeUrl"] = args["SourceCodeUrl"],
		["TemplateUrl"] = args["TemplateUrl"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertCreateApplicationVersionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForbiddenException = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertForbiddenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForbiddenException to be of type 'table'")
	if struct["ErrorCode"] then asserts.Assert__string(struct["ErrorCode"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForbiddenException[k], "ForbiddenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForbiddenException
-- <p>The client is not authenticated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [__string] <p>403</p>
-- * Message [__string] <p>The client is not authenticated.</p>
-- @return ForbiddenException structure as a key-value pair table
function M.ForbiddenException(args)
	assert(args, "You must provide an argument table when creating ForbiddenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertForbiddenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	asserts.Assert__string(str)
	return str
end

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
	return double
end

function asserts.Assert__long(long)
	assert(long)
	assert(type(long) == "number", "Expected __long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__long(long)
	asserts.Assert__long(long)
	return long
end

function asserts.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxItems(integer)
	asserts.AssertMaxItems(integer)
	return integer
end

function asserts.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	asserts.Assert__integer(integer)
	return integer
end

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.Assert__listOf__string(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__string to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

--  
-- List of __string objects
function M.__listOf__string(list)
	asserts.Assert__listOf__string(list)
	return list
end

function asserts.Assert__listOfParameterDefinition(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfParameterDefinition to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterDefinition(v)
	end
end

--  
-- List of ParameterDefinition objects
function M.__listOfParameterDefinition(list)
	asserts.Assert__listOfParameterDefinition(list)
	return list
end

function asserts.Assert__listOfParameterValue(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfParameterValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.__listOfParameterValue(list)
	asserts.Assert__listOfParameterValue(list)
	return list
end

function asserts.Assert__listOfApplicationSummary(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfApplicationSummary to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationSummary(v)
	end
end

--  
-- List of ApplicationSummary objects
function M.__listOfApplicationSummary(list)
	asserts.Assert__listOfApplicationSummary(list)
	return list
end

function asserts.Assert__listOfVersionSummary(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfVersionSummary to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVersionSummary(v)
	end
end

--  
-- List of VersionSummary objects
function M.__listOfVersionSummary(list)
	asserts.Assert__listOfVersionSummary(list)
	return list
end

function asserts.Assert__listOfApplicationPolicyStatement(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfApplicationPolicyStatement to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationPolicyStatement(v)
	end
end

--  
-- List of ApplicationPolicyStatement objects
function M.__listOfApplicationPolicyStatement(list)
	asserts.Assert__listOfApplicationPolicyStatement(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "serverlessrepo.amazonaws.com"
		end
	end
	local ss = { "serverlessrepo" }
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
--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApplication",
	}
	for header,value in pairs(UpdateApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}", UpdateApplicationRequest, headers, settings, cb)
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

--- Call ListApplications asynchronously, invoking a callback when done
-- @param ListApplicationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListApplicationsAsync(ListApplicationsRequest, cb)
	assert(ListApplicationsRequest, "You must provide a ListApplicationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListApplications",
	}
	for header,value in pairs(ListApplicationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/applications", ListApplicationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApplicationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListApplicationsSync(ListApplicationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApplicationsAsync(ListApplicationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutApplicationPolicy asynchronously, invoking a callback when done
-- @param PutApplicationPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutApplicationPolicyAsync(PutApplicationPolicyRequest, cb)
	assert(PutApplicationPolicyRequest, "You must provide a PutApplicationPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutApplicationPolicy",
	}
	for header,value in pairs(PutApplicationPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}/policy", PutApplicationPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutApplicationPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutApplicationPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutApplicationPolicySync(PutApplicationPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutApplicationPolicyAsync(PutApplicationPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplication asynchronously, invoking a callback when done
-- @param GetApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApplicationAsync(GetApplicationRequest, cb)
	assert(GetApplicationRequest, "You must provide a GetApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApplication",
	}
	for header,value in pairs(GetApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}", GetApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApplicationSync(GetApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationAsync(GetApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCloudFormationChangeSet asynchronously, invoking a callback when done
-- @param CreateCloudFormationChangeSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCloudFormationChangeSetAsync(CreateCloudFormationChangeSetRequest, cb)
	assert(CreateCloudFormationChangeSetRequest, "You must provide a CreateCloudFormationChangeSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCloudFormationChangeSet",
	}
	for header,value in pairs(CreateCloudFormationChangeSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}/changesets", CreateCloudFormationChangeSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCloudFormationChangeSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCloudFormationChangeSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCloudFormationChangeSetSync(CreateCloudFormationChangeSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCloudFormationChangeSetAsync(CreateCloudFormationChangeSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplicationPolicy asynchronously, invoking a callback when done
-- @param GetApplicationPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApplicationPolicyAsync(GetApplicationPolicyRequest, cb)
	assert(GetApplicationPolicyRequest, "You must provide a GetApplicationPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApplicationPolicy",
	}
	for header,value in pairs(GetApplicationPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}/policy", GetApplicationPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApplicationPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApplicationPolicySync(GetApplicationPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationPolicyAsync(GetApplicationPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplication asynchronously, invoking a callback when done
-- @param DeleteApplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApplicationAsync(DeleteApplicationRequest, cb)
	assert(DeleteApplicationRequest, "You must provide a DeleteApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApplication",
	}
	for header,value in pairs(DeleteApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}", DeleteApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApplicationSync(DeleteApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationAsync(DeleteApplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplicationVersion asynchronously, invoking a callback when done
-- @param CreateApplicationVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApplicationVersionAsync(CreateApplicationVersionRequest, cb)
	assert(CreateApplicationVersionRequest, "You must provide a CreateApplicationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApplicationVersion",
	}
	for header,value in pairs(CreateApplicationVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}/versions/{semanticVersion}", CreateApplicationVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplicationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApplicationVersionSync(CreateApplicationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationVersionAsync(CreateApplicationVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListApplicationVersions asynchronously, invoking a callback when done
-- @param ListApplicationVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListApplicationVersionsAsync(ListApplicationVersionsRequest, cb)
	assert(ListApplicationVersionsRequest, "You must provide a ListApplicationVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListApplicationVersions",
	}
	for header,value in pairs(ListApplicationVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/applications/{applicationId}/versions", ListApplicationVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApplicationVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApplicationVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListApplicationVersionsSync(ListApplicationVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApplicationVersionsAsync(ListApplicationVersionsRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApplication",
	}
	for header,value in pairs(CreateApplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/applications", CreateApplicationRequest, headers, settings, cb)
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


return M
