--- GENERATED CODE - DO NOT MODIFY
-- AWS Elastic Beanstalk (elasticbeanstalk-2010-12-01)

local M = {}

M.metadata = {
	api_version = "2010-12-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "elasticbeanstalk",
	service_abbreviation = "Elastic Beanstalk",
	service_full_name = "AWS Elastic Beanstalk",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elasticbeanstalk-2010-12-01",
}

local keys = {}
local asserts = {}

keys.ApplyEnvironmentManagedActionRequest = { ["EnvironmentName"] = true, ["ActionId"] = true, ["EnvironmentId"] = true, nil }

function asserts.AssertApplyEnvironmentManagedActionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyEnvironmentManagedActionRequest to be of type 'table'")
	assert(struct["ActionId"], "Expected key ActionId to exist in table")
	if struct["EnvironmentName"] then asserts.AssertString(struct["EnvironmentName"]) end
	if struct["ActionId"] then asserts.AssertString(struct["ActionId"]) end
	if struct["EnvironmentId"] then asserts.AssertString(struct["EnvironmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyEnvironmentManagedActionRequest[k], "ApplyEnvironmentManagedActionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyEnvironmentManagedActionRequest
-- <p>Request to execute a scheduled managed action immediately.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentName [String] <p>The name of the target environment.</p>
-- * ActionId [String] <p>The action ID of the scheduled managed action to execute.</p>
-- * EnvironmentId [String] <p>The environment ID of the target environment.</p>
-- Required key: ActionId
-- @return ApplyEnvironmentManagedActionRequest structure as a key-value pair table
function M.ApplyEnvironmentManagedActionRequest(args)
	assert(args, "You must provide an argument table when creating ApplyEnvironmentManagedActionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentName"] = args["EnvironmentName"],
		["ActionId"] = args["ActionId"],
		["EnvironmentId"] = args["EnvironmentId"],
	}
	asserts.AssertApplyEnvironmentManagedActionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StatusCodes = { ["Status3xx"] = true, ["Status2xx"] = true, ["Status5xx"] = true, ["Status4xx"] = true, nil }

function asserts.AssertStatusCodes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatusCodes to be of type 'table'")
	if struct["Status3xx"] then asserts.AssertNullableInteger(struct["Status3xx"]) end
	if struct["Status2xx"] then asserts.AssertNullableInteger(struct["Status2xx"]) end
	if struct["Status5xx"] then asserts.AssertNullableInteger(struct["Status5xx"]) end
	if struct["Status4xx"] then asserts.AssertNullableInteger(struct["Status4xx"]) end
	for k,_ in pairs(struct) do
		assert(keys.StatusCodes[k], "StatusCodes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatusCodes
-- <p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code Definitions</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status3xx [NullableInteger] <p>The percentage of requests over the last 10 seconds that resulted in a 3xx (300, 301, etc.) status code.</p>
-- * Status2xx [NullableInteger] <p>The percentage of requests over the last 10 seconds that resulted in a 2xx (200, 201, etc.) status code.</p>
-- * Status5xx [NullableInteger] <p>The percentage of requests over the last 10 seconds that resulted in a 5xx (500, 501, etc.) status code.</p>
-- * Status4xx [NullableInteger] <p>The percentage of requests over the last 10 seconds that resulted in a 4xx (400, 401, etc.) status code.</p>
-- @return StatusCodes structure as a key-value pair table
function M.StatusCodes(args)
	assert(args, "You must provide an argument table when creating StatusCodes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status3xx"] = args["Status3xx"],
		["Status2xx"] = args["Status2xx"],
		["Status5xx"] = args["Status5xx"],
		["Status4xx"] = args["Status4xx"],
	}
	asserts.AssertStatusCodes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventDescription = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["VersionLabel"] = true, ["Severity"] = true, ["TemplateName"] = true, ["PlatformArn"] = true, ["RequestId"] = true, ["Message"] = true, ["EventDate"] = true, nil }

function asserts.AssertEventDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDescription to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["Severity"] then asserts.AssertEventSeverity(struct["Severity"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	if struct["Message"] then asserts.AssertEventMessage(struct["Message"]) end
	if struct["EventDate"] then asserts.AssertEventDate(struct["EventDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDescription[k], "EventDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDescription
-- <p>Describes an event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The application associated with the event.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment associated with this event.</p>
-- * VersionLabel [VersionLabel] <p>The release label for the application version associated with this event.</p>
-- * Severity [EventSeverity] <p>The severity level of this event.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration associated with this event.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * RequestId [RequestId] <p>The web service request ID for the activity of this event.</p>
-- * Message [EventMessage] <p>The event message.</p>
-- * EventDate [EventDate] <p>The date when the event occurred.</p>
-- @return EventDescription structure as a key-value pair table
function M.EventDescription(args)
	assert(args, "You must provide an argument table when creating EventDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["VersionLabel"] = args["VersionLabel"],
		["Severity"] = args["Severity"],
		["TemplateName"] = args["TemplateName"],
		["PlatformArn"] = args["PlatformArn"],
		["RequestId"] = args["RequestId"],
		["Message"] = args["Message"],
		["EventDate"] = args["EventDate"],
	}
	asserts.AssertEventDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Trigger = { ["Name"] = true, nil }

function asserts.AssertTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trigger to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceId(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trigger[k], "Trigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trigger
-- <p>Describes a trigger.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceId] <p>The name of the trigger.</p>
-- @return Trigger structure as a key-value pair table
function M.Trigger(args)
	assert(args, "You must provide an argument table when creating Trigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEnvironmentMessage = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["VersionLabel"] = true, ["Description"] = true, ["Tags"] = true, ["CNAMEPrefix"] = true, ["TemplateName"] = true, ["SolutionStackName"] = true, ["GroupName"] = true, ["OptionSettings"] = true, ["Tier"] = true, ["PlatformArn"] = true, ["OptionsToRemove"] = true, nil }

function asserts.AssertCreateEnvironmentMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEnvironmentMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["CNAMEPrefix"] then asserts.AssertDNSCnamePrefix(struct["CNAMEPrefix"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["Tier"] then asserts.AssertEnvironmentTier(struct["Tier"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["OptionsToRemove"] then asserts.AssertOptionsSpecifierList(struct["OptionsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEnvironmentMessage[k], "CreateEnvironmentMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEnvironmentMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application that contains the version to be deployed.</p> <p> If no application is found with this name, <code>CreateEnvironment</code> returns an <code>InvalidParameterValue</code> error. </p>
-- * EnvironmentName [EnvironmentName] <p>A unique name for the deployment environment. Used in the application URL.</p> <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It cannot start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p> <p>Default: If the CNAME parameter is not specified, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.</p>
-- * VersionLabel [VersionLabel] <p>The name of the application version to deploy.</p> <p> If the specified application has no associated application versions, AWS Elastic Beanstalk <code>UpdateEnvironment</code> returns an <code>InvalidParameterValue</code> error. </p> <p>Default: If not specified, AWS Elastic Beanstalk attempts to launch the sample application in the container.</p>
-- * Description [Description] <p>Describes this environment.</p>
-- * Tags [Tags] <p>This specifies the tags applied to resources in the environment.</p>
-- * CNAMEPrefix [DNSCnamePrefix] <p>If specified, the environment attempts to use this value as the prefix for the CNAME. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.</p>
-- * TemplateName [ConfigurationTemplateName] <p> The name of the configuration template to use in deployment. If no configuration template is found with this name, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
-- * SolutionStackName [SolutionStackName] <p>This is an alternative to specifying a template name. If specified, AWS Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack.</p> <p>For a list of current solution stacks, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html">Elastic Beanstalk Supported Platforms</a>.</p>
-- * GroupName [GroupName] <p>The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.</p>
-- * Tier [EnvironmentTier] <p>This specifies the tier to use for creating this environment.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * OptionsToRemove [OptionsSpecifierList] <p>A list of custom user-defined configuration options to remove from the configuration set for this new environment.</p>
-- Required key: ApplicationName
-- @return CreateEnvironmentMessage structure as a key-value pair table
function M.CreateEnvironmentMessage(args)
	assert(args, "You must provide an argument table when creating CreateEnvironmentMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["VersionLabel"] = args["VersionLabel"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["CNAMEPrefix"] = args["CNAMEPrefix"],
		["TemplateName"] = args["TemplateName"],
		["SolutionStackName"] = args["SolutionStackName"],
		["GroupName"] = args["GroupName"],
		["OptionSettings"] = args["OptionSettings"],
		["Tier"] = args["Tier"],
		["PlatformArn"] = args["PlatformArn"],
		["OptionsToRemove"] = args["OptionsToRemove"],
	}
	asserts.AssertCreateEnvironmentMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentResourceDescription = { ["EnvironmentName"] = true, ["AutoScalingGroups"] = true, ["Triggers"] = true, ["LoadBalancers"] = true, ["Queues"] = true, ["Instances"] = true, ["LaunchConfigurations"] = true, nil }

function asserts.AssertEnvironmentResourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResourceDescription to be of type 'table'")
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["AutoScalingGroups"] then asserts.AssertAutoScalingGroupList(struct["AutoScalingGroups"]) end
	if struct["Triggers"] then asserts.AssertTriggerList(struct["Triggers"]) end
	if struct["LoadBalancers"] then asserts.AssertLoadBalancerList(struct["LoadBalancers"]) end
	if struct["Queues"] then asserts.AssertQueueList(struct["Queues"]) end
	if struct["Instances"] then asserts.AssertInstanceList(struct["Instances"]) end
	if struct["LaunchConfigurations"] then asserts.AssertLaunchConfigurationList(struct["LaunchConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentResourceDescription[k], "EnvironmentResourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResourceDescription
-- <p>Describes the AWS resources in use by this environment. This data is live.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentName [EnvironmentName] <p>The name of the environment.</p>
-- * AutoScalingGroups [AutoScalingGroupList] <p> The <code>AutoScalingGroups</code> used by this environment. </p>
-- * Triggers [TriggerList] <p>The <code>AutoScaling</code> triggers in use by this environment. </p>
-- * LoadBalancers [LoadBalancerList] <p>The LoadBalancers in use by this environment.</p>
-- * Queues [QueueList] <p>The queues used by this environment.</p>
-- * Instances [InstanceList] <p>The Amazon EC2 instances used by this environment.</p>
-- * LaunchConfigurations [LaunchConfigurationList] <p>The Auto Scaling launch configurations in use by this environment.</p>
-- @return EnvironmentResourceDescription structure as a key-value pair table
function M.EnvironmentResourceDescription(args)
	assert(args, "You must provide an argument table when creating EnvironmentResourceDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentName"] = args["EnvironmentName"],
		["AutoScalingGroups"] = args["AutoScalingGroups"],
		["Triggers"] = args["Triggers"],
		["LoadBalancers"] = args["LoadBalancers"],
		["Queues"] = args["Queues"],
		["Instances"] = args["Instances"],
		["LaunchConfigurations"] = args["LaunchConfigurations"],
	}
	asserts.AssertEnvironmentResourceDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDNSAvailabilityResultMessage = { ["Available"] = true, ["FullyQualifiedCNAME"] = true, nil }

function asserts.AssertCheckDNSAvailabilityResultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDNSAvailabilityResultMessage to be of type 'table'")
	if struct["Available"] then asserts.AssertCnameAvailability(struct["Available"]) end
	if struct["FullyQualifiedCNAME"] then asserts.AssertDNSCname(struct["FullyQualifiedCNAME"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDNSAvailabilityResultMessage[k], "CheckDNSAvailabilityResultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDNSAvailabilityResultMessage
-- <p>Indicates if the specified CNAME is available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Available [CnameAvailability] <p>Indicates if the specified CNAME is available:</p> <ul> <li> <p> <code>true</code> : The CNAME is available.</p> </li> <li> <p> <code>false</code> : The CNAME is not available.</p> </li> </ul>
-- * FullyQualifiedCNAME [DNSCname] <p>The fully qualified CNAME to reserve when <a>CreateEnvironment</a> is called with the provided prefix.</p>
-- @return CheckDNSAvailabilityResultMessage structure as a key-value pair table
function M.CheckDNSAvailabilityResultMessage(args)
	assert(args, "You must provide an argument table when creating CheckDNSAvailabilityResultMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Available"] = args["Available"],
		["FullyQualifiedCNAME"] = args["FullyQualifiedCNAME"],
	}
	asserts.AssertCheckDNSAvailabilityResultMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentManagedActionHistoryRequest = { ["EnvironmentId"] = true, ["NextToken"] = true, ["MaxItems"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertDescribeEnvironmentManagedActionHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentManagedActionHistoryRequest to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxItems"] then asserts.AssertInteger(struct["MaxItems"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentManagedActionHistoryRequest[k], "DescribeEnvironmentManagedActionHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentManagedActionHistoryRequest
-- <p>Request to list completed and failed managed actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The environment ID of the target environment.</p>
-- * NextToken [String] <p>The pagination token returned by a previous request.</p>
-- * MaxItems [Integer] <p>The maximum number of items to return for a single request.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the target environment.</p>
-- @return DescribeEnvironmentManagedActionHistoryRequest structure as a key-value pair table
function M.DescribeEnvironmentManagedActionHistoryRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentManagedActionHistoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["NextToken"] = args["NextToken"],
		["MaxItems"] = args["MaxItems"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertDescribeEnvironmentManagedActionHistoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePlatformVersionResult = { ["PlatformDescription"] = true, nil }

function asserts.AssertDescribePlatformVersionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlatformVersionResult to be of type 'table'")
	if struct["PlatformDescription"] then asserts.AssertPlatformDescription(struct["PlatformDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlatformVersionResult[k], "DescribePlatformVersionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlatformVersionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformDescription [PlatformDescription] <p>Detailed information about the version of the platform.</p>
-- @return DescribePlatformVersionResult structure as a key-value pair table
function M.DescribePlatformVersionResult(args)
	assert(args, "You must provide an argument table when creating DescribePlatformVersionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformDescription"] = args["PlatformDescription"],
	}
	asserts.AssertDescribePlatformVersionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTagsForResourceMessage = { ["TagsToAdd"] = true, ["ResourceArn"] = true, ["TagsToRemove"] = true, nil }

function asserts.AssertUpdateTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["TagsToAdd"] then asserts.AssertTagList(struct["TagsToAdd"]) end
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["TagsToRemove"] then asserts.AssertTagKeyList(struct["TagsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTagsForResourceMessage[k], "UpdateTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagsForResourceMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagsToAdd [TagList] <p>A list of tags to add or update.</p> <p>If a key of an existing tag is added, the tag's value is updated.</p>
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resouce to be updated.</p> <p>Must be the ARN of an Elastic Beanstalk environment.</p>
-- * TagsToRemove [TagKeyList] <p>A list of tag keys to remove.</p> <p>If a tag key doesn't exist, it is silently ignored.</p>
-- Required key: ResourceArn
-- @return UpdateTagsForResourceMessage structure as a key-value pair table
function M.UpdateTagsForResourceMessage(args)
	assert(args, "You must provide an argument table when creating UpdateTagsForResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagsToAdd"] = args["TagsToAdd"],
		["ResourceArn"] = args["ResourceArn"],
		["TagsToRemove"] = args["TagsToRemove"],
	}
	asserts.AssertUpdateTagsForResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CPUUtilization = { ["SoftIRQ"] = true, ["IOWait"] = true, ["System"] = true, ["Idle"] = true, ["User"] = true, ["IRQ"] = true, ["Privileged"] = true, ["Nice"] = true, nil }

function asserts.AssertCPUUtilization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CPUUtilization to be of type 'table'")
	if struct["SoftIRQ"] then asserts.AssertNullableDouble(struct["SoftIRQ"]) end
	if struct["IOWait"] then asserts.AssertNullableDouble(struct["IOWait"]) end
	if struct["System"] then asserts.AssertNullableDouble(struct["System"]) end
	if struct["Idle"] then asserts.AssertNullableDouble(struct["Idle"]) end
	if struct["User"] then asserts.AssertNullableDouble(struct["User"]) end
	if struct["IRQ"] then asserts.AssertNullableDouble(struct["IRQ"]) end
	if struct["Privileged"] then asserts.AssertNullableDouble(struct["Privileged"]) end
	if struct["Nice"] then asserts.AssertNullableDouble(struct["Nice"]) end
	for k,_ in pairs(struct) do
		assert(keys.CPUUtilization[k], "CPUUtilization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CPUUtilization
-- <p>CPU utilization metrics for an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SoftIRQ [NullableDouble] <p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>SoftIRQ</code> state over the last 10 seconds.</p>
-- * IOWait [NullableDouble] <p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>I/O Wait</code> state over the last 10 seconds.</p>
-- * System [NullableDouble] <p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>System</code> state over the last 10 seconds.</p>
-- * Idle [NullableDouble] <p>Percentage of time that the CPU has spent in the <code>Idle</code> state over the last 10 seconds.</p>
-- * User [NullableDouble] <p>Percentage of time that the CPU has spent in the <code>User</code> state over the last 10 seconds.</p>
-- * IRQ [NullableDouble] <p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>IRQ</code> state over the last 10 seconds.</p>
-- * Privileged [NullableDouble] <p>Available on Windows environments only.</p> <p>Percentage of time that the CPU has spent in the <code>Privileged</code> state over the last 10 seconds.</p>
-- * Nice [NullableDouble] <p>Available on Linux environments only.</p> <p>Percentage of time that the CPU has spent in the <code>Nice</code> state over the last 10 seconds.</p>
-- @return CPUUtilization structure as a key-value pair table
function M.CPUUtilization(args)
	assert(args, "You must provide an argument table when creating CPUUtilization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SoftIRQ"] = args["SoftIRQ"],
		["IOWait"] = args["IOWait"],
		["System"] = args["System"],
		["Idle"] = args["Idle"],
		["User"] = args["User"],
		["IRQ"] = args["IRQ"],
		["Privileged"] = args["Privileged"],
		["Nice"] = args["Nice"],
	}
	asserts.AssertCPUUtilization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentResourceDescriptionsMessage = { ["EnvironmentResources"] = true, nil }

function asserts.AssertEnvironmentResourceDescriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResourceDescriptionsMessage to be of type 'table'")
	if struct["EnvironmentResources"] then asserts.AssertEnvironmentResourceDescription(struct["EnvironmentResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentResourceDescriptionsMessage[k], "EnvironmentResourceDescriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResourceDescriptionsMessage
-- <p>Result message containing a list of environment resource descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentResources [EnvironmentResourceDescription] <p> A list of <a>EnvironmentResourceDescription</a>. </p>
-- @return EnvironmentResourceDescriptionsMessage structure as a key-value pair table
function M.EnvironmentResourceDescriptionsMessage(args)
	assert(args, "You must provide an argument table when creating EnvironmentResourceDescriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentResources"] = args["EnvironmentResources"],
	}
	asserts.AssertEnvironmentResourceDescriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentTier = { ["Version"] = true, ["Type"] = true, ["Name"] = true, nil }

function asserts.AssertEnvironmentTier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentTier to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentTier[k], "EnvironmentTier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentTier
-- <p>Describes the properties of an environment tier</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.</p> <note> <p>This member is deprecated. Any specific version that you set may become out of date. We recommend leaving it unspecified.</p> </note>
-- * Type [String] <p>The type of this environment tier.</p>
-- * Name [String] <p>The name of this environment tier.</p>
-- @return EnvironmentTier structure as a key-value pair table
function M.EnvironmentTier(args)
	assert(args, "You must provide an argument table when creating EnvironmentTier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
	}
	asserts.AssertEnvironmentTier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Location = { ["S3Bucket"] = true, ["S3Key"] = true, nil }

function asserts.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then asserts.AssertS3Key(struct["S3Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>The bucket and key of an item stored in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Bucket [S3Bucket] <p>The Amazon S3 bucket where the data is located.</p>
-- * S3Key [S3Key] <p>The Amazon S3 key where the data is located.</p>
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
		["S3Bucket"] = args["S3Bucket"],
		["S3Key"] = args["S3Key"],
	}
	asserts.AssertS3Location(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDNSAvailabilityMessage = { ["CNAMEPrefix"] = true, nil }

function asserts.AssertCheckDNSAvailabilityMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDNSAvailabilityMessage to be of type 'table'")
	assert(struct["CNAMEPrefix"], "Expected key CNAMEPrefix to exist in table")
	if struct["CNAMEPrefix"] then asserts.AssertDNSCnamePrefix(struct["CNAMEPrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDNSAvailabilityMessage[k], "CheckDNSAvailabilityMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDNSAvailabilityMessage
-- <p>Results message indicating whether a CNAME is available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CNAMEPrefix [DNSCnamePrefix] <p>The prefix used when this CNAME is reserved.</p>
-- Required key: CNAMEPrefix
-- @return CheckDNSAvailabilityMessage structure as a key-value pair table
function M.CheckDNSAvailabilityMessage(args)
	assert(args, "You must provide an argument table when creating CheckDNSAvailabilityMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CNAMEPrefix"] = args["CNAMEPrefix"],
	}
	asserts.AssertCheckDNSAvailabilityMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConfigurationTemplateMessage = { ["ApplicationName"] = true, ["PlatformArn"] = true, ["Description"] = true, ["EnvironmentId"] = true, ["TemplateName"] = true, ["SolutionStackName"] = true, ["OptionSettings"] = true, ["SourceConfiguration"] = true, nil }

function asserts.AssertCreateConfigurationTemplateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationTemplateMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["SourceConfiguration"] then asserts.AssertSourceConfiguration(struct["SourceConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationTemplateMessage[k], "CreateConfigurationTemplateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationTemplateMessage
-- <p>Request to create a configuration template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to associate with this configuration template. If no application is found with this name, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
-- * PlatformArn [PlatformArn] <p>The ARN of the custom platform.</p>
-- * Description [Description] <p>Describes this configuration.</p>
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment used with this configuration template.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template.</p> <p>Constraint: This name must be unique per application.</p> <p>Default: If a configuration template already exists with this name, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack used by this configuration. The solution stack specifies the operating system, architecture, and application server for a configuration template. It determines the set of configuration options as well as the possible and default values.</p> <p> Use <a>ListAvailableSolutionStacks</a> to obtain a list of available solution stacks. </p> <p> A solution stack name or a source configuration parameter must be specified, otherwise AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p> <p>If a solution stack name is not specified and the source configuration parameter is specified, AWS Elastic Beanstalk uses the same solution stack as the source configuration template.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>If specified, AWS Elastic Beanstalk sets the specified configuration option to the requested value. The new value overrides the value obtained from the solution stack or the source configuration template.</p>
-- * SourceConfiguration [SourceConfiguration] <p>If specified, AWS Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration.</p> <p> Values specified in the <code>OptionSettings</code> parameter of this call overrides any values obtained from the <code>SourceConfiguration</code>. </p> <p> If no configuration template is found, returns an <code>InvalidParameterValue</code> error. </p> <p> Constraint: If both the solution stack name parameter and the source configuration parameters are specified, the solution stack of the source configuration template must match the specified solution stack name or else AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p>
-- Required key: ApplicationName
-- Required key: TemplateName
-- @return CreateConfigurationTemplateMessage structure as a key-value pair table
function M.CreateConfigurationTemplateMessage(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationTemplateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["PlatformArn"] = args["PlatformArn"],
		["Description"] = args["Description"],
		["EnvironmentId"] = args["EnvironmentId"],
		["TemplateName"] = args["TemplateName"],
		["SolutionStackName"] = args["SolutionStackName"],
		["OptionSettings"] = args["OptionSettings"],
		["SourceConfiguration"] = args["SourceConfiguration"],
	}
	asserts.AssertCreateConfigurationTemplateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationVersionDescription = { ["ApplicationName"] = true, ["Status"] = true, ["VersionLabel"] = true, ["SourceBundle"] = true, ["Description"] = true, ["ApplicationVersionArn"] = true, ["DateCreated"] = true, ["DateUpdated"] = true, ["SourceBuildInformation"] = true, ["BuildArn"] = true, nil }

function asserts.AssertApplicationVersionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationVersionDescription to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Status"] then asserts.AssertApplicationVersionStatus(struct["Status"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["SourceBundle"] then asserts.AssertS3Location(struct["SourceBundle"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ApplicationVersionArn"] then asserts.AssertApplicationVersionArn(struct["ApplicationVersionArn"]) end
	if struct["DateCreated"] then asserts.AssertCreationDate(struct["DateCreated"]) end
	if struct["DateUpdated"] then asserts.AssertUpdateDate(struct["DateUpdated"]) end
	if struct["SourceBuildInformation"] then asserts.AssertSourceBuildInformation(struct["SourceBuildInformation"]) end
	if struct["BuildArn"] then asserts.AssertString(struct["BuildArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationVersionDescription[k], "ApplicationVersionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationVersionDescription
-- <p>Describes the properties of an application version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to which the application version belongs.</p>
-- * Status [ApplicationVersionStatus] <p>The processing status of the application version. Reflects the state of the application version during its creation. Many of the values are only applicable if you specified <code>True</code> for the <code>Process</code> parameter of the <code>CreateApplicationVersion</code> action. The following list describes the possible values.</p> <ul> <li> <p> <code>Unprocessed</code> – Application version wasn't pre-processed or validated. Elastic Beanstalk will validate configuration files during deployment of the application version to an environment.</p> </li> <li> <p> <code>Processing</code> – Elastic Beanstalk is currently processing the application version.</p> </li> <li> <p> <code>Building</code> – Application version is currently undergoing an AWS CodeBuild build.</p> </li> <li> <p> <code>Processed</code> – Elastic Beanstalk was successfully pre-processed and validated.</p> </li> <li> <p> <code>Failed</code> – Either the AWS CodeBuild build failed or configuration files didn't pass validation. This application version isn't usable.</p> </li> </ul>
-- * VersionLabel [VersionLabel] <p>A unique identifier for the application version.</p>
-- * SourceBundle [S3Location] <p>The storage location of the application version's source bundle in Amazon S3.</p>
-- * Description [Description] <p>The description of the application version.</p>
-- * ApplicationVersionArn [ApplicationVersionArn] <p>The Amazon Resource Name (ARN) of the application version.</p>
-- * DateCreated [CreationDate] <p>The creation date of the application version.</p>
-- * DateUpdated [UpdateDate] <p>The last modified date of the application version.</p>
-- * SourceBuildInformation [SourceBuildInformation] <p>If the version's source code was retrieved from AWS CodeCommit, the location of the source code for the application version.</p>
-- * BuildArn [String] <p>Reference to the artifact from the AWS CodeBuild build.</p>
-- @return ApplicationVersionDescription structure as a key-value pair table
function M.ApplicationVersionDescription(args)
	assert(args, "You must provide an argument table when creating ApplicationVersionDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["Status"] = args["Status"],
		["VersionLabel"] = args["VersionLabel"],
		["SourceBundle"] = args["SourceBundle"],
		["Description"] = args["Description"],
		["ApplicationVersionArn"] = args["ApplicationVersionArn"],
		["DateCreated"] = args["DateCreated"],
		["DateUpdated"] = args["DateUpdated"],
		["SourceBuildInformation"] = args["SourceBuildInformation"],
		["BuildArn"] = args["BuildArn"],
	}
	asserts.AssertApplicationVersionDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceQuotas = { ["ApplicationVersionQuota"] = true, ["ApplicationQuota"] = true, ["EnvironmentQuota"] = true, ["ConfigurationTemplateQuota"] = true, ["CustomPlatformQuota"] = true, nil }

function asserts.AssertResourceQuotas(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceQuotas to be of type 'table'")
	if struct["ApplicationVersionQuota"] then asserts.AssertResourceQuota(struct["ApplicationVersionQuota"]) end
	if struct["ApplicationQuota"] then asserts.AssertResourceQuota(struct["ApplicationQuota"]) end
	if struct["EnvironmentQuota"] then asserts.AssertResourceQuota(struct["EnvironmentQuota"]) end
	if struct["ConfigurationTemplateQuota"] then asserts.AssertResourceQuota(struct["ConfigurationTemplateQuota"]) end
	if struct["CustomPlatformQuota"] then asserts.AssertResourceQuota(struct["CustomPlatformQuota"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceQuotas[k], "ResourceQuotas contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceQuotas
-- <p>A set of per-resource AWS Elastic Beanstalk quotas associated with an AWS account. They reflect Elastic Beanstalk resource limits for this account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationVersionQuota [ResourceQuota] <p>The quota for application versions in the AWS account.</p>
-- * ApplicationQuota [ResourceQuota] <p>The quota for applications in the AWS account.</p>
-- * EnvironmentQuota [ResourceQuota] <p>The quota for environments in the AWS account.</p>
-- * ConfigurationTemplateQuota [ResourceQuota] <p>The quota for configuration templates in the AWS account.</p>
-- * CustomPlatformQuota [ResourceQuota] <p>The quota for custom platforms in the AWS account.</p>
-- @return ResourceQuotas structure as a key-value pair table
function M.ResourceQuotas(args)
	assert(args, "You must provide an argument table when creating ResourceQuotas")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationVersionQuota"] = args["ApplicationVersionQuota"],
		["ApplicationQuota"] = args["ApplicationQuota"],
		["EnvironmentQuota"] = args["EnvironmentQuota"],
		["ConfigurationTemplateQuota"] = args["ConfigurationTemplateQuota"],
		["CustomPlatformQuota"] = args["CustomPlatformQuota"],
	}
	asserts.AssertResourceQuotas(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentHealthResult = { ["Status"] = true, ["EnvironmentName"] = true, ["Color"] = true, ["ApplicationMetrics"] = true, ["RefreshedAt"] = true, ["HealthStatus"] = true, ["InstancesHealth"] = true, ["Causes"] = true, nil }

function asserts.AssertDescribeEnvironmentHealthResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentHealthResult to be of type 'table'")
	if struct["Status"] then asserts.AssertEnvironmentHealth(struct["Status"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["Color"] then asserts.AssertString(struct["Color"]) end
	if struct["ApplicationMetrics"] then asserts.AssertApplicationMetrics(struct["ApplicationMetrics"]) end
	if struct["RefreshedAt"] then asserts.AssertRefreshedAt(struct["RefreshedAt"]) end
	if struct["HealthStatus"] then asserts.AssertString(struct["HealthStatus"]) end
	if struct["InstancesHealth"] then asserts.AssertInstanceHealthSummary(struct["InstancesHealth"]) end
	if struct["Causes"] then asserts.AssertCauses(struct["Causes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentHealthResult[k], "DescribeEnvironmentHealthResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentHealthResult
-- <p>Health details for an AWS Elastic Beanstalk environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EnvironmentHealth] <p>The environment's operational status. <code>Ready</code>, <code>Launching</code>, <code>Updating</code>, <code>Terminating</code>, or <code>Terminated</code>.</p>
-- * EnvironmentName [EnvironmentName] <p>The environment's name.</p>
-- * Color [String] <p>The <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">health color</a> of the environment.</p>
-- * ApplicationMetrics [ApplicationMetrics] <p>Application request metrics for the environment.</p>
-- * RefreshedAt [RefreshedAt] <p>The date and time that the health information was retrieved.</p>
-- * HealthStatus [String] <p>The <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">health status</a> of the environment. For example, <code>Ok</code>.</p>
-- * InstancesHealth [InstanceHealthSummary] <p>Summary health information for the instances in the environment.</p>
-- * Causes [Causes] <p>Descriptions of the data that contributed to the environment's current health status.</p>
-- @return DescribeEnvironmentHealthResult structure as a key-value pair table
function M.DescribeEnvironmentHealthResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentHealthResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EnvironmentName"] = args["EnvironmentName"],
		["Color"] = args["Color"],
		["ApplicationMetrics"] = args["ApplicationMetrics"],
		["RefreshedAt"] = args["RefreshedAt"],
		["HealthStatus"] = args["HealthStatus"],
		["InstancesHealth"] = args["InstancesHealth"],
		["Causes"] = args["Causes"],
	}
	asserts.AssertDescribeEnvironmentHealthResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationSettingsDescriptions = { ["ConfigurationSettings"] = true, nil }

function asserts.AssertConfigurationSettingsDescriptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSettingsDescriptions to be of type 'table'")
	if struct["ConfigurationSettings"] then asserts.AssertConfigurationSettingsDescriptionList(struct["ConfigurationSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSettingsDescriptions[k], "ConfigurationSettingsDescriptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSettingsDescriptions
-- <p>The results from a request to change the configuration settings of an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSettings [ConfigurationSettingsDescriptionList] <p> A list of <a>ConfigurationSettingsDescription</a>. </p>
-- @return ConfigurationSettingsDescriptions structure as a key-value pair table
function M.ConfigurationSettingsDescriptions(args)
	assert(args, "You must provide an argument table when creating ConfigurationSettingsDescriptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSettings"] = args["ConfigurationSettings"],
	}
	asserts.AssertConfigurationSettingsDescriptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MaxAgeRule = { ["DeleteSourceFromS3"] = true, ["Enabled"] = true, ["MaxAgeInDays"] = true, nil }

function asserts.AssertMaxAgeRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxAgeRule to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["DeleteSourceFromS3"] then asserts.AssertBoxedBoolean(struct["DeleteSourceFromS3"]) end
	if struct["Enabled"] then asserts.AssertBoxedBoolean(struct["Enabled"]) end
	if struct["MaxAgeInDays"] then asserts.AssertBoxedInt(struct["MaxAgeInDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaxAgeRule[k], "MaxAgeRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxAgeRule
-- <p>A lifecycle rule that deletes application versions after the specified number of days.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeleteSourceFromS3 [BoxedBoolean] <p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.</p>
-- * Enabled [BoxedBoolean] <p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable it.</p>
-- * MaxAgeInDays [BoxedInt] <p>Specify the number of days to retain an application versions.</p>
-- Required key: Enabled
-- @return MaxAgeRule structure as a key-value pair table
function M.MaxAgeRule(args)
	assert(args, "You must provide an argument table when creating MaxAgeRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeleteSourceFromS3"] = args["DeleteSourceFromS3"],
		["Enabled"] = args["Enabled"],
		["MaxAgeInDays"] = args["MaxAgeInDays"],
	}
	asserts.AssertMaxAgeRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ManagedAction = { ["Status"] = true, ["WindowStartTime"] = true, ["ActionType"] = true, ["ActionId"] = true, ["ActionDescription"] = true, nil }

function asserts.AssertManagedAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ManagedAction to be of type 'table'")
	if struct["Status"] then asserts.AssertActionStatus(struct["Status"]) end
	if struct["WindowStartTime"] then asserts.AssertTimestamp(struct["WindowStartTime"]) end
	if struct["ActionType"] then asserts.AssertActionType(struct["ActionType"]) end
	if struct["ActionId"] then asserts.AssertString(struct["ActionId"]) end
	if struct["ActionDescription"] then asserts.AssertString(struct["ActionDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ManagedAction[k], "ManagedAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ManagedAction
-- <p>The record of an upcoming or in-progress managed action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ActionStatus] <p>The status of the managed action. If the action is <code>Scheduled</code>, you can apply it immediately with <a>ApplyEnvironmentManagedAction</a>.</p>
-- * WindowStartTime [Timestamp] <p>The start time of the maintenance window in which the managed action will execute.</p>
-- * ActionType [ActionType] <p>The type of managed action.</p>
-- * ActionId [String] <p>A unique identifier for the managed action.</p>
-- * ActionDescription [String] <p>A description of the managed action.</p>
-- @return ManagedAction structure as a key-value pair table
function M.ManagedAction(args)
	assert(args, "You must provide an argument table when creating ManagedAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["WindowStartTime"] = args["WindowStartTime"],
		["ActionType"] = args["ActionType"],
		["ActionId"] = args["ActionId"],
		["ActionDescription"] = args["ActionDescription"],
	}
	asserts.AssertManagedAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventDescriptionsMessage = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertEventDescriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDescriptionsMessage to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Events"] then asserts.AssertEventDescriptionList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDescriptionsMessage[k], "EventDescriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDescriptionsMessage
-- <p>Result message wrapping a list of event descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p> If returned, this indicates that there are more results to obtain. Use this token in the next <a>DescribeEvents</a> call to get the next batch of events. </p>
-- * Events [EventDescriptionList] <p> A list of <a>EventDescription</a>. </p>
-- @return EventDescriptionsMessage structure as a key-value pair table
function M.EventDescriptionsMessage(args)
	assert(args, "You must provide an argument table when creating EventDescriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Events"] = args["Events"],
	}
	asserts.AssertEventDescriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeApplicationVersionsMessage = { ["ApplicationName"] = true, ["MaxRecords"] = true, ["NextToken"] = true, ["VersionLabels"] = true, nil }

function asserts.AssertDescribeApplicationVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationVersionsMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["VersionLabels"] then asserts.AssertVersionLabelsList(struct["VersionLabels"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationVersionsMessage[k], "DescribeApplicationVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationVersionsMessage
-- <p>Request to describe application versions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Specify an application name to show only application versions for that application.</p>
-- * MaxRecords [MaxRecords] <p>For a paginated request. Specify a maximum number of application versions to include in each response.</p> <p>If no <code>MaxRecords</code> is specified, all available application versions are retrieved in a single response.</p>
-- * NextToken [Token] <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
-- * VersionLabels [VersionLabelsList] <p>Specify a version label to show a specific application version.</p>
-- @return DescribeApplicationVersionsMessage structure as a key-value pair table
function M.DescribeApplicationVersionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeApplicationVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["VersionLabels"] = args["VersionLabels"],
	}
	asserts.AssertDescribeApplicationVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentsMessage = { ["ApplicationName"] = true, ["IncludedDeletedBackTo"] = true, ["VersionLabel"] = true, ["IncludeDeleted"] = true, ["EnvironmentNames"] = true, ["MaxRecords"] = true, ["EnvironmentIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeEnvironmentsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentsMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["IncludedDeletedBackTo"] then asserts.AssertIncludeDeletedBackTo(struct["IncludedDeletedBackTo"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["IncludeDeleted"] then asserts.AssertIncludeDeleted(struct["IncludeDeleted"]) end
	if struct["EnvironmentNames"] then asserts.AssertEnvironmentNamesList(struct["EnvironmentNames"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["EnvironmentIds"] then asserts.AssertEnvironmentIdList(struct["EnvironmentIds"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentsMessage[k], "DescribeEnvironmentsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentsMessage
-- <p>Request to describe one or more environments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application.</p>
-- * IncludedDeletedBackTo [IncludeDeletedBackTo] <p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then environments deleted after this date are displayed. </p>
-- * VersionLabel [VersionLabel] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application version.</p>
-- * IncludeDeleted [IncludeDeleted] <p>Indicates whether to include deleted environments:</p> <p> <code>true</code>: Environments that have been deleted after <code>IncludedDeletedBackTo</code> are displayed.</p> <p> <code>false</code>: Do not include deleted environments.</p>
-- * EnvironmentNames [EnvironmentNamesList] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified names.</p>
-- * MaxRecords [MaxRecords] <p>For a paginated request. Specify a maximum number of environments to include in each response.</p> <p>If no <code>MaxRecords</code> is specified, all available environments are retrieved in a single response.</p>
-- * EnvironmentIds [EnvironmentIdList] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified IDs.</p>
-- * NextToken [Token] <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request.</p> <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
-- @return DescribeEnvironmentsMessage structure as a key-value pair table
function M.DescribeEnvironmentsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["IncludedDeletedBackTo"] = args["IncludedDeletedBackTo"],
		["VersionLabel"] = args["VersionLabel"],
		["IncludeDeleted"] = args["IncludeDeleted"],
		["EnvironmentNames"] = args["EnvironmentNames"],
		["MaxRecords"] = args["MaxRecords"],
		["EnvironmentIds"] = args["EnvironmentIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeEnvironmentsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInstancesHealthResult = { ["InstanceHealthList"] = true, ["NextToken"] = true, ["RefreshedAt"] = true, nil }

function asserts.AssertDescribeInstancesHealthResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesHealthResult to be of type 'table'")
	if struct["InstanceHealthList"] then asserts.AssertInstanceHealthList(struct["InstanceHealthList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["RefreshedAt"] then asserts.AssertRefreshedAt(struct["RefreshedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesHealthResult[k], "DescribeInstancesHealthResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesHealthResult
-- <p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceHealthList [InstanceHealthList] <p>Detailed health information about each instance.</p> <p>The output differs slightly between Linux and Windows environments. There is a difference in the members that are supported under the <code>&lt;CPUUtilization&gt;</code> type.</p>
-- * NextToken [NextToken] <p>Pagination token for the next page of results, if available.</p>
-- * RefreshedAt [RefreshedAt] <p>The date and time that the health information was retrieved.</p>
-- @return DescribeInstancesHealthResult structure as a key-value pair table
function M.DescribeInstancesHealthResult(args)
	assert(args, "You must provide an argument table when creating DescribeInstancesHealthResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceHealthList"] = args["InstanceHealthList"],
		["NextToken"] = args["NextToken"],
		["RefreshedAt"] = args["RefreshedAt"],
	}
	asserts.AssertDescribeInstancesHealthResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceConfiguration = { ["ApplicationName"] = true, ["TemplateName"] = true, nil }

function asserts.AssertSourceConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceConfiguration to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceConfiguration[k], "SourceConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceConfiguration
-- <p>A specification for an environment configuration</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with the configuration.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template.</p>
-- @return SourceConfiguration structure as a key-value pair table
function M.SourceConfiguration(args)
	assert(args, "You must provide an argument table when creating SourceConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertSourceConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentDescription = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["VersionLabel"] = true, ["Status"] = true, ["Description"] = true, ["EnvironmentLinks"] = true, ["PlatformArn"] = true, ["TemplateName"] = true, ["EndpointURL"] = true, ["SolutionStackName"] = true, ["HealthStatus"] = true, ["EnvironmentId"] = true, ["CNAME"] = true, ["AbortableOperationInProgress"] = true, ["Tier"] = true, ["Health"] = true, ["DateUpdated"] = true, ["DateCreated"] = true, ["EnvironmentArn"] = true, ["Resources"] = true, nil }

function asserts.AssertEnvironmentDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentDescription to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["Status"] then asserts.AssertEnvironmentStatus(struct["Status"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["EnvironmentLinks"] then asserts.AssertEnvironmentLinks(struct["EnvironmentLinks"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["EndpointURL"] then asserts.AssertEndpointURL(struct["EndpointURL"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["HealthStatus"] then asserts.AssertEnvironmentHealthStatus(struct["HealthStatus"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["CNAME"] then asserts.AssertDNSCname(struct["CNAME"]) end
	if struct["AbortableOperationInProgress"] then asserts.AssertAbortableOperationInProgress(struct["AbortableOperationInProgress"]) end
	if struct["Tier"] then asserts.AssertEnvironmentTier(struct["Tier"]) end
	if struct["Health"] then asserts.AssertEnvironmentHealth(struct["Health"]) end
	if struct["DateUpdated"] then asserts.AssertUpdateDate(struct["DateUpdated"]) end
	if struct["DateCreated"] then asserts.AssertCreationDate(struct["DateCreated"]) end
	if struct["EnvironmentArn"] then asserts.AssertEnvironmentArn(struct["EnvironmentArn"]) end
	if struct["Resources"] then asserts.AssertEnvironmentResourcesDescription(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentDescription[k], "EnvironmentDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentDescription
-- <p>Describes the properties of an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with this environment.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of this environment.</p>
-- * VersionLabel [VersionLabel] <p>The application version deployed in this environment.</p>
-- * Status [EnvironmentStatus] <p>The current operational status of the environment:</p> <ul> <li> <p> <code>Launching</code>: Environment is in the process of initial deployment.</p> </li> <li> <p> <code>Updating</code>: Environment is in the process of updating its configuration settings or application version.</p> </li> <li> <p> <code>Ready</code>: Environment is available to have an action performed on it, such as update or terminate.</p> </li> <li> <p> <code>Terminating</code>: Environment is in the shut-down process.</p> </li> <li> <p> <code>Terminated</code>: Environment is not running.</p> </li> </ul>
-- * Description [Description] <p>Describes this environment.</p>
-- * EnvironmentLinks [EnvironmentLinks] <p>A list of links to other environments in the same group.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template used to originally launch this environment.</p>
-- * EndpointURL [EndpointURL] <p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.</p>
-- * SolutionStackName [SolutionStackName] <p> The name of the <code>SolutionStack</code> deployed with this environment. </p>
-- * HealthStatus [EnvironmentHealthStatus] <p>Returns the health status of the application running in your environment. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-- * EnvironmentId [EnvironmentId] <p>The ID of this environment.</p>
-- * CNAME [DNSCname] <p>The URL to the CNAME for this environment.</p>
-- * AbortableOperationInProgress [AbortableOperationInProgress] <p>Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel.</p> <p> <code>true:</code> There is an update in progress. </p> <p> <code>false:</code> There are no updates currently in progress. </p>
-- * Tier [EnvironmentTier] <p>Describes the current tier of this environment.</p>
-- * Health [EnvironmentHealth] <p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:</p> <ul> <li> <p> <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.</p> </li> <li> <p> <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.</p> </li> <li> <p> <code>Green</code>: Indicates the environment is healthy and fully functional.</p> </li> <li> <p> <code>Grey</code>: Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an <code>UpdateEnvironment</code> or <code>RestartEnvironement</code> request.</p> </li> </ul> <p> Default: <code>Grey</code> </p>
-- * DateUpdated [UpdateDate] <p>The last modified date for this environment.</p>
-- * DateCreated [CreationDate] <p>The creation date for this environment.</p>
-- * EnvironmentArn [EnvironmentArn] <p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>
-- * Resources [EnvironmentResourcesDescription] <p>The description of the AWS resources used by this environment.</p>
-- @return EnvironmentDescription structure as a key-value pair table
function M.EnvironmentDescription(args)
	assert(args, "You must provide an argument table when creating EnvironmentDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["VersionLabel"] = args["VersionLabel"],
		["Status"] = args["Status"],
		["Description"] = args["Description"],
		["EnvironmentLinks"] = args["EnvironmentLinks"],
		["PlatformArn"] = args["PlatformArn"],
		["TemplateName"] = args["TemplateName"],
		["EndpointURL"] = args["EndpointURL"],
		["SolutionStackName"] = args["SolutionStackName"],
		["HealthStatus"] = args["HealthStatus"],
		["EnvironmentId"] = args["EnvironmentId"],
		["CNAME"] = args["CNAME"],
		["AbortableOperationInProgress"] = args["AbortableOperationInProgress"],
		["Tier"] = args["Tier"],
		["Health"] = args["Health"],
		["DateUpdated"] = args["DateUpdated"],
		["DateCreated"] = args["DateCreated"],
		["EnvironmentArn"] = args["EnvironmentArn"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertEnvironmentDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventsMessage = { ["ApplicationName"] = true, ["EnvironmentId"] = true, ["VersionLabel"] = true, ["NextToken"] = true, ["EnvironmentName"] = true, ["PlatformArn"] = true, ["TemplateName"] = true, ["MaxRecords"] = true, ["RequestId"] = true, ["StartTime"] = true, ["EndTime"] = true, ["Severity"] = true, nil }

function asserts.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["RequestId"] then asserts.AssertRequestId(struct["RequestId"]) end
	if struct["StartTime"] then asserts.AssertTimeFilterStart(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertTimeFilterEnd(struct["EndTime"]) end
	if struct["Severity"] then asserts.AssertEventSeverity(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsMessage[k], "DescribeEventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsMessage
-- <p>Request to retrieve a list of events for an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.</p>
-- * EnvironmentId [EnvironmentId] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.</p>
-- * VersionLabel [VersionLabel] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.</p>
-- * NextToken [Token] <p>Pagination token. If specified, the events return the next batch of results.</p>
-- * EnvironmentName [EnvironmentName] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the version of the custom platform.</p>
-- * TemplateName [ConfigurationTemplateName] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.</p>
-- * MaxRecords [MaxRecords] <p>Specifies the maximum number of events that can be returned, beginning with the most recent event.</p>
-- * RequestId [RequestId] <p>If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.</p>
-- * StartTime [TimeFilterStart] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.</p>
-- * EndTime [TimeFilterEnd] <p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the <code>EndTime</code>. </p>
-- * Severity [EventSeverity] <p>If specified, limits the events returned from this call to include only those with the specified severity or higher.</p>
-- @return DescribeEventsMessage structure as a key-value pair table
function M.DescribeEventsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentId"] = args["EnvironmentId"],
		["VersionLabel"] = args["VersionLabel"],
		["NextToken"] = args["NextToken"],
		["EnvironmentName"] = args["EnvironmentName"],
		["PlatformArn"] = args["PlatformArn"],
		["TemplateName"] = args["TemplateName"],
		["MaxRecords"] = args["MaxRecords"],
		["RequestId"] = args["RequestId"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["Severity"] = args["Severity"],
	}
	asserts.AssertDescribeEventsMessage(all_args)
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
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag applied to a resource in an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
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

keys.ConfigurationOptionDescription = { ["Regex"] = true, ["Name"] = true, ["UserDefined"] = true, ["DefaultValue"] = true, ["ChangeSeverity"] = true, ["Namespace"] = true, ["MaxValue"] = true, ["MinValue"] = true, ["MaxLength"] = true, ["ValueType"] = true, ["ValueOptions"] = true, nil }

function asserts.AssertConfigurationOptionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationOptionDescription to be of type 'table'")
	if struct["Regex"] then asserts.AssertOptionRestrictionRegex(struct["Regex"]) end
	if struct["Name"] then asserts.AssertConfigurationOptionName(struct["Name"]) end
	if struct["UserDefined"] then asserts.AssertUserDefinedOption(struct["UserDefined"]) end
	if struct["DefaultValue"] then asserts.AssertConfigurationOptionDefaultValue(struct["DefaultValue"]) end
	if struct["ChangeSeverity"] then asserts.AssertConfigurationOptionSeverity(struct["ChangeSeverity"]) end
	if struct["Namespace"] then asserts.AssertOptionNamespace(struct["Namespace"]) end
	if struct["MaxValue"] then asserts.AssertOptionRestrictionMaxValue(struct["MaxValue"]) end
	if struct["MinValue"] then asserts.AssertOptionRestrictionMinValue(struct["MinValue"]) end
	if struct["MaxLength"] then asserts.AssertOptionRestrictionMaxLength(struct["MaxLength"]) end
	if struct["ValueType"] then asserts.AssertConfigurationOptionValueType(struct["ValueType"]) end
	if struct["ValueOptions"] then asserts.AssertConfigurationOptionPossibleValues(struct["ValueOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationOptionDescription[k], "ConfigurationOptionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationOptionDescription
-- <p>Describes the possible values for a configuration option.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Regex [OptionRestrictionRegex] <p>If specified, the configuration option must be a string value that satisfies this regular expression.</p>
-- * Name [ConfigurationOptionName] <p>The name of the configuration option.</p>
-- * UserDefined [UserDefinedOption] <p>An indication of whether the user defined this configuration option:</p> <ul> <li> <p> <code>true</code> : This configuration option was defined by the user. It is a valid choice for specifying if this as an <code>Option to Remove</code> when updating configuration settings. </p> </li> <li> <p> <code>false</code> : This configuration was not defined by the user.</p> </li> </ul> <p> Constraint: You can remove only <code>UserDefined</code> options from a configuration. </p> <p> Valid Values: <code>true</code> | <code>false</code> </p>
-- * DefaultValue [ConfigurationOptionDefaultValue] <p>The default value for this configuration option.</p>
-- * ChangeSeverity [ConfigurationOptionSeverity] <p>An indication of which action is required if the value for this configuration option changes:</p> <ul> <li> <p> <code>NoInterruption</code> : There is no interruption to the environment or application availability.</p> </li> <li> <p> <code>RestartEnvironment</code> : The environment is entirely restarted, all AWS resources are deleted and recreated, and the environment is unavailable during the process.</p> </li> <li> <p> <code>RestartApplicationServer</code> : The environment is available the entire time. However, a short application outage occurs when the application servers on the running Amazon EC2 instances are restarted.</p> </li> </ul>
-- * Namespace [OptionNamespace] <p>A unique namespace identifying the option's associated AWS resource.</p>
-- * MaxValue [OptionRestrictionMaxValue] <p>If specified, the configuration option must be a numeric value less than this value.</p>
-- * MinValue [OptionRestrictionMinValue] <p>If specified, the configuration option must be a numeric value greater than this value.</p>
-- * MaxLength [OptionRestrictionMaxLength] <p>If specified, the configuration option must be a string value no longer than this value.</p>
-- * ValueType [ConfigurationOptionValueType] <p>An indication of which type of values this option has and whether it is allowable to select one or more than one of the possible values:</p> <ul> <li> <p> <code>Scalar</code> : Values for this option are a single selection from the possible values, or an unformatted string, or numeric value governed by the <code>MIN/MAX/Regex</code> constraints.</p> </li> <li> <p> <code>List</code> : Values for this option are multiple selections from the possible values.</p> </li> <li> <p> <code>Boolean</code> : Values for this option are either <code>true</code> or <code>false</code> .</p> </li> <li> <p> <code>Json</code> : Values for this option are a JSON representation of a <code>ConfigDocument</code>.</p> </li> </ul>
-- * ValueOptions [ConfigurationOptionPossibleValues] <p>If specified, values for the configuration option are selected from this list.</p>
-- @return ConfigurationOptionDescription structure as a key-value pair table
function M.ConfigurationOptionDescription(args)
	assert(args, "You must provide an argument table when creating ConfigurationOptionDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Regex"] = args["Regex"],
		["Name"] = args["Name"],
		["UserDefined"] = args["UserDefined"],
		["DefaultValue"] = args["DefaultValue"],
		["ChangeSeverity"] = args["ChangeSeverity"],
		["Namespace"] = args["Namespace"],
		["MaxValue"] = args["MaxValue"],
		["MinValue"] = args["MinValue"],
		["MaxLength"] = args["MaxLength"],
		["ValueType"] = args["ValueType"],
		["ValueOptions"] = args["ValueOptions"],
	}
	asserts.AssertConfigurationOptionDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentManagedActionsResult = { ["ManagedActions"] = true, nil }

function asserts.AssertDescribeEnvironmentManagedActionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentManagedActionsResult to be of type 'table'")
	if struct["ManagedActions"] then asserts.AssertManagedActions(struct["ManagedActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentManagedActionsResult[k], "DescribeEnvironmentManagedActionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentManagedActionsResult
-- <p>The result message containing a list of managed actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManagedActions [ManagedActions] <p>A list of upcoming and in-progress managed actions.</p>
-- @return DescribeEnvironmentManagedActionsResult structure as a key-value pair table
function M.DescribeEnvironmentManagedActionsResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentManagedActionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManagedActions"] = args["ManagedActions"],
	}
	asserts.AssertDescribeEnvironmentManagedActionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStorageLocationResultMessage = { ["S3Bucket"] = true, nil }

function asserts.AssertCreateStorageLocationResultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorageLocationResultMessage to be of type 'table'")
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStorageLocationResultMessage[k], "CreateStorageLocationResultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorageLocationResultMessage
-- <p>Results of a <a>CreateStorageLocationResult</a> call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Bucket [S3Bucket] <p>The name of the Amazon S3 bucket created.</p>
-- @return CreateStorageLocationResultMessage structure as a key-value pair table
function M.CreateStorageLocationResultMessage(args)
	assert(args, "You must provide an argument table when creating CreateStorageLocationResultMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Bucket"] = args["S3Bucket"],
	}
	asserts.AssertCreateStorageLocationResultMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionSpecification = { ["OptionName"] = true, ["ResourceName"] = true, ["Namespace"] = true, nil }

function asserts.AssertOptionSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionSpecification to be of type 'table'")
	if struct["OptionName"] then asserts.AssertConfigurationOptionName(struct["OptionName"]) end
	if struct["ResourceName"] then asserts.AssertResourceName(struct["ResourceName"]) end
	if struct["Namespace"] then asserts.AssertOptionNamespace(struct["Namespace"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionSpecification[k], "OptionSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionSpecification
-- <p>A specification identifying an individual configuration option.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionName [ConfigurationOptionName] <p>The name of the configuration option.</p>
-- * ResourceName [ResourceName] <p>A unique resource name for a time-based scaling configuration option.</p>
-- * Namespace [OptionNamespace] <p>A unique namespace identifying the option's associated AWS resource.</p>
-- @return OptionSpecification structure as a key-value pair table
function M.OptionSpecification(args)
	assert(args, "You must provide an argument table when creating OptionSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionName"] = args["OptionName"],
		["ResourceName"] = args["ResourceName"],
		["Namespace"] = args["Namespace"],
	}
	asserts.AssertOptionSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlatformDescription = { ["PlatformArn"] = true, ["Maintainer"] = true, ["Description"] = true, ["PlatformStatus"] = true, ["Frameworks"] = true, ["ProgrammingLanguages"] = true, ["SolutionStackName"] = true, ["OperatingSystemVersion"] = true, ["SupportedTierList"] = true, ["OperatingSystemName"] = true, ["PlatformCategory"] = true, ["PlatformOwner"] = true, ["PlatformVersion"] = true, ["DateUpdated"] = true, ["DateCreated"] = true, ["PlatformName"] = true, ["SupportedAddonList"] = true, ["CustomAmiList"] = true, nil }

function asserts.AssertPlatformDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformDescription to be of type 'table'")
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["Maintainer"] then asserts.AssertMaintainer(struct["Maintainer"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["PlatformStatus"] then asserts.AssertPlatformStatus(struct["PlatformStatus"]) end
	if struct["Frameworks"] then asserts.AssertPlatformFrameworks(struct["Frameworks"]) end
	if struct["ProgrammingLanguages"] then asserts.AssertPlatformProgrammingLanguages(struct["ProgrammingLanguages"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["OperatingSystemVersion"] then asserts.AssertOperatingSystemVersion(struct["OperatingSystemVersion"]) end
	if struct["SupportedTierList"] then asserts.AssertSupportedTierList(struct["SupportedTierList"]) end
	if struct["OperatingSystemName"] then asserts.AssertOperatingSystemName(struct["OperatingSystemName"]) end
	if struct["PlatformCategory"] then asserts.AssertPlatformCategory(struct["PlatformCategory"]) end
	if struct["PlatformOwner"] then asserts.AssertPlatformOwner(struct["PlatformOwner"]) end
	if struct["PlatformVersion"] then asserts.AssertPlatformVersion(struct["PlatformVersion"]) end
	if struct["DateUpdated"] then asserts.AssertUpdateDate(struct["DateUpdated"]) end
	if struct["DateCreated"] then asserts.AssertCreationDate(struct["DateCreated"]) end
	if struct["PlatformName"] then asserts.AssertPlatformName(struct["PlatformName"]) end
	if struct["SupportedAddonList"] then asserts.AssertSupportedAddonList(struct["SupportedAddonList"]) end
	if struct["CustomAmiList"] then asserts.AssertCustomAmiList(struct["CustomAmiList"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformDescription[k], "PlatformDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformDescription
-- <p>Detailed information about a platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * Maintainer [Maintainer] <p>Information about the maintainer of the platform.</p>
-- * Description [Description] <p>The description of the platform.</p>
-- * PlatformStatus [PlatformStatus] <p>The status of the platform.</p>
-- * Frameworks [PlatformFrameworks] <p>The frameworks supported by the platform.</p>
-- * ProgrammingLanguages [PlatformProgrammingLanguages] <p>The programming languages supported by the platform.</p>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack used by the platform.</p>
-- * OperatingSystemVersion [OperatingSystemVersion] <p>The version of the operating system used by the platform.</p>
-- * SupportedTierList [SupportedTierList] <p>The tiers supported by the platform.</p>
-- * OperatingSystemName [OperatingSystemName] <p>The operating system used by the platform.</p>
-- * PlatformCategory [PlatformCategory] <p>The category of the platform.</p>
-- * PlatformOwner [PlatformOwner] <p>The AWS account ID of the person who created the platform.</p>
-- * PlatformVersion [PlatformVersion] <p>The version of the platform.</p>
-- * DateUpdated [UpdateDate] <p>The date when the platform was last updated.</p>
-- * DateCreated [CreationDate] <p>The date when the platform was created.</p>
-- * PlatformName [PlatformName] <p>The name of the platform.</p>
-- * SupportedAddonList [SupportedAddonList] <p>The additions supported by the platform.</p>
-- * CustomAmiList [CustomAmiList] <p>The custom AMIs supported by the platform.</p>
-- @return PlatformDescription structure as a key-value pair table
function M.PlatformDescription(args)
	assert(args, "You must provide an argument table when creating PlatformDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformArn"] = args["PlatformArn"],
		["Maintainer"] = args["Maintainer"],
		["Description"] = args["Description"],
		["PlatformStatus"] = args["PlatformStatus"],
		["Frameworks"] = args["Frameworks"],
		["ProgrammingLanguages"] = args["ProgrammingLanguages"],
		["SolutionStackName"] = args["SolutionStackName"],
		["OperatingSystemVersion"] = args["OperatingSystemVersion"],
		["SupportedTierList"] = args["SupportedTierList"],
		["OperatingSystemName"] = args["OperatingSystemName"],
		["PlatformCategory"] = args["PlatformCategory"],
		["PlatformOwner"] = args["PlatformOwner"],
		["PlatformVersion"] = args["PlatformVersion"],
		["DateUpdated"] = args["DateUpdated"],
		["DateCreated"] = args["DateCreated"],
		["PlatformName"] = args["PlatformName"],
		["SupportedAddonList"] = args["SupportedAddonList"],
		["CustomAmiList"] = args["CustomAmiList"],
	}
	asserts.AssertPlatformDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingGroup = { ["Name"] = true, nil }

function asserts.AssertAutoScalingGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingGroup to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceId(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingGroup[k], "AutoScalingGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingGroup
-- <p>Describes an Auto Scaling launch configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceId] <p>The name of the <code>AutoScalingGroup</code> . </p>
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
		["Name"] = args["Name"],
	}
	asserts.AssertAutoScalingGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationVersionDescriptionMessage = { ["ApplicationVersion"] = true, nil }

function asserts.AssertApplicationVersionDescriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationVersionDescriptionMessage to be of type 'table'")
	if struct["ApplicationVersion"] then asserts.AssertApplicationVersionDescription(struct["ApplicationVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationVersionDescriptionMessage[k], "ApplicationVersionDescriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationVersionDescriptionMessage
-- <p>Result message wrapping a single description of an application version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationVersion [ApplicationVersionDescription] <p> The <a>ApplicationVersionDescription</a> of the application version. </p>
-- @return ApplicationVersionDescriptionMessage structure as a key-value pair table
function M.ApplicationVersionDescriptionMessage(args)
	assert(args, "You must provide an argument table when creating ApplicationVersionDescriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationVersion"] = args["ApplicationVersion"],
	}
	asserts.AssertApplicationVersionDescriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentResourcesMessage = { ["EnvironmentId"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertDescribeEnvironmentResourcesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentResourcesMessage to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentResourcesMessage[k], "DescribeEnvironmentResourcesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentResourcesMessage
-- <p>Request to describe the resources in an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment to retrieve AWS resource usage data.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to retrieve AWS resource usage data.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- @return DescribeEnvironmentResourcesMessage structure as a key-value pair table
function M.DescribeEnvironmentResourcesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentResourcesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertDescribeEnvironmentResourcesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationOptionsMessage = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["PlatformArn"] = true, ["TemplateName"] = true, ["SolutionStackName"] = true, ["Options"] = true, nil }

function asserts.AssertDescribeConfigurationOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationOptionsMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["Options"] then asserts.AssertOptionsSpecifierList(struct["Options"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationOptionsMessage[k], "DescribeConfigurationOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationOptionsMessage
-- <p>Result message containing a list of application version descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment whose configuration options you want to describe.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the custom platform.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template whose configuration options you want to describe.</p>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack whose configuration options you want to describe.</p>
-- * Options [OptionsSpecifierList] <p>If specified, restricts the descriptions to only the specified options.</p>
-- @return DescribeConfigurationOptionsMessage structure as a key-value pair table
function M.DescribeConfigurationOptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["PlatformArn"] = args["PlatformArn"],
		["TemplateName"] = args["TemplateName"],
		["SolutionStackName"] = args["SolutionStackName"],
		["Options"] = args["Options"],
	}
	asserts.AssertDescribeConfigurationOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetrieveEnvironmentInfoMessage = { ["EnvironmentId"] = true, ["InfoType"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertRetrieveEnvironmentInfoMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveEnvironmentInfoMessage to be of type 'table'")
	assert(struct["InfoType"], "Expected key InfoType to exist in table")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["InfoType"] then asserts.AssertEnvironmentInfoType(struct["InfoType"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveEnvironmentInfoMessage[k], "RetrieveEnvironmentInfoMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveEnvironmentInfoMessage
-- <p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the data's environment.</p> <p>If no such environment is found, returns an <code>InvalidParameterValue</code> error.</p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.</p>
-- * InfoType [EnvironmentInfoType] <p>The type of information to retrieve.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the data's environment.</p> <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- Required key: InfoType
-- @return RetrieveEnvironmentInfoMessage structure as a key-value pair table
function M.RetrieveEnvironmentInfoMessage(args)
	assert(args, "You must provide an argument table when creating RetrieveEnvironmentInfoMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["InfoType"] = args["InfoType"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertRetrieveEnvironmentInfoMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationMessage = { ["ApplicationName"] = true, ["Description"] = true, ["ResourceLifecycleConfig"] = true, nil }

function asserts.AssertCreateApplicationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ResourceLifecycleConfig"] then asserts.AssertApplicationResourceLifecycleConfig(struct["ResourceLifecycleConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationMessage[k], "CreateApplicationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationMessage
-- <p>Request to create an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application.</p> <p>Constraint: This name must be unique within your account. If the specified name already exists, the action returns an <code>InvalidParameterValue</code> error.</p>
-- * Description [Description] <p>Describes the application.</p>
-- * ResourceLifecycleConfig [ApplicationResourceLifecycleConfig] <p>Specify an application resource lifecycle configuration to prevent your application from accumulating too many versions.</p>
-- Required key: ApplicationName
-- @return CreateApplicationMessage structure as a key-value pair table
function M.CreateApplicationMessage(args)
	assert(args, "You must provide an argument table when creating CreateApplicationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["Description"] = args["Description"],
		["ResourceLifecycleConfig"] = args["ResourceLifecycleConfig"],
	}
	asserts.AssertCreateApplicationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePlatformVersionRequest = { ["PlatformVersion"] = true, ["EnvironmentName"] = true, ["PlatformDefinitionBundle"] = true, ["PlatformName"] = true, ["OptionSettings"] = true, nil }

function asserts.AssertCreatePlatformVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformVersionRequest to be of type 'table'")
	assert(struct["PlatformName"], "Expected key PlatformName to exist in table")
	assert(struct["PlatformVersion"], "Expected key PlatformVersion to exist in table")
	assert(struct["PlatformDefinitionBundle"], "Expected key PlatformDefinitionBundle to exist in table")
	if struct["PlatformVersion"] then asserts.AssertPlatformVersion(struct["PlatformVersion"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["PlatformDefinitionBundle"] then asserts.AssertS3Location(struct["PlatformDefinitionBundle"]) end
	if struct["PlatformName"] then asserts.AssertPlatformName(struct["PlatformName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlatformVersionRequest[k], "CreatePlatformVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformVersionRequest
-- <p>Request to create a new platform version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformVersion [PlatformVersion] <p>The number, such as 1.0.2, for the new platform version.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the builder environment.</p>
-- * PlatformDefinitionBundle [S3Location] <p>The location of the platform definition archive in Amazon S3.</p>
-- * PlatformName [PlatformName] <p>The name of your custom platform.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>The configuration option settings to apply to the builder environment.</p>
-- Required key: PlatformName
-- Required key: PlatformVersion
-- Required key: PlatformDefinitionBundle
-- @return CreatePlatformVersionRequest structure as a key-value pair table
function M.CreatePlatformVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreatePlatformVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformVersion"] = args["PlatformVersion"],
		["EnvironmentName"] = args["EnvironmentName"],
		["PlatformDefinitionBundle"] = args["PlatformDefinitionBundle"],
		["PlatformName"] = args["PlatformName"],
		["OptionSettings"] = args["OptionSettings"],
	}
	asserts.AssertCreatePlatformVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Listener = { ["Protocol"] = true, ["Port"] = true, nil }

function asserts.AssertListener(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Listener to be of type 'table'")
	if struct["Protocol"] then asserts.AssertString(struct["Protocol"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.Listener[k], "Listener contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Listener
-- <p>Describes the properties of a Listener for the LoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [String] <p>The protocol that is used by the Listener.</p>
-- * Port [Integer] <p>The port that is used by the Listener.</p>
-- @return Listener structure as a key-value pair table
function M.Listener(args)
	assert(args, "You must provide an argument table when creating Listener")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Protocol"] = args["Protocol"],
		["Port"] = args["Port"],
	}
	asserts.AssertListener(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationResourceLifecycleDescriptionMessage = { ["ApplicationName"] = true, ["ResourceLifecycleConfig"] = true, nil }

function asserts.AssertApplicationResourceLifecycleDescriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationResourceLifecycleDescriptionMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ResourceLifecycleConfig"] then asserts.AssertApplicationResourceLifecycleConfig(struct["ResourceLifecycleConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationResourceLifecycleDescriptionMessage[k], "ApplicationResourceLifecycleDescriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationResourceLifecycleDescriptionMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application.</p>
-- * ResourceLifecycleConfig [ApplicationResourceLifecycleConfig] <p>The lifecycle configuration.</p>
-- @return ApplicationResourceLifecycleDescriptionMessage structure as a key-value pair table
function M.ApplicationResourceLifecycleDescriptionMessage(args)
	assert(args, "You must provide an argument table when creating ApplicationResourceLifecycleDescriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["ResourceLifecycleConfig"] = args["ResourceLifecycleConfig"],
	}
	asserts.AssertApplicationResourceLifecycleDescriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceQuota = { ["Maximum"] = true, nil }

function asserts.AssertResourceQuota(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceQuota to be of type 'table'")
	if struct["Maximum"] then asserts.AssertBoxedInt(struct["Maximum"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceQuota[k], "ResourceQuota contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceQuota
-- <p>The AWS Elastic Beanstalk quota information for a single resource type in an AWS account. It reflects the resource's limits for this account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Maximum [BoxedInt] <p>The maximum number of instances of this Elastic Beanstalk resource type that an AWS account can use.</p>
-- @return ResourceQuota structure as a key-value pair table
function M.ResourceQuota(args)
	assert(args, "You must provide an argument table when creating ResourceQuota")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Maximum"] = args["Maximum"],
	}
	asserts.AssertResourceQuota(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SystemStatus = { ["LoadAverage"] = true, ["CPUUtilization"] = true, nil }

function asserts.AssertSystemStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SystemStatus to be of type 'table'")
	if struct["LoadAverage"] then asserts.AssertLoadAverage(struct["LoadAverage"]) end
	if struct["CPUUtilization"] then asserts.AssertCPUUtilization(struct["CPUUtilization"]) end
	for k,_ in pairs(struct) do
		assert(keys.SystemStatus[k], "SystemStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SystemStatus
-- <p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadAverage [LoadAverage] <p>Load average in the last 1-minute, 5-minute, and 15-minute periods. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os">Operating System Metrics</a>.</p>
-- * CPUUtilization [CPUUtilization] <p>CPU utilization metrics for the instance.</p>
-- @return SystemStatus structure as a key-value pair table
function M.SystemStatus(args)
	assert(args, "You must provide an argument table when creating SystemStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadAverage"] = args["LoadAverage"],
		["CPUUtilization"] = args["CPUUtilization"],
	}
	asserts.AssertSystemStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePlatformVersionRequest = { ["PlatformArn"] = true, nil }

function asserts.AssertDeletePlatformVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlatformVersionRequest to be of type 'table'")
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePlatformVersionRequest[k], "DeletePlatformVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlatformVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformArn [PlatformArn] <p>The ARN of the version of the custom platform.</p>
-- @return DeletePlatformVersionRequest structure as a key-value pair table
function M.DeletePlatformVersionRequest(args)
	assert(args, "You must provide an argument table when creating DeletePlatformVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformArn"] = args["PlatformArn"],
	}
	asserts.AssertDeletePlatformVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationVersionMessage = { ["ApplicationName"] = true, ["VersionLabel"] = true, ["SourceBuildInformation"] = true, ["Description"] = true, ["AutoCreateApplication"] = true, ["Process"] = true, ["BuildConfiguration"] = true, ["SourceBundle"] = true, nil }

function asserts.AssertCreateApplicationVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationVersionMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["VersionLabel"], "Expected key VersionLabel to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["SourceBuildInformation"] then asserts.AssertSourceBuildInformation(struct["SourceBuildInformation"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["AutoCreateApplication"] then asserts.AssertAutoCreateApplication(struct["AutoCreateApplication"]) end
	if struct["Process"] then asserts.AssertApplicationVersionProccess(struct["Process"]) end
	if struct["BuildConfiguration"] then asserts.AssertBuildConfiguration(struct["BuildConfiguration"]) end
	if struct["SourceBundle"] then asserts.AssertS3Location(struct["SourceBundle"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationVersionMessage[k], "CreateApplicationVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationVersionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p> The name of the application. If no application is found with this name, and <code>AutoCreateApplication</code> is <code>false</code>, returns an <code>InvalidParameterValue</code> error. </p>
-- * VersionLabel [VersionLabel] <p>A label identifying this version.</p> <p>Constraint: Must be unique per application. If an application version already exists with this label for the specified application, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
-- * SourceBuildInformation [SourceBuildInformation] <p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the application version.</p>
-- * Description [Description] <p>Describes this version.</p>
-- * AutoCreateApplication [AutoCreateApplication] <p>Set to <code>true</code> to create an application with the specified name if it doesn't already exist.</p>
-- * Process [ApplicationVersionProccess] <p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment.</p> <p>You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional.</p> <note> <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It doesn't validate your application's configuration files, like proxy server or Docker configuration.</p> </note>
-- * BuildConfiguration [BuildConfiguration] <p>Settings for an AWS CodeBuild build.</p>
-- * SourceBundle [S3Location] <p>The Amazon S3 bucket and key that identify the location of the source bundle for this version.</p> <note> <p>The Amazon S3 bucket must be in the same region as the environment.</p> </note> <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample application.</p>
-- Required key: ApplicationName
-- Required key: VersionLabel
-- @return CreateApplicationVersionMessage structure as a key-value pair table
function M.CreateApplicationVersionMessage(args)
	assert(args, "You must provide an argument table when creating CreateApplicationVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["VersionLabel"] = args["VersionLabel"],
		["SourceBuildInformation"] = args["SourceBuildInformation"],
		["Description"] = args["Description"],
		["AutoCreateApplication"] = args["AutoCreateApplication"],
		["Process"] = args["Process"],
		["BuildConfiguration"] = args["BuildConfiguration"],
		["SourceBundle"] = args["SourceBundle"],
	}
	asserts.AssertCreateApplicationVersionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationVersionDescriptionsMessage = { ["ApplicationVersions"] = true, ["NextToken"] = true, nil }

function asserts.AssertApplicationVersionDescriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationVersionDescriptionsMessage to be of type 'table'")
	if struct["ApplicationVersions"] then asserts.AssertApplicationVersionDescriptionList(struct["ApplicationVersions"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationVersionDescriptionsMessage[k], "ApplicationVersionDescriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationVersionDescriptionsMessage
-- <p>Result message wrapping a list of application version descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationVersions [ApplicationVersionDescriptionList] <p>List of <code>ApplicationVersionDescription</code> objects sorted in order of creation.</p>
-- * NextToken [Token] <p>In a paginated request, the token that you can pass in a subsequent request to get the next response page.</p>
-- @return ApplicationVersionDescriptionsMessage structure as a key-value pair table
function M.ApplicationVersionDescriptionsMessage(args)
	assert(args, "You must provide an argument table when creating ApplicationVersionDescriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationVersions"] = args["ApplicationVersions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertApplicationVersionDescriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Builder = { ["ARN"] = true, nil }

function asserts.AssertBuilder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Builder to be of type 'table'")
	if struct["ARN"] then asserts.AssertARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Builder[k], "Builder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Builder
-- <p>The builder used to build the custom platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ARN [ARN] <p>The ARN of the builder.</p>
-- @return Builder structure as a key-value pair table
function M.Builder(args)
	assert(args, "You must provide an argument table when creating Builder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ARN"] = args["ARN"],
	}
	asserts.AssertBuilder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationMetrics = { ["Duration"] = true, ["Latency"] = true, ["RequestCount"] = true, ["StatusCodes"] = true, nil }

function asserts.AssertApplicationMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationMetrics to be of type 'table'")
	if struct["Duration"] then asserts.AssertNullableInteger(struct["Duration"]) end
	if struct["Latency"] then asserts.AssertLatency(struct["Latency"]) end
	if struct["RequestCount"] then asserts.AssertRequestCount(struct["RequestCount"]) end
	if struct["StatusCodes"] then asserts.AssertStatusCodes(struct["StatusCodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationMetrics[k], "ApplicationMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationMetrics
-- <p>Application request metrics for an AWS Elastic Beanstalk environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [NullableInteger] <p>The amount of time that the metrics cover (usually 10 seconds). For example, you might have 5 requests (<code>request_count</code>) within the most recent time slice of 10 seconds (<code>duration</code>).</p>
-- * Latency [Latency] <p>Represents the average latency for the slowest X percent of requests over the last 10 seconds. Latencies are in seconds with one millisecond resolution.</p>
-- * RequestCount [RequestCount] <p>Average number of requests handled by the web server per second over the last 10 seconds.</p>
-- * StatusCodes [StatusCodes] <p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response.</p>
-- @return ApplicationMetrics structure as a key-value pair table
function M.ApplicationMetrics(args)
	assert(args, "You must provide an argument table when creating ApplicationMetrics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Duration"] = args["Duration"],
		["Latency"] = args["Latency"],
		["RequestCount"] = args["RequestCount"],
		["StatusCodes"] = args["StatusCodes"],
	}
	asserts.AssertApplicationMetrics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateEnvironmentMessage = { ["EnvironmentId"] = true, ["TerminateResources"] = true, ["ForceTerminate"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertTerminateEnvironmentMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateEnvironmentMessage to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["TerminateResources"] then asserts.AssertTerminateEnvironmentResources(struct["TerminateResources"]) end
	if struct["ForceTerminate"] then asserts.AssertForceTerminate(struct["ForceTerminate"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateEnvironmentMessage[k], "TerminateEnvironmentMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateEnvironmentMessage
-- <p>Request to terminate an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment to terminate.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * TerminateResources [TerminateEnvironmentResources] <p>Indicates whether the associated AWS resources should shut down when the environment is terminated:</p> <ul> <li> <p> <code>true</code>: The specified environment as well as the associated AWS resources, such as Auto Scaling group and LoadBalancer, are terminated.</p> </li> <li> <p> <code>false</code>: AWS Elastic Beanstalk resource management is removed from the environment, but the AWS resources continue to operate.</p> </li> </ul> <p> For more information, see the <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/"> AWS Elastic Beanstalk User Guide. </a> </p> <p> Default: <code>true</code> </p> <p> Valid Values: <code>true</code> | <code>false</code> </p>
-- * ForceTerminate [ForceTerminate] <p>Terminates the target environment even if another environment in the same group is dependent on it.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to terminate.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- @return TerminateEnvironmentMessage structure as a key-value pair table
function M.TerminateEnvironmentMessage(args)
	assert(args, "You must provide an argument table when creating TerminateEnvironmentMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["TerminateResources"] = args["TerminateResources"],
		["ForceTerminate"] = args["ForceTerminate"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertTerminateEnvironmentMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Queue = { ["URL"] = true, ["Name"] = true, nil }

function asserts.AssertQueue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Queue to be of type 'table'")
	if struct["URL"] then asserts.AssertString(struct["URL"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Queue[k], "Queue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Queue
-- <p>Describes a queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * URL [String] <p>The URL of the queue.</p>
-- * Name [String] <p>The name of the queue.</p>
-- @return Queue structure as a key-value pair table
function M.Queue(args)
	assert(args, "You must provide an argument table when creating Queue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["URL"] = args["URL"],
		["Name"] = args["Name"],
	}
	asserts.AssertQueue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BuildConfiguration = { ["ComputeType"] = true, ["Image"] = true, ["TimeoutInMinutes"] = true, ["CodeBuildServiceRole"] = true, ["ArtifactName"] = true, nil }

function asserts.AssertBuildConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildConfiguration to be of type 'table'")
	assert(struct["CodeBuildServiceRole"], "Expected key CodeBuildServiceRole to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["ComputeType"] then asserts.AssertComputeType(struct["ComputeType"]) end
	if struct["Image"] then asserts.AssertNonEmptyString(struct["Image"]) end
	if struct["TimeoutInMinutes"] then asserts.AssertBoxedInt(struct["TimeoutInMinutes"]) end
	if struct["CodeBuildServiceRole"] then asserts.AssertNonEmptyString(struct["CodeBuildServiceRole"]) end
	if struct["ArtifactName"] then asserts.AssertString(struct["ArtifactName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildConfiguration[k], "BuildConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildConfiguration
-- <p>Settings for an AWS CodeBuild build.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComputeType [ComputeType] <p>Information about the compute resources the build project will use.</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds</code> </p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds</code> </p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds</code> </p> </li> </ul>
-- * Image [NonEmptyString] <p>The ID of the Docker image to use for this build project.</p>
-- * TimeoutInMinutes [BoxedInt] <p>How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes.</p>
-- * CodeBuildServiceRole [NonEmptyString] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- * ArtifactName [String] <p>The name of the artifact of the CodeBuild build. If provided, Elastic Beanstalk stores the build artifact in the S3 location <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>-<i>artifact-name</i>.zip. If not provided, Elastic Beanstalk stores the build artifact in the S3 location <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>.zip. </p>
-- Required key: CodeBuildServiceRole
-- Required key: Image
-- @return BuildConfiguration structure as a key-value pair table
function M.BuildConfiguration(args)
	assert(args, "You must provide an argument table when creating BuildConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComputeType"] = args["ComputeType"],
		["Image"] = args["Image"],
		["TimeoutInMinutes"] = args["TimeoutInMinutes"],
		["CodeBuildServiceRole"] = args["CodeBuildServiceRole"],
		["ArtifactName"] = args["ArtifactName"],
	}
	asserts.AssertBuildConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEnvironmentMessage = { ["ApplicationName"] = true, ["EnvironmentId"] = true, ["VersionLabel"] = true, ["Description"] = true, ["EnvironmentName"] = true, ["TemplateName"] = true, ["SolutionStackName"] = true, ["GroupName"] = true, ["OptionSettings"] = true, ["Tier"] = true, ["PlatformArn"] = true, ["OptionsToRemove"] = true, nil }

function asserts.AssertUpdateEnvironmentMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEnvironmentMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["Tier"] then asserts.AssertEnvironmentTier(struct["Tier"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["OptionsToRemove"] then asserts.AssertOptionsSpecifierList(struct["OptionsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEnvironmentMessage[k], "UpdateEnvironmentMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEnvironmentMessage
-- <p>Request to update an environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application with which the environment is associated.</p>
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment to update.</p> <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error.</p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * VersionLabel [VersionLabel] <p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application version to the environment. If no such application version is found, returns an <code>InvalidParameterValue</code> error. </p>
-- * Description [Description] <p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this environment.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to update. If no environment with this name exists, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * TemplateName [ConfigurationTemplateName] <p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration template to the environment. If no such configuration template is found, AWS Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
-- * SolutionStackName [SolutionStackName] <p>This specifies the platform version that the environment will run after the environment is updated.</p>
-- * GroupName [GroupName] <p>The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name or environment ID parameters. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the running environment and sets the specified configuration options to the requested value.</p>
-- * Tier [EnvironmentTier] <p>This specifies the tier to use to update the environment.</p> <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic Beanstalk returns <code>InvalidParameterValue</code> error. </p>
-- * PlatformArn [PlatformArn] <p>The ARN of the platform, if used.</p>
-- * OptionsToRemove [OptionsSpecifierList] <p>A list of custom user-defined configuration options to remove from the configuration set for this environment.</p>
-- @return UpdateEnvironmentMessage structure as a key-value pair table
function M.UpdateEnvironmentMessage(args)
	assert(args, "You must provide an argument table when creating UpdateEnvironmentMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentId"] = args["EnvironmentId"],
		["VersionLabel"] = args["VersionLabel"],
		["Description"] = args["Description"],
		["EnvironmentName"] = args["EnvironmentName"],
		["TemplateName"] = args["TemplateName"],
		["SolutionStackName"] = args["SolutionStackName"],
		["GroupName"] = args["GroupName"],
		["OptionSettings"] = args["OptionSettings"],
		["Tier"] = args["Tier"],
		["PlatformArn"] = args["PlatformArn"],
		["OptionsToRemove"] = args["OptionsToRemove"],
	}
	asserts.AssertUpdateEnvironmentMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAvailableSolutionStacksResultMessage = { ["SolutionStacks"] = true, ["SolutionStackDetails"] = true, nil }

function asserts.AssertListAvailableSolutionStacksResultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAvailableSolutionStacksResultMessage to be of type 'table'")
	if struct["SolutionStacks"] then asserts.AssertAvailableSolutionStackNamesList(struct["SolutionStacks"]) end
	if struct["SolutionStackDetails"] then asserts.AssertAvailableSolutionStackDetailsList(struct["SolutionStackDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAvailableSolutionStacksResultMessage[k], "ListAvailableSolutionStacksResultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAvailableSolutionStacksResultMessage
-- <p>A list of available AWS Elastic Beanstalk solution stacks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SolutionStacks [AvailableSolutionStackNamesList] <p>A list of available solution stacks.</p>
-- * SolutionStackDetails [AvailableSolutionStackDetailsList] <p> A list of available solution stacks and their <a>SolutionStackDescription</a>. </p>
-- @return ListAvailableSolutionStacksResultMessage structure as a key-value pair table
function M.ListAvailableSolutionStacksResultMessage(args)
	assert(args, "You must provide an argument table when creating ListAvailableSolutionStacksResultMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SolutionStacks"] = args["SolutionStacks"],
		["SolutionStackDetails"] = args["SolutionStackDetails"],
	}
	asserts.AssertListAvailableSolutionStacksResultMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidateConfigurationSettingsMessage = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["OptionSettings"] = true, ["TemplateName"] = true, nil }

function asserts.AssertValidateConfigurationSettingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidateConfigurationSettingsMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["OptionSettings"], "Expected key OptionSettings to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidateConfigurationSettingsMessage[k], "ValidateConfigurationSettingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidateConfigurationSettingsMessage
-- <p>A list of validation messages for a specified configuration template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application that the configuration template or environment belongs to.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to validate the settings against.</p> <p>Condition: You cannot specify both this and a configuration template name.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>A list of the options and desired values to evaluate.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template to validate the settings against.</p> <p>Condition: You cannot specify both this and an environment name.</p>
-- Required key: ApplicationName
-- Required key: OptionSettings
-- @return ValidateConfigurationSettingsMessage structure as a key-value pair table
function M.ValidateConfigurationSettingsMessage(args)
	assert(args, "You must provide an argument table when creating ValidateConfigurationSettingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["OptionSettings"] = args["OptionSettings"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertValidateConfigurationSettingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentHealthRequest = { ["EnvironmentName"] = true, ["AttributeNames"] = true, ["EnvironmentId"] = true, nil }

function asserts.AssertDescribeEnvironmentHealthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentHealthRequest to be of type 'table'")
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["AttributeNames"] then asserts.AssertEnvironmentHealthAttributes(struct["AttributeNames"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentHealthRequest[k], "DescribeEnvironmentHealthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentHealthRequest
-- <p>See the example below to learn how to create a request body.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentName [EnvironmentName] <p>Specify the environment by name.</p> <p>You must specify either this or an EnvironmentName, or both.</p>
-- * AttributeNames [EnvironmentHealthAttributes] <p>Specify the response elements to return. To retrieve all attributes, set to <code>All</code>. If no attribute names are specified, returns the name of the environment.</p>
-- * EnvironmentId [EnvironmentId] <p>Specify the environment by ID.</p> <p>You must specify either this or an EnvironmentName, or both.</p>
-- @return DescribeEnvironmentHealthRequest structure as a key-value pair table
function M.DescribeEnvironmentHealthRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentHealthRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentName"] = args["EnvironmentName"],
		["AttributeNames"] = args["AttributeNames"],
		["EnvironmentId"] = args["EnvironmentId"],
	}
	asserts.AssertDescribeEnvironmentHealthRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationDescriptionsMessage = { ["Applications"] = true, nil }

function asserts.AssertApplicationDescriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDescriptionsMessage to be of type 'table'")
	if struct["Applications"] then asserts.AssertApplicationDescriptionList(struct["Applications"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationDescriptionsMessage[k], "ApplicationDescriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDescriptionsMessage
-- <p>Result message containing a list of application descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Applications [ApplicationDescriptionList] <p>This parameter contains a list of <a>ApplicationDescription</a>.</p>
-- @return ApplicationDescriptionsMessage structure as a key-value pair table
function M.ApplicationDescriptionsMessage(args)
	assert(args, "You must provide an argument table when creating ApplicationDescriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Applications"] = args["Applications"],
	}
	asserts.AssertApplicationDescriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationVersionLifecycleConfig = { ["MaxCountRule"] = true, ["MaxAgeRule"] = true, nil }

function asserts.AssertApplicationVersionLifecycleConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationVersionLifecycleConfig to be of type 'table'")
	if struct["MaxCountRule"] then asserts.AssertMaxCountRule(struct["MaxCountRule"]) end
	if struct["MaxAgeRule"] then asserts.AssertMaxAgeRule(struct["MaxAgeRule"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationVersionLifecycleConfig[k], "ApplicationVersionLifecycleConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationVersionLifecycleConfig
-- <p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxCountRule [MaxCountRule] <p>Specify a max count rule to restrict the number of application versions that are retained for an application.</p>
-- * MaxAgeRule [MaxAgeRule] <p>Specify a max age rule to restrict the length of time that application versions are retained for an application.</p>
-- @return ApplicationVersionLifecycleConfig structure as a key-value pair table
function M.ApplicationVersionLifecycleConfig(args)
	assert(args, "You must provide an argument table when creating ApplicationVersionLifecycleConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxCountRule"] = args["MaxCountRule"],
		["MaxAgeRule"] = args["MaxAgeRule"],
	}
	asserts.AssertApplicationVersionLifecycleConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEnvironmentConfigurationMessage = { ["ApplicationName"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertDeleteEnvironmentConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEnvironmentConfigurationMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["EnvironmentName"], "Expected key EnvironmentName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEnvironmentConfigurationMessage[k], "DeleteEnvironmentConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEnvironmentConfigurationMessage
-- <p>Request to delete a draft environment configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application the environment is associated with.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to delete the draft configuration from.</p>
-- Required key: ApplicationName
-- Required key: EnvironmentName
-- @return DeleteEnvironmentConfigurationMessage structure as a key-value pair table
function M.DeleteEnvironmentConfigurationMessage(args)
	assert(args, "You must provide an argument table when creating DeleteEnvironmentConfigurationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertDeleteEnvironmentConfigurationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceBuildInformation = { ["SourceLocation"] = true, ["SourceType"] = true, ["SourceRepository"] = true, nil }

function asserts.AssertSourceBuildInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceBuildInformation to be of type 'table'")
	assert(struct["SourceType"], "Expected key SourceType to exist in table")
	assert(struct["SourceRepository"], "Expected key SourceRepository to exist in table")
	assert(struct["SourceLocation"], "Expected key SourceLocation to exist in table")
	if struct["SourceLocation"] then asserts.AssertSourceLocation(struct["SourceLocation"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["SourceRepository"] then asserts.AssertSourceRepository(struct["SourceRepository"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceBuildInformation[k], "SourceBuildInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceBuildInformation
-- <p>Location of the source code for an application version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceLocation [SourceLocation] <p>The location of the source code, as a formatted string, depending on the value of <code>SourceRepository</code> </p> <ul> <li> <p>For <code>CodeCommit</code>, the format is the repository name and commit ID, separated by a forward slash. For example, <code>my-git-repo/265cfa0cf6af46153527f55d6503ec030551f57a</code>.</p> </li> <li> <p>For <code>S3</code>, the format is the S3 bucket name and object key, separated by a forward slash. For example, <code>my-s3-bucket/Folders/my-source-file</code>.</p> </li> </ul>
-- * SourceType [SourceType] <p>The type of repository.</p> <ul> <li> <p> <code>Git</code> </p> </li> <li> <p> <code>Zip</code> </p> </li> </ul>
-- * SourceRepository [SourceRepository] <p>Location where the repository is stored.</p> <ul> <li> <p> <code>CodeCommit</code> </p> </li> <li> <p> <code>S3</code> </p> </li> </ul>
-- Required key: SourceType
-- Required key: SourceRepository
-- Required key: SourceLocation
-- @return SourceBuildInformation structure as a key-value pair table
function M.SourceBuildInformation(args)
	assert(args, "You must provide an argument table when creating SourceBuildInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceLocation"] = args["SourceLocation"],
		["SourceType"] = args["SourceType"],
		["SourceRepository"] = args["SourceRepository"],
	}
	asserts.AssertSourceBuildInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SingleInstanceHealth = { ["AvailabilityZone"] = true, ["Deployment"] = true, ["InstanceId"] = true, ["ApplicationMetrics"] = true, ["System"] = true, ["Color"] = true, ["HealthStatus"] = true, ["LaunchedAt"] = true, ["InstanceType"] = true, ["Causes"] = true, nil }

function asserts.AssertSingleInstanceHealth(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SingleInstanceHealth to be of type 'table'")
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["Deployment"] then asserts.AssertDeployment(struct["Deployment"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["ApplicationMetrics"] then asserts.AssertApplicationMetrics(struct["ApplicationMetrics"]) end
	if struct["System"] then asserts.AssertSystemStatus(struct["System"]) end
	if struct["Color"] then asserts.AssertString(struct["Color"]) end
	if struct["HealthStatus"] then asserts.AssertString(struct["HealthStatus"]) end
	if struct["LaunchedAt"] then asserts.AssertLaunchedAt(struct["LaunchedAt"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["Causes"] then asserts.AssertCauses(struct["Causes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SingleInstanceHealth[k], "SingleInstanceHealth contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SingleInstanceHealth
-- <p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZone [String] <p>The availability zone in which the instance runs.</p>
-- * Deployment [Deployment] <p>Information about the most recent deployment to an instance.</p>
-- * InstanceId [InstanceId] <p>The ID of the Amazon EC2 instance.</p>
-- * ApplicationMetrics [ApplicationMetrics] <p>Request metrics from your application.</p>
-- * System [SystemStatus] <p>Operating system metrics from the instance.</p>
-- * Color [String] <p>Represents the color indicator that gives you information about the health of the EC2 instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-- * HealthStatus [String] <p>Returns the health status of the specified instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-- * LaunchedAt [LaunchedAt] <p>The time at which the EC2 instance was launched.</p>
-- * InstanceType [String] <p>The instance's type.</p>
-- * Causes [Causes] <p>Represents the causes, which provide more information about the current health status.</p>
-- @return SingleInstanceHealth structure as a key-value pair table
function M.SingleInstanceHealth(args)
	assert(args, "You must provide an argument table when creating SingleInstanceHealth")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Deployment"] = args["Deployment"],
		["InstanceId"] = args["InstanceId"],
		["ApplicationMetrics"] = args["ApplicationMetrics"],
		["System"] = args["System"],
		["Color"] = args["Color"],
		["HealthStatus"] = args["HealthStatus"],
		["LaunchedAt"] = args["LaunchedAt"],
		["InstanceType"] = args["InstanceType"],
		["Causes"] = args["Causes"],
	}
	asserts.AssertSingleInstanceHealth(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationResourceLifecycleConfig = { ["VersionLifecycleConfig"] = true, ["ServiceRole"] = true, nil }

function asserts.AssertApplicationResourceLifecycleConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationResourceLifecycleConfig to be of type 'table'")
	if struct["VersionLifecycleConfig"] then asserts.AssertApplicationVersionLifecycleConfig(struct["VersionLifecycleConfig"]) end
	if struct["ServiceRole"] then asserts.AssertString(struct["ServiceRole"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationResourceLifecycleConfig[k], "ApplicationResourceLifecycleConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationResourceLifecycleConfig
-- <p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionLifecycleConfig [ApplicationVersionLifecycleConfig] <p>The application version lifecycle configuration.</p>
-- * ServiceRole [String] <p>The ARN of an IAM service role that Elastic Beanstalk has permission to assume.</p> <p>The <code>ServiceRole</code> property is required the first time that you provide a <code>VersionLifecycleConfig</code> for the application in one of the supporting calls (<code>CreateApplication</code> or <code>UpdateApplicationResourceLifecycle</code>). After you provide it once, in either one of the calls, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again in subsequent <code>UpdateApplicationResourceLifecycle</code> calls. You can, however, specify it in subsequent calls to change the Service Role to another value.</p>
-- @return ApplicationResourceLifecycleConfig structure as a key-value pair table
function M.ApplicationResourceLifecycleConfig(args)
	assert(args, "You must provide an argument table when creating ApplicationResourceLifecycleConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionLifecycleConfig"] = args["VersionLifecycleConfig"],
		["ServiceRole"] = args["ServiceRole"],
	}
	asserts.AssertApplicationResourceLifecycleConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Instance = { ["Id"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>The description of an Amazon EC2 instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the Amazon EC2 instance.</p>
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortEnvironmentUpdateMessage = { ["EnvironmentId"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertAbortEnvironmentUpdateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortEnvironmentUpdateMessage to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortEnvironmentUpdateMessage[k], "AbortEnvironmentUpdateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortEnvironmentUpdateMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>This specifies the ID of the environment with the in-progress update that you want to cancel.</p>
-- * EnvironmentName [EnvironmentName] <p>This specifies the name of the environment with the in-progress update that you want to cancel.</p>
-- @return AbortEnvironmentUpdateMessage structure as a key-value pair table
function M.AbortEnvironmentUpdateMessage(args)
	assert(args, "You must provide an argument table when creating AbortEnvironmentUpdateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertAbortEnvironmentUpdateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebuildEnvironmentMessage = { ["EnvironmentId"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertRebuildEnvironmentMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildEnvironmentMessage to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebuildEnvironmentMessage[k], "RebuildEnvironmentMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildEnvironmentMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment to rebuild.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to rebuild.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- @return RebuildEnvironmentMessage structure as a key-value pair table
function M.RebuildEnvironmentMessage(args)
	assert(args, "You must provide an argument table when creating RebuildEnvironmentMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertRebuildEnvironmentMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationSettingsValidationMessages = { ["Messages"] = true, nil }

function asserts.AssertConfigurationSettingsValidationMessages(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSettingsValidationMessages to be of type 'table'")
	if struct["Messages"] then asserts.AssertValidationMessagesList(struct["Messages"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSettingsValidationMessages[k], "ConfigurationSettingsValidationMessages contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSettingsValidationMessages
-- <p>Provides a list of validation messages.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Messages [ValidationMessagesList] <p> A list of <a>ValidationMessage</a>. </p>
-- @return ConfigurationSettingsValidationMessages structure as a key-value pair table
function M.ConfigurationSettingsValidationMessages(args)
	assert(args, "You must provide an argument table when creating ConfigurationSettingsValidationMessages")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Messages"] = args["Messages"],
	}
	asserts.AssertConfigurationSettingsValidationMessages(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountAttributesResult = { ["ResourceQuotas"] = true, nil }

function asserts.AssertDescribeAccountAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesResult to be of type 'table'")
	if struct["ResourceQuotas"] then asserts.AssertResourceQuotas(struct["ResourceQuotas"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesResult[k], "DescribeAccountAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceQuotas [ResourceQuotas] <p>The Elastic Beanstalk resource quotas associated with the calling AWS account.</p>
-- @return DescribeAccountAttributesResult structure as a key-value pair table
function M.DescribeAccountAttributesResult(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceQuotas"] = args["ResourceQuotas"],
	}
	asserts.AssertDescribeAccountAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePlatformVersionResult = { ["PlatformSummary"] = true, nil }

function asserts.AssertDeletePlatformVersionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlatformVersionResult to be of type 'table'")
	if struct["PlatformSummary"] then asserts.AssertPlatformSummary(struct["PlatformSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePlatformVersionResult[k], "DeletePlatformVersionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlatformVersionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformSummary [PlatformSummary] <p>Detailed information about the version of the custom platform.</p>
-- @return DeletePlatformVersionResult structure as a key-value pair table
function M.DeletePlatformVersionResult(args)
	assert(args, "You must provide an argument table when creating DeletePlatformVersionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformSummary"] = args["PlatformSummary"],
	}
	asserts.AssertDeletePlatformVersionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationVersionMessage = { ["ApplicationName"] = true, ["DeleteSourceBundle"] = true, ["VersionLabel"] = true, nil }

function asserts.AssertDeleteApplicationVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationVersionMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["VersionLabel"], "Expected key VersionLabel to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["DeleteSourceBundle"] then asserts.AssertDeleteSourceBundle(struct["DeleteSourceBundle"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationVersionMessage[k], "DeleteApplicationVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationVersionMessage
-- <p>Request to delete an application version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to which the version belongs.</p>
-- * DeleteSourceBundle [DeleteSourceBundle] <p>Set to <code>true</code> to delete the source bundle from your storage bucket. Otherwise, the application version is deleted only from Elastic Beanstalk and the source bundle remains in Amazon S3.</p>
-- * VersionLabel [VersionLabel] <p>The label of the version to delete.</p>
-- Required key: ApplicationName
-- Required key: VersionLabel
-- @return DeleteApplicationVersionMessage structure as a key-value pair table
function M.DeleteApplicationVersionMessage(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["DeleteSourceBundle"] = args["DeleteSourceBundle"],
		["VersionLabel"] = args["VersionLabel"],
	}
	asserts.AssertDeleteApplicationVersionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationMessage = { ["ApplicationName"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateApplicationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationMessage[k], "UpdateApplicationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationMessage
-- <p>Request to update an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to update. If no such application is found, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error. </p>
-- * Description [Description] <p>A new description for the application.</p> <p>Default: If not specified, AWS Elastic Beanstalk does not update the description.</p>
-- Required key: ApplicationName
-- @return UpdateApplicationMessage structure as a key-value pair table
function M.UpdateApplicationMessage(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateApplicationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidationMessage = { ["OptionName"] = true, ["Message"] = true, ["Namespace"] = true, ["Severity"] = true, nil }

function asserts.AssertValidationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationMessage to be of type 'table'")
	if struct["OptionName"] then asserts.AssertConfigurationOptionName(struct["OptionName"]) end
	if struct["Message"] then asserts.AssertValidationMessageString(struct["Message"]) end
	if struct["Namespace"] then asserts.AssertOptionNamespace(struct["Namespace"]) end
	if struct["Severity"] then asserts.AssertValidationSeverity(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationMessage[k], "ValidationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationMessage
-- <p>An error or warning for a desired configuration option value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionName [ConfigurationOptionName] <p>The name of the option.</p>
-- * Message [ValidationMessageString] <p>A message describing the error or warning.</p>
-- * Namespace [OptionNamespace] <p>The namespace to which the option belongs.</p>
-- * Severity [ValidationSeverity] <p>An indication of the severity of this message:</p> <ul> <li> <p> <code>error</code>: This message indicates that this is not a valid setting for an option.</p> </li> <li> <p> <code>warning</code>: This message is providing information you should take into account.</p> </li> </ul>
-- @return ValidationMessage structure as a key-value pair table
function M.ValidationMessage(args)
	assert(args, "You must provide an argument table when creating ValidationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionName"] = args["OptionName"],
		["Message"] = args["Message"],
		["Namespace"] = args["Namespace"],
		["Severity"] = args["Severity"],
	}
	asserts.AssertValidationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceMessage = { ["ResourceArn"] = true, nil }

function asserts.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceMessage[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p> <p>Must be the ARN of an Elastic Beanstalk environment.</p>
-- Required key: ResourceArn
-- @return ListTagsForResourceMessage structure as a key-value pair table
function M.ListTagsForResourceMessage(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertListTagsForResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplyEnvironmentManagedActionResult = { ["Status"] = true, ["ActionType"] = true, ["ActionId"] = true, ["ActionDescription"] = true, nil }

function asserts.AssertApplyEnvironmentManagedActionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyEnvironmentManagedActionResult to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ActionType"] then asserts.AssertActionType(struct["ActionType"]) end
	if struct["ActionId"] then asserts.AssertString(struct["ActionId"]) end
	if struct["ActionDescription"] then asserts.AssertString(struct["ActionDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyEnvironmentManagedActionResult[k], "ApplyEnvironmentManagedActionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyEnvironmentManagedActionResult
-- <p>The result message containing information about the managed action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the managed action.</p>
-- * ActionType [ActionType] <p>The type of managed action.</p>
-- * ActionId [String] <p>The action ID of the managed action.</p>
-- * ActionDescription [String] <p>A description of the managed action.</p>
-- @return ApplyEnvironmentManagedActionResult structure as a key-value pair table
function M.ApplyEnvironmentManagedActionResult(args)
	assert(args, "You must provide an argument table when creating ApplyEnvironmentManagedActionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ActionType"] = args["ActionType"],
		["ActionId"] = args["ActionId"],
		["ActionDescription"] = args["ActionDescription"],
	}
	asserts.AssertApplyEnvironmentManagedActionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationDescription = { ["ApplicationName"] = true, ["Description"] = true, ["Versions"] = true, ["DateCreated"] = true, ["ConfigurationTemplates"] = true, ["DateUpdated"] = true, ["ResourceLifecycleConfig"] = true, ["ApplicationArn"] = true, nil }

function asserts.AssertApplicationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDescription to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Versions"] then asserts.AssertVersionLabelsList(struct["Versions"]) end
	if struct["DateCreated"] then asserts.AssertCreationDate(struct["DateCreated"]) end
	if struct["ConfigurationTemplates"] then asserts.AssertConfigurationTemplateNamesList(struct["ConfigurationTemplates"]) end
	if struct["DateUpdated"] then asserts.AssertUpdateDate(struct["DateUpdated"]) end
	if struct["ResourceLifecycleConfig"] then asserts.AssertApplicationResourceLifecycleConfig(struct["ResourceLifecycleConfig"]) end
	if struct["ApplicationArn"] then asserts.AssertApplicationArn(struct["ApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationDescription[k], "ApplicationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDescription
-- <p>Describes the properties of an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application.</p>
-- * Description [Description] <p>User-defined description of the application.</p>
-- * Versions [VersionLabelsList] <p>The names of the versions for this application.</p>
-- * DateCreated [CreationDate] <p>The date when the application was created.</p>
-- * ConfigurationTemplates [ConfigurationTemplateNamesList] <p>The names of the configuration templates associated with this application.</p>
-- * DateUpdated [UpdateDate] <p>The date when the application was last modified.</p>
-- * ResourceLifecycleConfig [ApplicationResourceLifecycleConfig] <p>The lifecycle settings for the application.</p>
-- * ApplicationArn [ApplicationArn] <p>The Amazon Resource Name (ARN) of the application.</p>
-- @return ApplicationDescription structure as a key-value pair table
function M.ApplicationDescription(args)
	assert(args, "You must provide an argument table when creating ApplicationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["Description"] = args["Description"],
		["Versions"] = args["Versions"],
		["DateCreated"] = args["DateCreated"],
		["ConfigurationTemplates"] = args["ConfigurationTemplates"],
		["DateUpdated"] = args["DateUpdated"],
		["ResourceLifecycleConfig"] = args["ResourceLifecycleConfig"],
		["ApplicationArn"] = args["ApplicationArn"],
	}
	asserts.AssertApplicationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomAmi = { ["VirtualizationType"] = true, ["ImageId"] = true, nil }

function asserts.AssertCustomAmi(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomAmi to be of type 'table'")
	if struct["VirtualizationType"] then asserts.AssertVirtualizationType(struct["VirtualizationType"]) end
	if struct["ImageId"] then asserts.AssertImageId(struct["ImageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomAmi[k], "CustomAmi contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomAmi
-- <p>A custom AMI available to platforms.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VirtualizationType [VirtualizationType] <p>The type of virtualization used to create the custom AMI.</p>
-- * ImageId [ImageId] <p>THe ID of the image used to create the custom AMI.</p>
-- @return CustomAmi structure as a key-value pair table
function M.CustomAmi(args)
	assert(args, "You must provide an argument table when creating CustomAmi")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VirtualizationType"] = args["VirtualizationType"],
		["ImageId"] = args["ImageId"],
	}
	asserts.AssertCustomAmi(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchConfiguration = { ["Name"] = true, nil }

function asserts.AssertLaunchConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchConfiguration to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceId(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchConfiguration[k], "LaunchConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchConfiguration
-- <p>Describes an Auto Scaling launch configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceId] <p>The name of the launch configuration.</p>
-- @return LaunchConfiguration structure as a key-value pair table
function M.LaunchConfiguration(args)
	assert(args, "You must provide an argument table when creating LaunchConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertLaunchConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentManagedActionHistoryResult = { ["NextToken"] = true, ["ManagedActionHistoryItems"] = true, nil }

function asserts.AssertDescribeEnvironmentManagedActionHistoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentManagedActionHistoryResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ManagedActionHistoryItems"] then asserts.AssertManagedActionHistoryItems(struct["ManagedActionHistoryItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentManagedActionHistoryResult[k], "DescribeEnvironmentManagedActionHistoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentManagedActionHistoryResult
-- <p>A result message containing a list of completed and failed managed actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>A pagination token that you pass to <a>DescribeEnvironmentManagedActionHistory</a> to get the next page of results.</p>
-- * ManagedActionHistoryItems [ManagedActionHistoryItems] <p>A list of completed and failed managed actions.</p>
-- @return DescribeEnvironmentManagedActionHistoryResult structure as a key-value pair table
function M.DescribeEnvironmentManagedActionHistoryResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentManagedActionHistoryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ManagedActionHistoryItems"] = args["ManagedActionHistoryItems"],
	}
	asserts.AssertDescribeEnvironmentManagedActionHistoryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeApplicationsMessage = { ["ApplicationNames"] = true, nil }

function asserts.AssertDescribeApplicationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationsMessage to be of type 'table'")
	if struct["ApplicationNames"] then asserts.AssertApplicationNamesList(struct["ApplicationNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationsMessage[k], "DescribeApplicationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationsMessage
-- <p>Request to describe one or more applications.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationNames [ApplicationNamesList] <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include those with the specified names.</p>
-- @return DescribeApplicationsMessage structure as a key-value pair table
function M.DescribeApplicationsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeApplicationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationNames"] = args["ApplicationNames"],
	}
	asserts.AssertDescribeApplicationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApplicationMessage = { ["ApplicationName"] = true, ["TerminateEnvByForce"] = true, nil }

function asserts.AssertDeleteApplicationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["TerminateEnvByForce"] then asserts.AssertTerminateEnvForce(struct["TerminateEnvByForce"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationMessage[k], "DeleteApplicationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationMessage
-- <p>Request to delete an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to delete.</p>
-- * TerminateEnvByForce [TerminateEnvForce] <p>When set to true, running environments will be terminated before deleting the application.</p>
-- Required key: ApplicationName
-- @return DeleteApplicationMessage structure as a key-value pair table
function M.DeleteApplicationMessage(args)
	assert(args, "You must provide an argument table when creating DeleteApplicationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["TerminateEnvByForce"] = args["TerminateEnvByForce"],
	}
	asserts.AssertDeleteApplicationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MaxCountRule = { ["DeleteSourceFromS3"] = true, ["Enabled"] = true, ["MaxCount"] = true, nil }

function asserts.AssertMaxCountRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxCountRule to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["DeleteSourceFromS3"] then asserts.AssertBoxedBoolean(struct["DeleteSourceFromS3"]) end
	if struct["Enabled"] then asserts.AssertBoxedBoolean(struct["Enabled"]) end
	if struct["MaxCount"] then asserts.AssertBoxedInt(struct["MaxCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaxCountRule[k], "MaxCountRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxCountRule
-- <p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeleteSourceFromS3 [BoxedBoolean] <p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.</p>
-- * Enabled [BoxedBoolean] <p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable it.</p>
-- * MaxCount [BoxedInt] <p>Specify the maximum number of application versions to retain.</p>
-- Required key: Enabled
-- @return MaxCountRule structure as a key-value pair table
function M.MaxCountRule(args)
	assert(args, "You must provide an argument table when creating MaxCountRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeleteSourceFromS3"] = args["DeleteSourceFromS3"],
		["Enabled"] = args["Enabled"],
		["MaxCount"] = args["MaxCount"],
	}
	asserts.AssertMaxCountRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlatformVersionsRequest = { ["MaxRecords"] = true, ["NextToken"] = true, ["Filters"] = true, nil }

function asserts.AssertListPlatformVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformVersionsRequest to be of type 'table'")
	if struct["MaxRecords"] then asserts.AssertPlatformMaxRecords(struct["MaxRecords"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertPlatformFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlatformVersionsRequest[k], "ListPlatformVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRecords [PlatformMaxRecords] <p>The maximum number of platform values returned in one call.</p>
-- * NextToken [Token] <p>The starting index into the remaining list of platforms. Use the <code>NextToken</code> value from a previous <code>ListPlatformVersion</code> call.</p>
-- * Filters [PlatformFilters] <p>List only the platforms where the platform member value relates to one of the supplied values.</p>
-- @return ListPlatformVersionsRequest structure as a key-value pair table
function M.ListPlatformVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListPlatformVersionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRecords"] = args["MaxRecords"],
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListPlatformVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComposeEnvironmentsMessage = { ["ApplicationName"] = true, ["GroupName"] = true, ["VersionLabels"] = true, nil }

function asserts.AssertComposeEnvironmentsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComposeEnvironmentsMessage to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["VersionLabels"] then asserts.AssertVersionLabels(struct["VersionLabels"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComposeEnvironmentsMessage[k], "ComposeEnvironmentsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComposeEnvironmentsMessage
-- <p>Request to create or update a group of environments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to which the specified source bundles belong.</p>
-- * GroupName [GroupName] <p>The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-- * VersionLabels [VersionLabels] <p>A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.</p>
-- @return ComposeEnvironmentsMessage structure as a key-value pair table
function M.ComposeEnvironmentsMessage(args)
	assert(args, "You must provide an argument table when creating ComposeEnvironmentsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["GroupName"] = args["GroupName"],
		["VersionLabels"] = args["VersionLabels"],
	}
	asserts.AssertComposeEnvironmentsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationSettingsDescription = { ["ApplicationName"] = true, ["PlatformArn"] = true, ["Description"] = true, ["TemplateName"] = true, ["DeploymentStatus"] = true, ["SolutionStackName"] = true, ["OptionSettings"] = true, ["DateUpdated"] = true, ["DateCreated"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertConfigurationSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSettingsDescription to be of type 'table'")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	if struct["DeploymentStatus"] then asserts.AssertConfigurationDeploymentStatus(struct["DeploymentStatus"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["DateUpdated"] then asserts.AssertUpdateDate(struct["DateUpdated"]) end
	if struct["DateCreated"] then asserts.AssertCreationDate(struct["DateCreated"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSettingsDescription[k], "ConfigurationSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSettingsDescription
-- <p>Describes the settings for a configuration set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with this configuration set.</p>
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * Description [Description] <p>Describes this configuration set.</p>
-- * TemplateName [ConfigurationTemplateName] <p> If not <code>null</code>, the name of the configuration template for this configuration set. </p>
-- * DeploymentStatus [ConfigurationDeploymentStatus] <p> If this configuration set is associated with an environment, the <code>DeploymentStatus</code> parameter indicates the deployment status of this configuration set: </p> <ul> <li> <p> <code>null</code>: This configuration is not associated with a running environment.</p> </li> <li> <p> <code>pending</code>: This is a draft configuration that is not deployed to the associated environment but is in the process of deploying.</p> </li> <li> <p> <code>deployed</code>: This is the configuration that is currently deployed to the associated running environment.</p> </li> <li> <p> <code>failed</code>: This is a draft configuration that failed to successfully deploy.</p> </li> </ul>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack this configuration set uses.</p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>A list of the configuration options and their values in this configuration set.</p>
-- * DateUpdated [UpdateDate] <p>The date (in UTC time) when this configuration set was last modified.</p>
-- * DateCreated [CreationDate] <p>The date (in UTC time) when this configuration set was created.</p>
-- * EnvironmentName [EnvironmentName] <p> If not <code>null</code>, the name of the environment for this configuration set. </p>
-- @return ConfigurationSettingsDescription structure as a key-value pair table
function M.ConfigurationSettingsDescription(args)
	assert(args, "You must provide an argument table when creating ConfigurationSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["PlatformArn"] = args["PlatformArn"],
		["Description"] = args["Description"],
		["TemplateName"] = args["TemplateName"],
		["DeploymentStatus"] = args["DeploymentStatus"],
		["SolutionStackName"] = args["SolutionStackName"],
		["OptionSettings"] = args["OptionSettings"],
		["DateUpdated"] = args["DateUpdated"],
		["DateCreated"] = args["DateCreated"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertConfigurationSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePlatformVersionRequest = { ["PlatformArn"] = true, nil }

function asserts.AssertDescribePlatformVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlatformVersionRequest to be of type 'table'")
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlatformVersionRequest[k], "DescribePlatformVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlatformVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformArn [PlatformArn] <p>The ARN of the version of the platform.</p>
-- @return DescribePlatformVersionRequest structure as a key-value pair table
function M.DescribePlatformVersionRequest(args)
	assert(args, "You must provide an argument table when creating DescribePlatformVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformArn"] = args["PlatformArn"],
	}
	asserts.AssertDescribePlatformVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTagsDescriptionMessage = { ["ResourceArn"] = true, ["ResourceTags"] = true, nil }

function asserts.AssertResourceTagsDescriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTagsDescriptionMessage to be of type 'table'")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["ResourceTags"] then asserts.AssertTagList(struct["ResourceTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTagsDescriptionMessage[k], "ResourceTagsDescriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTagsDescriptionMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resouce for which a tag list was requested.</p>
-- * ResourceTags [TagList] <p>A list of tag key-value pairs.</p>
-- @return ResourceTagsDescriptionMessage structure as a key-value pair table
function M.ResourceTagsDescriptionMessage(args)
	assert(args, "You must provide an argument table when creating ResourceTagsDescriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["ResourceTags"] = args["ResourceTags"],
	}
	asserts.AssertResourceTagsDescriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ManagedActionHistoryItem = { ["Status"] = true, ["FinishedTime"] = true, ["ExecutedTime"] = true, ["ActionDescription"] = true, ["FailureType"] = true, ["FailureDescription"] = true, ["ActionType"] = true, ["ActionId"] = true, nil }

function asserts.AssertManagedActionHistoryItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ManagedActionHistoryItem to be of type 'table'")
	if struct["Status"] then asserts.AssertActionHistoryStatus(struct["Status"]) end
	if struct["FinishedTime"] then asserts.AssertTimestamp(struct["FinishedTime"]) end
	if struct["ExecutedTime"] then asserts.AssertTimestamp(struct["ExecutedTime"]) end
	if struct["ActionDescription"] then asserts.AssertString(struct["ActionDescription"]) end
	if struct["FailureType"] then asserts.AssertFailureType(struct["FailureType"]) end
	if struct["FailureDescription"] then asserts.AssertString(struct["FailureDescription"]) end
	if struct["ActionType"] then asserts.AssertActionType(struct["ActionType"]) end
	if struct["ActionId"] then asserts.AssertString(struct["ActionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ManagedActionHistoryItem[k], "ManagedActionHistoryItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ManagedActionHistoryItem
-- <p>The record of a completed or failed managed action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ActionHistoryStatus] <p>The status of the action.</p>
-- * FinishedTime [Timestamp] <p>The date and time that the action finished executing.</p>
-- * ExecutedTime [Timestamp] <p>The date and time that the action started executing.</p>
-- * ActionDescription [String] <p>A description of the managed action.</p>
-- * FailureType [FailureType] <p>If the action failed, the type of failure.</p>
-- * FailureDescription [String] <p>If the action failed, a description of the failure.</p>
-- * ActionType [ActionType] <p>The type of the managed action.</p>
-- * ActionId [String] <p>A unique identifier for the managed action.</p>
-- @return ManagedActionHistoryItem structure as a key-value pair table
function M.ManagedActionHistoryItem(args)
	assert(args, "You must provide an argument table when creating ManagedActionHistoryItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["FinishedTime"] = args["FinishedTime"],
		["ExecutedTime"] = args["ExecutedTime"],
		["ActionDescription"] = args["ActionDescription"],
		["FailureType"] = args["FailureType"],
		["FailureDescription"] = args["FailureDescription"],
		["ActionType"] = args["ActionType"],
		["ActionId"] = args["ActionId"],
	}
	asserts.AssertManagedActionHistoryItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Latency = { ["P99"] = true, ["P75"] = true, ["P90"] = true, ["P95"] = true, ["P85"] = true, ["P10"] = true, ["P999"] = true, ["P50"] = true, nil }

function asserts.AssertLatency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Latency to be of type 'table'")
	if struct["P99"] then asserts.AssertNullableDouble(struct["P99"]) end
	if struct["P75"] then asserts.AssertNullableDouble(struct["P75"]) end
	if struct["P90"] then asserts.AssertNullableDouble(struct["P90"]) end
	if struct["P95"] then asserts.AssertNullableDouble(struct["P95"]) end
	if struct["P85"] then asserts.AssertNullableDouble(struct["P85"]) end
	if struct["P10"] then asserts.AssertNullableDouble(struct["P10"]) end
	if struct["P999"] then asserts.AssertNullableDouble(struct["P999"]) end
	if struct["P50"] then asserts.AssertNullableDouble(struct["P50"]) end
	for k,_ in pairs(struct) do
		assert(keys.Latency[k], "Latency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Latency
-- <p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * P99 [NullableDouble] <p>The average latency for the slowest 1 percent of requests over the last 10 seconds.</p>
-- * P75 [NullableDouble] <p>The average latency for the slowest 25 percent of requests over the last 10 seconds.</p>
-- * P90 [NullableDouble] <p>The average latency for the slowest 10 percent of requests over the last 10 seconds.</p>
-- * P95 [NullableDouble] <p>The average latency for the slowest 5 percent of requests over the last 10 seconds.</p>
-- * P85 [NullableDouble] <p>The average latency for the slowest 15 percent of requests over the last 10 seconds.</p>
-- * P10 [NullableDouble] <p>The average latency for the slowest 90 percent of requests over the last 10 seconds.</p>
-- * P999 [NullableDouble] <p>The average latency for the slowest 0.1 percent of requests over the last 10 seconds.</p>
-- * P50 [NullableDouble] <p>The average latency for the slowest 50 percent of requests over the last 10 seconds.</p>
-- @return Latency structure as a key-value pair table
function M.Latency(args)
	assert(args, "You must provide an argument table when creating Latency")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["P99"] = args["P99"],
		["P75"] = args["P75"],
		["P90"] = args["P90"],
		["P95"] = args["P95"],
		["P85"] = args["P85"],
		["P10"] = args["P10"],
		["P999"] = args["P999"],
		["P50"] = args["P50"],
	}
	asserts.AssertLatency(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationSettingsMessage = { ["ApplicationName"] = true, ["EnvironmentName"] = true, ["TemplateName"] = true, nil }

function asserts.AssertDescribeConfigurationSettingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSettingsMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationSettingsMessage[k], "DescribeConfigurationSettingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSettingsMessage
-- <p>Result message containing all of the configuration settings for a specified solution stack or configuration template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The application for the environment or configuration template.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to describe.</p> <p> Condition: You must specify either this or a TemplateName, but not both. If you specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template to describe.</p> <p> Conditional: You must specify either this parameter or an EnvironmentName, but not both. If you specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>
-- Required key: ApplicationName
-- @return DescribeConfigurationSettingsMessage structure as a key-value pair table
function M.DescribeConfigurationSettingsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationSettingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["EnvironmentName"] = args["EnvironmentName"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertDescribeConfigurationSettingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationTemplateMessage = { ["ApplicationName"] = true, ["OptionSettings"] = true, ["OptionsToRemove"] = true, ["Description"] = true, ["TemplateName"] = true, nil }

function asserts.AssertUpdateConfigurationTemplateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationTemplateMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["OptionSettings"] then asserts.AssertConfigurationOptionSettingsList(struct["OptionSettings"]) end
	if struct["OptionsToRemove"] then asserts.AssertOptionsSpecifierList(struct["OptionsToRemove"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationTemplateMessage[k], "UpdateConfigurationTemplateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationTemplateMessage
-- <p>The result message containing the options for the specified solution stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with the configuration template to update.</p> <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code> error. </p>
-- * OptionSettings [ConfigurationOptionSettingsList] <p>A list of configuration option settings to update with the new specified option value.</p>
-- * OptionsToRemove [OptionsSpecifierList] <p>A list of configuration options to remove from the configuration set.</p> <p> Constraint: You can remove only <code>UserDefined</code> configuration options. </p>
-- * Description [Description] <p>A new description for the configuration.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template to update.</p> <p> If no configuration template is found with this name, <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code> error. </p>
-- Required key: ApplicationName
-- Required key: TemplateName
-- @return UpdateConfigurationTemplateMessage structure as a key-value pair table
function M.UpdateConfigurationTemplateMessage(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationTemplateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["OptionSettings"] = args["OptionSettings"],
		["OptionsToRemove"] = args["OptionsToRemove"],
		["Description"] = args["Description"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertUpdateConfigurationTemplateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestartAppServerMessage = { ["EnvironmentId"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertRestartAppServerMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestartAppServerMessage to be of type 'table'")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestartAppServerMessage[k], "RestartAppServerMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestartAppServerMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment to restart the server for.</p> <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment to restart the server for.</p> <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- @return RestartAppServerMessage structure as a key-value pair table
function M.RestartAppServerMessage(args)
	assert(args, "You must provide an argument table when creating RestartAppServerMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertRestartAppServerMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SwapEnvironmentCNAMEsMessage = { ["DestinationEnvironmentName"] = true, ["DestinationEnvironmentId"] = true, ["SourceEnvironmentName"] = true, ["SourceEnvironmentId"] = true, nil }

function asserts.AssertSwapEnvironmentCNAMEsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SwapEnvironmentCNAMEsMessage to be of type 'table'")
	if struct["DestinationEnvironmentName"] then asserts.AssertEnvironmentName(struct["DestinationEnvironmentName"]) end
	if struct["DestinationEnvironmentId"] then asserts.AssertEnvironmentId(struct["DestinationEnvironmentId"]) end
	if struct["SourceEnvironmentName"] then asserts.AssertEnvironmentName(struct["SourceEnvironmentName"]) end
	if struct["SourceEnvironmentId"] then asserts.AssertEnvironmentId(struct["SourceEnvironmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SwapEnvironmentCNAMEsMessage[k], "SwapEnvironmentCNAMEsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SwapEnvironmentCNAMEsMessage
-- <p>Swaps the CNAMEs of two environments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationEnvironmentName [EnvironmentName] <p>The name of the destination environment.</p> <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>. </p>
-- * DestinationEnvironmentId [EnvironmentId] <p>The ID of the destination environment.</p> <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>
-- * SourceEnvironmentName [EnvironmentName] <p>The name of the source environment.</p> <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the <code>SourceEnvironmentName</code>. You may also specify both. If you specify the <code>SourceEnvironmentName</code>, you must specify the <code>DestinationEnvironmentName</code>. </p>
-- * SourceEnvironmentId [EnvironmentId] <p>The ID of the source environment.</p> <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the <code>SourceEnvironmentName</code>. You may also specify both. If you specify the <code>SourceEnvironmentId</code>, you must specify the <code>DestinationEnvironmentId</code>. </p>
-- @return SwapEnvironmentCNAMEsMessage structure as a key-value pair table
function M.SwapEnvironmentCNAMEsMessage(args)
	assert(args, "You must provide an argument table when creating SwapEnvironmentCNAMEsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationEnvironmentName"] = args["DestinationEnvironmentName"],
		["DestinationEnvironmentId"] = args["DestinationEnvironmentId"],
		["SourceEnvironmentName"] = args["SourceEnvironmentName"],
		["SourceEnvironmentId"] = args["SourceEnvironmentId"],
	}
	asserts.AssertSwapEnvironmentCNAMEsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInstancesHealthRequest = { ["EnvironmentName"] = true, ["NextToken"] = true, ["AttributeNames"] = true, ["EnvironmentId"] = true, nil }

function asserts.AssertDescribeInstancesHealthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesHealthRequest to be of type 'table'")
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["AttributeNames"] then asserts.AssertInstancesHealthAttributes(struct["AttributeNames"]) end
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesHealthRequest[k], "DescribeInstancesHealthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesHealthRequest
-- <p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentName [EnvironmentName] <p>Specify the AWS Elastic Beanstalk environment by name.</p>
-- * NextToken [NextToken] <p>Specify the pagination token returned by a previous call.</p>
-- * AttributeNames [InstancesHealthAttributes] <p>Specifies the response elements you wish to receive. To retrieve all attributes, set to <code>All</code>. If no attribute names are specified, returns a list of instances.</p>
-- * EnvironmentId [EnvironmentId] <p>Specify the AWS Elastic Beanstalk environment by ID.</p>
-- @return DescribeInstancesHealthRequest structure as a key-value pair table
function M.DescribeInstancesHealthRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInstancesHealthRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentName"] = args["EnvironmentName"],
		["NextToken"] = args["NextToken"],
		["AttributeNames"] = args["AttributeNames"],
		["EnvironmentId"] = args["EnvironmentId"],
	}
	asserts.AssertDescribeInstancesHealthRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentLink = { ["LinkName"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertEnvironmentLink(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentLink to be of type 'table'")
	if struct["LinkName"] then asserts.AssertString(struct["LinkName"]) end
	if struct["EnvironmentName"] then asserts.AssertString(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentLink[k], "EnvironmentLink contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentLink
-- <p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LinkName [String] <p>The name of the link.</p>
-- * EnvironmentName [String] <p>The name of the linked environment (the dependency).</p>
-- @return EnvironmentLink structure as a key-value pair table
function M.EnvironmentLink(args)
	assert(args, "You must provide an argument table when creating EnvironmentLink")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LinkName"] = args["LinkName"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertEnvironmentLink(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetrieveEnvironmentInfoResultMessage = { ["EnvironmentInfo"] = true, nil }

function asserts.AssertRetrieveEnvironmentInfoResultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveEnvironmentInfoResultMessage to be of type 'table'")
	if struct["EnvironmentInfo"] then asserts.AssertEnvironmentInfoDescriptionList(struct["EnvironmentInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveEnvironmentInfoResultMessage[k], "RetrieveEnvironmentInfoResultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveEnvironmentInfoResultMessage
-- <p>Result message containing a description of the requested environment info.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentInfo [EnvironmentInfoDescriptionList] <p> The <a>EnvironmentInfoDescription</a> of the environment. </p>
-- @return RetrieveEnvironmentInfoResultMessage structure as a key-value pair table
function M.RetrieveEnvironmentInfoResultMessage(args)
	assert(args, "You must provide an argument table when creating RetrieveEnvironmentInfoResultMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentInfo"] = args["EnvironmentInfo"],
	}
	asserts.AssertRetrieveEnvironmentInfoResultMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationVersionMessage = { ["ApplicationName"] = true, ["VersionLabel"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateApplicationVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationVersionMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["VersionLabel"], "Expected key VersionLabel to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["VersionLabel"] then asserts.AssertVersionLabel(struct["VersionLabel"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationVersionMessage[k], "UpdateApplicationVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationVersionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application associated with this version.</p> <p> If no application is found with this name, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.</p>
-- * VersionLabel [VersionLabel] <p>The name of the version to update.</p> <p>If no application version is found with this label, <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error. </p>
-- * Description [Description] <p>A new description for this version.</p>
-- Required key: ApplicationName
-- Required key: VersionLabel
-- @return UpdateApplicationVersionMessage structure as a key-value pair table
function M.UpdateApplicationVersionMessage(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["VersionLabel"] = args["VersionLabel"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateApplicationVersionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentResourcesDescription = { ["LoadBalancer"] = true, nil }

function asserts.AssertEnvironmentResourcesDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResourcesDescription to be of type 'table'")
	if struct["LoadBalancer"] then asserts.AssertLoadBalancerDescription(struct["LoadBalancer"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentResourcesDescription[k], "EnvironmentResourcesDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResourcesDescription
-- <p>Describes the AWS resources in use by this environment. This data is not live data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBalancer [LoadBalancerDescription] <p>Describes the LoadBalancer.</p>
-- @return EnvironmentResourcesDescription structure as a key-value pair table
function M.EnvironmentResourcesDescription(args)
	assert(args, "You must provide an argument table when creating EnvironmentResourcesDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBalancer"] = args["LoadBalancer"],
	}
	asserts.AssertEnvironmentResourcesDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionRestrictionRegex = { ["Pattern"] = true, ["Label"] = true, nil }

function asserts.AssertOptionRestrictionRegex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionRestrictionRegex to be of type 'table'")
	if struct["Pattern"] then asserts.AssertRegexPattern(struct["Pattern"]) end
	if struct["Label"] then asserts.AssertRegexLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionRestrictionRegex[k], "OptionRestrictionRegex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionRestrictionRegex
-- <p>A regular expression representing a restriction on a string configuration option value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pattern [RegexPattern] <p>The regular expression pattern that a string configuration option value with this restriction must match.</p>
-- * Label [RegexLabel] <p>A unique name representing this regular expression.</p>
-- @return OptionRestrictionRegex structure as a key-value pair table
function M.OptionRestrictionRegex(args)
	assert(args, "You must provide an argument table when creating OptionRestrictionRegex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pattern"] = args["Pattern"],
		["Label"] = args["Label"],
	}
	asserts.AssertOptionRestrictionRegex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlatformProgrammingLanguage = { ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertPlatformProgrammingLanguage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformProgrammingLanguage to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformProgrammingLanguage[k], "PlatformProgrammingLanguage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformProgrammingLanguage
-- <p>A programming language supported by the platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The version of the programming language.</p>
-- * Name [String] <p>The name of the programming language.</p>
-- @return PlatformProgrammingLanguage structure as a key-value pair table
function M.PlatformProgrammingLanguage(args)
	assert(args, "You must provide an argument table when creating PlatformProgrammingLanguage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Name"] = args["Name"],
	}
	asserts.AssertPlatformProgrammingLanguage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationDescriptionMessage = { ["Application"] = true, nil }

function asserts.AssertApplicationDescriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDescriptionMessage to be of type 'table'")
	if struct["Application"] then asserts.AssertApplicationDescription(struct["Application"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationDescriptionMessage[k], "ApplicationDescriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDescriptionMessage
-- <p>Result message containing a single description of an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Application [ApplicationDescription] <p> The <a>ApplicationDescription</a> of the application. </p>
-- @return ApplicationDescriptionMessage structure as a key-value pair table
function M.ApplicationDescriptionMessage(args)
	assert(args, "You must provide an argument table when creating ApplicationDescriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Application"] = args["Application"],
	}
	asserts.AssertApplicationDescriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlatformSummary = { ["PlatformArn"] = true, ["PlatformStatus"] = true, ["SupportedAddonList"] = true, ["OperatingSystemName"] = true, ["PlatformCategory"] = true, ["PlatformOwner"] = true, ["OperatingSystemVersion"] = true, ["SupportedTierList"] = true, nil }

function asserts.AssertPlatformSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformSummary to be of type 'table'")
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["PlatformStatus"] then asserts.AssertPlatformStatus(struct["PlatformStatus"]) end
	if struct["SupportedAddonList"] then asserts.AssertSupportedAddonList(struct["SupportedAddonList"]) end
	if struct["OperatingSystemName"] then asserts.AssertOperatingSystemName(struct["OperatingSystemName"]) end
	if struct["PlatformCategory"] then asserts.AssertPlatformCategory(struct["PlatformCategory"]) end
	if struct["PlatformOwner"] then asserts.AssertPlatformOwner(struct["PlatformOwner"]) end
	if struct["OperatingSystemVersion"] then asserts.AssertOperatingSystemVersion(struct["OperatingSystemVersion"]) end
	if struct["SupportedTierList"] then asserts.AssertSupportedTierList(struct["SupportedTierList"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformSummary[k], "PlatformSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformSummary
-- <p>Detailed information about a platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * PlatformStatus [PlatformStatus] <p>The status of the platform. You can create an environment from the platform once it is ready.</p>
-- * SupportedAddonList [SupportedAddonList] <p>The additions associated with the platform.</p>
-- * OperatingSystemName [OperatingSystemName] <p>The operating system used by the platform.</p>
-- * PlatformCategory [PlatformCategory] <p>The category of platform.</p>
-- * PlatformOwner [PlatformOwner] <p>The AWS account ID of the person who created the platform.</p>
-- * OperatingSystemVersion [OperatingSystemVersion] <p>The version of the operating system used by the platform.</p>
-- * SupportedTierList [SupportedTierList] <p>The tiers in which the platform runs.</p>
-- @return PlatformSummary structure as a key-value pair table
function M.PlatformSummary(args)
	assert(args, "You must provide an argument table when creating PlatformSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformArn"] = args["PlatformArn"],
		["PlatformStatus"] = args["PlatformStatus"],
		["SupportedAddonList"] = args["SupportedAddonList"],
		["OperatingSystemName"] = args["OperatingSystemName"],
		["PlatformCategory"] = args["PlatformCategory"],
		["PlatformOwner"] = args["PlatformOwner"],
		["OperatingSystemVersion"] = args["OperatingSystemVersion"],
		["SupportedTierList"] = args["SupportedTierList"],
	}
	asserts.AssertPlatformSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePlatformVersionResult = { ["PlatformSummary"] = true, ["Builder"] = true, nil }

function asserts.AssertCreatePlatformVersionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformVersionResult to be of type 'table'")
	if struct["PlatformSummary"] then asserts.AssertPlatformSummary(struct["PlatformSummary"]) end
	if struct["Builder"] then asserts.AssertBuilder(struct["Builder"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlatformVersionResult[k], "CreatePlatformVersionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformVersionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformSummary [PlatformSummary] <p>Detailed information about the new version of the custom platform.</p>
-- * Builder [Builder] <p>The builder used to create the custom platform.</p>
-- @return CreatePlatformVersionResult structure as a key-value pair table
function M.CreatePlatformVersionResult(args)
	assert(args, "You must provide an argument table when creating CreatePlatformVersionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformSummary"] = args["PlatformSummary"],
		["Builder"] = args["Builder"],
	}
	asserts.AssertCreatePlatformVersionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationOptionSetting = { ["OptionName"] = true, ["ResourceName"] = true, ["Namespace"] = true, ["Value"] = true, nil }

function asserts.AssertConfigurationOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationOptionSetting to be of type 'table'")
	if struct["OptionName"] then asserts.AssertConfigurationOptionName(struct["OptionName"]) end
	if struct["ResourceName"] then asserts.AssertResourceName(struct["ResourceName"]) end
	if struct["Namespace"] then asserts.AssertOptionNamespace(struct["Namespace"]) end
	if struct["Value"] then asserts.AssertConfigurationOptionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationOptionSetting[k], "ConfigurationOptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationOptionSetting
-- <p> A specification identifying an individual configuration option along with its current value. For a list of possible option values, go to <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionName [ConfigurationOptionName] <p>The name of the configuration option.</p>
-- * ResourceName [ResourceName] <p>A unique resource name for a time-based scaling configuration option.</p>
-- * Namespace [OptionNamespace] <p>A unique namespace identifying the option's associated AWS resource.</p>
-- * Value [ConfigurationOptionValue] <p>The current value for the configuration option.</p>
-- @return ConfigurationOptionSetting structure as a key-value pair table
function M.ConfigurationOptionSetting(args)
	assert(args, "You must provide an argument table when creating ConfigurationOptionSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionName"] = args["OptionName"],
		["ResourceName"] = args["ResourceName"],
		["Namespace"] = args["Namespace"],
		["Value"] = args["Value"],
	}
	asserts.AssertConfigurationOptionSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Deployment = { ["Status"] = true, ["VersionLabel"] = true, ["DeploymentTime"] = true, ["DeploymentId"] = true, nil }

function asserts.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["VersionLabel"] then asserts.AssertString(struct["VersionLabel"]) end
	if struct["DeploymentTime"] then asserts.AssertDeploymentTimestamp(struct["DeploymentTime"]) end
	if struct["DeploymentId"] then asserts.AssertNullableLong(struct["DeploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployment[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>Information about an application version deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the deployment:</p> <ul> <li> <p> <code>In Progress</code> : The deployment is in progress.</p> </li> <li> <p> <code>Deployed</code> : The deployment succeeded.</p> </li> <li> <p> <code>Failed</code> : The deployment failed.</p> </li> </ul>
-- * VersionLabel [String] <p>The version label of the application version in the deployment.</p>
-- * DeploymentTime [DeploymentTimestamp] <p>For in-progress deployments, the time that the deployment started.</p> <p>For completed deployments, the time that the deployment ended.</p>
-- * DeploymentId [NullableLong] <p>The ID of the deployment. This number increases by one each time that you deploy source code or change instance configuration settings.</p>
-- @return Deployment structure as a key-value pair table
function M.Deployment(args)
	assert(args, "You must provide an argument table when creating Deployment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["VersionLabel"] = args["VersionLabel"],
		["DeploymentTime"] = args["DeploymentTime"],
		["DeploymentId"] = args["DeploymentId"],
	}
	asserts.AssertDeployment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlatformFilter = { ["Operator"] = true, ["Values"] = true, ["Type"] = true, nil }

function asserts.AssertPlatformFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformFilter to be of type 'table'")
	if struct["Operator"] then asserts.AssertPlatformFilterOperator(struct["Operator"]) end
	if struct["Values"] then asserts.AssertPlatformFilterValueList(struct["Values"]) end
	if struct["Type"] then asserts.AssertPlatformFilterType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformFilter[k], "PlatformFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformFilter
-- <p>Specify criteria to restrict the results when listing custom platforms.</p> <p>The filter is evaluated as the expression:</p> <p> <code>Type</code> <code>Operator</code> <code>Values[i]</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operator [PlatformFilterOperator] <p>The operator to apply to the <code>Type</code> with each of the <code>Values</code>.</p> <p> Valid Values: <code>=</code> (equal to) | <code>!=</code> (not equal to) | <code>&lt;</code> (less than) | <code>&lt;=</code> (less than or equal to) | <code>&gt;</code> (greater than) | <code>&gt;=</code> (greater than or equal to) | <code>contains</code> | <code>begins_with</code> | <code>ends_with</code> </p>
-- * Values [PlatformFilterValueList] <p>The list of values applied to the custom platform attribute.</p>
-- * Type [PlatformFilterType] <p>The custom platform attribute to which the filter values are applied.</p> <p>Valid Values: <code>PlatformName</code> | <code>PlatformVersion</code> | <code>PlatformStatus</code> | <code>PlatformOwner</code> </p>
-- @return PlatformFilter structure as a key-value pair table
function M.PlatformFilter(args)
	assert(args, "You must provide an argument table when creating PlatformFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operator"] = args["Operator"],
		["Values"] = args["Values"],
		["Type"] = args["Type"],
	}
	asserts.AssertPlatformFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestEnvironmentInfoMessage = { ["EnvironmentId"] = true, ["InfoType"] = true, ["EnvironmentName"] = true, nil }

function asserts.AssertRequestEnvironmentInfoMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestEnvironmentInfoMessage to be of type 'table'")
	assert(struct["InfoType"], "Expected key InfoType to exist in table")
	if struct["EnvironmentId"] then asserts.AssertEnvironmentId(struct["EnvironmentId"]) end
	if struct["InfoType"] then asserts.AssertEnvironmentInfoType(struct["InfoType"]) end
	if struct["EnvironmentName"] then asserts.AssertEnvironmentName(struct["EnvironmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestEnvironmentInfoMessage[k], "RequestEnvironmentInfoMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestEnvironmentInfoMessage
-- <p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk storage bucket.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnvironmentId [EnvironmentId] <p>The ID of the environment of the requested data.</p> <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- * InfoType [EnvironmentInfoType] <p>The type of information to request.</p>
-- * EnvironmentName [EnvironmentName] <p>The name of the environment of the requested data.</p> <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an <code>InvalidParameterValue</code> error. </p> <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error. </p>
-- Required key: InfoType
-- @return RequestEnvironmentInfoMessage structure as a key-value pair table
function M.RequestEnvironmentInfoMessage(args)
	assert(args, "You must provide an argument table when creating RequestEnvironmentInfoMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnvironmentId"] = args["EnvironmentId"],
		["InfoType"] = args["InfoType"],
		["EnvironmentName"] = args["EnvironmentName"],
	}
	asserts.AssertRequestEnvironmentInfoMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SolutionStackDescription = { ["PermittedFileTypes"] = true, ["SolutionStackName"] = true, nil }

function asserts.AssertSolutionStackDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SolutionStackDescription to be of type 'table'")
	if struct["PermittedFileTypes"] then asserts.AssertSolutionStackFileTypeList(struct["PermittedFileTypes"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SolutionStackDescription[k], "SolutionStackDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SolutionStackDescription
-- <p>Describes the solution stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PermittedFileTypes [SolutionStackFileTypeList] <p>The permitted file types allowed for a solution stack.</p>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack.</p>
-- @return SolutionStackDescription structure as a key-value pair table
function M.SolutionStackDescription(args)
	assert(args, "You must provide an argument table when creating SolutionStackDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PermittedFileTypes"] = args["PermittedFileTypes"],
		["SolutionStackName"] = args["SolutionStackName"],
	}
	asserts.AssertSolutionStackDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceHealthSummary = { ["Info"] = true, ["Ok"] = true, ["Unknown"] = true, ["Severe"] = true, ["Warning"] = true, ["Degraded"] = true, ["NoData"] = true, ["Pending"] = true, nil }

function asserts.AssertInstanceHealthSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceHealthSummary to be of type 'table'")
	if struct["Info"] then asserts.AssertNullableInteger(struct["Info"]) end
	if struct["Ok"] then asserts.AssertNullableInteger(struct["Ok"]) end
	if struct["Unknown"] then asserts.AssertNullableInteger(struct["Unknown"]) end
	if struct["Severe"] then asserts.AssertNullableInteger(struct["Severe"]) end
	if struct["Warning"] then asserts.AssertNullableInteger(struct["Warning"]) end
	if struct["Degraded"] then asserts.AssertNullableInteger(struct["Degraded"]) end
	if struct["NoData"] then asserts.AssertNullableInteger(struct["NoData"]) end
	if struct["Pending"] then asserts.AssertNullableInteger(struct["Pending"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceHealthSummary[k], "InstanceHealthSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceHealthSummary
-- <p>Represents summary information about the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Info [NullableInteger] <p> <b>Green.</b> An operation is in progress on an instance.</p>
-- * Ok [NullableInteger] <p> <b>Green.</b> An instance is passing health checks and the health agent is not reporting any problems.</p>
-- * Unknown [NullableInteger] <p> <b>Grey.</b> AWS Elastic Beanstalk and the health agent are reporting an insufficient amount of data on an instance.</p>
-- * Severe [NullableInteger] <p> <b>Red.</b> The health agent is reporting a very high number of request failures or other issues for an instance or environment.</p>
-- * Warning [NullableInteger] <p> <b>Yellow.</b> The health agent is reporting a moderate number of request failures or other issues for an instance or environment.</p>
-- * Degraded [NullableInteger] <p> <b>Red.</b> The health agent is reporting a high number of request failures or other issues for an instance or environment.</p>
-- * NoData [NullableInteger] <p> <b>Grey.</b> AWS Elastic Beanstalk and the health agent are reporting no data on an instance.</p>
-- * Pending [NullableInteger] <p> <b>Grey.</b> An operation is in progress on an instance within the command timeout.</p>
-- @return InstanceHealthSummary structure as a key-value pair table
function M.InstanceHealthSummary(args)
	assert(args, "You must provide an argument table when creating InstanceHealthSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Info"] = args["Info"],
		["Ok"] = args["Ok"],
		["Unknown"] = args["Unknown"],
		["Severe"] = args["Severe"],
		["Warning"] = args["Warning"],
		["Degraded"] = args["Degraded"],
		["NoData"] = args["NoData"],
		["Pending"] = args["Pending"],
	}
	asserts.AssertInstanceHealthSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentDescriptionsMessage = { ["NextToken"] = true, ["Environments"] = true, nil }

function asserts.AssertEnvironmentDescriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentDescriptionsMessage to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Environments"] then asserts.AssertEnvironmentDescriptionsList(struct["Environments"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentDescriptionsMessage[k], "EnvironmentDescriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentDescriptionsMessage
-- <p>Result message containing a list of environment descriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>In a paginated request, the token that you can pass in a subsequent request to get the next response page.</p>
-- * Environments [EnvironmentDescriptionsList] <p> Returns an <a>EnvironmentDescription</a> list. </p>
-- @return EnvironmentDescriptionsMessage structure as a key-value pair table
function M.EnvironmentDescriptionsMessage(args)
	assert(args, "You must provide an argument table when creating EnvironmentDescriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Environments"] = args["Environments"],
	}
	asserts.AssertEnvironmentDescriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlatformFramework = { ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertPlatformFramework(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformFramework to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformFramework[k], "PlatformFramework contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformFramework
-- <p>A framework supported by the custom platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The version of the framework.</p>
-- * Name [String] <p>The name of the framework.</p>
-- @return PlatformFramework structure as a key-value pair table
function M.PlatformFramework(args)
	assert(args, "You must provide an argument table when creating PlatformFramework")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Name"] = args["Name"],
	}
	asserts.AssertPlatformFramework(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationResourceLifecycleMessage = { ["ApplicationName"] = true, ["ResourceLifecycleConfig"] = true, nil }

function asserts.AssertUpdateApplicationResourceLifecycleMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResourceLifecycleMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["ResourceLifecycleConfig"], "Expected key ResourceLifecycleConfig to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ResourceLifecycleConfig"] then asserts.AssertApplicationResourceLifecycleConfig(struct["ResourceLifecycleConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationResourceLifecycleMessage[k], "UpdateApplicationResourceLifecycleMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResourceLifecycleMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application.</p>
-- * ResourceLifecycleConfig [ApplicationResourceLifecycleConfig] <p>The lifecycle configuration.</p>
-- Required key: ApplicationName
-- Required key: ResourceLifecycleConfig
-- @return UpdateApplicationResourceLifecycleMessage structure as a key-value pair table
function M.UpdateApplicationResourceLifecycleMessage(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationResourceLifecycleMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["ResourceLifecycleConfig"] = args["ResourceLifecycleConfig"],
	}
	asserts.AssertUpdateApplicationResourceLifecycleMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancerDescription = { ["Domain"] = true, ["Listeners"] = true, ["LoadBalancerName"] = true, nil }

function asserts.AssertLoadBalancerDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancerDescription to be of type 'table'")
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["Listeners"] then asserts.AssertLoadBalancerListenersDescription(struct["Listeners"]) end
	if struct["LoadBalancerName"] then asserts.AssertString(struct["LoadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancerDescription[k], "LoadBalancerDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancerDescription
-- <p>Describes the details of a LoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [String] <p>The domain name of the LoadBalancer.</p>
-- * Listeners [LoadBalancerListenersDescription] <p>A list of Listeners used by the LoadBalancer.</p>
-- * LoadBalancerName [String] <p>The name of the LoadBalancer.</p>
-- @return LoadBalancerDescription structure as a key-value pair table
function M.LoadBalancerDescription(args)
	assert(args, "You must provide an argument table when creating LoadBalancerDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
		["Listeners"] = args["Listeners"],
		["LoadBalancerName"] = args["LoadBalancerName"],
	}
	asserts.AssertLoadBalancerDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlatformVersionsResult = { ["PlatformSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListPlatformVersionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformVersionsResult to be of type 'table'")
	if struct["PlatformSummaryList"] then asserts.AssertPlatformSummaryList(struct["PlatformSummaryList"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlatformVersionsResult[k], "ListPlatformVersionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformVersionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformSummaryList [PlatformSummaryList] <p>Detailed information about the platforms.</p>
-- * NextToken [Token] <p>The starting index into the remaining list of platforms. if this value is not <code>null</code>, you can use it in a subsequent <code>ListPlatformVersion</code> call. </p>
-- @return ListPlatformVersionsResult structure as a key-value pair table
function M.ListPlatformVersionsResult(args)
	assert(args, "You must provide an argument table when creating ListPlatformVersionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformSummaryList"] = args["PlatformSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListPlatformVersionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentInfoDescription = { ["SampleTimestamp"] = true, ["Message"] = true, ["InfoType"] = true, ["Ec2InstanceId"] = true, nil }

function asserts.AssertEnvironmentInfoDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentInfoDescription to be of type 'table'")
	if struct["SampleTimestamp"] then asserts.AssertSampleTimestamp(struct["SampleTimestamp"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["InfoType"] then asserts.AssertEnvironmentInfoType(struct["InfoType"]) end
	if struct["Ec2InstanceId"] then asserts.AssertEc2InstanceId(struct["Ec2InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentInfoDescription[k], "EnvironmentInfoDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentInfoDescription
-- <p>The information retrieved from the Amazon EC2 instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SampleTimestamp [SampleTimestamp] <p>The time stamp when this information was retrieved.</p>
-- * Message [Message] <p>The retrieved information.</p>
-- * InfoType [EnvironmentInfoType] <p>The type of information retrieved.</p>
-- * Ec2InstanceId [Ec2InstanceId] <p>The Amazon EC2 Instance ID for this information.</p>
-- @return EnvironmentInfoDescription structure as a key-value pair table
function M.EnvironmentInfoDescription(args)
	assert(args, "You must provide an argument table when creating EnvironmentInfoDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SampleTimestamp"] = args["SampleTimestamp"],
		["Message"] = args["Message"],
		["InfoType"] = args["InfoType"],
		["Ec2InstanceId"] = args["Ec2InstanceId"],
	}
	asserts.AssertEnvironmentInfoDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigurationTemplateMessage = { ["ApplicationName"] = true, ["TemplateName"] = true, nil }

function asserts.AssertDeleteConfigurationTemplateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationTemplateMessage to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["TemplateName"] then asserts.AssertConfigurationTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationTemplateMessage[k], "DeleteConfigurationTemplateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationTemplateMessage
-- <p>Request to delete a configuration template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The name of the application to delete the configuration template from.</p>
-- * TemplateName [ConfigurationTemplateName] <p>The name of the configuration template to delete.</p>
-- Required key: ApplicationName
-- Required key: TemplateName
-- @return DeleteConfigurationTemplateMessage structure as a key-value pair table
function M.DeleteConfigurationTemplateMessage(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationTemplateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationName"] = args["ApplicationName"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertDeleteConfigurationTemplateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationOptionsDescription = { ["PlatformArn"] = true, ["Options"] = true, ["SolutionStackName"] = true, nil }

function asserts.AssertConfigurationOptionsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationOptionsDescription to be of type 'table'")
	if struct["PlatformArn"] then asserts.AssertPlatformArn(struct["PlatformArn"]) end
	if struct["Options"] then asserts.AssertConfigurationOptionDescriptionsList(struct["Options"]) end
	if struct["SolutionStackName"] then asserts.AssertSolutionStackName(struct["SolutionStackName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationOptionsDescription[k], "ConfigurationOptionsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationOptionsDescription
-- <p>Describes the settings for a specified configuration set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformArn [PlatformArn] <p>The ARN of the platform.</p>
-- * Options [ConfigurationOptionDescriptionsList] <p> A list of <a>ConfigurationOptionDescription</a>. </p>
-- * SolutionStackName [SolutionStackName] <p>The name of the solution stack these configuration options belong to.</p>
-- @return ConfigurationOptionsDescription structure as a key-value pair table
function M.ConfigurationOptionsDescription(args)
	assert(args, "You must provide an argument table when creating ConfigurationOptionsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformArn"] = args["PlatformArn"],
		["Options"] = args["Options"],
		["SolutionStackName"] = args["SolutionStackName"],
	}
	asserts.AssertConfigurationOptionsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancer = { ["Name"] = true, nil }

function asserts.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceId(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancer[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- <p>Describes a LoadBalancer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceId] <p>The name of the LoadBalancer.</p>
-- @return LoadBalancer structure as a key-value pair table
function M.LoadBalancer(args)
	assert(args, "You must provide an argument table when creating LoadBalancer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertLoadBalancer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentManagedActionsRequest = { ["Status"] = true, ["EnvironmentName"] = true, ["EnvironmentId"] = true, nil }

function asserts.AssertDescribeEnvironmentManagedActionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentManagedActionsRequest to be of type 'table'")
	if struct["Status"] then asserts.AssertActionStatus(struct["Status"]) end
	if struct["EnvironmentName"] then asserts.AssertString(struct["EnvironmentName"]) end
	if struct["EnvironmentId"] then asserts.AssertString(struct["EnvironmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentManagedActionsRequest[k], "DescribeEnvironmentManagedActionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentManagedActionsRequest
-- <p>Request to list an environment's upcoming and in-progress managed actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ActionStatus] <p>To show only actions with a particular status, specify a status.</p>
-- * EnvironmentName [String] <p>The name of the target environment.</p>
-- * EnvironmentId [String] <p>The environment ID of the target environment.</p>
-- @return DescribeEnvironmentManagedActionsRequest structure as a key-value pair table
function M.DescribeEnvironmentManagedActionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentManagedActionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EnvironmentName"] = args["EnvironmentName"],
		["EnvironmentId"] = args["EnvironmentId"],
	}
	asserts.AssertDescribeEnvironmentManagedActionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertConfigurationOptionValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionValueType to be of type 'string'")
end

--  
function M.ConfigurationOptionValueType(str)
	asserts.AssertConfigurationOptionValueType(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertActionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionStatus to be of type 'string'")
end

--  
function M.ActionStatus(str)
	asserts.AssertActionStatus(str)
	return str
end

function asserts.AssertConfigurationOptionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionName to be of type 'string'")
end

--  
function M.ConfigurationOptionName(str)
	asserts.AssertConfigurationOptionName(str)
	return str
end

function asserts.AssertEnvironmentName(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentName to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.EnvironmentName(str)
	asserts.AssertEnvironmentName(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertRegexLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected RegexLabel to be of type 'string'")
end

--  
function M.RegexLabel(str)
	asserts.AssertRegexLabel(str)
	return str
end

function asserts.AssertEnvironmentInfoType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentInfoType to be of type 'string'")
end

--  
function M.EnvironmentInfoType(str)
	asserts.AssertEnvironmentInfoType(str)
	return str
end

function asserts.AssertSupportedTier(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportedTier to be of type 'string'")
end

--  
function M.SupportedTier(str)
	asserts.AssertSupportedTier(str)
	return str
end

function asserts.AssertPlatformFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformFilterType to be of type 'string'")
end

--  
function M.PlatformFilterType(str)
	asserts.AssertPlatformFilterType(str)
	return str
end

function asserts.AssertEnvironmentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentStatus to be of type 'string'")
end

--  
function M.EnvironmentStatus(str)
	asserts.AssertEnvironmentStatus(str)
	return str
end

function asserts.AssertImageId(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageId to be of type 'string'")
end

--  
function M.ImageId(str)
	asserts.AssertImageId(str)
	return str
end

function asserts.AssertActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionType to be of type 'string'")
end

--  
function M.ActionType(str)
	asserts.AssertActionType(str)
	return str
end

function asserts.AssertValidationMessageString(str)
	assert(str)
	assert(type(str) == "string", "Expected ValidationMessageString to be of type 'string'")
end

--  
function M.ValidationMessageString(str)
	asserts.AssertValidationMessageString(str)
	return str
end

function asserts.AssertPlatformCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformCategory to be of type 'string'")
end

--  
function M.PlatformCategory(str)
	asserts.AssertPlatformCategory(str)
	return str
end

function asserts.AssertEc2InstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected Ec2InstanceId to be of type 'string'")
end

--  
function M.Ec2InstanceId(str)
	asserts.AssertEc2InstanceId(str)
	return str
end

function asserts.AssertConfigurationTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationTemplateName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConfigurationTemplateName(str)
	asserts.AssertConfigurationTemplateName(str)
	return str
end

function asserts.AssertSupportedAddon(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportedAddon to be of type 'string'")
end

--  
function M.SupportedAddon(str)
	asserts.AssertSupportedAddon(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertMaintainer(str)
	assert(str)
	assert(type(str) == "string", "Expected Maintainer to be of type 'string'")
end

--  
function M.Maintainer(str)
	asserts.AssertMaintainer(str)
	return str
end

function asserts.AssertEnvironmentArn(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentArn to be of type 'string'")
end

--  
function M.EnvironmentArn(str)
	asserts.AssertEnvironmentArn(str)
	return str
end

function asserts.AssertDNSCnamePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSCnamePrefix to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.DNSCnamePrefix(str)
	asserts.AssertDNSCnamePrefix(str)
	return str
end

function asserts.AssertPlatformVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformVersion to be of type 'string'")
end

--  
function M.PlatformVersion(str)
	asserts.AssertPlatformVersion(str)
	return str
end

function asserts.AssertSourceLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceLocation to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.SourceLocation(str)
	asserts.AssertSourceLocation(str)
	return str
end

function asserts.AssertFailureType(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureType to be of type 'string'")
end

--  
function M.FailureType(str)
	asserts.AssertFailureType(str)
	return str
end

function asserts.AssertPlatformOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformOwner to be of type 'string'")
end

--  
function M.PlatformOwner(str)
	asserts.AssertPlatformOwner(str)
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

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
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

function asserts.AssertPlatformStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformStatus to be of type 'string'")
end

--  
function M.PlatformStatus(str)
	asserts.AssertPlatformStatus(str)
	return str
end

function asserts.AssertInstancesHealthAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancesHealthAttribute to be of type 'string'")
end

--  
function M.InstancesHealthAttribute(str)
	asserts.AssertInstancesHealthAttribute(str)
	return str
end

function asserts.AssertConfigurationOptionSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionSeverity to be of type 'string'")
end

--  
function M.ConfigurationOptionSeverity(str)
	asserts.AssertConfigurationOptionSeverity(str)
	return str
end

function asserts.AssertOptionNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionNamespace to be of type 'string'")
end

--  
function M.OptionNamespace(str)
	asserts.AssertOptionNamespace(str)
	return str
end

function asserts.AssertEnvironmentHealth(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentHealth to be of type 'string'")
end

--  
function M.EnvironmentHealth(str)
	asserts.AssertEnvironmentHealth(str)
	return str
end

function asserts.AssertConfigurationOptionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionValue to be of type 'string'")
end

--  
function M.ConfigurationOptionValue(str)
	asserts.AssertConfigurationOptionValue(str)
	return str
end

function asserts.AssertFileTypeExtension(str)
	assert(str)
	assert(type(str) == "string", "Expected FileTypeExtension to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FileTypeExtension(str)
	asserts.AssertFileTypeExtension(str)
	return str
end

function asserts.AssertRegexPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected RegexPattern to be of type 'string'")
end

--  
function M.RegexPattern(str)
	asserts.AssertRegexPattern(str)
	return str
end

function asserts.AssertApplicationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationArn to be of type 'string'")
end

--  
function M.ApplicationArn(str)
	asserts.AssertApplicationArn(str)
	return str
end

function asserts.AssertVirtualizationType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualizationType to be of type 'string'")
end

--  
function M.VirtualizationType(str)
	asserts.AssertVirtualizationType(str)
	return str
end

function asserts.AssertComputeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputeType to be of type 'string'")
end

--  
function M.ComputeType(str)
	asserts.AssertComputeType(str)
	return str
end

function asserts.AssertApplicationVersionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationVersionStatus to be of type 'string'")
end

--  
function M.ApplicationVersionStatus(str)
	asserts.AssertApplicationVersionStatus(str)
	return str
end

function asserts.AssertActionHistoryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionHistoryStatus to be of type 'string'")
end

--  
function M.ActionHistoryStatus(str)
	asserts.AssertActionHistoryStatus(str)
	return str
end

function asserts.AssertEnvironmentHealthStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentHealthStatus to be of type 'string'")
end

--  
function M.EnvironmentHealthStatus(str)
	asserts.AssertEnvironmentHealthStatus(str)
	return str
end

function asserts.AssertConfigurationOptionPossibleValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionPossibleValue to be of type 'string'")
end

--  
function M.ConfigurationOptionPossibleValue(str)
	asserts.AssertConfigurationOptionPossibleValue(str)
	return str
end

function asserts.AssertPlatformFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformFilterValue to be of type 'string'")
end

--  
function M.PlatformFilterValue(str)
	asserts.AssertPlatformFilterValue(str)
	return str
end

function asserts.AssertConfigurationDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationDeploymentStatus to be of type 'string'")
end

--  
function M.ConfigurationDeploymentStatus(str)
	asserts.AssertConfigurationDeploymentStatus(str)
	return str
end

function asserts.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	asserts.AssertSourceType(str)
	return str
end

function asserts.AssertPlatformArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformArn to be of type 'string'")
end

--  
function M.PlatformArn(str)
	asserts.AssertPlatformArn(str)
	return str
end

function asserts.AssertApplicationVersionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationVersionArn to be of type 'string'")
end

--  
function M.ApplicationVersionArn(str)
	asserts.AssertApplicationVersionArn(str)
	return str
end

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertOperatingSystemVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatingSystemVersion to be of type 'string'")
end

--  
function M.OperatingSystemVersion(str)
	asserts.AssertOperatingSystemVersion(str)
	return str
end

function asserts.AssertRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestId to be of type 'string'")
end

--  
function M.RequestId(str)
	asserts.AssertRequestId(str)
	return str
end

function asserts.AssertEnvironmentHealthAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentHealthAttribute to be of type 'string'")
end

--  
function M.EnvironmentHealthAttribute(str)
	asserts.AssertEnvironmentHealthAttribute(str)
	return str
end

function asserts.AssertEnvironmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentId to be of type 'string'")
end

--  
function M.EnvironmentId(str)
	asserts.AssertEnvironmentId(str)
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

function asserts.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.S3Key(str)
	asserts.AssertS3Key(str)
	return str
end

function asserts.AssertEventSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSeverity to be of type 'string'")
end

--  
function M.EventSeverity(str)
	asserts.AssertEventSeverity(str)
	return str
end

function asserts.AssertConfigurationOptionDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationOptionDefaultValue to be of type 'string'")
end

--  
function M.ConfigurationOptionDefaultValue(str)
	asserts.AssertConfigurationOptionDefaultValue(str)
	return str
end

function asserts.AssertDNSCname(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSCname to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DNSCname(str)
	asserts.AssertDNSCname(str)
	return str
end

function asserts.AssertEndpointURL(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointURL to be of type 'string'")
end

--  
function M.EndpointURL(str)
	asserts.AssertEndpointURL(str)
	return str
end

function asserts.AssertOperatingSystemName(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatingSystemName to be of type 'string'")
end

--  
function M.OperatingSystemName(str)
	asserts.AssertOperatingSystemName(str)
	return str
end

function asserts.AssertEventMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected EventMessage to be of type 'string'")
end

--  
function M.EventMessage(str)
	asserts.AssertEventMessage(str)
	return str
end

function asserts.AssertCause(str)
	assert(str)
	assert(type(str) == "string", "Expected Cause to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Cause(str)
	asserts.AssertCause(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
	return str
end

function asserts.AssertPlatformFilterOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformFilterOperator to be of type 'string'")
end

--  
function M.PlatformFilterOperator(str)
	asserts.AssertPlatformFilterOperator(str)
	return str
end

function asserts.AssertValidationSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected ValidationSeverity to be of type 'string'")
end

--  
function M.ValidationSeverity(str)
	asserts.AssertValidationSeverity(str)
	return str
end

function asserts.AssertVersionLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionLabel to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VersionLabel(str)
	asserts.AssertVersionLabel(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupName to be of type 'string'")
	assert(#str <= 19, "Expected string to be max 19 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GroupName(str)
	asserts.AssertGroupName(str)
	return str
end

function asserts.AssertSolutionStackName(str)
	assert(str)
	assert(type(str) == "string", "Expected SolutionStackName to be of type 'string'")
end

--  
function M.SolutionStackName(str)
	asserts.AssertSolutionStackName(str)
	return str
end

function asserts.AssertSourceRepository(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceRepository to be of type 'string'")
end

--  
function M.SourceRepository(str)
	asserts.AssertSourceRepository(str)
	return str
end

function asserts.AssertPlatformName(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformName to be of type 'string'")
end

--  
function M.PlatformName(str)
	asserts.AssertPlatformName(str)
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

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

--  
function M.ARN(str)
	asserts.AssertARN(str)
	return str
end

function asserts.AssertNullableDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NullableDouble to be of type 'number'")
end

function M.NullableDouble(double)
	asserts.AssertNullableDouble(double)
	return double
end

function asserts.AssertLoadAverageValue(double)
	assert(double)
	assert(type(double) == "number", "Expected LoadAverageValue to be of type 'number'")
end

function M.LoadAverageValue(double)
	asserts.AssertLoadAverageValue(double)
	return double
end

function asserts.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	asserts.AssertNullableLong(long)
	return long
end

function asserts.AssertOptionRestrictionMinValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OptionRestrictionMinValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.OptionRestrictionMinValue(integer)
	asserts.AssertOptionRestrictionMinValue(integer)
	return integer
end

function asserts.AssertRequestCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RequestCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RequestCount(integer)
	asserts.AssertRequestCount(integer)
	return integer
end

function asserts.AssertBoxedInt(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInt to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BoxedInt(integer)
	asserts.AssertBoxedInt(integer)
	return integer
end

function asserts.AssertOptionRestrictionMaxValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OptionRestrictionMaxValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.OptionRestrictionMaxValue(integer)
	asserts.AssertOptionRestrictionMaxValue(integer)
	return integer
end

function asserts.AssertOptionRestrictionMaxLength(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OptionRestrictionMaxLength to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.OptionRestrictionMaxLength(integer)
	asserts.AssertOptionRestrictionMaxLength(integer)
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

function asserts.AssertPlatformMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PlatformMaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PlatformMaxRecords(integer)
	asserts.AssertPlatformMaxRecords(integer)
	return integer
end

function asserts.AssertMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxRecords(integer)
	asserts.AssertMaxRecords(integer)
	return integer
end

function asserts.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	asserts.AssertNullableInteger(integer)
	return integer
end

function asserts.AssertCnameAvailability(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CnameAvailability to be of type 'boolean'")
end

function M.CnameAvailability(boolean)
	asserts.AssertCnameAvailability(boolean)
	return boolean
end

function asserts.AssertTerminateEnvironmentResources(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TerminateEnvironmentResources to be of type 'boolean'")
end

function M.TerminateEnvironmentResources(boolean)
	asserts.AssertTerminateEnvironmentResources(boolean)
	return boolean
end

function asserts.AssertUserDefinedOption(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UserDefinedOption to be of type 'boolean'")
end

function M.UserDefinedOption(boolean)
	asserts.AssertUserDefinedOption(boolean)
	return boolean
end

function asserts.AssertAutoCreateApplication(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AutoCreateApplication to be of type 'boolean'")
end

function M.AutoCreateApplication(boolean)
	asserts.AssertAutoCreateApplication(boolean)
	return boolean
end

function asserts.AssertBoxedBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BoxedBoolean to be of type 'boolean'")
end

function M.BoxedBoolean(boolean)
	asserts.AssertBoxedBoolean(boolean)
	return boolean
end

function asserts.AssertIncludeDeleted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeDeleted to be of type 'boolean'")
end

function M.IncludeDeleted(boolean)
	asserts.AssertIncludeDeleted(boolean)
	return boolean
end

function asserts.AssertAbortableOperationInProgress(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AbortableOperationInProgress to be of type 'boolean'")
end

function M.AbortableOperationInProgress(boolean)
	asserts.AssertAbortableOperationInProgress(boolean)
	return boolean
end

function asserts.AssertApplicationVersionProccess(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ApplicationVersionProccess to be of type 'boolean'")
end

function M.ApplicationVersionProccess(boolean)
	asserts.AssertApplicationVersionProccess(boolean)
	return boolean
end

function asserts.AssertTerminateEnvForce(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TerminateEnvForce to be of type 'boolean'")
end

function M.TerminateEnvForce(boolean)
	asserts.AssertTerminateEnvForce(boolean)
	return boolean
end

function asserts.AssertDeleteSourceBundle(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteSourceBundle to be of type 'boolean'")
end

function M.DeleteSourceBundle(boolean)
	asserts.AssertDeleteSourceBundle(boolean)
	return boolean
end

function asserts.AssertForceTerminate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceTerminate to be of type 'boolean'")
end

function M.ForceTerminate(boolean)
	asserts.AssertForceTerminate(boolean)
	return boolean
end

function asserts.AssertIncludeDeletedBackTo(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IncludeDeletedBackTo to be of type 'string'")
end

function M.IncludeDeletedBackTo(timestamp)
	asserts.AssertIncludeDeletedBackTo(timestamp)
	return timestamp
end

function asserts.AssertTimeFilterEnd(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeFilterEnd to be of type 'string'")
end

function M.TimeFilterEnd(timestamp)
	asserts.AssertTimeFilterEnd(timestamp)
	return timestamp
end

function asserts.AssertDeploymentTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeploymentTimestamp to be of type 'string'")
end

function M.DeploymentTimestamp(timestamp)
	asserts.AssertDeploymentTimestamp(timestamp)
	return timestamp
end

function asserts.AssertLaunchedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LaunchedAt to be of type 'string'")
end

function M.LaunchedAt(timestamp)
	asserts.AssertLaunchedAt(timestamp)
	return timestamp
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertRefreshedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected RefreshedAt to be of type 'string'")
end

function M.RefreshedAt(timestamp)
	asserts.AssertRefreshedAt(timestamp)
	return timestamp
end

function asserts.AssertSampleTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected SampleTimestamp to be of type 'string'")
end

function M.SampleTimestamp(timestamp)
	asserts.AssertSampleTimestamp(timestamp)
	return timestamp
end

function asserts.AssertTimeFilterStart(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeFilterStart to be of type 'string'")
end

function M.TimeFilterStart(timestamp)
	asserts.AssertTimeFilterStart(timestamp)
	return timestamp
end

function asserts.AssertUpdateDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdateDate to be of type 'string'")
end

function M.UpdateDate(timestamp)
	asserts.AssertUpdateDate(timestamp)
	return timestamp
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertEventDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EventDate to be of type 'string'")
end

function M.EventDate(timestamp)
	asserts.AssertEventDate(timestamp)
	return timestamp
end

function asserts.AssertSupportedAddonList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedAddonList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSupportedAddon(v)
	end
end

--  
-- List of SupportedAddon objects
function M.SupportedAddonList(list)
	asserts.AssertSupportedAddonList(list)
	return list
end

function asserts.AssertLoadAverage(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadAverage to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadAverageValue(v)
	end
end

--  
-- List of LoadAverageValue objects
function M.LoadAverage(list)
	asserts.AssertLoadAverage(list)
	return list
end

function asserts.AssertPlatformSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformSummary(v)
	end
end

--  
-- List of PlatformSummary objects
function M.PlatformSummaryList(list)
	asserts.AssertPlatformSummaryList(list)
	return list
end

function asserts.AssertPlatformFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformFilterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformFilterValue(v)
	end
end

--  
-- List of PlatformFilterValue objects
function M.PlatformFilterValueList(list)
	asserts.AssertPlatformFilterValueList(list)
	return list
end

function asserts.AssertTriggerList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrigger(v)
	end
end

--  
-- List of Trigger objects
function M.TriggerList(list)
	asserts.AssertTriggerList(list)
	return list
end

function asserts.AssertValidationMessagesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationMessagesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValidationMessage(v)
	end
end

--  
-- List of ValidationMessage objects
function M.ValidationMessagesList(list)
	asserts.AssertValidationMessagesList(list)
	return list
end

function asserts.AssertEnvironmentNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentName(v)
	end
end

--  
-- List of EnvironmentName objects
function M.EnvironmentNamesList(list)
	asserts.AssertEnvironmentNamesList(list)
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

function asserts.AssertApplicationVersionDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationVersionDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationVersionDescription(v)
	end
end

--  
-- List of ApplicationVersionDescription objects
function M.ApplicationVersionDescriptionList(list)
	asserts.AssertApplicationVersionDescriptionList(list)
	return list
end

function asserts.AssertInstanceHealthList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceHealthList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSingleInstanceHealth(v)
	end
end

--  
-- List of SingleInstanceHealth objects
function M.InstanceHealthList(list)
	asserts.AssertInstanceHealthList(list)
	return list
end

function asserts.AssertLaunchConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLaunchConfiguration(v)
	end
end

--  
-- List of LaunchConfiguration objects
function M.LaunchConfigurationList(list)
	asserts.AssertLaunchConfigurationList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertInstancesHealthAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancesHealthAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstancesHealthAttribute(v)
	end
end

--  
-- List of InstancesHealthAttribute objects
function M.InstancesHealthAttributes(list)
	asserts.AssertInstancesHealthAttributes(list)
	return list
end

function asserts.AssertConfigurationSettingsDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationSettingsDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationSettingsDescription(v)
	end
end

--  
-- List of ConfigurationSettingsDescription objects
function M.ConfigurationSettingsDescriptionList(list)
	asserts.AssertConfigurationSettingsDescriptionList(list)
	return list
end

function asserts.AssertEnvironmentInfoDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentInfoDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentInfoDescription(v)
	end
end

--  
-- List of EnvironmentInfoDescription objects
function M.EnvironmentInfoDescriptionList(list)
	asserts.AssertEnvironmentInfoDescriptionList(list)
	return list
end

function asserts.AssertSolutionStackFileTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected SolutionStackFileTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFileTypeExtension(v)
	end
end

--  
-- List of FileTypeExtension objects
function M.SolutionStackFileTypeList(list)
	asserts.AssertSolutionStackFileTypeList(list)
	return list
end

function asserts.AssertVersionLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected VersionLabels to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVersionLabel(v)
	end
end

--  
-- List of VersionLabel objects
function M.VersionLabels(list)
	asserts.AssertVersionLabels(list)
	return list
end

function asserts.AssertLoadBalancerListenersDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerListenersDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListener(v)
	end
end

--  
-- List of Listener objects
function M.LoadBalancerListenersDescription(list)
	asserts.AssertLoadBalancerListenersDescription(list)
	return list
end

function asserts.AssertPlatformFrameworks(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformFrameworks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformFramework(v)
	end
end

--  
-- List of PlatformFramework objects
function M.PlatformFrameworks(list)
	asserts.AssertPlatformFrameworks(list)
	return list
end

function asserts.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	asserts.AssertInstanceList(list)
	return list
end

function asserts.AssertAvailableSolutionStackNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailableSolutionStackNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSolutionStackName(v)
	end
end

--  
-- List of SolutionStackName objects
function M.AvailableSolutionStackNamesList(list)
	asserts.AssertAvailableSolutionStackNamesList(list)
	return list
end

function asserts.AssertLoadBalancerList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancerList(list)
	asserts.AssertLoadBalancerList(list)
	return list
end

function asserts.AssertConfigurationTemplateNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationTemplateNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationTemplateName(v)
	end
end

--  
-- List of ConfigurationTemplateName objects
function M.ConfigurationTemplateNamesList(list)
	asserts.AssertConfigurationTemplateNamesList(list)
	return list
end

function asserts.AssertEnvironmentIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentId(v)
	end
end

--  
-- List of EnvironmentId objects
function M.EnvironmentIdList(list)
	asserts.AssertEnvironmentIdList(list)
	return list
end

function asserts.AssertManagedActionHistoryItems(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedActionHistoryItems to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertManagedActionHistoryItem(v)
	end
end

--  
-- List of ManagedActionHistoryItem objects
function M.ManagedActionHistoryItems(list)
	asserts.AssertManagedActionHistoryItems(list)
	return list
end

function asserts.AssertPlatformProgrammingLanguages(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformProgrammingLanguages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformProgrammingLanguage(v)
	end
end

--  
-- List of PlatformProgrammingLanguage objects
function M.PlatformProgrammingLanguages(list)
	asserts.AssertPlatformProgrammingLanguages(list)
	return list
end

function asserts.AssertEnvironmentHealthAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentHealthAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentHealthAttribute(v)
	end
end

--  
-- List of EnvironmentHealthAttribute objects
function M.EnvironmentHealthAttributes(list)
	asserts.AssertEnvironmentHealthAttributes(list)
	return list
end

function asserts.AssertEnvironmentLinks(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentLinks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentLink(v)
	end
end

--  
-- List of EnvironmentLink objects
function M.EnvironmentLinks(list)
	asserts.AssertEnvironmentLinks(list)
	return list
end

function asserts.AssertConfigurationOptionDescriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationOptionDescriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationOptionDescription(v)
	end
end

--  
-- List of ConfigurationOptionDescription objects
function M.ConfigurationOptionDescriptionsList(list)
	asserts.AssertConfigurationOptionDescriptionsList(list)
	return list
end

function asserts.AssertQueueList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueue(v)
	end
end

--  
-- List of Queue objects
function M.QueueList(list)
	asserts.AssertQueueList(list)
	return list
end

function asserts.AssertApplicationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationDescription(v)
	end
end

--  
-- List of ApplicationDescription objects
function M.ApplicationDescriptionList(list)
	asserts.AssertApplicationDescriptionList(list)
	return list
end

function asserts.AssertCustomAmiList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomAmiList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomAmi(v)
	end
end

--  
-- List of CustomAmi objects
function M.CustomAmiList(list)
	asserts.AssertCustomAmiList(list)
	return list
end

function asserts.AssertVersionLabelsList(list)
	assert(list)
	assert(type(list) == "table", "Expected VersionLabelsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVersionLabel(v)
	end
end

--  
-- List of VersionLabel objects
function M.VersionLabelsList(list)
	asserts.AssertVersionLabelsList(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertManagedActions(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedActions to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertManagedAction(v)
	end
end

--  
-- List of ManagedAction objects
function M.ManagedActions(list)
	asserts.AssertManagedActions(list)
	return list
end

function asserts.AssertConfigurationOptionPossibleValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationOptionPossibleValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationOptionPossibleValue(v)
	end
end

--  
-- List of ConfigurationOptionPossibleValue objects
function M.ConfigurationOptionPossibleValues(list)
	asserts.AssertConfigurationOptionPossibleValues(list)
	return list
end

function asserts.AssertEnvironmentDescriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentDescriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentDescription(v)
	end
end

--  
-- List of EnvironmentDescription objects
function M.EnvironmentDescriptionsList(list)
	asserts.AssertEnvironmentDescriptionsList(list)
	return list
end

function asserts.AssertOptionsSpecifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsSpecifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionSpecification(v)
	end
end

--  
-- List of OptionSpecification objects
function M.OptionsSpecifierList(list)
	asserts.AssertOptionsSpecifierList(list)
	return list
end

function asserts.AssertConfigurationOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationOptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationOptionSetting(v)
	end
end

--  
-- List of ConfigurationOptionSetting objects
function M.ConfigurationOptionSettingsList(list)
	asserts.AssertConfigurationOptionSettingsList(list)
	return list
end

function asserts.AssertCauses(list)
	assert(list)
	assert(type(list) == "table", "Expected Causes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCause(v)
	end
end

--  
-- List of Cause objects
function M.Causes(list)
	asserts.AssertCauses(list)
	return list
end

function asserts.AssertSupportedTierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedTierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSupportedTier(v)
	end
end

--  
-- List of SupportedTier objects
function M.SupportedTierList(list)
	asserts.AssertSupportedTierList(list)
	return list
end

function asserts.AssertApplicationNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationName(v)
	end
end

--  
-- List of ApplicationName objects
function M.ApplicationNamesList(list)
	asserts.AssertApplicationNamesList(list)
	return list
end

function asserts.AssertAvailableSolutionStackDetailsList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailableSolutionStackDetailsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSolutionStackDescription(v)
	end
end

--  
-- List of SolutionStackDescription objects
function M.AvailableSolutionStackDetailsList(list)
	asserts.AssertAvailableSolutionStackDetailsList(list)
	return list
end

function asserts.AssertPlatformFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformFilter(v)
	end
end

--  
-- List of PlatformFilter objects
function M.PlatformFilters(list)
	asserts.AssertPlatformFilters(list)
	return list
end

function asserts.AssertEventDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventDescription(v)
	end
end

--  
-- List of EventDescription objects
function M.EventDescriptionList(list)
	asserts.AssertEventDescriptionList(list)
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
			return "elasticbeanstalk.amazonaws.com"
		end
	end
	local ss = { "elasticbeanstalk" }
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
--- Call UpdateTagsForResource asynchronously, invoking a callback when done
-- @param UpdateTagsForResourceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTagsForResourceAsync(UpdateTagsForResourceMessage, cb)
	assert(UpdateTagsForResourceMessage, "You must provide a UpdateTagsForResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTagsForResource",
	}
	for header,value in pairs(UpdateTagsForResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTagsForResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTagsForResourceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTagsForResourceSync(UpdateTagsForResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTagsForResourceAsync(UpdateTagsForResourceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApplicationVersions asynchronously, invoking a callback when done
-- @param DescribeApplicationVersionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeApplicationVersionsAsync(DescribeApplicationVersionsMessage, cb)
	assert(DescribeApplicationVersionsMessage, "You must provide a DescribeApplicationVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeApplicationVersions",
	}
	for header,value in pairs(DescribeApplicationVersionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeApplicationVersionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeApplicationVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeApplicationVersionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeApplicationVersionsSync(DescribeApplicationVersionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeApplicationVersionsAsync(DescribeApplicationVersionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RequestEnvironmentInfo asynchronously, invoking a callback when done
-- @param RequestEnvironmentInfoMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RequestEnvironmentInfoAsync(RequestEnvironmentInfoMessage, cb)
	assert(RequestEnvironmentInfoMessage, "You must provide a RequestEnvironmentInfoMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RequestEnvironmentInfo",
	}
	for header,value in pairs(RequestEnvironmentInfoMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RequestEnvironmentInfoMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RequestEnvironmentInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RequestEnvironmentInfoMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RequestEnvironmentInfoSync(RequestEnvironmentInfoMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RequestEnvironmentInfoAsync(RequestEnvironmentInfoMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentResources asynchronously, invoking a callback when done
-- @param DescribeEnvironmentResourcesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentResourcesAsync(DescribeEnvironmentResourcesMessage, cb)
	assert(DescribeEnvironmentResourcesMessage, "You must provide a DescribeEnvironmentResourcesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEnvironmentResources",
	}
	for header,value in pairs(DescribeEnvironmentResourcesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentResourcesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentResourcesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentResourcesSync(DescribeEnvironmentResourcesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentResourcesAsync(DescribeEnvironmentResourcesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventsAsync(DescribeEventsMessage, cb)
	assert(DescribeEventsMessage, "You must provide a DescribeEventsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEvents",
	}
	for header,value in pairs(DescribeEventsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEventsSync(DescribeEventsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(DescribeEventsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentHealth asynchronously, invoking a callback when done
-- @param DescribeEnvironmentHealthRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentHealthAsync(DescribeEnvironmentHealthRequest, cb)
	assert(DescribeEnvironmentHealthRequest, "You must provide a DescribeEnvironmentHealthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEnvironmentHealth",
	}
	for header,value in pairs(DescribeEnvironmentHealthRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentHealthRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentHealth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentHealthRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentHealthSync(DescribeEnvironmentHealthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentHealthAsync(DescribeEnvironmentHealthRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplicationResourceLifecycle asynchronously, invoking a callback when done
-- @param UpdateApplicationResourceLifecycleMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationResourceLifecycleAsync(UpdateApplicationResourceLifecycleMessage, cb)
	assert(UpdateApplicationResourceLifecycleMessage, "You must provide a UpdateApplicationResourceLifecycleMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApplicationResourceLifecycle",
	}
	for header,value in pairs(UpdateApplicationResourceLifecycleMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationResourceLifecycleMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplicationResourceLifecycle synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationResourceLifecycleMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationResourceLifecycleSync(UpdateApplicationResourceLifecycleMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationResourceLifecycleAsync(UpdateApplicationResourceLifecycleMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateEnvironment asynchronously, invoking a callback when done
-- @param TerminateEnvironmentMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateEnvironmentAsync(TerminateEnvironmentMessage, cb)
	assert(TerminateEnvironmentMessage, "You must provide a TerminateEnvironmentMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TerminateEnvironment",
	}
	for header,value in pairs(TerminateEnvironmentMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateEnvironmentMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateEnvironmentMessage
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateEnvironmentSync(TerminateEnvironmentMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateEnvironmentAsync(TerminateEnvironmentMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplicationVersion asynchronously, invoking a callback when done
-- @param UpdateApplicationVersionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationVersionAsync(UpdateApplicationVersionMessage, cb)
	assert(UpdateApplicationVersionMessage, "You must provide a UpdateApplicationVersionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApplicationVersion",
	}
	for header,value in pairs(UpdateApplicationVersionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationVersionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplicationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationVersionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationVersionSync(UpdateApplicationVersionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationVersionAsync(UpdateApplicationVersionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplication asynchronously, invoking a callback when done
-- @param DeleteApplicationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApplicationAsync(DeleteApplicationMessage, cb)
	assert(DeleteApplicationMessage, "You must provide a DeleteApplicationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApplication",
	}
	for header,value in pairs(DeleteApplicationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApplicationSync(DeleteApplicationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationAsync(DeleteApplicationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplyEnvironmentManagedAction asynchronously, invoking a callback when done
-- @param ApplyEnvironmentManagedActionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApplyEnvironmentManagedActionAsync(ApplyEnvironmentManagedActionRequest, cb)
	assert(ApplyEnvironmentManagedActionRequest, "You must provide a ApplyEnvironmentManagedActionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplyEnvironmentManagedAction",
	}
	for header,value in pairs(ApplyEnvironmentManagedActionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApplyEnvironmentManagedActionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApplyEnvironmentManagedAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApplyEnvironmentManagedActionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ApplyEnvironmentManagedActionSync(ApplyEnvironmentManagedActionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplyEnvironmentManagedActionAsync(ApplyEnvironmentManagedActionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationOptions asynchronously, invoking a callback when done
-- @param DescribeConfigurationOptionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationOptionsAsync(DescribeConfigurationOptionsMessage, cb)
	assert(DescribeConfigurationOptionsMessage, "You must provide a DescribeConfigurationOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeConfigurationOptions",
	}
	for header,value in pairs(DescribeConfigurationOptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationOptionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationOptionsSync(DescribeConfigurationOptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationOptionsAsync(DescribeConfigurationOptionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentManagedActionHistory asynchronously, invoking a callback when done
-- @param DescribeEnvironmentManagedActionHistoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentManagedActionHistoryAsync(DescribeEnvironmentManagedActionHistoryRequest, cb)
	assert(DescribeEnvironmentManagedActionHistoryRequest, "You must provide a DescribeEnvironmentManagedActionHistoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEnvironmentManagedActionHistory",
	}
	for header,value in pairs(DescribeEnvironmentManagedActionHistoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentManagedActionHistoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentManagedActionHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentManagedActionHistoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentManagedActionHistorySync(DescribeEnvironmentManagedActionHistoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentManagedActionHistoryAsync(DescribeEnvironmentManagedActionHistoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationTemplate asynchronously, invoking a callback when done
-- @param DeleteConfigurationTemplateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationTemplateAsync(DeleteConfigurationTemplateMessage, cb)
	assert(DeleteConfigurationTemplateMessage, "You must provide a DeleteConfigurationTemplateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationTemplate",
	}
	for header,value in pairs(DeleteConfigurationTemplateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationTemplateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationTemplateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationTemplateSync(DeleteConfigurationTemplateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationTemplateAsync(DeleteConfigurationTemplateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ValidateConfigurationSettings asynchronously, invoking a callback when done
-- @param ValidateConfigurationSettingsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ValidateConfigurationSettingsAsync(ValidateConfigurationSettingsMessage, cb)
	assert(ValidateConfigurationSettingsMessage, "You must provide a ValidateConfigurationSettingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ValidateConfigurationSettings",
	}
	for header,value in pairs(ValidateConfigurationSettingsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ValidateConfigurationSettingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ValidateConfigurationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ValidateConfigurationSettingsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ValidateConfigurationSettingsSync(ValidateConfigurationSettingsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ValidateConfigurationSettingsAsync(ValidateConfigurationSettingsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAvailableSolutionStacks asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAvailableSolutionStacksAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAvailableSolutionStacks",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAvailableSolutionStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.ListAvailableSolutionStacksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAvailableSolutionStacksAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ComposeEnvironments asynchronously, invoking a callback when done
-- @param ComposeEnvironmentsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ComposeEnvironmentsAsync(ComposeEnvironmentsMessage, cb)
	assert(ComposeEnvironmentsMessage, "You must provide a ComposeEnvironmentsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ComposeEnvironments",
	}
	for header,value in pairs(ComposeEnvironmentsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ComposeEnvironmentsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ComposeEnvironments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ComposeEnvironmentsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ComposeEnvironmentsSync(ComposeEnvironmentsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ComposeEnvironmentsAsync(ComposeEnvironmentsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationSettings asynchronously, invoking a callback when done
-- @param DescribeConfigurationSettingsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationSettingsAsync(DescribeConfigurationSettingsMessage, cb)
	assert(DescribeConfigurationSettingsMessage, "You must provide a DescribeConfigurationSettingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeConfigurationSettings",
	}
	for header,value in pairs(DescribeConfigurationSettingsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationSettingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationSettingsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationSettingsSync(DescribeConfigurationSettingsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationSettingsAsync(DescribeConfigurationSettingsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplication asynchronously, invoking a callback when done
-- @param CreateApplicationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApplicationAsync(CreateApplicationMessage, cb)
	assert(CreateApplicationMessage, "You must provide a CreateApplicationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApplication",
	}
	for header,value in pairs(CreateApplicationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateApplicationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApplicationSync(CreateApplicationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationAsync(CreateApplicationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfigurationTemplate asynchronously, invoking a callback when done
-- @param UpdateConfigurationTemplateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationTemplateAsync(UpdateConfigurationTemplateMessage, cb)
	assert(UpdateConfigurationTemplateMessage, "You must provide a UpdateConfigurationTemplateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationTemplate",
	}
	for header,value in pairs(UpdateConfigurationTemplateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConfigurationTemplateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfigurationTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationTemplateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationTemplateSync(UpdateConfigurationTemplateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationTemplateAsync(UpdateConfigurationTemplateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplicationVersion asynchronously, invoking a callback when done
-- @param DeleteApplicationVersionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApplicationVersionAsync(DeleteApplicationVersionMessage, cb)
	assert(DeleteApplicationVersionMessage, "You must provide a DeleteApplicationVersionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApplicationVersion",
	}
	for header,value in pairs(DeleteApplicationVersionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationVersionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplicationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationVersionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApplicationVersionSync(DeleteApplicationVersionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationVersionAsync(DeleteApplicationVersionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetrieveEnvironmentInfo asynchronously, invoking a callback when done
-- @param RetrieveEnvironmentInfoMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetrieveEnvironmentInfoAsync(RetrieveEnvironmentInfoMessage, cb)
	assert(RetrieveEnvironmentInfoMessage, "You must provide a RetrieveEnvironmentInfoMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RetrieveEnvironmentInfo",
	}
	for header,value in pairs(RetrieveEnvironmentInfoMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetrieveEnvironmentInfoMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetrieveEnvironmentInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetrieveEnvironmentInfoMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RetrieveEnvironmentInfoSync(RetrieveEnvironmentInfoMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetrieveEnvironmentInfoAsync(RetrieveEnvironmentInfoMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationAsync(UpdateApplicationMessage, cb)
	assert(UpdateApplicationMessage, "You must provide a UpdateApplicationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApplication",
	}
	for header,value in pairs(UpdateApplicationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationSync(UpdateApplicationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationAsync(UpdateApplicationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEnvironment asynchronously, invoking a callback when done
-- @param UpdateEnvironmentMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEnvironmentAsync(UpdateEnvironmentMessage, cb)
	assert(UpdateEnvironmentMessage, "You must provide a UpdateEnvironmentMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEnvironment",
	}
	for header,value in pairs(UpdateEnvironmentMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEnvironmentMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEnvironmentMessage
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEnvironmentSync(UpdateEnvironmentMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEnvironmentAsync(UpdateEnvironmentMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironments asynchronously, invoking a callback when done
-- @param DescribeEnvironmentsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentsAsync(DescribeEnvironmentsMessage, cb)
	assert(DescribeEnvironmentsMessage, "You must provide a DescribeEnvironmentsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEnvironments",
	}
	for header,value in pairs(DescribeEnvironmentsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentsSync(DescribeEnvironmentsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentsAsync(DescribeEnvironmentsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPlatformVersions asynchronously, invoking a callback when done
-- @param ListPlatformVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPlatformVersionsAsync(ListPlatformVersionsRequest, cb)
	assert(ListPlatformVersionsRequest, "You must provide a ListPlatformVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPlatformVersions",
	}
	for header,value in pairs(ListPlatformVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPlatformVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPlatformVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPlatformVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPlatformVersionsSync(ListPlatformVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPlatformVersionsAsync(ListPlatformVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentManagedActions asynchronously, invoking a callback when done
-- @param DescribeEnvironmentManagedActionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentManagedActionsAsync(DescribeEnvironmentManagedActionsRequest, cb)
	assert(DescribeEnvironmentManagedActionsRequest, "You must provide a DescribeEnvironmentManagedActionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEnvironmentManagedActions",
	}
	for header,value in pairs(DescribeEnvironmentManagedActionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentManagedActionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentManagedActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentManagedActionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentManagedActionsSync(DescribeEnvironmentManagedActionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentManagedActionsAsync(DescribeEnvironmentManagedActionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortEnvironmentUpdate asynchronously, invoking a callback when done
-- @param AbortEnvironmentUpdateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AbortEnvironmentUpdateAsync(AbortEnvironmentUpdateMessage, cb)
	assert(AbortEnvironmentUpdateMessage, "You must provide a AbortEnvironmentUpdateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortEnvironmentUpdate",
	}
	for header,value in pairs(AbortEnvironmentUpdateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AbortEnvironmentUpdateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AbortEnvironmentUpdate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortEnvironmentUpdateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AbortEnvironmentUpdateSync(AbortEnvironmentUpdateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortEnvironmentUpdateAsync(AbortEnvironmentUpdateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestartAppServer asynchronously, invoking a callback when done
-- @param RestartAppServerMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestartAppServerAsync(RestartAppServerMessage, cb)
	assert(RestartAppServerMessage, "You must provide a RestartAppServerMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestartAppServer",
	}
	for header,value in pairs(RestartAppServerMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestartAppServerMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestartAppServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestartAppServerMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RestartAppServerSync(RestartAppServerMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestartAppServerAsync(RestartAppServerMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEnvironmentConfiguration asynchronously, invoking a callback when done
-- @param DeleteEnvironmentConfigurationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEnvironmentConfigurationAsync(DeleteEnvironmentConfigurationMessage, cb)
	assert(DeleteEnvironmentConfigurationMessage, "You must provide a DeleteEnvironmentConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEnvironmentConfiguration",
	}
	for header,value in pairs(DeleteEnvironmentConfigurationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEnvironmentConfigurationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEnvironmentConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEnvironmentConfigurationMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEnvironmentConfigurationSync(DeleteEnvironmentConfigurationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEnvironmentConfigurationAsync(DeleteEnvironmentConfigurationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEnvironment asynchronously, invoking a callback when done
-- @param CreateEnvironmentMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEnvironmentAsync(CreateEnvironmentMessage, cb)
	assert(CreateEnvironmentMessage, "You must provide a CreateEnvironmentMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEnvironment",
	}
	for header,value in pairs(CreateEnvironmentMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEnvironmentMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEnvironmentMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEnvironmentSync(CreateEnvironmentMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEnvironmentAsync(CreateEnvironmentMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SwapEnvironmentCNAMEs asynchronously, invoking a callback when done
-- @param SwapEnvironmentCNAMEsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SwapEnvironmentCNAMEsAsync(SwapEnvironmentCNAMEsMessage, cb)
	assert(SwapEnvironmentCNAMEsMessage, "You must provide a SwapEnvironmentCNAMEsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SwapEnvironmentCNAMEs",
	}
	for header,value in pairs(SwapEnvironmentCNAMEsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SwapEnvironmentCNAMEsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SwapEnvironmentCNAMEs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SwapEnvironmentCNAMEsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.SwapEnvironmentCNAMEsSync(SwapEnvironmentCNAMEsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SwapEnvironmentCNAMEsAsync(SwapEnvironmentCNAMEsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePlatformVersion asynchronously, invoking a callback when done
-- @param DeletePlatformVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePlatformVersionAsync(DeletePlatformVersionRequest, cb)
	assert(DeletePlatformVersionRequest, "You must provide a DeletePlatformVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePlatformVersion",
	}
	for header,value in pairs(DeletePlatformVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePlatformVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePlatformVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePlatformVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePlatformVersionSync(DeletePlatformVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePlatformVersionAsync(DeletePlatformVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStorageLocation asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStorageLocationAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStorageLocation",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStorageLocation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStorageLocationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStorageLocationAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebuildEnvironment asynchronously, invoking a callback when done
-- @param RebuildEnvironmentMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebuildEnvironmentAsync(RebuildEnvironmentMessage, cb)
	assert(RebuildEnvironmentMessage, "You must provide a RebuildEnvironmentMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebuildEnvironment",
	}
	for header,value in pairs(RebuildEnvironmentMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebuildEnvironmentMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebuildEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebuildEnvironmentMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RebuildEnvironmentSync(RebuildEnvironmentMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebuildEnvironmentAsync(RebuildEnvironmentMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceMessage, cb)
	assert(ListTagsForResourceMessage, "You must provide a ListTagsForResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApplications asynchronously, invoking a callback when done
-- @param DescribeApplicationsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeApplicationsAsync(DescribeApplicationsMessage, cb)
	assert(DescribeApplicationsMessage, "You must provide a DescribeApplicationsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeApplications",
	}
	for header,value in pairs(DescribeApplicationsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeApplicationsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeApplicationsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeApplicationsSync(DescribeApplicationsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeApplicationsAsync(DescribeApplicationsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlatformVersion asynchronously, invoking a callback when done
-- @param CreatePlatformVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePlatformVersionAsync(CreatePlatformVersionRequest, cb)
	assert(CreatePlatformVersionRequest, "You must provide a CreatePlatformVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlatformVersion",
	}
	for header,value in pairs(CreatePlatformVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePlatformVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlatformVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlatformVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePlatformVersionSync(CreatePlatformVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlatformVersionAsync(CreatePlatformVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePlatformVersion asynchronously, invoking a callback when done
-- @param DescribePlatformVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePlatformVersionAsync(DescribePlatformVersionRequest, cb)
	assert(DescribePlatformVersionRequest, "You must provide a DescribePlatformVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePlatformVersion",
	}
	for header,value in pairs(DescribePlatformVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePlatformVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePlatformVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePlatformVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePlatformVersionSync(DescribePlatformVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePlatformVersionAsync(DescribePlatformVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountAttributesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountAttributes",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAccountAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAttributesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstancesHealth asynchronously, invoking a callback when done
-- @param DescribeInstancesHealthRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInstancesHealthAsync(DescribeInstancesHealthRequest, cb)
	assert(DescribeInstancesHealthRequest, "You must provide a DescribeInstancesHealthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeInstancesHealth",
	}
	for header,value in pairs(DescribeInstancesHealthRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancesHealthRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstancesHealth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancesHealthRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeInstancesHealthSync(DescribeInstancesHealthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancesHealthAsync(DescribeInstancesHealthRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplicationVersion asynchronously, invoking a callback when done
-- @param CreateApplicationVersionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApplicationVersionAsync(CreateApplicationVersionMessage, cb)
	assert(CreateApplicationVersionMessage, "You must provide a CreateApplicationVersionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApplicationVersion",
	}
	for header,value in pairs(CreateApplicationVersionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateApplicationVersionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplicationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationVersionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApplicationVersionSync(CreateApplicationVersionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationVersionAsync(CreateApplicationVersionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationTemplate asynchronously, invoking a callback when done
-- @param CreateConfigurationTemplateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConfigurationTemplateAsync(CreateConfigurationTemplateMessage, cb)
	assert(CreateConfigurationTemplateMessage, "You must provide a CreateConfigurationTemplateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateConfigurationTemplate",
	}
	for header,value in pairs(CreateConfigurationTemplateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConfigurationTemplateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConfigurationTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationTemplateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConfigurationTemplateSync(CreateConfigurationTemplateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationTemplateAsync(CreateConfigurationTemplateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CheckDNSAvailability asynchronously, invoking a callback when done
-- @param CheckDNSAvailabilityMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CheckDNSAvailabilityAsync(CheckDNSAvailabilityMessage, cb)
	assert(CheckDNSAvailabilityMessage, "You must provide a CheckDNSAvailabilityMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CheckDNSAvailability",
	}
	for header,value in pairs(CheckDNSAvailabilityMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CheckDNSAvailabilityMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CheckDNSAvailability synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CheckDNSAvailabilityMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CheckDNSAvailabilitySync(CheckDNSAvailabilityMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CheckDNSAvailabilityAsync(CheckDNSAvailabilityMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
