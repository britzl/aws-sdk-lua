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
-- @param _deploymentConfigInfo [DeploymentConfigInfo] <p>Information about the deployment configuration.</p>
function M.GetDeploymentConfigOutput(_deploymentConfigInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentConfigOutput")
	local t = { 
		["deploymentConfigInfo"] = _deploymentConfigInfo,
	}
	asserts.AssertGetDeploymentConfigOutput(t)
	return t
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
-- @param _instanceNames [InstanceNameList] <p>The names of the on-premises instances to which to add tags.</p>
-- @param _tags [TagList] <p>The tag key-value pairs to add to the on-premises instances.</p> <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.</p>
-- Required parameter: tags
-- Required parameter: instanceNames
function M.AddTagsToOnPremisesInstancesInput(_instanceNames, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = _instanceNames,
		["tags"] = _tags,
	}
	asserts.AssertAddTagsToOnPremisesInstancesInput(t)
	return t
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
-- @param _nextToken [NextToken] <p>An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list. </p>
function M.ListGitHubAccountTokenNamesInput(_nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGitHubAccountTokenNamesInput")
	local t = { 
		["nextToken"] = _nextToken,
	}
	asserts.AssertListGitHubAccountTokenNamesInput(t)
	return t
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
-- @param _revisionLocation [RevisionLocation] <p>Information about the location and type of an application revision.</p>
-- @param _genericRevisionInfo [GenericRevisionInfo] <p>Information about an application revision, including usage details and associated deployment groups.</p>
function M.RevisionInfo(_revisionLocation, _genericRevisionInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionInfo")
	local t = { 
		["revisionLocation"] = _revisionLocation,
		["genericRevisionInfo"] = _genericRevisionInfo,
	}
	asserts.AssertRevisionInfo(t)
	return t
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
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
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
function M.InvalidDeploymentInstanceTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentInstanceTypeException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentInstanceTypeException(t)
	return t
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
function M.InvalidTagException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagException")
	local t = { 
	}
	asserts.AssertInvalidTagException(t)
	return t
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
function M.InstanceNotRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNotRegisteredException")
	local t = { 
	}
	asserts.AssertInstanceNotRegisteredException(t)
	return t
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
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.</p>
-- @param _registrationStatus [RegistrationStatus] <p>The registration status of the on-premises instances:</p> <ul> <li> <p>Deregistered: Include deregistered on-premises instances in the resulting list.</p> </li> <li> <p>Registered: Include registered on-premises instances in the resulting list.</p> </li> </ul>
-- @param _tagFilters [TagFilterList] <p>The on-premises instance tags that will be used to restrict the corresponding on-premises instance names returned.</p>
function M.ListOnPremisesInstancesInput(_nextToken, _registrationStatus, _tagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOnPremisesInstancesInput")
	local t = { 
		["nextToken"] = _nextToken,
		["registrationStatus"] = _registrationStatus,
		["tagFilters"] = _tagFilters,
	}
	asserts.AssertListOnPremisesInstancesInput(t)
	return t
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
function M.MultipleIamArnsProvidedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MultipleIamArnsProvidedException")
	local t = { 
	}
	asserts.AssertMultipleIamArnsProvidedException(t)
	return t
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
function M.InvalidDeploymentStyleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentStyleException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentStyleException(t)
	return t
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
function M.InvalidAutoRollbackConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAutoRollbackConfigException")
	local t = { 
	}
	asserts.AssertInvalidAutoRollbackConfigException(t)
	return t
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
-- @param _deploymentConfigId [DeploymentConfigId] <p>A unique deployment configuration ID.</p>
function M.CreateDeploymentConfigOutput(_deploymentConfigId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentConfigOutput")
	local t = { 
		["deploymentConfigId"] = _deploymentConfigId,
	}
	asserts.AssertCreateDeploymentConfigOutput(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
function M.GetDeploymentGroupInput(_applicationName, _deploymentGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentGroupInput")
	local t = { 
		["applicationName"] = _applicationName,
		["deploymentGroupName"] = _deploymentGroupName,
	}
	asserts.AssertGetDeploymentGroupInput(t)
	return t
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
-- @param _deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p>
-- Required parameter: deploymentConfigName
function M.GetDeploymentConfigInput(_deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentConfigInput")
	local t = { 
		["deploymentConfigName"] = _deploymentConfigName,
	}
	asserts.AssertGetDeploymentConfigInput(t)
	return t
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
-- @param _bundleType [BundleType] <p>The file type of the application revision. Must be one of the following:</p> <ul> <li> <p>tar: A tar archive file.</p> </li> <li> <p>tgz: A compressed tar archive file.</p> </li> <li> <p>zip: A zip archive file.</p> </li> </ul>
-- @param _version [VersionId] <p>A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the version is not specified, the system will use the most recent version by default.</p>
-- @param _bucket [S3Bucket] <p>The name of the Amazon S3 bucket where the application revision is stored.</p>
-- @param _key [S3Key] <p>The name of the Amazon S3 object that represents the bundled artifacts for the application revision.</p>
-- @param _eTag [ETag] <p>The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the ETag is not specified as an input parameter, ETag validation of the object will be skipped.</p>
function M.S3Location(_bundleType, _version, _bucket, _key, _eTag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Location")
	local t = { 
		["bundleType"] = _bundleType,
		["version"] = _version,
		["bucket"] = _bucket,
		["key"] = _key,
		["eTag"] = _eTag,
	}
	asserts.AssertS3Location(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier will also be returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.</p>
-- @param _revisions [RevisionLocationList] <p>A list of locations that contain the matching revisions.</p>
function M.ListApplicationRevisionsOutput(_nextToken, _revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationRevisionsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["revisions"] = _revisions,
	}
	asserts.AssertListApplicationRevisionsOutput(t)
	return t
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
function M.DeploymentAlreadyCompletedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentAlreadyCompletedException")
	local t = { 
	}
	asserts.AssertDeploymentAlreadyCompletedException(t)
	return t
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
function M.InstanceNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNameRequiredException")
	local t = { 
	}
	asserts.AssertInstanceNameRequiredException(t)
	return t
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
-- <p>Information about a load balancer in Elastic Load Balancing to use in a deployment.</p>
-- @param _name [ELBName] <p>For blue/green deployments, the name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.</p>
function M.ELBInfo(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ELBInfo")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertELBInfo(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.</p>
-- Required parameter: applicationName
function M.ListDeploymentGroupsInput(_applicationName, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentGroupsInput")
	local t = { 
		["applicationName"] = _applicationName,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListDeploymentGroupsInput(t)
	return t
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
-- @param _ignorePollAlarmFailure [Boolean] <p>Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p> <ul> <li> <p>true: The deployment will proceed even if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> <li> <p>false: The deployment will stop if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> </ul>
-- @param _alarms [AlarmList] <p>A list of alarms configured for the deployment group. A maximum of 10 alarms can be added to a deployment group.</p>
-- @param _enabled [Boolean] <p>Indicates whether the alarm configuration is enabled.</p>
function M.AlarmConfiguration(_ignorePollAlarmFailure, _alarms, _enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmConfiguration")
	local t = { 
		["ignorePollAlarmFailure"] = _ignorePollAlarmFailure,
		["alarms"] = _alarms,
		["enabled"] = _enabled,
	}
	asserts.AssertAlarmConfiguration(t)
	return t
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
function M.DeploymentConfigDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigDoesNotExistException")
	local t = { 
	}
	asserts.AssertDeploymentConfigDoesNotExistException(t)
	return t
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
function M.BucketNameFilterRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketNameFilterRequiredException")
	local t = { 
	}
	asserts.AssertBucketNameFilterRequiredException(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.</p>
-- @param _instanceNames [InstanceNameList] <p>The list of matching on-premises instance names.</p>
function M.ListOnPremisesInstancesOutput(_nextToken, _instanceNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOnPremisesInstancesOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["instanceNames"] = _instanceNames,
	}
	asserts.AssertListOnPremisesInstancesOutput(t)
	return t
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
-- @param _action [GreenFleetProvisioningAction] <p>The method used to add instances to a replacement environment.</p> <ul> <li> <p>DISCOVER_EXISTING: Use instances that already exist or will be created manually.</p> </li> <li> <p>COPY_AUTO_SCALING_GROUP: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling group.</p> </li> </ul>
function M.GreenFleetProvisioningOption(_action, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GreenFleetProvisioningOption")
	local t = { 
		["action"] = _action,
	}
	asserts.AssertGreenFleetProvisioningOption(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of the application that corresponds to the revision.</p>
-- @param _revision [RevisionLocation] <p>Information about the application revision to get, including type and location.</p>
-- Required parameter: applicationName
-- Required parameter: revision
function M.GetApplicationRevisionInput(_applicationName, _revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationRevisionInput")
	local t = { 
		["applicationName"] = _applicationName,
		["revision"] = _revision,
	}
	asserts.AssertGetApplicationRevisionInput(t)
	return t
end

keys.DeploymentGroupInfo = { ["applicationName"] = true, ["deploymentGroupId"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["autoScalingGroups"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["lastSuccessfulDeployment"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["triggerConfigurations"] = true, ["lastAttemptedDeployment"] = true, ["serviceRoleArn"] = true, ["deploymentGroupName"] = true, ["targetRevision"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

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
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["deploymentStyle"] then asserts.AssertDeploymentStyle(struct["deploymentStyle"]) end
	if struct["triggerConfigurations"] then asserts.AssertTriggerConfigList(struct["triggerConfigurations"]) end
	if struct["lastAttemptedDeployment"] then asserts.AssertLastDeploymentInfo(struct["lastAttemptedDeployment"]) end
	if struct["serviceRoleArn"] then asserts.AssertRole(struct["serviceRoleArn"]) end
	if struct["deploymentGroupName"] then asserts.AssertDeploymentGroupName(struct["deploymentGroupName"]) end
	if struct["targetRevision"] then asserts.AssertRevisionLocation(struct["targetRevision"]) end
	if struct["onPremisesInstanceTagFilters"] then asserts.AssertTagFilterList(struct["onPremisesInstanceTagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentGroupInfo[k], "DeploymentGroupInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentGroupInfo
-- <p>Information about a deployment group.</p>
-- @param _applicationName [ApplicationName] <p>The application name.</p>
-- @param _deploymentGroupId [DeploymentGroupId] <p>The deployment group ID.</p>
-- @param _loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer to use in a deployment.</p>
-- @param _blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
-- @param _autoScalingGroups [AutoScalingGroupList] <p>A list of associated Auto Scaling groups.</p>
-- @param _alarmConfiguration [AlarmConfiguration] <p>A list of alarms associated with the deployment group.</p>
-- @param _ec2TagFilters [EC2TagFilterList] <p>The Amazon EC2 tags on which to filter.</p>
-- @param _lastSuccessfulDeployment [LastDeploymentInfo] <p>Information about the most recent successful deployment to the deployment group.</p>
-- @param _autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information about the automatic rollback configuration associated with the deployment group.</p>
-- @param _deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- @param _triggerConfigurations [TriggerConfigList] <p>Information about triggers associated with the deployment group.</p>
-- @param _lastAttemptedDeployment [LastDeploymentInfo] <p>Information about the most recent attempted deployment to the deployment group.</p>
-- @param _serviceRoleArn [Role] <p>A service role ARN.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The deployment group name.</p>
-- @param _targetRevision [RevisionLocation] <p>Information about the deployment group's target revision, including type and location.</p>
-- @param _onPremisesInstanceTagFilters [TagFilterList] <p>The on-premises instance tags on which to filter.</p>
function M.DeploymentGroupInfo(_applicationName, _deploymentGroupId, _loadBalancerInfo, _blueGreenDeploymentConfiguration, _deploymentConfigName, _autoScalingGroups, _alarmConfiguration, _ec2TagFilters, _lastSuccessfulDeployment, _autoRollbackConfiguration, _deploymentStyle, _triggerConfigurations, _lastAttemptedDeployment, _serviceRoleArn, _deploymentGroupName, _targetRevision, _onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupInfo")
	local t = { 
		["applicationName"] = _applicationName,
		["deploymentGroupId"] = _deploymentGroupId,
		["loadBalancerInfo"] = _loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = _blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = _deploymentConfigName,
		["autoScalingGroups"] = _autoScalingGroups,
		["alarmConfiguration"] = _alarmConfiguration,
		["ec2TagFilters"] = _ec2TagFilters,
		["lastSuccessfulDeployment"] = _lastSuccessfulDeployment,
		["autoRollbackConfiguration"] = _autoRollbackConfiguration,
		["deploymentStyle"] = _deploymentStyle,
		["triggerConfigurations"] = _triggerConfigurations,
		["lastAttemptedDeployment"] = _lastAttemptedDeployment,
		["serviceRoleArn"] = _serviceRoleArn,
		["deploymentGroupName"] = _deploymentGroupName,
		["targetRevision"] = _targetRevision,
		["onPremisesInstanceTagFilters"] = _onPremisesInstanceTagFilters,
	}
	asserts.AssertDeploymentGroupInfo(t)
	return t
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
function M.InvalidSortOrderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSortOrderException")
	local t = { 
	}
	asserts.AssertInvalidSortOrderException(t)
	return t
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
function M.DeploymentIsNotInReadyStateException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentIsNotInReadyStateException")
	local t = { 
	}
	asserts.AssertDeploymentIsNotInReadyStateException(t)
	return t
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
function M.IamSessionArnAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamSessionArnAlreadyRegisteredException")
	local t = { 
	}
	asserts.AssertIamSessionArnAlreadyRegisteredException(t)
	return t
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
function M.TriggerTargetsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TriggerTargetsLimitExceededException")
	local t = { 
	}
	asserts.AssertTriggerTargetsLimitExceededException(t)
	return t
end

keys.DeploymentConfigInfo = { ["deploymentConfigId"] = true, ["minimumHealthyHosts"] = true, ["createTime"] = true, ["deploymentConfigName"] = true, nil }

function asserts.AssertDeploymentConfigInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfigInfo to be of type 'table'")
	if struct["deploymentConfigId"] then asserts.AssertDeploymentConfigId(struct["deploymentConfigId"]) end
	if struct["minimumHealthyHosts"] then asserts.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfigInfo[k], "DeploymentConfigInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfigInfo
-- <p>Information about a deployment configuration.</p>
-- @param _deploymentConfigId [DeploymentConfigId] <p>The deployment configuration ID.</p>
-- @param _minimumHealthyHosts [MinimumHealthyHosts] <p>Information about the number or percentage of minimum healthy instance.</p>
-- @param _createTime [Timestamp] <p>The time at which the deployment configuration was created.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
function M.DeploymentConfigInfo(_deploymentConfigId, _minimumHealthyHosts, _createTime, _deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigInfo")
	local t = { 
		["deploymentConfigId"] = _deploymentConfigId,
		["minimumHealthyHosts"] = _minimumHealthyHosts,
		["createTime"] = _createTime,
		["deploymentConfigName"] = _deploymentConfigName,
	}
	asserts.AssertDeploymentConfigInfo(t)
	return t
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
function M.ApplicationAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationAlreadyExistsException")
	local t = { 
	}
	asserts.AssertApplicationAlreadyExistsException(t)
	return t
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
function M.InvalidDeployedStateFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeployedStateFilterException")
	local t = { 
	}
	asserts.AssertInvalidDeployedStateFilterException(t)
	return t
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
function M.InvalidAlarmConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAlarmConfigException")
	local t = { 
	}
	asserts.AssertInvalidAlarmConfigException(t)
	return t
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
function M.DeploymentConfigInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigInUseException")
	local t = { 
	}
	asserts.AssertDeploymentConfigInUseException(t)
	return t
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
-- @param _instanceInfo [InstanceInfo] <p>Information about the on-premises instance.</p>
function M.GetOnPremisesInstanceOutput(_instanceInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOnPremisesInstanceOutput")
	local t = { 
		["instanceInfo"] = _instanceInfo,
	}
	asserts.AssertGetOnPremisesInstanceOutput(t)
	return t
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
function M.InstanceIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdRequiredException")
	local t = { 
	}
	asserts.AssertInstanceIdRequiredException(t)
	return t
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
function M.IamUserArnRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamUserArnRequiredException")
	local t = { 
	}
	asserts.AssertIamUserArnRequiredException(t)
	return t
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
-- @param _instanceNames [InstanceNameList] <p>The names of the on-premises instances from which to remove tags.</p>
-- @param _tags [TagList] <p>The tag key-value pairs to remove from the on-premises instances.</p>
-- Required parameter: tags
-- Required parameter: instanceNames
function M.RemoveTagsFromOnPremisesInstancesInput(_instanceNames, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = _instanceNames,
		["tags"] = _tags,
	}
	asserts.AssertRemoveTagsFromOnPremisesInstancesInput(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- @param _autoRollbackEnabled [NullableBoolean] <p>Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision.</p>
-- Required parameter: deploymentId
function M.StopDeploymentInput(_deploymentId, _autoRollbackEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDeploymentInput")
	local t = { 
		["deploymentId"] = _deploymentId,
		["autoRollbackEnabled"] = _autoRollbackEnabled,
	}
	asserts.AssertStopDeploymentInput(t)
	return t
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
function M.TagRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagRequiredException")
	local t = { 
	}
	asserts.AssertTagRequiredException(t)
	return t
end

keys.CreateDeploymentConfigInput = { ["minimumHealthyHosts"] = true, ["deploymentConfigName"] = true, nil }

function asserts.AssertCreateDeploymentConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentConfigInput to be of type 'table'")
	assert(struct["deploymentConfigName"], "Expected key deploymentConfigName to exist in table")
	if struct["minimumHealthyHosts"] then asserts.AssertMinimumHealthyHosts(struct["minimumHealthyHosts"]) end
	if struct["deploymentConfigName"] then asserts.AssertDeploymentConfigName(struct["deploymentConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentConfigInput[k], "CreateDeploymentConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentConfigInput
-- <p>Represents the input of a CreateDeploymentConfig operation.</p>
-- @param _minimumHealthyHosts [MinimumHealthyHosts] <p>The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.</p> <p>The type parameter takes either of the following values:</p> <ul> <li> <p>HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.</p> </li> <li> <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.</p> </li> </ul> <p>The value parameter takes an integer.</p> <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The name of the deployment configuration to create.</p>
-- Required parameter: deploymentConfigName
function M.CreateDeploymentConfigInput(_minimumHealthyHosts, _deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentConfigInput")
	local t = { 
		["minimumHealthyHosts"] = _minimumHealthyHosts,
		["deploymentConfigName"] = _deploymentConfigName,
	}
	asserts.AssertCreateDeploymentConfigInput(t)
	return t
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
-- @param _triggerEvents [TriggerEventTypeList] <p>The event type or types for which notifications are triggered.</p>
-- @param _triggerTargetArn [TriggerTargetArn] <p>The ARN of the Amazon Simple Notification Service topic through which notifications about deployment or instance events are sent.</p>
-- @param _triggerName [TriggerName] <p>The name of the notification trigger.</p>
function M.TriggerConfig(_triggerEvents, _triggerTargetArn, _triggerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TriggerConfig")
	local t = { 
		["triggerEvents"] = _triggerEvents,
		["triggerTargetArn"] = _triggerTargetArn,
		["triggerName"] = _triggerName,
	}
	asserts.AssertTriggerConfig(t)
	return t
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
-- @param _start [Timestamp] <p>The start time of the time range.</p> <note> <p>Specify null to leave the start time open-ended.</p> </note>
-- @param _end [Timestamp] <p>The end time of the time range.</p> <note> <p>Specify null to leave the end time open-ended.</p> </note>
function M.TimeRange(_start, _end, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeRange")
	local t = { 
		["start"] = _start,
		["end"] = _end,
	}
	asserts.AssertTimeRange(t)
	return t
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
function M.InvalidTriggerConfigException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTriggerConfigException")
	local t = { 
	}
	asserts.AssertInvalidTriggerConfigException(t)
	return t
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
-- @param _hook [AutoScalingGroupHook] <p>An Auto Scaling lifecycle event hook name.</p>
-- @param _name [AutoScalingGroupName] <p>The Auto Scaling group name.</p>
function M.AutoScalingGroup(_hook, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingGroup")
	local t = { 
		["hook"] = _hook,
		["name"] = _name,
	}
	asserts.AssertAutoScalingGroup(t)
	return t
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
function M.UnsupportedActionForDeploymentTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedActionForDeploymentTypeException")
	local t = { 
	}
	asserts.AssertUnsupportedActionForDeploymentTypeException(t)
	return t
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
-- @param _deploymentType [DeploymentType] <p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>
-- @param _deploymentOption [DeploymentOption] <p>Indicates whether to route deployment traffic behind a load balancer.</p>
function M.DeploymentStyle(_deploymentType, _deploymentOption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentStyle")
	local t = { 
		["deploymentType"] = _deploymentType,
		["deploymentOption"] = _deploymentOption,
	}
	asserts.AssertDeploymentStyle(t)
	return t
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
function M.InvalidIamSessionArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIamSessionArnException")
	local t = { 
	}
	asserts.AssertInvalidIamSessionArnException(t)
	return t
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
function M.DeploymentDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentDoesNotExistException")
	local t = { 
	}
	asserts.AssertDeploymentDoesNotExistException(t)
	return t
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
function M.InvalidDeploymentConfigNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentConfigNameException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentConfigNameException(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>The ID of the blue/green deployment for which you want to skip the instance termination wait time.</p>
function M.SkipWaitTimeForInstanceTerminationInput(_deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SkipWaitTimeForInstanceTerminationInput")
	local t = { 
		["deploymentId"] = _deploymentId,
	}
	asserts.AssertSkipWaitTimeForInstanceTerminationInput(t)
	return t
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
-- @param _enabled [Boolean] <p>Indicates whether a defined automatic rollback configuration is currently enabled.</p>
-- @param _events [AutoRollbackEventsList] <p>The event type or types that trigger a rollback.</p>
function M.AutoRollbackConfiguration(_enabled, _events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoRollbackConfiguration")
	local t = { 
		["enabled"] = _enabled,
		["events"] = _events,
	}
	asserts.AssertAutoRollbackConfiguration(t)
	return t
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
function M.InvalidSortByException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSortByException")
	local t = { 
	}
	asserts.AssertInvalidSortByException(t)
	return t
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
-- @param _lastUsedTime [Timestamp] <p>When the revision was last used by AWS CodeDeploy.</p>
-- @param _firstUsedTime [Timestamp] <p>When the revision was first used by AWS CodeDeploy.</p>
-- @param _registerTime [Timestamp] <p>When the revision was registered with AWS CodeDeploy.</p>
-- @param _description [Description] <p>A comment about the revision.</p>
-- @param _deploymentGroups [DeploymentGroupsList] <p>The deployment groups for which this is the current target revision.</p>
function M.GenericRevisionInfo(_lastUsedTime, _firstUsedTime, _registerTime, _description, _deploymentGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenericRevisionInfo")
	local t = { 
		["lastUsedTime"] = _lastUsedTime,
		["firstUsedTime"] = _firstUsedTime,
		["registerTime"] = _registerTime,
		["description"] = _description,
		["deploymentGroups"] = _deploymentGroups,
	}
	asserts.AssertGenericRevisionInfo(t)
	return t
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
function M.InvalidEC2TagException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEC2TagException")
	local t = { 
	}
	asserts.AssertInvalidEC2TagException(t)
	return t
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
-- @param _deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p>
-- Required parameter: deploymentConfigName
function M.DeleteDeploymentConfigInput(_deploymentConfigName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentConfigInput")
	local t = { 
		["deploymentConfigName"] = _deploymentConfigName,
	}
	asserts.AssertDeleteDeploymentConfigInput(t)
	return t
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
-- @param _actionOnTimeout [DeploymentReadyAction] <p>Information about when to reroute traffic from an original environment to a replacement environment in a blue/green deployment.</p> <ul> <li> <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment.</p> </li> <li> <p>STOP_DEPLOYMENT: Do not register new instances with load balancer unless traffic is rerouted manually. If traffic is not rerouted manually before the end of the specified wait period, the deployment status is changed to Stopped.</p> </li> </ul>
-- @param _waitTimeInMinutes [Duration] <p>The number of minutes to wait before the status of a blue/green deployment changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for actionOnTimeout</p>
function M.DeploymentReadyOption(_actionOnTimeout, _waitTimeInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentReadyOption")
	local t = { 
		["actionOnTimeout"] = _actionOnTimeout,
		["waitTimeInMinutes"] = _waitTimeInMinutes,
	}
	asserts.AssertDeploymentReadyOption(t)
	return t
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
-- @param _endTime [Timestamp] <p>A timestamp indicating when the deployment lifecycle event ended.</p>
-- @param _status [LifecycleEventStatus] <p>The deployment lifecycle event status:</p> <ul> <li> <p>Pending: The deployment lifecycle event is pending.</p> </li> <li> <p>InProgress: The deployment lifecycle event is in progress.</p> </li> <li> <p>Succeeded: The deployment lifecycle event ran successfully.</p> </li> <li> <p>Failed: The deployment lifecycle event has failed.</p> </li> <li> <p>Skipped: The deployment lifecycle event has been skipped.</p> </li> <li> <p>Unknown: The deployment lifecycle event is unknown.</p> </li> </ul>
-- @param _diagnostics [Diagnostics] <p>Diagnostic information about the deployment lifecycle event.</p>
-- @param _startTime [Timestamp] <p>A timestamp indicating when the deployment lifecycle event started.</p>
-- @param _lifecycleEventName [LifecycleEventName] <p>The deployment lifecycle event name, such as ApplicationStop, BeforeInstall, AfterInstall, ApplicationStart, or ValidateService.</p>
function M.LifecycleEvent(_endTime, _status, _diagnostics, _startTime, _lifecycleEventName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleEvent")
	local t = { 
		["endTime"] = _endTime,
		["status"] = _status,
		["diagnostics"] = _diagnostics,
		["startTime"] = _startTime,
		["lifecycleEventName"] = _lifecycleEventName,
	}
	asserts.AssertLifecycleEvent(t)
	return t
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
function M.AlarmsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmsLimitExceededException")
	local t = { 
	}
	asserts.AssertAlarmsLimitExceededException(t)
	return t
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
-- @param _status [InstanceStatus] <p>The deployment status for this instance:</p> <ul> <li> <p>Pending: The deployment is pending for this instance.</p> </li> <li> <p>In Progress: The deployment is in progress for this instance.</p> </li> <li> <p>Succeeded: The deployment has succeeded for this instance.</p> </li> <li> <p>Failed: The deployment has failed for this instance.</p> </li> <li> <p>Skipped: The deployment has been skipped for this instance.</p> </li> <li> <p>Unknown: The deployment status is unknown for this instance.</p> </li> </ul>
-- @param _instanceId [InstanceId] <p>The instance ID.</p>
-- @param _lifecycleEvents [LifecycleEventList] <p>A list of lifecycle events for this instance.</p>
-- @param _deploymentId [DeploymentId] <p>The deployment ID.</p>
-- @param _lastUpdatedAt [Timestamp] <p>A timestamp indicating when the instance information was last updated.</p>
-- @param _instanceType [InstanceType] <p>Information about which environment an instance belongs to in a blue/green deployment.</p> <ul> <li> <p>BLUE: The instance is part of the original environment.</p> </li> <li> <p>GREEN: The instance is part of the replacement environment.</p> </li> </ul>
function M.InstanceSummary(_status, _instanceId, _lifecycleEvents, _deploymentId, _lastUpdatedAt, _instanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceSummary")
	local t = { 
		["status"] = _status,
		["instanceId"] = _instanceId,
		["lifecycleEvents"] = _lifecycleEvents,
		["deploymentId"] = _deploymentId,
		["lastUpdatedAt"] = _lastUpdatedAt,
		["instanceType"] = _instanceType,
	}
	asserts.AssertInstanceSummary(t)
	return t
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
-- @param _status [DeploymentStatus] <p>The status of the most recent deployment.</p>
-- @param _deploymentId [DeploymentId] <p>The deployment ID.</p>
-- @param _endTime [Timestamp] <p>A timestamp indicating when the most recent deployment to the deployment group completed.</p>
-- @param _createTime [Timestamp] <p>A timestamp indicating when the most recent deployment to the deployment group started.</p>
function M.LastDeploymentInfo(_status, _deploymentId, _endTime, _createTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LastDeploymentInfo")
	local t = { 
		["status"] = _status,
		["deploymentId"] = _deploymentId,
		["endTime"] = _endTime,
		["createTime"] = _createTime,
	}
	asserts.AssertLastDeploymentInfo(t)
	return t
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
function M.InvalidBucketNameFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBucketNameFilterException")
	local t = { 
	}
	asserts.AssertInvalidBucketNameFilterException(t)
	return t
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
function M.LifecycleHookLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleHookLimitExceededException")
	local t = { 
	}
	asserts.AssertLifecycleHookLimitExceededException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _deploymentGroupNames [DeploymentGroupsList] <p>The deployment groups' names.</p>
-- Required parameter: applicationName
-- Required parameter: deploymentGroupNames
function M.BatchGetDeploymentGroupsInput(_applicationName, _deploymentGroupNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentGroupsInput")
	local t = { 
		["applicationName"] = _applicationName,
		["deploymentGroupNames"] = _deploymentGroupNames,
	}
	asserts.AssertBatchGetDeploymentGroupsInput(t)
	return t
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
-- @param _applicationsInfo [ApplicationsInfoList] <p>Information about the applications.</p>
function M.BatchGetApplicationsOutput(_applicationsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationsOutput")
	local t = { 
		["applicationsInfo"] = _applicationsInfo,
	}
	asserts.AssertBatchGetApplicationsOutput(t)
	return t
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
function M.InvalidFileExistsBehaviorException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFileExistsBehaviorException")
	local t = { 
	}
	asserts.AssertInvalidFileExistsBehaviorException(t)
	return t
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
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	asserts.AssertInvalidTimeRangeException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The current name of the application you want to change.</p>
-- @param _newApplicationName [ApplicationName] <p>The new name to give the application.</p>
function M.UpdateApplicationInput(_applicationName, _newApplicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationInput")
	local t = { 
		["applicationName"] = _applicationName,
		["newApplicationName"] = _newApplicationName,
	}
	asserts.AssertUpdateApplicationInput(t)
	return t
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
function M.IamUserArnAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamUserArnAlreadyRegisteredException")
	local t = { 
	}
	asserts.AssertIamUserArnAlreadyRegisteredException(t)
	return t
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
-- @param _application [ApplicationInfo] <p>Information about the application.</p>
function M.GetApplicationOutput(_application, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationOutput")
	local t = { 
		["application"] = _application,
	}
	asserts.AssertGetApplicationOutput(t)
	return t
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
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.</p>
function M.ListApplicationsInput(_nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsInput")
	local t = { 
		["nextToken"] = _nextToken,
	}
	asserts.AssertListApplicationsInput(t)
	return t
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
function M.ApplicationDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationDoesNotExistException")
	local t = { 
	}
	asserts.AssertApplicationDoesNotExistException(t)
	return t
end

keys.TargetInstances = { ["autoScalingGroups"] = true, ["tagFilters"] = true, nil }

function asserts.AssertTargetInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetInstances to be of type 'table'")
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupNameList(struct["autoScalingGroups"]) end
	if struct["tagFilters"] then asserts.AssertEC2TagFilterList(struct["tagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetInstances[k], "TargetInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetInstances
-- <p>Information about the instances to be used in the replacement environment in a blue/green deployment.</p>
-- @param _autoScalingGroups [AutoScalingGroupNameList] <p>The names of one or more Auto Scaling groups to identify a replacement environment for a blue/green deployment.</p>
-- @param _tagFilters [EC2TagFilterList] <p>The tag filter key, type, and value used to identify Amazon EC2 instances in a replacement environment for a blue/green deployment.</p>
function M.TargetInstances(_autoScalingGroups, _tagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetInstances")
	local t = { 
		["autoScalingGroups"] = _autoScalingGroups,
		["tagFilters"] = _tagFilters,
	}
	asserts.AssertTargetInstances(t)
	return t
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
function M.ResourceValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceValidationException")
	local t = { 
	}
	asserts.AssertResourceValidationException(t)
	return t
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
-- @param _instanceName [InstanceName] <p>The name of the on-premises instance about which to get information.</p>
-- Required parameter: instanceName
function M.GetOnPremisesInstanceInput(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOnPremisesInstanceInput")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertGetOnPremisesInstanceInput(t)
	return t
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
function M.InvalidApplicationNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidApplicationNameException")
	local t = { 
	}
	asserts.AssertInvalidApplicationNameException(t)
	return t
end

keys.ApplicationInfo = { ["applicationName"] = true, ["gitHubAccountName"] = true, ["linkedToGitHub"] = true, ["applicationId"] = true, ["createTime"] = true, nil }

function asserts.AssertApplicationInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationInfo to be of type 'table'")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	if struct["gitHubAccountName"] then asserts.AssertGitHubAccountTokenName(struct["gitHubAccountName"]) end
	if struct["linkedToGitHub"] then asserts.AssertBoolean(struct["linkedToGitHub"]) end
	if struct["applicationId"] then asserts.AssertApplicationId(struct["applicationId"]) end
	if struct["createTime"] then asserts.AssertTimestamp(struct["createTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationInfo[k], "ApplicationInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationInfo
-- <p>Information about an application.</p>
-- @param _applicationName [ApplicationName] <p>The application name.</p>
-- @param _gitHubAccountName [GitHubAccountTokenName] <p>The name for a connection to a GitHub account.</p>
-- @param _linkedToGitHub [Boolean] <p>True if the user has authenticated with GitHub for the specified application; otherwise, false.</p>
-- @param _applicationId [ApplicationId] <p>The application ID.</p>
-- @param _createTime [Timestamp] <p>The time at which the application was created.</p>
function M.ApplicationInfo(_applicationName, _gitHubAccountName, _linkedToGitHub, _applicationId, _createTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationInfo")
	local t = { 
		["applicationName"] = _applicationName,
		["gitHubAccountName"] = _gitHubAccountName,
		["linkedToGitHub"] = _linkedToGitHub,
		["applicationId"] = _applicationId,
		["createTime"] = _createTime,
	}
	asserts.AssertApplicationInfo(t)
	return t
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
-- @param _Value [Value] <p>The tag's value.</p>
-- @param _Key [Key] <p>The tag's key.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _createTimeRange [TimeRange] <p>A time range (start and end) for returning a subset of the list of deployments.</p>
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- @param _includeOnlyStatuses [DeploymentStatusList] <p>A subset of deployments to list by status:</p> <ul> <li> <p>Created: Include created deployments in the resulting list.</p> </li> <li> <p>Queued: Include queued deployments in the resulting list.</p> </li> <li> <p>In Progress: Include in-progress deployments in the resulting list.</p> </li> <li> <p>Succeeded: Include successful deployments in the resulting list.</p> </li> <li> <p>Failed: Include failed deployments in the resulting list.</p> </li> <li> <p>Stopped: Include stopped deployments in the resulting list.</p> </li> </ul>
function M.ListDeploymentsInput(_applicationName, _createTimeRange, _nextToken, _deploymentGroupName, _includeOnlyStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsInput")
	local t = { 
		["applicationName"] = _applicationName,
		["createTimeRange"] = _createTimeRange,
		["nextToken"] = _nextToken,
		["deploymentGroupName"] = _deploymentGroupName,
		["includeOnlyStatuses"] = _includeOnlyStatuses,
	}
	asserts.AssertListDeploymentsInput(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent ListGitHubAccountTokenNames call to return the next set of names in the list. </p>
-- @param _tokenNameList [GitHubAccountTokenNameList] <p>A list of names of connections to GitHub accounts.</p>
function M.ListGitHubAccountTokenNamesOutput(_nextToken, _tokenNameList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGitHubAccountTokenNamesOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["tokenNameList"] = _tokenNameList,
	}
	asserts.AssertListGitHubAccountTokenNamesOutput(t)
	return t
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
-- @param _deploymentGroupInfo [DeploymentGroupInfo] <p>Information about the deployment group.</p>
function M.GetDeploymentGroupOutput(_deploymentGroupInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentGroupOutput")
	local t = { 
		["deploymentGroupInfo"] = _deploymentGroupInfo,
	}
	asserts.AssertGetDeploymentGroupOutput(t)
	return t
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
function M.InvalidTargetInstancesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTargetInstancesException")
	local t = { 
	}
	asserts.AssertInvalidTargetInstancesException(t)
	return t
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
function M.InvalidOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
	}
	asserts.AssertInvalidOperationException(t)
	return t
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
function M.InvalidIamUserArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIamUserArnException")
	local t = { 
	}
	asserts.AssertInvalidIamUserArnException(t)
	return t
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
-- @param _instancesSummary [InstanceSummaryList] <p>Information about the instance.</p>
-- @param _errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
function M.BatchGetDeploymentInstancesOutput(_instancesSummary, _errorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentInstancesOutput")
	local t = { 
		["instancesSummary"] = _instancesSummary,
		["errorMessage"] = _errorMessage,
	}
	asserts.AssertBatchGetDeploymentInstancesOutput(t)
	return t
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
function M.InvalidDeploymentGroupNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentGroupNameException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentGroupNameException(t)
	return t
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
function M.InvalidBlueGreenDeploymentConfigurationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBlueGreenDeploymentConfigurationException")
	local t = { 
	}
	asserts.AssertInvalidBlueGreenDeploymentConfigurationException(t)
	return t
end

keys.UpdateDeploymentGroupInput = { ["applicationName"] = true, ["autoScalingGroups"] = true, ["loadBalancerInfo"] = true, ["currentDeploymentGroupName"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["triggerConfigurations"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["serviceRoleArn"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["newDeploymentGroupName"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

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
	if struct["serviceRoleArn"] then asserts.AssertRole(struct["serviceRoleArn"]) end
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
-- @param _applicationName [ApplicationName] <p>The application name corresponding to the deployment group to update.</p>
-- @param _autoScalingGroups [AutoScalingGroupNameList] <p>The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.</p>
-- @param _loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in a deployment.</p>
-- @param _currentDeploymentGroupName [DeploymentGroupName] <p>The current name of the deployment group.</p>
-- @param _blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The replacement deployment configuration name to use, if you want to change it.</p>
-- @param _triggerConfigurations [TriggerConfigList] <p>Information about triggers to change when the deployment group is updated. For examples, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html">Modify Triggers in an AWS CodeDeploy Deployment Group</a> in the AWS CodeDeploy User Guide.</p>
-- @param _alarmConfiguration [AlarmConfiguration] <p>Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.</p>
-- @param _ec2TagFilters [EC2TagFilterList] <p>The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>
-- @param _serviceRoleArn [Role] <p>A replacement ARN for the service role, if you want to change it.</p>
-- @param _autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information for an automatic rollback configuration that is added or changed when a deployment group is updated.</p>
-- @param _deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-- @param _newDeploymentGroupName [DeploymentGroupName] <p>The new name of the deployment group, if you want to change it.</p>
-- @param _onPremisesInstanceTagFilters [TagFilterList] <p>The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>
-- Required parameter: applicationName
-- Required parameter: currentDeploymentGroupName
function M.UpdateDeploymentGroupInput(_applicationName, _autoScalingGroups, _loadBalancerInfo, _currentDeploymentGroupName, _blueGreenDeploymentConfiguration, _deploymentConfigName, _triggerConfigurations, _alarmConfiguration, _ec2TagFilters, _serviceRoleArn, _autoRollbackConfiguration, _deploymentStyle, _newDeploymentGroupName, _onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeploymentGroupInput")
	local t = { 
		["applicationName"] = _applicationName,
		["autoScalingGroups"] = _autoScalingGroups,
		["loadBalancerInfo"] = _loadBalancerInfo,
		["currentDeploymentGroupName"] = _currentDeploymentGroupName,
		["blueGreenDeploymentConfiguration"] = _blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = _deploymentConfigName,
		["triggerConfigurations"] = _triggerConfigurations,
		["alarmConfiguration"] = _alarmConfiguration,
		["ec2TagFilters"] = _ec2TagFilters,
		["serviceRoleArn"] = _serviceRoleArn,
		["autoRollbackConfiguration"] = _autoRollbackConfiguration,
		["deploymentStyle"] = _deploymentStyle,
		["newDeploymentGroupName"] = _newDeploymentGroupName,
		["onPremisesInstanceTagFilters"] = _onPremisesInstanceTagFilters,
	}
	asserts.AssertUpdateDeploymentGroupInput(t)
	return t
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
function M.DeploymentLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentLimitExceededException")
	local t = { 
	}
	asserts.AssertDeploymentLimitExceededException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _description [Description] <p>A comment about the revision.</p>
-- @param _revision [RevisionLocation] <p>Information about the application revision to register, including type and location.</p>
-- Required parameter: applicationName
-- Required parameter: revision
function M.RegisterApplicationRevisionInput(_applicationName, _description, _revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterApplicationRevisionInput")
	local t = { 
		["applicationName"] = _applicationName,
		["description"] = _description,
		["revision"] = _revision,
	}
	asserts.AssertRegisterApplicationRevisionInput(t)
	return t
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
function M.InvalidDeploymentIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentIdException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentIdException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of the application that corresponds to the revision.</p>
-- @param _revisionInfo [GenericRevisionInfo] <p>General information about the revision.</p>
-- @param _revision [RevisionLocation] <p>Additional information about the revision, including type and location.</p>
function M.GetApplicationRevisionOutput(_applicationName, _revisionInfo, _revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationRevisionOutput")
	local t = { 
		["applicationName"] = _applicationName,
		["revisionInfo"] = _revisionInfo,
		["revision"] = _revision,
	}
	asserts.AssertGetApplicationRevisionOutput(t)
	return t
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
function M.DeploymentConfigLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigLimitExceededException")
	local t = { 
	}
	asserts.AssertDeploymentConfigLimitExceededException(t)
	return t
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
function M.InvalidRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRoleException")
	local t = { 
	}
	asserts.AssertInvalidRoleException(t)
	return t
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
function M.InvalidRevisionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRevisionException")
	local t = { 
	}
	asserts.AssertInvalidRevisionException(t)
	return t
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
function M.InstanceNameAlreadyRegisteredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceNameAlreadyRegisteredException")
	local t = { 
	}
	asserts.AssertInstanceNameAlreadyRegisteredException(t)
	return t
end

keys.BatchGetApplicationsInput = { ["applicationNames"] = true, nil }

function asserts.AssertBatchGetApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetApplicationsInput to be of type 'table'")
	if struct["applicationNames"] then asserts.AssertApplicationsList(struct["applicationNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetApplicationsInput[k], "BatchGetApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetApplicationsInput
-- <p>Represents the input of a BatchGetApplications operation.</p>
-- @param _applicationNames [ApplicationsList] <p>A list of application names separated by spaces.</p>
function M.BatchGetApplicationsInput(_applicationNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationsInput")
	local t = { 
		["applicationNames"] = _applicationNames,
	}
	asserts.AssertBatchGetApplicationsInput(t)
	return t
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
function M.InstanceDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceDoesNotExistException")
	local t = { 
	}
	asserts.AssertInstanceDoesNotExistException(t)
	return t
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
-- @param _instanceStatusFilter [InstanceStatusList] <p>A subset of instances to list by status:</p> <ul> <li> <p>Pending: Include those instance with pending deployments.</p> </li> <li> <p>InProgress: Include those instance where deployments are still in progress.</p> </li> <li> <p>Succeeded: Include those instances with successful deployments.</p> </li> <li> <p>Failed: Include those instance with failed deployments.</p> </li> <li> <p>Skipped: Include those instance with skipped deployments.</p> </li> <li> <p>Unknown: Include those instance with deployments in an unknown state.</p> </li> </ul>
-- @param _deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.</p>
-- @param _instanceTypeFilter [InstanceTypeList] <p>The set of instances in a blue/green deployment, either those in the original environment ("BLUE") or those in the replacement environment ("GREEN"), for which you want to view instance information.</p>
-- Required parameter: deploymentId
function M.ListDeploymentInstancesInput(_instanceStatusFilter, _deploymentId, _nextToken, _instanceTypeFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentInstancesInput")
	local t = { 
		["instanceStatusFilter"] = _instanceStatusFilter,
		["deploymentId"] = _deploymentId,
		["nextToken"] = _nextToken,
		["instanceTypeFilter"] = _instanceTypeFilter,
	}
	asserts.AssertListDeploymentInstancesInput(t)
	return t
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
function M.ApplicationLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationLimitExceededException")
	local t = { 
	}
	asserts.AssertApplicationLimitExceededException(t)
	return t
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
function M.InvalidInstanceNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceNameException")
	local t = { 
	}
	asserts.AssertInvalidInstanceNameException(t)
	return t
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
function M.ApplicationNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationNameRequiredException")
	local t = { 
	}
	asserts.AssertApplicationNameRequiredException(t)
	return t
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
-- @param _instanceSummary [InstanceSummary] <p>Information about the instance.</p>
function M.GetDeploymentInstanceOutput(_instanceSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInstanceOutput")
	local t = { 
		["instanceSummary"] = _instanceSummary,
	}
	asserts.AssertGetDeploymentInstanceOutput(t)
	return t
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
function M.InvalidTagFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagFilterException")
	local t = { 
	}
	asserts.AssertInvalidTagFilterException(t)
	return t
end

keys.CreateApplicationInput = { ["applicationName"] = true, nil }

function asserts.AssertCreateApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationInput to be of type 'table'")
	assert(struct["applicationName"], "Expected key applicationName to exist in table")
	if struct["applicationName"] then asserts.AssertApplicationName(struct["applicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationInput[k], "CreateApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationInput
-- <p>Represents the input of a CreateApplication operation.</p>
-- @param _applicationName [ApplicationName] <p>The name of the application. This name must be unique with the applicable IAM user or AWS account.</p>
-- Required parameter: applicationName
function M.CreateApplicationInput(_applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationInput")
	local t = { 
		["applicationName"] = _applicationName,
	}
	asserts.AssertCreateApplicationInput(t)
	return t
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
-- @param _applicationId [ApplicationId] <p>A unique application ID.</p>
function M.CreateApplicationOutput(_applicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationOutput")
	local t = { 
		["applicationId"] = _applicationId,
	}
	asserts.AssertCreateApplicationOutput(t)
	return t
end

keys.DeploymentInfo = { ["autoRollbackConfiguration"] = true, ["additionalDeploymentStatusInfo"] = true, ["creator"] = true, ["previousRevision"] = true, ["fileExistsBehavior"] = true, ["completeTime"] = true, ["applicationName"] = true, ["deploymentOverview"] = true, ["deploymentId"] = true, ["ignoreApplicationStopFailures"] = true, ["updateOutdatedInstancesOnly"] = true, ["rollbackInfo"] = true, ["targetInstances"] = true, ["revision"] = true, ["status"] = true, ["description"] = true, ["errorInformation"] = true, ["startTime"] = true, ["instanceTerminationWaitTimeStarted"] = true, ["deploymentGroupName"] = true, ["createTime"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["deploymentStyle"] = true, nil }

function asserts.AssertDeploymentInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentInfo to be of type 'table'")
	if struct["autoRollbackConfiguration"] then asserts.AssertAutoRollbackConfiguration(struct["autoRollbackConfiguration"]) end
	if struct["additionalDeploymentStatusInfo"] then asserts.AssertAdditionalDeploymentStatusInfo(struct["additionalDeploymentStatusInfo"]) end
	if struct["creator"] then asserts.AssertDeploymentCreator(struct["creator"]) end
	if struct["previousRevision"] then asserts.AssertRevisionLocation(struct["previousRevision"]) end
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
-- @param _autoRollbackConfiguration [AutoRollbackConfiguration] <p>Information about the automatic rollback configuration associated with the deployment.</p>
-- @param _additionalDeploymentStatusInfo [AdditionalDeploymentStatusInfo] <p>Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.</p>
-- @param _creator [DeploymentCreator] <p>The means by which the deployment was created:</p> <ul> <li> <p>user: A user created the deployment.</p> </li> <li> <p>autoscaling: Auto Scaling created the deployment.</p> </li> <li> <p>codeDeployRollback: A rollback process created the deployment.</p> </li> </ul>
-- @param _previousRevision [RevisionLocation] <p>Information about the application revision that was deployed to the deployment group before the most recent successful deployment.</p>
-- @param _fileExistsBehavior [FileExistsBehavior] <p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <ul> <li> <p>DISALLOW: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p>OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p>RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>
-- @param _completeTime [Timestamp] <p>A timestamp indicating when the deployment was complete.</p>
-- @param _applicationName [ApplicationName] <p>The application name.</p>
-- @param _deploymentOverview [DeploymentOverview] <p>A summary of the deployment status of the instances in the deployment.</p>
-- @param _deploymentId [DeploymentId] <p>The deployment ID.</p>
-- @param _ignoreApplicationStopFailures [Boolean] <p>If true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.</p> <p>If false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.</p>
-- @param _updateOutdatedInstancesOnly [Boolean] <p>Indicates whether only instances that are not running the latest application revision are to be deployed to.</p>
-- @param _rollbackInfo [RollbackInfo] <p>Information about a deployment rollback.</p>
-- @param _targetInstances [TargetInstances] <p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>
-- @param _revision [RevisionLocation] <p>Information about the location of stored application artifacts and the service from which to retrieve them.</p>
-- @param _status [DeploymentStatus] <p>The current state of the deployment as a whole.</p>
-- @param _description [Description] <p>A comment about the deployment.</p>
-- @param _errorInformation [ErrorInformation] <p>Information about any error associated with this deployment.</p>
-- @param _startTime [Timestamp] <p>A timestamp indicating when the deployment was deployed to the deployment group.</p> <p>In some cases, the reported value of the start time may be later than the complete time. This is due to differences in the clock settings of back-end servers that participate in the deployment process.</p>
-- @param _instanceTerminationWaitTimeStarted [Boolean] <p>Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified; otherwise, 'true' as soon as the termination wait period starts.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The deployment group name.</p>
-- @param _createTime [Timestamp] <p>A timestamp indicating when the deployment was created.</p>
-- @param _loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in the deployment.</p>
-- @param _blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for this deployment.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The deployment configuration name.</p>
-- @param _deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
function M.DeploymentInfo(_autoRollbackConfiguration, _additionalDeploymentStatusInfo, _creator, _previousRevision, _fileExistsBehavior, _completeTime, _applicationName, _deploymentOverview, _deploymentId, _ignoreApplicationStopFailures, _updateOutdatedInstancesOnly, _rollbackInfo, _targetInstances, _revision, _status, _description, _errorInformation, _startTime, _instanceTerminationWaitTimeStarted, _deploymentGroupName, _createTime, _loadBalancerInfo, _blueGreenDeploymentConfiguration, _deploymentConfigName, _deploymentStyle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentInfo")
	local t = { 
		["autoRollbackConfiguration"] = _autoRollbackConfiguration,
		["additionalDeploymentStatusInfo"] = _additionalDeploymentStatusInfo,
		["creator"] = _creator,
		["previousRevision"] = _previousRevision,
		["fileExistsBehavior"] = _fileExistsBehavior,
		["completeTime"] = _completeTime,
		["applicationName"] = _applicationName,
		["deploymentOverview"] = _deploymentOverview,
		["deploymentId"] = _deploymentId,
		["ignoreApplicationStopFailures"] = _ignoreApplicationStopFailures,
		["updateOutdatedInstancesOnly"] = _updateOutdatedInstancesOnly,
		["rollbackInfo"] = _rollbackInfo,
		["targetInstances"] = _targetInstances,
		["revision"] = _revision,
		["status"] = _status,
		["description"] = _description,
		["errorInformation"] = _errorInformation,
		["startTime"] = _startTime,
		["instanceTerminationWaitTimeStarted"] = _instanceTerminationWaitTimeStarted,
		["deploymentGroupName"] = _deploymentGroupName,
		["createTime"] = _createTime,
		["loadBalancerInfo"] = _loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = _blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = _deploymentConfigName,
		["deploymentStyle"] = _deploymentStyle,
	}
	asserts.AssertDeploymentInfo(t)
	return t
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
function M.RevisionRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionRequiredException")
	local t = { 
	}
	asserts.AssertRevisionRequiredException(t)
	return t
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
function M.InstanceLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceLimitExceededException")
	local t = { 
	}
	asserts.AssertInstanceLimitExceededException(t)
	return t
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
-- @param _instanceArn [InstanceArn] <p>The ARN of the on-premises instance.</p>
-- @param _iamSessionArn [IamSessionArn] <p>The ARN of the IAM session associated with the on-premises instance.</p>
-- @param _tags [TagList] <p>The tags currently associated with the on-premises instance.</p>
-- @param _registerTime [Timestamp] <p>The time at which the on-premises instance was registered.</p>
-- @param _iamUserArn [IamUserArn] <p>The IAM user ARN associated with the on-premises instance.</p>
-- @param _deregisterTime [Timestamp] <p>If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.</p>
-- @param _instanceName [InstanceName] <p>The name of the on-premises instance.</p>
function M.InstanceInfo(_instanceArn, _iamSessionArn, _tags, _registerTime, _iamUserArn, _deregisterTime, _instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceInfo")
	local t = { 
		["instanceArn"] = _instanceArn,
		["iamSessionArn"] = _iamSessionArn,
		["tags"] = _tags,
		["registerTime"] = _registerTime,
		["iamUserArn"] = _iamUserArn,
		["deregisterTime"] = _deregisterTime,
		["instanceName"] = _instanceName,
	}
	asserts.AssertInstanceInfo(t)
	return t
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
function M.DeploymentGroupLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupLimitExceededException")
	local t = { 
	}
	asserts.AssertDeploymentGroupLimitExceededException(t)
	return t
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
-- @param _instanceInfos [InstanceInfoList] <p>Information about the on-premises instances.</p>
function M.BatchGetOnPremisesInstancesOutput(_instanceInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetOnPremisesInstancesOutput")
	local t = { 
		["instanceInfos"] = _instanceInfos,
	}
	asserts.AssertBatchGetOnPremisesInstancesOutput(t)
	return t
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
function M.DeploymentGroupDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupDoesNotExistException")
	local t = { 
	}
	asserts.AssertDeploymentGroupDoesNotExistException(t)
	return t
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
-- @param _applications [ApplicationsList] <p>A list of application names.</p>
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list applications call to return the next set of applications, will also be returned. in the list.</p>
function M.ListApplicationsOutput(_applications, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsOutput")
	local t = { 
		["applications"] = _applications,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListApplicationsOutput(t)
	return t
end

keys.LoadBalancerInfo = { ["elbInfoList"] = true, nil }

function asserts.AssertLoadBalancerInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerInfo to be of type 'table'")
	if struct["elbInfoList"] then asserts.AssertELBInfoList(struct["elbInfoList"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerInfo[k], "LoadBalancerInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerInfo
-- <p>Information about the load balancer used in a deployment.</p>
-- @param _elbInfoList [ELBInfoList] <p>An array containing information about the load balancer in Elastic Load Balancing to use in a deployment.</p>
function M.LoadBalancerInfo(_elbInfoList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancerInfo")
	local t = { 
		["elbInfoList"] = _elbInfoList,
	}
	asserts.AssertLoadBalancerInfo(t)
	return t
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
function M.DeploymentIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentIdRequiredException")
	local t = { 
	}
	asserts.AssertDeploymentIdRequiredException(t)
	return t
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
-- @param _action [InstanceAction] <p>The action to take on instances in the original environment after a successful blue/green deployment.</p> <ul> <li> <p>TERMINATE: Instances are terminated after a specified wait time.</p> </li> <li> <p>KEEP_ALIVE: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.</p> </li> </ul>
-- @param _terminationWaitTimeInMinutes [Duration] <p>The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.</p>
function M.BlueInstanceTerminationOption(_action, _terminationWaitTimeInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlueInstanceTerminationOption")
	local t = { 
		["action"] = _action,
		["terminationWaitTimeInMinutes"] = _terminationWaitTimeInMinutes,
	}
	asserts.AssertBlueInstanceTerminationOption(t)
	return t
end

keys.RevisionLocation = { ["revisionType"] = true, ["s3Location"] = true, ["gitHubLocation"] = true, nil }

function asserts.AssertRevisionLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionLocation to be of type 'table'")
	if struct["revisionType"] then asserts.AssertRevisionLocationType(struct["revisionType"]) end
	if struct["s3Location"] then asserts.AssertS3Location(struct["s3Location"]) end
	if struct["gitHubLocation"] then asserts.AssertGitHubLocation(struct["gitHubLocation"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevisionLocation[k], "RevisionLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionLocation
-- <p>Information about the location of an application revision.</p>
-- @param _revisionType [RevisionLocationType] <p>The type of application revision:</p> <ul> <li> <p>S3: An application revision stored in Amazon S3.</p> </li> <li> <p>GitHub: An application revision stored in GitHub.</p> </li> </ul>
-- @param _s3Location [S3Location] <p>Information about the location of application artifacts stored in Amazon S3. </p>
-- @param _gitHubLocation [GitHubLocation] <p>Information about the location of application artifacts stored in GitHub.</p>
function M.RevisionLocation(_revisionType, _s3Location, _gitHubLocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionLocation")
	local t = { 
		["revisionType"] = _revisionType,
		["s3Location"] = _s3Location,
		["gitHubLocation"] = _gitHubLocation,
	}
	asserts.AssertRevisionLocation(t)
	return t
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
function M.InvalidInstanceStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceStatusException")
	local t = { 
	}
	asserts.AssertInvalidInstanceStatusException(t)
	return t
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
function M.RevisionDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevisionDoesNotExistException")
	local t = { 
	}
	asserts.AssertRevisionDoesNotExistException(t)
	return t
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
-- @param _instanceName [InstanceName] <p>The name of the on-premises instance to deregister.</p>
-- Required parameter: instanceName
function M.DeregisterOnPremisesInstanceInput(_instanceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterOnPremisesInstanceInput")
	local t = { 
		["instanceName"] = _instanceName,
	}
	asserts.AssertDeregisterOnPremisesInstanceInput(t)
	return t
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
function M.GitHubAccountTokenDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GitHubAccountTokenDoesNotExistException")
	local t = { 
	}
	asserts.AssertGitHubAccountTokenDoesNotExistException(t)
	return t
end

keys.BatchGetDeploymentsInput = { ["deploymentIds"] = true, nil }

function asserts.AssertBatchGetDeploymentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetDeploymentsInput to be of type 'table'")
	if struct["deploymentIds"] then asserts.AssertDeploymentsList(struct["deploymentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetDeploymentsInput[k], "BatchGetDeploymentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetDeploymentsInput
-- <p>Represents the input of a BatchGetDeployments operation.</p>
-- @param _deploymentIds [DeploymentsList] <p>A list of deployment IDs, separated by spaces.</p>
function M.BatchGetDeploymentsInput(_deploymentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentsInput")
	local t = { 
		["deploymentIds"] = _deploymentIds,
	}
	asserts.AssertBatchGetDeploymentsInput(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>The deployment ID of the blue/green deployment for which you want to start rerouting traffic to the replacement environment.</p>
function M.ContinueDeploymentInput(_deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueDeploymentInput")
	local t = { 
		["deploymentId"] = _deploymentId,
	}
	asserts.AssertContinueDeploymentInput(t)
	return t
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
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list deployment configurations call. It can be used to return the next set of deployment configurations in the list. </p>
function M.ListDeploymentConfigsInput(_nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentConfigsInput")
	local t = { 
		["nextToken"] = _nextToken,
	}
	asserts.AssertListDeploymentConfigsInput(t)
	return t
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
-- @param _instanceId [InstanceId] <p>The unique ID of an instance in the deployment group.</p>
-- @param _deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- Required parameter: deploymentId
-- Required parameter: instanceId
function M.GetDeploymentInstanceInput(_instanceId, _deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInstanceInput")
	local t = { 
		["instanceId"] = _instanceId,
		["deploymentId"] = _deploymentId,
	}
	asserts.AssertGetDeploymentInstanceInput(t)
	return t
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
-- @param _commitId [CommitId] <p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the application revision.</p>
-- @param _repository [Repository] <p>The GitHub account and repository pair that stores a reference to the commit that represents the bundled artifacts for the application revision. </p> <p>Specified as account/repository.</p>
function M.GitHubLocation(_commitId, _repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GitHubLocation")
	local t = { 
		["commitId"] = _commitId,
		["repository"] = _repository,
	}
	asserts.AssertGitHubLocation(t)
	return t
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
-- @param _deploymentGroupId [DeploymentGroupId] <p>A unique deployment group ID.</p>
function M.CreateDeploymentGroupOutput(_deploymentGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentGroupOutput")
	local t = { 
		["deploymentGroupId"] = _deploymentGroupId,
	}
	asserts.AssertCreateDeploymentGroupOutput(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of the application that corresponds to the revisions.</p>
-- @param _errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
-- @param _revisions [RevisionInfoList] <p>Additional information about the revisions, including the type and location.</p>
function M.BatchGetApplicationRevisionsOutput(_applicationName, _errorMessage, _revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationRevisionsOutput")
	local t = { 
		["applicationName"] = _applicationName,
		["errorMessage"] = _errorMessage,
		["revisions"] = _revisions,
	}
	asserts.AssertBatchGetApplicationRevisionsOutput(t)
	return t
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
function M.InvalidLoadBalancerInfoException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLoadBalancerInfoException")
	local t = { 
	}
	asserts.AssertInvalidLoadBalancerInfoException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _autoRollbackConfiguration [AutoRollbackConfiguration] <p>Configuration information for an automatic rollback that is added when a deployment is created.</p>
-- @param _description [Description] <p>A comment about the deployment.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>The name of a deployment configuration associated with the applicable IAM user or AWS account.</p> <p>If not specified, the value configured in the deployment group will be used as the default. If the deployment group does not have a deployment configuration associated with it, then CodeDeployDefault.OneAtATime will be used by default.</p>
-- @param _ignoreApplicationStopFailures [Boolean] <p>If set to true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.</p> <p>If set to false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to fail to an instance, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.</p>
-- @param _updateOutdatedInstancesOnly [Boolean] <p>Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.</p>
-- @param _targetInstances [TargetInstances] <p>Information about the instances that will belong to the replacement environment in a blue/green deployment.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The name of the deployment group.</p>
-- @param _fileExistsBehavior [FileExistsBehavior] <p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <p>The fileExistsBehavior parameter takes any of the following values:</p> <ul> <li> <p>DISALLOW: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p>OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p>RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>
-- @param _revision [RevisionLocation] <p>The type and location of the revision to deploy.</p>
-- Required parameter: applicationName
function M.CreateDeploymentInput(_applicationName, _autoRollbackConfiguration, _description, _deploymentConfigName, _ignoreApplicationStopFailures, _updateOutdatedInstancesOnly, _targetInstances, _deploymentGroupName, _fileExistsBehavior, _revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentInput")
	local t = { 
		["applicationName"] = _applicationName,
		["autoRollbackConfiguration"] = _autoRollbackConfiguration,
		["description"] = _description,
		["deploymentConfigName"] = _deploymentConfigName,
		["ignoreApplicationStopFailures"] = _ignoreApplicationStopFailures,
		["updateOutdatedInstancesOnly"] = _updateOutdatedInstancesOnly,
		["targetInstances"] = _targetInstances,
		["deploymentGroupName"] = _deploymentGroupName,
		["fileExistsBehavior"] = _fileExistsBehavior,
		["revision"] = _revision,
	}
	asserts.AssertCreateDeploymentInput(t)
	return t
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
-- @param _hooksNotCleanedUp [AutoScalingGroupList] <p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group.</p>
function M.DeleteDeploymentGroupOutput(_hooksNotCleanedUp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentGroupOutput")
	local t = { 
		["hooksNotCleanedUp"] = _hooksNotCleanedUp,
	}
	asserts.AssertDeleteDeploymentGroupOutput(t)
	return t
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
-- @param _errorMessage [ErrorMessage] <p>Information about errors that may have occurred during the API call.</p>
-- @param _deploymentGroupsInfo [DeploymentGroupInfoList] <p>Information about the deployment groups.</p>
function M.BatchGetDeploymentGroupsOutput(_errorMessage, _deploymentGroupsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentGroupsOutput")
	local t = { 
		["errorMessage"] = _errorMessage,
		["deploymentGroupsInfo"] = _deploymentGroupsInfo,
	}
	asserts.AssertBatchGetDeploymentGroupsOutput(t)
	return t
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
function M.DeploymentConfigAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigAlreadyExistsException")
	local t = { 
	}
	asserts.AssertDeploymentConfigAlreadyExistsException(t)
	return t
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
function M.InvalidInstanceTypeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceTypeException")
	local t = { 
	}
	asserts.AssertInvalidInstanceTypeException(t)
	return t
end

keys.CreateDeploymentGroupInput = { ["applicationName"] = true, ["autoScalingGroups"] = true, ["loadBalancerInfo"] = true, ["blueGreenDeploymentConfiguration"] = true, ["deploymentConfigName"] = true, ["triggerConfigurations"] = true, ["alarmConfiguration"] = true, ["ec2TagFilters"] = true, ["autoRollbackConfiguration"] = true, ["deploymentStyle"] = true, ["serviceRoleArn"] = true, ["deploymentGroupName"] = true, ["onPremisesInstanceTagFilters"] = true, nil }

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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _autoScalingGroups [AutoScalingGroupNameList] <p>A list of associated Auto Scaling groups.</p>
-- @param _loadBalancerInfo [LoadBalancerInfo] <p>Information about the load balancer used in a deployment.</p>
-- @param _blueGreenDeploymentConfiguration [BlueGreenDeploymentConfiguration] <p>Information about blue/green deployment options for a deployment group.</p>
-- @param _deploymentConfigName [DeploymentConfigName] <p>If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.</p> <p>CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn't specified for the deployment or the deployment group.</p> <p>For more information about the predefined deployment configurations in AWS CodeDeploy, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working with Deployment Groups in AWS CodeDeploy</a> in the AWS CodeDeploy User Guide.</p>
-- @param _triggerConfigurations [TriggerConfigList] <p>Information about triggers to create when the deployment group is created. For examples, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html">Create a Trigger for an AWS CodeDeploy Event</a> in the AWS CodeDeploy User Guide.</p>
-- @param _alarmConfiguration [AlarmConfiguration] <p>Information to add about Amazon CloudWatch alarms when the deployment group is created.</p>
-- @param _ec2TagFilters [EC2TagFilterList] <p>The Amazon EC2 tags on which to filter. The deployment group will include EC2 instances with any of the specified tags.</p>
-- @param _autoRollbackConfiguration [AutoRollbackConfiguration] <p>Configuration information for an automatic rollback that is added when a deployment group is created.</p>
-- @param _deploymentStyle [DeploymentStyle] <p>Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.</p>
-- @param _serviceRoleArn [Role] <p>A service role ARN that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The name of a new deployment group for the specified application.</p>
-- @param _onPremisesInstanceTagFilters [TagFilterList] <p>The on-premises instance tags on which to filter. The deployment group will include on-premises instances with any of the specified tags.</p>
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
-- Required parameter: serviceRoleArn
function M.CreateDeploymentGroupInput(_applicationName, _autoScalingGroups, _loadBalancerInfo, _blueGreenDeploymentConfiguration, _deploymentConfigName, _triggerConfigurations, _alarmConfiguration, _ec2TagFilters, _autoRollbackConfiguration, _deploymentStyle, _serviceRoleArn, _deploymentGroupName, _onPremisesInstanceTagFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentGroupInput")
	local t = { 
		["applicationName"] = _applicationName,
		["autoScalingGroups"] = _autoScalingGroups,
		["loadBalancerInfo"] = _loadBalancerInfo,
		["blueGreenDeploymentConfiguration"] = _blueGreenDeploymentConfiguration,
		["deploymentConfigName"] = _deploymentConfigName,
		["triggerConfigurations"] = _triggerConfigurations,
		["alarmConfiguration"] = _alarmConfiguration,
		["ec2TagFilters"] = _ec2TagFilters,
		["autoRollbackConfiguration"] = _autoRollbackConfiguration,
		["deploymentStyle"] = _deploymentStyle,
		["serviceRoleArn"] = _serviceRoleArn,
		["deploymentGroupName"] = _deploymentGroupName,
		["onPremisesInstanceTagFilters"] = _onPremisesInstanceTagFilters,
	}
	asserts.AssertCreateDeploymentGroupInput(t)
	return t
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
function M.DeploymentGroupAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupAlreadyExistsException")
	local t = { 
	}
	asserts.AssertDeploymentGroupAlreadyExistsException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application about which to get revision information.</p>
-- @param _revisions [RevisionLocationList] <p>Information to get about the application revisions, including type and location.</p>
-- Required parameter: applicationName
-- Required parameter: revisions
function M.BatchGetApplicationRevisionsInput(_applicationName, _revisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetApplicationRevisionsInput")
	local t = { 
		["applicationName"] = _applicationName,
		["revisions"] = _revisions,
	}
	asserts.AssertBatchGetApplicationRevisionsInput(t)
	return t
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
-- @param _hooksNotCleanedUp [AutoScalingGroupList] <p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.</p>
function M.UpdateDeploymentGroupOutput(_hooksNotCleanedUp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeploymentGroupOutput")
	local t = { 
		["hooksNotCleanedUp"] = _hooksNotCleanedUp,
	}
	asserts.AssertUpdateDeploymentGroupOutput(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.</p>
-- @param _deploymentConfigsList [DeploymentConfigsList] <p>A list of deployment configurations, including built-in configurations such as CodeDeployDefault.OneAtATime.</p>
function M.ListDeploymentConfigsOutput(_nextToken, _deploymentConfigsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentConfigsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["deploymentConfigsList"] = _deploymentConfigsList,
	}
	asserts.AssertListDeploymentConfigsOutput(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _deploymentGroupName [DeploymentGroupName] <p>The name of an existing deployment group for the specified application.</p>
-- Required parameter: applicationName
-- Required parameter: deploymentGroupName
function M.DeleteDeploymentGroupInput(_applicationName, _deploymentGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentGroupInput")
	local t = { 
		["applicationName"] = _applicationName,
		["deploymentGroupName"] = _deploymentGroupName,
	}
	asserts.AssertDeleteDeploymentGroupInput(t)
	return t
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
-- @param _status [StopStatus] <p>The status of the stop deployment operation:</p> <ul> <li> <p>Pending: The stop operation is pending.</p> </li> <li> <p>Succeeded: The stop operation was successful.</p> </li> </ul>
-- @param _statusMessage [Message] <p>An accompanying status message.</p>
function M.StopDeploymentOutput(_status, _statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDeploymentOutput")
	local t = { 
		["status"] = _status,
		["statusMessage"] = _statusMessage,
	}
	asserts.AssertStopDeploymentOutput(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>A unique deployment ID.</p>
function M.CreateDeploymentOutput(_deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentOutput")
	local t = { 
		["deploymentId"] = _deploymentId,
	}
	asserts.AssertCreateDeploymentOutput(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.</p>
-- @param _deployments [DeploymentsList] <p>A list of deployment IDs.</p>
function M.ListDeploymentsOutput(_nextToken, _deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["deployments"] = _deployments,
	}
	asserts.AssertListDeploymentsOutput(t)
	return t
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
function M.InvalidMinimumHealthyHostValueException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMinimumHealthyHostValueException")
	local t = { 
	}
	asserts.AssertInvalidMinimumHealthyHostValueException(t)
	return t
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
-- @param _deploymentsInfo [DeploymentsInfoList] <p>Information about the deployments.</p>
function M.BatchGetDeploymentsOutput(_deploymentsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentsOutput")
	local t = { 
		["deploymentsInfo"] = _deploymentsInfo,
	}
	asserts.AssertBatchGetDeploymentsOutput(t)
	return t
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
function M.IamArnRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IamArnRequiredException")
	local t = { 
	}
	asserts.AssertIamArnRequiredException(t)
	return t
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
function M.DeploymentConfigNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfigNameRequiredException")
	local t = { 
	}
	asserts.AssertDeploymentConfigNameRequiredException(t)
	return t
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
-- @param _Skipped [InstanceCount] <p>The number of instances in the deployment in a skipped state.</p>
-- @param _Succeeded [InstanceCount] <p>The number of instances in the deployment to which revisions have been successfully deployed.</p>
-- @param _Failed [InstanceCount] <p>The number of instances in the deployment in a failed state.</p>
-- @param _Ready [InstanceCount] <p>The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.</p>
-- @param _InProgress [InstanceCount] <p>The number of instances in which the deployment is in progress.</p>
-- @param _Pending [InstanceCount] <p>The number of instances in the deployment in a pending state.</p>
function M.DeploymentOverview(_Skipped, _Succeeded, _Failed, _Ready, _InProgress, _Pending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentOverview")
	local t = { 
		["Skipped"] = _Skipped,
		["Succeeded"] = _Succeeded,
		["Failed"] = _Failed,
		["Ready"] = _Ready,
		["InProgress"] = _InProgress,
		["Pending"] = _Pending,
	}
	asserts.AssertDeploymentOverview(t)
	return t
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
function M.InvalidRegistrationStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRegistrationStatusException")
	local t = { 
	}
	asserts.AssertInvalidRegistrationStatusException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- @param _s3KeyPrefix [S3Key] <p>A key prefix for the set of Amazon S3 objects to limit the search for revisions.</p>
-- @param _s3Bucket [S3Bucket] <p>An Amazon S3 bucket name to limit the search for revisions.</p> <p>If set to null, all of the user's buckets will be searched.</p>
-- @param _sortBy [ApplicationRevisionSortBy] <p>The column name to use to sort the list results:</p> <ul> <li> <p>registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.</p> </li> <li> <p>firstUsedTime: Sort by the time the revisions were first used in a deployment.</p> </li> <li> <p>lastUsedTime: Sort by the time the revisions were last used in a deployment.</p> </li> </ul> <p>If not specified or set to null, the results will be returned in an arbitrary order.</p>
-- @param _nextToken [NextToken] <p>An identifier returned from the previous list application revisions call. It can be used to return the next set of applications in the list.</p>
-- @param _deployed [ListStateFilterAction] <p>Whether to list revisions based on whether the revision is the target revision of an deployment group:</p> <ul> <li> <p>include: List revisions that are target revisions of a deployment group.</p> </li> <li> <p>exclude: Do not list revisions that are target revisions of a deployment group.</p> </li> <li> <p>ignore: List all revisions.</p> </li> </ul>
-- @param _sortOrder [SortOrder] <p>The order in which to sort the list results:</p> <ul> <li> <p>ascending: ascending order.</p> </li> <li> <p>descending: descending order.</p> </li> </ul> <p>If not specified, the results will be sorted in ascending order.</p> <p>If set to null, the results will be sorted in an arbitrary order.</p>
-- Required parameter: applicationName
function M.ListApplicationRevisionsInput(_applicationName, _s3KeyPrefix, _s3Bucket, _sortBy, _nextToken, _deployed, _sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationRevisionsInput")
	local t = { 
		["applicationName"] = _applicationName,
		["s3KeyPrefix"] = _s3KeyPrefix,
		["s3Bucket"] = _s3Bucket,
		["sortBy"] = _sortBy,
		["nextToken"] = _nextToken,
		["deployed"] = _deployed,
		["sortOrder"] = _sortOrder,
	}
	asserts.AssertListApplicationRevisionsInput(t)
	return t
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
-- @param _terminateBlueInstancesOnDeploymentSuccess [BlueInstanceTerminationOption] <p>Information about whether to terminate instances in the original fleet during a blue/green deployment.</p>
-- @param _deploymentReadyOption [DeploymentReadyOption] <p>Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.</p>
-- @param _greenFleetProvisioningOption [GreenFleetProvisioningOption] <p>Information about how instances are provisioned for a replacement environment in a blue/green deployment.</p>
function M.BlueGreenDeploymentConfiguration(_terminateBlueInstancesOnDeploymentSuccess, _deploymentReadyOption, _greenFleetProvisioningOption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlueGreenDeploymentConfiguration")
	local t = { 
		["terminateBlueInstancesOnDeploymentSuccess"] = _terminateBlueInstancesOnDeploymentSuccess,
		["deploymentReadyOption"] = _deploymentReadyOption,
		["greenFleetProvisioningOption"] = _greenFleetProvisioningOption,
	}
	asserts.AssertBlueGreenDeploymentConfiguration(t)
	return t
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
function M.DeploymentGroupNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentGroupNameRequiredException")
	local t = { 
	}
	asserts.AssertDeploymentGroupNameRequiredException(t)
	return t
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
-- @param _name [AlarmName] <p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used only once in a list of alarms.</p>
function M.Alarm(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alarm")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertAlarm(t)
	return t
end

keys.BatchGetOnPremisesInstancesInput = { ["instanceNames"] = true, nil }

function asserts.AssertBatchGetOnPremisesInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetOnPremisesInstancesInput to be of type 'table'")
	if struct["instanceNames"] then asserts.AssertInstanceNameList(struct["instanceNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetOnPremisesInstancesInput[k], "BatchGetOnPremisesInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetOnPremisesInstancesInput
-- <p>Represents the input of a BatchGetOnPremisesInstances operation.</p>
-- @param _instanceNames [InstanceNameList] <p>The names of the on-premises instances about which to get information.</p>
function M.BatchGetOnPremisesInstancesInput(_instanceNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetOnPremisesInstancesInput")
	local t = { 
		["instanceNames"] = _instanceNames,
	}
	asserts.AssertBatchGetOnPremisesInstancesInput(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>The unique ID of a deployment.</p>
-- @param _instanceIds [InstancesList] <p>The unique IDs of instances in the deployment group.</p>
-- Required parameter: deploymentId
-- Required parameter: instanceIds
function M.BatchGetDeploymentInstancesInput(_deploymentId, _instanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetDeploymentInstancesInput")
	local t = { 
		["deploymentId"] = _deploymentId,
		["instanceIds"] = _instanceIds,
	}
	asserts.AssertBatchGetDeploymentInstancesInput(t)
	return t
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
-- @param _Type [TagFilterType] <p>The on-premises instance tag filter type:</p> <ul> <li> <p>KEY_ONLY: Key only.</p> </li> <li> <p>VALUE_ONLY: Value only.</p> </li> <li> <p>KEY_AND_VALUE: Key and value.</p> </li> </ul>
-- @param _Value [Value] <p>The on-premises instance tag filter value.</p>
-- @param _Key [Key] <p>The on-premises instance tag filter key.</p>
function M.TagFilter(_Type, _Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["Type"] = _Type,
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTagFilter(t)
	return t
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
function M.RoleRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoleRequiredException")
	local t = { 
	}
	asserts.AssertRoleRequiredException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- Required parameter: applicationName
function M.GetApplicationInput(_applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationInput")
	local t = { 
		["applicationName"] = _applicationName,
	}
	asserts.AssertGetApplicationInput(t)
	return t
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
-- @param _type [MinimumHealthyHostsType] <p>The minimum healthy instance type:</p> <ul> <li> <p>HOST_COUNT: The minimum number of healthy instance as an absolute value.</p> </li> <li> <p>FLEET_PERCENT: The minimum number of healthy instance as a percentage of the total number of instance in the deployment.</p> </li> </ul> <p>In an example of nine instance, if a HOST_COUNT of six is specified, deploy to up to three instances at a time. The deployment will be successful if six or more instances are deployed to successfully; otherwise, the deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up to five instance at a time. The deployment will be successful if four or more instance are deployed to successfully; otherwise, the deployment fails.</p> <note> <p>In a call to the get deployment configuration operation, CodeDeployDefault.OneAtATime will return a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. (You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy will try to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment still succeeds.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html">AWS CodeDeploy Instance Health</a> in the <i>AWS CodeDeploy User Guide</i>.</p>
-- @param _value [MinimumHealthyHostsValue] <p>The minimum healthy instance value.</p>
function M.MinimumHealthyHosts(_type, _value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MinimumHealthyHosts")
	local t = { 
		["type"] = _type,
		["value"] = _value,
	}
	asserts.AssertMinimumHealthyHosts(t)
	return t
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
-- @param _rollbackTriggeringDeploymentId [DeploymentId] <p>The deployment ID of the deployment that was underway and triggered a rollback deployment because it failed or was stopped.</p>
-- @param _rollbackMessage [Description] <p>Information describing the status of a deployment rollback; for example, whether the deployment can't be rolled back, is in progress, failed, or succeeded. </p>
-- @param _rollbackDeploymentId [DeploymentId] <p>The ID of the deployment rollback.</p>
function M.RollbackInfo(_rollbackTriggeringDeploymentId, _rollbackMessage, _rollbackDeploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RollbackInfo")
	local t = { 
		["rollbackTriggeringDeploymentId"] = _rollbackTriggeringDeploymentId,
		["rollbackMessage"] = _rollbackMessage,
		["rollbackDeploymentId"] = _rollbackDeploymentId,
	}
	asserts.AssertRollbackInfo(t)
	return t
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
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment instances call to return the next set of deployment instances in the list.</p>
-- @param _instancesList [InstancesList] <p>A list of instance IDs.</p>
function M.ListDeploymentInstancesOutput(_nextToken, _instancesList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentInstancesOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["instancesList"] = _instancesList,
	}
	asserts.AssertListDeploymentInstancesOutput(t)
	return t
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
-- @param _errorCode [LifecycleErrorCode] <p>The associated error code:</p> <ul> <li> <p>Success: The specified script ran.</p> </li> <li> <p>ScriptMissing: The specified script was not found in the specified location.</p> </li> <li> <p>ScriptNotExecutable: The specified script is not a recognized executable file type.</p> </li> <li> <p>ScriptTimedOut: The specified script did not finish running in the specified time period.</p> </li> <li> <p>ScriptFailed: The specified script failed to run as expected.</p> </li> <li> <p>UnknownError: The specified script did not run for an unknown reason.</p> </li> </ul>
-- @param _scriptName [ScriptName] <p>The name of the script.</p>
-- @param _logTail [LogTail] <p>The last portion of the diagnostic log.</p> <p>If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.</p>
-- @param _message [LifecycleMessage] <p>The message associated with the error.</p>
function M.Diagnostics(_errorCode, _scriptName, _logTail, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Diagnostics")
	local t = { 
		["errorCode"] = _errorCode,
		["scriptName"] = _scriptName,
		["logTail"] = _logTail,
		["message"] = _message,
	}
	asserts.AssertDiagnostics(t)
	return t
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
-- @param _iamUserArn [IamUserArn] <p>The ARN of the IAM user to associate with the on-premises instance.</p>
-- @param _instanceName [InstanceName] <p>The name of the on-premises instance to register.</p>
-- @param _iamSessionArn [IamSessionArn] <p>The ARN of the IAM session to associate with the on-premises instance.</p>
-- Required parameter: instanceName
function M.RegisterOnPremisesInstanceInput(_iamUserArn, _instanceName, _iamSessionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterOnPremisesInstanceInput")
	local t = { 
		["iamUserArn"] = _iamUserArn,
		["instanceName"] = _instanceName,
		["iamSessionArn"] = _iamSessionArn,
	}
	asserts.AssertRegisterOnPremisesInstanceInput(t)
	return t
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
-- @param _deploymentInfo [DeploymentInfo] <p>Information about the deployment.</p>
function M.GetDeploymentOutput(_deploymentInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentOutput")
	local t = { 
		["deploymentInfo"] = _deploymentInfo,
	}
	asserts.AssertGetDeploymentOutput(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The application name.</p>
-- @param _nextToken [NextToken] <p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.</p>
-- @param _deploymentGroups [DeploymentGroupsList] <p>A list of corresponding deployment group names.</p>
function M.ListDeploymentGroupsOutput(_applicationName, _nextToken, _deploymentGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentGroupsOutput")
	local t = { 
		["applicationName"] = _applicationName,
		["nextToken"] = _nextToken,
		["deploymentGroups"] = _deploymentGroups,
	}
	asserts.AssertListDeploymentGroupsOutput(t)
	return t
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
function M.InvalidDeploymentStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDeploymentStatusException")
	local t = { 
	}
	asserts.AssertInvalidDeploymentStatusException(t)
	return t
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
function M.InvalidAutoScalingGroupException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAutoScalingGroupException")
	local t = { 
	}
	asserts.AssertInvalidAutoScalingGroupException(t)
	return t
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
-- @param _Type [EC2TagFilterType] <p>The tag filter type:</p> <ul> <li> <p>KEY_ONLY: Key only.</p> </li> <li> <p>VALUE_ONLY: Value only.</p> </li> <li> <p>KEY_AND_VALUE: Key and value.</p> </li> </ul>
-- @param _Value [Value] <p>The tag filter value.</p>
-- @param _Key [Key] <p>The tag filter key.</p>
function M.EC2TagFilter(_Type, _Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2TagFilter")
	local t = { 
		["Type"] = _Type,
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertEC2TagFilter(t)
	return t
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
function M.DescriptionTooLongException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescriptionTooLongException")
	local t = { 
	}
	asserts.AssertDescriptionTooLongException(t)
	return t
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
-- @param _message [ErrorMessage] <p>An accompanying error message.</p>
-- @param _code [ErrorCode] <p>For information about additional error codes, see <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html">Error Codes for AWS CodeDeploy</a> in the <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide">AWS CodeDeploy User Guide</a>.</p> <p>The error code:</p> <ul> <li> <p>APPLICATION_MISSING: The application was missing. This error code will most likely be raised if the application is deleted after the deployment is created but before it is started.</p> </li> <li> <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code will most likely be raised if the deployment group is deleted after the deployment is created but before it is started.</p> </li> <li> <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p> </li> <li> <p>IAM_ROLE_PERMISSIONS: The service role does not have the correct permissions.</p> </li> <li> <p>INTERNAL_ERROR: There was an internal error.</p> </li> <li> <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to the Amazon EC2 service.</p> </li> <li> <p>NO_INSTANCES: No instance were specified, or no instance can be found.</p> </li> <li> <p>OVER_MAX_INSTANCES: The maximum number of instance was exceeded.</p> </li> <li> <p>THROTTLED: The operation was throttled because the calling account exceeded the throttling limits of one or more AWS services.</p> </li> <li> <p>TIMEOUT: The deployment has timed out.</p> </li> <li> <p>REVISION_MISSING: The revision ID was missing. This error code will most likely be raised if the revision is deleted after the deployment is created but before it is started.</p> </li> </ul>
function M.ErrorInformation(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorInformation")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertErrorInformation(t)
	return t
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
function M.DeploymentNotStartedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentNotStartedException")
	local t = { 
	}
	asserts.AssertDeploymentNotStartedException(t)
	return t
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
function M.InvalidKeyPrefixFilterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKeyPrefixFilterException")
	local t = { 
	}
	asserts.AssertInvalidKeyPrefixFilterException(t)
	return t
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
-- @param _applicationName [ApplicationName] <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>
-- Required parameter: applicationName
function M.DeleteApplicationInput(_applicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationInput")
	local t = { 
		["applicationName"] = _applicationName,
	}
	asserts.AssertDeleteApplicationInput(t)
	return t
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
function M.BatchLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchLimitExceededException")
	local t = { 
	}
	asserts.AssertBatchLimitExceededException(t)
	return t
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
-- @param _deploymentId [DeploymentId] <p>A deployment ID associated with the applicable IAM user or AWS account.</p>
-- Required parameter: deploymentId
function M.GetDeploymentInput(_deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentInput")
	local t = { 
		["deploymentId"] = _deploymentId,
	}
	asserts.AssertGetDeploymentInput(t)
	return t
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
function M.TagLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededException")
	local t = { 
	}
	asserts.AssertTagLimitExceededException(t)
	return t
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

function asserts.AssertVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionId to be of type 'string'")
end

--  
function M.VersionId(str)
	asserts.AssertVersionId(str)
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

function asserts.AssertDeploymentOption(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentOption to be of type 'string'")
end

--  
function M.DeploymentOption(str)
	asserts.AssertDeploymentOption(str)
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

function asserts.AssertLifecycleEventName(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleEventName to be of type 'string'")
end

--  
function M.LifecycleEventName(str)
	asserts.AssertLifecycleEventName(str)
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

function asserts.AssertLifecycleErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecycleErrorCode to be of type 'string'")
end

--  
function M.LifecycleErrorCode(str)
	asserts.AssertLifecycleErrorCode(str)
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

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
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

function asserts.AssertInstanceCount(long)
	assert(long)
	assert(type(long) == "number", "Expected InstanceCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.InstanceCount(long)
	asserts.AssertInstanceCount(long)
	return long
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GetDeploymentConfig
-- @param GetDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentConfigAsync(GetDeploymentConfigInput, cb)
	assert(GetDeploymentConfigInput, "You must provide a GetDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDeploymentGroup
-- @param UpdateDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeploymentGroupAsync(UpdateDeploymentGroupInput, cb)
	assert(UpdateDeploymentGroupInput, "You must provide a UpdateDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeployments
-- @param BatchGetDeploymentsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentsAsync(BatchGetDeploymentsInput, cb)
	assert(BatchGetDeploymentsInput, "You must provide a BatchGetDeploymentsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ContinueDeployment
-- @param ContinueDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.ContinueDeploymentAsync(ContinueDeploymentInput, cb)
	assert(ContinueDeploymentInput, "You must provide a ContinueDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ContinueDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ContinueDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeploymentGroup
-- @param GetDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentGroupAsync(GetDeploymentGroupInput, cb)
	assert(GetDeploymentGroupInput, "You must provide a GetDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentGroups
-- @param ListDeploymentGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentGroupsAsync(ListDeploymentGroupsInput, cb)
	assert(ListDeploymentGroupsInput, "You must provide a ListDeploymentGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplication
-- @param DeleteApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationAsync(DeleteApplicationInput, cb)
	assert(DeleteApplicationInput, "You must provide a DeleteApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeployment
-- @param CreateDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentInput, cb)
	assert(CreateDeploymentInput, "You must provide a CreateDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopDeployment
-- @param StopDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopDeploymentAsync(StopDeploymentInput, cb)
	assert(StopDeploymentInput, "You must provide a StopDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.StopDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeploymentConfig
-- @param DeleteDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentConfigAsync(DeleteDeploymentConfigInput, cb)
	assert(DeleteDeploymentConfigInput, "You must provide a DeleteDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromOnPremisesInstances
-- @param RemoveTagsFromOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromOnPremisesInstancesAsync(RemoveTagsFromOnPremisesInstancesInput, cb)
	assert(RemoveTagsFromOnPremisesInstancesInput, "You must provide a RemoveTagsFromOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RemoveTagsFromOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterOnPremisesInstance
-- @param RegisterOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterOnPremisesInstanceAsync(RegisterOnPremisesInstanceInput, cb)
	assert(RegisterOnPremisesInstanceInput, "You must provide a RegisterOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOnPremisesInstances
-- @param ListOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListOnPremisesInstancesAsync(ListOnPremisesInstancesInput, cb)
	assert(ListOnPremisesInstancesInput, "You must provide a ListOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentConfigs
-- @param ListDeploymentConfigsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentConfigsAsync(ListDeploymentConfigsInput, cb)
	assert(ListDeploymentConfigsInput, "You must provide a ListDeploymentConfigsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentConfigs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentConfigsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApplication
-- @param GetApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetApplicationAsync(GetApplicationInput, cb)
	assert(GetApplicationInput, "You must provide a GetApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeploymentInstance
-- @param GetDeploymentInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentInstanceAsync(GetDeploymentInstanceInput, cb)
	assert(GetDeploymentInstanceInput, "You must provide a GetDeploymentInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeploymentInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SkipWaitTimeForInstanceTermination
-- @param SkipWaitTimeForInstanceTerminationInput
-- @param cb Callback function accepting two args: response, error_message
function M.SkipWaitTimeForInstanceTerminationAsync(SkipWaitTimeForInstanceTerminationInput, cb)
	assert(SkipWaitTimeForInstanceTerminationInput, "You must provide a SkipWaitTimeForInstanceTerminationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.SkipWaitTimeForInstanceTermination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SkipWaitTimeForInstanceTerminationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeploymentGroups
-- @param BatchGetDeploymentGroupsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentGroupsAsync(BatchGetDeploymentGroupsInput, cb)
	assert(BatchGetDeploymentGroupsInput, "You must provide a BatchGetDeploymentGroupsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentGroupsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetOnPremisesInstances
-- @param BatchGetOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetOnPremisesInstancesAsync(BatchGetOnPremisesInstancesInput, cb)
	assert(BatchGetOnPremisesInstancesInput, "You must provide a BatchGetOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApplicationRevision
-- @param GetApplicationRevisionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetApplicationRevisionAsync(GetApplicationRevisionInput, cb)
	assert(GetApplicationRevisionInput, "You must provide a GetApplicationRevisionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetApplicationRevision",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetApplicationRevisionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetDeploymentInstances
-- @param BatchGetDeploymentInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetDeploymentInstancesAsync(BatchGetDeploymentInstancesInput, cb)
	assert(BatchGetDeploymentInstancesInput, "You must provide a BatchGetDeploymentInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetDeploymentInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetDeploymentInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApplication
-- @param UpdateApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationInput, cb)
	assert(UpdateApplicationInput, "You must provide a UpdateApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeploymentGroup
-- @param CreateDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentGroupAsync(CreateDeploymentGroupInput, cb)
	assert(CreateDeploymentGroupInput, "You must provide a CreateDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListApplicationRevisions
-- @param ListApplicationRevisionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationRevisionsAsync(ListApplicationRevisionsInput, cb)
	assert(ListApplicationRevisionsInput, "You must provide a ListApplicationRevisionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplicationRevisions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListApplicationRevisionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeploymentInstances
-- @param ListDeploymentInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentInstancesAsync(ListDeploymentInstancesInput, cb)
	assert(ListDeploymentInstancesInput, "You must provide a ListDeploymentInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeploymentInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetApplicationRevisions
-- @param BatchGetApplicationRevisionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetApplicationRevisionsAsync(BatchGetApplicationRevisionsInput, cb)
	assert(BatchGetApplicationRevisionsInput, "You must provide a BatchGetApplicationRevisionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplicationRevisions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetApplicationRevisionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterOnPremisesInstance
-- @param DeregisterOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterOnPremisesInstanceAsync(DeregisterOnPremisesInstanceInput, cb)
	assert(DeregisterOnPremisesInstanceInput, "You must provide a DeregisterOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeregisterOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeploymentConfig
-- @param CreateDeploymentConfigInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentConfigAsync(CreateDeploymentConfigInput, cb)
	assert(CreateDeploymentConfigInput, "You must provide a CreateDeploymentConfigInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateDeploymentConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentConfigInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOnPremisesInstance
-- @param GetOnPremisesInstanceInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOnPremisesInstanceAsync(GetOnPremisesInstanceInput, cb)
	assert(GetOnPremisesInstanceInput, "You must provide a GetOnPremisesInstanceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetOnPremisesInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOnPremisesInstanceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToOnPremisesInstances
-- @param AddTagsToOnPremisesInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToOnPremisesInstancesAsync(AddTagsToOnPremisesInstancesInput, cb)
	assert(AddTagsToOnPremisesInstancesInput, "You must provide a AddTagsToOnPremisesInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.AddTagsToOnPremisesInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToOnPremisesInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApplication
-- @param CreateApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationInput, cb)
	assert(CreateApplicationInput, "You must provide a CreateApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeployments
-- @param ListDeploymentsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentsAsync(ListDeploymentsInput, cb)
	assert(ListDeploymentsInput, "You must provide a ListDeploymentsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeploymentsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListApplications
-- @param ListApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationsAsync(ListApplicationsInput, cb)
	assert(ListApplicationsInput, "You must provide a ListApplicationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListApplicationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeploymentGroup
-- @param DeleteDeploymentGroupInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentGroupAsync(DeleteDeploymentGroupInput, cb)
	assert(DeleteDeploymentGroupInput, "You must provide a DeleteDeploymentGroupInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.DeleteDeploymentGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeploymentGroupInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGitHubAccountTokenNames
-- @param ListGitHubAccountTokenNamesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListGitHubAccountTokenNamesAsync(ListGitHubAccountTokenNamesInput, cb)
	assert(ListGitHubAccountTokenNamesInput, "You must provide a ListGitHubAccountTokenNamesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.ListGitHubAccountTokenNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGitHubAccountTokenNamesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterApplicationRevision
-- @param RegisterApplicationRevisionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterApplicationRevisionAsync(RegisterApplicationRevisionInput, cb)
	assert(RegisterApplicationRevisionInput, "You must provide a RegisterApplicationRevisionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.RegisterApplicationRevision",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterApplicationRevisionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeployment
-- @param GetDeploymentInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentAsync(GetDeploymentInput, cb)
	assert(GetDeploymentInput, "You must provide a GetDeploymentInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.GetDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeploymentInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetApplications
-- @param BatchGetApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetApplicationsAsync(BatchGetApplicationsInput, cb)
	assert(BatchGetApplicationsInput, "You must provide a BatchGetApplicationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeDeploy_20141006.BatchGetApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetApplicationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
