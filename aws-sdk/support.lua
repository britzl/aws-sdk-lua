--- GENERATED CODE - DO NOT MODIFY
-- AWS Support (support-2013-04-15)

local M = {}

M.metadata = {
	api_version = "2013-04-15",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "support",
	service_abbreviation = "",
	service_full_name = "AWS Support",
	signature_version = "v4",
	target_prefix = "AWSSupport_20130415",
	timestamp_format = "",
	global_endpoint = "",
	uid = "support-2013-04-15",
}

local keys = {}
local asserts = {}

keys.CaseCreationLimitExceeded = { ["message"] = true, nil }

function asserts.AssertCaseCreationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseCreationLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaseCreationLimitExceeded[k], "CaseCreationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseCreationLimitExceeded
-- <p>The case creation limit for the account has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>An error message that indicates that you have exceeded the number of cases you can have open.</p>
-- @return CaseCreationLimitExceeded structure as a key-value pair table
function M.CaseCreationLimitExceeded(args)
	assert(args, "You must provide an argument table when creating CaseCreationLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCaseCreationLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Service = { ["code"] = true, ["name"] = true, ["categories"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["code"] then asserts.AssertServiceCode(struct["code"]) end
	if struct["name"] then asserts.AssertServiceName(struct["name"]) end
	if struct["categories"] then asserts.AssertCategoryList(struct["categories"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>Information about an AWS service returned by the <a>DescribeServices</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * code [ServiceCode] <p>The code for an AWS service returned by the <a>DescribeServices</a> response. The <code>name</code> element contains the corresponding friendly name.</p>
-- * name [ServiceName] <p>The friendly name for an AWS service. The <code>code</code> element contains the corresponding code.</p>
-- * categories [CategoryList] <p>A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call <a>CreateCase</a>.</p>
-- @return Service structure as a key-value pair table
function M.Service(args)
	assert(args, "You must provide an argument table when creating Service")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["code"] = args["code"],
		["name"] = args["name"],
		["categories"] = args["categories"],
	}
	asserts.AssertService(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecentCaseCommunications = { ["communications"] = true, ["nextToken"] = true, nil }

function asserts.AssertRecentCaseCommunications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecentCaseCommunications to be of type 'table'")
	if struct["communications"] then asserts.AssertCommunicationList(struct["communications"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecentCaseCommunications[k], "RecentCaseCommunications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecentCaseCommunications
-- <p>The five most recent communications associated with the case.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * communications [CommunicationList] <p>The five most recent communications associated with the case.</p>
-- * nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @return RecentCaseCommunications structure as a key-value pair table
function M.RecentCaseCommunications(args)
	assert(args, "You must provide an argument table when creating RecentCaseCommunications")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["communications"] = args["communications"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertRecentCaseCommunications(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAttachmentRequest = { ["attachmentId"] = true, nil }

function asserts.AssertDescribeAttachmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentRequest to be of type 'table'")
	assert(struct["attachmentId"], "Expected key attachmentId to exist in table")
	if struct["attachmentId"] then asserts.AssertAttachmentId(struct["attachmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttachmentRequest[k], "DescribeAttachmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attachmentId [AttachmentId] <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
-- Required key: attachmentId
-- @return DescribeAttachmentRequest structure as a key-value pair table
function M.DescribeAttachmentRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAttachmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attachmentId"] = args["attachmentId"],
	}
	asserts.AssertDescribeAttachmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCheckDescription = { ["category"] = true, ["description"] = true, ["metadata"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertTrustedAdvisorCheckDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckDescription to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["description"], "Expected key description to exist in table")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["metadata"], "Expected key metadata to exist in table")
	if struct["category"] then asserts.AssertString(struct["category"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["metadata"] then asserts.AssertStringList(struct["metadata"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCheckDescription[k], "TrustedAdvisorCheckDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckDescription
-- <p>The description and metadata for a Trusted Advisor check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [String] <p>The category of the Trusted Advisor check.</p>
-- * description [String] <p>The description of the Trusted Advisor check, which includes the alert criteria and recommended actions (contains HTML markup).</p>
-- * metadata [StringList] <p>The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a> for the check. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- * id [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- * name [String] <p>The display name for the Trusted Advisor check.</p>
-- Required key: id
-- Required key: name
-- Required key: description
-- Required key: category
-- Required key: metadata
-- @return TrustedAdvisorCheckDescription structure as a key-value pair table
function M.TrustedAdvisorCheckDescription(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCheckDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["description"] = args["description"],
		["metadata"] = args["metadata"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertTrustedAdvisorCheckDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentSetIdNotFound = { ["message"] = true, nil }

function asserts.AssertAttachmentSetIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetIdNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentSetIdNotFound[k], "AttachmentSetIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetIdNotFound
-- <p>An attachment set with the specified ID could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>An attachment set with the specified ID could not be found.</p>
-- @return AttachmentSetIdNotFound structure as a key-value pair table
function M.AttachmentSetIdNotFound(args)
	assert(args, "You must provide an argument table when creating AttachmentSetIdNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAttachmentSetIdNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerError = { ["message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An internal server error occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>An internal server error occurred.</p>
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
		["message"] = args["message"],
	}
	asserts.AssertInternalServerError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAttachmentResponse = { ["attachment"] = true, nil }

function asserts.AssertDescribeAttachmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentResponse to be of type 'table'")
	if struct["attachment"] then asserts.AssertAttachment(struct["attachment"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttachmentResponse[k], "DescribeAttachmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentResponse
-- <p>The content and file name of the attachment returned by the <a>DescribeAttachment</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attachment [Attachment] <p>The attachment content and file name.</p>
-- @return DescribeAttachmentResponse structure as a key-value pair table
function M.DescribeAttachmentResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAttachmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attachment"] = args["attachment"],
	}
	asserts.AssertDescribeAttachmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCheckRefreshStatus = { ["checkId"] = true, ["status"] = true, ["millisUntilNextRefreshable"] = true, nil }

function asserts.AssertTrustedAdvisorCheckRefreshStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckRefreshStatus to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["millisUntilNextRefreshable"], "Expected key millisUntilNextRefreshable to exist in table")
	if struct["checkId"] then asserts.AssertString(struct["checkId"]) end
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["millisUntilNextRefreshable"] then asserts.AssertLong(struct["millisUntilNextRefreshable"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCheckRefreshStatus[k], "TrustedAdvisorCheckRefreshStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckRefreshStatus
-- <p>The refresh status of a Trusted Advisor check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- * status [String] <p>The status of the Trusted Advisor check for which a refresh has been requested: "none", "enqueued", "processing", "success", or "abandoned".</p>
-- * millisUntilNextRefreshable [Long] <p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.</p>
-- Required key: checkId
-- Required key: status
-- Required key: millisUntilNextRefreshable
-- @return TrustedAdvisorCheckRefreshStatus structure as a key-value pair table
function M.TrustedAdvisorCheckRefreshStatus(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCheckRefreshStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkId"] = args["checkId"],
		["status"] = args["status"],
		["millisUntilNextRefreshable"] = args["millisUntilNextRefreshable"],
	}
	asserts.AssertTrustedAdvisorCheckRefreshStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshTrustedAdvisorCheckRequest = { ["checkId"] = true, nil }

function asserts.AssertRefreshTrustedAdvisorCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshTrustedAdvisorCheckRequest to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	if struct["checkId"] then asserts.AssertString(struct["checkId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshTrustedAdvisorCheckRequest[k], "RefreshTrustedAdvisorCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshTrustedAdvisorCheckRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkId [String] <p>The unique identifier for the Trusted Advisor check to refresh. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required key: checkId
-- @return RefreshTrustedAdvisorCheckRequest structure as a key-value pair table
function M.RefreshTrustedAdvisorCheckRequest(args)
	assert(args, "You must provide an argument table when creating RefreshTrustedAdvisorCheckRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkId"] = args["checkId"],
	}
	asserts.AssertRefreshTrustedAdvisorCheckRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentIdNotFound = { ["message"] = true, nil }

function asserts.AssertAttachmentIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentIdNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentIdNotFound[k], "AttachmentIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentIdNotFound
-- <p>An attachment with the specified ID could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>An attachment with the specified ID could not be found.</p>
-- @return AttachmentIdNotFound structure as a key-value pair table
function M.AttachmentIdNotFound(args)
	assert(args, "You must provide an argument table when creating AttachmentIdNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAttachmentIdNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaseIdNotFound = { ["message"] = true, nil }

function asserts.AssertCaseIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseIdNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaseIdNotFound[k], "CaseIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseIdNotFound
-- <p>The requested <code>caseId</code> could not be located.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The requested <code>CaseId</code> could not be located.</p>
-- @return CaseIdNotFound structure as a key-value pair table
function M.CaseIdNotFound(args)
	assert(args, "You must provide an argument table when creating CaseIdNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCaseIdNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCaseRequest = { ["language"] = true, ["ccEmailAddresses"] = true, ["communicationBody"] = true, ["attachmentSetId"] = true, ["severityCode"] = true, ["categoryCode"] = true, ["serviceCode"] = true, ["issueType"] = true, ["subject"] = true, nil }

function asserts.AssertCreateCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCaseRequest to be of type 'table'")
	assert(struct["subject"], "Expected key subject to exist in table")
	assert(struct["communicationBody"], "Expected key communicationBody to exist in table")
	if struct["language"] then asserts.AssertLanguage(struct["language"]) end
	if struct["ccEmailAddresses"] then asserts.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["communicationBody"] then asserts.AssertCommunicationBody(struct["communicationBody"]) end
	if struct["attachmentSetId"] then asserts.AssertAttachmentSetId(struct["attachmentSetId"]) end
	if struct["severityCode"] then asserts.AssertSeverityCode(struct["severityCode"]) end
	if struct["categoryCode"] then asserts.AssertCategoryCode(struct["categoryCode"]) end
	if struct["serviceCode"] then asserts.AssertServiceCode(struct["serviceCode"]) end
	if struct["issueType"] then asserts.AssertIssueType(struct["issueType"]) end
	if struct["subject"] then asserts.AssertSubject(struct["subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCaseRequest[k], "CreateCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCaseRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- * ccEmailAddresses [CcEmailAddressList] <p>A list of email addresses that AWS Support copies on case correspondence.</p>
-- * communicationBody [CommunicationBody] <p>The communication body text when you create an AWS Support case by calling <a>CreateCase</a>.</p>
-- * attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the case. Create the set by using <a>AddAttachmentsToSet</a>.</p>
-- * severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p> <note> <p>The availability of severity levels depends on each customer's support subscription. In other words, your subscription may not necessarily require the urgent level of response time.</p> </note>
-- * categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- * serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- * issueType [IssueType] <p>The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."</p>
-- * subject [Subject] <p>The title of the AWS Support case.</p>
-- Required key: subject
-- Required key: communicationBody
-- @return CreateCaseRequest structure as a key-value pair table
function M.CreateCaseRequest(args)
	assert(args, "You must provide an argument table when creating CreateCaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["language"] = args["language"],
		["ccEmailAddresses"] = args["ccEmailAddresses"],
		["communicationBody"] = args["communicationBody"],
		["attachmentSetId"] = args["attachmentSetId"],
		["severityCode"] = args["severityCode"],
		["categoryCode"] = args["categoryCode"],
		["serviceCode"] = args["serviceCode"],
		["issueType"] = args["issueType"],
		["subject"] = args["subject"],
	}
	asserts.AssertCreateCaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckRefreshStatusesResponse = { ["statuses"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckRefreshStatusesResponse to be of type 'table'")
	assert(struct["statuses"], "Expected key statuses to exist in table")
	if struct["statuses"] then asserts.AssertTrustedAdvisorCheckRefreshStatusList(struct["statuses"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckRefreshStatusesResponse[k], "DescribeTrustedAdvisorCheckRefreshStatusesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckRefreshStatusesResponse
-- <p>The statuses of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statuses [TrustedAdvisorCheckRefreshStatusList] <p>The refresh status of the specified Trusted Advisor checks.</p>
-- Required key: statuses
-- @return DescribeTrustedAdvisorCheckRefreshStatusesResponse structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckRefreshStatusesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckRefreshStatusesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["statuses"] = args["statuses"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorResourceDetail = { ["status"] = true, ["resourceId"] = true, ["region"] = true, ["isSuppressed"] = true, ["metadata"] = true, nil }

function asserts.AssertTrustedAdvisorResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorResourceDetail to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["metadata"], "Expected key metadata to exist in table")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["region"] then asserts.AssertString(struct["region"]) end
	if struct["isSuppressed"] then asserts.AssertBoolean(struct["isSuppressed"]) end
	if struct["metadata"] then asserts.AssertStringList(struct["metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorResourceDetail[k], "TrustedAdvisorResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorResourceDetail
-- <p>Contains information about a resource identified by a Trusted Advisor check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status code for the resource identified in the Trusted Advisor check.</p>
-- * resourceId [String] <p>The unique identifier for the identified resource.</p>
-- * region [String] <p>The AWS region in which the identified resource is located.</p>
-- * isSuppressed [Boolean] <p>Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.</p>
-- * metadata [StringList] <p>Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a> object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- Required key: status
-- Required key: resourceId
-- Required key: metadata
-- @return TrustedAdvisorResourceDetail structure as a key-value pair table
function M.TrustedAdvisorResourceDetail(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorResourceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["resourceId"] = args["resourceId"],
		["region"] = args["region"],
		["isSuppressed"] = args["isSuppressed"],
		["metadata"] = args["metadata"],
	}
	asserts.AssertTrustedAdvisorResourceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCheckResult = { ["checkId"] = true, ["status"] = true, ["flaggedResources"] = true, ["timestamp"] = true, ["resourcesSummary"] = true, ["categorySpecificSummary"] = true, nil }

function asserts.AssertTrustedAdvisorCheckResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckResult to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourcesSummary"], "Expected key resourcesSummary to exist in table")
	assert(struct["categorySpecificSummary"], "Expected key categorySpecificSummary to exist in table")
	assert(struct["flaggedResources"], "Expected key flaggedResources to exist in table")
	if struct["checkId"] then asserts.AssertString(struct["checkId"]) end
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["flaggedResources"] then asserts.AssertTrustedAdvisorResourceDetailList(struct["flaggedResources"]) end
	if struct["timestamp"] then asserts.AssertString(struct["timestamp"]) end
	if struct["resourcesSummary"] then asserts.AssertTrustedAdvisorResourcesSummary(struct["resourcesSummary"]) end
	if struct["categorySpecificSummary"] then asserts.AssertTrustedAdvisorCategorySpecificSummary(struct["categorySpecificSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCheckResult[k], "TrustedAdvisorCheckResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckResult
-- <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- * status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- * flaggedResources [TrustedAdvisorResourceDetailList] <p>The details about each resource listed in the check result.</p>
-- * timestamp [String] <p>The time of the last refresh of the check.</p>
-- * resourcesSummary [TrustedAdvisorResourcesSummary] 
-- * categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required key: checkId
-- Required key: timestamp
-- Required key: status
-- Required key: resourcesSummary
-- Required key: categorySpecificSummary
-- Required key: flaggedResources
-- @return TrustedAdvisorCheckResult structure as a key-value pair table
function M.TrustedAdvisorCheckResult(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCheckResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkId"] = args["checkId"],
		["status"] = args["status"],
		["flaggedResources"] = args["flaggedResources"],
		["timestamp"] = args["timestamp"],
		["resourcesSummary"] = args["resourcesSummary"],
		["categorySpecificSummary"] = args["categorySpecificSummary"],
	}
	asserts.AssertTrustedAdvisorCheckResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorChecksRequest = { ["language"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorChecksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorChecksRequest to be of type 'table'")
	assert(struct["language"], "Expected key language to exist in table")
	if struct["language"] then asserts.AssertString(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorChecksRequest[k], "DescribeTrustedAdvisorChecksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorChecksRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required key: language
-- @return DescribeTrustedAdvisorChecksRequest structure as a key-value pair table
function M.DescribeTrustedAdvisorChecksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorChecksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["language"] = args["language"],
	}
	asserts.AssertDescribeTrustedAdvisorChecksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckResultRequest = { ["checkId"] = true, ["language"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckResultRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckResultRequest to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	if struct["checkId"] then asserts.AssertString(struct["checkId"]) end
	if struct["language"] then asserts.AssertString(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckResultRequest[k], "DescribeTrustedAdvisorCheckResultRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckResultRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- * language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required key: checkId
-- @return DescribeTrustedAdvisorCheckResultRequest structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckResultRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckResultRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkId"] = args["checkId"],
		["language"] = args["language"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckResultRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCaseResponse = { ["caseId"] = true, nil }

function asserts.AssertCreateCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCaseResponse to be of type 'table'")
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCaseResponse[k], "CreateCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCaseResponse
-- <p>The AWS Support case ID returned by a successful completion of the <a>CreateCase</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @return CreateCaseResponse structure as a key-value pair table
function M.CreateCaseResponse(args)
	assert(args, "You must provide an argument table when creating CreateCaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["caseId"] = args["caseId"],
	}
	asserts.AssertCreateCaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesRequest = { ["serviceCodeList"] = true, ["language"] = true, nil }

function asserts.AssertDescribeServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesRequest to be of type 'table'")
	if struct["serviceCodeList"] then asserts.AssertServiceCodeList(struct["serviceCodeList"]) end
	if struct["language"] then asserts.AssertLanguage(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesRequest[k], "DescribeServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * serviceCodeList [ServiceCodeList] <p>A JSON-formatted list of service codes available for AWS services.</p>
-- * language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @return DescribeServicesRequest structure as a key-value pair table
function M.DescribeServicesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["serviceCodeList"] = args["serviceCodeList"],
		["language"] = args["language"],
	}
	asserts.AssertDescribeServicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshTrustedAdvisorCheckResponse = { ["status"] = true, nil }

function asserts.AssertRefreshTrustedAdvisorCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshTrustedAdvisorCheckResponse to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertTrustedAdvisorCheckRefreshStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshTrustedAdvisorCheckResponse[k], "RefreshTrustedAdvisorCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshTrustedAdvisorCheckResponse
-- <p>The current refresh status of a Trusted Advisor check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [TrustedAdvisorCheckRefreshStatus] <p>The current refresh status for a check, including the amount of time until the check is eligible for refresh.</p>
-- Required key: status
-- @return RefreshTrustedAdvisorCheckResponse structure as a key-value pair table
function M.RefreshTrustedAdvisorCheckResponse(args)
	assert(args, "You must provide an argument table when creating RefreshTrustedAdvisorCheckResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
	}
	asserts.AssertRefreshTrustedAdvisorCheckResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCommunicationsResponse = { ["communications"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeCommunicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommunicationsResponse to be of type 'table'")
	if struct["communications"] then asserts.AssertCommunicationList(struct["communications"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommunicationsResponse[k], "DescribeCommunicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommunicationsResponse
-- <p>The communications returned by the <a>DescribeCommunications</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * communications [CommunicationList] <p>The communications for the case.</p>
-- * nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @return DescribeCommunicationsResponse structure as a key-value pair table
function M.DescribeCommunicationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCommunicationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["communications"] = args["communications"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeCommunicationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Communication = { ["body"] = true, ["attachmentSet"] = true, ["caseId"] = true, ["timeCreated"] = true, ["submittedBy"] = true, nil }

function asserts.AssertCommunication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Communication to be of type 'table'")
	if struct["body"] then asserts.AssertCommunicationBody(struct["body"]) end
	if struct["attachmentSet"] then asserts.AssertAttachmentSet(struct["attachmentSet"]) end
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	if struct["timeCreated"] then asserts.AssertTimeCreated(struct["timeCreated"]) end
	if struct["submittedBy"] then asserts.AssertSubmittedBy(struct["submittedBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.Communication[k], "Communication contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Communication
-- <p>A communication associated with an AWS Support case. The communication consists of the case ID, the message body, attachment information, the account email address, and the date and time of the communication.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [CommunicationBody] <p>The text of the communication between the customer and AWS Support.</p>
-- * attachmentSet [AttachmentSet] <p>Information about the attachments to the case communication.</p>
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- * timeCreated [TimeCreated] <p>The time the communication was created.</p>
-- * submittedBy [SubmittedBy] <p>The email address of the account that submitted the AWS Support case.</p>
-- @return Communication structure as a key-value pair table
function M.Communication(args)
	assert(args, "You must provide an argument table when creating Communication")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["attachmentSet"] = args["attachmentSet"],
		["caseId"] = args["caseId"],
		["timeCreated"] = args["timeCreated"],
		["submittedBy"] = args["submittedBy"],
	}
	asserts.AssertCommunication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentSetExpired = { ["message"] = true, nil }

function asserts.AssertAttachmentSetExpired(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetExpired to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentSetExpired[k], "AttachmentSetExpired contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetExpired
-- <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
-- @return AttachmentSetExpired structure as a key-value pair table
function M.AttachmentSetExpired(args)
	assert(args, "You must provide an argument table when creating AttachmentSetExpired")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAttachmentSetExpired(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentSetSizeLimitExceeded = { ["message"] = true, nil }

function asserts.AssertAttachmentSetSizeLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetSizeLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentSetSizeLimitExceeded[k], "AttachmentSetSizeLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetSizeLimitExceeded
-- <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
-- @return AttachmentSetSizeLimitExceeded structure as a key-value pair table
function M.AttachmentSetSizeLimitExceeded(args)
	assert(args, "You must provide an argument table when creating AttachmentSetSizeLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAttachmentSetSizeLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCheckSummary = { ["checkId"] = true, ["status"] = true, ["timestamp"] = true, ["resourcesSummary"] = true, ["hasFlaggedResources"] = true, ["categorySpecificSummary"] = true, nil }

function asserts.AssertTrustedAdvisorCheckSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckSummary to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourcesSummary"], "Expected key resourcesSummary to exist in table")
	assert(struct["categorySpecificSummary"], "Expected key categorySpecificSummary to exist in table")
	if struct["checkId"] then asserts.AssertString(struct["checkId"]) end
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["timestamp"] then asserts.AssertString(struct["timestamp"]) end
	if struct["resourcesSummary"] then asserts.AssertTrustedAdvisorResourcesSummary(struct["resourcesSummary"]) end
	if struct["hasFlaggedResources"] then asserts.AssertBoolean(struct["hasFlaggedResources"]) end
	if struct["categorySpecificSummary"] then asserts.AssertTrustedAdvisorCategorySpecificSummary(struct["categorySpecificSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCheckSummary[k], "TrustedAdvisorCheckSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckSummary
-- <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- * status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- * timestamp [String] <p>The time of the last refresh of the check.</p>
-- * resourcesSummary [TrustedAdvisorResourcesSummary] 
-- * hasFlaggedResources [Boolean] <p>Specifies whether the Trusted Advisor check has flagged resources.</p>
-- * categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required key: checkId
-- Required key: timestamp
-- Required key: status
-- Required key: resourcesSummary
-- Required key: categorySpecificSummary
-- @return TrustedAdvisorCheckSummary structure as a key-value pair table
function M.TrustedAdvisorCheckSummary(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCheckSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkId"] = args["checkId"],
		["status"] = args["status"],
		["timestamp"] = args["timestamp"],
		["resourcesSummary"] = args["resourcesSummary"],
		["hasFlaggedResources"] = args["hasFlaggedResources"],
		["categorySpecificSummary"] = args["categorySpecificSummary"],
	}
	asserts.AssertTrustedAdvisorCheckSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddCommunicationToCaseResponse = { ["result"] = true, nil }

function asserts.AssertAddCommunicationToCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCommunicationToCaseResponse to be of type 'table'")
	if struct["result"] then asserts.AssertResult(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddCommunicationToCaseResponse[k], "AddCommunicationToCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCommunicationToCaseResponse
-- <p>The result of the <a>AddCommunicationToCase</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * result [Result] <p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an error.</p>
-- @return AddCommunicationToCaseResponse structure as a key-value pair table
function M.AddCommunicationToCaseResponse(args)
	assert(args, "You must provide an argument table when creating AddCommunicationToCaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["result"] = args["result"],
	}
	asserts.AssertAddCommunicationToCaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Category = { ["code"] = true, ["name"] = true, nil }

function asserts.AssertCategory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Category to be of type 'table'")
	if struct["code"] then asserts.AssertCategoryCode(struct["code"]) end
	if struct["name"] then asserts.AssertCategoryName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Category[k], "Category contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Category
-- <p>A JSON-formatted name/value pair that represents the category name and category code of the problem, selected from the <a>DescribeServices</a> response for each AWS service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * code [CategoryCode] <p>The category code for the support case.</p>
-- * name [CategoryName] <p>The category name for the support case.</p>
-- @return Category structure as a key-value pair table
function M.Category(args)
	assert(args, "You must provide an argument table when creating Category")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["code"] = args["code"],
		["name"] = args["name"],
	}
	asserts.AssertCategory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResolveCaseResponse = { ["finalCaseStatus"] = true, ["initialCaseStatus"] = true, nil }

function asserts.AssertResolveCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCaseResponse to be of type 'table'")
	if struct["finalCaseStatus"] then asserts.AssertCaseStatus(struct["finalCaseStatus"]) end
	if struct["initialCaseStatus"] then asserts.AssertCaseStatus(struct["initialCaseStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveCaseResponse[k], "ResolveCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCaseResponse
-- <p>The status of the case returned by the <a>ResolveCase</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * finalCaseStatus [CaseStatus] <p>The status of the case after the <a>ResolveCase</a> request was processed.</p>
-- * initialCaseStatus [CaseStatus] <p>The status of the case when the <a>ResolveCase</a> request was sent.</p>
-- @return ResolveCaseResponse structure as a key-value pair table
function M.ResolveCaseResponse(args)
	assert(args, "You must provide an argument table when creating ResolveCaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["finalCaseStatus"] = args["finalCaseStatus"],
		["initialCaseStatus"] = args["initialCaseStatus"],
	}
	asserts.AssertResolveCaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckResultResponse = { ["result"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckResultResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckResultResponse to be of type 'table'")
	if struct["result"] then asserts.AssertTrustedAdvisorCheckResult(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckResultResponse[k], "DescribeTrustedAdvisorCheckResultResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckResultResponse
-- <p>The result of the Trusted Advisor check returned by the <a>DescribeTrustedAdvisorCheckResult</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * result [TrustedAdvisorCheckResult] <p>The detailed results of the Trusted Advisor check.</p>
-- @return DescribeTrustedAdvisorCheckResultResponse structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckResultResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckResultResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["result"] = args["result"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckResultResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCasesRequest = { ["includeCommunications"] = true, ["language"] = true, ["includeResolvedCases"] = true, ["maxResults"] = true, ["afterTime"] = true, ["caseIdList"] = true, ["displayId"] = true, ["nextToken"] = true, ["beforeTime"] = true, nil }

function asserts.AssertDescribeCasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCasesRequest to be of type 'table'")
	if struct["includeCommunications"] then asserts.AssertIncludeCommunications(struct["includeCommunications"]) end
	if struct["language"] then asserts.AssertLanguage(struct["language"]) end
	if struct["includeResolvedCases"] then asserts.AssertIncludeResolvedCases(struct["includeResolvedCases"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["afterTime"] then asserts.AssertAfterTime(struct["afterTime"]) end
	if struct["caseIdList"] then asserts.AssertCaseIdList(struct["caseIdList"]) end
	if struct["displayId"] then asserts.AssertDisplayId(struct["displayId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["beforeTime"] then asserts.AssertBeforeTime(struct["beforeTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCasesRequest[k], "DescribeCasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCasesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeCommunications [IncludeCommunications] <p>Specifies whether communications should be included in the <a>DescribeCases</a> results. The default is <i>true</i>.</p>
-- * language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- * includeResolvedCases [IncludeResolvedCases] <p>Specifies whether resolved support cases should be included in the <a>DescribeCases</a> results. The default is <i>false</i>.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- * afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- * caseIdList [CaseIdList] <p>A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.</p>
-- * displayId [DisplayId] <p>The ID displayed for a case in the AWS Support Center user interface.</p>
-- * nextToken [NextToken] <p>A resumption point for pagination.</p>
-- * beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @return DescribeCasesRequest structure as a key-value pair table
function M.DescribeCasesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["includeCommunications"] = args["includeCommunications"],
		["language"] = args["language"],
		["includeResolvedCases"] = args["includeResolvedCases"],
		["maxResults"] = args["maxResults"],
		["afterTime"] = args["afterTime"],
		["caseIdList"] = args["caseIdList"],
		["displayId"] = args["displayId"],
		["nextToken"] = args["nextToken"],
		["beforeTime"] = args["beforeTime"],
	}
	asserts.AssertDescribeCasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorChecksResponse = { ["checks"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorChecksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorChecksResponse to be of type 'table'")
	assert(struct["checks"], "Expected key checks to exist in table")
	if struct["checks"] then asserts.AssertTrustedAdvisorCheckList(struct["checks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorChecksResponse[k], "DescribeTrustedAdvisorChecksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorChecksResponse
-- <p>Information about the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checks [TrustedAdvisorCheckList] <p>Information about all available Trusted Advisor checks.</p>
-- Required key: checks
-- @return DescribeTrustedAdvisorChecksResponse structure as a key-value pair table
function M.DescribeTrustedAdvisorChecksResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorChecksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checks"] = args["checks"],
	}
	asserts.AssertDescribeTrustedAdvisorChecksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Attachment = { ["data"] = true, ["fileName"] = true, nil }

function asserts.AssertAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attachment to be of type 'table'")
	if struct["data"] then asserts.AssertData(struct["data"]) end
	if struct["fileName"] then asserts.AssertFileName(struct["fileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Attachment[k], "Attachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attachment
-- <p>An attachment to a case communication. The attachment consists of the file name and the content of the file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * data [Data] <p>The content of the attachment file.</p>
-- * fileName [FileName] <p>The name of the attachment file.</p>
-- @return Attachment structure as a key-value pair table
function M.Attachment(args)
	assert(args, "You must provide an argument table when creating Attachment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["data"] = args["data"],
		["fileName"] = args["fileName"],
	}
	asserts.AssertAttachment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckRefreshStatusesRequest = { ["checkIds"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckRefreshStatusesRequest to be of type 'table'")
	assert(struct["checkIds"], "Expected key checkIds to exist in table")
	if struct["checkIds"] then asserts.AssertStringList(struct["checkIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckRefreshStatusesRequest[k], "DescribeTrustedAdvisorCheckRefreshStatusesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkIds [StringList] <p>The IDs of the Trusted Advisor checks to get the status of. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required key: checkIds
-- @return DescribeTrustedAdvisorCheckRefreshStatusesRequest structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckRefreshStatusesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckRefreshStatusesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkIds"] = args["checkIds"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCommunicationsRequest = { ["afterTime"] = true, ["nextToken"] = true, ["beforeTime"] = true, ["caseId"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeCommunicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommunicationsRequest to be of type 'table'")
	assert(struct["caseId"], "Expected key caseId to exist in table")
	if struct["afterTime"] then asserts.AssertAfterTime(struct["afterTime"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["beforeTime"] then asserts.AssertBeforeTime(struct["beforeTime"]) end
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommunicationsRequest[k], "DescribeCommunicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommunicationsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- * nextToken [NextToken] <p>A resumption point for pagination.</p>
-- * beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- * maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- Required key: caseId
-- @return DescribeCommunicationsRequest structure as a key-value pair table
function M.DescribeCommunicationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCommunicationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterTime"] = args["afterTime"],
		["nextToken"] = args["nextToken"],
		["beforeTime"] = args["beforeTime"],
		["caseId"] = args["caseId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeCommunicationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddCommunicationToCaseRequest = { ["communicationBody"] = true, ["caseId"] = true, ["ccEmailAddresses"] = true, ["attachmentSetId"] = true, nil }

function asserts.AssertAddCommunicationToCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCommunicationToCaseRequest to be of type 'table'")
	assert(struct["communicationBody"], "Expected key communicationBody to exist in table")
	if struct["communicationBody"] then asserts.AssertCommunicationBody(struct["communicationBody"]) end
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	if struct["ccEmailAddresses"] then asserts.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["attachmentSetId"] then asserts.AssertAttachmentSetId(struct["attachmentSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddCommunicationToCaseRequest[k], "AddCommunicationToCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCommunicationToCaseRequest
-- <p>To be written.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * communicationBody [CommunicationBody] <p>The body of an email communication to add to the support case.</p>
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- * ccEmailAddresses [CcEmailAddressList] <p>The email addresses in the CC line of an email to be added to the support case.</p>
-- * attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling <a>AddAttachmentsToSet</a> </p>
-- Required key: communicationBody
-- @return AddCommunicationToCaseRequest structure as a key-value pair table
function M.AddCommunicationToCaseRequest(args)
	assert(args, "You must provide an argument table when creating AddCommunicationToCaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["communicationBody"] = args["communicationBody"],
		["caseId"] = args["caseId"],
		["ccEmailAddresses"] = args["ccEmailAddresses"],
		["attachmentSetId"] = args["attachmentSetId"],
	}
	asserts.AssertAddCommunicationToCaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddAttachmentsToSetResponse = { ["expiryTime"] = true, ["attachmentSetId"] = true, nil }

function asserts.AssertAddAttachmentsToSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttachmentsToSetResponse to be of type 'table'")
	if struct["expiryTime"] then asserts.AssertExpiryTime(struct["expiryTime"]) end
	if struct["attachmentSetId"] then asserts.AssertAttachmentSetId(struct["attachmentSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAttachmentsToSetResponse[k], "AddAttachmentsToSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttachmentsToSetResponse
-- <p>The ID and expiry time of the attachment set returned by the <a>AddAttachmentsToSet</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expiryTime [ExpiryTime] <p>The time and date when the attachment set expires.</p>
-- * attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> was specified, the attachments are added to the specified set, if it exists.</p>
-- @return AddAttachmentsToSetResponse structure as a key-value pair table
function M.AddAttachmentsToSetResponse(args)
	assert(args, "You must provide an argument table when creating AddAttachmentsToSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expiryTime"] = args["expiryTime"],
		["attachmentSetId"] = args["attachmentSetId"],
	}
	asserts.AssertAddAttachmentsToSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorResourcesSummary = { ["resourcesFlagged"] = true, ["resourcesProcessed"] = true, ["resourcesSuppressed"] = true, ["resourcesIgnored"] = true, nil }

function asserts.AssertTrustedAdvisorResourcesSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorResourcesSummary to be of type 'table'")
	assert(struct["resourcesProcessed"], "Expected key resourcesProcessed to exist in table")
	assert(struct["resourcesFlagged"], "Expected key resourcesFlagged to exist in table")
	assert(struct["resourcesIgnored"], "Expected key resourcesIgnored to exist in table")
	assert(struct["resourcesSuppressed"], "Expected key resourcesSuppressed to exist in table")
	if struct["resourcesFlagged"] then asserts.AssertLong(struct["resourcesFlagged"]) end
	if struct["resourcesProcessed"] then asserts.AssertLong(struct["resourcesProcessed"]) end
	if struct["resourcesSuppressed"] then asserts.AssertLong(struct["resourcesSuppressed"]) end
	if struct["resourcesIgnored"] then asserts.AssertLong(struct["resourcesIgnored"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorResourcesSummary[k], "TrustedAdvisorResourcesSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorResourcesSummary
-- <p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourcesFlagged [Long] <p>The number of AWS resources that were flagged (listed) by the Trusted Advisor check.</p>
-- * resourcesProcessed [Long] <p>The number of AWS resources that were analyzed by the Trusted Advisor check.</p>
-- * resourcesSuppressed [Long] <p>The number of AWS resources ignored by Trusted Advisor because they were marked as suppressed by the user.</p>
-- * resourcesIgnored [Long] <p>The number of AWS resources ignored by Trusted Advisor because information was unavailable.</p>
-- Required key: resourcesProcessed
-- Required key: resourcesFlagged
-- Required key: resourcesIgnored
-- Required key: resourcesSuppressed
-- @return TrustedAdvisorResourcesSummary structure as a key-value pair table
function M.TrustedAdvisorResourcesSummary(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorResourcesSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourcesFlagged"] = args["resourcesFlagged"],
		["resourcesProcessed"] = args["resourcesProcessed"],
		["resourcesSuppressed"] = args["resourcesSuppressed"],
		["resourcesIgnored"] = args["resourcesIgnored"],
	}
	asserts.AssertTrustedAdvisorResourcesSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResolveCaseRequest = { ["caseId"] = true, nil }

function asserts.AssertResolveCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCaseRequest to be of type 'table'")
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveCaseRequest[k], "ResolveCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCaseRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @return ResolveCaseRequest structure as a key-value pair table
function M.ResolveCaseRequest(args)
	assert(args, "You must provide an argument table when creating ResolveCaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["caseId"] = args["caseId"],
	}
	asserts.AssertResolveCaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCostOptimizingSummary = { ["estimatedMonthlySavings"] = true, ["estimatedPercentMonthlySavings"] = true, nil }

function asserts.AssertTrustedAdvisorCostOptimizingSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCostOptimizingSummary to be of type 'table'")
	assert(struct["estimatedMonthlySavings"], "Expected key estimatedMonthlySavings to exist in table")
	assert(struct["estimatedPercentMonthlySavings"], "Expected key estimatedPercentMonthlySavings to exist in table")
	if struct["estimatedMonthlySavings"] then asserts.AssertDouble(struct["estimatedMonthlySavings"]) end
	if struct["estimatedPercentMonthlySavings"] then asserts.AssertDouble(struct["estimatedPercentMonthlySavings"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCostOptimizingSummary[k], "TrustedAdvisorCostOptimizingSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCostOptimizingSummary
-- <p>The estimated cost savings that might be realized if the recommended actions are taken.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * estimatedMonthlySavings [Double] <p>The estimated monthly savings that might be realized if the recommended actions are taken.</p>
-- * estimatedPercentMonthlySavings [Double] <p>The estimated percentage of savings that might be realized if the recommended actions are taken.</p>
-- Required key: estimatedMonthlySavings
-- Required key: estimatedPercentMonthlySavings
-- @return TrustedAdvisorCostOptimizingSummary structure as a key-value pair table
function M.TrustedAdvisorCostOptimizingSummary(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCostOptimizingSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["estimatedMonthlySavings"] = args["estimatedMonthlySavings"],
		["estimatedPercentMonthlySavings"] = args["estimatedPercentMonthlySavings"],
	}
	asserts.AssertTrustedAdvisorCostOptimizingSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSeverityLevelsResponse = { ["severityLevels"] = true, nil }

function asserts.AssertDescribeSeverityLevelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSeverityLevelsResponse to be of type 'table'")
	if struct["severityLevels"] then asserts.AssertSeverityLevelsList(struct["severityLevels"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSeverityLevelsResponse[k], "DescribeSeverityLevelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSeverityLevelsResponse
-- <p>The list of severity levels returned by the <a>DescribeSeverityLevels</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * severityLevels [SeverityLevelsList] <p>The available severity levels for the support case. Available severity levels are defined by your service level agreement with AWS.</p>
-- @return DescribeSeverityLevelsResponse structure as a key-value pair table
function M.DescribeSeverityLevelsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSeverityLevelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["severityLevels"] = args["severityLevels"],
	}
	asserts.AssertDescribeSeverityLevelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSeverityLevelsRequest = { ["language"] = true, nil }

function asserts.AssertDescribeSeverityLevelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSeverityLevelsRequest to be of type 'table'")
	if struct["language"] then asserts.AssertLanguage(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSeverityLevelsRequest[k], "DescribeSeverityLevelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSeverityLevelsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @return DescribeSeverityLevelsRequest structure as a key-value pair table
function M.DescribeSeverityLevelsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSeverityLevelsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["language"] = args["language"],
	}
	asserts.AssertDescribeSeverityLevelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedAdvisorCategorySpecificSummary = { ["costOptimizing"] = true, nil }

function asserts.AssertTrustedAdvisorCategorySpecificSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCategorySpecificSummary to be of type 'table'")
	if struct["costOptimizing"] then asserts.AssertTrustedAdvisorCostOptimizingSummary(struct["costOptimizing"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedAdvisorCategorySpecificSummary[k], "TrustedAdvisorCategorySpecificSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCategorySpecificSummary
-- <p>The container for summary information that relates to the category of the Trusted Advisor check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * costOptimizing [TrustedAdvisorCostOptimizingSummary] <p>The summary information about cost savings for a Trusted Advisor check that is in the Cost Optimizing category.</p>
-- @return TrustedAdvisorCategorySpecificSummary structure as a key-value pair table
function M.TrustedAdvisorCategorySpecificSummary(args)
	assert(args, "You must provide an argument table when creating TrustedAdvisorCategorySpecificSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["costOptimizing"] = args["costOptimizing"],
	}
	asserts.AssertTrustedAdvisorCategorySpecificSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddAttachmentsToSetRequest = { ["attachmentSetId"] = true, ["attachments"] = true, nil }

function asserts.AssertAddAttachmentsToSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttachmentsToSetRequest to be of type 'table'")
	assert(struct["attachments"], "Expected key attachments to exist in table")
	if struct["attachmentSetId"] then asserts.AssertAttachmentSetId(struct["attachmentSetId"]) end
	if struct["attachments"] then asserts.AssertAttachments(struct["attachments"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAttachmentsToSetRequest[k], "AddAttachmentsToSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttachmentsToSetRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p>
-- * attachments [Attachments] <p>One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.</p>
-- Required key: attachments
-- @return AddAttachmentsToSetRequest structure as a key-value pair table
function M.AddAttachmentsToSetRequest(args)
	assert(args, "You must provide an argument table when creating AddAttachmentsToSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attachmentSetId"] = args["attachmentSetId"],
		["attachments"] = args["attachments"],
	}
	asserts.AssertAddAttachmentsToSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAttachmentLimitExceeded = { ["message"] = true, nil }

function asserts.AssertDescribeAttachmentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttachmentLimitExceeded[k], "DescribeAttachmentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentLimitExceeded
-- <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
-- @return DescribeAttachmentLimitExceeded structure as a key-value pair table
function M.DescribeAttachmentLimitExceeded(args)
	assert(args, "You must provide an argument table when creating DescribeAttachmentLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDescribeAttachmentLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentDetails = { ["attachmentId"] = true, ["fileName"] = true, nil }

function asserts.AssertAttachmentDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentDetails to be of type 'table'")
	if struct["attachmentId"] then asserts.AssertAttachmentId(struct["attachmentId"]) end
	if struct["fileName"] then asserts.AssertFileName(struct["fileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentDetails[k], "AttachmentDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentDetails
-- <p>The file name and ID of an attachment to a case communication. You can use the ID to retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attachmentId [AttachmentId] <p>The ID of the attachment.</p>
-- * fileName [FileName] <p>The file name of the attachment.</p>
-- @return AttachmentDetails structure as a key-value pair table
function M.AttachmentDetails(args)
	assert(args, "You must provide an argument table when creating AttachmentDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attachmentId"] = args["attachmentId"],
		["fileName"] = args["fileName"],
	}
	asserts.AssertAttachmentDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesResponse = { ["services"] = true, nil }

function asserts.AssertDescribeServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesResponse to be of type 'table'")
	if struct["services"] then asserts.AssertServiceList(struct["services"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesResponse[k], "DescribeServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesResponse
-- <p>The list of AWS services returned by the <a>DescribeServices</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * services [ServiceList] <p>A JSON-formatted list of AWS services.</p>
-- @return DescribeServicesResponse structure as a key-value pair table
function M.DescribeServicesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeServicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["services"] = args["services"],
	}
	asserts.AssertDescribeServicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckSummariesResponse = { ["summaries"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckSummariesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckSummariesResponse to be of type 'table'")
	assert(struct["summaries"], "Expected key summaries to exist in table")
	if struct["summaries"] then asserts.AssertTrustedAdvisorCheckSummaryList(struct["summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckSummariesResponse[k], "DescribeTrustedAdvisorCheckSummariesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckSummariesResponse
-- <p>The summaries of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckSummaries</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * summaries [TrustedAdvisorCheckSummaryList] <p>The summary information for the requested Trusted Advisor checks.</p>
-- Required key: summaries
-- @return DescribeTrustedAdvisorCheckSummariesResponse structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckSummariesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckSummariesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["summaries"] = args["summaries"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckSummariesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SeverityLevel = { ["code"] = true, ["name"] = true, nil }

function asserts.AssertSeverityLevel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SeverityLevel to be of type 'table'")
	if struct["code"] then asserts.AssertSeverityLevelCode(struct["code"]) end
	if struct["name"] then asserts.AssertSeverityLevelName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SeverityLevel[k], "SeverityLevel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SeverityLevel
-- <p>A code and name pair that represent a severity level that can be applied to a support case.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * code [SeverityLevelCode] <p>One of four values: "low," "medium," "high," and "urgent". These values correspond to response times returned to the caller in <code>severityLevel.name</code>. </p>
-- * name [SeverityLevelName] <p>The name of the severity level that corresponds to the severity level code.</p>
-- @return SeverityLevel structure as a key-value pair table
function M.SeverityLevel(args)
	assert(args, "You must provide an argument table when creating SeverityLevel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["code"] = args["code"],
		["name"] = args["name"],
	}
	asserts.AssertSeverityLevel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachmentLimitExceeded = { ["message"] = true, nil }

function asserts.AssertAttachmentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachmentLimitExceeded[k], "AttachmentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentLimitExceeded
-- <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
-- @return AttachmentLimitExceeded structure as a key-value pair table
function M.AttachmentLimitExceeded(args)
	assert(args, "You must provide an argument table when creating AttachmentLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAttachmentLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaseDetails = { ["status"] = true, ["recentCommunications"] = true, ["ccEmailAddresses"] = true, ["timeCreated"] = true, ["caseId"] = true, ["severityCode"] = true, ["language"] = true, ["categoryCode"] = true, ["serviceCode"] = true, ["submittedBy"] = true, ["displayId"] = true, ["subject"] = true, nil }

function asserts.AssertCaseDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseDetails to be of type 'table'")
	if struct["status"] then asserts.AssertStatus(struct["status"]) end
	if struct["recentCommunications"] then asserts.AssertRecentCaseCommunications(struct["recentCommunications"]) end
	if struct["ccEmailAddresses"] then asserts.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["timeCreated"] then asserts.AssertTimeCreated(struct["timeCreated"]) end
	if struct["caseId"] then asserts.AssertCaseId(struct["caseId"]) end
	if struct["severityCode"] then asserts.AssertSeverityCode(struct["severityCode"]) end
	if struct["language"] then asserts.AssertLanguage(struct["language"]) end
	if struct["categoryCode"] then asserts.AssertCategoryCode(struct["categoryCode"]) end
	if struct["serviceCode"] then asserts.AssertServiceCode(struct["serviceCode"]) end
	if struct["submittedBy"] then asserts.AssertSubmittedBy(struct["submittedBy"]) end
	if struct["displayId"] then asserts.AssertDisplayId(struct["displayId"]) end
	if struct["subject"] then asserts.AssertSubject(struct["subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaseDetails[k], "CaseDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseDetails
-- <p>A JSON-formatted object that contains the metadata for a support case. It is contained the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p> <ul> <li> <p> <b>caseId.</b> The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p> </li> <li> <p> <b>categoryCode.</b> The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>displayId.</b> The identifier for the case on pages in the AWS Support Center.</p> </li> <li> <p> <b>language.</b> The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p> </li> <li> <p> <b>recentCommunications.</b> One or more <a>Communication</a> objects. Fields of these objects are <code>attachments</code>, <code>body</code>, <code>caseId</code>, <code>submittedBy</code>, and <code>timeCreated</code>.</p> </li> <li> <p> <b>nextToken.</b> A resumption point for pagination.</p> </li> <li> <p> <b>serviceCode.</b> The identifier for the AWS service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>severityCode. </b>The severity code assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>status.</b> The status of the case in the AWS Support Center.</p> </li> <li> <p> <b>subject.</b> The subject line of the case.</p> </li> <li> <p> <b>submittedBy.</b> The email address of the account that submitted the case.</p> </li> <li> <p> <b>timeCreated.</b> The time the case was created, in ISO-8601 format.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Status] <p>The status of the case.</p>
-- * recentCommunications [RecentCaseCommunications] <p>The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a <code>nextToken</code> that you can use to retrieve earlier communications.</p>
-- * ccEmailAddresses [CcEmailAddressList] <p>The email addresses that receive copies of communication about the case.</p>
-- * timeCreated [TimeCreated] <p>The time that the case was case created in the AWS Support Center.</p>
-- * caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- * severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>
-- * language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- * categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- * serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- * submittedBy [SubmittedBy] <p>The email address of the account that submitted the case.</p>
-- * displayId [DisplayId] <p>The ID displayed for the case in the AWS Support Center. This is a numeric string.</p>
-- * subject [Subject] <p>The subject line for the case in the AWS Support Center.</p>
-- @return CaseDetails structure as a key-value pair table
function M.CaseDetails(args)
	assert(args, "You must provide an argument table when creating CaseDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["recentCommunications"] = args["recentCommunications"],
		["ccEmailAddresses"] = args["ccEmailAddresses"],
		["timeCreated"] = args["timeCreated"],
		["caseId"] = args["caseId"],
		["severityCode"] = args["severityCode"],
		["language"] = args["language"],
		["categoryCode"] = args["categoryCode"],
		["serviceCode"] = args["serviceCode"],
		["submittedBy"] = args["submittedBy"],
		["displayId"] = args["displayId"],
		["subject"] = args["subject"],
	}
	asserts.AssertCaseDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCasesResponse = { ["cases"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeCasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCasesResponse to be of type 'table'")
	if struct["cases"] then asserts.AssertCaseList(struct["cases"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCasesResponse[k], "DescribeCasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCasesResponse
-- <p>Returns an array of <a>CaseDetails</a> objects and a <code>nextToken</code> that defines a point for pagination in the result set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cases [CaseList] <p>The details for the cases that match the request.</p>
-- * nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @return DescribeCasesResponse structure as a key-value pair table
function M.DescribeCasesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cases"] = args["cases"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeCasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrustedAdvisorCheckSummariesRequest = { ["checkIds"] = true, nil }

function asserts.AssertDescribeTrustedAdvisorCheckSummariesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckSummariesRequest to be of type 'table'")
	assert(struct["checkIds"], "Expected key checkIds to exist in table")
	if struct["checkIds"] then asserts.AssertStringList(struct["checkIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrustedAdvisorCheckSummariesRequest[k], "DescribeTrustedAdvisorCheckSummariesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckSummariesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checkIds [StringList] <p>The IDs of the Trusted Advisor checks.</p>
-- Required key: checkIds
-- @return DescribeTrustedAdvisorCheckSummariesRequest structure as a key-value pair table
function M.DescribeTrustedAdvisorCheckSummariesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrustedAdvisorCheckSummariesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["checkIds"] = args["checkIds"],
	}
	asserts.AssertDescribeTrustedAdvisorCheckSummariesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertServiceCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceCode to be of type 'string'")
end

--  
function M.ServiceCode(str)
	asserts.AssertServiceCode(str)
	return str
end

function asserts.AssertBeforeTime(str)
	assert(str)
	assert(type(str) == "string", "Expected BeforeTime to be of type 'string'")
end

--  
function M.BeforeTime(str)
	asserts.AssertBeforeTime(str)
	return str
end

function asserts.AssertCaseStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CaseStatus to be of type 'string'")
end

--  
function M.CaseStatus(str)
	asserts.AssertCaseStatus(str)
	return str
end

function asserts.AssertAfterTime(str)
	assert(str)
	assert(type(str) == "string", "Expected AfterTime to be of type 'string'")
end

--  
function M.AfterTime(str)
	asserts.AssertAfterTime(str)
	return str
end

function asserts.AssertCcEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected CcEmailAddress to be of type 'string'")
end

--  
function M.CcEmailAddress(str)
	asserts.AssertCcEmailAddress(str)
	return str
end

function asserts.AssertFileName(str)
	assert(str)
	assert(type(str) == "string", "Expected FileName to be of type 'string'")
end

--  
function M.FileName(str)
	asserts.AssertFileName(str)
	return str
end

function asserts.AssertSubject(str)
	assert(str)
	assert(type(str) == "string", "Expected Subject to be of type 'string'")
end

--  
function M.Subject(str)
	asserts.AssertSubject(str)
	return str
end

function asserts.AssertSeverityLevelCode(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityLevelCode to be of type 'string'")
end

--  
function M.SeverityLevelCode(str)
	asserts.AssertSeverityLevelCode(str)
	return str
end

function asserts.AssertAttachmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttachmentId to be of type 'string'")
end

--  
function M.AttachmentId(str)
	asserts.AssertAttachmentId(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceName to be of type 'string'")
end

--  
function M.ServiceName(str)
	asserts.AssertServiceName(str)
	return str
end

function asserts.AssertTimeCreated(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeCreated to be of type 'string'")
end

--  
function M.TimeCreated(str)
	asserts.AssertTimeCreated(str)
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

function asserts.AssertSeverityLevelName(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityLevelName to be of type 'string'")
end

--  
function M.SeverityLevelName(str)
	asserts.AssertSeverityLevelName(str)
	return str
end

function asserts.AssertAttachmentSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttachmentSetId to be of type 'string'")
end

--  
function M.AttachmentSetId(str)
	asserts.AssertAttachmentSetId(str)
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

function asserts.AssertCaseId(str)
	assert(str)
	assert(type(str) == "string", "Expected CaseId to be of type 'string'")
end

--  
function M.CaseId(str)
	asserts.AssertCaseId(str)
	return str
end

function asserts.AssertSeverityCode(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityCode to be of type 'string'")
end

--  
function M.SeverityCode(str)
	asserts.AssertSeverityCode(str)
	return str
end

function asserts.AssertSubmittedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected SubmittedBy to be of type 'string'")
end

--  
function M.SubmittedBy(str)
	asserts.AssertSubmittedBy(str)
	return str
end

function asserts.AssertLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected Language to be of type 'string'")
end

--  
function M.Language(str)
	asserts.AssertLanguage(str)
	return str
end

function asserts.AssertCommunicationBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CommunicationBody to be of type 'string'")
	assert(#str <= 8000, "Expected string to be max 8000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommunicationBody(str)
	asserts.AssertCommunicationBody(str)
	return str
end

function asserts.AssertCategoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected CategoryName to be of type 'string'")
end

--  
function M.CategoryName(str)
	asserts.AssertCategoryName(str)
	return str
end

function asserts.AssertCategoryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CategoryCode to be of type 'string'")
end

--  
function M.CategoryCode(str)
	asserts.AssertCategoryCode(str)
	return str
end

function asserts.AssertDisplayId(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayId to be of type 'string'")
end

--  
function M.DisplayId(str)
	asserts.AssertDisplayId(str)
	return str
end

function asserts.AssertIssueType(str)
	assert(str)
	assert(type(str) == "string", "Expected IssueType to be of type 'string'")
end

--  
function M.IssueType(str)
	asserts.AssertIssueType(str)
	return str
end

function asserts.AssertExpiryTime(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpiryTime to be of type 'string'")
end

--  
function M.ExpiryTime(str)
	asserts.AssertExpiryTime(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
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

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertIncludeCommunications(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeCommunications to be of type 'boolean'")
end

function M.IncludeCommunications(boolean)
	asserts.AssertIncludeCommunications(boolean)
	return boolean
end

function asserts.AssertResult(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Result to be of type 'boolean'")
end

function M.Result(boolean)
	asserts.AssertResult(boolean)
	return boolean
end

function asserts.AssertIncludeResolvedCases(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeResolvedCases to be of type 'boolean'")
end

function M.IncludeResolvedCases(boolean)
	asserts.AssertIncludeResolvedCases(boolean)
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

function asserts.AssertData(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Data to be of type 'string'")
end

function M.Data(blob)
	asserts.AssertData(blob)
	return blob
end

function asserts.AssertCaseList(list)
	assert(list)
	assert(type(list) == "table", "Expected CaseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaseDetails(v)
	end
end

--  
-- List of CaseDetails objects
function M.CaseList(list)
	asserts.AssertCaseList(list)
	return list
end

function asserts.AssertAttachments(list)
	assert(list)
	assert(type(list) == "table", "Expected Attachments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttachment(v)
	end
end

--  
-- List of Attachment objects
function M.Attachments(list)
	asserts.AssertAttachments(list)
	return list
end

function asserts.AssertServiceCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceCodeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertServiceCode(v)
	end
end

--  
-- List of ServiceCode objects
function M.ServiceCodeList(list)
	asserts.AssertServiceCodeList(list)
	return list
end

function asserts.AssertCaseIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CaseIdList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertCaseId(v)
	end
end

--  
-- List of CaseId objects
function M.CaseIdList(list)
	asserts.AssertCaseIdList(list)
	return list
end

function asserts.AssertTrustedAdvisorCheckRefreshStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckRefreshStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrustedAdvisorCheckRefreshStatus(v)
	end
end

--  
-- List of TrustedAdvisorCheckRefreshStatus objects
function M.TrustedAdvisorCheckRefreshStatusList(list)
	asserts.AssertTrustedAdvisorCheckRefreshStatusList(list)
	return list
end

function asserts.AssertCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CategoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCategory(v)
	end
end

--  
-- List of Category objects
function M.CategoryList(list)
	asserts.AssertCategoryList(list)
	return list
end

function asserts.AssertCcEmailAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected CcEmailAddressList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertCcEmailAddress(v)
	end
end

--  
-- List of CcEmailAddress objects
function M.CcEmailAddressList(list)
	asserts.AssertCcEmailAddressList(list)
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

function asserts.AssertAttachmentSet(list)
	assert(list)
	assert(type(list) == "table", "Expected AttachmentSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttachmentDetails(v)
	end
end

--  
-- List of AttachmentDetails objects
function M.AttachmentSet(list)
	asserts.AssertAttachmentSet(list)
	return list
end

function asserts.AssertTrustedAdvisorCheckList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrustedAdvisorCheckDescription(v)
	end
end

--  
-- List of TrustedAdvisorCheckDescription objects
function M.TrustedAdvisorCheckList(list)
	asserts.AssertTrustedAdvisorCheckList(list)
	return list
end

function asserts.AssertSeverityLevelsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SeverityLevelsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSeverityLevel(v)
	end
end

--  
-- List of SeverityLevel objects
function M.SeverityLevelsList(list)
	asserts.AssertSeverityLevelsList(list)
	return list
end

function asserts.AssertTrustedAdvisorResourceDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorResourceDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrustedAdvisorResourceDetail(v)
	end
end

--  
-- List of TrustedAdvisorResourceDetail objects
function M.TrustedAdvisorResourceDetailList(list)
	asserts.AssertTrustedAdvisorResourceDetailList(list)
	return list
end

function asserts.AssertTrustedAdvisorCheckSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrustedAdvisorCheckSummary(v)
	end
end

--  
-- List of TrustedAdvisorCheckSummary objects
function M.TrustedAdvisorCheckSummaryList(list)
	asserts.AssertTrustedAdvisorCheckSummaryList(list)
	return list
end

function asserts.AssertServiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertService(v)
	end
end

--  
-- List of Service objects
function M.ServiceList(list)
	asserts.AssertServiceList(list)
	return list
end

function asserts.AssertCommunicationList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommunicationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommunication(v)
	end
end

--  
-- List of Communication objects
function M.CommunicationList(list)
	asserts.AssertCommunicationList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "support.amazonaws.com"
		end
	end
	local ss = { "support" }
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
--- Call CreateCase asynchronously, invoking a callback when done
-- @param CreateCaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCaseAsync(CreateCaseRequest, cb)
	assert(CreateCaseRequest, "You must provide a CreateCaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.CreateCase",
	}
	for header,value in pairs(CreateCaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCaseSync(CreateCaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCaseAsync(CreateCaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddAttachmentsToSet asynchronously, invoking a callback when done
-- @param AddAttachmentsToSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddAttachmentsToSetAsync(AddAttachmentsToSetRequest, cb)
	assert(AddAttachmentsToSetRequest, "You must provide a AddAttachmentsToSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddAttachmentsToSet",
	}
	for header,value in pairs(AddAttachmentsToSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddAttachmentsToSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddAttachmentsToSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddAttachmentsToSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddAttachmentsToSetSync(AddAttachmentsToSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddAttachmentsToSetAsync(AddAttachmentsToSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddCommunicationToCase asynchronously, invoking a callback when done
-- @param AddCommunicationToCaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddCommunicationToCaseAsync(AddCommunicationToCaseRequest, cb)
	assert(AddCommunicationToCaseRequest, "You must provide a AddCommunicationToCaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddCommunicationToCase",
	}
	for header,value in pairs(AddCommunicationToCaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddCommunicationToCaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddCommunicationToCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddCommunicationToCaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddCommunicationToCaseSync(AddCommunicationToCaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddCommunicationToCaseAsync(AddCommunicationToCaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckRefreshStatuses asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrustedAdvisorCheckRefreshStatusesAsync(DescribeTrustedAdvisorCheckRefreshStatusesRequest, cb)
	assert(DescribeTrustedAdvisorCheckRefreshStatusesRequest, "You must provide a DescribeTrustedAdvisorCheckRefreshStatusesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses",
	}
	for header,value in pairs(DescribeTrustedAdvisorCheckRefreshStatusesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrustedAdvisorCheckRefreshStatusesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckRefreshStatuses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrustedAdvisorCheckRefreshStatusesSync(DescribeTrustedAdvisorCheckRefreshStatusesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckRefreshStatusesAsync(DescribeTrustedAdvisorCheckRefreshStatusesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckResult asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckResultRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrustedAdvisorCheckResultAsync(DescribeTrustedAdvisorCheckResultRequest, cb)
	assert(DescribeTrustedAdvisorCheckResultRequest, "You must provide a DescribeTrustedAdvisorCheckResultRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckResult",
	}
	for header,value in pairs(DescribeTrustedAdvisorCheckResultRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrustedAdvisorCheckResultRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckResultRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrustedAdvisorCheckResultSync(DescribeTrustedAdvisorCheckResultRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckResultAsync(DescribeTrustedAdvisorCheckResultRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResolveCase asynchronously, invoking a callback when done
-- @param ResolveCaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResolveCaseAsync(ResolveCaseRequest, cb)
	assert(ResolveCaseRequest, "You must provide a ResolveCaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.ResolveCase",
	}
	for header,value in pairs(ResolveCaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResolveCaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResolveCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResolveCaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResolveCaseSync(ResolveCaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResolveCaseAsync(ResolveCaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSeverityLevels asynchronously, invoking a callback when done
-- @param DescribeSeverityLevelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSeverityLevelsAsync(DescribeSeverityLevelsRequest, cb)
	assert(DescribeSeverityLevelsRequest, "You must provide a DescribeSeverityLevelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeSeverityLevels",
	}
	for header,value in pairs(DescribeSeverityLevelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSeverityLevelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSeverityLevels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSeverityLevelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSeverityLevelsSync(DescribeSeverityLevelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSeverityLevelsAsync(DescribeSeverityLevelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCases asynchronously, invoking a callback when done
-- @param DescribeCasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCasesAsync(DescribeCasesRequest, cb)
	assert(DescribeCasesRequest, "You must provide a DescribeCasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCases",
	}
	for header,value in pairs(DescribeCasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCasesSync(DescribeCasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCasesAsync(DescribeCasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RefreshTrustedAdvisorCheck asynchronously, invoking a callback when done
-- @param RefreshTrustedAdvisorCheckRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RefreshTrustedAdvisorCheckAsync(RefreshTrustedAdvisorCheckRequest, cb)
	assert(RefreshTrustedAdvisorCheckRequest, "You must provide a RefreshTrustedAdvisorCheckRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.RefreshTrustedAdvisorCheck",
	}
	for header,value in pairs(RefreshTrustedAdvisorCheckRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RefreshTrustedAdvisorCheckRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RefreshTrustedAdvisorCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RefreshTrustedAdvisorCheckRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RefreshTrustedAdvisorCheckSync(RefreshTrustedAdvisorCheckRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RefreshTrustedAdvisorCheckAsync(RefreshTrustedAdvisorCheckRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAttachment asynchronously, invoking a callback when done
-- @param DescribeAttachmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAttachmentAsync(DescribeAttachmentRequest, cb)
	assert(DescribeAttachmentRequest, "You must provide a DescribeAttachmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeAttachment",
	}
	for header,value in pairs(DescribeAttachmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAttachmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAttachment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAttachmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAttachmentSync(DescribeAttachmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAttachmentAsync(DescribeAttachmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorChecks asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorChecksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrustedAdvisorChecksAsync(DescribeTrustedAdvisorChecksRequest, cb)
	assert(DescribeTrustedAdvisorChecksRequest, "You must provide a DescribeTrustedAdvisorChecksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorChecks",
	}
	for header,value in pairs(DescribeTrustedAdvisorChecksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrustedAdvisorChecksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorChecks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorChecksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrustedAdvisorChecksSync(DescribeTrustedAdvisorChecksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorChecksAsync(DescribeTrustedAdvisorChecksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckSummaries asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckSummariesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrustedAdvisorCheckSummariesAsync(DescribeTrustedAdvisorCheckSummariesRequest, cb)
	assert(DescribeTrustedAdvisorCheckSummariesRequest, "You must provide a DescribeTrustedAdvisorCheckSummariesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckSummaries",
	}
	for header,value in pairs(DescribeTrustedAdvisorCheckSummariesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrustedAdvisorCheckSummariesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckSummaries synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckSummariesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrustedAdvisorCheckSummariesSync(DescribeTrustedAdvisorCheckSummariesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckSummariesAsync(DescribeTrustedAdvisorCheckSummariesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCommunications asynchronously, invoking a callback when done
-- @param DescribeCommunicationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCommunicationsAsync(DescribeCommunicationsRequest, cb)
	assert(DescribeCommunicationsRequest, "You must provide a DescribeCommunicationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCommunications",
	}
	for header,value in pairs(DescribeCommunicationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCommunicationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCommunications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCommunicationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCommunicationsSync(DescribeCommunicationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommunicationsAsync(DescribeCommunicationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServices asynchronously, invoking a callback when done
-- @param DescribeServicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeServices",
	}
	for header,value in pairs(DescribeServicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeServicesSync(DescribeServicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServicesAsync(DescribeServicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
