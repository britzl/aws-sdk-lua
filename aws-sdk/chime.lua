--- GENERATED CODE - DO NOT MODIFY
-- Amazon Chime (chime-2018-05-01)

local M = {}

M.metadata = {
	api_version = "2018-05-01",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "chime",
	service_abbreviation = "",
	service_full_name = "Amazon Chime",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "chime-2018-05-01",
}

local keys = {}
local asserts = {}

keys.UpdateUserRequest = { ["LicenseType"] = true, ["UserId"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["LicenseType"] then asserts.AssertLicense(struct["LicenseType"]) end
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRequest[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LicenseType [License] <p>The user license type to update. This must be a supported license type for the Amazon Chime account that the user belongs to.</p>
-- * UserId [NonEmptyString] <p>The user ID.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserId
-- @return UpdateUserRequest structure as a key-value pair table
function M.UpdateUserRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{userId}"] = args["UserId"],
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LicenseType"] = args["LicenseType"],
		["UserId"] = args["UserId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAccountResponse = { ["Account"] = true, nil }

function asserts.AssertUpdateAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountResponse to be of type 'table'")
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountResponse[k], "UpdateAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Account [Account] <p>The updated Amazon Chime account details.</p>
-- @return UpdateAccountResponse structure as a key-value pair table
function M.UpdateAccountResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Account"] = args["Account"],
	}
	asserts.AssertUpdateAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAccountRequest = { ["AccountId"] = true, nil }

function asserts.AssertDeleteAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccountRequest[k], "DeleteAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- @return DeleteAccountRequest structure as a key-value pair table
function M.DeleteAccountRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeleteAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogoutUserRequest = { ["UserId"] = true, ["AccountId"] = true, nil }

function asserts.AssertLogoutUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogoutUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogoutUserRequest[k], "LogoutUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogoutUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [NonEmptyString] <p>The user ID.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserId
-- @return LogoutUserRequest structure as a key-value pair table
function M.LogoutUserRequest(args)
	assert(args, "You must provide an argument table when creating LogoutUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{userId}"] = args["UserId"],
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertLogoutUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchSuspendUserResponse = { ["UserErrors"] = true, nil }

function asserts.AssertBatchSuspendUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchSuspendUserResponse to be of type 'table'")
	if struct["UserErrors"] then asserts.AssertUserErrorList(struct["UserErrors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchSuspendUserResponse[k], "BatchSuspendUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchSuspendUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserErrors [UserErrorList] <p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>
-- @return BatchSuspendUserResponse structure as a key-value pair table
function M.BatchSuspendUserResponse(args)
	assert(args, "You must provide an argument table when creating BatchSuspendUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserErrors"] = args["UserErrors"],
	}
	asserts.AssertBatchSuspendUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteUsersResponse = { ["Invites"] = true, nil }

function asserts.AssertInviteUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteUsersResponse to be of type 'table'")
	if struct["Invites"] then asserts.AssertInviteList(struct["Invites"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteUsersResponse[k], "InviteUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Invites [InviteList] <p>The invite details.</p>
-- @return InviteUsersResponse structure as a key-value pair table
function M.InviteUsersResponse(args)
	assert(args, "You must provide an argument table when creating InviteUsersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Invites"] = args["Invites"],
	}
	asserts.AssertInviteUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetPersonalPINResponse = { ["User"] = true, nil }

function asserts.AssertResetPersonalPINResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetPersonalPINResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetPersonalPINResponse[k], "ResetPersonalPINResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetPersonalPINResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The user details and new personal meeting PIN.</p>
-- @return ResetPersonalPINResponse structure as a key-value pair table
function M.ResetPersonalPINResponse(args)
	assert(args, "You must provide an argument table when creating ResetPersonalPINResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertResetPersonalPINResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountRequest = { ["AccountId"] = true, nil }

function asserts.AssertGetAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountRequest[k], "GetAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- @return GetAccountRequest structure as a key-value pair table
function M.GetAccountRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteUsersRequest = { ["UserEmailList"] = true, ["AccountId"] = true, nil }

function asserts.AssertInviteUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteUsersRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserEmailList"], "Expected key UserEmailList to exist in table")
	if struct["UserEmailList"] then asserts.AssertUserEmailList(struct["UserEmailList"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteUsersRequest[k], "InviteUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserEmailList [UserEmailList] <p>The user email addresses to which to send the invite.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserEmailList
-- @return InviteUsersRequest structure as a key-value pair table
function M.InviteUsersRequest(args)
	assert(args, "You must provide an argument table when creating InviteUsersRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserEmailList"] = args["UserEmailList"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertInviteUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Invite = { ["Status"] = true, ["EmailAddress"] = true, ["InviteId"] = true, ["EmailStatus"] = true, nil }

function asserts.AssertInvite(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Invite to be of type 'table'")
	if struct["Status"] then asserts.AssertInviteStatus(struct["Status"]) end
	if struct["EmailAddress"] then asserts.AssertEmailAddress(struct["EmailAddress"]) end
	if struct["InviteId"] then asserts.AssertString(struct["InviteId"]) end
	if struct["EmailStatus"] then asserts.AssertEmailStatus(struct["EmailStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Invite[k], "Invite contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Invite
-- <p>Invitation object returned after emailing users to invite them to join the Amazon Chime <code>Team</code> account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [InviteStatus] <p>The status of the invite.</p>
-- * EmailAddress [EmailAddress] <p>The email address to which the invite is sent.</p>
-- * InviteId [String] <p>The invite ID.</p>
-- * EmailStatus [EmailStatus] <p>The status of the invite email.</p>
-- @return Invite structure as a key-value pair table
function M.Invite(args)
	assert(args, "You must provide an argument table when creating Invite")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EmailAddress"] = args["EmailAddress"],
		["InviteId"] = args["InviteId"],
		["EmailStatus"] = args["EmailStatus"],
	}
	asserts.AssertInvite(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsResponse = { ["AccountSettings"] = true, nil }

function asserts.AssertGetAccountSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResponse to be of type 'table'")
	if struct["AccountSettings"] then asserts.AssertAccountSettings(struct["AccountSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsResponse[k], "GetAccountSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountSettings [AccountSettings] <p>The Amazon Chime account settings.</p>
-- @return GetAccountSettingsResponse structure as a key-value pair table
function M.GetAccountSettingsResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountSettings"] = args["AccountSettings"],
	}
	asserts.AssertGetAccountSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserResponse = { ["User"] = true, nil }

function asserts.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserResponse[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The user details.</p>
-- @return GetUserResponse structure as a key-value pair table
function M.GetUserResponse(args)
	assert(args, "You must provide an argument table when creating GetUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertGetUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccountResponse = { ["Account"] = true, nil }

function asserts.AssertCreateAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountResponse to be of type 'table'")
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountResponse[k], "CreateAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Account [Account] <p>The Amazon Chime account details.</p>
-- @return CreateAccountResponse structure as a key-value pair table
function M.CreateAccountResponse(args)
	assert(args, "You must provide an argument table when creating CreateAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Account"] = args["Account"],
	}
	asserts.AssertCreateAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetPersonalPINRequest = { ["UserId"] = true, ["AccountId"] = true, nil }

function asserts.AssertResetPersonalPINRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetPersonalPINRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetPersonalPINRequest[k], "ResetPersonalPINRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetPersonalPINRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [NonEmptyString] <p>The user ID.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserId
-- @return ResetPersonalPINRequest structure as a key-value pair table
function M.ResetPersonalPINRequest(args)
	assert(args, "You must provide an argument table when creating ResetPersonalPINRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{userId}"] = args["UserId"],
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertResetPersonalPINRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsRequest = { ["AccountId"] = true, nil }

function asserts.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsRequest[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- @return GetAccountSettingsRequest structure as a key-value pair table
function M.GetAccountSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetAccountSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["PrimaryEmail"] = true, ["DisplayName"] = true, ["UserId"] = true, ["LicenseType"] = true, ["UserInvitationStatus"] = true, ["RegisteredOn"] = true, ["PersonalPIN"] = true, ["UserRegistrationStatus"] = true, ["InvitedOn"] = true, ["AccountId"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["PrimaryEmail"] then asserts.AssertEmailAddress(struct["PrimaryEmail"]) end
	if struct["DisplayName"] then asserts.AssertSensitiveString(struct["DisplayName"]) end
	if struct["UserId"] then asserts.AssertString(struct["UserId"]) end
	if struct["LicenseType"] then asserts.AssertLicense(struct["LicenseType"]) end
	if struct["UserInvitationStatus"] then asserts.AssertInviteStatus(struct["UserInvitationStatus"]) end
	if struct["RegisteredOn"] then asserts.AssertIso8601Timestamp(struct["RegisteredOn"]) end
	if struct["PersonalPIN"] then asserts.AssertString(struct["PersonalPIN"]) end
	if struct["UserRegistrationStatus"] then asserts.AssertRegistrationStatus(struct["UserRegistrationStatus"]) end
	if struct["InvitedOn"] then asserts.AssertIso8601Timestamp(struct["InvitedOn"]) end
	if struct["AccountId"] then asserts.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>The user on the Amazon Chime account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrimaryEmail [EmailAddress] <p>The primary email address of the user.</p>
-- * DisplayName [SensitiveString] <p>The display name of the user.</p>
-- * UserId [String] <p>The user ID.</p>
-- * LicenseType [License] <p>The license type for the user.</p>
-- * UserInvitationStatus [InviteStatus] <p>The user invite status.</p>
-- * RegisteredOn [Iso8601Timestamp] <p>Date and time when the user is registered, in ISO 8601 format.</p>
-- * PersonalPIN [String] <p>The user's personal meeting PIN.</p>
-- * UserRegistrationStatus [RegistrationStatus] <p>The user registration status.</p>
-- * InvitedOn [Iso8601Timestamp] <p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>
-- * AccountId [String] <p>The Amazon Chime account ID.</p>
-- Required key: UserId
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
		["PrimaryEmail"] = args["PrimaryEmail"],
		["DisplayName"] = args["DisplayName"],
		["UserId"] = args["UserId"],
		["LicenseType"] = args["LicenseType"],
		["UserInvitationStatus"] = args["UserInvitationStatus"],
		["RegisteredOn"] = args["RegisteredOn"],
		["PersonalPIN"] = args["PersonalPIN"],
		["UserRegistrationStatus"] = args["UserRegistrationStatus"],
		["InvitedOn"] = args["InvitedOn"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUnsuspendUserResponse = { ["UserErrors"] = true, nil }

function asserts.AssertBatchUnsuspendUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUnsuspendUserResponse to be of type 'table'")
	if struct["UserErrors"] then asserts.AssertUserErrorList(struct["UserErrors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUnsuspendUserResponse[k], "BatchUnsuspendUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUnsuspendUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserErrors [UserErrorList] <p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>
-- @return BatchUnsuspendUserResponse structure as a key-value pair table
function M.BatchUnsuspendUserResponse(args)
	assert(args, "You must provide an argument table when creating BatchUnsuspendUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserErrors"] = args["UserErrors"],
	}
	asserts.AssertBatchUnsuspendUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateUserRequest = { ["UpdateUserRequestItems"] = true, ["AccountId"] = true, nil }

function asserts.AssertBatchUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UpdateUserRequestItems"], "Expected key UpdateUserRequestItems to exist in table")
	if struct["UpdateUserRequestItems"] then asserts.AssertUpdateUserRequestItemList(struct["UpdateUserRequestItems"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateUserRequest[k], "BatchUpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpdateUserRequestItems [UpdateUserRequestItemList] <p>The request containing the user IDs and details to update.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UpdateUserRequestItems
-- @return BatchUpdateUserRequest structure as a key-value pair table
function M.BatchUpdateUserRequest(args)
	assert(args, "You must provide an argument table when creating BatchUpdateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UpdateUserRequestItems"] = args["UpdateUserRequestItems"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertBatchUpdateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersResponse = { ["NextToken"] = true, ["Users"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Users"] then asserts.AssertUserList(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The token to use to retrieve the next page of results.</p>
-- * Users [UserList] <p>List of users and user details.</p>
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
		["Users"] = args["Users"],
	}
	asserts.AssertListUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsRequest = { ["UserEmail"] = true, ["NextToken"] = true, ["Name"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAccountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsRequest to be of type 'table'")
	if struct["UserEmail"] then asserts.AssertEmailAddress(struct["UserEmail"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertAccountName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertProfileServiceMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsRequest[k], "ListAccountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserEmail [EmailAddress] <p>User email address with which to filter results.</p>
-- * NextToken [String] <p>The token to use to retrieve the next page of results.</p>
-- * Name [AccountName] <p>Amazon Chime account name prefix with which to filter results.</p>
-- * MaxResults [ProfileServiceMaxResults] <p>The maximum number of results to return in a single call. Defaults to 100.</p>
-- @return ListAccountsRequest structure as a key-value pair table
function M.ListAccountsRequest(args)
	assert(args, "You must provide an argument table when creating ListAccountsRequest")
    local query_args = { 
        ["user-email"] = args["UserEmail"],
        ["next-token"] = args["NextToken"],
        ["name"] = args["Name"],
        ["max-results"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserEmail"] = args["UserEmail"],
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListAccountsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUnsuspendUserRequest = { ["UserIdList"] = true, ["AccountId"] = true, nil }

function asserts.AssertBatchUnsuspendUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUnsuspendUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserIdList"], "Expected key UserIdList to exist in table")
	if struct["UserIdList"] then asserts.AssertUserIdList(struct["UserIdList"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUnsuspendUserRequest[k], "BatchUnsuspendUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUnsuspendUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserIdList [UserIdList] <p>The request containing the user IDs to unsuspend.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserIdList
-- @return BatchUnsuspendUserRequest structure as a key-value pair table
function M.BatchUnsuspendUserRequest(args)
	assert(args, "You must provide an argument table when creating BatchUnsuspendUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserIdList"] = args["UserIdList"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertBatchUnsuspendUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserError = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["UserId"] = true, nil }

function asserts.AssertUserError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserError[k], "UserError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserError
-- <p>The list of errors returned when errors are encountered during the <a>BatchSuspendUser</a>, <a>BatchUnsuspendUser</a>, or <a>BatchUpdateUser</a> actions. This includes user IDs, error codes, and error messages.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code.</p>
-- * ErrorMessage [String] <p>The error message.</p>
-- * UserId [NonEmptyString] <p>The user ID for which the action failed.</p>
-- @return UserError structure as a key-value pair table
function M.UserError(args)
	assert(args, "You must provide an argument table when creating UserError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertUserError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Account = { ["SupportedLicenses"] = true, ["Name"] = true, ["CreatedTimestamp"] = true, ["AccountType"] = true, ["DefaultLicense"] = true, ["AwsAccountId"] = true, ["AccountId"] = true, nil }

function asserts.AssertAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Account to be of type 'table'")
	assert(struct["AwsAccountId"], "Expected key AwsAccountId to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SupportedLicenses"] then asserts.AssertLicenseList(struct["SupportedLicenses"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["CreatedTimestamp"] then asserts.AssertIso8601Timestamp(struct["CreatedTimestamp"]) end
	if struct["AccountType"] then asserts.AssertAccountType(struct["AccountType"]) end
	if struct["DefaultLicense"] then asserts.AssertLicense(struct["DefaultLicense"]) end
	if struct["AwsAccountId"] then asserts.AssertString(struct["AwsAccountId"]) end
	if struct["AccountId"] then asserts.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Account[k], "Account contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Account
-- <p>The Amazon Chime account details. An AWS account can have multiple Amazon Chime accounts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportedLicenses [LicenseList] <p>Supported licenses for the Amazon Chime account.</p>
-- * Name [String] <p>The Amazon Chime account name.</p>
-- * CreatedTimestamp [Iso8601Timestamp] <p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>
-- * AccountType [AccountType] <p>The Amazon Chime account type. For more information about different account types, see <a href="http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration Guide</i>.</p>
-- * DefaultLicense [License] <p>The default license for the Amazon Chime account.</p>
-- * AwsAccountId [String] <p>The AWS account ID.</p>
-- * AccountId [String] <p>The Amazon Chime account ID.</p>
-- Required key: AwsAccountId
-- Required key: AccountId
-- Required key: Name
-- @return Account structure as a key-value pair table
function M.Account(args)
	assert(args, "You must provide an argument table when creating Account")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SupportedLicenses"] = args["SupportedLicenses"],
		["Name"] = args["Name"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["AccountType"] = args["AccountType"],
		["DefaultLicense"] = args["DefaultLicense"],
		["AwsAccountId"] = args["AwsAccountId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertAccount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateUserResponse = { ["UserErrors"] = true, nil }

function asserts.AssertBatchUpdateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateUserResponse to be of type 'table'")
	if struct["UserErrors"] then asserts.AssertUserErrorList(struct["UserErrors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateUserResponse[k], "BatchUpdateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserErrors [UserErrorList] <p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the request, a list of the user IDs is returned, along with error codes and error messages.</p>
-- @return BatchUpdateUserResponse structure as a key-value pair table
function M.BatchUpdateUserResponse(args)
	assert(args, "You must provide an argument table when creating BatchUpdateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserErrors"] = args["UserErrors"],
	}
	asserts.AssertBatchUpdateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserResponse = { ["User"] = true, nil }

function asserts.AssertUpdateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserResponse[k], "UpdateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The updated user details.</p>
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
		["User"] = args["User"],
	}
	asserts.AssertUpdateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccountRequest = { ["Name"] = true, nil }

function asserts.AssertCreateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertAccountName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountRequest[k], "CreateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [AccountName] <p>The name of the Amazon Chime account.</p>
-- Required key: Name
-- @return CreateAccountRequest structure as a key-value pair table
function M.CreateAccountRequest(args)
	assert(args, "You must provide an argument table when creating CreateAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsResponse = { ["NextToken"] = true, ["Accounts"] = true, nil }

function asserts.AssertListAccountsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Accounts"] then asserts.AssertAccountList(struct["Accounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsResponse[k], "ListAccountsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The token to use to retrieve the next page of results.</p>
-- * Accounts [AccountList] <p>List of Amazon Chime accounts and account details.</p>
-- @return ListAccountsResponse structure as a key-value pair table
function M.ListAccountsResponse(args)
	assert(args, "You must provide an argument table when creating ListAccountsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Accounts"] = args["Accounts"],
	}
	asserts.AssertListAccountsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountResponse = { ["Account"] = true, nil }

function asserts.AssertGetAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountResponse to be of type 'table'")
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountResponse[k], "GetAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Account [Account] <p>The Amazon Chime account details.</p>
-- @return GetAccountResponse structure as a key-value pair table
function M.GetAccountResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Account"] = args["Account"],
	}
	asserts.AssertGetAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountSettings = { ["EnableDialOut"] = true, ["DisableRemoteControl"] = true, nil }

function asserts.AssertAccountSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountSettings to be of type 'table'")
	if struct["EnableDialOut"] then asserts.AssertBoolean(struct["EnableDialOut"]) end
	if struct["DisableRemoteControl"] then asserts.AssertBoolean(struct["DisableRemoteControl"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountSettings[k], "AccountSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountSettings
-- <p>Settings related to the Amazon Chime account. This includes settings that start or stop remote control of shared screens, or start or stop the dial-out option in the Amazon Chime web application. For more information about these settings, see <a href="http://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnableDialOut [Boolean] <p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see <a href="http://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html">Join a Meeting without the Amazon Chime App</a>.</p>
-- * DisableRemoteControl [Boolean] <p>Setting that stops or starts remote control of shared screens during meetings.</p>
-- @return AccountSettings structure as a key-value pair table
function M.AccountSettings(args)
	assert(args, "You must provide an argument table when creating AccountSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnableDialOut"] = args["EnableDialOut"],
		["DisableRemoteControl"] = args["DisableRemoteControl"],
	}
	asserts.AssertAccountSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserRequest = { ["UserId"] = true, ["AccountId"] = true, nil }

function asserts.AssertGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserRequest[k], "GetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [NonEmptyString] <p>The user ID.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserId
-- @return GetUserRequest structure as a key-value pair table
function M.GetUserRequest(args)
	assert(args, "You must provide an argument table when creating GetUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{userId}"] = args["UserId"],
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchSuspendUserRequest = { ["UserIdList"] = true, ["AccountId"] = true, nil }

function asserts.AssertBatchSuspendUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchSuspendUserRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["UserIdList"], "Expected key UserIdList to exist in table")
	if struct["UserIdList"] then asserts.AssertUserIdList(struct["UserIdList"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchSuspendUserRequest[k], "BatchSuspendUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchSuspendUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserIdList [UserIdList] <p>The request containing the user IDs to suspend.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: UserIdList
-- @return BatchSuspendUserRequest structure as a key-value pair table
function M.BatchSuspendUserRequest(args)
	assert(args, "You must provide an argument table when creating BatchSuspendUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserIdList"] = args["UserIdList"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertBatchSuspendUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAccountSettingsRequest = { ["AccountSettings"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountSettingsRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["AccountSettings"], "Expected key AccountSettings to exist in table")
	if struct["AccountSettings"] then asserts.AssertAccountSettings(struct["AccountSettings"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountSettingsRequest[k], "UpdateAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountSettings [AccountSettings] <p>The Amazon Chime account settings to update.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- Required key: AccountSettings
-- @return UpdateAccountSettingsRequest structure as a key-value pair table
function M.UpdateAccountSettingsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccountSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountSettings"] = args["AccountSettings"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateAccountSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["AccountId"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertProfileServiceMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The token to use to retrieve the next page of results.</p>
-- * MaxResults [ProfileServiceMaxResults] <p>The maximum number of results to return in a single call. Defaults to 100.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- @return ListUsersRequest structure as a key-value pair table
function M.ListUsersRequest(args)
	assert(args, "You must provide an argument table when creating ListUsersRequest")
    local query_args = { 
        ["next-token"] = args["NextToken"],
        ["max-results"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertListUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogoutUserResponse = { nil }

function asserts.AssertLogoutUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogoutUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LogoutUserResponse[k], "LogoutUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogoutUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LogoutUserResponse structure as a key-value pair table
function M.LogoutUserResponse(args)
	assert(args, "You must provide an argument table when creating LogoutUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertLogoutUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserRequestItem = { ["LicenseType"] = true, ["UserId"] = true, nil }

function asserts.AssertUpdateUserRequestItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequestItem to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["LicenseType"] then asserts.AssertLicense(struct["LicenseType"]) end
	if struct["UserId"] then asserts.AssertNonEmptyString(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRequestItem[k], "UpdateUserRequestItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequestItem
-- <p>The user ID and user fields to update, used with the <a>BatchUpdateUser</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LicenseType [License] <p>The user license type.</p>
-- * UserId [NonEmptyString] <p>The user ID.</p>
-- Required key: UserId
-- @return UpdateUserRequestItem structure as a key-value pair table
function M.UpdateUserRequestItem(args)
	assert(args, "You must provide an argument table when creating UpdateUserRequestItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LicenseType"] = args["LicenseType"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertUpdateUserRequestItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAccountSettingsResponse = { nil }

function asserts.AssertUpdateAccountSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountSettingsResponse[k], "UpdateAccountSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateAccountSettingsResponse structure as a key-value pair table
function M.UpdateAccountSettingsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAccountSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateAccountSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAccountResponse = { nil }

function asserts.AssertDeleteAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccountResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccountResponse[k], "DeleteAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteAccountResponse structure as a key-value pair table
function M.DeleteAccountResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAccountRequest = { ["Name"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["Name"] then asserts.AssertAccountName(struct["Name"]) end
	if struct["AccountId"] then asserts.AssertNonEmptyString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountRequest[k], "UpdateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [AccountName] <p>The new name for the specified Amazon Chime account.</p>
-- * AccountId [NonEmptyString] <p>The Amazon Chime account ID.</p>
-- Required key: AccountId
-- @return UpdateAccountRequest structure as a key-value pair table
function M.UpdateAccountRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["AccountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertLicense(str)
	assert(str)
	assert(type(str) == "string", "Expected License to be of type 'string'")
end

--  
function M.License(str)
	asserts.AssertLicense(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
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

function asserts.AssertInviteStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InviteStatus to be of type 'string'")
end

--  
function M.InviteStatus(str)
	asserts.AssertInviteStatus(str)
	return str
end

function asserts.AssertAccountName(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountName(str)
	asserts.AssertAccountName(str)
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

function asserts.AssertEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddress to be of type 'string'")
end

--  
function M.EmailAddress(str)
	asserts.AssertEmailAddress(str)
	return str
end

function asserts.AssertEmailStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailStatus to be of type 'string'")
end

--  
function M.EmailStatus(str)
	asserts.AssertEmailStatus(str)
	return str
end

function asserts.AssertAccountType(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountType to be of type 'string'")
end

--  
function M.AccountType(str)
	asserts.AssertAccountType(str)
	return str
end

function asserts.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	asserts.AssertSensitiveString(str)
	return str
end

function asserts.AssertProfileServiceMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ProfileServiceMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 200, "Expected integer to be max 200")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ProfileServiceMaxResults(integer)
	asserts.AssertProfileServiceMaxResults(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertIso8601Timestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Iso8601Timestamp to be of type 'string'")
end

function M.Iso8601Timestamp(timestamp)
	asserts.AssertIso8601Timestamp(timestamp)
	return timestamp
end

function asserts.AssertLicenseList(list)
	assert(list)
	assert(type(list) == "table", "Expected LicenseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLicense(v)
	end
end

--  
-- List of License objects
function M.LicenseList(list)
	asserts.AssertLicenseList(list)
	return list
end

function asserts.AssertUserIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.UserIdList(list)
	asserts.AssertUserIdList(list)
	return list
end

function asserts.AssertUpdateUserRequestItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected UpdateUserRequestItemList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertUpdateUserRequestItem(v)
	end
end

--  
-- List of UpdateUserRequestItem objects
function M.UpdateUserRequestItemList(list)
	asserts.AssertUpdateUserRequestItemList(list)
	return list
end

function asserts.AssertInviteList(list)
	assert(list)
	assert(type(list) == "table", "Expected InviteList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInvite(v)
	end
end

--  
-- List of Invite objects
function M.InviteList(list)
	asserts.AssertInviteList(list)
	return list
end

function asserts.AssertAccountList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccount(v)
	end
end

--  
-- List of Account objects
function M.AccountList(list)
	asserts.AssertAccountList(list)
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

function asserts.AssertUserErrorList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserErrorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserError(v)
	end
end

--  
-- List of UserError objects
function M.UserErrorList(list)
	asserts.AssertUserErrorList(list)
	return list
end

function asserts.AssertUserEmailList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserEmailList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertEmailAddress(v)
	end
end

--  
-- List of EmailAddress objects
function M.UserEmailList(list)
	asserts.AssertUserEmailList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "chime.amazonaws.com"
		end
	end
	local ss = { "chime" }
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users/{userId}", UpdateUserRequest, headers, settings, cb)
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

--- Call CreateAccount asynchronously, invoking a callback when done
-- @param CreateAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAccountAsync(CreateAccountRequest, cb)
	assert(CreateAccountRequest, "You must provide a CreateAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAccount",
	}
	for header,value in pairs(CreateAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts", CreateAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAccountSync(CreateAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAccountAsync(CreateAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAccount asynchronously, invoking a callback when done
-- @param DeleteAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAccountAsync(DeleteAccountRequest, cb)
	assert(DeleteAccountRequest, "You must provide a DeleteAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAccount",
	}
	for header,value in pairs(DeleteAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}", DeleteAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAccountSync(DeleteAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAccountAsync(DeleteAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAccounts asynchronously, invoking a callback when done
-- @param ListAccountsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAccountsAsync(ListAccountsRequest, cb)
	assert(ListAccountsRequest, "You must provide a ListAccountsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAccounts",
	}
	for header,value in pairs(ListAccountsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/console/accounts", ListAccountsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAccounts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAccountsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAccountsSync(ListAccountsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAccountsAsync(ListAccountsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchSuspendUser asynchronously, invoking a callback when done
-- @param BatchSuspendUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchSuspendUserAsync(BatchSuspendUserRequest, cb)
	assert(BatchSuspendUserRequest, "You must provide a BatchSuspendUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchSuspendUser",
	}
	for header,value in pairs(BatchSuspendUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users?operation=suspend", BatchSuspendUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchSuspendUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchSuspendUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchSuspendUserSync(BatchSuspendUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchSuspendUserAsync(BatchSuspendUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetPersonalPIN asynchronously, invoking a callback when done
-- @param ResetPersonalPINRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetPersonalPINAsync(ResetPersonalPINRequest, cb)
	assert(ResetPersonalPINRequest, "You must provide a ResetPersonalPINRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetPersonalPIN",
	}
	for header,value in pairs(ResetPersonalPINRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users/{userId}?operation=reset-personal-pin", ResetPersonalPINRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetPersonalPIN synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetPersonalPINRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResetPersonalPINSync(ResetPersonalPINRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetPersonalPINAsync(ResetPersonalPINRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccount asynchronously, invoking a callback when done
-- @param UpdateAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccountAsync(UpdateAccountRequest, cb)
	assert(UpdateAccountRequest, "You must provide a UpdateAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccount",
	}
	for header,value in pairs(UpdateAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}", UpdateAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAccountSync(UpdateAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountAsync(UpdateAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchUnsuspendUser asynchronously, invoking a callback when done
-- @param BatchUnsuspendUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchUnsuspendUserAsync(BatchUnsuspendUserRequest, cb)
	assert(BatchUnsuspendUserRequest, "You must provide a BatchUnsuspendUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchUnsuspendUser",
	}
	for header,value in pairs(BatchUnsuspendUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users?operation=unsuspend", BatchUnsuspendUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchUnsuspendUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchUnsuspendUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchUnsuspendUserSync(BatchUnsuspendUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchUnsuspendUserAsync(BatchUnsuspendUserRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/console/accounts/{accountId}/users", ListUsersRequest, headers, settings, cb)
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

--- Call GetUser asynchronously, invoking a callback when done
-- @param GetUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserAsync(GetUserRequest, cb)
	assert(GetUserRequest, "You must provide a GetUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUser",
	}
	for header,value in pairs(GetUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users/{userId}", GetUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserSync(GetUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserAsync(GetUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSettings asynchronously, invoking a callback when done
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountSettings",
	}
	for header,value in pairs(GetAccountSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/settings", GetAccountSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSettingsSync(GetAccountSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSettingsAsync(GetAccountSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call LogoutUser asynchronously, invoking a callback when done
-- @param LogoutUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.LogoutUserAsync(LogoutUserRequest, cb)
	assert(LogoutUserRequest, "You must provide a LogoutUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".LogoutUser",
	}
	for header,value in pairs(LogoutUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users/{userId}?operation=logout", LogoutUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call LogoutUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LogoutUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.LogoutUserSync(LogoutUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.LogoutUserAsync(LogoutUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccountSettings asynchronously, invoking a callback when done
-- @param UpdateAccountSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccountSettingsAsync(UpdateAccountSettingsRequest, cb)
	assert(UpdateAccountSettingsRequest, "You must provide a UpdateAccountSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccountSettings",
	}
	for header,value in pairs(UpdateAccountSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/settings", UpdateAccountSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccountSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccountSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAccountSettingsSync(UpdateAccountSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountSettingsAsync(UpdateAccountSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccount asynchronously, invoking a callback when done
-- @param GetAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountAsync(GetAccountRequest, cb)
	assert(GetAccountRequest, "You must provide a GetAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccount",
	}
	for header,value in pairs(GetAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}", GetAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSync(GetAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountAsync(GetAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchUpdateUser asynchronously, invoking a callback when done
-- @param BatchUpdateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchUpdateUserAsync(BatchUpdateUserRequest, cb)
	assert(BatchUpdateUserRequest, "You must provide a BatchUpdateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchUpdateUser",
	}
	for header,value in pairs(BatchUpdateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users", BatchUpdateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchUpdateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchUpdateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchUpdateUserSync(BatchUpdateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchUpdateUserAsync(BatchUpdateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InviteUsers asynchronously, invoking a callback when done
-- @param InviteUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InviteUsersAsync(InviteUsersRequest, cb)
	assert(InviteUsersRequest, "You must provide a InviteUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InviteUsers",
	}
	for header,value in pairs(InviteUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/console/accounts/{accountId}/users?operation=add", InviteUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InviteUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InviteUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InviteUsersSync(InviteUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InviteUsersAsync(InviteUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
