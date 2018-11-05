--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeDeploy (codedeploy-2014-10-06)

local M = {}

M.metadata = {
	api_version = "2014-10-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codedeploy",
	service_abbreviation = "CodeDeploy",
	service_full_name = "AWS CodeDeploy",
	signature_version = "v4",
	target_prefix = "CodeDeploy_20141006",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "codedeploy-2014-10-06",
}

local keys = {}
local asserts = {}

keys.GetDeploymentConfigOutput = { ["deploymentConfigInfo"] = true, nil }

function asserts.AssertGetDeploymentConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentConfigOutput to be of type 'table'")
	if struct["deploymentConfigInfo"] then asserts.AssertDeploymentConfigInfo(struct["deploymentConfigInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentConfigOutput[k], "GetDeploymentConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentConfigOutput
-- <p>Represents the output of a GetDeploymentConfig operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentConfigInfo [DeploymentConfigInfo] <p>Information about the deployment configuration.</p>
-- @return GetDeploymentConfigOutput structure as a key-value pair table
function M.GetDeploymentConfigOutput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentConfigInfo"] = args["deploymentConfigInfo"],
	}
	asserts.AssertGetDeploymentConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToOnPremisesInstancesInput = { ["instanceNames"] = true, ["tags"] = true, nil }

function asserts.AssertAddTagsToOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToOnPremisesInstancesInput to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then asserts.AssertInstanceNameList(struct["instanceNames"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToOnPremisesInstancesInput[k], "AddTagsToOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToOnPremisesInstancesInput
-- <p>Represents the input of, and adds tags to, an on-premises instance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceNames [InstanceNameList] <p>The names of the on-premises instances to which to add tags.</p>
-- * tags [TagList] <p>The tag key-value pairs to add to the on-premises instances.</p> <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.</p>
-- Required key: tags
-- Required key: instanceNames
-- @return AddTagsToOnPremisesInstancesInput structure as a key-value pair table
function M.AddTagsToOnPremisesInstancesInput(args)
	assert(args, "You must provide an argument table when creating AddTagsToOnPremisesInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceNames"] = args["instanceNames"],
		["tags"] = args["tags"],
	}
	asserts.AssertAddTagsToOnPremisesInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrafficRoutingConfig = { ["timeBasedLinear"] = true, ["type"] = true, ["timeBasedCanary"] = true, nil }

function asserts.AssertTrafficRoutingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficRoutingConfig to be of type 'table'")
	if struct["timeBasedLinear"] then asserts.AssertTimeBasedLinear(struct["timeBasedLinear"]) end
	if struct["type"] then asserts.AssertTrafficRoutingType(struct["type"]) end
	if struct["timeBasedCanary"] then asserts.AssertTimeBasedCanary(struct["timeBasedCanary"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficRoutingConfig[k], "TrafficRoutingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficRoutingConfig
-- <p>The configuration that specifies how traffic is shifted from one version of a Lambda function to another version during an AWS Lambda deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timeBasedLinear [TimeBasedLinear] <p>A configuration that shifts traffic from one version of a Lambda function to another in equal increments, with an equal number of minutes between each increment. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>
-- * type [TrafficRoutingType] <p>The type of traffic shifting (<code>TimeBasedCanary</code> or <code>TimeBasedLinear</code>) used by a deployment configuration .</p>
-- * timeBasedCanary [TimeBasedCanary] <p>A configuration that shifts traffic from one version of a Lambda function to another in two increments. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>
-- @return TrafficRoutingConfig structure as a key-value pair table
function M.TrafficRoutingConfig(args)
	assert(args, "You must provide an argument table when creating TrafficRoutingConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timeBasedLinear"] = args["timeBasedLinear"],
		["type"] = args["type"],
		["timeBasedCanary"] = args["timeBasedCanary"],
	}
	asserts.AssertTrafficRoutingConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGitHubAccountTokenInput = { ["tokenName"] = true, nil }

function asserts.AssertDeleteGitHubAccountTokenInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGitHubAccountTokenInput to be of type 'table'")
	if struct["tokenName"] then asserts.AssertGitHubAccountTokenName(struct["tokenName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGitHubAccountTokenInput[k], "DeleteGitHubAccountTokenInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGitHubAccountTokenInput
-- <p>Represents the input of a DeleteGitHubAccount operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tokenName [GitHubAccountTokenName] <p>The name of the GitHub account connection to delete.</p>
-- @return DeleteGitHubAccountTokenInput structure as a key-value pair table
function M.DeleteGitHubAccountTokenInput(args)
	assert(args, "You must provide an argument table when creating DeleteGitHubAccountTokenInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tokenName"] = args["tokenName"],
	}
	asserts.AssertDeleteGitHubAccountTokenInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGitHubAccountTokenNamesInput = { ["nextToken"] = true, nil }

function asserts.AssertListGitHubAccountTokenNamesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGitHubAccountTokenNamesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGitHubAccountTokenNamesInput[k], "ListGitHubAccountTokenNamesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGitHubAccountTokenNamesInput
-- <p>Represents the input of a ListGitHubAccountTokenNames operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list. </p>
-- @return ListGitHubAccountTokenNamesInput structure as a key-value pair table
function M.ListGitHubAccountTokenNamesInput(args)
	assert(args, "You must provide an argument table when creating ListGitHubAccountTokenNamesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListGitHubAccountTokenNamesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextTokenException = { nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentInstanceTypeException = { nil }

function asserts.AssertInvalidDeploymentInstanceTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentInstanceTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentInstanceTypeException[k], "InvalidDeploymentInstanceTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentInstanceTypeException
-- <p>An instance type was specified for an in-place deployment. Instance types are supported for blue/green deployments only.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentInstanceTypeException structure as a key-value pair table
function M.InvalidDeploymentInstanceTypeException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentInstanceTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentInstanceTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTagException = { nil }

function asserts.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagException[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
-- <p>The specified tag was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTagException structure as a key-value pair table
function M.InvalidTagException(args)
	assert(args, "You must provide an argument table when creating InvalidTagException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTagException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidGitHubAccountTokenException = { nil }

function asserts.AssertInvalidGitHubAccountTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGitHubAccountTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidGitHubAccountTokenException[k], "InvalidGitHubAccountTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGitHubAccountTokenException
-- <p>The GitHub token is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidGitHubAccountTokenException structure as a key-value pair table
function M.InvalidGitHubAccountTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidGitHubAccountTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidGitHubAccountTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceNotRegisteredException = { nil }

function asserts.AssertInstanceNotRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNotRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceNotRegisteredException[k], "InstanceNotRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNotRegisteredException
-- <p>The specified on-premises instance is not registered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceNotRegisteredException structure as a key-value pair table
function M.InstanceNotRegisteredException(args)
	assert(args, "You must provide an argument table when creating InstanceNotRegisteredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceNotRegisteredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOnPremisesInstancesInput = { ["nextToken"] = true, ["registrationStatus"] = true, ["tagFilters"] = true, nil }

function asserts.AssertListOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOnPremisesInstancesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["registrationStatus"] then asserts.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["tagFilters"] then asserts.AssertTagFilterList(struct["tagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOnPremisesInstancesInput[k], "ListOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOnPremisesInstancesInput
-- <p>Represents the input of a ListOnPremisesInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.</p>
-- * registrationStatus [RegistrationStatus] <p>The registration status of the on-premises instances:</p> <ul> <li> <p>Deregistered: Include deregistered on-premises instances in the resulting list.</p> </li> <li> <p>Registered: Include registered on-premises instances in the resulting list.</p> </li> </ul>
-- * tagFilters [TagFilterList] <p>The on-premises instance tags that will be used to restrict the corresponding on-premises instance names returned.</p>
-- @return ListOnPremisesInstancesInput structure as a key-value pair table
function M.ListOnPremisesInstancesInput(args)
	assert(args, "You must provide an argument table when creating ListOnPremisesInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["registrationStatus"] = args["registrationStatus"],
		["tagFilters"] = args["tagFilters"],
	}
	asserts.AssertListOnPremisesInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MultipleIamArnsProvidedException = { nil }

function asserts.AssertMultipleIamArnsProvidedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipleIamArnsProvidedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MultipleIamArnsProvidedException[k], "MultipleIamArnsProvidedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipleIamArnsProvidedException
-- <p>Both an IAM user ARN and an IAM session ARN were included in the request. Use only one ARN type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MultipleIamArnsProvidedException structure as a key-value pair table
function M.MultipleIamArnsProvidedException(args)
	assert(args, "You must provide an argument table when creating MultipleIamArnsProvidedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertMultipleIamArnsProvidedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentStyleException = { nil }

function asserts.AssertInvalidDeploymentStyleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentStyleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentStyleException[k], "InvalidDeploymentStyleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentStyleException
-- <p>An invalid deployment style was specified. Valid deployment types include "IN_PLACE" and "BLUE_GREEN". Valid deployment options include "WITH_TRAFFIC_CONTROL" and "WITHOUT_TRAFFIC_CONTROL".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentStyleException structure as a key-value pair table
function M.InvalidDeploymentStyleException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentStyleException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentStyleException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAutoRollbackConfigException = { nil }

function asserts.AssertInvalidAutoRollbackConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutoRollbackConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidAutoRollbackConfigException[k], "InvalidAutoRollbackConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutoRollbackConfigException
-- <p>The automatic rollback configuration was specified in an invalid format. For example, automatic rollback is enabled but an invalid triggering event type or no event types were listed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidAutoRollbackConfigException structure as a key-value pair table
function M.InvalidAutoRollbackConfigException(args)
	assert(args, "You must provide an argument table when creating InvalidAutoRollbackConfigException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidAutoRollbackConfigException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentConfigOutput = { ["deploymentConfigId"] = true, nil }

function asserts.AssertCreateDeploymentConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentConfigOutput to be of type 'table'")
	if struct["deploymentConfigId"] then asserts.AssertDeploymentConfigId(struct["deploymentConfigId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentConfigOutput[k], "CreateDeploymentConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentConfigOutput
-- <p>Represents the output of a CreateDeploymentConfig operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentConfigId [DeploymentConfigId] <p>A unique deployment configuration ID.</p>
-- @return CreateDeploymentConfigOutput structure as a key-value pair table
function M.CreateDeploymentConfigOutput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentConfigId"] = args["deploymentConfigId"],
	}
	asserts.AssertCreateDeploymentConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentGroupInput = { ["applicationName"] = true, ["deploymentGroupName"] = true, nil }

function asserts.AssertGetDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentGroupInput[k], "GetDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentGroupInput
-- <p>Represents the input of a GetDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- Required key: applicationName
-- Required key: deploymentGroupName
-- @return GetDeploymentGroupInput structure as a key-value pair table
function M.GetDeploymentGroupInput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["deploymentGroupName"] = args["deploymentGroupName"],
	}
	asserts.AssertGetDeploymentGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentConfigInput = { ["deploymentConfigName"] = true, nil }

function asserts.AssertGetDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentConfigInput[k], "GetDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentConfigInput
-- <p>Represents the input of a GetDeploymentConfig operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p>
-- Required key: deploymentConfigName
-- @return GetDeploymentConfigInput structure as a key-value pair table
function M.GetDeploymentConfigInput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentConfigName"] = args["deploymentConfigName"],
	}
	asserts.AssertGetDeploymentConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Location = { ["bundleType"] = true, ["version"] = true, ["bucket"] = true, ["key"] = true, ["eTag"] = true, nil }

function asserts.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["bundleType"] then asserts.AssertBundleType(struct["bundleType"]) end
	if struct["version"] then asserts.AssertVersionId(struct["version"]) end
	if struct["bucket"] then asserts.AssertS3Bucket(struct["bucket"]) end
	if struct["key"] then asserts.AssertS3Key(struct["key"]) end
	if struct["eTag"] then asserts.AssertETag(struct["eTag"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>Information about the location of application artifacts stored in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bundleType [BundleType] <p>The file type of the application revision. Must be one of the following:</p> <ul> <li> <p>tar: A tar archive file.</p> </li> <li> <p>tgz: A compressed tar archive file.</p> </li> <li> <p>zip: A zip archive file.</p> </li> </ul>
-- * version [VersionId] <p>A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the version is not specified, the system will use the most recent version by default.</p>
-- * bucket [S3Bucket] <p>The name of the Amazon S3 bucket where the application revision is stored.</p>
-- * key [S3Key] <p>The name of the Amazon S3 object that represents the bundled artifacts for the application revision.</p>
-- * eTag [ETag] <p>The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the ETag is not specified as an input parameter, ETag validation of the object will be skipped.</p>
-- @return S3Location structure as a key-value pair table
function M.S3Location(args)
	assert(args, "You must provide an argument table when creating S3Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["bundleType"] = args["bundleType"],
		["version"] = args["version"],
		["bucket"] = args["bucket"],
		["key"] = args["key"],
		["eTag"] = args["eTag"],
	}
	asserts.AssertS3Location(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationRevisionsOutput = { ["nextToken"] = true, ["revisions"] = true, nil }

function asserts.AssertListApplicationRevisionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationRevisionsOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["revisions"] then asserts.AssertRevisionLocationList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationRevisionsOutput[k], "ListApplicationRevisionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationRevisionsOutput
-- <p>Represents the output of a ListApplicationRevisions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier will also be returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.</p>
-- * revisions [RevisionLocationList] <p>A list of locations that contain the matching revisions.</p>
-- @return ListApplicationRevisionsOutput structure as a key-value pair table
function M.ListApplicationRevisionsOutput(args)
	assert(args, "You must provide an argument table when creating ListApplicationRevisionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["revisions"] = args["revisions"],
	}
	asserts.AssertListApplicationRevisionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentAlreadyCompletedException = { nil }

function asserts.AssertDeploymentAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentAlreadyCompletedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentAlreadyCompletedException[k], "DeploymentAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentAlreadyCompletedException
-- <p>The deployment is already complete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentAlreadyCompletedException structure as a key-value pair table
function M.DeploymentAlreadyCompletedException(args)
	assert(args, "You must provide an argument table when creating DeploymentAlreadyCompletedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentAlreadyCompletedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceNameRequiredException = { nil }

function asserts.AssertInstanceNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceNameRequiredException[k], "InstanceNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNameRequiredException
-- <p>An on-premises instance name was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceNameRequiredException structure as a key-value pair table
function M.InstanceNameRequiredException(args)
	assert(args, "You must provide an argument table when creating InstanceNameRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceNameRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ELBInfo = { ["name"] = true, nil }

function asserts.AssertELBInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ELBInfo to be of type 'table'")
	if struct["name"] then asserts.AssertELBName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ELBInfo[k], "ELBInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ELBInfo
-- <p>Information about a load balancer in Elastic Load Balancing to use in a deployment. Instances are registered directly with a load balancer, and traffic is routed to the load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ELBName] <p>For blue/green deployments, the name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.</p>
-- @return ELBInfo structure as a key-value pair table
function M.ELBInfo(args)
	assert(args, "You must provide an argument table when creating ELBInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertELBInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentGroupsInput = { ["applicationName"] = true, ["nextToken"] = true, nil }

function asserts.AssertListDeploymentGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentGroupsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentGroupsInput[k], "ListDeploymentGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentGroupsInput
-- <p>Represents the input of a ListDeploymentGroups operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * nextToken [NextToken] <p>An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.</p>
-- Required key: applicationName
-- @return ListDeploymentGroupsInput structure as a key-value pair table
function M.ListDeploymentGroupsInput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListDeploymentGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlarmConfiguration = { ["ignorePollAlarmFailure"] = true, ["alarms"] = true, ["enabled"] = true, nil }

function asserts.AssertAlarmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmConfiguration to be of type 'table'")
	if struct["ignorePollAlarmFailure"] then asserts.AssertBoolean(struct["ignorePollAlarmFailure"]) end
	if struct["alarms"] then asserts.AssertAlarmList(struct["alarms"]) end
	if struct["enabled"] then asserts.AssertBoolean(struct["enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlarmConfiguration[k], "AlarmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmConfiguration
-- <p>Information about alarms associated with the deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ignorePollAlarmFailure [Boolean] <p>Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p> <ul> <li> <p>true: The deployment will proceed even if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> <li> <p>false: The deployment will stop if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> </ul>
-- * alarms [AlarmList] <p>A list of alarms configured for the deployment group. A maximum of 10 alarms can be added to a deployment group.</p>
-- * enabled [Boolean] <p>Indicates whether the alarm configuration is enabled.</p>
-- @return AlarmConfiguration structure as a key-value pair table
function M.AlarmConfiguration(args)
	assert(args, "You must provide an argument table when creating AlarmConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ignorePollAlarmFailure"] = args["ignorePollAlarmFailure"],
		["alarms"] = args["alarms"],
		["enabled"] = args["enabled"],
	}
	asserts.AssertAlarmConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigDoesNotExistException = { nil }

function asserts.AssertDeploymentConfigDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigDoesNotExistException[k], "DeploymentConfigDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigDoesNotExistException
-- <p>The deployment configuration does not exist with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentConfigDoesNotExistException structure as a key-value pair table
function M.DeploymentConfigDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentConfigDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BucketNameFilterRequiredException = { nil }

function asserts.AssertBucketNameFilterRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketNameFilterRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BucketNameFilterRequiredException[k], "BucketNameFilterRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketNameFilterRequiredException
-- <p>A bucket name is required, but was not provided.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BucketNameFilterRequiredException structure as a key-value pair table
function M.BucketNameFilterRequiredException(args)
	assert(args, "You must provide an argument table when creating BucketNameFilterRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBucketNameFilterRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOnPremisesInstancesOutput = { ["nextToken"] = true, ["instanceNames"] = true, nil }

function asserts.AssertListOnPremisesInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOnPremisesInstancesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["instanceNames"] then asserts.AssertInstanceNameList(struct["instanceNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOnPremisesInstancesOutput[k], "ListOnPremisesInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOnPremisesInstancesOutput
-- <p>Represents the output of list on-premises instances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.</p>
-- * instanceNames [InstanceNameList] <p>The list of matching on-premises instance names.</p>
-- @return ListOnPremisesInstancesOutput structure as a key-value pair table
function M.ListOnPremisesInstancesOutput(args)
	assert(args, "You must provide an argument table when creating ListOnPremisesInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["instanceNames"] = args["instanceNames"],
	}
	asserts.AssertListOnPremisesInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GreenFleetProvisioningOption = { ["action"] = true, nil }

function asserts.AssertGreenFleetProvisioningOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GreenFleetProvisioningOption to be of type 'table'")
	if struct["action"] then asserts.AssertGreenFleetProvisioningAction(struct["action"]) end
	for k,_ in pairs(struct) do
		assert(keys.GreenFleetProvisioningOption[k], "GreenFleetProvisioningOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GreenFleetProvisioningOption
-- <p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * action [GreenFleetProvisioningAction] <p>The method used to add instances to a replacement environment.</p> <ul> <li> <p>DISCOVER_EXISTING: Use instances that already exist or will be created manually.</p> </li> <li> <p>COPY_AUTO_SCALING_GROUP: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling group.</p> </li> </ul>
-- @return GreenFleetProvisioningOption structure as a key-value pair table
function M.GreenFleetProvisioningOption(args)
	assert(args, "You must provide an argument table when creating GreenFleetProvisioningOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["action"] = args["action"],
	}
	asserts.AssertGreenFleetProvisioningOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationRevisionInput = { ["applicationName"] = true, ["revision"] = true, nil }

function asserts.AssertGetApplicationRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationRevisionInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["revision"] then asserts.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationRevisionInput[k], "GetApplicationRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationRevisionInput
-- <p>Represents the input of a GetApplicationRevision operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of the application that corresponds to the revision.</p>
-- * revision [RevisionLocation] <p>Information about the application revision to get, including type and location.</p>
-- Required key: applicationName
-- Required key: revision
-- @return GetApplicationRevisionInput structure as a key-value pair table
function M.GetApplicationRevisionInput(args)
	assert(args, "You must provide an argument table when creating GetApplicationRevisionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["revision"] = args["revision"],
	}
	asserts.AssertGetApplicationRevisionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentGroupInfo = { ["applicationName"] = true, ["deploymentGroupId"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["autoScalingGroups"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["lastSuccessfulDeployment"] = true, ["ec2TagSet"] = true, ["onPremisesTagSet"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["triggerConfigurations"] = true, ["lastAttemptedDeployment"] = true, ["serviceRoleArn"] = true, ["deploymentGroupName"] = true, ["targetRevision"] = true, ["computePlatform"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

function asserts.AssertDeploymentGroupInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupInfo to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupId"] then asserts.AssertDeploymentGroupId(struct["deploymentGroupId"]) end
	if struct["loadBalancerInfo"] then asserts.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then asserts.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupList(struct["autoScalingGroups"]) end
	if struct["alarmConfiguration"] then asserts.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then asserts.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["lastSuccessfulDeployment"] then asserts.AssertLastDeploymentInfo(struct["lastSuccessfulDeployment"]) end
	if struct["ec2TagSet"] then asserts.AssertEC2TagSet(struct["ec2TagSet"]) end
	if struct["onPremisesTagSet"] then asserts.AssertOnPremisesTagSet(struct["onPremisesTagSet"]) end
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then asserts.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["triggerConfigurations"] then asserts.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["lastAttemptedDeployment"] then asserts.AssertLastDeploymentInfo(struct["lastAttemptedDeployment"]) end
	if struct["serviceRoleArn"] then asserts.AssertRole(struct["serviceRoleArn"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["targetRevision"] then asserts.AssertRevisionLocation(struct["targetRevision"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	if struct["onPremisesInstanceTagFilters"] then asserts.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupInfo[k], "DeploymentGroupInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupInfo
-- <p>Information about a deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The application name.</p>
-- * deploymentGroupId [DeploymentGroupId] <p>The deployment group ID.</p>
-- * loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer to use in a deployment.</p>
-- * blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
-- * autoScalingGroups [AutoScalingGroupList] <p>A list of associated Auto Scaling groups.</p>
-- * alarmConfiguration [AlarmConfiguration] <p>A list of alarms associated with the deployment group.</p>
-- * ec2TagFilters [EC2TagFilterList] <p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags.</p>
-- * lastSuccessfulDeployment [LastDeploymentInfo] <p>Information about the most recent successful deployment to the deployment group.</p>
-- * ec2TagSet [EC2TagSet] <p>Information about groups of tags applied to an EC2 instance. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilters.</p>
-- * onPremisesTagSet [OnPremisesTagSet] <p>Information about groups of tags applied to an on-premises instance. The deployment group includes only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.</p>
-- * autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information about the automatic rollback configuration associated with the deployment group.</p>
-- * deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- * triggerConfigurations [TriggerConfigList] <p>Information about triggers associated with the deployment group.</p>
-- * lastAttemptedDeployment [LastDeploymentInfo] <p>Information about the most recent attempted deployment to the deployment group.</p>
-- * serviceRoleArn [Role] <p>A service role ARN.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The deployment group name.</p>
-- * targetRevision [RevisionLocation] <p>Information about the deployment group's target revision, including type and location.</p>
-- * computePlatform [ComputePlatform] <p>The destination platform type for the deployment group (<code>Lambda</code> or <code>Server</code>).</p>
-- * onPremisesInstanceTagFilters [TagFilterList] <p>The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags.</p>
-- @return DeploymentGroupInfo structure as a key-value pair table
function M.DeploymentGroupInfo(args)
	assert(args, "You must provide an argument table when creating DeploymentGroupInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["deploymentGroupId"] = args["deploymentGroupId"],
		["loadBalancerInfo"] = args["loadBalancerInfo"],
		["blueGreenDeploymentConfiguration"] = args["blueGreenDeploymentConfiguration"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["autoScalingGroups"] = args["autoScalingGroups"],
		["alarmConfiguration"] = args["alarmConfiguration"],
		["ec2TagFilters"] = args["ec2TagFilters"],
		["lastSuccessfulDeployment"] = args["lastSuccessfulDeployment"],
		["ec2TagSet"] = args["ec2TagSet"],
		["onPremisesTagSet"] = args["onPremisesTagSet"],
		["autoRollbackConfiguration"] = args["autoRollbackConfiguration"],
		["deploymentStyle"] = args["deploymentStyle"],
		["triggerConfigurations"] = args["triggerConfigurations"],
		["lastAttemptedDeployment"] = args["lastAttemptedDeployment"],
		["serviceRoleArn"] = args["serviceRoleArn"],
		["deploymentGroupName"] = args["deploymentGroupName"],
		["targetRevision"] = args["targetRevision"],
		["computePlatform"] = args["computePlatform"],
		["onPremisesInstanceTagFilters"] = args["onPremisesInstanceTagFilters"],
	}
	asserts.AssertDeploymentGroupInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSortOrderException = { nil }

function asserts.AssertInvalidSortOrderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortOrderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSortOrderException[k], "InvalidSortOrderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortOrderException
-- <p>The sort order was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSortOrderException structure as a key-value pair table
function M.InvalidSortOrderException(args)
	assert(args, "You must provide an argument table when creating InvalidSortOrderException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSortOrderException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentIsNotInReadyStateException = { nil }

function asserts.AssertDeploymentIsNotInReadyStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentIsNotInReadyStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentIsNotInReadyStateException[k], "DeploymentIsNotInReadyStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentIsNotInReadyStateException
-- <p>The deployment does not have a status of Ready and can't continue yet.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentIsNotInReadyStateException structure as a key-value pair table
function M.DeploymentIsNotInReadyStateException(args)
	assert(args, "You must provide an argument table when creating DeploymentIsNotInReadyStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentIsNotInReadyStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IamSessionArnAlreadyRegisteredException = { nil }

function asserts.AssertIamSessionArnAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamSessionArnAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IamSessionArnAlreadyRegisteredException[k], "IamSessionArnAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamSessionArnAlreadyRegisteredException
-- <p>The request included an IAM session ARN that has already been used to register a different instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IamSessionArnAlreadyRegisteredException structure as a key-value pair table
function M.IamSessionArnAlreadyRegisteredException(args)
	assert(args, "You must provide an argument table when creating IamSessionArnAlreadyRegisteredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIamSessionArnAlreadyRegisteredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TriggerTargetsLimitExceededException = { nil }

function asserts.AssertTriggerTargetsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggerTargetsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TriggerTargetsLimitExceededException[k], "TriggerTargetsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggerTargetsLimitExceededException
-- <p>The maximum allowed number of triggers was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TriggerTargetsLimitExceededException structure as a key-value pair table
function M.TriggerTargetsLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TriggerTargetsLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTriggerTargetsLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigInfo = { ["trafficRoutingConfig"] = true, ["deploymentConfigId"] = true, ["minimumHealthyHosts"] = true, ["computePlatform"] = true, ["deploymentConfigName"] = true, ["createTime"] = true, nil }

function asserts.AssertDeploymentConfigInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigInfo to be of type 'table'")
	if struct["trafficRoutingConfig"] then asserts.AssertTrafficRoutingConfig(struct["trafficRoutingConfig"]) end
	if struct["deploymentConfigId"] then asserts.AssertDeploymentConfigId(struct["deploymentConfigId"]) end
	if struct["minimumHealthyHosts"] then asserts.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigInfo[k], "DeploymentConfigInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigInfo
-- <p>Information about a deployment configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * trafficRoutingConfig [TrafficRoutingConfig] <p>The configuration specifying how the deployment traffic will be routed. Only deployments with a Lambda compute platform can specify this.</p>
-- * deploymentConfigId [DeploymentConfigId] <p>The deployment configuration ID.</p>
-- * minimumHealthyHosts [MinimumHealthyHosts] <p>Information about the number or percentage of minimum healthy instance.</p>
-- * computePlatform [ComputePlatform] <p>The destination platform type for the deployment (<code>Lambda</code> or <code>Server</code>).</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
-- * createTime [Timestamp] <p>The time at which the deployment configuration was created.</p>
-- @return DeploymentConfigInfo structure as a key-value pair table
function M.DeploymentConfigInfo(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["trafficRoutingConfig"] = args["trafficRoutingConfig"],
		["deploymentConfigId"] = args["deploymentConfigId"],
		["minimumHealthyHosts"] = args["minimumHealthyHosts"],
		["computePlatform"] = args["computePlatform"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["createTime"] = args["createTime"],
	}
	asserts.AssertDeploymentConfigInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationAlreadyExistsException = { nil }

function asserts.AssertApplicationAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApplicationAlreadyExistsException[k], "ApplicationAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationAlreadyExistsException
-- <p>An application with the specified name already exists with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApplicationAlreadyExistsException structure as a key-value pair table
function M.ApplicationAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating ApplicationAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApplicationAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeployedStateFilterException = { nil }

function asserts.AssertInvalidDeployedStateFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeployedStateFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeployedStateFilterException[k], "InvalidDeployedStateFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeployedStateFilterException
-- <p>The deployed state filter was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeployedStateFilterException structure as a key-value pair table
function M.InvalidDeployedStateFilterException(args)
	assert(args, "You must provide an argument table when creating InvalidDeployedStateFilterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeployedStateFilterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAlarmConfigException = { nil }

function asserts.AssertInvalidAlarmConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAlarmConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidAlarmConfigException[k], "InvalidAlarmConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAlarmConfigException
-- <p>The format of the alarm configuration is invalid. Possible causes include:</p> <ul> <li> <p>The alarm list is null.</p> </li> <li> <p>The alarm object is null.</p> </li> <li> <p>The alarm name is empty or null or exceeds the 255 character limit.</p> </li> <li> <p>Two alarms with the same name have been specified.</p> </li> <li> <p>The alarm configuration is enabled but the alarm list is empty.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidAlarmConfigException structure as a key-value pair table
function M.InvalidAlarmConfigException(args)
	assert(args, "You must provide an argument table when creating InvalidAlarmConfigException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidAlarmConfigException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagRequiredException = { nil }

function asserts.AssertTagRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagRequiredException[k], "TagRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagRequiredException
-- <p>A tag was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagRequiredException structure as a key-value pair table
function M.TagRequiredException(args)
	assert(args, "You must provide an argument table when creating TagRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigInUseException = { nil }

function asserts.AssertDeploymentConfigInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigInUseException[k], "DeploymentConfigInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigInUseException
-- <p>The deployment configuration is still in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentConfigInUseException structure as a key-value pair table
function M.DeploymentConfigInUseException(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentConfigInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOnPremisesInstanceOutput = { ["instanceInfo"] = true, nil }

function asserts.AssertGetOnPremisesInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOnPremisesInstanceOutput to be of type 'table'")
	if struct["instanceInfo"] then asserts.AssertInstanceInfo(struct["instanceInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOnPremisesInstanceOutput[k], "GetOnPremisesInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOnPremisesInstanceOutput
-- <p>Represents the output of a GetOnPremisesInstance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceInfo [InstanceInfo] <p>Information about the on-premises instance.</p>
-- @return GetOnPremisesInstanceOutput structure as a key-value pair table
function M.GetOnPremisesInstanceOutput(args)
	assert(args, "You must provide an argument table when creating GetOnPremisesInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceInfo"] = args["instanceInfo"],
	}
	asserts.AssertGetOnPremisesInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceIdRequiredException = { nil }

function asserts.AssertInstanceIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceIdRequiredException[k], "InstanceIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdRequiredException
-- <p>The instance ID was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceIdRequiredException structure as a key-value pair table
function M.InstanceIdRequiredException(args)
	assert(args, "You must provide an argument table when creating InstanceIdRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceIdRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IamUserArnRequiredException = { nil }

function asserts.AssertIamUserArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamUserArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IamUserArnRequiredException[k], "IamUserArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamUserArnRequiredException
-- <p>An IAM user ARN was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IamUserArnRequiredException structure as a key-value pair table
function M.IamUserArnRequiredException(args)
	assert(args, "You must provide an argument table when creating IamUserArnRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIamUserArnRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromOnPremisesInstancesInput = { ["instanceNames"] = true, ["tags"] = true, nil }

function asserts.AssertRemoveTagsFromOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromOnPremisesInstancesInput to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then asserts.AssertInstanceNameList(struct["instanceNames"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromOnPremisesInstancesInput[k], "RemoveTagsFromOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromOnPremisesInstancesInput
-- <p>Represents the input of a RemoveTagsFromOnPremisesInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceNames [InstanceNameList] <p>The names of the on-premises instances from which to remove tags.</p>
-- * tags [TagList] <p>The tag key-value pairs to remove from the on-premises instances.</p>
-- Required key: tags
-- Required key: instanceNames
-- @return RemoveTagsFromOnPremisesInstancesInput structure as a key-value pair table
function M.RemoveTagsFromOnPremisesInstancesInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromOnPremisesInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceNames"] = args["instanceNames"],
		["tags"] = args["tags"],
	}
	asserts.AssertRemoveTagsFromOnPremisesInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInputException = { nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The specified input was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDeploymentInput = { ["deploymentId"] = true, ["autoRollbackEnabled"] = true, nil }

function asserts.AssertStopDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDeploymentInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["autoRollbackEnabled"] then asserts.AssertNullableBoolean(struct["autoRollbackEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDeploymentInput[k], "StopDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDeploymentInput
-- <p>Represents the input of a StopDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- * autoRollbackEnabled [NullableBoolean] <p>Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision.</p>
-- Required key: deploymentId
-- @return StopDeploymentInput structure as a key-value pair table
function M.StopDeploymentInput(args)
	assert(args, "You must provide an argument table when creating StopDeploymentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["autoRollbackEnabled"] = args["autoRollbackEnabled"],
	}
	asserts.AssertStopDeploymentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGitHubAccountTokenOutput = { ["tokenName"] = true, nil }

function asserts.AssertDeleteGitHubAccountTokenOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGitHubAccountTokenOutput to be of type 'table'")
	if struct["tokenName"] then asserts.AssertGitHubAccountTokenName(struct["tokenName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGitHubAccountTokenOutput[k], "DeleteGitHubAccountTokenOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGitHubAccountTokenOutput
-- <p>Represents the output of a DeleteGitHubAccountToken operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tokenName [GitHubAccountTokenName] <p>The name of the GitHub account connection that was deleted.</p>
-- @return DeleteGitHubAccountTokenOutput structure as a key-value pair table
function M.DeleteGitHubAccountTokenOutput(args)
	assert(args, "You must provide an argument table when creating DeleteGitHubAccountTokenOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tokenName"] = args["tokenName"],
	}
	asserts.AssertDeleteGitHubAccountTokenOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentConfigInput = { ["trafficRoutingConfig"] = true, ["minimumHealthyHosts"] = true, ["computePlatform"] = true, ["deploymentConfigName"] = true, nil }

function asserts.AssertCreateDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["trafficRoutingConfig"] then asserts.AssertTrafficRoutingConfig(struct["trafficRoutingConfig"]) end
	if struct["minimumHealthyHosts"] then asserts.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentConfigInput[k], "CreateDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentConfigInput
-- <p>Represents the input of a CreateDeploymentConfig operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * trafficRoutingConfig [TrafficRoutingConfig] <p>The configuration that specifies how the deployment traffic will be routed.</p>
-- * minimumHealthyHosts [MinimumHealthyHosts] <p>The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.</p> <p>The type parameter takes either of the following values:</p> <ul> <li> <p>HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.</p> </li> <li> <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.</p> </li> </ul> <p>The value parameter takes an integer.</p> <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.</p>
-- * computePlatform [ComputePlatform] <p>The destination platform type for the deployment (<code>Lambda</code> or <code>Server</code>&gt;).</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The name of the deployment configuration to create.</p>
-- Required key: deploymentConfigName
-- @return CreateDeploymentConfigInput structure as a key-value pair table
function M.CreateDeploymentConfigInput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["trafficRoutingConfig"] = args["trafficRoutingConfig"],
		["minimumHealthyHosts"] = args["minimumHealthyHosts"],
		["computePlatform"] = args["computePlatform"],
		["deploymentConfigName"] = args["deploymentConfigName"],
	}
	asserts.AssertCreateDeploymentConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TriggerConfig = { ["triggerEvents"] = true, ["triggerTargetArn"] = true, ["triggerName"] = true, nil }

function asserts.AssertTriggerConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggerConfig to be of type 'table'")
	if struct["triggerEvents"] then asserts.AssertTriggerEventTypeList(struct["triggerEvents"]) end
	if struct["triggerTargetArn"] then asserts.AssertTriggerTargetArn(struct["triggerTargetArn"]) end
	if struct["triggerName"] then asserts.AssertTriggerName(struct["triggerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TriggerConfig[k], "TriggerConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggerConfig
-- <p>Information about notification triggers for the deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * triggerEvents [TriggerEventTypeList] <p>The event type or types for which notifications are triggered.</p>
-- * triggerTargetArn [TriggerTargetArn] <p>The ARN of the Amazon Simple Notification Service topic through which notifications about deployment or instance events are sent.</p>
-- * triggerName [TriggerName] <p>The name of the notification trigger.</p>
-- @return TriggerConfig structure as a key-value pair table
function M.TriggerConfig(args)
	assert(args, "You must provide an argument table when creating TriggerConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["triggerEvents"] = args["triggerEvents"],
		["triggerTargetArn"] = args["triggerTargetArn"],
		["triggerName"] = args["triggerName"],
	}
	asserts.AssertTriggerConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OnPremisesTagSet = { ["onPremisesTagSetList"] = true, nil }

function asserts.AssertOnPremisesTagSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OnPremisesTagSet to be of type 'table'")
	if struct["onPremisesTagSetList"] then asserts.AssertOnPremisesTagSetList(struct["onPremisesTagSetList"]) end
	for k,_ in pairs(struct) do
		assert(keys.OnPremisesTagSet[k], "OnPremisesTagSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OnPremisesTagSet
-- <p>Information about groups of on-premises instance tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * onPremisesTagSetList [OnPremisesTagSetList] <p>A list containing other lists of on-premises instance tag groups. In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.</p>
-- @return OnPremisesTagSet structure as a key-value pair table
function M.OnPremisesTagSet(args)
	assert(args, "You must provide an argument table when creating OnPremisesTagSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["onPremisesTagSetList"] = args["onPremisesTagSetList"],
	}
	asserts.AssertOnPremisesTagSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTriggerConfigException = { nil }

function asserts.AssertInvalidTriggerConfigException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTriggerConfigException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTriggerConfigException[k], "InvalidTriggerConfigException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTriggerConfigException
-- <p>The trigger was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTriggerConfigException structure as a key-value pair table
function M.InvalidTriggerConfigException(args)
	assert(args, "You must provide an argument table when creating InvalidTriggerConfigException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTriggerConfigException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingGroup = { ["hook"] = true, ["name"] = true, nil }

function asserts.AssertAutoScalingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroup to be of type 'table'")
	if struct["hook"] then asserts.AssertAutoScalingGroupHook(struct["hook"]) end
	if struct["name"] then asserts.AssertAutoScalingGroupName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingGroup[k], "AutoScalingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroup
-- <p>Information about an Auto Scaling group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * hook [AutoScalingGroupHook] <p>An Auto Scaling lifecycle event hook name.</p>
-- * name [AutoScalingGroupName] <p>The Auto Scaling group name.</p>
-- @return AutoScalingGroup structure as a key-value pair table
function M.AutoScalingGroup(args)
	assert(args, "You must provide an argument table when creating AutoScalingGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["hook"] = args["hook"],
		["name"] = args["name"],
	}
	asserts.AssertAutoScalingGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedActionForDeploymentTypeException = { nil }

function asserts.AssertUnsupportedActionForDeploymentTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedActionForDeploymentTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedActionForDeploymentTypeException[k], "UnsupportedActionForDeploymentTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedActionForDeploymentTypeException
-- <p>A call was submitted that is not supported for the specified deployment type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnsupportedActionForDeploymentTypeException structure as a key-value pair table
function M.UnsupportedActionForDeploymentTypeException(args)
	assert(args, "You must provide an argument table when creating UnsupportedActionForDeploymentTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnsupportedActionForDeploymentTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentStyle = { ["deploymentType"] = true, ["deploymentOption"] = true, nil }

function asserts.AssertDeploymentStyle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentStyle to be of type 'table'")
	if struct["deploymentType"] then asserts.AssertDeploymentType(struct["deploymentType"]) end
	if struct["deploymentOption"] then asserts.AssertDeploymentOption(struct["deploymentOption"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentStyle[k], "DeploymentStyle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentStyle
-- <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentType [DeploymentType] <p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>
-- * deploymentOption [DeploymentOption] <p>Indicates whether to route deployment traffic behind a load balancer.</p>
-- @return DeploymentStyle structure as a key-value pair table
function M.DeploymentStyle(args)
	assert(args, "You must provide an argument table when creating DeploymentStyle")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentType"] = args["deploymentType"],
		["deploymentOption"] = args["deploymentOption"],
	}
	asserts.AssertDeploymentStyle(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidIamSessionArnException = { nil }

function asserts.AssertInvalidIamSessionArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIamSessionArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidIamSessionArnException[k], "InvalidIamSessionArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIamSessionArnException
-- <p>The IAM session ARN was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidIamSessionArnException structure as a key-value pair table
function M.InvalidIamSessionArnException(args)
	assert(args, "You must provide an argument table when creating InvalidIamSessionArnException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidIamSessionArnException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentDoesNotExistException = { nil }

function asserts.AssertDeploymentDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentDoesNotExistException[k], "DeploymentDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentDoesNotExistException
-- <p>The deployment does not exist with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentDoesNotExistException structure as a key-value pair table
function M.DeploymentDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating DeploymentDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentConfigNameException = { nil }

function asserts.AssertInvalidDeploymentConfigNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentConfigNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentConfigNameException[k], "InvalidDeploymentConfigNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentConfigNameException
-- <p>The deployment configuration name was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentConfigNameException structure as a key-value pair table
function M.InvalidDeploymentConfigNameException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentConfigNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentConfigNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkipWaitTimeForInstanceTerminationInput = { ["deploymentId"] = true, nil }

function asserts.AssertSkipWaitTimeForInstanceTerminationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkipWaitTimeForInstanceTerminationInput to be of type 'table'")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkipWaitTimeForInstanceTerminationInput[k], "SkipWaitTimeForInstanceTerminationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkipWaitTimeForInstanceTerminationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>The ID of the blue/green deployment for which you want to skip the instance termination wait time.</p>
-- @return SkipWaitTimeForInstanceTerminationInput structure as a key-value pair table
function M.SkipWaitTimeForInstanceTerminationInput(args)
	assert(args, "You must provide an argument table when creating SkipWaitTimeForInstanceTerminationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertSkipWaitTimeForInstanceTerminationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationRevisionsInput = { ["applicationName"] = true, ["s3KeyPrefix"] = true, ["s3Bucket"] = true, ["sortBy"] = true, ["nextToken"] = true, ["deployed"] = true, ["sortOrder"] = true, nil }

function asserts.AssertListApplicationRevisionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationRevisionsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["s3KeyPrefix"] then asserts.AssertS3Key(struct["s3KeyPrefix"]) end
	if struct["s3Bucket"] then asserts.AssertS3Bucket(struct["s3Bucket"]) end
	if struct["sortBy"] then asserts.AssertApplicationRevisionSortBy(struct["sortBy"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["deployed"] then asserts.AssertListStateFilterAction(struct["deployed"]) end
	if struct["sortOrder"] then asserts.AssertSortOrder(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationRevisionsInput[k], "ListApplicationRevisionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationRevisionsInput
-- <p>Represents the input of a ListApplicationRevisions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * s3KeyPrefix [S3Key] <p>A key prefix for the set of Amazon S3 objects to limit the search for revisions.</p>
-- * s3Bucket [S3Bucket] <p>An Amazon S3 bucket name to limit the search for revisions.</p> <p>If set to null, all of the user's buckets will be searched.</p>
-- * sortBy [ApplicationRevisionSortBy] <p>The column name to use to sort the list results:</p> <ul> <li> <p>registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.</p> </li> <li> <p>firstUsedTime: Sort by the time the revisions were first used in a deployment.</p> </li> <li> <p>lastUsedTime: Sort by the time the revisions were last used in a deployment.</p> </li> </ul> <p>If not specified or set to null, the results will be returned in an arbitrary order.</p>
-- * nextToken [NextToken] <p>An identifier returned from the previous list application revisions call. It can be used to return the next set of applications in the list.</p>
-- * deployed [ListStateFilterAction] <p>Whether to list revisions based on whether the revision is the target revision of an deployment group:</p> <ul> <li> <p>include: List revisions that are target revisions of a deployment group.</p> </li> <li> <p>exclude: Do not list revisions that are target revisions of a deployment group.</p> </li> <li> <p>ignore: List all revisions.</p> </li> </ul>
-- * sortOrder [SortOrder] <p>The order in which to sort the list results:</p> <ul> <li> <p>ascending: ascending order.</p> </li> <li> <p>descending: descending order.</p> </li> </ul> <p>If not specified, the results will be sorted in ascending order.</p> <p>If set to null, the results will be sorted in an arbitrary order.</p>
-- Required key: applicationName
-- @return ListApplicationRevisionsInput structure as a key-value pair table
function M.ListApplicationRevisionsInput(args)
	assert(args, "You must provide an argument table when creating ListApplicationRevisionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["s3KeyPrefix"] = args["s3KeyPrefix"],
		["s3Bucket"] = args["s3Bucket"],
		["sortBy"] = args["sortBy"],
		["nextToken"] = args["nextToken"],
		["deployed"] = args["deployed"],
		["sortOrder"] = args["sortOrder"],
	}
	asserts.AssertListApplicationRevisionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoRollbackConfiguration = { ["enabled"] = true, ["events"] = true, nil }

function asserts.AssertAutoRollbackConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoRollbackConfiguration to be of type 'table'")
	if struct["enabled"] then asserts.AssertBoolean(struct["enabled"]) end
	if struct["events"] then asserts.AssertAutoRollbackEventsList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoRollbackConfiguration[k], "AutoRollbackConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoRollbackConfiguration
-- <p>Information about a configuration for automatically rolling back to a previous version of an application revision when a deployment doesn't complete successfully.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * enabled [Boolean] <p>Indicates whether a defined automatic rollback configuration is currently enabled.</p>
-- * events [AutoRollbackEventsList] <p>The event type or types that trigger a rollback.</p>
-- @return AutoRollbackConfiguration structure as a key-value pair table
function M.AutoRollbackConfiguration(args)
	assert(args, "You must provide an argument table when creating AutoRollbackConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["enabled"] = args["enabled"],
		["events"] = args["events"],
	}
	asserts.AssertAutoRollbackConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSortByException = { nil }

function asserts.AssertInvalidSortByException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortByException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSortByException[k], "InvalidSortByException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortByException
-- <p>The column name to sort by is either not present or was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSortByException structure as a key-value pair table
function M.InvalidSortByException(args)
	assert(args, "You must provide an argument table when creating InvalidSortByException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSortByException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenericRevisionInfo = { ["lastUsedTime"] = true, ["firstUsedTime"] = true, ["registerTime"] = true, ["description"] = true, ["deploymentGroups"] = true, nil }

function asserts.AssertGenericRevisionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenericRevisionInfo to be of type 'table'")
	if struct["lastUsedTime"] then asserts.AssertTimestamp(struct["lastUsedTime"]) end
	if struct["firstUsedTime"] then asserts.AssertTimestamp(struct["firstUsedTime"]) end
	if struct["registerTime"] then asserts.AssertTimestamp(struct["registerTime"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["deploymentGroups"] then asserts.AssertDeploymentGroupsList(struct["deploymentGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenericRevisionInfo[k], "GenericRevisionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenericRevisionInfo
-- <p>Information about an application revision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lastUsedTime [Timestamp] <p>When the revision was last used by AWS CodeDeploy.</p>
-- * firstUsedTime [Timestamp] <p>When the revision was first used by AWS CodeDeploy.</p>
-- * registerTime [Timestamp] <p>When the revision was registered with AWS CodeDeploy.</p>
-- * description [Description] <p>A comment about the revision.</p>
-- * deploymentGroups [DeploymentGroupsList] <p>The deployment groups for which this is the current target revision.</p>
-- @return GenericRevisionInfo structure as a key-value pair table
function M.GenericRevisionInfo(args)
	assert(args, "You must provide an argument table when creating GenericRevisionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lastUsedTime"] = args["lastUsedTime"],
		["firstUsedTime"] = args["firstUsedTime"],
		["registerTime"] = args["registerTime"],
		["description"] = args["description"],
		["deploymentGroups"] = args["deploymentGroups"],
	}
	asserts.AssertGenericRevisionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidEC2TagException = { nil }

function asserts.AssertInvalidEC2TagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEC2TagException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEC2TagException[k], "InvalidEC2TagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEC2TagException
-- <p>The tag was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidEC2TagException structure as a key-value pair table
function M.InvalidEC2TagException(args)
	assert(args, "You must provide an argument table when creating InvalidEC2TagException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidEC2TagException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeploymentConfigInput = { ["deploymentConfigName"] = true, nil }

function asserts.AssertDeleteDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeploymentConfigInput[k], "DeleteDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentConfigInput
-- <p>Represents the input of a DeleteDeploymentConfig operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p>
-- Required key: deploymentConfigName
-- @return DeleteDeploymentConfigInput structure as a key-value pair table
function M.DeleteDeploymentConfigInput(args)
	assert(args, "You must provide an argument table when creating DeleteDeploymentConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentConfigName"] = args["deploymentConfigName"],
	}
	asserts.AssertDeleteDeploymentConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidLifecycleEventHookExecutionIdException = { nil }

function asserts.AssertInvalidLifecycleEventHookExecutionIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLifecycleEventHookExecutionIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLifecycleEventHookExecutionIdException[k], "InvalidLifecycleEventHookExecutionIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLifecycleEventHookExecutionIdException
-- <p>A lifecycle event hook is invalid. Review the <code>hooks</code> section in your AppSpec file to ensure the lifecycle events and <code>hooks</code> functions are valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidLifecycleEventHookExecutionIdException structure as a key-value pair table
function M.InvalidLifecycleEventHookExecutionIdException(args)
	assert(args, "You must provide an argument table when creating InvalidLifecycleEventHookExecutionIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidLifecycleEventHookExecutionIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentReadyOption = { ["actionOnTimeout"] = true, ["waitTimeInMinutes"] = true, nil }

function asserts.AssertDeploymentReadyOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentReadyOption to be of type 'table'")
	if struct["actionOnTimeout"] then asserts.AssertDeploymentReadyAction(struct["actionOnTimeout"]) end
	if struct["waitTimeInMinutes"] then asserts.AssertDuration(struct["waitTimeInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentReadyOption[k], "DeploymentReadyOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentReadyOption
-- <p>Information about how traffic is rerouted to instances in a replacement environment in a blue/green deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionOnTimeout [DeploymentReadyAction] <p>Information about when to reroute traffic from an original environment to a replacement environment in a blue/green deployment.</p> <ul> <li> <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment.</p> </li> <li> <p>STOP_DEPLOYMENT: Do not register new instances with a load balancer unless traffic rerouting is started using <a>ContinueDeployment</a>. If traffic rerouting is not started before the end of the specified wait period, the deployment status is changed to Stopped.</p> </li> </ul>
-- * waitTimeInMinutes [Duration] <p>The number of minutes to wait before the status of a blue/green deployment changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for actionOnTimeout</p>
-- @return DeploymentReadyOption structure as a key-value pair table
function M.DeploymentReadyOption(args)
	assert(args, "You must provide an argument table when creating DeploymentReadyOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionOnTimeout"] = args["actionOnTimeout"],
		["waitTimeInMinutes"] = args["waitTimeInMinutes"],
	}
	asserts.AssertDeploymentReadyOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleEvent = { ["endTime"] = true, ["status"] = true, ["diagnostics"] = true, ["startTime"] = true, ["lifecycleEventName"] = true, nil }

function asserts.AssertLifecycleEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleEvent to be of type 'table'")
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["status"] then asserts.AssertLifecycleEventStatus(struct["status"]) end
	if struct["diagnostics"] then asserts.AssertDiagnostics(struct["diagnostics"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["lifecycleEventName"] then asserts.AssertLifecycleEventName(struct["lifecycleEventName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleEvent[k], "LifecycleEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleEvent
-- <p>Information about a deployment lifecycle event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endTime [Timestamp] <p>A timestamp indicating when the deployment lifecycle event ended.</p>
-- * status [LifecycleEventStatus] <p>The deployment lifecycle event status:</p> <ul> <li> <p>Pending: The deployment lifecycle event is pending.</p> </li> <li> <p>InProgress: The deployment lifecycle event is in progress.</p> </li> <li> <p>Succeeded: The deployment lifecycle event ran successfully.</p> </li> <li> <p>Failed: The deployment lifecycle event has failed.</p> </li> <li> <p>Skipped: The deployment lifecycle event has been skipped.</p> </li> <li> <p>Unknown: The deployment lifecycle event is unknown.</p> </li> </ul>
-- * diagnostics [Diagnostics] <p>Diagnostic information about the deployment lifecycle event.</p>
-- * startTime [Timestamp] <p>A timestamp indicating when the deployment lifecycle event started.</p>
-- * lifecycleEventName [LifecycleEventName] <p>The deployment lifecycle event name, such as ApplicationStop, BeforeInstall, AfterInstall, ApplicationStart, or ValidateService.</p>
-- @return LifecycleEvent structure as a key-value pair table
function M.LifecycleEvent(args)
	assert(args, "You must provide an argument table when creating LifecycleEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endTime"] = args["endTime"],
		["status"] = args["status"],
		["diagnostics"] = args["diagnostics"],
		["startTime"] = args["startTime"],
		["lifecycleEventName"] = args["lifecycleEventName"],
	}
	asserts.AssertLifecycleEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlarmsLimitExceededException = { nil }

function asserts.AssertAlarmsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AlarmsLimitExceededException[k], "AlarmsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmsLimitExceededException
-- <p>The maximum number of alarms for a deployment group (10) was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AlarmsLimitExceededException structure as a key-value pair table
function M.AlarmsLimitExceededException(args)
	assert(args, "You must provide an argument table when creating AlarmsLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAlarmsLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceSummary = { ["status"] = true, ["instanceId"] = true, ["lifecycleEvents"] = true, ["deploymentId"] = true, ["lastUpdatedAt"] = true, ["instanceType"] = true, nil }

function asserts.AssertInstanceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSummary to be of type 'table'")
	if struct["status"] then asserts.AssertInstanceStatus(struct["status"]) end
	if struct["instanceId"] then asserts.AssertInstanceId(struct["instanceId"]) end
	if struct["lifecycleEvents"] then asserts.AssertLifecycleEventList(struct["lifecycleEvents"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["lastUpdatedAt"] then asserts.AssertTimestamp(struct["lastUpdatedAt"]) end
	if struct["instanceType"] then asserts.AssertInstanceType(struct["instanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceSummary[k], "InstanceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceSummary
-- <p>Information about an instance in a deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [InstanceStatus] <p>The deployment status for this instance:</p> <ul> <li> <p>Pending: The deployment is pending for this instance.</p> </li> <li> <p>In Progress: The deployment is in progress for this instance.</p> </li> <li> <p>Succeeded: The deployment has succeeded for this instance.</p> </li> <li> <p>Failed: The deployment has failed for this instance.</p> </li> <li> <p>Skipped: The deployment has been skipped for this instance.</p> </li> <li> <p>Unknown: The deployment status is unknown for this instance.</p> </li> </ul>
-- * instanceId [InstanceId] <p>The instance ID.</p>
-- * lifecycleEvents [LifecycleEventList] <p>A list of lifecycle events for this instance.</p>
-- * deploymentId [DeploymentId] <p>The deployment ID.</p>
-- * lastUpdatedAt [Timestamp] <p>A timestamp indicating when the instance information was last updated.</p>
-- * instanceType [InstanceType] <p>Information about which environment an instance belongs to in a blue/green deployment.</p> <ul> <li> <p>BLUE: The instance is part of the original environment.</p> </li> <li> <p>GREEN: The instance is part of the replacement environment.</p> </li> </ul>
-- @return InstanceSummary structure as a key-value pair table
function M.InstanceSummary(args)
	assert(args, "You must provide an argument table when creating InstanceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["instanceId"] = args["instanceId"],
		["lifecycleEvents"] = args["lifecycleEvents"],
		["deploymentId"] = args["deploymentId"],
		["lastUpdatedAt"] = args["lastUpdatedAt"],
		["instanceType"] = args["instanceType"],
	}
	asserts.AssertInstanceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LastDeploymentInfo = { ["status"] = true, ["deploymentId"] = true, ["endTime"] = true, ["createTime"] = true, nil }

function asserts.AssertLastDeploymentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastDeploymentInfo to be of type 'table'")
	if struct["status"] then asserts.AssertDeploymentStatus(struct["status"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.LastDeploymentInfo[k], "LastDeploymentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastDeploymentInfo
-- <p>Information about the most recent attempted or successful deployment to a deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DeploymentStatus] <p>The status of the most recent deployment.</p>
-- * deploymentId [DeploymentId] <p>The deployment ID.</p>
-- * endTime [Timestamp] <p>A timestamp indicating when the most recent deployment to the deployment group completed.</p>
-- * createTime [Timestamp] <p>A timestamp indicating when the most recent deployment to the deployment group started.</p>
-- @return LastDeploymentInfo structure as a key-value pair table
function M.LastDeploymentInfo(args)
	assert(args, "You must provide an argument table when creating LastDeploymentInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["deploymentId"] = args["deploymentId"],
		["endTime"] = args["endTime"],
		["createTime"] = args["createTime"],
	}
	asserts.AssertLastDeploymentInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidBucketNameFilterException = { nil }

function asserts.AssertInvalidBucketNameFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBucketNameFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBucketNameFilterException[k], "InvalidBucketNameFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBucketNameFilterException
-- <p>The bucket name either doesn't exist or was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBucketNameFilterException structure as a key-value pair table
function M.InvalidBucketNameFilterException(args)
	assert(args, "You must provide an argument table when creating InvalidBucketNameFilterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidBucketNameFilterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleHookLimitExceededException = { nil }

function asserts.AssertLifecycleHookLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleHookLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LifecycleHookLimitExceededException[k], "LifecycleHookLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleHookLimitExceededException
-- <p>The limit for lifecycle hooks was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LifecycleHookLimitExceededException structure as a key-value pair table
function M.LifecycleHookLimitExceededException(args)
	assert(args, "You must provide an argument table when creating LifecycleHookLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertLifecycleHookLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidUpdateOutdatedInstancesOnlyValueException = { nil }

function asserts.AssertInvalidUpdateOutdatedInstancesOnlyValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUpdateOutdatedInstancesOnlyValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidUpdateOutdatedInstancesOnlyValueException[k], "InvalidUpdateOutdatedInstancesOnlyValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUpdateOutdatedInstancesOnlyValueException
-- <p>The UpdateOutdatedInstancesOnly value is invalid. For AWS Lambda deployments, <code>false</code> is expected. For EC2/On-premises deployments, <code>true</code> or <code>false</code> is expected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidUpdateOutdatedInstancesOnlyValueException structure as a key-value pair table
function M.InvalidUpdateOutdatedInstancesOnlyValueException(args)
	assert(args, "You must provide an argument table when creating InvalidUpdateOutdatedInstancesOnlyValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidUpdateOutdatedInstancesOnlyValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RawString = { ["content"] = true, ["sha256"] = true, nil }

function asserts.AssertRawString(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RawString to be of type 'table'")
	if struct["content"] then asserts.AssertRawStringContent(struct["content"]) end
	if struct["sha256"] then asserts.AssertRawStringSha256(struct["sha256"]) end
	for k,_ in pairs(struct) do
		assert(keys.RawString[k], "RawString contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RawString
-- <p>A revision for an AWS Lambda deployment that is a YAML-formatted or JSON-formatted string. For AWS Lambda deployments, the revision is the same as the AppSpec file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * content [RawStringContent] <p>The YAML-formatted or JSON-formatted revision string. It includes information about which Lambda function to update and optional Lambda functions that validate deployment lifecycle events.</p>
-- * sha256 [RawStringSha256] <p>The SHA256 hash value of the revision that is specified as a RawString.</p>
-- @return RawString structure as a key-value pair table
function M.RawString(args)
	assert(args, "You must provide an argument table when creating RawString")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["content"] = args["content"],
		["sha256"] = args["sha256"],
	}
	asserts.AssertRawString(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentGroupsInput = { ["applicationName"] = true, ["deploymentGroupNames"] = true, nil }

function asserts.AssertBatchGetDeploymentGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentGroupsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupNames"], "Expected key deploymentGroupNames to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupNames"] then asserts.AssertDeploymentGroupsList(struct["deploymentGroupNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentGroupsInput[k], "BatchGetDeploymentGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentGroupsInput
-- <p>Represents the input of a BatchGetDeploymentGroups operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * deploymentGroupNames [DeploymentGroupsList] <p>The deployment groups' names.</p>
-- Required key: applicationName
-- Required key: deploymentGroupNames
-- @return BatchGetDeploymentGroupsInput structure as a key-value pair table
function M.BatchGetDeploymentGroupsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentGroupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["deploymentGroupNames"] = args["deploymentGroupNames"],
	}
	asserts.AssertBatchGetDeploymentGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetApplicationsOutput = { ["applicationsInfo"] = true, nil }

function asserts.AssertBatchGetApplicationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationsOutput to be of type 'table'")
	if struct["applicationsInfo"] then asserts.AssertApplicationsInfoList(struct["applicationsInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetApplicationsOutput[k], "BatchGetApplicationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationsOutput
-- <p>Represents the output of a BatchGetApplications operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationsInfo [ApplicationsInfoList] <p>Information about the applications.</p>
-- @return BatchGetApplicationsOutput structure as a key-value pair table
function M.BatchGetApplicationsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetApplicationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationsInfo"] = args["applicationsInfo"],
	}
	asserts.AssertBatchGetApplicationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidFileExistsBehaviorException = { nil }

function asserts.AssertInvalidFileExistsBehaviorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFileExistsBehaviorException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidFileExistsBehaviorException[k], "InvalidFileExistsBehaviorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFileExistsBehaviorException
-- <p>An invalid fileExistsBehavior option was specified to determine how AWS CodeDeploy handles files or directories that already exist in a deployment target location but weren't part of the previous successful deployment. Valid values include "DISALLOW", "OVERWRITE", and "RETAIN".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidFileExistsBehaviorException structure as a key-value pair table
function M.InvalidFileExistsBehaviorException(args)
	assert(args, "You must provide an argument table when creating InvalidFileExistsBehaviorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidFileExistsBehaviorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTimeRangeException = { nil }

function asserts.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTimeRangeException[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- <p>The specified time range was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTimeRangeException structure as a key-value pair table
function M.InvalidTimeRangeException(args)
	assert(args, "You must provide an argument table when creating InvalidTimeRangeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTimeRangeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationInput = { ["applicationName"] = true, ["newApplicationName"] = true, nil }

function asserts.AssertUpdateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationInput to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["newApplicationName"] then asserts.AssertApplicationName(struct["newApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationInput[k], "UpdateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationInput
-- <p>Represents the input of an UpdateApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The current name of the application you want to change.</p>
-- * newApplicationName [ApplicationName] <p>The new name to give the application.</p>
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
		["applicationName"] = args["applicationName"],
		["newApplicationName"] = args["newApplicationName"],
	}
	asserts.AssertUpdateApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IamUserArnAlreadyRegisteredException = { nil }

function asserts.AssertIamUserArnAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamUserArnAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IamUserArnAlreadyRegisteredException[k], "IamUserArnAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamUserArnAlreadyRegisteredException
-- <p>The specified IAM user ARN is already registered with an on-premises instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IamUserArnAlreadyRegisteredException structure as a key-value pair table
function M.IamUserArnAlreadyRegisteredException(args)
	assert(args, "You must provide an argument table when creating IamUserArnAlreadyRegisteredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIamUserArnAlreadyRegisteredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationOutput = { ["application"] = true, nil }

function asserts.AssertGetApplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationOutput to be of type 'table'")
	if struct["application"] then asserts.AssertApplicationInfo(struct["application"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationOutput[k], "GetApplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationOutput
-- <p>Represents the output of a GetApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * application [ApplicationInfo] <p>Information about the application.</p>
-- @return GetApplicationOutput structure as a key-value pair table
function M.GetApplicationOutput(args)
	assert(args, "You must provide an argument table when creating GetApplicationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["application"] = args["application"],
	}
	asserts.AssertGetApplicationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationsInput = { ["nextToken"] = true, nil }

function asserts.AssertListApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsInput[k], "ListApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsInput
-- <p>Represents the input of a ListApplications operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.</p>
-- @return ListApplicationsInput structure as a key-value pair table
function M.ListApplicationsInput(args)
	assert(args, "You must provide an argument table when creating ListApplicationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListApplicationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationDoesNotExistException = { nil }

function asserts.AssertApplicationDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApplicationDoesNotExistException[k], "ApplicationDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDoesNotExistException
-- <p>The application does not exist with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApplicationDoesNotExistException structure as a key-value pair table
function M.ApplicationDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating ApplicationDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApplicationDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetInstances = { ["autoScalingGroups"] = true, ["tagFilters"] = true, ["ec2TagSet"] = true, nil }

function asserts.AssertTargetInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetInstances to be of type 'table'")
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["tagFilters"] then asserts.AssertEC2TagFilterList(struct["tagFilters"]) end
	if struct["ec2TagSet"] then asserts.AssertEC2TagSet(struct["ec2TagSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetInstances[k], "TargetInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetInstances
-- <p>Information about the instances to be used in the replacement environment in a blue/green deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * autoScalingGroups [AutoScalingGroupNameList] <p>The names of one or more Auto Scaling groups to identify a replacement environment for a blue/green deployment.</p>
-- * tagFilters [EC2TagFilterList] <p>The tag filter key, type, and value used to identify Amazon EC2 instances in a replacement environment for a blue/green deployment. Cannot be used in the same call as ec2TagSet.</p>
-- * ec2TagSet [EC2TagSet] <p>Information about the groups of EC2 instance tags that an instance must be identified by in order for it to be included in the replacement environment for a blue/green deployment. Cannot be used in the same call as tagFilters.</p>
-- @return TargetInstances structure as a key-value pair table
function M.TargetInstances(args)
	assert(args, "You must provide an argument table when creating TargetInstances")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["autoScalingGroups"] = args["autoScalingGroups"],
		["tagFilters"] = args["tagFilters"],
		["ec2TagSet"] = args["ec2TagSet"],
	}
	asserts.AssertTargetInstances(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceValidationException = { nil }

function asserts.AssertResourceValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceValidationException[k], "ResourceValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceValidationException
-- <p>The specified resource could not be validated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceValidationException structure as a key-value pair table
function M.ResourceValidationException(args)
	assert(args, "You must provide an argument table when creating ResourceValidationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResourceValidationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOnPremisesInstanceInput = { ["instanceName"] = true, nil }

function asserts.AssertGetOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOnPremisesInstanceInput[k], "GetOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOnPremisesInstanceInput
-- <p>Represents the input of a GetOnPremisesInstance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [InstanceName] <p>The name of the on-premises instance about which to get information.</p>
-- Required key: instanceName
-- @return GetOnPremisesInstanceInput structure as a key-value pair table
function M.GetOnPremisesInstanceInput(args)
	assert(args, "You must provide an argument table when creating GetOnPremisesInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertGetOnPremisesInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidApplicationNameException = { nil }

function asserts.AssertInvalidApplicationNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApplicationNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidApplicationNameException[k], "InvalidApplicationNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApplicationNameException
-- <p>The application name was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidApplicationNameException structure as a key-value pair table
function M.InvalidApplicationNameException(args)
	assert(args, "You must provide an argument table when creating InvalidApplicationNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidApplicationNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationInfo = { ["applicationName"] = true, ["computePlatform"] = true, ["linkedToGitHub"] = true, ["gitHubAccountName"] = true, ["applicationId"] = true, ["createTime"] = true, nil }

function asserts.AssertApplicationInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationInfo to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	if struct["linkedToGitHub"] then asserts.AssertBoolean(struct["linkedToGitHub"]) end
	if struct["gitHubAccountName"] then asserts.AssertGitHubAccountTokenName(struct["gitHubAccountName"]) end
	if struct["applicationId"] then asserts.AssertApplicationId(struct["applicationId"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationInfo[k], "ApplicationInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationInfo
-- <p>Information about an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The application name.</p>
-- * computePlatform [ComputePlatform] <p>The destination platform type for deployment of the application (<code>Lambda</code> or <code>Server</code>).</p>
-- * linkedToGitHub [Boolean] <p>True if the user has authenticated with GitHub for the specified application; otherwise, false.</p>
-- * gitHubAccountName [GitHubAccountTokenName] <p>The name for a connection to a GitHub account.</p>
-- * applicationId [ApplicationId] <p>The application ID.</p>
-- * createTime [Timestamp] <p>The time at which the application was created.</p>
-- @return ApplicationInfo structure as a key-value pair table
function M.ApplicationInfo(args)
	assert(args, "You must provide an argument table when creating ApplicationInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["computePlatform"] = args["computePlatform"],
		["linkedToGitHub"] = args["linkedToGitHub"],
		["gitHubAccountName"] = args["gitHubAccountName"],
		["applicationId"] = args["applicationId"],
		["createTime"] = args["createTime"],
	}
	asserts.AssertApplicationInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [Value] <p>The tag's value.</p>
-- * Key [Key] <p>The tag's key.</p>
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentsInput = { ["applicationName"] = true, ["createTimeRange"] = true, ["nextToken"] = true, ["deploymentGroupName"] = true, ["includeOnlyStatuses"] = true, nil }

function asserts.AssertListDeploymentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsInput to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["createTimeRange"] then asserts.AssertTimeRange(struct["createTimeRange"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["includeOnlyStatuses"] then asserts.AssertDeploymentStatusList(struct["includeOnlyStatuses"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentsInput[k], "ListDeploymentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsInput
-- <p>Represents the input of a ListDeployments operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * createTimeRange [TimeRange] <p>A time range (start and end) for returning a subset of the list of deployments.</p>
-- * nextToken [NextToken] <p>An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- * includeOnlyStatuses [DeploymentStatusList] <p>A subset of deployments to list by status:</p> <ul> <li> <p>Created: Include created deployments in the resulting list.</p> </li> <li> <p>Queued: Include queued deployments in the resulting list.</p> </li> <li> <p>In Progress: Include in-progress deployments in the resulting list.</p> </li> <li> <p>Succeeded: Include successful deployments in the resulting list.</p> </li> <li> <p>Failed: Include failed deployments in the resulting list.</p> </li> <li> <p>Stopped: Include stopped deployments in the resulting list.</p> </li> </ul>
-- @return ListDeploymentsInput structure as a key-value pair table
function M.ListDeploymentsInput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["createTimeRange"] = args["createTimeRange"],
		["nextToken"] = args["nextToken"],
		["deploymentGroupName"] = args["deploymentGroupName"],
		["includeOnlyStatuses"] = args["includeOnlyStatuses"],
	}
	asserts.AssertListDeploymentsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGitHubAccountTokenNamesOutput = { ["nextToken"] = true, ["tokenNameList"] = true, nil }

function asserts.AssertListGitHubAccountTokenNamesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGitHubAccountTokenNamesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["tokenNameList"] then asserts.AssertGitHubAccountTokenNameList(struct["tokenNameList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGitHubAccountTokenNamesOutput[k], "ListGitHubAccountTokenNamesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGitHubAccountTokenNamesOutput
-- <p>Represents the output of a ListGitHubAccountTokenNames operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent ListGitHubAccountTokenNames call to return the next set of names in the list. </p>
-- * tokenNameList [GitHubAccountTokenNameList] <p>A list of names of connections to GitHub accounts.</p>
-- @return ListGitHubAccountTokenNamesOutput structure as a key-value pair table
function M.ListGitHubAccountTokenNamesOutput(args)
	assert(args, "You must provide an argument table when creating ListGitHubAccountTokenNamesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["tokenNameList"] = args["tokenNameList"],
	}
	asserts.AssertListGitHubAccountTokenNamesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentGroupOutput = { ["deploymentGroupInfo"] = true, nil }

function asserts.AssertGetDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentGroupOutput to be of type 'table'")
	if struct["deploymentGroupInfo"] then asserts.AssertDeploymentGroupInfo(struct["deploymentGroupInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentGroupOutput[k], "GetDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentGroupOutput
-- <p>Represents the output of a GetDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentGroupInfo [DeploymentGroupInfo] <p>Information about the deployment group.</p>
-- @return GetDeploymentGroupOutput structure as a key-value pair table
function M.GetDeploymentGroupOutput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentGroupInfo"] = args["deploymentGroupInfo"],
	}
	asserts.AssertGetDeploymentGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTargetInstancesException = { nil }

function asserts.AssertInvalidTargetInstancesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTargetInstancesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTargetInstancesException[k], "InvalidTargetInstancesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTargetInstancesException
-- <p>The target instance configuration is invalid. Possible causes include:</p> <ul> <li> <p>Configuration data for target instances was entered for an in-place deployment.</p> </li> <li> <p>The limit of 10 tags for a tag type was exceeded.</p> </li> <li> <p>The combined length of the tag names exceeded the limit. </p> </li> <li> <p>A specified tag is not currently applied to any instances.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTargetInstancesException structure as a key-value pair table
function M.InvalidTargetInstancesException(args)
	assert(args, "You must provide an argument table when creating InvalidTargetInstancesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTargetInstancesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOperationException = { nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>An invalid operation was detected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOperationException structure as a key-value pair table
function M.InvalidOperationException(args)
	assert(args, "You must provide an argument table when creating InvalidOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidIamUserArnException = { nil }

function asserts.AssertInvalidIamUserArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIamUserArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidIamUserArnException[k], "InvalidIamUserArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIamUserArnException
-- <p>The IAM user ARN was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidIamUserArnException structure as a key-value pair table
function M.InvalidIamUserArnException(args)
	assert(args, "You must provide an argument table when creating InvalidIamUserArnException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidIamUserArnException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentInstancesOutput = { ["instancesSummary"] = true, ["errorMessage"] = true, nil }

function asserts.AssertBatchGetDeploymentInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentInstancesOutput to be of type 'table'")
	if struct["instancesSummary"] then asserts.AssertInstanceSummaryList(struct["instancesSummary"]) end
	if struct["errorMessage"] then asserts.AssertErrorMessage(struct["errorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentInstancesOutput[k], "BatchGetDeploymentInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentInstancesOutput
-- <p>Represents the output of a BatchGetDeploymentInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instancesSummary [InstanceSummaryList] <p>Information about the instance.</p>
-- * errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
-- @return BatchGetDeploymentInstancesOutput structure as a key-value pair table
function M.BatchGetDeploymentInstancesOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instancesSummary"] = args["instancesSummary"],
		["errorMessage"] = args["errorMessage"],
	}
	asserts.AssertBatchGetDeploymentInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentGroupNameException = { nil }

function asserts.AssertInvalidDeploymentGroupNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentGroupNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentGroupNameException[k], "InvalidDeploymentGroupNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentGroupNameException
-- <p>The deployment group name was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentGroupNameException structure as a key-value pair table
function M.InvalidDeploymentGroupNameException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentGroupNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentGroupNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidBlueGreenDeploymentConfigurationException = { nil }

function asserts.AssertInvalidBlueGreenDeploymentConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlueGreenDeploymentConfigurationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBlueGreenDeploymentConfigurationException[k], "InvalidBlueGreenDeploymentConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlueGreenDeploymentConfigurationException
-- <p>The configuration for the blue/green deployment group was provided in an invalid format. For information about deployment configuration format, see <a>CreateDeploymentConfig</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBlueGreenDeploymentConfigurationException structure as a key-value pair table
function M.InvalidBlueGreenDeploymentConfigurationException(args)
	assert(args, "You must provide an argument table when creating InvalidBlueGreenDeploymentConfigurationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidBlueGreenDeploymentConfigurationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeploymentGroupInput = { ["applicationName"] = true, ["autoScalingGroups"] = true, ["loadBalancerInfo"] = true, ["currentDeploymentGroupName"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["triggerConfigurations"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["ec2TagSet"] = true, ["serviceRoleArn"] = true, ["onPremisesTagSet"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["newDeploymentGroupName"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

function asserts.AssertUpdateDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["currentDeploymentGroupName"], "Expected key currentDeploymentGroupName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["loadBalancerInfo"] then asserts.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["currentDeploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["currentDeploymentGroupName"]) end
	if struct["blueGreenDeploymentConfiguration"] then asserts.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["triggerConfigurations"] then asserts.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["alarmConfiguration"] then asserts.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then asserts.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["ec2TagSet"] then asserts.AssertEC2TagSet(struct["ec2TagSet"]) end
	if struct["serviceRoleArn"] then asserts.AssertRole(struct["serviceRoleArn"]) end
	if struct["onPremisesTagSet"] then asserts.AssertOnPremisesTagSet(struct["onPremisesTagSet"]) end
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then asserts.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["newDeploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["newDeploymentGroupName"]) end
	if struct["onPremisesInstanceTagFilters"] then asserts.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeploymentGroupInput[k], "UpdateDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentGroupInput
-- <p>Represents the input of an UpdateDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The application name corresponding to the deployment group to update.</p>
-- * autoScalingGroups [AutoScalingGroupNameList] <p>The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.</p>
-- * loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in a deployment.</p>
-- * currentDeploymentGroupName [DeploymentGroupName] <p>The current name of the deployment group.</p>
-- * blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The replacement deployment configuration name to use, if you want to change it.</p>
-- * triggerConfigurations [TriggerConfigList] <p>Information about triggers to change when the deployment group is updated. For examples, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html">Modify Triggers in an AWS CodeDeploy Deployment Group</a> in the AWS CodeDeploy User Guide.</p>
-- * alarmConfiguration [AlarmConfiguration] <p>Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.</p>
-- * ec2TagFilters [EC2TagFilterList] <p>The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>
-- * ec2TagSet [EC2TagSet] <p>Information about groups of tags applied to on-premises instances. The deployment group will include only EC2 instances identified by all the tag groups.</p>
-- * serviceRoleArn [Role] <p>A replacement ARN for the service role, if you want to change it.</p>
-- * onPremisesTagSet [OnPremisesTagSet] <p>Information about an on-premises instance tag set. The deployment group will include only on-premises instances identified by all the tag groups.</p>
-- * autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information for an automatic rollback configuration that is added or changed when a deployment group is updated.</p>
-- * deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- * newDeploymentGroupName [DeploymentGroupName] <p>The new name of the deployment group, if you want to change it.</p>
-- * onPremisesInstanceTagFilters [TagFilterList] <p>The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>
-- Required key: applicationName
-- Required key: currentDeploymentGroupName
-- @return UpdateDeploymentGroupInput structure as a key-value pair table
function M.UpdateDeploymentGroupInput(args)
	assert(args, "You must provide an argument table when creating UpdateDeploymentGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["autoScalingGroups"] = args["autoScalingGroups"],
		["loadBalancerInfo"] = args["loadBalancerInfo"],
		["currentDeploymentGroupName"] = args["currentDeploymentGroupName"],
		["blueGreenDeploymentConfiguration"] = args["blueGreenDeploymentConfiguration"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["triggerConfigurations"] = args["triggerConfigurations"],
		["alarmConfiguration"] = args["alarmConfiguration"],
		["ec2TagFilters"] = args["ec2TagFilters"],
		["ec2TagSet"] = args["ec2TagSet"],
		["serviceRoleArn"] = args["serviceRoleArn"],
		["onPremisesTagSet"] = args["onPremisesTagSet"],
		["autoRollbackConfiguration"] = args["autoRollbackConfiguration"],
		["deploymentStyle"] = args["deploymentStyle"],
		["newDeploymentGroupName"] = args["newDeploymentGroupName"],
		["onPremisesInstanceTagFilters"] = args["onPremisesInstanceTagFilters"],
	}
	asserts.AssertUpdateDeploymentGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentLimitExceededException = { nil }

function asserts.AssertDeploymentLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentLimitExceededException[k], "DeploymentLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentLimitExceededException
-- <p>The number of allowed deployments was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentLimitExceededException structure as a key-value pair table
function M.DeploymentLimitExceededException(args)
	assert(args, "You must provide an argument table when creating DeploymentLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterApplicationRevisionInput = { ["applicationName"] = true, ["description"] = true, ["revision"] = true, nil }

function asserts.AssertRegisterApplicationRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterApplicationRevisionInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["revision"] then asserts.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterApplicationRevisionInput[k], "RegisterApplicationRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterApplicationRevisionInput
-- <p>Represents the input of a RegisterApplicationRevision operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * description [Description] <p>A comment about the revision.</p>
-- * revision [RevisionLocation] <p>Information about the application revision to register, including type and location.</p>
-- Required key: applicationName
-- Required key: revision
-- @return RegisterApplicationRevisionInput structure as a key-value pair table
function M.RegisterApplicationRevisionInput(args)
	assert(args, "You must provide an argument table when creating RegisterApplicationRevisionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["description"] = args["description"],
		["revision"] = args["revision"],
	}
	asserts.AssertRegisterApplicationRevisionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentIdException = { nil }

function asserts.AssertInvalidDeploymentIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentIdException[k], "InvalidDeploymentIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentIdException
-- <p>At least one of the deployment IDs was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentIdException structure as a key-value pair table
function M.InvalidDeploymentIdException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationRevisionOutput = { ["applicationName"] = true, ["revisionInfo"] = true, ["revision"] = true, nil }

function asserts.AssertGetApplicationRevisionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationRevisionOutput to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["revisionInfo"] then asserts.AssertGenericRevisionInfo(struct["revisionInfo"]) end
	if struct["revision"] then asserts.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationRevisionOutput[k], "GetApplicationRevisionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationRevisionOutput
-- <p>Represents the output of a GetApplicationRevision operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of the application that corresponds to the revision.</p>
-- * revisionInfo [GenericRevisionInfo] <p>General information about the revision.</p>
-- * revision [RevisionLocation] <p>Additional information about the revision, including type and location.</p>
-- @return GetApplicationRevisionOutput structure as a key-value pair table
function M.GetApplicationRevisionOutput(args)
	assert(args, "You must provide an argument table when creating GetApplicationRevisionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["revisionInfo"] = args["revisionInfo"],
		["revision"] = args["revision"],
	}
	asserts.AssertGetApplicationRevisionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecycleEventHookExecutionStatusInput = { ["status"] = true, ["deploymentId"] = true, ["lifecycleEventHookExecutionId"] = true, nil }

function asserts.AssertPutLifecycleEventHookExecutionStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleEventHookExecutionStatusInput to be of type 'table'")
	if struct["status"] then asserts.AssertLifecycleEventStatus(struct["status"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["lifecycleEventHookExecutionId"] then asserts.AssertLifecycleEventHookExecutionId(struct["lifecycleEventHookExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLifecycleEventHookExecutionStatusInput[k], "PutLifecycleEventHookExecutionStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleEventHookExecutionStatusInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [LifecycleEventStatus] <p>The result of a Lambda function that validates a deployment lifecycle event (<code>Succeeded</code> or <code>Failed</code>).</p>
-- * deploymentId [DeploymentId] <p>The ID of the deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event.</p>
-- * lifecycleEventHookExecutionId [LifecycleEventHookExecutionId] <p>The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the <code>hooks</code> section of the AppSpec file.</p>
-- @return PutLifecycleEventHookExecutionStatusInput structure as a key-value pair table
function M.PutLifecycleEventHookExecutionStatusInput(args)
	assert(args, "You must provide an argument table when creating PutLifecycleEventHookExecutionStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["deploymentId"] = args["deploymentId"],
		["lifecycleEventHookExecutionId"] = args["lifecycleEventHookExecutionId"],
	}
	asserts.AssertPutLifecycleEventHookExecutionStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigLimitExceededException = { nil }

function asserts.AssertDeploymentConfigLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigLimitExceededException[k], "DeploymentConfigLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigLimitExceededException
-- <p>The deployment configurations limit was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentConfigLimitExceededException structure as a key-value pair table
function M.DeploymentConfigLimitExceededException(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentConfigLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagSetListLimitExceededException = { nil }

function asserts.AssertTagSetListLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagSetListLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagSetListLimitExceededException[k], "TagSetListLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagSetListLimitExceededException
-- <p>The number of tag groups included in the tag set list exceeded the maximum allowed limit of 3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagSetListLimitExceededException structure as a key-value pair table
function M.TagSetListLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TagSetListLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagSetListLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRoleException = { nil }

function asserts.AssertInvalidRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRoleException[k], "InvalidRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRoleException
-- <p>The service role ARN was specified in an invalid format. Or, if an Auto Scaling group was specified, the specified service role does not grant the appropriate permissions to Auto Scaling.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertInvalidRoleException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRevisionException = { nil }

function asserts.AssertInvalidRevisionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRevisionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRevisionException[k], "InvalidRevisionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRevisionException
-- <p>The revision was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRevisionException structure as a key-value pair table
function M.InvalidRevisionException(args)
	assert(args, "You must provide an argument table when creating InvalidRevisionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidRevisionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceNameAlreadyRegisteredException = { nil }

function asserts.AssertInstanceNameAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNameAlreadyRegisteredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceNameAlreadyRegisteredException[k], "InstanceNameAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNameAlreadyRegisteredException
-- <p>The specified on-premises instance name is already registered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceNameAlreadyRegisteredException structure as a key-value pair table
function M.InstanceNameAlreadyRegisteredException(args)
	assert(args, "You must provide an argument table when creating InstanceNameAlreadyRegisteredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceNameAlreadyRegisteredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetApplicationsInput = { ["applicationNames"] = true, nil }

function asserts.AssertBatchGetApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationsInput to be of type 'table'")
	assert(struct["applicationNames"], "Expected key applicationNames to exist in table")
	if struct["applicationNames"] then asserts.AssertApplicationsList(struct["applicationNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetApplicationsInput[k], "BatchGetApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationsInput
-- <p>Represents the input of a BatchGetApplications operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationNames [ApplicationsList] <p>A list of application names separated by spaces.</p>
-- Required key: applicationNames
-- @return BatchGetApplicationsInput structure as a key-value pair table
function M.BatchGetApplicationsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetApplicationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationNames"] = args["applicationNames"],
	}
	asserts.AssertBatchGetApplicationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceDoesNotExistException = { nil }

function asserts.AssertInstanceDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceDoesNotExistException[k], "InstanceDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceDoesNotExistException
-- <p>The specified instance does not exist in the deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceDoesNotExistException structure as a key-value pair table
function M.InstanceDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating InstanceDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentInstancesInput = { ["instanceStatusFilter"] = true, ["deploymentId"] = true, ["nextToken"] = true, ["instanceTypeFilter"] = true, nil }

function asserts.AssertListDeploymentInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentInstancesInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["instanceStatusFilter"] then asserts.AssertInstanceStatusList(struct["instanceStatusFilter"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["instanceTypeFilter"] then asserts.AssertInstanceTypeList(struct["instanceTypeFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentInstancesInput[k], "ListDeploymentInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentInstancesInput
-- <p>Represents the input of a ListDeploymentInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceStatusFilter [InstanceStatusList] <p>A subset of instances to list by status:</p> <ul> <li> <p>Pending: Include those instance with pending deployments.</p> </li> <li> <p>InProgress: Include those instance where deployments are still in progress.</p> </li> <li> <p>Succeeded: Include those instances with successful deployments.</p> </li> <li> <p>Failed: Include those instance with failed deployments.</p> </li> <li> <p>Skipped: Include those instance with skipped deployments.</p> </li> <li> <p>Unknown: Include those instance with deployments in an unknown state.</p> </li> </ul>
-- * deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- * nextToken [NextToken] <p>An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.</p>
-- * instanceTypeFilter [InstanceTypeList] <p>The set of instances in a blue/green deployment, either those in the original environment ("BLUE") or those in the replacement environment ("GREEN"), for which you want to view instance information.</p>
-- Required key: deploymentId
-- @return ListDeploymentInstancesInput structure as a key-value pair table
function M.ListDeploymentInstancesInput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceStatusFilter"] = args["instanceStatusFilter"],
		["deploymentId"] = args["deploymentId"],
		["nextToken"] = args["nextToken"],
		["instanceTypeFilter"] = args["instanceTypeFilter"],
	}
	asserts.AssertListDeploymentInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationLimitExceededException = { nil }

function asserts.AssertApplicationLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApplicationLimitExceededException[k], "ApplicationLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationLimitExceededException
-- <p>More applications were attempted to be created than are allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApplicationLimitExceededException structure as a key-value pair table
function M.ApplicationLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ApplicationLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApplicationLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInstanceNameException = { nil }

function asserts.AssertInvalidInstanceNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceNameException[k], "InvalidInstanceNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceNameException
-- <p>The specified on-premises instance name was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidInstanceNameException structure as a key-value pair table
function M.InvalidInstanceNameException(args)
	assert(args, "You must provide an argument table when creating InvalidInstanceNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidInstanceNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationNameRequiredException = { nil }

function asserts.AssertApplicationNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApplicationNameRequiredException[k], "ApplicationNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationNameRequiredException
-- <p>The minimum number of required application names was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApplicationNameRequiredException structure as a key-value pair table
function M.ApplicationNameRequiredException(args)
	assert(args, "You must provide an argument table when creating ApplicationNameRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApplicationNameRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentInstanceOutput = { ["instanceSummary"] = true, nil }

function asserts.AssertGetDeploymentInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInstanceOutput to be of type 'table'")
	if struct["instanceSummary"] then asserts.AssertInstanceSummary(struct["instanceSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentInstanceOutput[k], "GetDeploymentInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInstanceOutput
-- <p>Represents the output of a GetDeploymentInstance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceSummary [InstanceSummary] <p>Information about the instance.</p>
-- @return GetDeploymentInstanceOutput structure as a key-value pair table
function M.GetDeploymentInstanceOutput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceSummary"] = args["instanceSummary"],
	}
	asserts.AssertGetDeploymentInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTagFilterException = { nil }

function asserts.AssertInvalidTagFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagFilterException[k], "InvalidTagFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagFilterException
-- <p>The specified tag filter was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTagFilterException structure as a key-value pair table
function M.InvalidTagFilterException(args)
	assert(args, "You must provide an argument table when creating InvalidTagFilterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTagFilterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationNotSupportedException = { nil }

function asserts.AssertOperationNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotSupportedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationNotSupportedException[k], "OperationNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotSupportedException
-- <p>The API used does not support the deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OperationNotSupportedException structure as a key-value pair table
function M.OperationNotSupportedException(args)
	assert(args, "You must provide an argument table when creating OperationNotSupportedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOperationNotSupportedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationInput = { ["applicationName"] = true, ["computePlatform"] = true, nil }

function asserts.AssertCreateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationInput[k], "CreateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationInput
-- <p>Represents the input of a CreateApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of the application. This name must be unique with the applicable IAM user or AWS account.</p>
-- * computePlatform [ComputePlatform] <p> The destination platform type for the deployment (<code>Lambda</code> or <code>Server</code>).</p>
-- Required key: applicationName
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
		["applicationName"] = args["applicationName"],
		["computePlatform"] = args["computePlatform"],
	}
	asserts.AssertCreateApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationOutput = { ["applicationId"] = true, nil }

function asserts.AssertCreateApplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationOutput to be of type 'table'")
	if struct["applicationId"] then asserts.AssertApplicationId(struct["applicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationOutput[k], "CreateApplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationOutput
-- <p>Represents the output of a CreateApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationId [ApplicationId] <p>A unique application ID.</p>
-- @return CreateApplicationOutput structure as a key-value pair table
function M.CreateApplicationOutput(args)
	assert(args, "You must provide an argument table when creating CreateApplicationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationId"] = args["applicationId"],
	}
	asserts.AssertCreateApplicationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentInfo = { ["autoRollbackConfiguration"] = true, ["additionalDeploymentStatusInfo"] = true, ["creator"] = true, ["previousRevision"] = true, ["deploymentStatusMessages"] = true, ["fileExistsBehavior"] = true, ["completeTime"] = true, ["applicationName"] = true, ["deploymentOverview"] = true, ["deploymentId"] = true, ["ignoreApplicationStopFailures"] = true, ["updateOutdatedInstancesOnly"] = true, ["rollbackInfo"] = true, ["targetInstances"] = true, ["revision"] = true, ["status"] = true, ["description"] = true, ["errorInformation"] = true, ["startTime"] = true, ["instanceTerminationWaitTimeStarted"] = true, ["deploymentGroupName"] = true, ["createTime"] = true, ["computePlatform"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["deploymentStyle"] = true, nil }

function asserts.AssertDeploymentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentInfo to be of type 'table'")
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["additionalDeploymentStatusInfo"] then asserts.AssertAdditionalDeploymentStatusInfo(struct["additionalDeploymentStatusInfo"]) end
	if struct["creator"] then asserts.AssertDeploymentCreator(struct["creator"]) end
	if struct["previousRevision"] then asserts.AssertRevisionLocation(struct["previousRevision"]) end
	if struct["deploymentStatusMessages"] then asserts.AssertDeploymentStatusMessageList(struct["deploymentStatusMessages"]) end
	if struct["fileExistsBehavior"] then asserts.AssertFileExistsBehavior(struct["fileExistsBehavior"]) end
	if struct["completeTime"] then asserts.AssertTimestamp(struct["completeTime"]) end
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentOverview"] then asserts.AssertDeploymentOverview(struct["deploymentOverview"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["ignoreApplicationStopFailures"] then asserts.AssertBoolean(struct["ignoreApplicationStopFailures"]) end
	if struct["updateOutdatedInstancesOnly"] then asserts.AssertBoolean(struct["updateOutdatedInstancesOnly"]) end
	if struct["rollbackInfo"] then asserts.AssertRollbackInfo(struct["rollbackInfo"]) end
	if struct["targetInstances"] then asserts.AssertTargetInstances(struct["targetInstances"]) end
	if struct["revision"] then asserts.AssertRevisionLocation(struct["revision"]) end
	if struct["status"] then asserts.AssertDeploymentStatus(struct["status"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["errorInformation"] then asserts.AssertErrorInformation(struct["errorInformation"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["instanceTerminationWaitTimeStarted"] then asserts.AssertBoolean(struct["instanceTerminationWaitTimeStarted"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	if struct["computePlatform"] then asserts.AssertComputePlatform(struct["computePlatform"]) end
	if struct["loadBalancerInfo"] then asserts.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then asserts.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["deploymentStyle"] then asserts.AssertDeploymentStyle(struct["deploymentStyle"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentInfo[k], "DeploymentInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentInfo
-- <p>Information about a deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information about the automatic rollback configuration associated with the deployment.</p>
-- * additionalDeploymentStatusInfo [AdditionalDeploymentStatusInfo] <p>Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.</p>
-- * creator [DeploymentCreator] <p>The means by which the deployment was created:</p> <ul> <li> <p>user: A user created the deployment.</p> </li> <li> <p>autoscaling: Auto Scaling created the deployment.</p> </li> <li> <p>codeDeployRollback: A rollback process created the deployment.</p> </li> </ul>
-- * previousRevision [RevisionLocation] <p>Information about the application revision that was deployed to the deployment group before the most recent successful deployment.</p>
-- * deploymentStatusMessages [DeploymentStatusMessageList] <p>Messages that contain information about the status of a deployment.</p>
-- * fileExistsBehavior [FileExistsBehavior] <p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <ul> <li> <p>DISALLOW: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p>OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p>RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>
-- * completeTime [Timestamp] <p>A timestamp indicating when the deployment was complete.</p>
-- * applicationName [ApplicationName] <p>The application name.</p>
-- * deploymentOverview [DeploymentOverview] <p>A summary of the deployment status of the instances in the deployment.</p>
-- * deploymentId [DeploymentId] <p>The deployment ID.</p>
-- * ignoreApplicationStopFailures [Boolean] <p>If true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.</p> <p>If false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.</p>
-- * updateOutdatedInstancesOnly [Boolean] <p>Indicates whether only instances that are not running the latest application revision are to be deployed to.</p>
-- * rollbackInfo [RollbackInfo] <p>Information about a deployment rollback.</p>
-- * targetInstances [TargetInstances] <p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>
-- * revision [RevisionLocation] <p>Information about the location of stored application artifacts and the service from which to retrieve them.</p>
-- * status [DeploymentStatus] <p>The current state of the deployment as a whole.</p>
-- * description [Description] <p>A comment about the deployment.</p>
-- * errorInformation [ErrorInformation] <p>Information about any error associated with this deployment.</p>
-- * startTime [Timestamp] <p>A timestamp indicating when the deployment was deployed to the deployment group.</p> <p>In some cases, the reported value of the start time may be later than the complete time. This is due to differences in the clock settings of back-end servers that participate in the deployment process.</p>
-- * instanceTerminationWaitTimeStarted [Boolean] <p>Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified; otherwise, 'true' as soon as the termination wait period starts.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The deployment group name.</p>
-- * createTime [Timestamp] <p>A timestamp indicating when the deployment was created.</p>
-- * computePlatform [ComputePlatform] <p>The destination platform type for the deployment (<code>Lambda</code> or <code>Server</code>).</p>
-- * loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in the deployment.</p>
-- * blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for this deployment.</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
-- * deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- @return DeploymentInfo structure as a key-value pair table
function M.DeploymentInfo(args)
	assert(args, "You must provide an argument table when creating DeploymentInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["autoRollbackConfiguration"] = args["autoRollbackConfiguration"],
		["additionalDeploymentStatusInfo"] = args["additionalDeploymentStatusInfo"],
		["creator"] = args["creator"],
		["previousRevision"] = args["previousRevision"],
		["deploymentStatusMessages"] = args["deploymentStatusMessages"],
		["fileExistsBehavior"] = args["fileExistsBehavior"],
		["completeTime"] = args["completeTime"],
		["applicationName"] = args["applicationName"],
		["deploymentOverview"] = args["deploymentOverview"],
		["deploymentId"] = args["deploymentId"],
		["ignoreApplicationStopFailures"] = args["ignoreApplicationStopFailures"],
		["updateOutdatedInstancesOnly"] = args["updateOutdatedInstancesOnly"],
		["rollbackInfo"] = args["rollbackInfo"],
		["targetInstances"] = args["targetInstances"],
		["revision"] = args["revision"],
		["status"] = args["status"],
		["description"] = args["description"],
		["errorInformation"] = args["errorInformation"],
		["startTime"] = args["startTime"],
		["instanceTerminationWaitTimeStarted"] = args["instanceTerminationWaitTimeStarted"],
		["deploymentGroupName"] = args["deploymentGroupName"],
		["createTime"] = args["createTime"],
		["computePlatform"] = args["computePlatform"],
		["loadBalancerInfo"] = args["loadBalancerInfo"],
		["blueGreenDeploymentConfiguration"] = args["blueGreenDeploymentConfiguration"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["deploymentStyle"] = args["deploymentStyle"],
	}
	asserts.AssertDeploymentInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerInfo = { ["elbInfoList"] = true, ["targetGroupInfoList"] = true, nil }

function asserts.AssertLoadBalancerInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerInfo to be of type 'table'")
	if struct["elbInfoList"] then asserts.AssertELBInfoList(struct["elbInfoList"]) end
	if struct["targetGroupInfoList"] then asserts.AssertTargetGroupInfoList(struct["targetGroupInfoList"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerInfo[k], "LoadBalancerInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerInfo
-- <p>Information about the Elastic Load Balancing load balancer or target group used in a deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * elbInfoList [ELBInfoList] <p>An array containing information about the load balancer to use for load balancing in a deployment. In Elastic Load Balancing, load balancers are used with Classic Load Balancers.</p> <note> <p> Adding more than one load balancer to the array is not supported. </p> </note>
-- * targetGroupInfoList [TargetGroupInfoList] <p>An array containing information about the target group to use for load balancing in a deployment. In Elastic Load Balancing, target groups are used with Application Load Balancers.</p> <note> <p> Adding more than one target group to the array is not supported. </p> </note>
-- @return LoadBalancerInfo structure as a key-value pair table
function M.LoadBalancerInfo(args)
	assert(args, "You must provide an argument table when creating LoadBalancerInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["elbInfoList"] = args["elbInfoList"],
		["targetGroupInfoList"] = args["targetGroupInfoList"],
	}
	asserts.AssertLoadBalancerInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevisionRequiredException = { nil }

function asserts.AssertRevisionRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RevisionRequiredException[k], "RevisionRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionRequiredException
-- <p>The revision ID was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RevisionRequiredException structure as a key-value pair table
function M.RevisionRequiredException(args)
	assert(args, "You must provide an argument table when creating RevisionRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRevisionRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagFilter = { ["Type"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	if struct["Type"] then asserts.AssertTagFilterType(struct["Type"]) end
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagFilter[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- <p>Information about an on-premises instance tag filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [TagFilterType] <p>The on-premises instance tag filter type:</p> <ul> <li> <p>KEY_ONLY: Key only.</p> </li> <li> <p>VALUE_ONLY: Value only.</p> </li> <li> <p>KEY_AND_VALUE: Key and value.</p> </li> </ul>
-- * Value [Value] <p>The on-premises instance tag filter value.</p>
-- * Key [Key] <p>The on-premises instance tag filter key.</p>
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
		["Type"] = args["Type"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceLimitExceededException = { nil }

function asserts.AssertInstanceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceLimitExceededException[k], "InstanceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceLimitExceededException
-- <p>The maximum number of allowed on-premises instances in a single call was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceLimitExceededException structure as a key-value pair table
function M.InstanceLimitExceededException(args)
	assert(args, "You must provide an argument table when creating InstanceLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidTrafficRoutingConfigurationException = { nil }

function asserts.AssertInvalidTrafficRoutingConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTrafficRoutingConfigurationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTrafficRoutingConfigurationException[k], "InvalidTrafficRoutingConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTrafficRoutingConfigurationException
-- <p> The configuration that specifies how traffic is routed during a deployment is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidTrafficRoutingConfigurationException structure as a key-value pair table
function M.InvalidTrafficRoutingConfigurationException(args)
	assert(args, "You must provide an argument table when creating InvalidTrafficRoutingConfigurationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidTrafficRoutingConfigurationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceInfo = { ["instanceArn"] = true, ["iamSessionArn"] = true, ["tags"] = true, ["registerTime"] = true, ["iamUserArn"] = true, ["deregisterTime"] = true, ["instanceName"] = true, nil }

function asserts.AssertInstanceInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInfo to be of type 'table'")
	if struct["instanceArn"] then asserts.AssertInstanceArn(struct["instanceArn"]) end
	if struct["iamSessionArn"] then asserts.AssertIamSessionArn(struct["iamSessionArn"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["registerTime"] then asserts.AssertTimestamp(struct["registerTime"]) end
	if struct["iamUserArn"] then asserts.AssertIamUserArn(struct["iamUserArn"]) end
	if struct["deregisterTime"] then asserts.AssertTimestamp(struct["deregisterTime"]) end
	if struct["instanceName"] then asserts.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceInfo[k], "InstanceInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInfo
-- <p>Information about an on-premises instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceArn [InstanceArn] <p>The ARN of the on-premises instance.</p>
-- * iamSessionArn [IamSessionArn] <p>The ARN of the IAM session associated with the on-premises instance.</p>
-- * tags [TagList] <p>The tags currently associated with the on-premises instance.</p>
-- * registerTime [Timestamp] <p>The time at which the on-premises instance was registered.</p>
-- * iamUserArn [IamUserArn] <p>The IAM user ARN associated with the on-premises instance.</p>
-- * deregisterTime [Timestamp] <p>If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.</p>
-- * instanceName [InstanceName] <p>The name of the on-premises instance.</p>
-- @return InstanceInfo structure as a key-value pair table
function M.InstanceInfo(args)
	assert(args, "You must provide an argument table when creating InstanceInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceArn"] = args["instanceArn"],
		["iamSessionArn"] = args["iamSessionArn"],
		["tags"] = args["tags"],
		["registerTime"] = args["registerTime"],
		["iamUserArn"] = args["iamUserArn"],
		["deregisterTime"] = args["deregisterTime"],
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertInstanceInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentGroupLimitExceededException = { nil }

function asserts.AssertDeploymentGroupLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupLimitExceededException[k], "DeploymentGroupLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupLimitExceededException
-- <p> The deployment groups limit was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentGroupLimitExceededException structure as a key-value pair table
function M.DeploymentGroupLimitExceededException(args)
	assert(args, "You must provide an argument table when creating DeploymentGroupLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentGroupLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetOnPremisesInstancesOutput = { ["instanceInfos"] = true, nil }

function asserts.AssertBatchGetOnPremisesInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetOnPremisesInstancesOutput to be of type 'table'")
	if struct["instanceInfos"] then asserts.AssertInstanceInfoList(struct["instanceInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetOnPremisesInstancesOutput[k], "BatchGetOnPremisesInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetOnPremisesInstancesOutput
-- <p>Represents the output of a BatchGetOnPremisesInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceInfos [InstanceInfoList] <p>Information about the on-premises instances.</p>
-- @return BatchGetOnPremisesInstancesOutput structure as a key-value pair table
function M.BatchGetOnPremisesInstancesOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetOnPremisesInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceInfos"] = args["instanceInfos"],
	}
	asserts.AssertBatchGetOnPremisesInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentGroupDoesNotExistException = { nil }

function asserts.AssertDeploymentGroupDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupDoesNotExistException[k], "DeploymentGroupDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupDoesNotExistException
-- <p>The named deployment group does not exist with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentGroupDoesNotExistException structure as a key-value pair table
function M.DeploymentGroupDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating DeploymentGroupDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentGroupDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApplicationsOutput = { ["applications"] = true, ["nextToken"] = true, nil }

function asserts.AssertListApplicationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsOutput to be of type 'table'")
	if struct["applications"] then asserts.AssertApplicationsList(struct["applications"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsOutput[k], "ListApplicationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsOutput
-- <p>Represents the output of a ListApplications operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applications [ApplicationsList] <p>A list of application names.</p>
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list applications call to return the next set of applications, will also be returned. in the list.</p>
-- @return ListApplicationsOutput structure as a key-value pair table
function M.ListApplicationsOutput(args)
	assert(args, "You must provide an argument table when creating ListApplicationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applications"] = args["applications"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListApplicationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidLifecycleEventHookExecutionStatusException = { nil }

function asserts.AssertInvalidLifecycleEventHookExecutionStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLifecycleEventHookExecutionStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLifecycleEventHookExecutionStatusException[k], "InvalidLifecycleEventHookExecutionStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLifecycleEventHookExecutionStatusException
-- <p>The result of a Lambda validation function that verifies a lifecycle event is invalid. It should return <code>Succeeded</code> or <code>Failed</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidLifecycleEventHookExecutionStatusException structure as a key-value pair table
function M.InvalidLifecycleEventHookExecutionStatusException(args)
	assert(args, "You must provide an argument table when creating InvalidLifecycleEventHookExecutionStatusException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidLifecycleEventHookExecutionStatusException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeRange = { ["start"] = true, ["end"] = true, nil }

function asserts.AssertTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeRange to be of type 'table'")
	if struct["start"] then asserts.AssertTimestamp(struct["start"]) end
	if struct["end"] then asserts.AssertTimestamp(struct["end"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeRange[k], "TimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeRange
-- <p>Information about a time range.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * start [Timestamp] <p>The start time of the time range.</p> <note> <p>Specify null to leave the start time open-ended.</p> </note>
-- * end [Timestamp] <p>The end time of the time range.</p> <note> <p>Specify null to leave the end time open-ended.</p> </note>
-- @return TimeRange structure as a key-value pair table
function M.TimeRange(args)
	assert(args, "You must provide an argument table when creating TimeRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["start"] = args["start"],
		["end"] = args["end"],
	}
	asserts.AssertTimeRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInstanceIdException = { nil }

function asserts.AssertInvalidInstanceIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceIdException[k], "InvalidInstanceIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceIdException
-- <p> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidInstanceIdException structure as a key-value pair table
function M.InvalidInstanceIdException(args)
	assert(args, "You must provide an argument table when creating InvalidInstanceIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidInstanceIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentIdRequiredException = { nil }

function asserts.AssertDeploymentIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentIdRequiredException[k], "DeploymentIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentIdRequiredException
-- <p>At least one deployment ID must be specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentIdRequiredException structure as a key-value pair table
function M.DeploymentIdRequiredException(args)
	assert(args, "You must provide an argument table when creating DeploymentIdRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentIdRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlueInstanceTerminationOption = { ["action"] = true, ["terminationWaitTimeInMinutes"] = true, nil }

function asserts.AssertBlueInstanceTerminationOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlueInstanceTerminationOption to be of type 'table'")
	if struct["action"] then asserts.AssertInstanceAction(struct["action"]) end
	if struct["terminationWaitTimeInMinutes"] then asserts.AssertDuration(struct["terminationWaitTimeInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlueInstanceTerminationOption[k], "BlueInstanceTerminationOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlueInstanceTerminationOption
-- <p>Information about whether instances in the original environment are terminated when a blue/green deployment is successful.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * action [InstanceAction] <p>The action to take on instances in the original environment after a successful blue/green deployment.</p> <ul> <li> <p>TERMINATE: Instances are terminated after a specified wait time.</p> </li> <li> <p>KEEP_ALIVE: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.</p> </li> </ul>
-- * terminationWaitTimeInMinutes [Duration] <p>The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment. The maximum setting is 2880 minutes (2 days).</p>
-- @return BlueInstanceTerminationOption structure as a key-value pair table
function M.BlueInstanceTerminationOption(args)
	assert(args, "You must provide an argument table when creating BlueInstanceTerminationOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["action"] = args["action"],
		["terminationWaitTimeInMinutes"] = args["terminationWaitTimeInMinutes"],
	}
	asserts.AssertBlueInstanceTerminationOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevisionLocation = { ["revisionType"] = true, ["s3Location"] = true, ["gitHubLocation"] = true, ["string"] = true, nil }

function asserts.AssertRevisionLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionLocation to be of type 'table'")
	if struct["revisionType"] then asserts.AssertRevisionLocationType(struct["revisionType"]) end
	if struct["s3Location"] then asserts.AssertS3Location(struct["s3Location"]) end
	if struct["gitHubLocation"] then asserts.AssertGitHubLocation(struct["gitHubLocation"]) end
	if struct["string"] then asserts.AssertRawString(struct["string"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevisionLocation[k], "RevisionLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionLocation
-- <p>Information about the location of an application revision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * revisionType [RevisionLocationType] <p>The type of application revision:</p> <ul> <li> <p>S3: An application revision stored in Amazon S3.</p> </li> <li> <p>GitHub: An application revision stored in GitHub (EC2/On-premises deployments only)</p> </li> <li> <p>String: A YAML-formatted or JSON-formatted string (AWS Lambda deployments only)</p> </li> </ul>
-- * s3Location [S3Location] <p>Information about the location of a revision stored in Amazon S3. </p>
-- * gitHubLocation [GitHubLocation] <p>Information about the location of application artifacts stored in GitHub.</p>
-- * string [RawString] <p>Information about the location of an AWS Lambda deployment revision stored as a RawString.</p>
-- @return RevisionLocation structure as a key-value pair table
function M.RevisionLocation(args)
	assert(args, "You must provide an argument table when creating RevisionLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["revisionType"] = args["revisionType"],
		["s3Location"] = args["s3Location"],
		["gitHubLocation"] = args["gitHubLocation"],
		["string"] = args["string"],
	}
	asserts.AssertRevisionLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInstanceStatusException = { nil }

function asserts.AssertInvalidInstanceStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceStatusException[k], "InvalidInstanceStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceStatusException
-- <p>The specified instance status does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidInstanceStatusException structure as a key-value pair table
function M.InvalidInstanceStatusException(args)
	assert(args, "You must provide an argument table when creating InvalidInstanceStatusException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidInstanceStatusException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevisionDoesNotExistException = { nil }

function asserts.AssertRevisionDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RevisionDoesNotExistException[k], "RevisionDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionDoesNotExistException
-- <p>The named revision does not exist with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RevisionDoesNotExistException structure as a key-value pair table
function M.RevisionDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating RevisionDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRevisionDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterOnPremisesInstanceInput = { ["instanceName"] = true, nil }

function asserts.AssertDeregisterOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["instanceName"] then asserts.AssertInstanceName(struct["instanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterOnPremisesInstanceInput[k], "DeregisterOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterOnPremisesInstanceInput
-- <p>Represents the input of a DeregisterOnPremisesInstance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceName [InstanceName] <p>The name of the on-premises instance to deregister.</p>
-- Required key: instanceName
-- @return DeregisterOnPremisesInstanceInput structure as a key-value pair table
function M.DeregisterOnPremisesInstanceInput(args)
	assert(args, "You must provide an argument table when creating DeregisterOnPremisesInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceName"] = args["instanceName"],
	}
	asserts.AssertDeregisterOnPremisesInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GitHubAccountTokenDoesNotExistException = { nil }

function asserts.AssertGitHubAccountTokenDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubAccountTokenDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GitHubAccountTokenDoesNotExistException[k], "GitHubAccountTokenDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubAccountTokenDoesNotExistException
-- <p>No GitHub account connection exists with the named specified in the call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GitHubAccountTokenDoesNotExistException structure as a key-value pair table
function M.GitHubAccountTokenDoesNotExistException(args)
	assert(args, "You must provide an argument table when creating GitHubAccountTokenDoesNotExistException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGitHubAccountTokenDoesNotExistException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentsInput = { ["deploymentIds"] = true, nil }

function asserts.AssertBatchGetDeploymentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentsInput to be of type 'table'")
	assert(struct["deploymentIds"], "Expected key deploymentIds to exist in table")
	if struct["deploymentIds"] then asserts.AssertDeploymentsList(struct["deploymentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentsInput[k], "BatchGetDeploymentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentsInput
-- <p>Represents the input of a BatchGetDeployments operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentIds [DeploymentsList] <p>A list of deployment IDs, separated by spaces.</p>
-- Required key: deploymentIds
-- @return BatchGetDeploymentsInput structure as a key-value pair table
function M.BatchGetDeploymentsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentIds"] = args["deploymentIds"],
	}
	asserts.AssertBatchGetDeploymentsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContinueDeploymentInput = { ["deploymentId"] = true, nil }

function asserts.AssertContinueDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueDeploymentInput to be of type 'table'")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinueDeploymentInput[k], "ContinueDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueDeploymentInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>The deployment ID of the blue/green deployment for which you want to start rerouting traffic to the replacement environment.</p>
-- @return ContinueDeploymentInput structure as a key-value pair table
function M.ContinueDeploymentInput(args)
	assert(args, "You must provide an argument table when creating ContinueDeploymentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertContinueDeploymentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentConfigsInput = { ["nextToken"] = true, nil }

function asserts.AssertListDeploymentConfigsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentConfigsInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentConfigsInput[k], "ListDeploymentConfigsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentConfigsInput
-- <p>Represents the input of a ListDeploymentConfigs operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier returned from the previous list deployment configurations call. It can be used to return the next set of deployment configurations in the list. </p>
-- @return ListDeploymentConfigsInput structure as a key-value pair table
function M.ListDeploymentConfigsInput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentConfigsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListDeploymentConfigsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThrottlingException = { nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>An API function was called too frequently.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ThrottlingException structure as a key-value pair table
function M.ThrottlingException(args)
	assert(args, "You must provide an argument table when creating ThrottlingException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertThrottlingException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentInstanceInput = { ["instanceId"] = true, ["deploymentId"] = true, nil }

function asserts.AssertGetDeploymentInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInstanceInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	assert(struct["instanceId"], "Expected key instanceId to exist in table")
	if struct["instanceId"] then asserts.AssertInstanceId(struct["instanceId"]) end
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentInstanceInput[k], "GetDeploymentInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInstanceInput
-- <p>Represents the input of a GetDeploymentInstance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceId [InstanceId] <p>The unique ID of an instance in the deployment group.</p>
-- * deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- Required key: deploymentId
-- Required key: instanceId
-- @return GetDeploymentInstanceInput structure as a key-value pair table
function M.GetDeploymentInstanceInput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceId"] = args["instanceId"],
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertGetDeploymentInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GitHubLocation = { ["commitId"] = true, ["repository"] = true, nil }

function asserts.AssertGitHubLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubLocation to be of type 'table'")
	if struct["commitId"] then asserts.AssertCommitId(struct["commitId"]) end
	if struct["repository"] then asserts.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(keys.GitHubLocation[k], "GitHubLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubLocation
-- <p>Information about the location of application artifacts stored in GitHub.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [CommitId] <p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the application revision.</p>
-- * repository [Repository] <p>The GitHub account and repository pair that stores a reference to the commit that represents the bundled artifacts for the application revision. </p> <p>Specified as account/repository.</p>
-- @return GitHubLocation structure as a key-value pair table
function M.GitHubLocation(args)
	assert(args, "You must provide an argument table when creating GitHubLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["repository"] = args["repository"],
	}
	asserts.AssertGitHubLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentGroupOutput = { ["deploymentGroupId"] = true, nil }

function asserts.AssertCreateDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentGroupOutput to be of type 'table'")
	if struct["deploymentGroupId"] then asserts.AssertDeploymentGroupId(struct["deploymentGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentGroupOutput[k], "CreateDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentGroupOutput
-- <p>Represents the output of a CreateDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentGroupId [DeploymentGroupId] <p>A unique deployment group ID.</p>
-- @return CreateDeploymentGroupOutput structure as a key-value pair table
function M.CreateDeploymentGroupOutput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentGroupId"] = args["deploymentGroupId"],
	}
	asserts.AssertCreateDeploymentGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetApplicationRevisionsOutput = { ["applicationName"] = true, ["errorMessage"] = true, ["revisions"] = true, nil }

function asserts.AssertBatchGetApplicationRevisionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationRevisionsOutput to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["errorMessage"] then asserts.AssertErrorMessage(struct["errorMessage"]) end
	if struct["revisions"] then asserts.AssertRevisionInfoList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetApplicationRevisionsOutput[k], "BatchGetApplicationRevisionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationRevisionsOutput
-- <p>Represents the output of a BatchGetApplicationRevisions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of the application that corresponds to the revisions.</p>
-- * errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
-- * revisions [RevisionInfoList] <p>Additional information about the revisions, including the type and location.</p>
-- @return BatchGetApplicationRevisionsOutput structure as a key-value pair table
function M.BatchGetApplicationRevisionsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetApplicationRevisionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["errorMessage"] = args["errorMessage"],
		["revisions"] = args["revisions"],
	}
	asserts.AssertBatchGetApplicationRevisionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidGitHubAccountTokenNameException = { nil }

function asserts.AssertInvalidGitHubAccountTokenNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGitHubAccountTokenNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidGitHubAccountTokenNameException[k], "InvalidGitHubAccountTokenNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGitHubAccountTokenNameException
-- <p>The format of the specified GitHub account connection name is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidGitHubAccountTokenNameException structure as a key-value pair table
function M.InvalidGitHubAccountTokenNameException(args)
	assert(args, "You must provide an argument table when creating InvalidGitHubAccountTokenNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidGitHubAccountTokenNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevisionInfo = { ["revisionLocation"] = true, ["genericRevisionInfo"] = true, nil }

function asserts.AssertRevisionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionInfo to be of type 'table'")
	if struct["revisionLocation"] then asserts.AssertRevisionLocation(struct["revisionLocation"]) end
	if struct["genericRevisionInfo"] then asserts.AssertGenericRevisionInfo(struct["genericRevisionInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevisionInfo[k], "RevisionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionInfo
-- <p>Information about an application revision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * revisionLocation [RevisionLocation] <p>Information about the location and type of an application revision.</p>
-- * genericRevisionInfo [GenericRevisionInfo] <p>Information about an application revision, including usage details and associated deployment groups.</p>
-- @return RevisionInfo structure as a key-value pair table
function M.RevisionInfo(args)
	assert(args, "You must provide an argument table when creating RevisionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["revisionLocation"] = args["revisionLocation"],
		["genericRevisionInfo"] = args["genericRevisionInfo"],
	}
	asserts.AssertRevisionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentInput = { ["applicationName"] = true, ["autoRollbackConfiguration"] = true, ["description"] = true, ["deploymentConfigName"] = true, ["ignoreApplicationStopFailures"] = true, ["updateOutdatedInstancesOnly"] = true, ["targetInstances"] = true, ["deploymentGroupName"] = true, ["fileExistsBehavior"] = true, ["revision"] = true, nil }

function asserts.AssertCreateDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["ignoreApplicationStopFailures"] then asserts.AssertBoolean(struct["ignoreApplicationStopFailures"]) end
	if struct["updateOutdatedInstancesOnly"] then asserts.AssertBoolean(struct["updateOutdatedInstancesOnly"]) end
	if struct["targetInstances"] then asserts.AssertTargetInstances(struct["targetInstances"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["fileExistsBehavior"] then asserts.AssertFileExistsBehavior(struct["fileExistsBehavior"]) end
	if struct["revision"] then asserts.AssertRevisionLocation(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentInput[k], "CreateDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentInput
-- <p>Represents the input of a CreateDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * autoRollbackConfiguration [AutoRollbackConfiguration] <p>Configuration information for an automatic rollback that is added when a deployment is created.</p>
-- * description [Description] <p>A comment about the deployment.</p>
-- * deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p> <p>If not specified, the value configured in the deployment group will be used as the default. If the deployment group does not have a deployment configuration associated with it, then CodeDeployDefault.OneAtATime will be used by default.</p>
-- * ignoreApplicationStopFailures [Boolean] <p>If set to true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.</p> <p>If set to false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to fail to an instance, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.</p>
-- * updateOutdatedInstancesOnly [Boolean] <p>Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.</p>
-- * targetInstances [TargetInstances] <p>Information about the instances that will belong to the replacement environment in a blue/green deployment.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The name of the deployment group.</p>
-- * fileExistsBehavior [FileExistsBehavior] <p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <p>The fileExistsBehavior parameter takes any of the following values:</p> <ul> <li> <p>DISALLOW: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p>OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p>RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>
-- * revision [RevisionLocation] <p>The type and location of the revision to deploy.</p>
-- Required key: applicationName
-- @return CreateDeploymentInput structure as a key-value pair table
function M.CreateDeploymentInput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["autoRollbackConfiguration"] = args["autoRollbackConfiguration"],
		["description"] = args["description"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["ignoreApplicationStopFailures"] = args["ignoreApplicationStopFailures"],
		["updateOutdatedInstancesOnly"] = args["updateOutdatedInstancesOnly"],
		["targetInstances"] = args["targetInstances"],
		["deploymentGroupName"] = args["deploymentGroupName"],
		["fileExistsBehavior"] = args["fileExistsBehavior"],
		["revision"] = args["revision"],
	}
	asserts.AssertCreateDeploymentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeploymentGroupOutput = { ["hooksNotCleanedUp"] = true, nil }

function asserts.AssertDeleteDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentGroupOutput to be of type 'table'")
	if struct["hooksNotCleanedUp"] then asserts.AssertAutoScalingGroupList(struct["hooksNotCleanedUp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeploymentGroupOutput[k], "DeleteDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentGroupOutput
-- <p>Represents the output of a DeleteDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * hooksNotCleanedUp [AutoScalingGroupList] <p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group.</p>
-- @return DeleteDeploymentGroupOutput structure as a key-value pair table
function M.DeleteDeploymentGroupOutput(args)
	assert(args, "You must provide an argument table when creating DeleteDeploymentGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["hooksNotCleanedUp"] = args["hooksNotCleanedUp"],
	}
	asserts.AssertDeleteDeploymentGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentGroupsOutput = { ["errorMessage"] = true, ["deploymentGroupsInfo"] = true, nil }

function asserts.AssertBatchGetDeploymentGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentGroupsOutput to be of type 'table'")
	if struct["errorMessage"] then asserts.AssertErrorMessage(struct["errorMessage"]) end
	if struct["deploymentGroupsInfo"] then asserts.AssertDeploymentGroupInfoList(struct["deploymentGroupsInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentGroupsOutput[k], "BatchGetDeploymentGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentGroupsOutput
-- <p>Represents the output of a BatchGetDeploymentGroups operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
-- * deploymentGroupsInfo [DeploymentGroupInfoList] <p>Information about the deployment groups.</p>
-- @return BatchGetDeploymentGroupsOutput structure as a key-value pair table
function M.BatchGetDeploymentGroupsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorMessage"] = args["errorMessage"],
		["deploymentGroupsInfo"] = args["deploymentGroupsInfo"],
	}
	asserts.AssertBatchGetDeploymentGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidLoadBalancerInfoException = { nil }

function asserts.AssertInvalidLoadBalancerInfoException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLoadBalancerInfoException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLoadBalancerInfoException[k], "InvalidLoadBalancerInfoException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLoadBalancerInfoException
-- <p>An invalid load balancer name, or no load balancer name, was specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidLoadBalancerInfoException structure as a key-value pair table
function M.InvalidLoadBalancerInfoException(args)
	assert(args, "You must provide an argument table when creating InvalidLoadBalancerInfoException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidLoadBalancerInfoException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigAlreadyExistsException = { nil }

function asserts.AssertDeploymentConfigAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigAlreadyExistsException[k], "DeploymentConfigAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigAlreadyExistsException
-- <p>A deployment configuration with the specified name already exists with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentConfigAlreadyExistsException structure as a key-value pair table
function M.DeploymentConfigAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentConfigAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInstanceTypeException = { nil }

function asserts.AssertInvalidInstanceTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceTypeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceTypeException[k], "InvalidInstanceTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceTypeException
-- <p>An invalid instance type was specified for instances in a blue/green deployment. Valid values include "Blue" for an original environment and "Green" for a replacement environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidInstanceTypeException structure as a key-value pair table
function M.InvalidInstanceTypeException(args)
	assert(args, "You must provide an argument table when creating InvalidInstanceTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidInstanceTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentGroupInput = { ["applicationName"] = true, ["autoScalingGroups"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["triggerConfigurations"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["ec2TagSet"] = true, ["onPremisesTagSet"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["serviceRoleArn"] = true, ["deploymentGroupName"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

function asserts.AssertCreateDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	assert(struct["serviceRoleArn"], "Expected key serviceRoleArn to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["loadBalancerInfo"] then asserts.AssertLoadBalancerInfo(struct["loadBalancerInfo"]) end
	if struct["blueGreenDeploymentConfiguration"] then asserts.AssertBlueGreenDeploymentConfiguration(struct["blueGreenDeploymentConfiguration"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	if struct["triggerConfigurations"] then asserts.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["alarmConfiguration"] then asserts.AssertAlarmConfiguration(struct["alarmConfiguration"]) end
	if struct["ec2TagFilters"] then asserts.AssertEC2TagFilterList(struct["ec2TagFilters"]) end
	if struct["ec2TagSet"] then asserts.AssertEC2TagSet(struct["ec2TagSet"]) end
	if struct["onPremisesTagSet"] then asserts.AssertOnPremisesTagSet(struct["onPremisesTagSet"]) end
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then asserts.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["serviceRoleArn"] then asserts.AssertRole(struct["serviceRoleArn"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["onPremisesInstanceTagFilters"] then asserts.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentGroupInput[k], "CreateDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentGroupInput
-- <p>Represents the input of a CreateDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * autoScalingGroups [AutoScalingGroupNameList] <p>A list of associated Auto Scaling groups.</p>
-- * loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in a deployment.</p>
-- * blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- * deploymentConfigName [DeploymentConfigName] <p>If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.</p> <p>CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn't specified for the deployment or the deployment group.</p> <p>For more information about the predefined deployment configurations in AWS CodeDeploy, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working with Deployment Groups in AWS CodeDeploy</a> in the AWS CodeDeploy User Guide.</p>
-- * triggerConfigurations [TriggerConfigList] <p>Information about triggers to create when the deployment group is created. For examples, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html">Create a Trigger for an AWS CodeDeploy Event</a> in the AWS CodeDeploy User Guide.</p>
-- * alarmConfiguration [AlarmConfiguration] <p>Information to add about Amazon CloudWatch alarms when the deployment group is created.</p>
-- * ec2TagFilters [EC2TagFilterList] <p>The Amazon EC2 tags on which to filter. The deployment group will include EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.</p>
-- * ec2TagSet [EC2TagSet] <p>Information about groups of tags applied to EC2 instances. The deployment group will include only EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilters.</p>
-- * onPremisesTagSet [OnPremisesTagSet] <p>Information about groups of tags applied to on-premises instances. The deployment group will include only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.</p>
-- * autoRollbackConfiguration [AutoRollbackConfiguration] <p>Configuration information for an automatic rollback that is added when a deployment group is created.</p>
-- * deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.</p>
-- * serviceRoleArn [Role] <p>A service role ARN that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The name of a new deployment group for the specified application.</p>
-- * onPremisesInstanceTagFilters [TagFilterList] <p>The on-premises instance tags on which to filter. The deployment group will include on-premises instances with any of the specified tags. Cannot be used in the same call as OnPremisesTagSet.</p>
-- Required key: applicationName
-- Required key: deploymentGroupName
-- Required key: serviceRoleArn
-- @return CreateDeploymentGroupInput structure as a key-value pair table
function M.CreateDeploymentGroupInput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["autoScalingGroups"] = args["autoScalingGroups"],
		["loadBalancerInfo"] = args["loadBalancerInfo"],
		["blueGreenDeploymentConfiguration"] = args["blueGreenDeploymentConfiguration"],
		["deploymentConfigName"] = args["deploymentConfigName"],
		["triggerConfigurations"] = args["triggerConfigurations"],
		["alarmConfiguration"] = args["alarmConfiguration"],
		["ec2TagFilters"] = args["ec2TagFilters"],
		["ec2TagSet"] = args["ec2TagSet"],
		["onPremisesTagSet"] = args["onPremisesTagSet"],
		["autoRollbackConfiguration"] = args["autoRollbackConfiguration"],
		["deploymentStyle"] = args["deploymentStyle"],
		["serviceRoleArn"] = args["serviceRoleArn"],
		["deploymentGroupName"] = args["deploymentGroupName"],
		["onPremisesInstanceTagFilters"] = args["onPremisesInstanceTagFilters"],
	}
	asserts.AssertCreateDeploymentGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentGroupAlreadyExistsException = { nil }

function asserts.AssertDeploymentGroupAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupAlreadyExistsException[k], "DeploymentGroupAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupAlreadyExistsException
-- <p>A deployment group with the specified name already exists with the applicable IAM user or AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentGroupAlreadyExistsException structure as a key-value pair table
function M.DeploymentGroupAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating DeploymentGroupAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentGroupAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetApplicationRevisionsInput = { ["applicationName"] = true, ["revisions"] = true, nil }

function asserts.AssertBatchGetApplicationRevisionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationRevisionsInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["revisions"], "Expected key revisions to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["revisions"] then asserts.AssertRevisionLocationList(struct["revisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetApplicationRevisionsInput[k], "BatchGetApplicationRevisionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationRevisionsInput
-- <p>Represents the input of a BatchGetApplicationRevisions operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application about which to get revision information.</p>
-- * revisions [RevisionLocationList] <p>Information to get about the application revisions, including type and location.</p>
-- Required key: applicationName
-- Required key: revisions
-- @return BatchGetApplicationRevisionsInput structure as a key-value pair table
function M.BatchGetApplicationRevisionsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetApplicationRevisionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["revisions"] = args["revisions"],
	}
	asserts.AssertBatchGetApplicationRevisionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeploymentGroupOutput = { ["hooksNotCleanedUp"] = true, nil }

function asserts.AssertUpdateDeploymentGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentGroupOutput to be of type 'table'")
	if struct["hooksNotCleanedUp"] then asserts.AssertAutoScalingGroupList(struct["hooksNotCleanedUp"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeploymentGroupOutput[k], "UpdateDeploymentGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentGroupOutput
-- <p>Represents the output of an UpdateDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * hooksNotCleanedUp [AutoScalingGroupList] <p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.</p>
-- @return UpdateDeploymentGroupOutput structure as a key-value pair table
function M.UpdateDeploymentGroupOutput(args)
	assert(args, "You must provide an argument table when creating UpdateDeploymentGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["hooksNotCleanedUp"] = args["hooksNotCleanedUp"],
	}
	asserts.AssertUpdateDeploymentGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2TagSet = { ["ec2TagSetList"] = true, nil }

function asserts.AssertEC2TagSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2TagSet to be of type 'table'")
	if struct["ec2TagSetList"] then asserts.AssertEC2TagSetList(struct["ec2TagSetList"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2TagSet[k], "EC2TagSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2TagSet
-- <p>Information about groups of EC2 instance tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ec2TagSetList [EC2TagSetList] <p>A list containing other lists of EC2 instance tag groups. In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.</p>
-- @return EC2TagSet structure as a key-value pair table
function M.EC2TagSet(args)
	assert(args, "You must provide an argument table when creating EC2TagSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ec2TagSetList"] = args["ec2TagSetList"],
	}
	asserts.AssertEC2TagSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleEventAlreadyCompletedException = { nil }

function asserts.AssertLifecycleEventAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleEventAlreadyCompletedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LifecycleEventAlreadyCompletedException[k], "LifecycleEventAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleEventAlreadyCompletedException
-- <p>An attempt to return the status of an already completed lifecycle event occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LifecycleEventAlreadyCompletedException structure as a key-value pair table
function M.LifecycleEventAlreadyCompletedException(args)
	assert(args, "You must provide an argument table when creating LifecycleEventAlreadyCompletedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertLifecycleEventAlreadyCompletedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentConfigsOutput = { ["nextToken"] = true, ["deploymentConfigsList"] = true, nil }

function asserts.AssertListDeploymentConfigsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentConfigsOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentConfigsList"] then asserts.AssertDeploymentConfigsList(struct["deploymentConfigsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentConfigsOutput[k], "ListDeploymentConfigsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentConfigsOutput
-- <p>Represents the output of a ListDeploymentConfigs operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.</p>
-- * deploymentConfigsList [DeploymentConfigsList] <p>A list of deployment configurations, including built-in configurations such as CodeDeployDefault.OneAtATime.</p>
-- @return ListDeploymentConfigsOutput structure as a key-value pair table
function M.ListDeploymentConfigsOutput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentConfigsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["deploymentConfigsList"] = args["deploymentConfigsList"],
	}
	asserts.AssertListDeploymentConfigsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeploymentGroupInput = { ["applicationName"] = true, ["deploymentGroupName"] = true, nil }

function asserts.AssertDeleteDeploymentGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentGroupInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	assert(struct["deploymentGroupName"], "Expected key deploymentGroupName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeploymentGroupInput[k], "DeleteDeploymentGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentGroupInput
-- <p>Represents the input of a DeleteDeploymentGroup operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- * deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- Required key: applicationName
-- Required key: deploymentGroupName
-- @return DeleteDeploymentGroupInput structure as a key-value pair table
function M.DeleteDeploymentGroupInput(args)
	assert(args, "You must provide an argument table when creating DeleteDeploymentGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["deploymentGroupName"] = args["deploymentGroupName"],
	}
	asserts.AssertDeleteDeploymentGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeBasedCanary = { ["canaryPercentage"] = true, ["canaryInterval"] = true, nil }

function asserts.AssertTimeBasedCanary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeBasedCanary to be of type 'table'")
	if struct["canaryPercentage"] then asserts.AssertPercentage(struct["canaryPercentage"]) end
	if struct["canaryInterval"] then asserts.AssertWaitTimeInMins(struct["canaryInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeBasedCanary[k], "TimeBasedCanary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeBasedCanary
-- <p>A configuration that shifts traffic from one version of a Lambda function to another in two increments. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * canaryPercentage [Percentage] <p>The percentage of traffic to shift in the first increment of a <code>TimeBasedCanary</code> deployment.</p>
-- * canaryInterval [WaitTimeInMins] <p>The number of minutes between the first and second traffic shifts of a <code>TimeBasedCanary</code> deployment.</p>
-- @return TimeBasedCanary structure as a key-value pair table
function M.TimeBasedCanary(args)
	assert(args, "You must provide an argument table when creating TimeBasedCanary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["canaryPercentage"] = args["canaryPercentage"],
		["canaryInterval"] = args["canaryInterval"],
	}
	asserts.AssertTimeBasedCanary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDeploymentOutput = { ["status"] = true, ["statusMessage"] = true, nil }

function asserts.AssertStopDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDeploymentOutput to be of type 'table'")
	if struct["status"] then asserts.AssertStopStatus(struct["status"]) end
	if struct["statusMessage"] then asserts.AssertMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDeploymentOutput[k], "StopDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDeploymentOutput
-- <p>Represents the output of a StopDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [StopStatus] <p>The status of the stop deployment operation:</p> <ul> <li> <p>Pending: The stop operation is pending.</p> </li> <li> <p>Succeeded: The stop operation was successful.</p> </li> </ul>
-- * statusMessage [Message] <p>An accompanying status message.</p>
-- @return StopDeploymentOutput structure as a key-value pair table
function M.StopDeploymentOutput(args)
	assert(args, "You must provide an argument table when creating StopDeploymentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["statusMessage"] = args["statusMessage"],
	}
	asserts.AssertStopDeploymentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentOutput = { ["deploymentId"] = true, nil }

function asserts.AssertCreateDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentOutput to be of type 'table'")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentOutput[k], "CreateDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentOutput
-- <p>Represents the output of a CreateDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>A unique deployment ID.</p>
-- @return CreateDeploymentOutput structure as a key-value pair table
function M.CreateDeploymentOutput(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertCreateDeploymentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentsOutput = { ["nextToken"] = true, ["deployments"] = true, nil }

function asserts.AssertListDeploymentsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["deployments"] then asserts.AssertDeploymentsList(struct["deployments"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentsOutput[k], "ListDeploymentsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsOutput
-- <p>Represents the output of a ListDeployments operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.</p>
-- * deployments [DeploymentsList] <p>A list of deployment IDs.</p>
-- @return ListDeploymentsOutput structure as a key-value pair table
function M.ListDeploymentsOutput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["deployments"] = args["deployments"],
	}
	asserts.AssertListDeploymentsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidEC2TagCombinationException = { nil }

function asserts.AssertInvalidEC2TagCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEC2TagCombinationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEC2TagCombinationException[k], "InvalidEC2TagCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEC2TagCombinationException
-- <p>A call was submitted that specified both Ec2TagFilters and Ec2TagSet, but only one of these data types can be used in a single call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidEC2TagCombinationException structure as a key-value pair table
function M.InvalidEC2TagCombinationException(args)
	assert(args, "You must provide an argument table when creating InvalidEC2TagCombinationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidEC2TagCombinationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidMinimumHealthyHostValueException = { nil }

function asserts.AssertInvalidMinimumHealthyHostValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMinimumHealthyHostValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidMinimumHealthyHostValueException[k], "InvalidMinimumHealthyHostValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMinimumHealthyHostValueException
-- <p>The minimum healthy instance value was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidMinimumHealthyHostValueException structure as a key-value pair table
function M.InvalidMinimumHealthyHostValueException(args)
	assert(args, "You must provide an argument table when creating InvalidMinimumHealthyHostValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidMinimumHealthyHostValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidComputePlatformException = { nil }

function asserts.AssertInvalidComputePlatformException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidComputePlatformException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidComputePlatformException[k], "InvalidComputePlatformException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidComputePlatformException
-- <p>The computePlatform is invalid. The computePlatform should be <code>Lambda</code> or <code>Server</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidComputePlatformException structure as a key-value pair table
function M.InvalidComputePlatformException(args)
	assert(args, "You must provide an argument table when creating InvalidComputePlatformException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidComputePlatformException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentsOutput = { ["deploymentsInfo"] = true, nil }

function asserts.AssertBatchGetDeploymentsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentsOutput to be of type 'table'")
	if struct["deploymentsInfo"] then asserts.AssertDeploymentsInfoList(struct["deploymentsInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentsOutput[k], "BatchGetDeploymentsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentsOutput
-- <p>Represents the output of a BatchGetDeployments operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentsInfo [DeploymentsInfoList] <p>Information about the deployments.</p>
-- @return BatchGetDeploymentsOutput structure as a key-value pair table
function M.BatchGetDeploymentsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentsInfo"] = args["deploymentsInfo"],
	}
	asserts.AssertBatchGetDeploymentsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidIgnoreApplicationStopFailuresValueException = { nil }

function asserts.AssertInvalidIgnoreApplicationStopFailuresValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIgnoreApplicationStopFailuresValueException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidIgnoreApplicationStopFailuresValueException[k], "InvalidIgnoreApplicationStopFailuresValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIgnoreApplicationStopFailuresValueException
-- <p>The IgnoreApplicationStopFailures value is invalid. For AWS Lambda deployments, <code>false</code> is expected. For EC2/On-premises deployments, <code>true</code> or <code>false</code> is expected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidIgnoreApplicationStopFailuresValueException structure as a key-value pair table
function M.InvalidIgnoreApplicationStopFailuresValueException(args)
	assert(args, "You must provide an argument table when creating InvalidIgnoreApplicationStopFailuresValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidIgnoreApplicationStopFailuresValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IamArnRequiredException = { nil }

function asserts.AssertIamArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IamArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IamArnRequiredException[k], "IamArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IamArnRequiredException
-- <p>No IAM ARN was included in the request. You must use an IAM session ARN or IAM user ARN in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return IamArnRequiredException structure as a key-value pair table
function M.IamArnRequiredException(args)
	assert(args, "You must provide an argument table when creating IamArnRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertIamArnRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfigNameRequiredException = { nil }

function asserts.AssertDeploymentConfigNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigNameRequiredException[k], "DeploymentConfigNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigNameRequiredException
-- <p>The deployment configuration name was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentConfigNameRequiredException structure as a key-value pair table
function M.DeploymentConfigNameRequiredException(args)
	assert(args, "You must provide an argument table when creating DeploymentConfigNameRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentConfigNameRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentOverview = { ["Skipped"] = true, ["Succeeded"] = true, ["Failed"] = true, ["Ready"] = true, ["InProgress"] = true, ["Pending"] = true, nil }

function asserts.AssertDeploymentOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentOverview to be of type 'table'")
	if struct["Skipped"] then asserts.AssertInstanceCount(struct["Skipped"]) end
	if struct["Succeeded"] then asserts.AssertInstanceCount(struct["Succeeded"]) end
	if struct["Failed"] then asserts.AssertInstanceCount(struct["Failed"]) end
	if struct["Ready"] then asserts.AssertInstanceCount(struct["Ready"]) end
	if struct["InProgress"] then asserts.AssertInstanceCount(struct["InProgress"]) end
	if struct["Pending"] then asserts.AssertInstanceCount(struct["Pending"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentOverview[k], "DeploymentOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentOverview
-- <p>Information about the deployment status of the instances in the deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Skipped [InstanceCount] <p>The number of instances in the deployment in a skipped state.</p>
-- * Succeeded [InstanceCount] <p>The number of instances in the deployment to which revisions have been successfully deployed.</p>
-- * Failed [InstanceCount] <p>The number of instances in the deployment in a failed state.</p>
-- * Ready [InstanceCount] <p>The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.</p>
-- * InProgress [InstanceCount] <p>The number of instances in which the deployment is in progress.</p>
-- * Pending [InstanceCount] <p>The number of instances in the deployment in a pending state.</p>
-- @return DeploymentOverview structure as a key-value pair table
function M.DeploymentOverview(args)
	assert(args, "You must provide an argument table when creating DeploymentOverview")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Skipped"] = args["Skipped"],
		["Succeeded"] = args["Succeeded"],
		["Failed"] = args["Failed"],
		["Ready"] = args["Ready"],
		["InProgress"] = args["InProgress"],
		["Pending"] = args["Pending"],
	}
	asserts.AssertDeploymentOverview(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRegistrationStatusException = { nil }

function asserts.AssertInvalidRegistrationStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRegistrationStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRegistrationStatusException[k], "InvalidRegistrationStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRegistrationStatusException
-- <p>The registration status was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRegistrationStatusException structure as a key-value pair table
function M.InvalidRegistrationStatusException(args)
	assert(args, "You must provide an argument table when creating InvalidRegistrationStatusException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidRegistrationStatusException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GitHubAccountTokenNameRequiredException = { nil }

function asserts.AssertGitHubAccountTokenNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubAccountTokenNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GitHubAccountTokenNameRequiredException[k], "GitHubAccountTokenNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubAccountTokenNameRequiredException
-- <p>The call is missing a required GitHub account connection name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GitHubAccountTokenNameRequiredException structure as a key-value pair table
function M.GitHubAccountTokenNameRequiredException(args)
	assert(args, "You must provide an argument table when creating GitHubAccountTokenNameRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGitHubAccountTokenNameRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlueGreenDeploymentConfiguration = { ["terminateBlueInstancesOnDeploymentSuccess"] = true, ["deploymentReadyOption"] = true, ["greenFleetProvisioningOption"] = true, nil }

function asserts.AssertBlueGreenDeploymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlueGreenDeploymentConfiguration to be of type 'table'")
	if struct["terminateBlueInstancesOnDeploymentSuccess"] then asserts.AssertBlueInstanceTerminationOption(struct["terminateBlueInstancesOnDeploymentSuccess"]) end
	if struct["deploymentReadyOption"] then asserts.AssertDeploymentReadyOption(struct["deploymentReadyOption"]) end
	if struct["greenFleetProvisioningOption"] then asserts.AssertGreenFleetProvisioningOption(struct["greenFleetProvisioningOption"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlueGreenDeploymentConfiguration[k], "BlueGreenDeploymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlueGreenDeploymentConfiguration
-- <p>Information about blue/green deployment options for a deployment group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * terminateBlueInstancesOnDeploymentSuccess [BlueInstanceTerminationOption] <p>Information about whether to terminate instances in the original fleet during a blue/green deployment.</p>
-- * deploymentReadyOption [DeploymentReadyOption] <p>Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.</p>
-- * greenFleetProvisioningOption [GreenFleetProvisioningOption] <p>Information about how instances are provisioned for a replacement environment in a blue/green deployment.</p>
-- @return BlueGreenDeploymentConfiguration structure as a key-value pair table
function M.BlueGreenDeploymentConfiguration(args)
	assert(args, "You must provide an argument table when creating BlueGreenDeploymentConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["terminateBlueInstancesOnDeploymentSuccess"] = args["terminateBlueInstancesOnDeploymentSuccess"],
		["deploymentReadyOption"] = args["deploymentReadyOption"],
		["greenFleetProvisioningOption"] = args["greenFleetProvisioningOption"],
	}
	asserts.AssertBlueGreenDeploymentConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentGroupNameRequiredException = { nil }

function asserts.AssertDeploymentGroupNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentGroupNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupNameRequiredException[k], "DeploymentGroupNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupNameRequiredException
-- <p>The deployment group name was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentGroupNameRequiredException structure as a key-value pair table
function M.DeploymentGroupNameRequiredException(args)
	assert(args, "You must provide an argument table when creating DeploymentGroupNameRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentGroupNameRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Alarm = { ["name"] = true, nil }

function asserts.AssertAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alarm to be of type 'table'")
	if struct["name"] then asserts.AssertAlarmName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Alarm[k], "Alarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alarm
-- <p>Information about an alarm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AlarmName] <p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used only once in a list of alarms.</p>
-- @return Alarm structure as a key-value pair table
function M.Alarm(args)
	assert(args, "You must provide an argument table when creating Alarm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertAlarm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetOnPremisesInstancesInput = { ["instanceNames"] = true, nil }

function asserts.AssertBatchGetOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetOnPremisesInstancesInput to be of type 'table'")
	assert(struct["instanceNames"], "Expected key instanceNames to exist in table")
	if struct["instanceNames"] then asserts.AssertInstanceNameList(struct["instanceNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetOnPremisesInstancesInput[k], "BatchGetOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetOnPremisesInstancesInput
-- <p>Represents the input of a BatchGetOnPremisesInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceNames [InstanceNameList] <p>The names of the on-premises instances about which to get information.</p>
-- Required key: instanceNames
-- @return BatchGetOnPremisesInstancesInput structure as a key-value pair table
function M.BatchGetOnPremisesInstancesInput(args)
	assert(args, "You must provide an argument table when creating BatchGetOnPremisesInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceNames"] = args["instanceNames"],
	}
	asserts.AssertBatchGetOnPremisesInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeBasedLinear = { ["linearInterval"] = true, ["linearPercentage"] = true, nil }

function asserts.AssertTimeBasedLinear(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeBasedLinear to be of type 'table'")
	if struct["linearInterval"] then asserts.AssertWaitTimeInMins(struct["linearInterval"]) end
	if struct["linearPercentage"] then asserts.AssertPercentage(struct["linearPercentage"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeBasedLinear[k], "TimeBasedLinear contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeBasedLinear
-- <p>A configuration that shifts traffic from one version of a Lambda function to another in equal increments, with an equal number of minutes between each increment. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * linearInterval [WaitTimeInMins] <p>The number of minutes between each incremental traffic shift of a <code>TimeBasedLinear</code> deployment.</p>
-- * linearPercentage [Percentage] <p>The percentage of traffic that is shifted at the start of each increment of a <code>TimeBasedLinear</code> deployment.</p>
-- @return TimeBasedLinear structure as a key-value pair table
function M.TimeBasedLinear(args)
	assert(args, "You must provide an argument table when creating TimeBasedLinear")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["linearInterval"] = args["linearInterval"],
		["linearPercentage"] = args["linearPercentage"],
	}
	asserts.AssertTimeBasedLinear(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetDeploymentInstancesInput = { ["deploymentId"] = true, ["instanceIds"] = true, nil }

function asserts.AssertBatchGetDeploymentInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentInstancesInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	assert(struct["instanceIds"], "Expected key instanceIds to exist in table")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	if struct["instanceIds"] then asserts.AssertInstancesList(struct["instanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentInstancesInput[k], "BatchGetDeploymentInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentInstancesInput
-- <p>Represents the input of a BatchGetDeploymentInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- * instanceIds [InstancesList] <p>The unique IDs of instances in the deployment group.</p>
-- Required key: deploymentId
-- Required key: instanceIds
-- @return BatchGetDeploymentInstancesInput structure as a key-value pair table
function M.BatchGetDeploymentInstancesInput(args)
	assert(args, "You must provide an argument table when creating BatchGetDeploymentInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["instanceIds"] = args["instanceIds"],
	}
	asserts.AssertBatchGetDeploymentInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoleRequiredException = { nil }

function asserts.AssertRoleRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RoleRequiredException[k], "RoleRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleRequiredException
-- <p>The role ID was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RoleRequiredException structure as a key-value pair table
function M.RoleRequiredException(args)
	assert(args, "You must provide an argument table when creating RoleRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRoleRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationInput = { ["applicationName"] = true, nil }

function asserts.AssertGetApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationInput[k], "GetApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationInput
-- <p>Represents the input of a GetApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- Required key: applicationName
-- @return GetApplicationInput structure as a key-value pair table
function M.GetApplicationInput(args)
	assert(args, "You must provide an argument table when creating GetApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
	}
	asserts.AssertGetApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MinimumHealthyHosts = { ["type"] = true, ["value"] = true, nil }

function asserts.AssertMinimumHealthyHosts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MinimumHealthyHosts to be of type 'table'")
	if struct["type"] then asserts.AssertMinimumHealthyHostsType(struct["type"]) end
	if struct["value"] then asserts.AssertMinimumHealthyHostsValue(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MinimumHealthyHosts[k], "MinimumHealthyHosts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MinimumHealthyHosts
-- <p>Information about minimum healthy instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [MinimumHealthyHostsType] <p>The minimum healthy instance type:</p> <ul> <li> <p>HOST_COUNT: The minimum number of healthy instance as an absolute value.</p> </li> <li> <p>FLEET_PERCENT: The minimum number of healthy instance as a percentage of the total number of instance in the deployment.</p> </li> </ul> <p>In an example of nine instance, if a HOST_COUNT of six is specified, deploy to up to three instances at a time. The deployment will be successful if six or more instances are deployed to successfully; otherwise, the deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up to five instance at a time. The deployment will be successful if four or more instance are deployed to successfully; otherwise, the deployment fails.</p> <note> <p>In a call to the get deployment configuration operation, CodeDeployDefault.OneAtATime will return a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. (You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy will try to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment still succeeds.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html">AWS CodeDeploy Instance Health</a> in the <i>AWS CodeDeploy User Guide</i>.</p>
-- * value [MinimumHealthyHostsValue] <p>The minimum healthy instance value.</p>
-- @return MinimumHealthyHosts structure as a key-value pair table
function M.MinimumHealthyHosts(args)
	assert(args, "You must provide an argument table when creating MinimumHealthyHosts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["value"] = args["value"],
	}
	asserts.AssertMinimumHealthyHosts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RollbackInfo = { ["rollbackTriggeringDeploymentId"] = true, ["rollbackMessage"] = true, ["rollbackDeploymentId"] = true, nil }

function asserts.AssertRollbackInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RollbackInfo to be of type 'table'")
	if struct["rollbackTriggeringDeploymentId"] then asserts.AssertDeploymentId(struct["rollbackTriggeringDeploymentId"]) end
	if struct["rollbackMessage"] then asserts.AssertDescription(struct["rollbackMessage"]) end
	if struct["rollbackDeploymentId"] then asserts.AssertDeploymentId(struct["rollbackDeploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RollbackInfo[k], "RollbackInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RollbackInfo
-- <p>Information about a deployment rollback.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rollbackTriggeringDeploymentId [DeploymentId] <p>The deployment ID of the deployment that was underway and triggered a rollback deployment because it failed or was stopped.</p>
-- * rollbackMessage [Description] <p>Information describing the status of a deployment rollback; for example, whether the deployment can't be rolled back, is in progress, failed, or succeeded. </p>
-- * rollbackDeploymentId [DeploymentId] <p>The ID of the deployment rollback.</p>
-- @return RollbackInfo structure as a key-value pair table
function M.RollbackInfo(args)
	assert(args, "You must provide an argument table when creating RollbackInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rollbackTriggeringDeploymentId"] = args["rollbackTriggeringDeploymentId"],
		["rollbackMessage"] = args["rollbackMessage"],
		["rollbackDeploymentId"] = args["rollbackDeploymentId"],
	}
	asserts.AssertRollbackInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentInstancesOutput = { ["nextToken"] = true, ["instancesList"] = true, nil }

function asserts.AssertListDeploymentInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentInstancesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["instancesList"] then asserts.AssertInstancesList(struct["instancesList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentInstancesOutput[k], "ListDeploymentInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentInstancesOutput
-- <p>Represents the output of a ListDeploymentInstances operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment instances call to return the next set of deployment instances in the list.</p>
-- * instancesList [InstancesList] <p>A list of instance IDs.</p>
-- @return ListDeploymentInstancesOutput structure as a key-value pair table
function M.ListDeploymentInstancesOutput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["instancesList"] = args["instancesList"],
	}
	asserts.AssertListDeploymentInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Diagnostics = { ["errorCode"] = true, ["scriptName"] = true, ["logTail"] = true, ["message"] = true, nil }

function asserts.AssertDiagnostics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Diagnostics to be of type 'table'")
	if struct["errorCode"] then asserts.AssertLifecycleErrorCode(struct["errorCode"]) end
	if struct["scriptName"] then asserts.AssertScriptName(struct["scriptName"]) end
	if struct["logTail"] then asserts.AssertLogTail(struct["logTail"]) end
	if struct["message"] then asserts.AssertLifecycleMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.Diagnostics[k], "Diagnostics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Diagnostics
-- <p>Diagnostic information about executable scripts that are part of a deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorCode [LifecycleErrorCode] <p>The associated error code:</p> <ul> <li> <p>Success: The specified script ran.</p> </li> <li> <p>ScriptMissing: The specified script was not found in the specified location.</p> </li> <li> <p>ScriptNotExecutable: The specified script is not a recognized executable file type.</p> </li> <li> <p>ScriptTimedOut: The specified script did not finish running in the specified time period.</p> </li> <li> <p>ScriptFailed: The specified script failed to run as expected.</p> </li> <li> <p>UnknownError: The specified script did not run for an unknown reason.</p> </li> </ul>
-- * scriptName [ScriptName] <p>The name of the script.</p>
-- * logTail [LogTail] <p>The last portion of the diagnostic log.</p> <p>If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.</p>
-- * message [LifecycleMessage] <p>The message associated with the error.</p>
-- @return Diagnostics structure as a key-value pair table
function M.Diagnostics(args)
	assert(args, "You must provide an argument table when creating Diagnostics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorCode"] = args["errorCode"],
		["scriptName"] = args["scriptName"],
		["logTail"] = args["logTail"],
		["message"] = args["message"],
	}
	asserts.AssertDiagnostics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterOnPremisesInstanceInput = { ["iamUserArn"] = true, ["instanceName"] = true, ["iamSessionArn"] = true, nil }

function asserts.AssertRegisterOnPremisesInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterOnPremisesInstanceInput to be of type 'table'")
	assert(struct["instanceName"], "Expected key instanceName to exist in table")
	if struct["iamUserArn"] then asserts.AssertIamUserArn(struct["iamUserArn"]) end
	if struct["instanceName"] then asserts.AssertInstanceName(struct["instanceName"]) end
	if struct["iamSessionArn"] then asserts.AssertIamSessionArn(struct["iamSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterOnPremisesInstanceInput[k], "RegisterOnPremisesInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterOnPremisesInstanceInput
-- <p>Represents the input of the register on-premises instance operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * iamUserArn [IamUserArn] <p>The ARN of the IAM user to associate with the on-premises instance.</p>
-- * instanceName [InstanceName] <p>The name of the on-premises instance to register.</p>
-- * iamSessionArn [IamSessionArn] <p>The ARN of the IAM session to associate with the on-premises instance.</p>
-- Required key: instanceName
-- @return RegisterOnPremisesInstanceInput structure as a key-value pair table
function M.RegisterOnPremisesInstanceInput(args)
	assert(args, "You must provide an argument table when creating RegisterOnPremisesInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["iamUserArn"] = args["iamUserArn"],
		["instanceName"] = args["instanceName"],
		["iamSessionArn"] = args["iamSessionArn"],
	}
	asserts.AssertRegisterOnPremisesInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentOutput = { ["deploymentInfo"] = true, nil }

function asserts.AssertGetDeploymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentOutput to be of type 'table'")
	if struct["deploymentInfo"] then asserts.AssertDeploymentInfo(struct["deploymentInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentOutput[k], "GetDeploymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentOutput
-- <p>Represents the output of a GetDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentInfo [DeploymentInfo] <p>Information about the deployment.</p>
-- @return GetDeploymentOutput structure as a key-value pair table
function M.GetDeploymentOutput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentInfo"] = args["deploymentInfo"],
	}
	asserts.AssertGetDeploymentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOnPremisesTagCombinationException = { nil }

function asserts.AssertInvalidOnPremisesTagCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOnPremisesTagCombinationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOnPremisesTagCombinationException[k], "InvalidOnPremisesTagCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOnPremisesTagCombinationException
-- <p>A call was submitted that specified both OnPremisesTagFilters and OnPremisesTagSet, but only one of these data types can be used in a single call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOnPremisesTagCombinationException structure as a key-value pair table
function M.InvalidOnPremisesTagCombinationException(args)
	assert(args, "You must provide an argument table when creating InvalidOnPremisesTagCombinationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidOnPremisesTagCombinationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeploymentGroupsOutput = { ["applicationName"] = true, ["nextToken"] = true, ["deploymentGroups"] = true, nil }

function asserts.AssertListDeploymentGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentGroupsOutput to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["deploymentGroups"] then asserts.AssertDeploymentGroupsList(struct["deploymentGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentGroupsOutput[k], "ListDeploymentGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentGroupsOutput
-- <p>Represents the output of a ListDeploymentGroups operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The application name.</p>
-- * nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.</p>
-- * deploymentGroups [DeploymentGroupsList] <p>A list of corresponding deployment group names.</p>
-- @return ListDeploymentGroupsOutput structure as a key-value pair table
function M.ListDeploymentGroupsOutput(args)
	assert(args, "You must provide an argument table when creating ListDeploymentGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
		["nextToken"] = args["nextToken"],
		["deploymentGroups"] = args["deploymentGroups"],
	}
	asserts.AssertListDeploymentGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeploymentStatusException = { nil }

function asserts.AssertInvalidDeploymentStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeploymentStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeploymentStatusException[k], "InvalidDeploymentStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeploymentStatusException
-- <p>The specified deployment status doesn't exist or cannot be determined.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDeploymentStatusException structure as a key-value pair table
function M.InvalidDeploymentStatusException(args)
	assert(args, "You must provide an argument table when creating InvalidDeploymentStatusException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDeploymentStatusException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAutoScalingGroupException = { nil }

function asserts.AssertInvalidAutoScalingGroupException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutoScalingGroupException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidAutoScalingGroupException[k], "InvalidAutoScalingGroupException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutoScalingGroupException
-- <p>The Auto Scaling group was specified in an invalid format or does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidAutoScalingGroupException structure as a key-value pair table
function M.InvalidAutoScalingGroupException(args)
	assert(args, "You must provide an argument table when creating InvalidAutoScalingGroupException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidAutoScalingGroupException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2TagFilter = { ["Type"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertEC2TagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2TagFilter to be of type 'table'")
	if struct["Type"] then asserts.AssertEC2TagFilterType(struct["Type"]) end
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2TagFilter[k], "EC2TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2TagFilter
-- <p>Information about an EC2 tag filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [EC2TagFilterType] <p>The tag filter type:</p> <ul> <li> <p>KEY_ONLY: Key only.</p> </li> <li> <p>VALUE_ONLY: Value only.</p> </li> <li> <p>KEY_AND_VALUE: Key and value.</p> </li> </ul>
-- * Value [Value] <p>The tag filter value.</p>
-- * Key [Key] <p>The tag filter key.</p>
-- @return EC2TagFilter structure as a key-value pair table
function M.EC2TagFilter(args)
	assert(args, "You must provide an argument table when creating EC2TagFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertEC2TagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescriptionTooLongException = { nil }

function asserts.AssertDescriptionTooLongException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescriptionTooLongException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescriptionTooLongException[k], "DescriptionTooLongException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescriptionTooLongException
-- <p>The description is too long.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescriptionTooLongException structure as a key-value pair table
function M.DescriptionTooLongException(args)
	assert(args, "You must provide an argument table when creating DescriptionTooLongException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescriptionTooLongException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ErrorInformation = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertErrorInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorInformation to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorInformation[k], "ErrorInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorInformation
-- <p>Information about a deployment error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>An accompanying error message.</p>
-- * code [ErrorCode] <p>For information about additional error codes, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html">Error Codes for AWS CodeDeploy</a> in the <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide">AWS CodeDeploy User Guide</a>.</p> <p>The error code:</p> <ul> <li> <p>APPLICATION_MISSING: The application was missing. This error code will most likely be raised if the application is deleted after the deployment is created but before it is started.</p> </li> <li> <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code will most likely be raised if the deployment group is deleted after the deployment is created but before it is started.</p> </li> <li> <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p> </li> <li> <p>IAM_ROLE_PERMISSIONS: The service role does not have the correct permissions.</p> </li> <li> <p>INTERNAL_ERROR: There was an internal error.</p> </li> <li> <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to the Amazon EC2 service.</p> </li> <li> <p>NO_INSTANCES: No instance were specified, or no instance can be found.</p> </li> <li> <p>OVER_MAX_INSTANCES: The maximum number of instance was exceeded.</p> </li> <li> <p>THROTTLED: The operation was throttled because the calling account exceeded the throttling limits of one or more AWS services.</p> </li> <li> <p>TIMEOUT: The deployment has timed out.</p> </li> <li> <p>REVISION_MISSING: The revision ID was missing. This error code will most likely be raised if the revision is deleted after the deployment is created but before it is started.</p> </li> </ul>
-- @return ErrorInformation structure as a key-value pair table
function M.ErrorInformation(args)
	assert(args, "You must provide an argument table when creating ErrorInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertErrorInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecycleEventHookExecutionStatusOutput = { ["lifecycleEventHookExecutionId"] = true, nil }

function asserts.AssertPutLifecycleEventHookExecutionStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecycleEventHookExecutionStatusOutput to be of type 'table'")
	if struct["lifecycleEventHookExecutionId"] then asserts.AssertLifecycleEventHookExecutionId(struct["lifecycleEventHookExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLifecycleEventHookExecutionStatusOutput[k], "PutLifecycleEventHookExecutionStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecycleEventHookExecutionStatusOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecycleEventHookExecutionId [LifecycleEventHookExecutionId] <p>The execution ID of the lifecycle event hook. A hook is specified in the <code>hooks</code> section of the deployment's AppSpec file.</p>
-- @return PutLifecycleEventHookExecutionStatusOutput structure as a key-value pair table
function M.PutLifecycleEventHookExecutionStatusOutput(args)
	assert(args, "You must provide an argument table when creating PutLifecycleEventHookExecutionStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecycleEventHookExecutionId"] = args["lifecycleEventHookExecutionId"],
	}
	asserts.AssertPutLifecycleEventHookExecutionStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentNotStartedException = { nil }

function asserts.AssertDeploymentNotStartedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentNotStartedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeploymentNotStartedException[k], "DeploymentNotStartedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentNotStartedException
-- <p>The specified deployment has not started.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeploymentNotStartedException structure as a key-value pair table
function M.DeploymentNotStartedException(args)
	assert(args, "You must provide an argument table when creating DeploymentNotStartedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeploymentNotStartedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidKeyPrefixFilterException = { nil }

function asserts.AssertInvalidKeyPrefixFilterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyPrefixFilterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidKeyPrefixFilterException[k], "InvalidKeyPrefixFilterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyPrefixFilterException
-- <p>The specified key prefix filter was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidKeyPrefixFilterException structure as a key-value pair table
function M.InvalidKeyPrefixFilterException(args)
	assert(args, "You must provide an argument table when creating InvalidKeyPrefixFilterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidKeyPrefixFilterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationInput = { ["applicationName"] = true, nil }

function asserts.AssertDeleteApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationInput[k], "DeleteApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationInput
-- <p>Represents the input of a DeleteApplication operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- Required key: applicationName
-- @return DeleteApplicationInput structure as a key-value pair table
function M.DeleteApplicationInput(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["applicationName"] = args["applicationName"],
	}
	asserts.AssertDeleteApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchLimitExceededException = { nil }

function asserts.AssertBatchLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchLimitExceededException[k], "BatchLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchLimitExceededException
-- <p>The maximum number of names or IDs allowed for this request (100) was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchLimitExceededException structure as a key-value pair table
function M.BatchLimitExceededException(args)
	assert(args, "You must provide an argument table when creating BatchLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeploymentInput = { ["deploymentId"] = true, nil }

function asserts.AssertGetDeploymentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentInput to be of type 'table'")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then asserts.AssertDeploymentId(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentInput[k], "GetDeploymentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentInput
-- <p>Represents the input of a GetDeployment operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [DeploymentId] <p>A deployment ID associated with the applicable IAM user or AWS account.</p>
-- Required key: deploymentId
-- @return GetDeploymentInput structure as a key-value pair table
function M.GetDeploymentInput(args)
	assert(args, "You must provide an argument table when creating GetDeploymentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertGetDeploymentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGroupInfo = { ["name"] = true, nil }

function asserts.AssertTargetGroupInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGroupInfo to be of type 'table'")
	if struct["name"] then asserts.AssertTargetGroupName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetGroupInfo[k], "TargetGroupInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGroupInfo
-- <p>Information about a target group in Elastic Load Balancing to use in a deployment. Instances are registered as targets in a target group, and traffic is routed to the target group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [TargetGroupName] <p>For blue/green deployments, the name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes. </p>
-- @return TargetGroupInfo structure as a key-value pair table
function M.TargetGroupInfo(args)
	assert(args, "You must provide an argument table when creating TargetGroupInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertTargetGroupInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagLimitExceededException = { nil }

function asserts.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagLimitExceededException[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
-- <p>The maximum allowed number of tags was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagLimitExceededException structure as a key-value pair table
function M.TagLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TagLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDeploymentGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentGroupId to be of type 'string'")
end

--  
function M.DeploymentGroupId(str)
	asserts.AssertDeploymentGroupId(str)
	return str
end

function asserts.AssertApplicationRevisionSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationRevisionSortBy to be of type 'string'")
end

--  
function M.ApplicationRevisionSortBy(str)
	asserts.AssertApplicationRevisionSortBy(str)
	return str
end

function asserts.AssertRawStringSha256(str)
	assert(str)
	assert(type(str) == "string", "Expected RawStringSha256 to be of type 'string'")
end

--  
function M.RawStringSha256(str)
	asserts.AssertRawStringSha256(str)
	return str
end

function asserts.AssertInstanceAction(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAction to be of type 'string'")
end

--  
function M.InstanceAction(str)
	asserts.AssertInstanceAction(str)
	return str
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertLifecycleMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleMessage to be of type 'string'")
end

--  
function M.LifecycleMessage(str)
	asserts.AssertLifecycleMessage(str)
	return str
end

function asserts.AssertAdditionalDeploymentStatusInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalDeploymentStatusInfo to be of type 'string'")
end

--  
function M.AdditionalDeploymentStatusInfo(str)
	asserts.AssertAdditionalDeploymentStatusInfo(str)
	return str
end

function asserts.AssertInstanceName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceName to be of type 'string'")
end

--  
function M.InstanceName(str)
	asserts.AssertInstanceName(str)
	return str
end

function asserts.AssertLifecycleEventStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventStatus to be of type 'string'")
end

--  
function M.LifecycleEventStatus(str)
	asserts.AssertLifecycleEventStatus(str)
	return str
end

function asserts.AssertRawStringContent(str)
	assert(str)
	assert(type(str) == "string", "Expected RawStringContent to be of type 'string'")
end

--  
function M.RawStringContent(str)
	asserts.AssertRawStringContent(str)
	return str
end

function asserts.AssertRevisionLocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionLocationType to be of type 'string'")
end

--  
function M.RevisionLocationType(str)
	asserts.AssertRevisionLocationType(str)
	return str
end

function asserts.AssertDeploymentGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentGroupName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeploymentGroupName(str)
	asserts.AssertDeploymentGroupName(str)
	return str
end

function asserts.AssertDeploymentId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentId to be of type 'string'")
end

--  
function M.DeploymentId(str)
	asserts.AssertDeploymentId(str)
	return str
end

function asserts.AssertInstanceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceArn to be of type 'string'")
end

--  
function M.InstanceArn(str)
	asserts.AssertInstanceArn(str)
	return str
end

function asserts.AssertTriggerTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerTargetArn to be of type 'string'")
end

--  
function M.TriggerTargetArn(str)
	asserts.AssertTriggerTargetArn(str)
	return str
end

function asserts.AssertDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentStatus to be of type 'string'")
end

--  
function M.DeploymentStatus(str)
	asserts.AssertDeploymentStatus(str)
	return str
end

function asserts.AssertGitHubAccountTokenName(str)
	assert(str)
	assert(type(str) == "string", "Expected GitHubAccountTokenName to be of type 'string'")
end

--  
function M.GitHubAccountTokenName(str)
	asserts.AssertGitHubAccountTokenName(str)
	return str
end

function asserts.AssertComputePlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputePlatform to be of type 'string'")
end

--  
function M.ComputePlatform(str)
	asserts.AssertComputePlatform(str)
	return str
end

function asserts.AssertStopStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StopStatus to be of type 'string'")
end

--  
function M.StopStatus(str)
	asserts.AssertStopStatus(str)
	return str
end

function asserts.AssertGreenFleetProvisioningAction(str)
	assert(str)
	assert(type(str) == "string", "Expected GreenFleetProvisioningAction to be of type 'string'")
end

--  
function M.GreenFleetProvisioningAction(str)
	asserts.AssertGreenFleetProvisioningAction(str)
	return str
end

function asserts.AssertScriptName(str)
	assert(str)
	assert(type(str) == "string", "Expected ScriptName to be of type 'string'")
end

--  
function M.ScriptName(str)
	asserts.AssertScriptName(str)
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

function asserts.AssertDeploymentReadyAction(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentReadyAction to be of type 'string'")
end

--  
function M.DeploymentReadyAction(str)
	asserts.AssertDeploymentReadyAction(str)
	return str
end

function asserts.AssertTriggerEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerEventType to be of type 'string'")
end

--  
function M.TriggerEventType(str)
	asserts.AssertTriggerEventType(str)
	return str
end

function asserts.AssertAutoRollbackEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRollbackEvent to be of type 'string'")
end

--  
function M.AutoRollbackEvent(str)
	asserts.AssertAutoRollbackEvent(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertApplicationName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ApplicationName(str)
	asserts.AssertApplicationName(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertCommitId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitId to be of type 'string'")
end

--  
function M.CommitId(str)
	asserts.AssertCommitId(str)
	return str
end

function asserts.AssertFileExistsBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected FileExistsBehavior to be of type 'string'")
end

--  
function M.FileExistsBehavior(str)
	asserts.AssertFileExistsBehavior(str)
	return str
end

function asserts.AssertDeploymentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentType to be of type 'string'")
end

--  
function M.DeploymentType(str)
	asserts.AssertDeploymentType(str)
	return str
end

function asserts.AssertRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationStatus to be of type 'string'")
end

--  
function M.RegistrationStatus(str)
	asserts.AssertRegistrationStatus(str)
	return str
end

function asserts.AssertTriggerName(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerName to be of type 'string'")
end

--  
function M.TriggerName(str)
	asserts.AssertTriggerName(str)
	return str
end

function asserts.AssertBundleType(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleType to be of type 'string'")
end

--  
function M.BundleType(str)
	asserts.AssertBundleType(str)
	return str
end

function asserts.AssertTagFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagFilterType to be of type 'string'")
end

--  
function M.TagFilterType(str)
	asserts.AssertTagFilterType(str)
	return str
end

function asserts.AssertLifecycleEventHookExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventHookExecutionId to be of type 'string'")
end

--  
function M.LifecycleEventHookExecutionId(str)
	asserts.AssertLifecycleEventHookExecutionId(str)
	return str
end

function asserts.AssertDeploymentOption(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentOption to be of type 'string'")
end

--  
function M.DeploymentOption(str)
	asserts.AssertDeploymentOption(str)
	return str
end

function asserts.AssertTrafficRoutingType(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficRoutingType to be of type 'string'")
end

--  
function M.TrafficRoutingType(str)
	asserts.AssertTrafficRoutingType(str)
	return str
end

function asserts.AssertRepository(str)
	assert(str)
	assert(type(str) == "string", "Expected Repository to be of type 'string'")
end

--  
function M.Repository(str)
	asserts.AssertRepository(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
end

--  
function M.InstanceType(str)
	asserts.AssertInstanceType(str)
	return str
end

function asserts.AssertMinimumHealthyHostsType(str)
	assert(str)
	assert(type(str) == "string", "Expected MinimumHealthyHostsType to be of type 'string'")
end

--  
function M.MinimumHealthyHostsType(str)
	asserts.AssertMinimumHealthyHostsType(str)
	return str
end

function asserts.AssertInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStatus to be of type 'string'")
end

--  
function M.InstanceStatus(str)
	asserts.AssertInstanceStatus(str)
	return str
end

function asserts.AssertDeploymentConfigName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentConfigName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeploymentConfigName(str)
	asserts.AssertDeploymentConfigName(str)
	return str
end

function asserts.AssertAutoScalingGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroupName to be of type 'string'")
end

--  
function M.AutoScalingGroupName(str)
	asserts.AssertAutoScalingGroupName(str)
	return str
end

function asserts.AssertListStateFilterAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ListStateFilterAction to be of type 'string'")
end

--  
function M.ListStateFilterAction(str)
	asserts.AssertListStateFilterAction(str)
	return str
end

function asserts.AssertELBName(str)
	assert(str)
	assert(type(str) == "string", "Expected ELBName to be of type 'string'")
end

--  
function M.ELBName(str)
	asserts.AssertELBName(str)
	return str
end

function asserts.AssertEC2TagFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected EC2TagFilterType to be of type 'string'")
end

--  
function M.EC2TagFilterType(str)
	asserts.AssertEC2TagFilterType(str)
	return str
end

function asserts.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
end

--  
function M.S3Key(str)
	asserts.AssertS3Key(str)
	return str
end

function asserts.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
end

--  
function M.AlarmName(str)
	asserts.AssertAlarmName(str)
	return str
end

function asserts.AssertLogTail(str)
	assert(str)
	assert(type(str) == "string", "Expected LogTail to be of type 'string'")
end

--  
function M.LogTail(str)
	asserts.AssertLogTail(str)
	return str
end

function asserts.AssertLifecycleEventName(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventName to be of type 'string'")
end

--  
function M.LifecycleEventName(str)
	asserts.AssertLifecycleEventName(str)
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

function asserts.AssertIamUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamUserArn to be of type 'string'")
end

--  
function M.IamUserArn(str)
	asserts.AssertIamUserArn(str)
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

function asserts.AssertDeploymentCreator(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentCreator to be of type 'string'")
end

--  
function M.DeploymentCreator(str)
	asserts.AssertDeploymentCreator(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertIamSessionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamSessionArn to be of type 'string'")
end

--  
function M.IamSessionArn(str)
	asserts.AssertIamSessionArn(str)
	return str
end

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
	return str
end

function asserts.AssertETag(str)
	assert(str)
	assert(type(str) == "string", "Expected ETag to be of type 'string'")
end

--  
function M.ETag(str)
	asserts.AssertETag(str)
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

function asserts.AssertVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionId to be of type 'string'")
end

--  
function M.VersionId(str)
	asserts.AssertVersionId(str)
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

function asserts.AssertLifecycleErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleErrorCode to be of type 'string'")
end

--  
function M.LifecycleErrorCode(str)
	asserts.AssertLifecycleErrorCode(str)
	return str
end

function asserts.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	asserts.AssertSortOrder(str)
	return str
end

function asserts.AssertDeploymentConfigId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentConfigId to be of type 'string'")
end

--  
function M.DeploymentConfigId(str)
	asserts.AssertDeploymentConfigId(str)
	return str
end

function asserts.AssertAutoScalingGroupHook(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroupHook to be of type 'string'")
end

--  
function M.AutoScalingGroupHook(str)
	asserts.AssertAutoScalingGroupHook(str)
	return str
end

function asserts.AssertTargetGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetGroupName to be of type 'string'")
end

--  
function M.TargetGroupName(str)
	asserts.AssertTargetGroupName(str)
	return str
end

function asserts.AssertInstanceCount(long)
	assert(long)
	assert(type(long) == "number", "Expected InstanceCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.InstanceCount(long)
	asserts.AssertInstanceCount(long)
	return long
end

function asserts.AssertWaitTimeInMins(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WaitTimeInMins to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WaitTimeInMins(integer)
	asserts.AssertWaitTimeInMins(integer)
	return integer
end

function asserts.AssertPercentage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Percentage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Percentage(integer)
	asserts.AssertPercentage(integer)
	return integer
end

function asserts.AssertMinimumHealthyHostsValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumHealthyHostsValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinimumHealthyHostsValue(integer)
	asserts.AssertMinimumHealthyHostsValue(integer)
	return integer
end

function asserts.AssertDuration(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Duration to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Duration(integer)
	asserts.AssertDuration(integer)
	return integer
end

function asserts.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	asserts.AssertNullableBoolean(boolean)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertInstanceNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceName(v)
	end
end

--  
-- List of InstanceName objects
function M.InstanceNameList(list)
	asserts.AssertInstanceNameList(list)
	return list
end

function asserts.AssertGitHubAccountTokenNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected GitHubAccountTokenNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGitHubAccountTokenName(v)
	end
end

--  
-- List of GitHubAccountTokenName objects
function M.GitHubAccountTokenNameList(list)
	asserts.AssertGitHubAccountTokenNameList(list)
	return list
end

function asserts.AssertTriggerEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerEventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTriggerEventType(v)
	end
end

--  
-- List of TriggerEventType objects
function M.TriggerEventTypeList(list)
	asserts.AssertTriggerEventTypeList(list)
	return list
end

function asserts.AssertDeploymentsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentInfo(v)
	end
end

--  
-- List of DeploymentInfo objects
function M.DeploymentsInfoList(list)
	asserts.AssertDeploymentsInfoList(list)
	return list
end

function asserts.AssertLifecycleEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecycleEvent(v)
	end
end

--  
-- List of LifecycleEvent objects
function M.LifecycleEventList(list)
	asserts.AssertLifecycleEventList(list)
	return list
end

function asserts.AssertDeploymentStatusMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentStatusMessageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertErrorMessage(v)
	end
end

--  
-- List of ErrorMessage objects
function M.DeploymentStatusMessageList(list)
	asserts.AssertDeploymentStatusMessageList(list)
	return list
end

function asserts.AssertInstancesList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.InstancesList(list)
	asserts.AssertInstancesList(list)
	return list
end

function asserts.AssertEC2TagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2TagFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEC2TagFilter(v)
	end
end

--  
-- List of EC2TagFilter objects
function M.EC2TagFilterList(list)
	asserts.AssertEC2TagFilterList(list)
	return list
end

function asserts.AssertAutoScalingGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroupList(list)
	asserts.AssertAutoScalingGroupList(list)
	return list
end

function asserts.AssertAutoScalingGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingGroupName(v)
	end
end

--  
-- List of AutoScalingGroupName objects
function M.AutoScalingGroupNameList(list)
	asserts.AssertAutoScalingGroupNameList(list)
	return list
end

function asserts.AssertAlarmList(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlarm(v)
	end
end

--  
-- List of Alarm objects
function M.AlarmList(list)
	asserts.AssertAlarmList(list)
	return list
end

function asserts.AssertApplicationsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationName(v)
	end
end

--  
-- List of ApplicationName objects
function M.ApplicationsList(list)
	asserts.AssertApplicationsList(list)
	return list
end

function asserts.AssertRevisionLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected RevisionLocationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRevisionLocation(v)
	end
end

--  
-- List of RevisionLocation objects
function M.RevisionLocationList(list)
	asserts.AssertRevisionLocationList(list)
	return list
end

function asserts.AssertApplicationsInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationsInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationInfo(v)
	end
end

--  
-- List of ApplicationInfo objects
function M.ApplicationsInfoList(list)
	asserts.AssertApplicationsInfoList(list)
	return list
end

function asserts.AssertOnPremisesTagSetList(list)
	assert(list)
	assert(type(list) == "table", "Expected OnPremisesTagSetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagFilterList(v)
	end
end

--  
-- List of TagFilterList objects
function M.OnPremisesTagSetList(list)
	asserts.AssertOnPremisesTagSetList(list)
	return list
end

function asserts.AssertDeploymentConfigsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentConfigsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentConfigName(v)
	end
end

--  
-- List of DeploymentConfigName objects
function M.DeploymentConfigsList(list)
	asserts.AssertDeploymentConfigsList(list)
	return list
end

function asserts.AssertDeploymentStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentStatus(v)
	end
end

--  
-- List of DeploymentStatus objects
function M.DeploymentStatusList(list)
	asserts.AssertDeploymentStatusList(list)
	return list
end

function asserts.AssertTagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilterList(list)
	asserts.AssertTagFilterList(list)
	return list
end

function asserts.AssertTriggerConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTriggerConfig(v)
	end
end

--  
-- List of TriggerConfig objects
function M.TriggerConfigList(list)
	asserts.AssertTriggerConfigList(list)
	return list
end

function asserts.AssertInstanceStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceStatus(v)
	end
end

--  
-- List of InstanceStatus objects
function M.InstanceStatusList(list)
	asserts.AssertInstanceStatusList(list)
	return list
end

function asserts.AssertTargetGroupInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGroupInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGroupInfo(v)
	end
end

--  
-- List of TargetGroupInfo objects
function M.TargetGroupInfoList(list)
	asserts.AssertTargetGroupInfoList(list)
	return list
end

function asserts.AssertDeploymentGroupInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentGroupInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentGroupInfo(v)
	end
end

--  
-- List of DeploymentGroupInfo objects
function M.DeploymentGroupInfoList(list)
	asserts.AssertDeploymentGroupInfoList(list)
	return list
end

function asserts.AssertELBInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ELBInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertELBInfo(v)
	end
end

--  
-- List of ELBInfo objects
function M.ELBInfoList(list)
	asserts.AssertELBInfoList(list)
	return list
end

function asserts.AssertInstanceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceSummary(v)
	end
end

--  
-- List of InstanceSummary objects
function M.InstanceSummaryList(list)
	asserts.AssertInstanceSummaryList(list)
	return list
end

function asserts.AssertEC2TagSetList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2TagSetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEC2TagFilterList(v)
	end
end

--  
-- List of EC2TagFilterList objects
function M.EC2TagSetList(list)
	asserts.AssertEC2TagSetList(list)
	return list
end

function asserts.AssertDeploymentsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentId(v)
	end
end

--  
-- List of DeploymentId objects
function M.DeploymentsList(list)
	asserts.AssertDeploymentsList(list)
	return list
end

function asserts.AssertInstanceTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceType(v)
	end
end

--  
-- List of InstanceType objects
function M.InstanceTypeList(list)
	asserts.AssertInstanceTypeList(list)
	return list
end

function asserts.AssertAutoRollbackEventsList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoRollbackEventsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoRollbackEvent(v)
	end
end

--  
-- List of AutoRollbackEvent objects
function M.AutoRollbackEventsList(list)
	asserts.AssertAutoRollbackEventsList(list)
	return list
end

function asserts.AssertRevisionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected RevisionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRevisionInfo(v)
	end
end

--  
-- List of RevisionInfo objects
function M.RevisionInfoList(list)
	asserts.AssertRevisionInfoList(list)
	return list
end

function asserts.AssertInstanceInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceInfo(v)
	end
end

--  
-- List of InstanceInfo objects
function M.InstanceInfoList(list)
	asserts.AssertInstanceInfoList(list)
	return list
end

function asserts.AssertDeploymentGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeploymentGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeploymentGroupName(v)
	end
end

--  
-- List of DeploymentGroupName objects
function M.DeploymentGroupsList(list)
	asserts.AssertDeploymentGroupsList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "codedeploy.amazonaws.com"
		end
	end
	local ss = { "codedeploy" }
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
--- Call DeleteGitHubAccountToken asynchronously, invoking a callback when done
-- @param DeleteGitHubAccountTokenInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGitHubAccountTokenAsync(DeleteGitHubAccountTokenInput, cb)
	assert(DeleteGitHubAccountTokenInput, "You must provide a DeleteGitHubAccountTokenInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteGitHubAccountToken",
	}
	for header,value in pairs(DeleteGitHubAccountTokenInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGitHubAccountTokenInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGitHubAccountToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGitHubAccountTokenInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGitHubAccountTokenSync(DeleteGitHubAccountTokenInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGitHubAccountTokenAsync(DeleteGitHubAccountTokenInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeploymentConfig asynchronously, invoking a callback when done
-- @param GetDeploymentConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentConfigAsync(GetDeploymentConfigInput, cb)
	assert(GetDeploymentConfigInput, "You must provide a GetDeploymentConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentConfig",
	}
	for header,value in pairs(GetDeploymentConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeploymentConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeploymentConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeploymentConfigSync(GetDeploymentConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentConfigAsync(GetDeploymentConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeploymentGroup asynchronously, invoking a callback when done
-- @param UpdateDeploymentGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeploymentGroupAsync(UpdateDeploymentGroupInput, cb)
	assert(UpdateDeploymentGroupInput, "You must provide a UpdateDeploymentGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateDeploymentGroup",
	}
	for header,value in pairs(UpdateDeploymentGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDeploymentGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeploymentGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeploymentGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDeploymentGroupSync(UpdateDeploymentGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeploymentGroupAsync(UpdateDeploymentGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetDeployments asynchronously, invoking a callback when done
-- @param BatchGetDeploymentsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetDeploymentsAsync(BatchGetDeploymentsInput, cb)
	assert(BatchGetDeploymentsInput, "You must provide a BatchGetDeploymentsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeployments",
	}
	for header,value in pairs(BatchGetDeploymentsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetDeploymentsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetDeploymentsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetDeploymentsSync(BatchGetDeploymentsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetDeploymentsAsync(BatchGetDeploymentsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ContinueDeployment asynchronously, invoking a callback when done
-- @param ContinueDeploymentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ContinueDeploymentAsync(ContinueDeploymentInput, cb)
	assert(ContinueDeploymentInput, "You must provide a ContinueDeploymentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ContinueDeployment",
	}
	for header,value in pairs(ContinueDeploymentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ContinueDeploymentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ContinueDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ContinueDeploymentInput
-- @return response
-- @return error_type
-- @return error_message
function M.ContinueDeploymentSync(ContinueDeploymentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ContinueDeploymentAsync(ContinueDeploymentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeploymentGroup asynchronously, invoking a callback when done
-- @param GetDeploymentGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentGroupAsync(GetDeploymentGroupInput, cb)
	assert(GetDeploymentGroupInput, "You must provide a GetDeploymentGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentGroup",
	}
	for header,value in pairs(GetDeploymentGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeploymentGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeploymentGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeploymentGroupSync(GetDeploymentGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentGroupAsync(GetDeploymentGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeploymentGroups asynchronously, invoking a callback when done
-- @param ListDeploymentGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeploymentGroupsAsync(ListDeploymentGroupsInput, cb)
	assert(ListDeploymentGroupsInput, "You must provide a ListDeploymentGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentGroups",
	}
	for header,value in pairs(ListDeploymentGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeploymentGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeploymentGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeploymentGroupsSync(ListDeploymentGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentGroupsAsync(ListDeploymentGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplication asynchronously, invoking a callback when done
-- @param DeleteApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApplicationAsync(DeleteApplicationInput, cb)
	assert(DeleteApplicationInput, "You must provide a DeleteApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteApplication",
	}
	for header,value in pairs(DeleteApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApplicationSync(DeleteApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationAsync(DeleteApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
-- @param CreateDeploymentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeploymentAsync(CreateDeploymentInput, cb)
	assert(CreateDeploymentInput, "You must provide a CreateDeploymentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeployment",
	}
	for header,value in pairs(CreateDeploymentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeploymentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDeploymentSync(CreateDeploymentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(CreateDeploymentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopDeployment asynchronously, invoking a callback when done
-- @param StopDeploymentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopDeploymentAsync(StopDeploymentInput, cb)
	assert(StopDeploymentInput, "You must provide a StopDeploymentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.StopDeployment",
	}
	for header,value in pairs(StopDeploymentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopDeploymentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopDeploymentInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopDeploymentSync(StopDeploymentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDeploymentAsync(StopDeploymentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeploymentConfig asynchronously, invoking a callback when done
-- @param DeleteDeploymentConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeploymentConfigAsync(DeleteDeploymentConfigInput, cb)
	assert(DeleteDeploymentConfigInput, "You must provide a DeleteDeploymentConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentConfig",
	}
	for header,value in pairs(DeleteDeploymentConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeploymentConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeploymentConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeploymentConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDeploymentConfigSync(DeleteDeploymentConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeploymentConfigAsync(DeleteDeploymentConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromOnPremisesInstances asynchronously, invoking a callback when done
-- @param RemoveTagsFromOnPremisesInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromOnPremisesInstancesAsync(RemoveTagsFromOnPremisesInstancesInput, cb)
	assert(RemoveTagsFromOnPremisesInstancesInput, "You must provide a RemoveTagsFromOnPremisesInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RemoveTagsFromOnPremisesInstances",
	}
	for header,value in pairs(RemoveTagsFromOnPremisesInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromOnPremisesInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromOnPremisesInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromOnPremisesInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsFromOnPremisesInstancesSync(RemoveTagsFromOnPremisesInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromOnPremisesInstancesAsync(RemoveTagsFromOnPremisesInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterOnPremisesInstance asynchronously, invoking a callback when done
-- @param RegisterOnPremisesInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterOnPremisesInstanceAsync(RegisterOnPremisesInstanceInput, cb)
	assert(RegisterOnPremisesInstanceInput, "You must provide a RegisterOnPremisesInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterOnPremisesInstance",
	}
	for header,value in pairs(RegisterOnPremisesInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterOnPremisesInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterOnPremisesInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterOnPremisesInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterOnPremisesInstanceSync(RegisterOnPremisesInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterOnPremisesInstanceAsync(RegisterOnPremisesInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOnPremisesInstances asynchronously, invoking a callback when done
-- @param ListOnPremisesInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOnPremisesInstancesAsync(ListOnPremisesInstancesInput, cb)
	assert(ListOnPremisesInstancesInput, "You must provide a ListOnPremisesInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListOnPremisesInstances",
	}
	for header,value in pairs(ListOnPremisesInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOnPremisesInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOnPremisesInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOnPremisesInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListOnPremisesInstancesSync(ListOnPremisesInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOnPremisesInstancesAsync(ListOnPremisesInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeploymentConfigs asynchronously, invoking a callback when done
-- @param ListDeploymentConfigsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeploymentConfigsAsync(ListDeploymentConfigsInput, cb)
	assert(ListDeploymentConfigsInput, "You must provide a ListDeploymentConfigsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentConfigs",
	}
	for header,value in pairs(ListDeploymentConfigsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeploymentConfigsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeploymentConfigs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentConfigsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeploymentConfigsSync(ListDeploymentConfigsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentConfigsAsync(ListDeploymentConfigsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplication asynchronously, invoking a callback when done
-- @param GetApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApplicationAsync(GetApplicationInput, cb)
	assert(GetApplicationInput, "You must provide a GetApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplication",
	}
	for header,value in pairs(GetApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetApplicationSync(GetApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationAsync(GetApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeploymentInstance asynchronously, invoking a callback when done
-- @param GetDeploymentInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentInstanceAsync(GetDeploymentInstanceInput, cb)
	assert(GetDeploymentInstanceInput, "You must provide a GetDeploymentInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentInstance",
	}
	for header,value in pairs(GetDeploymentInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeploymentInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeploymentInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeploymentInstanceSync(GetDeploymentInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentInstanceAsync(GetDeploymentInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SkipWaitTimeForInstanceTermination asynchronously, invoking a callback when done
-- @param SkipWaitTimeForInstanceTerminationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SkipWaitTimeForInstanceTerminationAsync(SkipWaitTimeForInstanceTerminationInput, cb)
	assert(SkipWaitTimeForInstanceTerminationInput, "You must provide a SkipWaitTimeForInstanceTerminationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.SkipWaitTimeForInstanceTermination",
	}
	for header,value in pairs(SkipWaitTimeForInstanceTerminationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SkipWaitTimeForInstanceTerminationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SkipWaitTimeForInstanceTermination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SkipWaitTimeForInstanceTerminationInput
-- @return response
-- @return error_type
-- @return error_message
function M.SkipWaitTimeForInstanceTerminationSync(SkipWaitTimeForInstanceTerminationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SkipWaitTimeForInstanceTerminationAsync(SkipWaitTimeForInstanceTerminationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetDeploymentGroups asynchronously, invoking a callback when done
-- @param BatchGetDeploymentGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetDeploymentGroupsAsync(BatchGetDeploymentGroupsInput, cb)
	assert(BatchGetDeploymentGroupsInput, "You must provide a BatchGetDeploymentGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentGroups",
	}
	for header,value in pairs(BatchGetDeploymentGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetDeploymentGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetDeploymentGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetDeploymentGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetDeploymentGroupsSync(BatchGetDeploymentGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetDeploymentGroupsAsync(BatchGetDeploymentGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetOnPremisesInstances asynchronously, invoking a callback when done
-- @param BatchGetOnPremisesInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetOnPremisesInstancesAsync(BatchGetOnPremisesInstancesInput, cb)
	assert(BatchGetOnPremisesInstancesInput, "You must provide a BatchGetOnPremisesInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetOnPremisesInstances",
	}
	for header,value in pairs(BatchGetOnPremisesInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetOnPremisesInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetOnPremisesInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetOnPremisesInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetOnPremisesInstancesSync(BatchGetOnPremisesInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetOnPremisesInstancesAsync(BatchGetOnPremisesInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplicationRevision asynchronously, invoking a callback when done
-- @param GetApplicationRevisionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApplicationRevisionAsync(GetApplicationRevisionInput, cb)
	assert(GetApplicationRevisionInput, "You must provide a GetApplicationRevisionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplicationRevision",
	}
	for header,value in pairs(GetApplicationRevisionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetApplicationRevisionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApplicationRevision synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationRevisionInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetApplicationRevisionSync(GetApplicationRevisionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationRevisionAsync(GetApplicationRevisionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetDeploymentInstances asynchronously, invoking a callback when done
-- @param BatchGetDeploymentInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetDeploymentInstancesAsync(BatchGetDeploymentInstancesInput, cb)
	assert(BatchGetDeploymentInstancesInput, "You must provide a BatchGetDeploymentInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentInstances",
	}
	for header,value in pairs(BatchGetDeploymentInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetDeploymentInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetDeploymentInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetDeploymentInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetDeploymentInstancesSync(BatchGetDeploymentInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetDeploymentInstancesAsync(BatchGetDeploymentInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationAsync(UpdateApplicationInput, cb)
	assert(UpdateApplicationInput, "You must provide a UpdateApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateApplication",
	}
	for header,value in pairs(UpdateApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationSync(UpdateApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationAsync(UpdateApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeploymentGroup asynchronously, invoking a callback when done
-- @param CreateDeploymentGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeploymentGroupAsync(CreateDeploymentGroupInput, cb)
	assert(CreateDeploymentGroupInput, "You must provide a CreateDeploymentGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentGroup",
	}
	for header,value in pairs(CreateDeploymentGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeploymentGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeploymentGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDeploymentGroupSync(CreateDeploymentGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentGroupAsync(CreateDeploymentGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListApplicationRevisions asynchronously, invoking a callback when done
-- @param ListApplicationRevisionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListApplicationRevisionsAsync(ListApplicationRevisionsInput, cb)
	assert(ListApplicationRevisionsInput, "You must provide a ListApplicationRevisionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplicationRevisions",
	}
	for header,value in pairs(ListApplicationRevisionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListApplicationRevisionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApplicationRevisions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApplicationRevisionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListApplicationRevisionsSync(ListApplicationRevisionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApplicationRevisionsAsync(ListApplicationRevisionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeploymentInstances asynchronously, invoking a callback when done
-- @param ListDeploymentInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeploymentInstancesAsync(ListDeploymentInstancesInput, cb)
	assert(ListDeploymentInstancesInput, "You must provide a ListDeploymentInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentInstances",
	}
	for header,value in pairs(ListDeploymentInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeploymentInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeploymentInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeploymentInstancesSync(ListDeploymentInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentInstancesAsync(ListDeploymentInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetApplicationRevisions asynchronously, invoking a callback when done
-- @param BatchGetApplicationRevisionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetApplicationRevisionsAsync(BatchGetApplicationRevisionsInput, cb)
	assert(BatchGetApplicationRevisionsInput, "You must provide a BatchGetApplicationRevisionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplicationRevisions",
	}
	for header,value in pairs(BatchGetApplicationRevisionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetApplicationRevisionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetApplicationRevisions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetApplicationRevisionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetApplicationRevisionsSync(BatchGetApplicationRevisionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetApplicationRevisionsAsync(BatchGetApplicationRevisionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLifecycleEventHookExecutionStatus asynchronously, invoking a callback when done
-- @param PutLifecycleEventHookExecutionStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLifecycleEventHookExecutionStatusAsync(PutLifecycleEventHookExecutionStatusInput, cb)
	assert(PutLifecycleEventHookExecutionStatusInput, "You must provide a PutLifecycleEventHookExecutionStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.PutLifecycleEventHookExecutionStatus",
	}
	for header,value in pairs(PutLifecycleEventHookExecutionStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutLifecycleEventHookExecutionStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLifecycleEventHookExecutionStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLifecycleEventHookExecutionStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutLifecycleEventHookExecutionStatusSync(PutLifecycleEventHookExecutionStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLifecycleEventHookExecutionStatusAsync(PutLifecycleEventHookExecutionStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterOnPremisesInstance asynchronously, invoking a callback when done
-- @param DeregisterOnPremisesInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterOnPremisesInstanceAsync(DeregisterOnPremisesInstanceInput, cb)
	assert(DeregisterOnPremisesInstanceInput, "You must provide a DeregisterOnPremisesInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeregisterOnPremisesInstance",
	}
	for header,value in pairs(DeregisterOnPremisesInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterOnPremisesInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterOnPremisesInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterOnPremisesInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterOnPremisesInstanceSync(DeregisterOnPremisesInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterOnPremisesInstanceAsync(DeregisterOnPremisesInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeploymentConfig asynchronously, invoking a callback when done
-- @param CreateDeploymentConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeploymentConfigAsync(CreateDeploymentConfigInput, cb)
	assert(CreateDeploymentConfigInput, "You must provide a CreateDeploymentConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentConfig",
	}
	for header,value in pairs(CreateDeploymentConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeploymentConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeploymentConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDeploymentConfigSync(CreateDeploymentConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentConfigAsync(CreateDeploymentConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOnPremisesInstance asynchronously, invoking a callback when done
-- @param GetOnPremisesInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetOnPremisesInstanceAsync(GetOnPremisesInstanceInput, cb)
	assert(GetOnPremisesInstanceInput, "You must provide a GetOnPremisesInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetOnPremisesInstance",
	}
	for header,value in pairs(GetOnPremisesInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOnPremisesInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOnPremisesInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOnPremisesInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetOnPremisesInstanceSync(GetOnPremisesInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOnPremisesInstanceAsync(GetOnPremisesInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToOnPremisesInstances asynchronously, invoking a callback when done
-- @param AddTagsToOnPremisesInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToOnPremisesInstancesAsync(AddTagsToOnPremisesInstancesInput, cb)
	assert(AddTagsToOnPremisesInstancesInput, "You must provide a AddTagsToOnPremisesInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.AddTagsToOnPremisesInstances",
	}
	for header,value in pairs(AddTagsToOnPremisesInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToOnPremisesInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToOnPremisesInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToOnPremisesInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsToOnPremisesInstancesSync(AddTagsToOnPremisesInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToOnPremisesInstancesAsync(AddTagsToOnPremisesInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplication asynchronously, invoking a callback when done
-- @param CreateApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApplicationAsync(CreateApplicationInput, cb)
	assert(CreateApplicationInput, "You must provide a CreateApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateApplication",
	}
	for header,value in pairs(CreateApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApplicationSync(CreateApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationAsync(CreateApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeployments asynchronously, invoking a callback when done
-- @param ListDeploymentsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeploymentsAsync(ListDeploymentsInput, cb)
	assert(ListDeploymentsInput, "You must provide a ListDeploymentsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeployments",
	}
	for header,value in pairs(ListDeploymentsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeploymentsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeploymentsSync(ListDeploymentsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentsAsync(ListDeploymentsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListApplications asynchronously, invoking a callback when done
-- @param ListApplicationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListApplicationsAsync(ListApplicationsInput, cb)
	assert(ListApplicationsInput, "You must provide a ListApplicationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplications",
	}
	for header,value in pairs(ListApplicationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListApplicationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApplicationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListApplicationsSync(ListApplicationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApplicationsAsync(ListApplicationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeploymentGroup asynchronously, invoking a callback when done
-- @param DeleteDeploymentGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeploymentGroupAsync(DeleteDeploymentGroupInput, cb)
	assert(DeleteDeploymentGroupInput, "You must provide a DeleteDeploymentGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentGroup",
	}
	for header,value in pairs(DeleteDeploymentGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeploymentGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeploymentGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeploymentGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDeploymentGroupSync(DeleteDeploymentGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeploymentGroupAsync(DeleteDeploymentGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGitHubAccountTokenNames asynchronously, invoking a callback when done
-- @param ListGitHubAccountTokenNamesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGitHubAccountTokenNamesAsync(ListGitHubAccountTokenNamesInput, cb)
	assert(ListGitHubAccountTokenNamesInput, "You must provide a ListGitHubAccountTokenNamesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListGitHubAccountTokenNames",
	}
	for header,value in pairs(ListGitHubAccountTokenNamesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGitHubAccountTokenNamesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGitHubAccountTokenNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGitHubAccountTokenNamesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListGitHubAccountTokenNamesSync(ListGitHubAccountTokenNamesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGitHubAccountTokenNamesAsync(ListGitHubAccountTokenNamesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterApplicationRevision asynchronously, invoking a callback when done
-- @param RegisterApplicationRevisionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterApplicationRevisionAsync(RegisterApplicationRevisionInput, cb)
	assert(RegisterApplicationRevisionInput, "You must provide a RegisterApplicationRevisionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterApplicationRevision",
	}
	for header,value in pairs(RegisterApplicationRevisionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterApplicationRevisionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterApplicationRevision synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterApplicationRevisionInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterApplicationRevisionSync(RegisterApplicationRevisionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterApplicationRevisionAsync(RegisterApplicationRevisionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployment asynchronously, invoking a callback when done
-- @param GetDeploymentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentAsync(GetDeploymentInput, cb)
	assert(GetDeploymentInput, "You must provide a GetDeploymentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeployment",
	}
	for header,value in pairs(GetDeploymentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeploymentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeploymentSync(GetDeploymentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentAsync(GetDeploymentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetApplications asynchronously, invoking a callback when done
-- @param BatchGetApplicationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetApplicationsAsync(BatchGetApplicationsInput, cb)
	assert(BatchGetApplicationsInput, "You must provide a BatchGetApplicationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplications",
	}
	for header,value in pairs(BatchGetApplicationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetApplicationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetApplicationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetApplicationsSync(BatchGetApplicationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetApplicationsAsync(BatchGetApplicationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
