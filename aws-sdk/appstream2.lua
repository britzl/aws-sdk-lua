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

keys.UpdateImagePermissionsRequest = { ["ImagePermissions"] = true, ["SharedAccountId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateImagePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateImagePermissionsRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SharedAccountId"], "Expected key SharedAccountId to exist in table")
	assert(struct["ImagePermissions"], "Expected key ImagePermissions to exist in table")
	if struct["ImagePermissions"] then asserts.AssertImagePermissions(struct["ImagePermissions"]) end
	if struct["SharedAccountId"] then asserts.AssertAwsAccountId(struct["SharedAccountId"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateImagePermissionsRequest[k], "UpdateImagePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateImagePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImagePermissions [ImagePermissions] <p>The permissions for the image.</p>
-- * SharedAccountId [AwsAccountId] <p>The 12-digit ID of the AWS account for which you want add or update image permissions.</p>
-- * Name [Name] <p>The name of the private image.</p>
-- Required key: Name
-- Required key: SharedAccountId
-- Required key: ImagePermissions
-- @return UpdateImagePermissionsRequest structure as a key-value pair table
function M.UpdateImagePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateImagePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImagePermissions"] = args["ImagePermissions"],
		["SharedAccountId"] = args["SharedAccountId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateImagePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["UserName"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [Username] <p>The email address of the user.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user. You must specify USERPOOL.</p>
-- Required key: UserName
-- Required key: AuthenticationType
-- @return DeleteUserRequest structure as a key-value pair table
function M.DeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Fleet = { ["ComputeCapacityStatus"] = true, ["DisconnectTimeoutInSeconds"] = true, ["ImageArn"] = true, ["Name"] = true, ["VpcConfig"] = true, ["FleetErrors"] = true, ["MaxUserDurationInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["FleetType"] = true, ["State"] = true, ["ImageName"] = true, ["DomainJoinInfo"] = true, ["CreatedTime"] = true, ["DisplayName"] = true, ["InstanceType"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertFleet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Fleet to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacityStatus"], "Expected key ComputeCapacityStatus to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	if struct["ComputeCapacityStatus"] then asserts.AssertComputeCapacityStatus(struct["ComputeCapacityStatus"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["ImageArn"] then asserts.AssertArn(struct["ImageArn"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["FleetErrors"] then asserts.AssertFleetErrors(struct["FleetErrors"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["FleetType"] then asserts.AssertFleetType(struct["FleetType"]) end
	if struct["State"] then asserts.AssertFleetState(struct["State"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["DomainJoinInfo"] then asserts.AssertDomainJoinInfo(struct["DomainJoinInfo"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
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
-- * ComputeCapacityStatus [ComputeCapacityStatus] <p>The capacity status for the fleet.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.</p>
-- * ImageArn [Arn] <p>The ARN for the public, private, or shared image.</p>
-- * Name [String] <p>The name of the fleet.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * FleetErrors [FleetErrors] <p>The fleet errors.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.</p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Indicates whether default internet access is enabled for the fleet.</p>
-- * FleetType [FleetType] <p>The fleet type.</p> <dl> <dt>ALWAYS_ON</dt> <dd> <p>Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.</p> </dd> <dt>ON_DEMAND</dt> <dd> <p>Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.</p> </dd> </dl>
-- * State [FleetState] <p>The current state for the fleet.</p>
-- * ImageName [String] <p>The name of the image used to create the fleet.</p>
-- * DomainJoinInfo [DomainJoinInfo] <p>The information needed to join a Microsoft Active Directory domain.</p>
-- * CreatedTime [Timestamp] <p>The time the fleet was created.</p>
-- * DisplayName [String] <p>The fleet name for display.</p>
-- * InstanceType [String] <p>The instance type to use when launching fleet instances.</p>
-- * Arn [Arn] <p>The ARN for the fleet.</p>
-- * Description [String] <p>The description for display.</p>
-- Required key: Arn
-- Required key: Name
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
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["ImageArn"] = args["ImageArn"],
		["Name"] = args["Name"],
		["VpcConfig"] = args["VpcConfig"],
		["FleetErrors"] = args["FleetErrors"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["FleetType"] = args["FleetType"],
		["State"] = args["State"],
		["ImageName"] = args["ImageName"],
		["DomainJoinInfo"] = args["DomainJoinInfo"],
		["CreatedTime"] = args["CreatedTime"],
		["DisplayName"] = args["DisplayName"],
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

keys.DescribeImageBuildersResult = { ["NextToken"] = true, ["ImageBuilders"] = true, nil }

function asserts.AssertDescribeImageBuildersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImageBuildersResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ImageBuilders"] then asserts.AssertImageBuilderList(struct["ImageBuilders"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImageBuildersResult[k], "DescribeImageBuildersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImageBuildersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ImageBuilders [ImageBuilderList] <p>Information about the image builders.</p>
-- @return DescribeImageBuildersResult structure as a key-value pair table
function M.DescribeImageBuildersResult(args)
	assert(args, "You must provide an argument table when creating DescribeImageBuildersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ImageBuilders"] = args["ImageBuilders"],
	}
	asserts.AssertDescribeImageBuildersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Names [StringList] <p>The name of the stack.</p>
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

keys.UpdateDirectoryConfigResult = { ["DirectoryConfig"] = true, nil }

function asserts.AssertUpdateDirectoryConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDirectoryConfigResult to be of type 'table'")
	if struct["DirectoryConfig"] then asserts.AssertDirectoryConfig(struct["DirectoryConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDirectoryConfigResult[k], "UpdateDirectoryConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDirectoryConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryConfig [DirectoryConfig] <p>Information about the Directory Config object.</p>
-- @return UpdateDirectoryConfigResult structure as a key-value pair table
function M.UpdateDirectoryConfigResult(args)
	assert(args, "You must provide an argument table when creating UpdateDirectoryConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryConfig"] = args["DirectoryConfig"],
	}
	asserts.AssertUpdateDirectoryConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeImagesResult = { ["Images"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeImagesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesResult to be of type 'table'")
	if struct["Images"] then asserts.AssertImageList(struct["Images"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesResult[k], "DescribeImagesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Images [ImageList] <p>Information about the images.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
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
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeImagesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteImageBuilderRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteImageBuilderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImageBuilderRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImageBuilderRequest[k], "DeleteImageBuilderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImageBuilderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [Name] <p>The name of the image builder.</p>
-- Required key: Name
-- @return DeleteImageBuilderRequest structure as a key-value pair table
function M.DeleteImageBuilderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteImageBuilderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteImageBuilderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImageBuilderStateChangeReason = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertImageBuilderStateChangeReason(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageBuilderStateChangeReason to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertImageBuilderStateChangeReasonCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageBuilderStateChangeReason[k], "ImageBuilderStateChangeReason contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageBuilderStateChangeReason
-- <p>Describes the reason why the last image builder state change occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The state change reason message.</p>
-- * Code [ImageBuilderStateChangeReasonCode] <p>The state change reason code.</p>
-- @return ImageBuilderStateChangeReason structure as a key-value pair table
function M.ImageBuilderStateChangeReason(args)
	assert(args, "You must provide an argument table when creating ImageBuilderStateChangeReason")
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
	asserts.AssertImageBuilderStateChangeReason(all_args)
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
-- * Names [StringList] <p>The names of the stacks to describe.</p>
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

keys.ApplicationSettings = { ["SettingsGroup"] = true, ["Enabled"] = true, nil }

function asserts.AssertApplicationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSettings to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["SettingsGroup"] then asserts.AssertSettingsGroup(struct["SettingsGroup"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSettings[k], "ApplicationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSettings
-- <p>The persistent application settings for users of a stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SettingsGroup [SettingsGroup] <p>The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack. </p>
-- * Enabled [Boolean] <p>Enables or disables persistent application settings for users during their streaming sessions. </p>
-- Required key: Enabled
-- @return ApplicationSettings structure as a key-value pair table
function M.ApplicationSettings(args)
	assert(args, "You must provide an argument table when creating ApplicationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SettingsGroup"] = args["SettingsGroup"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertApplicationSettings(all_args)
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
-- * Name [String] <p>The name of the fleet.</p>
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

keys.UpdateDirectoryConfigRequest = { ["OrganizationalUnitDistinguishedNames"] = true, ["ServiceAccountCredentials"] = true, ["DirectoryName"] = true, nil }

function asserts.AssertUpdateDirectoryConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDirectoryConfigRequest to be of type 'table'")
	assert(struct["DirectoryName"], "Expected key DirectoryName to exist in table")
	if struct["OrganizationalUnitDistinguishedNames"] then asserts.AssertOrganizationalUnitDistinguishedNamesList(struct["OrganizationalUnitDistinguishedNames"]) end
	if struct["ServiceAccountCredentials"] then asserts.AssertServiceAccountCredentials(struct["ServiceAccountCredentials"]) end
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDirectoryConfigRequest[k], "UpdateDirectoryConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDirectoryConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnitDistinguishedNames [OrganizationalUnitDistinguishedNamesList] <p>The distinguished names of the organizational units for computer accounts.</p>
-- * ServiceAccountCredentials [ServiceAccountCredentials] <p>The credentials for the service account used by the streaming instance to connect to the directory.</p>
-- * DirectoryName [DirectoryName] <p>The name of the Directory Config object.</p>
-- Required key: DirectoryName
-- @return UpdateDirectoryConfigRequest structure as a key-value pair table
function M.UpdateDirectoryConfigRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDirectoryConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnitDistinguishedNames"] = args["OrganizationalUnitDistinguishedNames"],
		["ServiceAccountCredentials"] = args["ServiceAccountCredentials"],
		["DirectoryName"] = args["DirectoryName"],
	}
	asserts.AssertUpdateDirectoryConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeImagePermissionsRequest = { ["NextToken"] = true, ["SharedAwsAccountIds"] = true, ["Name"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeImagePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagePermissionsRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SharedAwsAccountIds"] then asserts.AssertAwsAccountIdList(struct["SharedAwsAccountIds"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagePermissionsRequest[k], "DescribeImagePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * SharedAwsAccountIds [AwsAccountIdList] <p>The 12-digit ID of one or more AWS accounts with which the image is shared.</p>
-- * Name [Name] <p>The name of the private image for which to describe permissions. The image must be one that you own. </p>
-- * MaxResults [MaxResults] <p>The maximum size of each page of results.</p>
-- Required key: Name
-- @return DescribeImagePermissionsRequest structure as a key-value pair table
function M.DescribeImagePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeImagePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SharedAwsAccountIds"] = args["SharedAwsAccountIds"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeImagePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * TagKeys [TagKeyList] <p>The tag keys for the tags to disassociate.</p>
-- Required key: ResourceArn
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStackRequest = { ["DisplayName"] = true, ["Name"] = true, ["StorageConnectors"] = true, ["FeedbackURL"] = true, ["UserSettings"] = true, ["RedirectURL"] = true, ["ApplicationSettings"] = true, ["Description"] = true, nil }

function asserts.AssertCreateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["FeedbackURL"] then asserts.AssertFeedbackURL(struct["FeedbackURL"]) end
	if struct["UserSettings"] then asserts.AssertUserSettingList(struct["UserSettings"]) end
	if struct["RedirectURL"] then asserts.AssertRedirectURL(struct["RedirectURL"]) end
	if struct["ApplicationSettings"] then asserts.AssertApplicationSettings(struct["ApplicationSettings"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackRequest[k], "CreateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] <p>The stack name for display.</p>
-- * Name [Name] <p>The name of the stack.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to enable.</p>
-- * FeedbackURL [FeedbackURL] <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
-- * UserSettings [UserSettingList] <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>
-- * RedirectURL [RedirectURL] <p>The URL that users are redirected to after their streaming session ends.</p>
-- * ApplicationSettings [ApplicationSettings] <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
-- * Description [Description] <p>The description for display.</p>
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
		["FeedbackURL"] = args["FeedbackURL"],
		["UserSettings"] = args["UserSettings"],
		["RedirectURL"] = args["RedirectURL"],
		["ApplicationSettings"] = args["ApplicationSettings"],
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
-- * Sessions [SessionList] <p>Information about the streaming sessions.</p>
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

keys.Stack = { ["DisplayName"] = true, ["Name"] = true, ["StorageConnectors"] = true, ["FeedbackURL"] = true, ["RedirectURL"] = true, ["UserSettings"] = true, ["StackErrors"] = true, ["CreatedTime"] = true, ["ApplicationSettings"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["FeedbackURL"] then asserts.AssertFeedbackURL(struct["FeedbackURL"]) end
	if struct["RedirectURL"] then asserts.AssertRedirectURL(struct["RedirectURL"]) end
	if struct["UserSettings"] then asserts.AssertUserSettingList(struct["UserSettings"]) end
	if struct["StackErrors"] then asserts.AssertStackErrors(struct["StackErrors"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["ApplicationSettings"] then asserts.AssertApplicationSettingsResponse(struct["ApplicationSettings"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stack[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>Describes a stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The stack name for display.</p>
-- * Name [String] <p>The name of the stack.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to enable.</p>
-- * FeedbackURL [FeedbackURL] <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
-- * RedirectURL [RedirectURL] <p>The URL that users are redirected to after their streaming session ends.</p>
-- * UserSettings [UserSettingList] <p>The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.</p>
-- * StackErrors [StackErrors] <p>The errors for the stack.</p>
-- * CreatedTime [Timestamp] <p>The time the stack was created.</p>
-- * ApplicationSettings [ApplicationSettingsResponse] <p>The persistent application settings for users of the stack.</p>
-- * Arn [Arn] <p>The ARN of the stack.</p>
-- * Description [String] <p>The description for display.</p>
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
		["FeedbackURL"] = args["FeedbackURL"],
		["RedirectURL"] = args["RedirectURL"],
		["UserSettings"] = args["UserSettings"],
		["StackErrors"] = args["StackErrors"],
		["CreatedTime"] = args["CreatedTime"],
		["ApplicationSettings"] = args["ApplicationSettings"],
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
-- <p>Describes a stack error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [StackErrorCode] <p>The error code.</p>
-- * ErrorMessage [String] <p>The error message.</p>
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
-- * StackName [String] <p>The name of the stack.</p>
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
-- * Name [String] <p>The name of the fleet.</p>
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

keys.BatchAssociateUserStackRequest = { ["UserStackAssociations"] = true, nil }

function asserts.AssertBatchAssociateUserStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAssociateUserStackRequest to be of type 'table'")
	assert(struct["UserStackAssociations"], "Expected key UserStackAssociations to exist in table")
	if struct["UserStackAssociations"] then asserts.AssertUserStackAssociationList(struct["UserStackAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAssociateUserStackRequest[k], "BatchAssociateUserStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAssociateUserStackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserStackAssociations [UserStackAssociationList] <p>The list of UserStackAssociation objects.</p>
-- Required key: UserStackAssociations
-- @return BatchAssociateUserStackRequest structure as a key-value pair table
function M.BatchAssociateUserStackRequest(args)
	assert(args, "You must provide an argument table when creating BatchAssociateUserStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserStackAssociations"] = args["UserStackAssociations"],
	}
	asserts.AssertBatchAssociateUserStackRequest(all_args)
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
	if struct["UserId"] then asserts.AssertStreamingUrlUserId(struct["UserId"]) end
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
-- * FleetName [String] <p>The name of the fleet.</p>
-- * UserId [StreamingUrlUserId] <p>The ID of the user.</p>
-- * Validity [Long] <p>The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>
-- * StackName [String] <p>The name of the stack.</p>
-- * SessionContext [String] <p>The session context. For more information, see <a href="http://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters">Session Context</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p>
-- * ApplicationId [String] <p>The name of the application to launch after the session starts. This is the name that you specified as <b>Name</b> in the Image Assistant.</p>
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
-- <p>Describes an application in the application catalog.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The application name for display.</p>
-- * Name [String] <p>The name of the application.</p>
-- * LaunchParameters [String] <p>The arguments that are passed to the application at launch.</p>
-- * Enabled [Boolean] <p>If there is a problem, the application can be disabled after image creation.</p>
-- * IconURL [String] <p>The URL for the application icon. This URL might be time-limited.</p>
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

keys.EnableUserRequest = { ["UserName"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertEnableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableUserRequest[k], "EnableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [Username] <p>The email address of the user.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user. You must specify USERPOOL.</p>
-- Required key: UserName
-- Required key: AuthenticationType
-- @return EnableUserRequest structure as a key-value pair table
function M.EnableUserRequest(args)
	assert(args, "You must provide an argument table when creating EnableUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertEnableUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteImagePermissionsResult = { nil }

function asserts.AssertDeleteImagePermissionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImagePermissionsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteImagePermissionsResult[k], "DeleteImagePermissionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImagePermissionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteImagePermissionsResult structure as a key-value pair table
function M.DeleteImagePermissionsResult(args)
	assert(args, "You must provide an argument table when creating DeleteImagePermissionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteImagePermissionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectoryConfigRequest = { ["DirectoryName"] = true, nil }

function asserts.AssertDeleteDirectoryConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryConfigRequest to be of type 'table'")
	assert(struct["DirectoryName"], "Expected key DirectoryName to exist in table")
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryConfigRequest[k], "DeleteDirectoryConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryName [DirectoryName] <p>The name of the directory configuration.</p>
-- Required key: DirectoryName
-- @return DeleteDirectoryConfigRequest structure as a key-value pair table
function M.DeleteDirectoryConfigRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDirectoryConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryName"] = args["DirectoryName"],
	}
	asserts.AssertDeleteDirectoryConfigRequest(all_args)
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

keys.UpdateStackRequest = { ["AttributesToDelete"] = true, ["DisplayName"] = true, ["Description"] = true, ["StorageConnectors"] = true, ["DeleteStorageConnectors"] = true, ["FeedbackURL"] = true, ["UserSettings"] = true, ["RedirectURL"] = true, ["ApplicationSettings"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributesToDelete"] then asserts.AssertStackAttributes(struct["AttributesToDelete"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["StorageConnectors"] then asserts.AssertStorageConnectorList(struct["StorageConnectors"]) end
	if struct["DeleteStorageConnectors"] then asserts.AssertBoolean(struct["DeleteStorageConnectors"]) end
	if struct["FeedbackURL"] then asserts.AssertFeedbackURL(struct["FeedbackURL"]) end
	if struct["UserSettings"] then asserts.AssertUserSettingList(struct["UserSettings"]) end
	if struct["RedirectURL"] then asserts.AssertRedirectURL(struct["RedirectURL"]) end
	if struct["ApplicationSettings"] then asserts.AssertApplicationSettings(struct["ApplicationSettings"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackRequest[k], "UpdateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributesToDelete [StackAttributes] <p>The stack attributes to delete.</p>
-- * DisplayName [DisplayName] <p>The stack name for display.</p>
-- * Description [Description] <p>The description for display.</p>
-- * StorageConnectors [StorageConnectorList] <p>The storage connectors to enable.</p>
-- * DeleteStorageConnectors [Boolean] <p>Deletes the storage connectors currently enabled for the stack.</p>
-- * FeedbackURL [FeedbackURL] <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
-- * UserSettings [UserSettingList] <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>
-- * RedirectURL [RedirectURL] <p>The URL that users are redirected to after their streaming session ends.</p>
-- * ApplicationSettings [ApplicationSettings] <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
-- * Name [String] <p>The name of the stack.</p>
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
		["AttributesToDelete"] = args["AttributesToDelete"],
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["StorageConnectors"] = args["StorageConnectors"],
		["DeleteStorageConnectors"] = args["DeleteStorageConnectors"],
		["FeedbackURL"] = args["FeedbackURL"],
		["UserSettings"] = args["UserSettings"],
		["RedirectURL"] = args["RedirectURL"],
		["ApplicationSettings"] = args["ApplicationSettings"],
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Names [StringList] <p>The name of the fleet.</p>
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

keys.DescribeUsersResult = { ["NextToken"] = true, ["Users"] = true, nil }

function asserts.AssertDescribeUsersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Users"] then asserts.AssertUserList(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUsersResult[k], "DescribeUsersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Users [UserList] <p>Information about users in the user pool.</p>
-- @return DescribeUsersResult structure as a key-value pair table
function M.DescribeUsersResult(args)
	assert(args, "You must provide an argument table when creating DescribeUsersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertDescribeUsersResult(all_args)
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
-- * Stack [Stack] <p>Information about the stack.</p>
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
-- <p>Describes the capacity for a fleet.</p>
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
-- * SessionId [String] <p>The ID of the streaming session.</p>
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

keys.StartImageBuilderRequest = { ["AppstreamAgentVersion"] = true, ["Name"] = true, nil }

function asserts.AssertStartImageBuilderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartImageBuilderRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AppstreamAgentVersion"] then asserts.AssertAppstreamAgentVersion(struct["AppstreamAgentVersion"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartImageBuilderRequest[k], "StartImageBuilderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartImageBuilderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppstreamAgentVersion [AppstreamAgentVersion] <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
-- * Name [String] <p>The name of the image builder.</p>
-- Required key: Name
-- @return StartImageBuilderRequest structure as a key-value pair table
function M.StartImageBuilderRequest(args)
	assert(args, "You must provide an argument table when creating StartImageBuilderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppstreamAgentVersion"] = args["AppstreamAgentVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertStartImageBuilderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopImageBuilderRequest = { ["Name"] = true, nil }

function asserts.AssertStopImageBuilderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopImageBuilderRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopImageBuilderRequest[k], "StopImageBuilderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopImageBuilderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the image builder.</p>
-- Required key: Name
-- @return StopImageBuilderRequest structure as a key-value pair table
function M.StopImageBuilderRequest(args)
	assert(args, "You must provide an argument table when creating StopImageBuilderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopImageBuilderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectoryConfigResult = { ["DirectoryConfig"] = true, nil }

function asserts.AssertCreateDirectoryConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryConfigResult to be of type 'table'")
	if struct["DirectoryConfig"] then asserts.AssertDirectoryConfig(struct["DirectoryConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryConfigResult[k], "CreateDirectoryConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryConfig [DirectoryConfig] <p>Information about the directory configuration.</p>
-- @return CreateDirectoryConfigResult structure as a key-value pair table
function M.CreateDirectoryConfigResult(args)
	assert(args, "You must provide an argument table when creating CreateDirectoryConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryConfig"] = args["DirectoryConfig"],
	}
	asserts.AssertCreateDirectoryConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAssociateUserStackResult = { ["errors"] = true, nil }

function asserts.AssertBatchAssociateUserStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAssociateUserStackResult to be of type 'table'")
	if struct["errors"] then asserts.AssertUserStackAssociationErrorList(struct["errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAssociateUserStackResult[k], "BatchAssociateUserStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAssociateUserStackResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errors [UserStackAssociationErrorList] <p>The list of UserStackAssociationError objects.</p>
-- @return BatchAssociateUserStackResult structure as a key-value pair table
function M.BatchAssociateUserStackResult(args)
	assert(args, "You must provide an argument table when creating BatchAssociateUserStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errors"] = args["errors"],
	}
	asserts.AssertBatchAssociateUserStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUsersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertDescribeUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersRequest to be of type 'table'")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUsersRequest[k], "DescribeUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * MaxResults [Integer] <p>The maximum size of each page of results.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>
-- Required key: AuthenticationType
-- @return DescribeUsersRequest structure as a key-value pair table
function M.DescribeUsersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUsersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertDescribeUsersRequest(all_args)
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
-- * Stack [Stack] <p>Information about the stack.</p>
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

keys.Image = { ["PublicBaseImageReleasedDate"] = true, ["DisplayName"] = true, ["Name"] = true, ["Applications"] = true, ["BaseImageArn"] = true, ["Visibility"] = true, ["Platform"] = true, ["State"] = true, ["ImagePermissions"] = true, ["CreatedTime"] = true, ["Description"] = true, ["StateChangeReason"] = true, ["AppstreamAgentVersion"] = true, ["Arn"] = true, ["ImageBuilderSupported"] = true, nil }

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
	if struct["ImagePermissions"] then asserts.AssertImagePermissions(struct["ImagePermissions"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["StateChangeReason"] then asserts.AssertImageStateChangeReason(struct["StateChangeReason"]) end
	if struct["AppstreamAgentVersion"] then asserts.AssertAppstreamAgentVersion(struct["AppstreamAgentVersion"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["ImageBuilderSupported"] then asserts.AssertBoolean(struct["ImageBuilderSupported"]) end
	for k,_ in pairs(struct) do
		assert(keys.Image[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>Describes an image.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicBaseImageReleasedDate [Timestamp] <p>The release date of the public base image. For private images, this date is the release date of the base image from which the image was created.</p>
-- * DisplayName [String] <p>The image name for display.</p>
-- * Name [String] <p>The name of the image.</p>
-- * Applications [Applications] <p>The applications associated with the image.</p>
-- * BaseImageArn [Arn] <p>The ARN of the image from which this image was created.</p>
-- * Visibility [VisibilityType] <p>Indicates whether the image is public or private.</p>
-- * Platform [PlatformType] <p>The operating system platform of the image.</p>
-- * State [ImageState] <p>The image starts in the <code>PENDING</code> state. If image creation succeeds, the state is <code>AVAILABLE</code>. If image creation fails, the state is <code>FAILED</code>.</p>
-- * ImagePermissions [ImagePermissions] <p>The permissions to provide to the destination AWS account for the specified image.</p>
-- * CreatedTime [Timestamp] <p>The time the image was created.</p>
-- * Description [String] <p>The description for display.</p>
-- * StateChangeReason [ImageStateChangeReason] <p>The reason why the last state change occurred.</p>
-- * AppstreamAgentVersion [AppstreamAgentVersion] <p>The version of the AppStream 2.0 agent to use for instances that are launched from this image. </p>
-- * Arn [Arn] <p>The ARN of the image.</p>
-- * ImageBuilderSupported [Boolean] <p>Indicates whether an image builder can be launched from this image.</p>
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
		["ImagePermissions"] = args["ImagePermissions"],
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["StateChangeReason"] = args["StateChangeReason"],
		["AppstreamAgentVersion"] = args["AppstreamAgentVersion"],
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

keys.StartImageBuilderResult = { ["ImageBuilder"] = true, nil }

function asserts.AssertStartImageBuilderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartImageBuilderResult to be of type 'table'")
	if struct["ImageBuilder"] then asserts.AssertImageBuilder(struct["ImageBuilder"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartImageBuilderResult[k], "StartImageBuilderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartImageBuilderResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImageBuilder [ImageBuilder] <p>Information about the image builder.</p>
-- @return StartImageBuilderResult structure as a key-value pair table
function M.StartImageBuilderResult(args)
	assert(args, "You must provide an argument table when creating StartImageBuilderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImageBuilder"] = args["ImageBuilder"],
	}
	asserts.AssertStartImageBuilderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteImageResult = { ["Image"] = true, nil }

function asserts.AssertDeleteImageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImageResult to be of type 'table'")
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImageResult[k], "DeleteImageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImageResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Image [Image] <p>Information about the image.</p>
-- @return DeleteImageResult structure as a key-value pair table
function M.DeleteImageResult(args)
	assert(args, "You must provide an argument table when creating DeleteImageResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Image"] = args["Image"],
	}
	asserts.AssertDeleteImageResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Session = { ["AuthenticationType"] = true, ["UserId"] = true, ["FleetName"] = true, ["StackName"] = true, ["State"] = true, ["NetworkAccessConfiguration"] = true, ["Id"] = true, nil }

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
	if struct["NetworkAccessConfiguration"] then asserts.AssertNetworkAccessConfiguration(struct["NetworkAccessConfiguration"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Session[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- <p>Describes a streaming session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationType [AuthenticationType] <p>The authentication method. The user is authenticated using a streaming URL (<code>API</code>) or SAML federation (<code>SAML</code>).</p>
-- * UserId [UserId] <p>The identifier of the user for whom the session was created.</p>
-- * FleetName [String] <p>The name of the fleet for the streaming session.</p>
-- * StackName [String] <p>The name of the stack for the streaming session.</p>
-- * State [SessionState] <p>The current state of the streaming session.</p>
-- * NetworkAccessConfiguration [NetworkAccessConfiguration] <p>The network details for the streaming session.</p>
-- * Id [String] <p>The ID of the streaming session.</p>
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
		["NetworkAccessConfiguration"] = args["NetworkAccessConfiguration"],
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

keys.CreateImageBuilderRequest = { ["DisplayName"] = true, ["Description"] = true, ["VpcConfig"] = true, ["AppstreamAgentVersion"] = true, ["EnableDefaultInternetAccess"] = true, ["ImageName"] = true, ["ImageArn"] = true, ["InstanceType"] = true, ["DomainJoinInfo"] = true, ["Name"] = true, nil }

function asserts.AssertCreateImageBuilderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImageBuilderRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["AppstreamAgentVersion"] then asserts.AssertAppstreamAgentVersion(struct["AppstreamAgentVersion"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["ImageArn"] then asserts.AssertArn(struct["ImageArn"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["DomainJoinInfo"] then asserts.AssertDomainJoinInfo(struct["DomainJoinInfo"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImageBuilderRequest[k], "CreateImageBuilderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImageBuilderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] <p>The image builder name for display.</p>
-- * Description [Description] <p>The description for display.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the image builder. You can specify only one subnet.</p>
-- * AppstreamAgentVersion [AppstreamAgentVersion] <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default internet access for the image builder.</p>
-- * ImageName [String] <p>The name of the image used to create the builder.</p>
-- * ImageArn [Arn] <p>The ARN of the public, private, or shared image to use.</p>
-- * InstanceType [String] <p>The instance type to use when launching the image builder.</p>
-- * DomainJoinInfo [DomainJoinInfo] <p>The information needed to join a Microsoft Active Directory domain.</p>
-- * Name [Name] <p>A unique name for the image builder.</p>
-- Required key: Name
-- Required key: InstanceType
-- @return CreateImageBuilderRequest structure as a key-value pair table
function M.CreateImageBuilderRequest(args)
	assert(args, "You must provide an argument table when creating CreateImageBuilderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["VpcConfig"] = args["VpcConfig"],
		["AppstreamAgentVersion"] = args["AppstreamAgentVersion"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["ImageName"] = args["ImageName"],
		["ImageArn"] = args["ImageArn"],
		["InstanceType"] = args["InstanceType"],
		["DomainJoinInfo"] = args["DomainJoinInfo"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateImageBuilderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceAccountCredentials = { ["AccountPassword"] = true, ["AccountName"] = true, nil }

function asserts.AssertServiceAccountCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceAccountCredentials to be of type 'table'")
	assert(struct["AccountName"], "Expected key AccountName to exist in table")
	assert(struct["AccountPassword"], "Expected key AccountPassword to exist in table")
	if struct["AccountPassword"] then asserts.AssertAccountPassword(struct["AccountPassword"]) end
	if struct["AccountName"] then asserts.AssertAccountName(struct["AccountName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceAccountCredentials[k], "ServiceAccountCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceAccountCredentials
-- <p>Describes the credentials for the service account used by the streaming instance to connect to the directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountPassword [AccountPassword] <p>The password for the account.</p>
-- * AccountName [AccountName] <p>The user name of the account. This account must have the following privileges: create computer objects, join computers to the domain, and change/reset the password on descendant computer objects for the organizational units specified.</p>
-- Required key: AccountName
-- Required key: AccountPassword
-- @return ServiceAccountCredentials structure as a key-value pair table
function M.ServiceAccountCredentials(args)
	assert(args, "You must provide an argument table when creating ServiceAccountCredentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountPassword"] = args["AccountPassword"],
		["AccountName"] = args["AccountName"],
	}
	asserts.AssertServiceAccountCredentials(all_args)
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
-- <p>Describes the reason why the last image state change occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The state change reason message.</p>
-- * Code [ImageStateChangeReasonCode] <p>The state change reason code.</p>
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

keys.UserStackAssociationError = { ["UserStackAssociation"] = true, ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertUserStackAssociationError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStackAssociationError to be of type 'table'")
	if struct["UserStackAssociation"] then asserts.AssertUserStackAssociation(struct["UserStackAssociation"]) end
	if struct["ErrorCode"] then asserts.AssertUserStackAssociationErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserStackAssociationError[k], "UserStackAssociationError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStackAssociationError
-- <p>Describes the error that is returned when a user can’t be associated with or disassociated from a stack. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserStackAssociation [UserStackAssociation] <p>Information about the user and associated stack.</p>
-- * ErrorCode [UserStackAssociationErrorCode] <p>The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
-- * ErrorMessage [String] <p>The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
-- @return UserStackAssociationError structure as a key-value pair table
function M.UserStackAssociationError(args)
	assert(args, "You must provide an argument table when creating UserStackAssociationError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserStackAssociation"] = args["UserStackAssociation"],
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertUserStackAssociationError(all_args)
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
-- * Stacks [StackList] <p>Information about the stacks.</p>
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

keys.UserSetting = { ["Action"] = true, ["Permission"] = true, nil }

function asserts.AssertUserSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserSetting to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Permission"], "Expected key Permission to exist in table")
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["Permission"] then asserts.AssertPermission(struct["Permission"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserSetting[k], "UserSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserSetting
-- <p>Describes an action and whether the action is enabled or disabled for users during their streaming sessions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [Action] <p>The action that is enabled or disabled.</p>
-- * Permission [Permission] <p>Indicates whether the action is enabled or disabled.</p>
-- Required key: Action
-- Required key: Permission
-- @return UserSetting structure as a key-value pair table
function M.UserSetting(args)
	assert(args, "You must provide an argument table when creating UserSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Permission"] = args["Permission"],
	}
	asserts.AssertUserSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- Required key: ResourceArn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserResult = { nil }

function asserts.AssertDeleteUserResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserResult[k], "DeleteUserResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserResult structure as a key-value pair table
function M.DeleteUserResult(args)
	assert(args, "You must provide an argument table when creating DeleteUserResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableUserResult = { nil }

function asserts.AssertDisableUserResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableUserResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableUserResult[k], "DisableUserResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableUserResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableUserResult structure as a key-value pair table
function M.DisableUserResult(args)
	assert(args, "You must provide an argument table when creating DisableUserResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableUserResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectoryConfigResult = { nil }

function asserts.AssertDeleteDirectoryConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryConfigResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryConfigResult[k], "DeleteDirectoryConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDirectoryConfigResult structure as a key-value pair table
function M.DeleteDirectoryConfigResult(args)
	assert(args, "You must provide an argument table when creating DeleteDirectoryConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDirectoryConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFleetRequest = { ["ImageArn"] = true, ["Name"] = true, ["VpcConfig"] = true, ["DisconnectTimeoutInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["InstanceType"] = true, ["DisplayName"] = true, ["ImageName"] = true, ["ComputeCapacity"] = true, ["Description"] = true, ["FleetType"] = true, ["DomainJoinInfo"] = true, ["MaxUserDurationInSeconds"] = true, nil }

function asserts.AssertCreateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ComputeCapacity"], "Expected key ComputeCapacity to exist in table")
	if struct["ImageArn"] then asserts.AssertArn(struct["ImageArn"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then asserts.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["FleetType"] then asserts.AssertFleetType(struct["FleetType"]) end
	if struct["DomainJoinInfo"] then asserts.AssertDomainJoinInfo(struct["DomainJoinInfo"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFleetRequest[k], "CreateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImageArn [Arn] <p>The ARN of the public, private, or shared image to use.</p>
-- * Name [Name] <p>A unique name for the fleet.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.</p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default internet access for the fleet.</p>
-- * InstanceType [String] <p>The instance type to use when launching fleet instances. The following instance types are available:</p> <ul> <li> <p>stream.standard.medium</p> </li> <li> <p>stream.standard.large</p> </li> <li> <p>stream.compute.large</p> </li> <li> <p>stream.compute.xlarge</p> </li> <li> <p>stream.compute.2xlarge</p> </li> <li> <p>stream.compute.4xlarge</p> </li> <li> <p>stream.compute.8xlarge</p> </li> <li> <p>stream.memory.large</p> </li> <li> <p>stream.memory.xlarge</p> </li> <li> <p>stream.memory.2xlarge</p> </li> <li> <p>stream.memory.4xlarge</p> </li> <li> <p>stream.memory.8xlarge</p> </li> <li> <p>stream.graphics-design.large</p> </li> <li> <p>stream.graphics-design.xlarge</p> </li> <li> <p>stream.graphics-design.2xlarge</p> </li> <li> <p>stream.graphics-design.4xlarge</p> </li> <li> <p>stream.graphics-desktop.2xlarge</p> </li> <li> <p>stream.graphics-pro.4xlarge</p> </li> <li> <p>stream.graphics-pro.8xlarge</p> </li> <li> <p>stream.graphics-pro.16xlarge</p> </li> </ul>
-- * DisplayName [DisplayName] <p>The fleet name for display.</p>
-- * ImageName [String] <p>The name of the image used to create the fleet.</p>
-- * ComputeCapacity [ComputeCapacity] <p>The desired capacity for the fleet.</p>
-- * Description [Description] <p>The description for display.</p>
-- * FleetType [FleetType] <p>The fleet type.</p> <dl> <dt>ALWAYS_ON</dt> <dd> <p>Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.</p> </dd> <dt>ON_DEMAND</dt> <dd> <p>Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.</p> </dd> </dl>
-- * DomainJoinInfo [DomainJoinInfo] <p>The information needed to join a Microsoft Active Directory domain.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.</p>
-- Required key: Name
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
		["ImageArn"] = args["ImageArn"],
		["Name"] = args["Name"],
		["VpcConfig"] = args["VpcConfig"],
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["InstanceType"] = args["InstanceType"],
		["DisplayName"] = args["DisplayName"],
		["ImageName"] = args["ImageName"],
		["ComputeCapacity"] = args["ComputeCapacity"],
		["Description"] = args["Description"],
		["FleetType"] = args["FleetType"],
		["DomainJoinInfo"] = args["DomainJoinInfo"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
	}
	asserts.AssertCreateFleetRequest(all_args)
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
-- * Name [String] <p>The name of the stack.</p>
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

keys.DescribeDirectoryConfigsRequest = { ["NextToken"] = true, ["DirectoryNames"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeDirectoryConfigsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoryConfigsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["DirectoryNames"] then asserts.AssertDirectoryNameList(struct["DirectoryNames"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectoryConfigsRequest[k], "DescribeDirectoryConfigsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoryConfigsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * DirectoryNames [DirectoryNameList] <p>The directory names.</p>
-- * MaxResults [Integer] <p>The maximum size of each page of results.</p>
-- @return DescribeDirectoryConfigsRequest structure as a key-value pair table
function M.DescribeDirectoryConfigsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDirectoryConfigsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DirectoryNames"] = args["DirectoryNames"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeDirectoryConfigsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectoryConfig = { ["OrganizationalUnitDistinguishedNames"] = true, ["ServiceAccountCredentials"] = true, ["DirectoryName"] = true, ["CreatedTime"] = true, nil }

function asserts.AssertDirectoryConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryConfig to be of type 'table'")
	assert(struct["DirectoryName"], "Expected key DirectoryName to exist in table")
	if struct["OrganizationalUnitDistinguishedNames"] then asserts.AssertOrganizationalUnitDistinguishedNamesList(struct["OrganizationalUnitDistinguishedNames"]) end
	if struct["ServiceAccountCredentials"] then asserts.AssertServiceAccountCredentials(struct["ServiceAccountCredentials"]) end
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryConfig[k], "DirectoryConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryConfig
-- <p>Configuration information for the directory used to join domains.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnitDistinguishedNames [OrganizationalUnitDistinguishedNamesList] <p>The distinguished names of the organizational units for computer accounts.</p>
-- * ServiceAccountCredentials [ServiceAccountCredentials] <p>The credentials for the service account used by the streaming instance to connect to the directory.</p>
-- * DirectoryName [DirectoryName] <p>The fully qualified name of the directory (for example, corp.example.com).</p>
-- * CreatedTime [Timestamp] <p>The time the directory configuration was created.</p>
-- Required key: DirectoryName
-- @return DirectoryConfig structure as a key-value pair table
function M.DirectoryConfig(args)
	assert(args, "You must provide an argument table when creating DirectoryConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnitDistinguishedNames"] = args["OrganizationalUnitDistinguishedNames"],
		["ServiceAccountCredentials"] = args["ServiceAccountCredentials"],
		["DirectoryName"] = args["DirectoryName"],
		["CreatedTime"] = args["CreatedTime"],
	}
	asserts.AssertDirectoryConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyImageResponse = { ["DestinationImageName"] = true, nil }

function asserts.AssertCopyImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyImageResponse to be of type 'table'")
	if struct["DestinationImageName"] then asserts.AssertName(struct["DestinationImageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyImageResponse[k], "CopyImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyImageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationImageName [Name] <p>The name of the destination image.</p>
-- @return CopyImageResponse structure as a key-value pair table
function M.CopyImageResponse(args)
	assert(args, "You must provide an argument table when creating CopyImageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationImageName"] = args["DestinationImageName"],
	}
	asserts.AssertCopyImageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkAccessConfiguration = { ["EniId"] = true, ["EniPrivateIpAddress"] = true, nil }

function asserts.AssertNetworkAccessConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkAccessConfiguration to be of type 'table'")
	if struct["EniId"] then asserts.AssertString(struct["EniId"]) end
	if struct["EniPrivateIpAddress"] then asserts.AssertString(struct["EniPrivateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkAccessConfiguration[k], "NetworkAccessConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkAccessConfiguration
-- <p>The network details of the fleet instance for the streaming session.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EniId [String] <p>The resource identifier of the elastic network interface that is attached to instances in your VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>
-- * EniPrivateIpAddress [String] <p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>
-- @return NetworkAccessConfiguration structure as a key-value pair table
function M.NetworkAccessConfiguration(args)
	assert(args, "You must provide an argument table when creating NetworkAccessConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EniId"] = args["EniId"],
		["EniPrivateIpAddress"] = args["EniPrivateIpAddress"],
	}
	asserts.AssertNetworkAccessConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["UserName"] = true, ["Status"] = true, ["AuthenticationType"] = true, ["FirstName"] = true, ["LastName"] = true, ["Enabled"] = true, ["CreatedTime"] = true, ["Arn"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["FirstName"] then asserts.AssertUserAttributeValue(struct["FirstName"]) end
	if struct["LastName"] then asserts.AssertUserAttributeValue(struct["LastName"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>Describes a user in the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [Username] <p>The email address of the user.</p>
-- * Status [String] <p>The status of the user in the user pool. The status can be one of the following:</p> <ul> <li> <p>UNCONFIRMED – The user is created but not confirmed.</p> </li> <li> <p>CONFIRMED – The user is confirmed.</p> </li> <li> <p>ARCHIVED – The user is no longer active.</p> </li> <li> <p>COMPROMISED – The user is disabled because of a potential security threat.</p> </li> <li> <p>UNKNOWN – The user status is not known.</p> </li> </ul>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user.</p>
-- * FirstName [UserAttributeValue] <p>The first name, or given name, of the user.</p>
-- * LastName [UserAttributeValue] <p>The last name, or surname, of the user.</p>
-- * Enabled [Boolean] <p>Specifies whether the user in the user pool is enabled.</p>
-- * CreatedTime [Timestamp] <p>The date and time the user was created in the user pool.</p>
-- * Arn [Arn] <p>The ARN of the user.</p>
-- Required key: AuthenticationType
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
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["AuthenticationType"] = args["AuthenticationType"],
		["FirstName"] = args["FirstName"],
		["LastName"] = args["LastName"],
		["Enabled"] = args["Enabled"],
		["CreatedTime"] = args["CreatedTime"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectoryConfigRequest = { ["OrganizationalUnitDistinguishedNames"] = true, ["ServiceAccountCredentials"] = true, ["DirectoryName"] = true, nil }

function asserts.AssertCreateDirectoryConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryConfigRequest to be of type 'table'")
	assert(struct["DirectoryName"], "Expected key DirectoryName to exist in table")
	assert(struct["OrganizationalUnitDistinguishedNames"], "Expected key OrganizationalUnitDistinguishedNames to exist in table")
	assert(struct["ServiceAccountCredentials"], "Expected key ServiceAccountCredentials to exist in table")
	if struct["OrganizationalUnitDistinguishedNames"] then asserts.AssertOrganizationalUnitDistinguishedNamesList(struct["OrganizationalUnitDistinguishedNames"]) end
	if struct["ServiceAccountCredentials"] then asserts.AssertServiceAccountCredentials(struct["ServiceAccountCredentials"]) end
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryConfigRequest[k], "CreateDirectoryConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnitDistinguishedNames [OrganizationalUnitDistinguishedNamesList] <p>The distinguished names of the organizational units for computer accounts.</p>
-- * ServiceAccountCredentials [ServiceAccountCredentials] <p>The credentials for the service account used by the streaming instance to connect to the directory.</p>
-- * DirectoryName [DirectoryName] <p>The fully qualified name of the directory (for example, corp.example.com).</p>
-- Required key: DirectoryName
-- Required key: OrganizationalUnitDistinguishedNames
-- Required key: ServiceAccountCredentials
-- @return CreateDirectoryConfigRequest structure as a key-value pair table
function M.CreateDirectoryConfigRequest(args)
	assert(args, "You must provide an argument table when creating CreateDirectoryConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnitDistinguishedNames"] = args["OrganizationalUnitDistinguishedNames"],
		["ServiceAccountCredentials"] = args["ServiceAccountCredentials"],
		["DirectoryName"] = args["DirectoryName"],
	}
	asserts.AssertCreateDirectoryConfigRequest(all_args)
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
-- * Fleet [Fleet] <p>Information about the fleet.</p>
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

keys.CreateUserResult = { nil }

function asserts.AssertCreateUserResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResult[k], "CreateUserResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateUserResult structure as a key-value pair table
function M.CreateUserResult(args)
	assert(args, "You must provide an argument table when creating CreateUserResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateUserResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableUserRequest = { ["UserName"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertDisableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableUserRequest[k], "DisableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [Username] <p>The email address of the user.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user. You must specify USERPOOL.</p>
-- Required key: UserName
-- Required key: AuthenticationType
-- @return DisableUserRequest structure as a key-value pair table
function M.DisableUserRequest(args)
	assert(args, "You must provide an argument table when creating DisableUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertDisableUserRequest(all_args)
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

keys.EnableUserResult = { nil }

function asserts.AssertEnableUserResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableUserResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableUserResult[k], "EnableUserResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableUserResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableUserResult structure as a key-value pair table
function M.EnableUserResult(args)
	assert(args, "You must provide an argument table when creating EnableUserResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableUserResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["UserName"] = true, ["LastName"] = true, ["MessageAction"] = true, ["AuthenticationType"] = true, ["FirstName"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["LastName"] then asserts.AssertUserAttributeValue(struct["LastName"]) end
	if struct["MessageAction"] then asserts.AssertMessageAction(struct["MessageAction"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	if struct["FirstName"] then asserts.AssertUserAttributeValue(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [Username] <p>The email address of the user.</p>
-- * LastName [UserAttributeValue] <p>The last name, or surname, of the user.</p>
-- * MessageAction [MessageAction] <p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p> <note> <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p> </note>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user. You must specify USERPOOL. </p>
-- * FirstName [UserAttributeValue] <p>The first name, or given name, of the user.</p>
-- Required key: UserName
-- Required key: AuthenticationType
-- @return CreateUserRequest structure as a key-value pair table
function M.CreateUserRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["LastName"] = args["LastName"],
		["MessageAction"] = args["MessageAction"],
		["AuthenticationType"] = args["AuthenticationType"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertCreateUserRequest(all_args)
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
-- * Names [StringList] <p>The names of the fleets to describe.</p>
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

keys.BatchDisassociateUserStackRequest = { ["UserStackAssociations"] = true, nil }

function asserts.AssertBatchDisassociateUserStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDisassociateUserStackRequest to be of type 'table'")
	assert(struct["UserStackAssociations"], "Expected key UserStackAssociations to exist in table")
	if struct["UserStackAssociations"] then asserts.AssertUserStackAssociationList(struct["UserStackAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDisassociateUserStackRequest[k], "BatchDisassociateUserStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDisassociateUserStackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserStackAssociations [UserStackAssociationList] <p>The list of UserStackAssociation objects.</p>
-- Required key: UserStackAssociations
-- @return BatchDisassociateUserStackRequest structure as a key-value pair table
function M.BatchDisassociateUserStackRequest(args)
	assert(args, "You must provide an argument table when creating BatchDisassociateUserStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserStackAssociations"] = args["UserStackAssociations"],
	}
	asserts.AssertBatchDisassociateUserStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
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
-- * Fleets [FleetList] <p>Information about the fleets.</p>
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

keys.DomainJoinInfo = { ["DirectoryName"] = true, ["OrganizationalUnitDistinguishedName"] = true, nil }

function asserts.AssertDomainJoinInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainJoinInfo to be of type 'table'")
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	if struct["OrganizationalUnitDistinguishedName"] then asserts.AssertOrganizationalUnitDistinguishedName(struct["OrganizationalUnitDistinguishedName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainJoinInfo[k], "DomainJoinInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainJoinInfo
-- <p>Contains the information needed to join a Microsoft Active Directory domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryName [DirectoryName] <p>The fully qualified name of the directory (for example, corp.example.com).</p>
-- * OrganizationalUnitDistinguishedName [OrganizationalUnitDistinguishedName] <p>The distinguished name of the organizational unit for computer accounts.</p>
-- @return DomainJoinInfo structure as a key-value pair table
function M.DomainJoinInfo(args)
	assert(args, "You must provide an argument table when creating DomainJoinInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryName"] = args["DirectoryName"],
		["OrganizationalUnitDistinguishedName"] = args["OrganizationalUnitDistinguishedName"],
	}
	asserts.AssertDomainJoinInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImagePermissions = { ["allowImageBuilder"] = true, ["allowFleet"] = true, nil }

function asserts.AssertImagePermissions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImagePermissions to be of type 'table'")
	if struct["allowImageBuilder"] then asserts.AssertBooleanObject(struct["allowImageBuilder"]) end
	if struct["allowFleet"] then asserts.AssertBooleanObject(struct["allowFleet"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImagePermissions[k], "ImagePermissions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImagePermissions
-- <p>Describes the permissions for an image. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * allowImageBuilder [BooleanObject] <p>Indicates whether the image can be used for an image builder.</p>
-- * allowFleet [BooleanObject] <p>Indicates whether the image can be used for a fleet.</p>
-- @return ImagePermissions structure as a key-value pair table
function M.ImagePermissions(args)
	assert(args, "You must provide an argument table when creating ImagePermissions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["allowImageBuilder"] = args["allowImageBuilder"],
		["allowFleet"] = args["allowFleet"],
	}
	asserts.AssertImagePermissions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFleetRequest = { ["AttributesToDelete"] = true, ["DeleteVpcConfig"] = true, ["ImageArn"] = true, ["Name"] = true, ["VpcConfig"] = true, ["DisconnectTimeoutInSeconds"] = true, ["EnableDefaultInternetAccess"] = true, ["DisplayName"] = true, ["ImageName"] = true, ["ComputeCapacity"] = true, ["Description"] = true, ["InstanceType"] = true, ["DomainJoinInfo"] = true, ["MaxUserDurationInSeconds"] = true, nil }

function asserts.AssertUpdateFleetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetRequest to be of type 'table'")
	if struct["AttributesToDelete"] then asserts.AssertFleetAttributes(struct["AttributesToDelete"]) end
	if struct["DeleteVpcConfig"] then asserts.AssertBoolean(struct["DeleteVpcConfig"]) end
	if struct["ImageArn"] then asserts.AssertArn(struct["ImageArn"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["DisconnectTimeoutInSeconds"] then asserts.AssertInteger(struct["DisconnectTimeoutInSeconds"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["ImageName"] then asserts.AssertString(struct["ImageName"]) end
	if struct["ComputeCapacity"] then asserts.AssertComputeCapacity(struct["ComputeCapacity"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["DomainJoinInfo"] then asserts.AssertDomainJoinInfo(struct["DomainJoinInfo"]) end
	if struct["MaxUserDurationInSeconds"] then asserts.AssertInteger(struct["MaxUserDurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetRequest[k], "UpdateFleetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributesToDelete [FleetAttributes] <p>The fleet attributes to delete.</p>
-- * DeleteVpcConfig [Boolean] <p>Deletes the VPC association for the specified fleet.</p>
-- * ImageArn [Arn] <p>The ARN of the public, private, or shared image to use.</p>
-- * Name [String] <p>A unique name for the fleet.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration for the fleet.</p>
-- * DisconnectTimeoutInSeconds [Integer] <p>The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.</p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default internet access for the fleet.</p>
-- * DisplayName [DisplayName] <p>The fleet name for display.</p>
-- * ImageName [String] <p>The name of the image used to create the fleet.</p>
-- * ComputeCapacity [ComputeCapacity] <p>The desired capacity for the fleet.</p>
-- * Description [Description] <p>The description for display.</p>
-- * InstanceType [String] <p>The instance type to use when launching fleet instances. The following instance types are available:</p> <ul> <li> <p>stream.standard.medium</p> </li> <li> <p>stream.standard.large</p> </li> <li> <p>stream.compute.large</p> </li> <li> <p>stream.compute.xlarge</p> </li> <li> <p>stream.compute.2xlarge</p> </li> <li> <p>stream.compute.4xlarge</p> </li> <li> <p>stream.compute.8xlarge</p> </li> <li> <p>stream.memory.large</p> </li> <li> <p>stream.memory.xlarge</p> </li> <li> <p>stream.memory.2xlarge</p> </li> <li> <p>stream.memory.4xlarge</p> </li> <li> <p>stream.memory.8xlarge</p> </li> <li> <p>stream.graphics-design.large</p> </li> <li> <p>stream.graphics-design.xlarge</p> </li> <li> <p>stream.graphics-design.2xlarge</p> </li> <li> <p>stream.graphics-design.4xlarge</p> </li> <li> <p>stream.graphics-desktop.2xlarge</p> </li> <li> <p>stream.graphics-pro.4xlarge</p> </li> <li> <p>stream.graphics-pro.8xlarge</p> </li> <li> <p>stream.graphics-pro.16xlarge</p> </li> </ul>
-- * DomainJoinInfo [DomainJoinInfo] <p>The information needed to join a Microsoft Active Directory domain.</p>
-- * MaxUserDurationInSeconds [Integer] <p>The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.</p>
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
		["ImageArn"] = args["ImageArn"],
		["Name"] = args["Name"],
		["VpcConfig"] = args["VpcConfig"],
		["DisconnectTimeoutInSeconds"] = args["DisconnectTimeoutInSeconds"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["DisplayName"] = args["DisplayName"],
		["ImageName"] = args["ImageName"],
		["ComputeCapacity"] = args["ComputeCapacity"],
		["Description"] = args["Description"],
		["InstanceType"] = args["InstanceType"],
		["DomainJoinInfo"] = args["DomainJoinInfo"],
		["MaxUserDurationInSeconds"] = args["MaxUserDurationInSeconds"],
	}
	asserts.AssertUpdateFleetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectoryConfigsResult = { ["DirectoryConfigs"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeDirectoryConfigsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectoryConfigsResult to be of type 'table'")
	if struct["DirectoryConfigs"] then asserts.AssertDirectoryConfigList(struct["DirectoryConfigs"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectoryConfigsResult[k], "DescribeDirectoryConfigsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectoryConfigsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryConfigs [DirectoryConfigList] <p>Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response. </p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @return DescribeDirectoryConfigsResult structure as a key-value pair table
function M.DescribeDirectoryConfigsResult(args)
	assert(args, "You must provide an argument table when creating DescribeDirectoryConfigsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryConfigs"] = args["DirectoryConfigs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeDirectoryConfigsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeImagePermissionsResult = { ["SharedImagePermissionsList"] = true, ["NextToken"] = true, ["Name"] = true, nil }

function asserts.AssertDescribeImagePermissionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagePermissionsResult to be of type 'table'")
	if struct["SharedImagePermissionsList"] then asserts.AssertSharedImagePermissionsList(struct["SharedImagePermissionsList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagePermissionsResult[k], "DescribeImagePermissionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagePermissionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedImagePermissionsList [SharedImagePermissionsList] <p>The permissions for a private image that you own. </p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Name [Name] <p>The name of the private image.</p>
-- @return DescribeImagePermissionsResult structure as a key-value pair table
function M.DescribeImagePermissionsResult(args)
	assert(args, "You must provide an argument table when creating DescribeImagePermissionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedImagePermissionsList"] = args["SharedImagePermissionsList"],
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeImagePermissionsResult(all_args)
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
-- <p>Describes a fleet error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [FleetErrorCode] <p>The error code.</p>
-- * ErrorMessage [String] <p>The error message.</p>
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

keys.BatchDisassociateUserStackResult = { ["errors"] = true, nil }

function asserts.AssertBatchDisassociateUserStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDisassociateUserStackResult to be of type 'table'")
	if struct["errors"] then asserts.AssertUserStackAssociationErrorList(struct["errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDisassociateUserStackResult[k], "BatchDisassociateUserStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDisassociateUserStackResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errors [UserStackAssociationErrorList] <p>The list of UserStackAssociationError objects.</p>
-- @return BatchDisassociateUserStackResult structure as a key-value pair table
function M.BatchDisassociateUserStackResult(args)
	assert(args, "You must provide an argument table when creating BatchDisassociateUserStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errors"] = args["errors"],
	}
	asserts.AssertBatchDisassociateUserStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateImageBuilderStreamingURLResult = { ["Expires"] = true, ["StreamingURL"] = true, nil }

function asserts.AssertCreateImageBuilderStreamingURLResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImageBuilderStreamingURLResult to be of type 'table'")
	if struct["Expires"] then asserts.AssertTimestamp(struct["Expires"]) end
	if struct["StreamingURL"] then asserts.AssertString(struct["StreamingURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImageBuilderStreamingURLResult[k], "CreateImageBuilderStreamingURLResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImageBuilderStreamingURLResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expires [Timestamp] <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
-- * StreamingURL [String] <p>The URL to start the AppStream 2.0 streaming session.</p>
-- @return CreateImageBuilderStreamingURLResult structure as a key-value pair table
function M.CreateImageBuilderStreamingURLResult(args)
	assert(args, "You must provide an argument table when creating CreateImageBuilderStreamingURLResult")
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
	asserts.AssertCreateImageBuilderStreamingURLResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserStackAssociation = { ["StackName"] = true, ["UserName"] = true, ["SendEmailNotification"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertUserStackAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStackAssociation to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AuthenticationType"], "Expected key AuthenticationType to exist in table")
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["SendEmailNotification"] then asserts.AssertBoolean(struct["SendEmailNotification"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserStackAssociation[k], "UserStackAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStackAssociation
-- <p>Describes a user in the user pool and the associated stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [String] <p>The name of the stack that is associated with the user.</p>
-- * UserName [Username] <p>The email address of the user who is associated with the stack.</p>
-- * SendEmailNotification [Boolean] <p>Specifies whether a welcome email is sent to a user after the user is created in the user pool.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user.</p>
-- Required key: StackName
-- Required key: UserName
-- Required key: AuthenticationType
-- @return UserStackAssociation structure as a key-value pair table
function M.UserStackAssociation(args)
	assert(args, "You must provide an argument table when creating UserStackAssociation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["UserName"] = args["UserName"],
		["SendEmailNotification"] = args["SendEmailNotification"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertUserStackAssociation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateImagePermissionsResult = { nil }

function asserts.AssertUpdateImagePermissionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateImagePermissionsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateImagePermissionsResult[k], "UpdateImagePermissionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateImagePermissionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateImagePermissionsResult structure as a key-value pair table
function M.UpdateImagePermissionsResult(args)
	assert(args, "You must provide an argument table when creating UpdateImagePermissionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateImagePermissionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteImageBuilderResult = { ["ImageBuilder"] = true, nil }

function asserts.AssertDeleteImageBuilderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImageBuilderResult to be of type 'table'")
	if struct["ImageBuilder"] then asserts.AssertImageBuilder(struct["ImageBuilder"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImageBuilderResult[k], "DeleteImageBuilderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImageBuilderResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImageBuilder [ImageBuilder] <p>Information about the image builder.</p>
-- @return DeleteImageBuilderResult structure as a key-value pair table
function M.DeleteImageBuilderResult(args)
	assert(args, "You must provide an argument table when creating DeleteImageBuilderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImageBuilder"] = args["ImageBuilder"],
	}
	asserts.AssertDeleteImageBuilderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateImageBuilderStreamingURLRequest = { ["Name"] = true, ["Validity"] = true, nil }

function asserts.AssertCreateImageBuilderStreamingURLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImageBuilderStreamingURLRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Validity"] then asserts.AssertLong(struct["Validity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImageBuilderStreamingURLRequest[k], "CreateImageBuilderStreamingURLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImageBuilderStreamingURLRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the image builder.</p>
-- * Validity [Long] <p>The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
-- Required key: Name
-- @return CreateImageBuilderStreamingURLRequest structure as a key-value pair table
function M.CreateImageBuilderStreamingURLRequest(args)
	assert(args, "You must provide an argument table when creating CreateImageBuilderStreamingURLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Validity"] = args["Validity"],
	}
	asserts.AssertCreateImageBuilderStreamingURLRequest(all_args)
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
-- * AuthenticationType [AuthenticationType] <p>The authentication method. Specify <code>API</code> for a user authenticated using a streaming URL or <code>SAML</code> for a SAML federated user. The default is to authenticate users using a streaming URL.</p>
-- * FleetName [String] <p>The name of the fleet. This value is case-sensitive.</p>
-- * UserId [UserId] <p>The user ID.</p>
-- * StackName [String] <p>The name of the stack. This value is case-sensitive.</p>
-- * Limit [Integer] <p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>
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

keys.ListTagsForResourceResponse = { ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>The information about the tags.</p>
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
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
-- * StackName [String] <p>The name of the stack.</p>
-- * FleetName [String] <p>The name of the fleet. </p>
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

keys.DescribeUserStackAssociationsRequest = { ["StackName"] = true, ["UserName"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["AuthenticationType"] = true, nil }

function asserts.AssertDescribeUserStackAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserStackAssociationsRequest to be of type 'table'")
	if struct["StackName"] then asserts.AssertString(struct["StackName"]) end
	if struct["UserName"] then asserts.AssertUsername(struct["UserName"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["AuthenticationType"] then asserts.AssertAuthenticationType(struct["AuthenticationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserStackAssociationsRequest[k], "DescribeUserStackAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserStackAssociationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [String] <p>The name of the stack that is associated with the user.</p>
-- * UserName [Username] <p>The email address of the user who is associated with the stack.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * MaxResults [MaxResults] <p>The maximum size of each page of results.</p>
-- * AuthenticationType [AuthenticationType] <p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>
-- @return DescribeUserStackAssociationsRequest structure as a key-value pair table
function M.DescribeUserStackAssociationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserStackAssociationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["UserName"] = args["UserName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["AuthenticationType"] = args["AuthenticationType"],
	}
	asserts.AssertDescribeUserStackAssociationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SharedImagePermissions = { ["imagePermissions"] = true, ["sharedAccountId"] = true, nil }

function asserts.AssertSharedImagePermissions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharedImagePermissions to be of type 'table'")
	assert(struct["sharedAccountId"], "Expected key sharedAccountId to exist in table")
	assert(struct["imagePermissions"], "Expected key imagePermissions to exist in table")
	if struct["imagePermissions"] then asserts.AssertImagePermissions(struct["imagePermissions"]) end
	if struct["sharedAccountId"] then asserts.AssertAwsAccountId(struct["sharedAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SharedImagePermissions[k], "SharedImagePermissions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharedImagePermissions
-- <p>Describes the permissions that are available to the specified AWS account for a shared image.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * imagePermissions [ImagePermissions] <p>Describes the permissions for a shared image.</p>
-- * sharedAccountId [AwsAccountId] <p>The 12-digit ID of the AWS account with which the image is shared.</p>
-- Required key: sharedAccountId
-- Required key: imagePermissions
-- @return SharedImagePermissions structure as a key-value pair table
function M.SharedImagePermissions(args)
	assert(args, "You must provide an argument table when creating SharedImagePermissions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["imagePermissions"] = args["imagePermissions"],
		["sharedAccountId"] = args["sharedAccountId"],
	}
	asserts.AssertSharedImagePermissions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopImageBuilderResult = { ["ImageBuilder"] = true, nil }

function asserts.AssertStopImageBuilderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopImageBuilderResult to be of type 'table'")
	if struct["ImageBuilder"] then asserts.AssertImageBuilder(struct["ImageBuilder"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopImageBuilderResult[k], "StopImageBuilderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopImageBuilderResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImageBuilder [ImageBuilder] <p>Information about the image builder.</p>
-- @return StopImageBuilderResult structure as a key-value pair table
function M.StopImageBuilderResult(args)
	assert(args, "You must provide an argument table when creating StopImageBuilderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImageBuilder"] = args["ImageBuilder"],
	}
	asserts.AssertStopImageBuilderResult(all_args)
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
-- * Fleet [Fleet] <p>Information about the fleet.</p>
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

keys.ResourceError = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["ErrorTimestamp"] = true, nil }

function asserts.AssertResourceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertFleetErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	if struct["ErrorTimestamp"] then asserts.AssertTimestamp(struct["ErrorTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceError[k], "ResourceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceError
-- <p>Describes a resource error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [FleetErrorCode] <p>The error code.</p>
-- * ErrorMessage [String] <p>The error message.</p>
-- * ErrorTimestamp [Timestamp] <p>The time the error occurred.</p>
-- @return ResourceError structure as a key-value pair table
function M.ResourceError(args)
	assert(args, "You must provide an argument table when creating ResourceError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["ErrorTimestamp"] = args["ErrorTimestamp"],
	}
	asserts.AssertResourceError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageConnector = { ["Domains"] = true, ["ConnectorType"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertStorageConnector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageConnector to be of type 'table'")
	assert(struct["ConnectorType"], "Expected key ConnectorType to exist in table")
	if struct["Domains"] then asserts.AssertDomainList(struct["Domains"]) end
	if struct["ConnectorType"] then asserts.AssertStorageConnectorType(struct["ConnectorType"]) end
	if struct["ResourceIdentifier"] then asserts.AssertResourceIdentifier(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageConnector[k], "StorageConnector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageConnector
-- <p>Describes a connector to enable persistent storage for users.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domains [DomainList] <p>The names of the domains for the G Suite account.</p>
-- * ConnectorType [StorageConnectorType] <p>The type of storage connector.</p>
-- * ResourceIdentifier [ResourceIdentifier] <p>The ARN of the storage connector.</p>
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
		["Domains"] = args["Domains"],
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

keys.DescribeImagesRequest = { ["Arns"] = true, ["NextToken"] = true, ["Type"] = true, ["Names"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesRequest to be of type 'table'")
	if struct["Arns"] then asserts.AssertArnList(struct["Arns"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Type"] then asserts.AssertVisibilityType(struct["Type"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	if struct["MaxResults"] then asserts.AssertDescribeImagesMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesRequest[k], "DescribeImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arns [ArnList] <p>The ARNs of the public, private, and shared images to describe.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * Type [VisibilityType] <p>The type of image (public, private, or shared) to describe. </p>
-- * Names [StringList] <p>The names of the public or private images to describe.</p>
-- * MaxResults [DescribeImagesMaxResults] <p>The maximum size of each page of results.</p>
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
		["Arns"] = args["Arns"],
		["NextToken"] = args["NextToken"],
		["Type"] = args["Type"],
		["Names"] = args["Names"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeImagesRequest(all_args)
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
-- <p>Describes the capacity status for a fleet.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Available [Integer] <p>The number of currently available instances that can be used to stream sessions.</p>
-- * Desired [Integer] <p>The desired number of streaming instances.</p>
-- * Running [Integer] <p>The total number of simultaneous streaming instances that are running.</p>
-- * InUse [Integer] <p>The number of instances in use for streaming.</p>
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

keys.ImageBuilder = { ["DisplayName"] = true, ["Name"] = true, ["VpcConfig"] = true, ["AppstreamAgentVersion"] = true, ["EnableDefaultInternetAccess"] = true, ["ImageBuilderErrors"] = true, ["Platform"] = true, ["State"] = true, ["DomainJoinInfo"] = true, ["CreatedTime"] = true, ["ImageArn"] = true, ["StateChangeReason"] = true, ["InstanceType"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertImageBuilder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageBuilder to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["AppstreamAgentVersion"] then asserts.AssertAppstreamAgentVersion(struct["AppstreamAgentVersion"]) end
	if struct["EnableDefaultInternetAccess"] then asserts.AssertBooleanObject(struct["EnableDefaultInternetAccess"]) end
	if struct["ImageBuilderErrors"] then asserts.AssertResourceErrors(struct["ImageBuilderErrors"]) end
	if struct["Platform"] then asserts.AssertPlatformType(struct["Platform"]) end
	if struct["State"] then asserts.AssertImageBuilderState(struct["State"]) end
	if struct["DomainJoinInfo"] then asserts.AssertDomainJoinInfo(struct["DomainJoinInfo"]) end
	if struct["CreatedTime"] then asserts.AssertTimestamp(struct["CreatedTime"]) end
	if struct["ImageArn"] then asserts.AssertArn(struct["ImageArn"]) end
	if struct["StateChangeReason"] then asserts.AssertImageBuilderStateChangeReason(struct["StateChangeReason"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageBuilder[k], "ImageBuilder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageBuilder
-- <p>Describes a streaming instance used for editing an image. New images are created from a snapshot through an image builder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The image builder name for display.</p>
-- * Name [String] <p>The name of the image builder.</p>
-- * VpcConfig [VpcConfig] <p>The VPC configuration of the image builder.</p>
-- * AppstreamAgentVersion [AppstreamAgentVersion] <p>The version of the AppStream 2.0 agent that is currently being used by this image builder. </p>
-- * EnableDefaultInternetAccess [BooleanObject] <p>Enables or disables default internet access for the image builder.</p>
-- * ImageBuilderErrors [ResourceErrors] <p>The image builder errors.</p>
-- * Platform [PlatformType] <p>The operating system platform of the image builder.</p>
-- * State [ImageBuilderState] <p>The state of the image builder.</p>
-- * DomainJoinInfo [DomainJoinInfo] <p>The information needed to join a Microsoft Active Directory domain.</p>
-- * CreatedTime [Timestamp] <p>The time stamp when the image builder was created.</p>
-- * ImageArn [Arn] <p>The ARN of the image from which this builder was created.</p>
-- * StateChangeReason [ImageBuilderStateChangeReason] <p>The reason why the last state change occurred.</p>
-- * InstanceType [String] <p>The instance type for the image builder.</p>
-- * Arn [Arn] <p>The ARN for the image builder.</p>
-- * Description [String] <p>The description for display.</p>
-- Required key: Name
-- @return ImageBuilder structure as a key-value pair table
function M.ImageBuilder(args)
	assert(args, "You must provide an argument table when creating ImageBuilder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["VpcConfig"] = args["VpcConfig"],
		["AppstreamAgentVersion"] = args["AppstreamAgentVersion"],
		["EnableDefaultInternetAccess"] = args["EnableDefaultInternetAccess"],
		["ImageBuilderErrors"] = args["ImageBuilderErrors"],
		["Platform"] = args["Platform"],
		["State"] = args["State"],
		["DomainJoinInfo"] = args["DomainJoinInfo"],
		["CreatedTime"] = args["CreatedTime"],
		["ImageArn"] = args["ImageArn"],
		["StateChangeReason"] = args["StateChangeReason"],
		["InstanceType"] = args["InstanceType"],
		["Arn"] = args["Arn"],
		["Description"] = args["Description"],
	}
	asserts.AssertImageBuilder(all_args)
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
-- * Name [String] <p>The name of the fleet.</p>
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

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
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

keys.ApplicationSettingsResponse = { ["SettingsGroup"] = true, ["Enabled"] = true, ["S3BucketName"] = true, nil }

function asserts.AssertApplicationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSettingsResponse to be of type 'table'")
	if struct["SettingsGroup"] then asserts.AssertSettingsGroup(struct["SettingsGroup"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSettingsResponse[k], "ApplicationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSettingsResponse
-- <p>Describes the persistent application settings for users of a stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SettingsGroup [SettingsGroup] <p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>
-- * Enabled [Boolean] <p>Specifies whether persistent application settings are enabled for users during their streaming sessions.</p>
-- * S3BucketName [String] <p>The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region. </p>
-- @return ApplicationSettingsResponse structure as a key-value pair table
function M.ApplicationSettingsResponse(args)
	assert(args, "You must provide an argument table when creating ApplicationSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SettingsGroup"] = args["SettingsGroup"],
		["Enabled"] = args["Enabled"],
		["S3BucketName"] = args["S3BucketName"],
	}
	asserts.AssertApplicationSettingsResponse(all_args)
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
-- * Expires [Timestamp] <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
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
-- * StackName [String] <p>The name of the stack.</p>
-- * FleetName [String] <p>The name of the fleet.</p>
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

keys.DeleteImagePermissionsRequest = { ["SharedAccountId"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteImagePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImagePermissionsRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SharedAccountId"], "Expected key SharedAccountId to exist in table")
	if struct["SharedAccountId"] then asserts.AssertAwsAccountId(struct["SharedAccountId"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImagePermissionsRequest[k], "DeleteImagePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImagePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SharedAccountId [AwsAccountId] <p>The 12-digit ID of the AWS account for which to delete image permissions.</p>
-- * Name [Name] <p>The name of the private image.</p>
-- Required key: Name
-- Required key: SharedAccountId
-- @return DeleteImagePermissionsRequest structure as a key-value pair table
function M.DeleteImagePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteImagePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SharedAccountId"] = args["SharedAccountId"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteImagePermissionsRequest(all_args)
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
-- * FleetName [String] <p>The name of the fleet.</p>
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

keys.TagResourceRequest = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * Tags [Tags] <p>The tags to associate. A tag is a key-value pair (the value is optional). For example, <code>Environment=Test</code>, or, if you do not specify a value, <code>Environment=</code>. </p> <p>If you do not specify a value, we set the value to an empty string.</p>
-- Required key: ResourceArn
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeImageBuildersRequest = { ["NextToken"] = true, ["Names"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeImageBuildersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImageBuildersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Names"] then asserts.AssertStringList(struct["Names"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImageBuildersRequest[k], "DescribeImageBuildersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImageBuildersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
-- * Names [StringList] <p>The names of the image builders to describe.</p>
-- * MaxResults [Integer] <p>The maximum size of each page of results.</p>
-- @return DescribeImageBuildersRequest structure as a key-value pair table
function M.DescribeImageBuildersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeImageBuildersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Names"] = args["Names"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeImageBuildersRequest(all_args)
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
-- <p>Describes VPC configuration information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdList] <p>The subnets to which a network interface is established from the fleet instance.</p>
-- * SecurityGroupIds [SecurityGroupIdList] <p>The security groups for the fleet.</p>
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

keys.DeleteImageRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImageRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImageRequest[k], "DeleteImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [Name] <p>The name of the image.</p>
-- Required key: Name
-- @return DeleteImageRequest structure as a key-value pair table
function M.DeleteImageRequest(args)
	assert(args, "You must provide an argument table when creating DeleteImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserStackAssociationsResult = { ["UserStackAssociations"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeUserStackAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserStackAssociationsResult to be of type 'table'")
	if struct["UserStackAssociations"] then asserts.AssertUserStackAssociationList(struct["UserStackAssociations"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserStackAssociationsResult[k], "DescribeUserStackAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserStackAssociationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserStackAssociations [UserStackAssociationList] <p>The UserStackAssociation objects.</p>
-- * NextToken [String] <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @return DescribeUserStackAssociationsResult structure as a key-value pair table
function M.DescribeUserStackAssociationsResult(args)
	assert(args, "You must provide an argument table when creating DescribeUserStackAssociationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserStackAssociations"] = args["UserStackAssociations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeUserStackAssociationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateImageBuilderResult = { ["ImageBuilder"] = true, nil }

function asserts.AssertCreateImageBuilderResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImageBuilderResult to be of type 'table'")
	if struct["ImageBuilder"] then asserts.AssertImageBuilder(struct["ImageBuilder"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImageBuilderResult[k], "CreateImageBuilderResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImageBuilderResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImageBuilder [ImageBuilder] <p>Information about the image builder.</p>
-- @return CreateImageBuilderResult structure as a key-value pair table
function M.CreateImageBuilderResult(args)
	assert(args, "You must provide an argument table when creating CreateImageBuilderResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImageBuilder"] = args["ImageBuilder"],
	}
	asserts.AssertCreateImageBuilderResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyImageRequest = { ["DestinationImageDescription"] = true, ["SourceImageName"] = true, ["DestinationRegion"] = true, ["DestinationImageName"] = true, nil }

function asserts.AssertCopyImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyImageRequest to be of type 'table'")
	assert(struct["SourceImageName"], "Expected key SourceImageName to exist in table")
	assert(struct["DestinationImageName"], "Expected key DestinationImageName to exist in table")
	assert(struct["DestinationRegion"], "Expected key DestinationRegion to exist in table")
	if struct["DestinationImageDescription"] then asserts.AssertDescription(struct["DestinationImageDescription"]) end
	if struct["SourceImageName"] then asserts.AssertName(struct["SourceImageName"]) end
	if struct["DestinationRegion"] then asserts.AssertRegionName(struct["DestinationRegion"]) end
	if struct["DestinationImageName"] then asserts.AssertName(struct["DestinationImageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyImageRequest[k], "CopyImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyImageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationImageDescription [Description] <p>The description that the image will have when it is copied to the destination.</p>
-- * SourceImageName [Name] <p>The name of the image to copy.</p>
-- * DestinationRegion [RegionName] <p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>
-- * DestinationImageName [Name] <p>The name that the image will have when it is copied to the destination.</p>
-- Required key: SourceImageName
-- Required key: DestinationImageName
-- Required key: DestinationRegion
-- @return CopyImageRequest structure as a key-value pair table
function M.CopyImageRequest(args)
	assert(args, "You must provide an argument table when creating CopyImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationImageDescription"] = args["DestinationImageDescription"],
		["SourceImageName"] = args["SourceImageName"],
		["DestinationRegion"] = args["DestinationRegion"],
		["DestinationImageName"] = args["DestinationImageName"],
	}
	asserts.AssertCopyImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertRedirectURL(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectURL to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RedirectURL(str)
	asserts.AssertRedirectURL(str)
	return str
end

function asserts.AssertImageBuilderStateChangeReasonCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageBuilderStateChangeReasonCode to be of type 'string'")
end

--  
function M.ImageBuilderStateChangeReasonCode(str)
	asserts.AssertImageBuilderStateChangeReasonCode(str)
	return str
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

function asserts.AssertRegionName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegionName(str)
	asserts.AssertRegionName(str)
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

-- <p>The fleet attribute.</p>
function M.FleetAttribute(str)
	asserts.AssertFleetAttribute(str)
	return str
end

function asserts.AssertStreamingUrlUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamingUrlUserId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.StreamingUrlUserId(str)
	asserts.AssertStreamingUrlUserId(str)
	return str
end

function asserts.AssertFleetType(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetType to be of type 'string'")
end

--  
function M.FleetType(str)
	asserts.AssertFleetType(str)
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

function asserts.AssertUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected Username to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Username(str)
	asserts.AssertUsername(str)
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

function asserts.AssertPermission(str)
	assert(str)
	assert(type(str) == "string", "Expected Permission to be of type 'string'")
end

--  
function M.Permission(str)
	asserts.AssertPermission(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
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

function asserts.AssertSettingsGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected SettingsGroup to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.SettingsGroup(str)
	asserts.AssertSettingsGroup(str)
	return str
end

function asserts.AssertStorageConnectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageConnectorType to be of type 'string'")
end

-- <p>The type of storage connector.</p>
function M.StorageConnectorType(str)
	asserts.AssertStorageConnectorType(str)
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

function asserts.AssertAppstreamAgentVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AppstreamAgentVersion to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AppstreamAgentVersion(str)
	asserts.AssertAppstreamAgentVersion(str)
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

function asserts.AssertUserStackAssociationErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStackAssociationErrorCode to be of type 'string'")
end

--  
function M.UserStackAssociationErrorCode(str)
	asserts.AssertUserStackAssociationErrorCode(str)
	return str
end

function asserts.AssertDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected Domain to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

-- GSuite domain for GDrive integration.
function M.Domain(str)
	asserts.AssertDomain(str)
	return str
end

function asserts.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
end

--  
function M.DirectoryName(str)
	asserts.AssertDirectoryName(str)
	return str
end

function asserts.AssertImageBuilderState(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageBuilderState to be of type 'string'")
end

--  
function M.ImageBuilderState(str)
	asserts.AssertImageBuilderState(str)
	return str
end

function asserts.AssertAccountPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountPassword to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountPassword(str)
	asserts.AssertAccountPassword(str)
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

function asserts.AssertUserAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected UserAttributeValue to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.UserAttributeValue(str)
	asserts.AssertUserAttributeValue(str)
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

function asserts.AssertAccountName(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountName(str)
	asserts.AssertAccountName(str)
	return str
end

function asserts.AssertStackAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected StackAttribute to be of type 'string'")
end

--  
function M.StackAttribute(str)
	asserts.AssertStackAttribute(str)
	return str
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertOrganizationalUnitDistinguishedName(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitDistinguishedName to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.OrganizationalUnitDistinguishedName(str)
	asserts.AssertOrganizationalUnitDistinguishedName(str)
	return str
end

function asserts.AssertMessageAction(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageAction to be of type 'string'")
end

--  
function M.MessageAction(str)
	asserts.AssertMessageAction(str)
	return str
end

function asserts.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
end

--  
function M.AwsAccountId(str)
	asserts.AssertAwsAccountId(str)
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

function asserts.AssertFeedbackURL(str)
	assert(str)
	assert(type(str) == "string", "Expected FeedbackURL to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.FeedbackURL(str)
	asserts.AssertFeedbackURL(str)
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

function asserts.AssertDescribeImagesMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeImagesMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
end

function M.DescribeImagesMaxResults(integer)
	asserts.AssertDescribeImagesMaxResults(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 500, "Expected integer to be max 500")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
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

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
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

-- <p>The storage connectors.</p>
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

-- <p>The fleet attributes.</p>
-- List of FleetAttribute objects
function M.FleetAttributes(list)
	asserts.AssertFleetAttributes(list)
	return list
end

function asserts.AssertSharedImagePermissionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SharedImagePermissionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSharedImagePermissions(v)
	end
end

--  
-- List of SharedImagePermissions objects
function M.SharedImagePermissionsList(list)
	asserts.AssertSharedImagePermissionsList(list)
	return list
end

function asserts.AssertUserList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUser(v)
	end
end

--  
-- List of User objects
function M.UserList(list)
	asserts.AssertUserList(list)
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

function asserts.AssertUserStackAssociationErrorList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserStackAssociationErrorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserStackAssociationError(v)
	end
end

--  
-- List of UserStackAssociationError objects
function M.UserStackAssociationErrorList(list)
	asserts.AssertUserStackAssociationErrorList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
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

function asserts.AssertStackAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected StackAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackAttribute(v)
	end
end

--  
-- List of StackAttribute objects
function M.StackAttributes(list)
	asserts.AssertStackAttributes(list)
	return list
end

function asserts.AssertStackErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected StackErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackError(v)
	end
end

-- <p>The stack errors.</p>
-- List of StackError objects
function M.StackErrors(list)
	asserts.AssertStackErrors(list)
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

function asserts.AssertArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArnList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.ArnList(list)
	asserts.AssertArnList(list)
	return list
end

function asserts.AssertDirectoryConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryConfigList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectoryConfig(v)
	end
end

--  
-- List of DirectoryConfig objects
function M.DirectoryConfigList(list)
	asserts.AssertDirectoryConfigList(list)
	return list
end

function asserts.AssertImageBuilderList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageBuilderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImageBuilder(v)
	end
end

--  
-- List of ImageBuilder objects
function M.ImageBuilderList(list)
	asserts.AssertImageBuilderList(list)
	return list
end

function asserts.AssertUserStackAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserStackAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserStackAssociation(v)
	end
end

--  
-- List of UserStackAssociation objects
function M.UserStackAssociationList(list)
	asserts.AssertUserStackAssociationList(list)
	return list
end

function asserts.AssertStackList(list)
	assert(list)
	assert(type(list) == "table", "Expected StackList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStack(v)
	end
end

-- <p>The stacks.</p>
-- List of Stack objects
function M.StackList(list)
	asserts.AssertStackList(list)
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

function asserts.AssertResourceErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceError(v)
	end
end

--  
-- List of ResourceError objects
function M.ResourceErrors(list)
	asserts.AssertResourceErrors(list)
	return list
end

function asserts.AssertUserSettingList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserSettingList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertUserSetting(v)
	end
end

--  
-- List of UserSetting objects
function M.UserSettingList(list)
	asserts.AssertUserSettingList(list)
	return list
end

function asserts.AssertOrganizationalUnitDistinguishedNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationalUnitDistinguishedNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrganizationalUnitDistinguishedName(v)
	end
end

--  
-- List of OrganizationalUnitDistinguishedName objects
function M.OrganizationalUnitDistinguishedNamesList(list)
	asserts.AssertOrganizationalUnitDistinguishedNamesList(list)
	return list
end

function asserts.AssertFleetList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleet(v)
	end
end

-- <p>The fleets.</p>
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

function asserts.AssertSubnetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

-- <p>The subnet IDs.</p>
-- List of String objects
function M.SubnetIdList(list)
	asserts.AssertSubnetIdList(list)
	return list
end

function asserts.AssertDomainList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertDomain(v)
	end
end

--  
-- List of Domain objects
function M.DomainList(list)
	asserts.AssertDomainList(list)
	return list
end

function asserts.AssertAwsAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AwsAccountIdList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAwsAccountId(v)
	end
end

--  
-- List of AwsAccountId objects
function M.AwsAccountIdList(list)
	asserts.AssertAwsAccountIdList(list)
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

-- <p>The security group IDs.</p>
-- List of String objects
function M.SecurityGroupIdList(list)
	asserts.AssertSecurityGroupIdList(list)
	return list
end

function asserts.AssertDirectoryNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectoryName(v)
	end
end

--  
-- List of DirectoryName objects
function M.DirectoryNameList(list)
	asserts.AssertDirectoryNameList(list)
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
--- Call StopImageBuilder asynchronously, invoking a callback when done
-- @param StopImageBuilderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopImageBuilderAsync(StopImageBuilderRequest, cb)
	assert(StopImageBuilderRequest, "You must provide a StopImageBuilderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StopImageBuilder",
	}
	for header,value in pairs(StopImageBuilderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopImageBuilderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopImageBuilder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopImageBuilderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopImageBuilderSync(StopImageBuilderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopImageBuilderAsync(StopImageBuilderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFleet asynchronously, invoking a callback when done
-- @param DeleteFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteFleetSync(DeleteFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFleetAsync(DeleteFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssociatedStacks asynchronously, invoking a callback when done
-- @param ListAssociatedStacksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.ListAssociatedStacksSync(ListAssociatedStacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedStacksAsync(ListAssociatedStacksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExpireSession asynchronously, invoking a callback when done
-- @param ExpireSessionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.ExpireSessionSync(ExpireSessionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExpireSessionAsync(ExpireSessionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateFleet asynchronously, invoking a callback when done
-- @param AssociateFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.AssociateFleetSync(AssociateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateFleetAsync(AssociateFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateImageBuilder asynchronously, invoking a callback when done
-- @param CreateImageBuilderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateImageBuilderAsync(CreateImageBuilderRequest, cb)
	assert(CreateImageBuilderRequest, "You must provide a CreateImageBuilderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateImageBuilder",
	}
	for header,value in pairs(CreateImageBuilderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateImageBuilderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateImageBuilder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateImageBuilderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateImageBuilderSync(CreateImageBuilderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateImageBuilderAsync(CreateImageBuilderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteImageBuilder asynchronously, invoking a callback when done
-- @param DeleteImageBuilderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteImageBuilderAsync(DeleteImageBuilderRequest, cb)
	assert(DeleteImageBuilderRequest, "You must provide a DeleteImageBuilderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteImageBuilder",
	}
	for header,value in pairs(DeleteImageBuilderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteImageBuilderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteImageBuilder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteImageBuilderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteImageBuilderSync(DeleteImageBuilderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteImageBuilderAsync(DeleteImageBuilderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImages asynchronously, invoking a callback when done
-- @param DescribeImagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DescribeImagesSync(DescribeImagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagesAsync(DescribeImagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableUser asynchronously, invoking a callback when done
-- @param EnableUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableUserAsync(EnableUserRequest, cb)
	assert(EnableUserRequest, "You must provide a EnableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.EnableUser",
	}
	for header,value in pairs(EnableUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableUserSync(EnableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableUserAsync(EnableUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUsers asynchronously, invoking a callback when done
-- @param DescribeUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUsersAsync(DescribeUsersRequest, cb)
	assert(DescribeUsersRequest, "You must provide a DescribeUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeUsers",
	}
	for header,value in pairs(DescribeUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUsersSync(DescribeUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUsersAsync(DescribeUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectoryConfig asynchronously, invoking a callback when done
-- @param CreateDirectoryConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDirectoryConfigAsync(CreateDirectoryConfigRequest, cb)
	assert(CreateDirectoryConfigRequest, "You must provide a CreateDirectoryConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateDirectoryConfig",
	}
	for header,value in pairs(CreateDirectoryConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDirectoryConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDirectoryConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDirectoryConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDirectoryConfigSync(CreateDirectoryConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectoryConfigAsync(CreateDirectoryConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDisassociateUserStack asynchronously, invoking a callback when done
-- @param BatchDisassociateUserStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDisassociateUserStackAsync(BatchDisassociateUserStackRequest, cb)
	assert(BatchDisassociateUserStackRequest, "You must provide a BatchDisassociateUserStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.BatchDisassociateUserStack",
	}
	for header,value in pairs(BatchDisassociateUserStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDisassociateUserStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDisassociateUserStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDisassociateUserStackRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDisassociateUserStackSync(BatchDisassociateUserStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDisassociateUserStackAsync(BatchDisassociateUserStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateImagePermissions asynchronously, invoking a callback when done
-- @param UpdateImagePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateImagePermissionsAsync(UpdateImagePermissionsRequest, cb)
	assert(UpdateImagePermissionsRequest, "You must provide a UpdateImagePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateImagePermissions",
	}
	for header,value in pairs(UpdateImagePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateImagePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateImagePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateImagePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateImagePermissionsSync(UpdateImagePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateImagePermissionsAsync(UpdateImagePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateStackSync(CreateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(CreateStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectoryConfigs asynchronously, invoking a callback when done
-- @param DescribeDirectoryConfigsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDirectoryConfigsAsync(DescribeDirectoryConfigsRequest, cb)
	assert(DescribeDirectoryConfigsRequest, "You must provide a DescribeDirectoryConfigsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeDirectoryConfigs",
	}
	for header,value in pairs(DescribeDirectoryConfigsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDirectoryConfigsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDirectoryConfigs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDirectoryConfigsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDirectoryConfigsSync(DescribeDirectoryConfigsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectoryConfigsAsync(DescribeDirectoryConfigsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableUser asynchronously, invoking a callback when done
-- @param DisableUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableUserAsync(DisableUserRequest, cb)
	assert(DisableUserRequest, "You must provide a DisableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DisableUser",
	}
	for header,value in pairs(DisableUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableUserSync(DisableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableUserAsync(DisableUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateImageBuilderStreamingURL asynchronously, invoking a callback when done
-- @param CreateImageBuilderStreamingURLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateImageBuilderStreamingURLAsync(CreateImageBuilderStreamingURLRequest, cb)
	assert(CreateImageBuilderStreamingURLRequest, "You must provide a CreateImageBuilderStreamingURLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateImageBuilderStreamingURL",
	}
	for header,value in pairs(CreateImageBuilderStreamingURLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateImageBuilderStreamingURLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateImageBuilderStreamingURL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateImageBuilderStreamingURLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateImageBuilderStreamingURLSync(CreateImageBuilderStreamingURLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateImageBuilderStreamingURLAsync(CreateImageBuilderStreamingURLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDirectoryConfig asynchronously, invoking a callback when done
-- @param UpdateDirectoryConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDirectoryConfigAsync(UpdateDirectoryConfigRequest, cb)
	assert(UpdateDirectoryConfigRequest, "You must provide a UpdateDirectoryConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UpdateDirectoryConfig",
	}
	for header,value in pairs(UpdateDirectoryConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDirectoryConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDirectoryConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDirectoryConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDirectoryConfigSync(UpdateDirectoryConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDirectoryConfigAsync(UpdateDirectoryConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyImage asynchronously, invoking a callback when done
-- @param CopyImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyImageAsync(CopyImageRequest, cb)
	assert(CopyImageRequest, "You must provide a CopyImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CopyImage",
	}
	for header,value in pairs(CopyImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CopyImageSync(CopyImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyImageAsync(CopyImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFleet asynchronously, invoking a callback when done
-- @param CreateFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateFleetSync(CreateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFleetAsync(CreateFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSessions asynchronously, invoking a callback when done
-- @param DescribeSessionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DescribeSessionsSync(DescribeSessionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSessionsAsync(DescribeSessionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImagePermissions asynchronously, invoking a callback when done
-- @param DescribeImagePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeImagePermissionsAsync(DescribeImagePermissionsRequest, cb)
	assert(DescribeImagePermissionsRequest, "You must provide a DescribeImagePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeImagePermissions",
	}
	for header,value in pairs(DescribeImagePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeImagePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeImagePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeImagePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeImagePermissionsSync(DescribeImagePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagePermissionsAsync(DescribeImagePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.UpdateStackSync(UpdateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(UpdateStackRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteUser",
	}
	for header,value in pairs(DeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserRequest, headers, settings, cb)
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

--- Call StopFleet asynchronously, invoking a callback when done
-- @param StopFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.StopFleetSync(StopFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopFleetAsync(StopFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFleet asynchronously, invoking a callback when done
-- @param UpdateFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.UpdateFleetSync(UpdateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetAsync(UpdateFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleets asynchronously, invoking a callback when done
-- @param DescribeFleetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DescribeFleetsSync(DescribeFleetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetsAsync(DescribeFleetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImageBuilders asynchronously, invoking a callback when done
-- @param DescribeImageBuildersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeImageBuildersAsync(DescribeImageBuildersRequest, cb)
	assert(DescribeImageBuildersRequest, "You must provide a DescribeImageBuildersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeImageBuilders",
	}
	for header,value in pairs(DescribeImageBuildersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeImageBuildersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeImageBuilders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeImageBuildersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeImageBuildersSync(DescribeImageBuildersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImageBuildersAsync(DescribeImageBuildersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssociatedFleets asynchronously, invoking a callback when done
-- @param ListAssociatedFleetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.ListAssociatedFleetsSync(ListAssociatedFleetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociatedFleetsAsync(ListAssociatedFleetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartFleet asynchronously, invoking a callback when done
-- @param StartFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.StartFleetSync(StartFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartFleetAsync(StartFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserStackAssociations asynchronously, invoking a callback when done
-- @param DescribeUserStackAssociationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserStackAssociationsAsync(DescribeUserStackAssociationsRequest, cb)
	assert(DescribeUserStackAssociationsRequest, "You must provide a DescribeUserStackAssociationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DescribeUserStackAssociations",
	}
	for header,value in pairs(DescribeUserStackAssociationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserStackAssociationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserStackAssociations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserStackAssociationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserStackAssociationsSync(DescribeUserStackAssociationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserStackAssociationsAsync(DescribeUserStackAssociationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DescribeStacksSync(DescribeStacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(DescribeStacksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchAssociateUserStack asynchronously, invoking a callback when done
-- @param BatchAssociateUserStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchAssociateUserStackAsync(BatchAssociateUserStackRequest, cb)
	assert(BatchAssociateUserStackRequest, "You must provide a BatchAssociateUserStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.BatchAssociateUserStack",
	}
	for header,value in pairs(BatchAssociateUserStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchAssociateUserStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchAssociateUserStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchAssociateUserStackRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchAssociateUserStackSync(BatchAssociateUserStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchAssociateUserStackAsync(BatchAssociateUserStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingURL asynchronously, invoking a callback when done
-- @param CreateStreamingURLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.CreateStreamingURLSync(CreateStreamingURLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingURLAsync(CreateStreamingURLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateFleet asynchronously, invoking a callback when done
-- @param DisassociateFleetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DisassociateFleetSync(DisassociateFleetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateFleetAsync(DisassociateFleetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteImagePermissions asynchronously, invoking a callback when done
-- @param DeleteImagePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteImagePermissionsAsync(DeleteImagePermissionsRequest, cb)
	assert(DeleteImagePermissionsRequest, "You must provide a DeleteImagePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteImagePermissions",
	}
	for header,value in pairs(DeleteImagePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteImagePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteImagePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteImagePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteImagePermissionsSync(DeleteImagePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteImagePermissionsAsync(DeleteImagePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
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
-- @return error_type
-- @return error_message
function M.DeleteStackSync(DeleteStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(DeleteStackRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.CreateUser",
	}
	for header,value in pairs(CreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserRequest, headers, settings, cb)
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

--- Call DeleteDirectoryConfig asynchronously, invoking a callback when done
-- @param DeleteDirectoryConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDirectoryConfigAsync(DeleteDirectoryConfigRequest, cb)
	assert(DeleteDirectoryConfigRequest, "You must provide a DeleteDirectoryConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteDirectoryConfig",
	}
	for header,value in pairs(DeleteDirectoryConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDirectoryConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDirectoryConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDirectoryConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDirectoryConfigSync(DeleteDirectoryConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectoryConfigAsync(DeleteDirectoryConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteImage asynchronously, invoking a callback when done
-- @param DeleteImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteImageAsync(DeleteImageRequest, cb)
	assert(DeleteImageRequest, "You must provide a DeleteImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.DeleteImage",
	}
	for header,value in pairs(DeleteImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteImageSync(DeleteImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteImageAsync(DeleteImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartImageBuilder asynchronously, invoking a callback when done
-- @param StartImageBuilderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartImageBuilderAsync(StartImageBuilderRequest, cb)
	assert(StartImageBuilderRequest, "You must provide a StartImageBuilderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PhotonAdminProxyService.StartImageBuilder",
	}
	for header,value in pairs(StartImageBuilderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartImageBuilderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartImageBuilder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartImageBuilderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartImageBuilderSync(StartImageBuilderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartImageBuilderAsync(StartImageBuilderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
