--- GENERATED CODE - DO NOT MODIFY
-- AmazonMQ (mq-2017-11-27)

local M = {}

M.metadata = {
	api_version = "2017-11-27",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "mq",
	service_abbreviation = "",
	service_full_name = "AmazonMQ",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mq-2017-11-27",
}

local keys = {}
local asserts = {}

keys.UpdateUserRequest = { ["ConsoleAccess"] = true, ["Username"] = true, ["Password"] = true, ["BrokerId"] = true, ["Groups"] = true, nil }

function asserts.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["ConsoleAccess"] then asserts.Assert__boolean(struct["ConsoleAccess"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["Password"] then asserts.Assert__string(struct["Password"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Groups"] then asserts.Assert__listOf__string(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRequest[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
-- Updates the information for an ActiveMQ user.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsoleAccess [__boolean] Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
-- * Username [__string] Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * Password [__string] The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- * Groups [__listOf__string] The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- Required key: Username
-- Required key: BrokerId
-- @return UpdateUserRequest structure as a key-value pair table
function M.UpdateUserRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{username}"] = args["Username"],
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsoleAccess"] = args["ConsoleAccess"],
		["Username"] = args["Username"],
		["Password"] = args["Password"],
		["BrokerId"] = args["BrokerId"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertUpdateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogsSummary = { ["Audit"] = true, ["GeneralLogGroup"] = true, ["General"] = true, ["Pending"] = true, ["AuditLogGroup"] = true, nil }

function asserts.AssertLogsSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogsSummary to be of type 'table'")
	if struct["Audit"] then asserts.Assert__boolean(struct["Audit"]) end
	if struct["GeneralLogGroup"] then asserts.Assert__string(struct["GeneralLogGroup"]) end
	if struct["General"] then asserts.Assert__boolean(struct["General"]) end
	if struct["Pending"] then asserts.AssertPendingLogs(struct["Pending"]) end
	if struct["AuditLogGroup"] then asserts.Assert__string(struct["AuditLogGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogsSummary[k], "LogsSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogsSummary
-- The list of information about logs currently enabled and pending to be deployed for the specified broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Audit [__boolean] Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.
-- * GeneralLogGroup [__string] The location of the CloudWatch Logs log group where general logs are sent.
-- * General [__boolean] Enables general logging.
-- * Pending [PendingLogs] The list of information about logs pending to be deployed for the specified broker.
-- * AuditLogGroup [__string] The location of the CloudWatch Logs log group where audit logs are sent.
-- @return LogsSummary structure as a key-value pair table
function M.LogsSummary(args)
	assert(args, "You must provide an argument table when creating LogsSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Audit"] = args["Audit"],
		["GeneralLogGroup"] = args["GeneralLogGroup"],
		["General"] = args["General"],
		["Pending"] = args["Pending"],
		["AuditLogGroup"] = args["AuditLogGroup"],
	}
	asserts.AssertLogsSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBrokerRequest = { ["Logs"] = true, ["PubliclyAccessible"] = true, ["HostInstanceType"] = true, ["SubnetIds"] = true, ["CreatorRequestId"] = true, ["MaintenanceWindowStartTime"] = true, ["AutoMinorVersionUpgrade"] = true, ["BrokerName"] = true, ["EngineVersion"] = true, ["SecurityGroups"] = true, ["Configuration"] = true, ["EngineType"] = true, ["DeploymentMode"] = true, ["Users"] = true, nil }

function asserts.AssertCreateBrokerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBrokerRequest to be of type 'table'")
	if struct["Logs"] then asserts.AssertLogs(struct["Logs"]) end
	if struct["PubliclyAccessible"] then asserts.Assert__boolean(struct["PubliclyAccessible"]) end
	if struct["HostInstanceType"] then asserts.Assert__string(struct["HostInstanceType"]) end
	if struct["SubnetIds"] then asserts.Assert__listOf__string(struct["SubnetIds"]) end
	if struct["CreatorRequestId"] then asserts.Assert__string(struct["CreatorRequestId"]) end
	if struct["MaintenanceWindowStartTime"] then asserts.AssertWeeklyStartTime(struct["MaintenanceWindowStartTime"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.Assert__boolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["BrokerName"] then asserts.Assert__string(struct["BrokerName"]) end
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["SecurityGroups"] then asserts.Assert__listOf__string(struct["SecurityGroups"]) end
	if struct["Configuration"] then asserts.AssertConfigurationId(struct["Configuration"]) end
	if struct["EngineType"] then asserts.AssertEngineType(struct["EngineType"]) end
	if struct["DeploymentMode"] then asserts.AssertDeploymentMode(struct["DeploymentMode"]) end
	if struct["Users"] then asserts.Assert__listOfUser(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBrokerRequest[k], "CreateBrokerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBrokerRequest
-- Creates a broker using the specified properties.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logs [Logs] Enables Amazon CloudWatch logging for brokers.
-- * PubliclyAccessible [__boolean] Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
-- * HostInstanceType [__string] Required. The broker's instance type.
-- * SubnetIds [__listOf__string] The list of groups (2 maximum) that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.
-- * CreatorRequestId [__string] The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
-- * MaintenanceWindowStartTime [WeeklyStartTime] The parameters that determine the WeeklyStartTime.
-- * AutoMinorVersionUpgrade [__boolean] Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
-- * BrokerName [__string] Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- * EngineVersion [__string] Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
-- * SecurityGroups [__listOf__string] The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.
-- * Configuration [ConfigurationId] A list of information about the configuration.
-- * EngineType [EngineType] Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
-- * DeploymentMode [DeploymentMode] Required. The deployment mode of the broker.
-- * Users [__listOfUser] Required. The list of ActiveMQ users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- @return CreateBrokerRequest structure as a key-value pair table
function M.CreateBrokerRequest(args)
	assert(args, "You must provide an argument table when creating CreateBrokerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Logs"] = args["Logs"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["HostInstanceType"] = args["HostInstanceType"],
		["SubnetIds"] = args["SubnetIds"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["MaintenanceWindowStartTime"] = args["MaintenanceWindowStartTime"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["BrokerName"] = args["BrokerName"],
		["EngineVersion"] = args["EngineVersion"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Configuration"] = args["Configuration"],
		["EngineType"] = args["EngineType"],
		["DeploymentMode"] = args["DeploymentMode"],
		["Users"] = args["Users"],
	}
	asserts.AssertCreateBrokerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBrokerResponse = { ["BrokerId"] = true, nil }

function asserts.AssertDeleteBrokerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBrokerResponse to be of type 'table'")
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBrokerResponse[k], "DeleteBrokerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBrokerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- @return DeleteBrokerResponse structure as a key-value pair table
function M.DeleteBrokerResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBrokerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertDeleteBrokerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BrokerSummary = { ["Created"] = true, ["HostInstanceType"] = true, ["BrokerState"] = true, ["BrokerArn"] = true, ["BrokerId"] = true, ["BrokerName"] = true, ["DeploymentMode"] = true, nil }

function asserts.AssertBrokerSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BrokerSummary to be of type 'table'")
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	if struct["HostInstanceType"] then asserts.Assert__string(struct["HostInstanceType"]) end
	if struct["BrokerState"] then asserts.AssertBrokerState(struct["BrokerState"]) end
	if struct["BrokerArn"] then asserts.Assert__string(struct["BrokerArn"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["BrokerName"] then asserts.Assert__string(struct["BrokerName"]) end
	if struct["DeploymentMode"] then asserts.AssertDeploymentMode(struct["DeploymentMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.BrokerSummary[k], "BrokerSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BrokerSummary
-- The Amazon Resource Name (ARN) of the broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Created [__timestampIso8601] The time when the broker was created.
-- * HostInstanceType [__string] The broker's instance type.
-- * BrokerState [BrokerState] The status of the broker.
-- * BrokerArn [__string] The Amazon Resource Name (ARN) of the broker.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- * BrokerName [__string] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- * DeploymentMode [DeploymentMode] Required. The deployment mode of the broker.
-- @return BrokerSummary structure as a key-value pair table
function M.BrokerSummary(args)
	assert(args, "You must provide an argument table when creating BrokerSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Created"] = args["Created"],
		["HostInstanceType"] = args["HostInstanceType"],
		["BrokerState"] = args["BrokerState"],
		["BrokerArn"] = args["BrokerArn"],
		["BrokerId"] = args["BrokerId"],
		["BrokerName"] = args["BrokerName"],
		["DeploymentMode"] = args["DeploymentMode"],
	}
	asserts.AssertBrokerSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserRequest = { ["Username"] = true, ["BrokerId"] = true, nil }

function asserts.AssertDescribeUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserRequest[k], "DescribeUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [__string] The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- Required key: Username
-- Required key: BrokerId
-- @return DescribeUserRequest structure as a key-value pair table
function M.DescribeUserRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{username}"] = args["Username"],
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertDescribeUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBrokerResponse = { ["PendingEngineVersion"] = true, ["Logs"] = true, ["PubliclyAccessible"] = true, ["Created"] = true, ["SubnetIds"] = true, ["HostInstanceType"] = true, ["BrokerState"] = true, ["MaintenanceWindowStartTime"] = true, ["AutoMinorVersionUpgrade"] = true, ["BrokerArn"] = true, ["BrokerInstances"] = true, ["BrokerId"] = true, ["Users"] = true, ["EngineVersion"] = true, ["BrokerName"] = true, ["SecurityGroups"] = true, ["EngineType"] = true, ["DeploymentMode"] = true, ["Configurations"] = true, nil }

function asserts.AssertDescribeBrokerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBrokerResponse to be of type 'table'")
	if struct["PendingEngineVersion"] then asserts.Assert__string(struct["PendingEngineVersion"]) end
	if struct["Logs"] then asserts.AssertLogsSummary(struct["Logs"]) end
	if struct["PubliclyAccessible"] then asserts.Assert__boolean(struct["PubliclyAccessible"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	if struct["SubnetIds"] then asserts.Assert__listOf__string(struct["SubnetIds"]) end
	if struct["HostInstanceType"] then asserts.Assert__string(struct["HostInstanceType"]) end
	if struct["BrokerState"] then asserts.AssertBrokerState(struct["BrokerState"]) end
	if struct["MaintenanceWindowStartTime"] then asserts.AssertWeeklyStartTime(struct["MaintenanceWindowStartTime"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.Assert__boolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["BrokerArn"] then asserts.Assert__string(struct["BrokerArn"]) end
	if struct["BrokerInstances"] then asserts.Assert__listOfBrokerInstance(struct["BrokerInstances"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Users"] then asserts.Assert__listOfUserSummary(struct["Users"]) end
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["BrokerName"] then asserts.Assert__string(struct["BrokerName"]) end
	if struct["SecurityGroups"] then asserts.Assert__listOf__string(struct["SecurityGroups"]) end
	if struct["EngineType"] then asserts.AssertEngineType(struct["EngineType"]) end
	if struct["DeploymentMode"] then asserts.AssertDeploymentMode(struct["DeploymentMode"]) end
	if struct["Configurations"] then asserts.AssertConfigurations(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBrokerResponse[k], "DescribeBrokerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBrokerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingEngineVersion [__string] The version of the broker engine to upgrade to.
-- * Logs [LogsSummary] The list of information about logs currently enabled and pending to be deployed for the specified broker.
-- * PubliclyAccessible [__boolean] Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
-- * Created [__timestampIso8601] The time when the broker was created.
-- * SubnetIds [__listOf__string] The list of groups (2 maximum) that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.
-- * HostInstanceType [__string] The broker's instance type.
-- * BrokerState [BrokerState] The status of the broker.
-- * MaintenanceWindowStartTime [WeeklyStartTime] The parameters that determine the WeeklyStartTime.
-- * AutoMinorVersionUpgrade [__boolean] Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
-- * BrokerArn [__string] The Amazon Resource Name (ARN) of the broker.
-- * BrokerInstances [__listOfBrokerInstance] A list of information about allocated brokers.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- * Users [__listOfUserSummary] The list of all ActiveMQ usernames for the specified broker.
-- * EngineVersion [__string] The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
-- * BrokerName [__string] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- * SecurityGroups [__listOf__string] Required. The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.
-- * EngineType [EngineType] Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
-- * DeploymentMode [DeploymentMode] Required. The deployment mode of the broker.
-- * Configurations [Configurations] The list of all revisions for the specified configuration.
-- @return DescribeBrokerResponse structure as a key-value pair table
function M.DescribeBrokerResponse(args)
	assert(args, "You must provide an argument table when creating DescribeBrokerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingEngineVersion"] = args["PendingEngineVersion"],
		["Logs"] = args["Logs"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["Created"] = args["Created"],
		["SubnetIds"] = args["SubnetIds"],
		["HostInstanceType"] = args["HostInstanceType"],
		["BrokerState"] = args["BrokerState"],
		["MaintenanceWindowStartTime"] = args["MaintenanceWindowStartTime"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["BrokerArn"] = args["BrokerArn"],
		["BrokerInstances"] = args["BrokerInstances"],
		["BrokerId"] = args["BrokerId"],
		["Users"] = args["Users"],
		["EngineVersion"] = args["EngineVersion"],
		["BrokerName"] = args["BrokerName"],
		["SecurityGroups"] = args["SecurityGroups"],
		["EngineType"] = args["EngineType"],
		["DeploymentMode"] = args["DeploymentMode"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertDescribeBrokerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConfigurationResponse = { ["LatestRevision"] = true, ["Name"] = true, ["Id"] = true, ["Arn"] = true, ["Created"] = true, nil }

function asserts.AssertCreateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationResponse to be of type 'table'")
	if struct["LatestRevision"] then asserts.AssertConfigurationRevision(struct["LatestRevision"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationResponse[k], "CreateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestRevision [ConfigurationRevision] The latest revision of the configuration.
-- * Name [__string] Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
-- * Id [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Arn [__string] Required. The Amazon Resource Name (ARN) of the configuration.
-- * Created [__timestampIso8601] Required. The date and time of the configuration.
-- @return CreateConfigurationResponse structure as a key-value pair table
function M.CreateConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestRevision"] = args["LatestRevision"],
		["Name"] = args["Name"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Created"] = args["Created"],
	}
	asserts.AssertCreateConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["Username"] = true, ["BrokerId"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [__string] The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- Required key: Username
-- Required key: BrokerId
-- @return DeleteUserRequest structure as a key-value pair table
function M.DeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{username}"] = args["Username"],
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationsRequest[k], "ListConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * MaxResults [MaxResults] The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
-- @return ListConfigurationsRequest structure as a key-value pair table
function M.ListConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListConfigurationsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRequest = { ["ConfigurationId"] = true, nil }

function asserts.AssertDescribeConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRequest to be of type 'table'")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRequest[k], "DescribeConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] The unique ID that Amazon MQ generates for the configuration.
-- Required key: ConfigurationId
-- @return DescribeConfigurationRequest structure as a key-value pair table
function M.DescribeConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{configuration-id}"] = args["ConfigurationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
	}
	asserts.AssertDescribeConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateBrokerRequest = { ["EngineVersion"] = true, ["Configuration"] = true, ["BrokerId"] = true, ["Logs"] = true, ["AutoMinorVersionUpgrade"] = true, nil }

function asserts.AssertUpdateBrokerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBrokerRequest to be of type 'table'")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["Configuration"] then asserts.AssertConfigurationId(struct["Configuration"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Logs"] then asserts.AssertLogs(struct["Logs"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.Assert__boolean(struct["AutoMinorVersionUpgrade"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBrokerRequest[k], "UpdateBrokerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBrokerRequest
-- Updates the broker using the specified properties.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineVersion [__string] The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
-- * Configuration [ConfigurationId] A list of information about the configuration.
-- * BrokerId [__string] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- * Logs [Logs] Enables Amazon CloudWatch logging for brokers.
-- * AutoMinorVersionUpgrade [__boolean] Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
-- Required key: BrokerId
-- @return UpdateBrokerRequest structure as a key-value pair table
function M.UpdateBrokerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateBrokerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineVersion"] = args["EngineVersion"],
		["Configuration"] = args["Configuration"],
		["BrokerId"] = args["BrokerId"],
		["Logs"] = args["Logs"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
	}
	asserts.AssertUpdateBrokerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingLogs = { ["Audit"] = true, ["General"] = true, nil }

function asserts.AssertPendingLogs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingLogs to be of type 'table'")
	if struct["Audit"] then asserts.Assert__boolean(struct["Audit"]) end
	if struct["General"] then asserts.Assert__boolean(struct["General"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingLogs[k], "PendingLogs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingLogs
-- The list of information about logs to be enabled for the specified broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Audit [__boolean] Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.
-- * General [__boolean] Enables general logging.
-- @return PendingLogs structure as a key-value pair table
function M.PendingLogs(args)
	assert(args, "You must provide an argument table when creating PendingLogs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Audit"] = args["Audit"],
		["General"] = args["General"],
	}
	asserts.AssertPendingLogs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationRevisionsRequest = { ["ConfigurationId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListConfigurationRevisionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationRevisionsRequest to be of type 'table'")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationRevisionsRequest[k], "ListConfigurationRevisionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationRevisionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] The unique ID that Amazon MQ generates for the configuration.
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * MaxResults [MaxResults] The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
-- Required key: ConfigurationId
-- @return ListConfigurationRevisionsRequest structure as a key-value pair table
function M.ListConfigurationRevisionsRequest(args)
	assert(args, "You must provide an argument table when creating ListConfigurationRevisionsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{configuration-id}"] = args["ConfigurationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListConfigurationRevisionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConfigurationRequest = { ["EngineType"] = true, ["Name"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertCreateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationRequest to be of type 'table'")
	if struct["EngineType"] then asserts.AssertEngineType(struct["EngineType"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationRequest[k], "CreateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationRequest
-- Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineType [EngineType] Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
-- * Name [__string] Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
-- * EngineVersion [__string] Required. The version of the broker engine. Note: Currently, Amazon MQ supports only 5.15.6 and 5.15.0.
-- @return CreateConfigurationRequest structure as a key-value pair table
function M.CreateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineType"] = args["EngineType"],
		["Name"] = args["Name"],
		["EngineVersion"] = args["EngineVersion"],
	}
	asserts.AssertCreateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserResponse = { nil }

function asserts.AssertDeleteUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserResponse[k], "DeleteUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserResponse structure as a key-value pair table
function M.DeleteUserResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootBrokerResponse = { nil }

function asserts.AssertRebootBrokerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootBrokerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RebootBrokerResponse[k], "RebootBrokerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootBrokerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RebootBrokerResponse structure as a key-value pair table
function M.RebootBrokerResponse(args)
	assert(args, "You must provide an argument table when creating RebootBrokerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRebootBrokerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BrokerInstance = { ["IpAddress"] = true, ["Endpoints"] = true, ["ConsoleURL"] = true, nil }

function asserts.AssertBrokerInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BrokerInstance to be of type 'table'")
	if struct["IpAddress"] then asserts.Assert__string(struct["IpAddress"]) end
	if struct["Endpoints"] then asserts.Assert__listOf__string(struct["Endpoints"]) end
	if struct["ConsoleURL"] then asserts.Assert__string(struct["ConsoleURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.BrokerInstance[k], "BrokerInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BrokerInstance
-- Returns information about all brokers.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddress [__string] The IP address of the Elastic Network Interface (ENI) attached to the broker.
-- * Endpoints [__listOf__string] The broker's wire-level protocol endpoints.
-- * ConsoleURL [__string] The URL of the broker's ActiveMQ Web Console.
-- @return BrokerInstance structure as a key-value pair table
function M.BrokerInstance(args)
	assert(args, "You must provide an argument table when creating BrokerInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddress"] = args["IpAddress"],
		["Endpoints"] = args["Endpoints"],
		["ConsoleURL"] = args["ConsoleURL"],
	}
	asserts.AssertBrokerInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserResponse = { nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateUserResponse structure as a key-value pair table
function M.CreateUserResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserSummary = { ["PendingChange"] = true, ["Username"] = true, nil }

function asserts.AssertUserSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserSummary to be of type 'table'")
	if struct["PendingChange"] then asserts.AssertChangeType(struct["PendingChange"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserSummary[k], "UserSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserSummary
-- Returns a list of all ActiveMQ users.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingChange [ChangeType] The type of change pending for the ActiveMQ user.
-- * Username [__string] Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- @return UserSummary structure as a key-value pair table
function M.UserSummary(args)
	assert(args, "You must provide an argument table when creating UserSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingChange"] = args["PendingChange"],
		["Username"] = args["Username"],
	}
	asserts.AssertUserSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Configuration = { ["LatestRevision"] = true, ["Description"] = true, ["Created"] = true, ["EngineVersion"] = true, ["EngineType"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Configuration to be of type 'table'")
	if struct["LatestRevision"] then asserts.AssertConfigurationRevision(struct["LatestRevision"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["EngineType"] then asserts.AssertEngineType(struct["EngineType"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Configuration[k], "Configuration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Configuration
-- Returns information about all configurations.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestRevision [ConfigurationRevision] Required. The latest revision of the configuration.
-- * Description [__string] Required. The description of the configuration.
-- * Created [__timestampIso8601] Required. The date and time of the configuration revision.
-- * EngineVersion [__string] Required. The version of the broker engine.
-- * EngineType [EngineType] Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
-- * Id [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Arn [__string] Required. The ARN of the configuration.
-- * Name [__string] Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
-- @return Configuration structure as a key-value pair table
function M.Configuration(args)
	assert(args, "You must provide an argument table when creating Configuration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestRevision"] = args["LatestRevision"],
		["Description"] = args["Description"],
		["Created"] = args["Created"],
		["EngineVersion"] = args["EngineVersion"],
		["EngineType"] = args["EngineType"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersResponse = { ["NextToken"] = true, ["BrokerId"] = true, ["Users"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Users"] then asserts.Assert__listOfUserSummary(struct["Users"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin5Max100(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * BrokerId [__string] Required. The unique ID that Amazon MQ generates for the broker.
-- * Users [__listOfUserSummary] Required. The list of all ActiveMQ usernames for the specified broker.
-- * MaxResults [__integerMin5Max100] Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
-- @return ListUsersResponse structure as a key-value pair table
function M.ListUsersResponse(args)
	assert(args, "You must provide an argument table when creating ListUsersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["BrokerId"] = args["BrokerId"],
		["Users"] = args["Users"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["ConsoleAccess"] = true, ["Username"] = true, ["Password"] = true, ["Groups"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	if struct["ConsoleAccess"] then asserts.Assert__boolean(struct["ConsoleAccess"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["Password"] then asserts.Assert__string(struct["Password"]) end
	if struct["Groups"] then asserts.Assert__listOf__string(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- An ActiveMQ user associated with the broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsoleAccess [__boolean] Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
-- * Username [__string] Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * Password [__string] Required. The password of the ActiveMQ user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
-- * Groups [__listOf__string] The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- @return User structure as a key-value pair table
function M.User(args)
	assert(args, "You must provide an argument table when creating User")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsoleAccess"] = args["ConsoleAccess"],
		["Username"] = args["Username"],
		["Password"] = args["Password"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationResponse = { ["LatestRevision"] = true, ["Description"] = true, ["Created"] = true, ["EngineVersion"] = true, ["EngineType"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertDescribeConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationResponse to be of type 'table'")
	if struct["LatestRevision"] then asserts.AssertConfigurationRevision(struct["LatestRevision"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["EngineType"] then asserts.AssertEngineType(struct["EngineType"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationResponse[k], "DescribeConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestRevision [ConfigurationRevision] Required. The latest revision of the configuration.
-- * Description [__string] Required. The description of the configuration.
-- * Created [__timestampIso8601] Required. The date and time of the configuration revision.
-- * EngineVersion [__string] Required. The version of the broker engine.
-- * EngineType [EngineType] Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
-- * Id [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Arn [__string] Required. The ARN of the configuration.
-- * Name [__string] Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
-- @return DescribeConfigurationResponse structure as a key-value pair table
function M.DescribeConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestRevision"] = args["LatestRevision"],
		["Description"] = args["Description"],
		["Created"] = args["Created"],
		["EngineVersion"] = args["EngineVersion"],
		["EngineType"] = args["EngineType"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPendingChanges = { ["ConsoleAccess"] = true, ["PendingChange"] = true, ["Groups"] = true, nil }

function asserts.AssertUserPendingChanges(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPendingChanges to be of type 'table'")
	if struct["ConsoleAccess"] then asserts.Assert__boolean(struct["ConsoleAccess"]) end
	if struct["PendingChange"] then asserts.AssertChangeType(struct["PendingChange"]) end
	if struct["Groups"] then asserts.Assert__listOf__string(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPendingChanges[k], "UserPendingChanges contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPendingChanges
-- Returns information about the status of the changes pending for the ActiveMQ user.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsoleAccess [__boolean] Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
-- * PendingChange [ChangeType] Required. The type of change pending for the ActiveMQ user.
-- * Groups [__listOf__string] The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- @return UserPendingChanges structure as a key-value pair table
function M.UserPendingChanges(args)
	assert(args, "You must provide an argument table when creating UserPendingChanges")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsoleAccess"] = args["ConsoleAccess"],
		["PendingChange"] = args["PendingChange"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertUserPendingChanges(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateBrokerResponse = { ["EngineVersion"] = true, ["Configuration"] = true, ["BrokerId"] = true, ["Logs"] = true, ["AutoMinorVersionUpgrade"] = true, nil }

function asserts.AssertUpdateBrokerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBrokerResponse to be of type 'table'")
	if struct["EngineVersion"] then asserts.Assert__string(struct["EngineVersion"]) end
	if struct["Configuration"] then asserts.AssertConfigurationId(struct["Configuration"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Logs"] then asserts.AssertLogs(struct["Logs"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.Assert__boolean(struct["AutoMinorVersionUpgrade"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBrokerResponse[k], "UpdateBrokerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBrokerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineVersion [__string] The version of the broker engine to upgrade to.
-- * Configuration [ConfigurationId] The ID of the updated configuration.
-- * BrokerId [__string] Required. The unique ID that Amazon MQ generates for the broker.
-- * Logs [Logs] The list of information about logs to be enabled for the specified broker.
-- * AutoMinorVersionUpgrade [__boolean] The new value of automatic upgrades to new minor version for brokers.
-- @return UpdateBrokerResponse structure as a key-value pair table
function M.UpdateBrokerResponse(args)
	assert(args, "You must provide an argument table when creating UpdateBrokerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineVersion"] = args["EngineVersion"],
		["Configuration"] = args["Configuration"],
		["BrokerId"] = args["BrokerId"],
		["Logs"] = args["Logs"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
	}
	asserts.AssertUpdateBrokerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersRequest = { ["NextToken"] = true, ["BrokerId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- * MaxResults [MaxResults] The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
-- Required key: BrokerId
-- @return ListUsersRequest structure as a key-value pair table
function M.ListUsersRequest(args)
	assert(args, "You must provide an argument table when creating ListUsersRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["BrokerId"] = args["BrokerId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationRequest = { ["ConfigurationId"] = true, ["Data"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationRequest to be of type 'table'")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	if struct["Data"] then asserts.Assert__string(struct["Data"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationRequest[k], "UpdateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationRequest
-- Updates the specified configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] The unique ID that Amazon MQ generates for the configuration.
-- * Data [__string] Required. The base64-encoded XML configuration.
-- * Description [__string] The description of the configuration.
-- Required key: ConfigurationId
-- @return UpdateConfigurationRequest structure as a key-value pair table
function M.UpdateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{configuration-id}"] = args["ConfigurationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["Data"] = args["Data"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SanitizationWarning = { ["ElementName"] = true, ["AttributeName"] = true, ["Reason"] = true, nil }

function asserts.AssertSanitizationWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SanitizationWarning to be of type 'table'")
	if struct["ElementName"] then asserts.Assert__string(struct["ElementName"]) end
	if struct["AttributeName"] then asserts.Assert__string(struct["AttributeName"]) end
	if struct["Reason"] then asserts.AssertSanitizationWarningReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.SanitizationWarning[k], "SanitizationWarning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SanitizationWarning
-- Returns information about the XML element or attribute that was sanitized in the configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElementName [__string] The name of the XML element that has been sanitized.
-- * AttributeName [__string] The name of the XML attribute that has been sanitized.
-- * Reason [SanitizationWarningReason] Required. The reason for which the XML elements or attributes were sanitized.
-- @return SanitizationWarning structure as a key-value pair table
function M.SanitizationWarning(args)
	assert(args, "You must provide an argument table when creating SanitizationWarning")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElementName"] = args["ElementName"],
		["AttributeName"] = args["AttributeName"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertSanitizationWarning(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationRevisionsResponse = { ["ConfigurationId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Revisions"] = true, nil }

function asserts.AssertListConfigurationRevisionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationRevisionsResponse to be of type 'table'")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__integer(struct["MaxResults"]) end
	if struct["Revisions"] then asserts.Assert__listOfConfigurationRevision(struct["Revisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationRevisionsResponse[k], "ListConfigurationRevisionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationRevisionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] The unique ID that Amazon MQ generates for the configuration.
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * MaxResults [__integer] The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.
-- * Revisions [__listOfConfigurationRevision] The list of all revisions for the specified configuration.
-- @return ListConfigurationRevisionsResponse structure as a key-value pair table
function M.ListConfigurationRevisionsResponse(args)
	assert(args, "You must provide an argument table when creating ListConfigurationRevisionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Revisions"] = args["Revisions"],
	}
	asserts.AssertListConfigurationRevisionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBrokersResponse = { ["BrokerSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListBrokersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBrokersResponse to be of type 'table'")
	if struct["BrokerSummaries"] then asserts.Assert__listOfBrokerSummary(struct["BrokerSummaries"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBrokersResponse[k], "ListBrokersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBrokersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerSummaries [__listOfBrokerSummary] A list of information about all brokers.
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- @return ListBrokersResponse structure as a key-value pair table
function M.ListBrokersResponse(args)
	assert(args, "You must provide an argument table when creating ListBrokersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerSummaries"] = args["BrokerSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListBrokersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["ConsoleAccess"] = true, ["Username"] = true, ["Password"] = true, ["BrokerId"] = true, ["Groups"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["ConsoleAccess"] then asserts.Assert__boolean(struct["ConsoleAccess"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["Password"] then asserts.Assert__string(struct["Password"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Groups"] then asserts.Assert__listOf__string(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
-- Creates a new ActiveMQ user.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsoleAccess [__boolean] Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
-- * Username [__string] The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * Password [__string] Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- * Groups [__listOf__string] The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- Required key: Username
-- Required key: BrokerId
-- @return CreateUserRequest structure as a key-value pair table
function M.CreateUserRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{username}"] = args["Username"],
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsoleAccess"] = args["ConsoleAccess"],
		["Username"] = args["Username"],
		["Password"] = args["Password"],
		["BrokerId"] = args["BrokerId"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBrokerRequest = { ["BrokerId"] = true, nil }

function asserts.AssertDeleteBrokerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBrokerRequest to be of type 'table'")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBrokerRequest[k], "DeleteBrokerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBrokerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerId [__string] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- Required key: BrokerId
-- @return DeleteBrokerRequest structure as a key-value pair table
function M.DeleteBrokerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBrokerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertDeleteBrokerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Configurations = { ["Current"] = true, ["Pending"] = true, ["History"] = true, nil }

function asserts.AssertConfigurations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Configurations to be of type 'table'")
	if struct["Current"] then asserts.AssertConfigurationId(struct["Current"]) end
	if struct["Pending"] then asserts.AssertConfigurationId(struct["Pending"]) end
	if struct["History"] then asserts.Assert__listOfConfigurationId(struct["History"]) end
	for k,_ in pairs(struct) do
		assert(keys.Configurations[k], "Configurations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Configurations
-- Broker configuration information
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Current [ConfigurationId] The current configuration of the broker.
-- * Pending [ConfigurationId] The pending configuration of the broker.
-- * History [__listOfConfigurationId] The history of configurations applied to the broker.
-- @return Configurations structure as a key-value pair table
function M.Configurations(args)
	assert(args, "You must provide an argument table when creating Configurations")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Current"] = args["Current"],
		["Pending"] = args["Pending"],
		["History"] = args["History"],
	}
	asserts.AssertConfigurations(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBrokersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListBrokersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBrokersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBrokersRequest[k], "ListBrokersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBrokersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * MaxResults [MaxResults] The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
-- @return ListBrokersRequest structure as a key-value pair table
function M.ListBrokersRequest(args)
	assert(args, "You must provide an argument table when creating ListBrokersRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListBrokersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Logs = { ["Audit"] = true, ["General"] = true, nil }

function asserts.AssertLogs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Logs to be of type 'table'")
	if struct["Audit"] then asserts.Assert__boolean(struct["Audit"]) end
	if struct["General"] then asserts.Assert__boolean(struct["General"]) end
	for k,_ in pairs(struct) do
		assert(keys.Logs[k], "Logs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Logs
-- The list of information about logs to be enabled for the specified broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Audit [__boolean] Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.
-- * General [__boolean] Enables general logging.
-- @return Logs structure as a key-value pair table
function M.Logs(args)
	assert(args, "You must provide an argument table when creating Logs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Audit"] = args["Audit"],
		["General"] = args["General"],
	}
	asserts.AssertLogs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootBrokerRequest = { ["BrokerId"] = true, nil }

function asserts.AssertRebootBrokerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootBrokerRequest to be of type 'table'")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootBrokerRequest[k], "RebootBrokerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootBrokerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- Required key: BrokerId
-- @return RebootBrokerRequest structure as a key-value pair table
function M.RebootBrokerRequest(args)
	assert(args, "You must provide an argument table when creating RebootBrokerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertRebootBrokerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationResponse = { ["LatestRevision"] = true, ["Name"] = true, ["Warnings"] = true, ["Created"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertUpdateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationResponse to be of type 'table'")
	if struct["LatestRevision"] then asserts.AssertConfigurationRevision(struct["LatestRevision"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Warnings"] then asserts.Assert__listOfSanitizationWarning(struct["Warnings"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationResponse[k], "UpdateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestRevision [ConfigurationRevision] The latest revision of the configuration.
-- * Name [__string] Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
-- * Warnings [__listOfSanitizationWarning] The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized.
-- * Created [__timestampIso8601] Required. The date and time of the configuration.
-- * Id [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Arn [__string] Required. The Amazon Resource Name (ARN) of the configuration.
-- @return UpdateConfigurationResponse structure as a key-value pair table
function M.UpdateConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestRevision"] = args["LatestRevision"],
		["Name"] = args["Name"],
		["Warnings"] = args["Warnings"],
		["Created"] = args["Created"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUpdateConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationId = { ["Id"] = true, ["Revision"] = true, nil }

function asserts.AssertConfigurationId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationId to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Revision"] then asserts.Assert__integer(struct["Revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationId[k], "ConfigurationId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationId
-- A list of information about the configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Revision [__integer] The revision number of the configuration.
-- @return ConfigurationId structure as a key-value pair table
function M.ConfigurationId(args)
	assert(args, "You must provide an argument table when creating ConfigurationId")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Revision"] = args["Revision"],
	}
	asserts.AssertConfigurationId(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigurationRevision = { ["Revision"] = true, ["Description"] = true, ["Created"] = true, nil }

function asserts.AssertConfigurationRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationRevision to be of type 'table'")
	if struct["Revision"] then asserts.Assert__integer(struct["Revision"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationRevision[k], "ConfigurationRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationRevision
-- Returns information about the specified configuration revision.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Revision [__integer] Required. The revision number of the configuration.
-- * Description [__string] The description of the configuration revision.
-- * Created [__timestampIso8601] Required. The date and time of the configuration revision.
-- @return ConfigurationRevision structure as a key-value pair table
function M.ConfigurationRevision(args)
	assert(args, "You must provide an argument table when creating ConfigurationRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Revision"] = args["Revision"],
		["Description"] = args["Description"],
		["Created"] = args["Created"],
	}
	asserts.AssertConfigurationRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConfigurationsResponse = { ["NextToken"] = true, ["MaxResults"] = true, ["Configurations"] = true, nil }

function asserts.AssertListConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__integer(struct["MaxResults"]) end
	if struct["Configurations"] then asserts.Assert__listOfConfiguration(struct["Configurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationsResponse[k], "ListConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
-- * MaxResults [__integer] The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
-- * Configurations [__listOfConfiguration] The list of all revisions for the specified configuration.
-- @return ListConfigurationsResponse structure as a key-value pair table
function M.ListConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating ListConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Configurations"] = args["Configurations"],
	}
	asserts.AssertListConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRevisionRequest = { ["ConfigurationId"] = true, ["ConfigurationRevision"] = true, nil }

function asserts.AssertDescribeConfigurationRevisionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRevisionRequest to be of type 'table'")
	assert(struct["ConfigurationRevision"], "Expected key ConfigurationRevision to exist in table")
	assert(struct["ConfigurationId"], "Expected key ConfigurationId to exist in table")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	if struct["ConfigurationRevision"] then asserts.Assert__string(struct["ConfigurationRevision"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRevisionRequest[k], "DescribeConfigurationRevisionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRevisionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] The unique ID that Amazon MQ generates for the configuration.
-- * ConfigurationRevision [__string] The revision of the configuration.
-- Required key: ConfigurationRevision
-- Required key: ConfigurationId
-- @return DescribeConfigurationRevisionRequest structure as a key-value pair table
function M.DescribeConfigurationRevisionRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRevisionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{configuration-id}"] = args["ConfigurationId"],
        ["{configuration-revision}"] = args["ConfigurationRevision"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["ConfigurationRevision"] = args["ConfigurationRevision"],
	}
	asserts.AssertDescribeConfigurationRevisionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBrokerRequest = { ["BrokerId"] = true, nil }

function asserts.AssertDescribeBrokerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBrokerRequest to be of type 'table'")
	assert(struct["BrokerId"], "Expected key BrokerId to exist in table")
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBrokerRequest[k], "DescribeBrokerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBrokerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerId [__string] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
-- Required key: BrokerId
-- @return DescribeBrokerRequest structure as a key-value pair table
function M.DescribeBrokerRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBrokerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{broker-id}"] = args["BrokerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertDescribeBrokerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserResponse = { ["ConsoleAccess"] = true, ["Username"] = true, ["BrokerId"] = true, ["Pending"] = true, ["Groups"] = true, nil }

function asserts.AssertDescribeUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserResponse to be of type 'table'")
	if struct["ConsoleAccess"] then asserts.Assert__boolean(struct["ConsoleAccess"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	if struct["Pending"] then asserts.AssertUserPendingChanges(struct["Pending"]) end
	if struct["Groups"] then asserts.Assert__listOf__string(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserResponse[k], "DescribeUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsoleAccess [__boolean] Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
-- * Username [__string] Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- * BrokerId [__string] Required. The unique ID that Amazon MQ generates for the broker.
-- * Pending [UserPendingChanges] The status of the changes pending for the ActiveMQ user.
-- * Groups [__listOf__string] The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
-- @return DescribeUserResponse structure as a key-value pair table
function M.DescribeUserResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsoleAccess"] = args["ConsoleAccess"],
		["Username"] = args["Username"],
		["BrokerId"] = args["BrokerId"],
		["Pending"] = args["Pending"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertDescribeUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationRevisionResponse = { ["ConfigurationId"] = true, ["Data"] = true, ["Description"] = true, ["Created"] = true, nil }

function asserts.AssertDescribeConfigurationRevisionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationRevisionResponse to be of type 'table'")
	if struct["ConfigurationId"] then asserts.Assert__string(struct["ConfigurationId"]) end
	if struct["Data"] then asserts.Assert__string(struct["Data"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Created"] then asserts.Assert__timestampIso8601(struct["Created"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationRevisionResponse[k], "DescribeConfigurationRevisionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationRevisionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationId [__string] Required. The unique ID that Amazon MQ generates for the configuration.
-- * Data [__string] Required. The base64-encoded XML configuration.
-- * Description [__string] The description of the configuration.
-- * Created [__timestampIso8601] Required. The date and time of the configuration.
-- @return DescribeConfigurationRevisionResponse structure as a key-value pair table
function M.DescribeConfigurationRevisionResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationRevisionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationId"] = args["ConfigurationId"],
		["Data"] = args["Data"],
		["Description"] = args["Description"],
		["Created"] = args["Created"],
	}
	asserts.AssertDescribeConfigurationRevisionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserResponse = { nil }

function asserts.AssertUpdateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserResponse[k], "UpdateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateUserResponse structure as a key-value pair table
function M.UpdateUserResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBrokerResponse = { ["BrokerArn"] = true, ["BrokerId"] = true, nil }

function asserts.AssertCreateBrokerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBrokerResponse to be of type 'table'")
	if struct["BrokerArn"] then asserts.Assert__string(struct["BrokerArn"]) end
	if struct["BrokerId"] then asserts.Assert__string(struct["BrokerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBrokerResponse[k], "CreateBrokerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBrokerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BrokerArn [__string] The Amazon Resource Name (ARN) of the broker.
-- * BrokerId [__string] The unique ID that Amazon MQ generates for the broker.
-- @return CreateBrokerResponse structure as a key-value pair table
function M.CreateBrokerResponse(args)
	assert(args, "You must provide an argument table when creating CreateBrokerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BrokerArn"] = args["BrokerArn"],
		["BrokerId"] = args["BrokerId"],
	}
	asserts.AssertCreateBrokerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WeeklyStartTime = { ["DayOfWeek"] = true, ["TimeZone"] = true, ["TimeOfDay"] = true, nil }

function asserts.AssertWeeklyStartTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WeeklyStartTime to be of type 'table'")
	if struct["DayOfWeek"] then asserts.AssertDayOfWeek(struct["DayOfWeek"]) end
	if struct["TimeZone"] then asserts.Assert__string(struct["TimeZone"]) end
	if struct["TimeOfDay"] then asserts.Assert__string(struct["TimeOfDay"]) end
	for k,_ in pairs(struct) do
		assert(keys.WeeklyStartTime[k], "WeeklyStartTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WeeklyStartTime
-- The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DayOfWeek [DayOfWeek] Required. The day of the week.
-- * TimeZone [__string] The time zone, UTC by default, in either the Country/City format, or the UTC offset format.
-- * TimeOfDay [__string] Required. The time, in 24-hour format.
-- @return WeeklyStartTime structure as a key-value pair table
function M.WeeklyStartTime(args)
	assert(args, "You must provide an argument table when creating WeeklyStartTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DayOfWeek"] = args["DayOfWeek"],
		["TimeZone"] = args["TimeZone"],
		["TimeOfDay"] = args["TimeOfDay"],
	}
	asserts.AssertWeeklyStartTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertEngineType(str)
	assert(str)
	assert(type(str) == "string", "Expected EngineType to be of type 'string'")
end

-- The type of broker engine. Note: Currently, Amazon MQ supports only ActiveMQ.
function M.EngineType(str)
	asserts.AssertEngineType(str)
	return str
end

function asserts.AssertDeploymentMode(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentMode to be of type 'string'")
end

-- The deployment mode of the broker.
function M.DeploymentMode(str)
	asserts.AssertDeploymentMode(str)
	return str
end

function asserts.AssertDayOfWeek(str)
	assert(str)
	assert(type(str) == "string", "Expected DayOfWeek to be of type 'string'")
end

--  
function M.DayOfWeek(str)
	asserts.AssertDayOfWeek(str)
	return str
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

function asserts.AssertBrokerState(str)
	assert(str)
	assert(type(str) == "string", "Expected BrokerState to be of type 'string'")
end

-- The status of the broker.
function M.BrokerState(str)
	asserts.AssertBrokerState(str)
	return str
end

function asserts.AssertSanitizationWarningReason(str)
	assert(str)
	assert(type(str) == "string", "Expected SanitizationWarningReason to be of type 'string'")
end

-- The reason for which the XML elements or attributes were sanitized.
function M.SanitizationWarningReason(str)
	asserts.AssertSanitizationWarningReason(str)
	return str
end

function asserts.AssertChangeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeType to be of type 'string'")
end

-- The type of change pending for the ActiveMQ user.
function M.ChangeType(str)
	asserts.AssertChangeType(str)
	return str
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

function asserts.Assert__integerMin5Max100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin5Max100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.__integerMin5Max100(integer)
	asserts.Assert__integerMin5Max100(integer)
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

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.Assert__timestampIso8601(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampIso8601 to be of type 'string'")
end

function M.__timestampIso8601(timestamp)
	asserts.Assert__timestampIso8601(timestamp)
	return timestamp
end

function asserts.Assert__listOfBrokerSummary(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfBrokerSummary to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBrokerSummary(v)
	end
end

--  
-- List of BrokerSummary objects
function M.__listOfBrokerSummary(list)
	asserts.Assert__listOfBrokerSummary(list)
	return list
end

function asserts.Assert__listOfConfigurationId(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfConfigurationId to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationId(v)
	end
end

--  
-- List of ConfigurationId objects
function M.__listOfConfigurationId(list)
	asserts.Assert__listOfConfigurationId(list)
	return list
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

function asserts.Assert__listOfUser(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfUser to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUser(v)
	end
end

--  
-- List of User objects
function M.__listOfUser(list)
	asserts.Assert__listOfUser(list)
	return list
end

function asserts.Assert__listOfSanitizationWarning(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfSanitizationWarning to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSanitizationWarning(v)
	end
end

--  
-- List of SanitizationWarning objects
function M.__listOfSanitizationWarning(list)
	asserts.Assert__listOfSanitizationWarning(list)
	return list
end

function asserts.Assert__listOfConfigurationRevision(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfConfigurationRevision to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationRevision(v)
	end
end

--  
-- List of ConfigurationRevision objects
function M.__listOfConfigurationRevision(list)
	asserts.Assert__listOfConfigurationRevision(list)
	return list
end

function asserts.Assert__listOfConfiguration(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfConfiguration to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfiguration(v)
	end
end

--  
-- List of Configuration objects
function M.__listOfConfiguration(list)
	asserts.Assert__listOfConfiguration(list)
	return list
end

function asserts.Assert__listOfUserSummary(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfUserSummary to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserSummary(v)
	end
end

--  
-- List of UserSummary objects
function M.__listOfUserSummary(list)
	asserts.Assert__listOfUserSummary(list)
	return list
end

function asserts.Assert__listOfBrokerInstance(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfBrokerInstance to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBrokerInstance(v)
	end
end

--  
-- List of BrokerInstance objects
function M.__listOfBrokerInstance(list)
	asserts.Assert__listOfBrokerInstance(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mq.amazonaws.com"
		end
	end
	local ss = { "mq" }
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
--- Call UpdateUser asynchronously, invoking a callback when done
-- @param UpdateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserAsync(UpdateUserRequest, cb)
	assert(UpdateUserRequest, "You must provide a UpdateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUser",
	}
	for header,value in pairs(UpdateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/users/{username}", UpdateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserSync(UpdateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAsync(UpdateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBrokers asynchronously, invoking a callback when done
-- @param ListBrokersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBrokersAsync(ListBrokersRequest, cb)
	assert(ListBrokersRequest, "You must provide a ListBrokersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBrokers",
	}
	for header,value in pairs(ListBrokersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers", ListBrokersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBrokers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBrokersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBrokersSync(ListBrokersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBrokersAsync(ListBrokersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUser asynchronously, invoking a callback when done
-- @param DeleteUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUser",
	}
	for header,value in pairs(DeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/users/{username}", DeleteUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserSync(DeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAsync(DeleteUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBroker asynchronously, invoking a callback when done
-- @param DescribeBrokerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBrokerAsync(DescribeBrokerRequest, cb)
	assert(DescribeBrokerRequest, "You must provide a DescribeBrokerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeBroker",
	}
	for header,value in pairs(DescribeBrokerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}", DescribeBrokerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBroker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBrokerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBrokerSync(DescribeBrokerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBrokerAsync(DescribeBrokerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBroker asynchronously, invoking a callback when done
-- @param UpdateBrokerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBrokerAsync(UpdateBrokerRequest, cb)
	assert(UpdateBrokerRequest, "You must provide a UpdateBrokerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateBroker",
	}
	for header,value in pairs(UpdateBrokerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}", UpdateBrokerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBroker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBrokerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateBrokerSync(UpdateBrokerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBrokerAsync(UpdateBrokerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurations asynchronously, invoking a callback when done
-- @param ListConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConfigurationsAsync(ListConfigurationsRequest, cb)
	assert(ListConfigurationsRequest, "You must provide a ListConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListConfigurations",
	}
	for header,value in pairs(ListConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations", ListConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListConfigurationsSync(ListConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationsAsync(ListConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfiguration asynchronously, invoking a callback when done
-- @param UpdateConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationAsync(UpdateConfigurationRequest, cb)
	assert(UpdateConfigurationRequest, "You must provide a UpdateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfiguration",
	}
	for header,value in pairs(UpdateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations/{configuration-id}", UpdateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationSync(UpdateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationAsync(UpdateConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUser asynchronously, invoking a callback when done
-- @param DescribeUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserAsync(DescribeUserRequest, cb)
	assert(DescribeUserRequest, "You must provide a DescribeUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeUser",
	}
	for header,value in pairs(DescribeUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/users/{username}", DescribeUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserSync(DescribeUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserAsync(DescribeUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUsers asynchronously, invoking a callback when done
-- @param ListUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUsersAsync(ListUsersRequest, cb)
	assert(ListUsersRequest, "You must provide a ListUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListUsers",
	}
	for header,value in pairs(ListUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/users", ListUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUsersSync(ListUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUsersAsync(ListUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfiguration asynchronously, invoking a callback when done
-- @param DescribeConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationAsync(DescribeConfigurationRequest, cb)
	assert(DescribeConfigurationRequest, "You must provide a DescribeConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeConfiguration",
	}
	for header,value in pairs(DescribeConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations/{configuration-id}", DescribeConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationSync(DescribeConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationAsync(DescribeConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationRevision asynchronously, invoking a callback when done
-- @param DescribeConfigurationRevisionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationRevisionAsync(DescribeConfigurationRevisionRequest, cb)
	assert(DescribeConfigurationRevisionRequest, "You must provide a DescribeConfigurationRevisionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeConfigurationRevision",
	}
	for header,value in pairs(DescribeConfigurationRevisionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", DescribeConfigurationRevisionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationRevision synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationRevisionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationRevisionSync(DescribeConfigurationRevisionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationRevisionAsync(DescribeConfigurationRevisionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUser asynchronously, invoking a callback when done
-- @param CreateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserAsync(CreateUserRequest, cb)
	assert(CreateUserRequest, "You must provide a CreateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUser",
	}
	for header,value in pairs(CreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/users/{username}", CreateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserSync(CreateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserAsync(CreateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfiguration asynchronously, invoking a callback when done
-- @param CreateConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConfigurationAsync(CreateConfigurationRequest, cb)
	assert(CreateConfigurationRequest, "You must provide a CreateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateConfiguration",
	}
	for header,value in pairs(CreateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations", CreateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConfigurationSync(CreateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationAsync(CreateConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurationRevisions asynchronously, invoking a callback when done
-- @param ListConfigurationRevisionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConfigurationRevisionsAsync(ListConfigurationRevisionsRequest, cb)
	assert(ListConfigurationRevisionsRequest, "You must provide a ListConfigurationRevisionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListConfigurationRevisions",
	}
	for header,value in pairs(ListConfigurationRevisionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/configurations/{configuration-id}/revisions", ListConfigurationRevisionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConfigurationRevisions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConfigurationRevisionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListConfigurationRevisionsSync(ListConfigurationRevisionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationRevisionsAsync(ListConfigurationRevisionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBroker asynchronously, invoking a callback when done
-- @param CreateBrokerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBrokerAsync(CreateBrokerRequest, cb)
	assert(CreateBrokerRequest, "You must provide a CreateBrokerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBroker",
	}
	for header,value in pairs(CreateBrokerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers", CreateBrokerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBroker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBrokerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBrokerSync(CreateBrokerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBrokerAsync(CreateBrokerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootBroker asynchronously, invoking a callback when done
-- @param RebootBrokerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootBrokerAsync(RebootBrokerRequest, cb)
	assert(RebootBrokerRequest, "You must provide a RebootBrokerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootBroker",
	}
	for header,value in pairs(RebootBrokerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}/reboot", RebootBrokerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootBroker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootBrokerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RebootBrokerSync(RebootBrokerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootBrokerAsync(RebootBrokerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBroker asynchronously, invoking a callback when done
-- @param DeleteBrokerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBrokerAsync(DeleteBrokerRequest, cb)
	assert(DeleteBrokerRequest, "You must provide a DeleteBrokerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBroker",
	}
	for header,value in pairs(DeleteBrokerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/brokers/{broker-id}", DeleteBrokerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBroker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBrokerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBrokerSync(DeleteBrokerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBrokerAsync(DeleteBrokerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
