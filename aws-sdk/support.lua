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
-- @param _message [ErrorMessage] <p>An error message that indicates that you have exceeded the number of cases you can have open.</p>
function M.CaseCreationLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseCreationLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCaseCreationLimitExceeded(t)
	return t
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
-- @param _code [ServiceCode] <p>The code for an AWS service returned by the <a>DescribeServices</a> response. The <code>name</code> element contains the corresponding friendly name.</p>
-- @param _name [ServiceName] <p>The friendly name for an AWS service. The <code>code</code> element contains the corresponding code.</p>
-- @param _categories [CategoryList] <p>A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call <a>CreateCase</a>.</p>
function M.Service(_code, _name, _categories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["code"] = _code,
		["name"] = _name,
		["categories"] = _categories,
	}
	asserts.AssertService(t)
	return t
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
-- @param _communications [CommunicationList] <p>The five most recent communications associated with the case.</p>
-- @param _nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.RecentCaseCommunications(_communications, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecentCaseCommunications")
	local t = { 
		["communications"] = _communications,
		["nextToken"] = _nextToken,
	}
	asserts.AssertRecentCaseCommunications(t)
	return t
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
-- @param _attachmentId [AttachmentId] <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
-- Required parameter: attachmentId
function M.DescribeAttachmentRequest(_attachmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentRequest")
	local t = { 
		["attachmentId"] = _attachmentId,
	}
	asserts.AssertDescribeAttachmentRequest(t)
	return t
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
-- @param _category [String] <p>The category of the Trusted Advisor check.</p>
-- @param _description [String] <p>The description of the Trusted Advisor check, which includes the alert criteria and recommended actions (contains HTML markup).</p>
-- @param _metadata [StringList] <p>The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a> for the check. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- @param _id [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param _name [String] <p>The display name for the Trusted Advisor check.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: description
-- Required parameter: category
-- Required parameter: metadata
function M.TrustedAdvisorCheckDescription(_category, _description, _metadata, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckDescription")
	local t = { 
		["category"] = _category,
		["description"] = _description,
		["metadata"] = _metadata,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertTrustedAdvisorCheckDescription(t)
	return t
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
-- @param _message [ErrorMessage] <p>An attachment set with the specified ID could not be found.</p>
function M.AttachmentSetIdNotFound(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetIdNotFound")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAttachmentSetIdNotFound(t)
	return t
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
-- @param _message [ErrorMessage] <p>An internal server error occurred.</p>
function M.InternalServerError(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServerError(t)
	return t
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
-- @param _attachment [Attachment] <p>The attachment content and file name.</p>
function M.DescribeAttachmentResponse(_attachment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentResponse")
	local t = { 
		["attachment"] = _attachment,
	}
	asserts.AssertDescribeAttachmentResponse(t)
	return t
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
-- @param _checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param _status [String] <p>The status of the Trusted Advisor check for which a refresh has been requested: "none", "enqueued", "processing", "success", or "abandoned".</p>
-- @param _millisUntilNextRefreshable [Long] <p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.</p>
-- Required parameter: checkId
-- Required parameter: status
-- Required parameter: millisUntilNextRefreshable
function M.TrustedAdvisorCheckRefreshStatus(_checkId, _status, _millisUntilNextRefreshable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckRefreshStatus")
	local t = { 
		["checkId"] = _checkId,
		["status"] = _status,
		["millisUntilNextRefreshable"] = _millisUntilNextRefreshable,
	}
	asserts.AssertTrustedAdvisorCheckRefreshStatus(t)
	return t
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
-- @param _checkId [String] <p>The unique identifier for the Trusted Advisor check to refresh. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required parameter: checkId
function M.RefreshTrustedAdvisorCheckRequest(_checkId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshTrustedAdvisorCheckRequest")
	local t = { 
		["checkId"] = _checkId,
	}
	asserts.AssertRefreshTrustedAdvisorCheckRequest(t)
	return t
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
-- @param _message [ErrorMessage] <p>An attachment with the specified ID could not be found.</p>
function M.AttachmentIdNotFound(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentIdNotFound")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAttachmentIdNotFound(t)
	return t
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
-- @param _message [ErrorMessage] <p>The requested <code>CaseId</code> could not be located.</p>
function M.CaseIdNotFound(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseIdNotFound")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCaseIdNotFound(t)
	return t
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
-- @param _language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param _ccEmailAddresses [CcEmailAddressList] <p>A list of email addresses that AWS Support copies on case correspondence.</p>
-- @param _communicationBody [CommunicationBody] <p>The communication body text when you create an AWS Support case by calling <a>CreateCase</a>.</p>
-- @param _attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the case. Create the set by using <a>AddAttachmentsToSet</a>.</p>
-- @param _severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p> <note> <p>The availability of severity levels depends on each customer's support subscription. In other words, your subscription may not necessarily require the urgent level of response time.</p> </note>
-- @param _categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- @param _serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- @param _issueType [IssueType] <p>The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."</p>
-- @param _subject [Subject] <p>The title of the AWS Support case.</p>
-- Required parameter: subject
-- Required parameter: communicationBody
function M.CreateCaseRequest(_language, _ccEmailAddresses, _communicationBody, _attachmentSetId, _severityCode, _categoryCode, _serviceCode, _issueType, _subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCaseRequest")
	local t = { 
		["language"] = _language,
		["ccEmailAddresses"] = _ccEmailAddresses,
		["communicationBody"] = _communicationBody,
		["attachmentSetId"] = _attachmentSetId,
		["severityCode"] = _severityCode,
		["categoryCode"] = _categoryCode,
		["serviceCode"] = _serviceCode,
		["issueType"] = _issueType,
		["subject"] = _subject,
	}
	asserts.AssertCreateCaseRequest(t)
	return t
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
-- @param _statuses [TrustedAdvisorCheckRefreshStatusList] <p>The refresh status of the specified Trusted Advisor checks.</p>
-- Required parameter: statuses
function M.DescribeTrustedAdvisorCheckRefreshStatusesResponse(_statuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckRefreshStatusesResponse")
	local t = { 
		["statuses"] = _statuses,
	}
	asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesResponse(t)
	return t
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
-- @param _status [String] <p>The status code for the resource identified in the Trusted Advisor check.</p>
-- @param _resourceId [String] <p>The unique identifier for the identified resource.</p>
-- @param _region [String] <p>The AWS region in which the identified resource is located.</p>
-- @param _isSuppressed [Boolean] <p>Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.</p>
-- @param _metadata [StringList] <p>Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a> object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- Required parameter: status
-- Required parameter: resourceId
-- Required parameter: metadata
function M.TrustedAdvisorResourceDetail(_status, _resourceId, _region, _isSuppressed, _metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorResourceDetail")
	local t = { 
		["status"] = _status,
		["resourceId"] = _resourceId,
		["region"] = _region,
		["isSuppressed"] = _isSuppressed,
		["metadata"] = _metadata,
	}
	asserts.AssertTrustedAdvisorResourceDetail(t)
	return t
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
-- @param _checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param _status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- @param _flaggedResources [TrustedAdvisorResourceDetailList] <p>The details about each resource listed in the check result.</p>
-- @param _timestamp [String] <p>The time of the last refresh of the check.</p>
-- @param _resourcesSummary [TrustedAdvisorResourcesSummary] 
-- @param _categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required parameter: checkId
-- Required parameter: timestamp
-- Required parameter: status
-- Required parameter: resourcesSummary
-- Required parameter: categorySpecificSummary
-- Required parameter: flaggedResources
function M.TrustedAdvisorCheckResult(_checkId, _status, _flaggedResources, _timestamp, _resourcesSummary, _categorySpecificSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckResult")
	local t = { 
		["checkId"] = _checkId,
		["status"] = _status,
		["flaggedResources"] = _flaggedResources,
		["timestamp"] = _timestamp,
		["resourcesSummary"] = _resourcesSummary,
		["categorySpecificSummary"] = _categorySpecificSummary,
	}
	asserts.AssertTrustedAdvisorCheckResult(t)
	return t
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
-- @param _language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required parameter: language
function M.DescribeTrustedAdvisorChecksRequest(_language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorChecksRequest")
	local t = { 
		["language"] = _language,
	}
	asserts.AssertDescribeTrustedAdvisorChecksRequest(t)
	return t
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
-- @param _checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param _language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required parameter: checkId
function M.DescribeTrustedAdvisorCheckResultRequest(_checkId, _language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckResultRequest")
	local t = { 
		["checkId"] = _checkId,
		["language"] = _language,
	}
	asserts.AssertDescribeTrustedAdvisorCheckResultRequest(t)
	return t
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
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
function M.CreateCaseResponse(_caseId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCaseResponse")
	local t = { 
		["caseId"] = _caseId,
	}
	asserts.AssertCreateCaseResponse(t)
	return t
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
-- @param _serviceCodeList [ServiceCodeList] <p>A JSON-formatted list of service codes available for AWS services.</p>
-- @param _language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
function M.DescribeServicesRequest(_serviceCodeList, _language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesRequest")
	local t = { 
		["serviceCodeList"] = _serviceCodeList,
		["language"] = _language,
	}
	asserts.AssertDescribeServicesRequest(t)
	return t
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
-- @param _status [TrustedAdvisorCheckRefreshStatus] <p>The current refresh status for a check, including the amount of time until the check is eligible for refresh.</p>
-- Required parameter: status
function M.RefreshTrustedAdvisorCheckResponse(_status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshTrustedAdvisorCheckResponse")
	local t = { 
		["status"] = _status,
	}
	asserts.AssertRefreshTrustedAdvisorCheckResponse(t)
	return t
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
-- @param _communications [CommunicationList] <p>The communications for the case.</p>
-- @param _nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.DescribeCommunicationsResponse(_communications, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommunicationsResponse")
	local t = { 
		["communications"] = _communications,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeCommunicationsResponse(t)
	return t
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
-- @param _body [CommunicationBody] <p>The text of the communication between the customer and AWS Support.</p>
-- @param _attachmentSet [AttachmentSet] <p>Information about the attachments to the case communication.</p>
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param _timeCreated [TimeCreated] <p>The time the communication was created.</p>
-- @param _submittedBy [SubmittedBy] <p>The email address of the account that submitted the AWS Support case.</p>
function M.Communication(_body, _attachmentSet, _caseId, _timeCreated, _submittedBy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Communication")
	local t = { 
		["body"] = _body,
		["attachmentSet"] = _attachmentSet,
		["caseId"] = _caseId,
		["timeCreated"] = _timeCreated,
		["submittedBy"] = _submittedBy,
	}
	asserts.AssertCommunication(t)
	return t
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
-- @param _message [ErrorMessage] <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
function M.AttachmentSetExpired(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetExpired")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAttachmentSetExpired(t)
	return t
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
-- @param _message [ErrorMessage] <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
function M.AttachmentSetSizeLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetSizeLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAttachmentSetSizeLimitExceeded(t)
	return t
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
-- @param _checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param _status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- @param _timestamp [String] <p>The time of the last refresh of the check.</p>
-- @param _resourcesSummary [TrustedAdvisorResourcesSummary] 
-- @param _hasFlaggedResources [Boolean] <p>Specifies whether the Trusted Advisor check has flagged resources.</p>
-- @param _categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required parameter: checkId
-- Required parameter: timestamp
-- Required parameter: status
-- Required parameter: resourcesSummary
-- Required parameter: categorySpecificSummary
function M.TrustedAdvisorCheckSummary(_checkId, _status, _timestamp, _resourcesSummary, _hasFlaggedResources, _categorySpecificSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckSummary")
	local t = { 
		["checkId"] = _checkId,
		["status"] = _status,
		["timestamp"] = _timestamp,
		["resourcesSummary"] = _resourcesSummary,
		["hasFlaggedResources"] = _hasFlaggedResources,
		["categorySpecificSummary"] = _categorySpecificSummary,
	}
	asserts.AssertTrustedAdvisorCheckSummary(t)
	return t
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
-- @param _result [Result] <p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an error.</p>
function M.AddCommunicationToCaseResponse(_result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCommunicationToCaseResponse")
	local t = { 
		["result"] = _result,
	}
	asserts.AssertAddCommunicationToCaseResponse(t)
	return t
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
-- @param _code [CategoryCode] <p>The category code for the support case.</p>
-- @param _name [CategoryName] <p>The category name for the support case.</p>
function M.Category(_code, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Category")
	local t = { 
		["code"] = _code,
		["name"] = _name,
	}
	asserts.AssertCategory(t)
	return t
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
-- @param _finalCaseStatus [CaseStatus] <p>The status of the case after the <a>ResolveCase</a> request was processed.</p>
-- @param _initialCaseStatus [CaseStatus] <p>The status of the case when the <a>ResolveCase</a> request was sent.</p>
function M.ResolveCaseResponse(_finalCaseStatus, _initialCaseStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCaseResponse")
	local t = { 
		["finalCaseStatus"] = _finalCaseStatus,
		["initialCaseStatus"] = _initialCaseStatus,
	}
	asserts.AssertResolveCaseResponse(t)
	return t
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
-- @param _result [TrustedAdvisorCheckResult] <p>The detailed results of the Trusted Advisor check.</p>
function M.DescribeTrustedAdvisorCheckResultResponse(_result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckResultResponse")
	local t = { 
		["result"] = _result,
	}
	asserts.AssertDescribeTrustedAdvisorCheckResultResponse(t)
	return t
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
-- @param _includeCommunications [IncludeCommunications] <p>Specifies whether communications should be included in the <a>DescribeCases</a> results. The default is <i>true</i>.</p>
-- @param _language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param _includeResolvedCases [IncludeResolvedCases] <p>Specifies whether resolved support cases should be included in the <a>DescribeCases</a> results. The default is <i>false</i>.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- @param _afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param _caseIdList [CaseIdList] <p>A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.</p>
-- @param _displayId [DisplayId] <p>The ID displayed for a case in the AWS Support Center user interface.</p>
-- @param _nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @param _beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
function M.DescribeCasesRequest(_includeCommunications, _language, _includeResolvedCases, _maxResults, _afterTime, _caseIdList, _displayId, _nextToken, _beforeTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCasesRequest")
	local t = { 
		["includeCommunications"] = _includeCommunications,
		["language"] = _language,
		["includeResolvedCases"] = _includeResolvedCases,
		["maxResults"] = _maxResults,
		["afterTime"] = _afterTime,
		["caseIdList"] = _caseIdList,
		["displayId"] = _displayId,
		["nextToken"] = _nextToken,
		["beforeTime"] = _beforeTime,
	}
	asserts.AssertDescribeCasesRequest(t)
	return t
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
-- @param _checks [TrustedAdvisorCheckList] <p>Information about all available Trusted Advisor checks.</p>
-- Required parameter: checks
function M.DescribeTrustedAdvisorChecksResponse(_checks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorChecksResponse")
	local t = { 
		["checks"] = _checks,
	}
	asserts.AssertDescribeTrustedAdvisorChecksResponse(t)
	return t
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
-- @param _data [Data] <p>The content of the attachment file.</p>
-- @param _fileName [FileName] <p>The name of the attachment file.</p>
function M.Attachment(_data, _fileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attachment")
	local t = { 
		["data"] = _data,
		["fileName"] = _fileName,
	}
	asserts.AssertAttachment(t)
	return t
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
-- @param _checkIds [StringList] <p>The IDs of the Trusted Advisor checks to get the status of. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required parameter: checkIds
function M.DescribeTrustedAdvisorCheckRefreshStatusesRequest(_checkIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckRefreshStatusesRequest")
	local t = { 
		["checkIds"] = _checkIds,
	}
	asserts.AssertDescribeTrustedAdvisorCheckRefreshStatusesRequest(t)
	return t
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
-- @param _afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param _nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @param _beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param _maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- Required parameter: caseId
function M.DescribeCommunicationsRequest(_afterTime, _nextToken, _beforeTime, _caseId, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommunicationsRequest")
	local t = { 
		["afterTime"] = _afterTime,
		["nextToken"] = _nextToken,
		["beforeTime"] = _beforeTime,
		["caseId"] = _caseId,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeCommunicationsRequest(t)
	return t
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
-- @param _communicationBody [CommunicationBody] <p>The body of an email communication to add to the support case.</p>
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param _ccEmailAddresses [CcEmailAddressList] <p>The email addresses in the CC line of an email to be added to the support case.</p>
-- @param _attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling <a>AddAttachmentsToSet</a> </p>
-- Required parameter: communicationBody
function M.AddCommunicationToCaseRequest(_communicationBody, _caseId, _ccEmailAddresses, _attachmentSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCommunicationToCaseRequest")
	local t = { 
		["communicationBody"] = _communicationBody,
		["caseId"] = _caseId,
		["ccEmailAddresses"] = _ccEmailAddresses,
		["attachmentSetId"] = _attachmentSetId,
	}
	asserts.AssertAddCommunicationToCaseRequest(t)
	return t
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
-- @param _expiryTime [ExpiryTime] <p>The time and date when the attachment set expires.</p>
-- @param _attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> was specified, the attachments are added to the specified set, if it exists.</p>
function M.AddAttachmentsToSetResponse(_expiryTime, _attachmentSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttachmentsToSetResponse")
	local t = { 
		["expiryTime"] = _expiryTime,
		["attachmentSetId"] = _attachmentSetId,
	}
	asserts.AssertAddAttachmentsToSetResponse(t)
	return t
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
-- @param _resourcesFlagged [Long] <p>The number of AWS resources that were flagged (listed) by the Trusted Advisor check.</p>
-- @param _resourcesProcessed [Long] <p>The number of AWS resources that were analyzed by the Trusted Advisor check.</p>
-- @param _resourcesSuppressed [Long] <p>The number of AWS resources ignored by Trusted Advisor because they were marked as suppressed by the user.</p>
-- @param _resourcesIgnored [Long] <p>The number of AWS resources ignored by Trusted Advisor because information was unavailable.</p>
-- Required parameter: resourcesProcessed
-- Required parameter: resourcesFlagged
-- Required parameter: resourcesIgnored
-- Required parameter: resourcesSuppressed
function M.TrustedAdvisorResourcesSummary(_resourcesFlagged, _resourcesProcessed, _resourcesSuppressed, _resourcesIgnored, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorResourcesSummary")
	local t = { 
		["resourcesFlagged"] = _resourcesFlagged,
		["resourcesProcessed"] = _resourcesProcessed,
		["resourcesSuppressed"] = _resourcesSuppressed,
		["resourcesIgnored"] = _resourcesIgnored,
	}
	asserts.AssertTrustedAdvisorResourcesSummary(t)
	return t
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
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
function M.ResolveCaseRequest(_caseId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCaseRequest")
	local t = { 
		["caseId"] = _caseId,
	}
	asserts.AssertResolveCaseRequest(t)
	return t
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
-- @param _estimatedMonthlySavings [Double] <p>The estimated monthly savings that might be realized if the recommended actions are taken.</p>
-- @param _estimatedPercentMonthlySavings [Double] <p>The estimated percentage of savings that might be realized if the recommended actions are taken.</p>
-- Required parameter: estimatedMonthlySavings
-- Required parameter: estimatedPercentMonthlySavings
function M.TrustedAdvisorCostOptimizingSummary(_estimatedMonthlySavings, _estimatedPercentMonthlySavings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCostOptimizingSummary")
	local t = { 
		["estimatedMonthlySavings"] = _estimatedMonthlySavings,
		["estimatedPercentMonthlySavings"] = _estimatedPercentMonthlySavings,
	}
	asserts.AssertTrustedAdvisorCostOptimizingSummary(t)
	return t
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
-- @param _severityLevels [SeverityLevelsList] <p>The available severity levels for the support case. Available severity levels are defined by your service level agreement with AWS.</p>
function M.DescribeSeverityLevelsResponse(_severityLevels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSeverityLevelsResponse")
	local t = { 
		["severityLevels"] = _severityLevels,
	}
	asserts.AssertDescribeSeverityLevelsResponse(t)
	return t
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
-- @param _language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
function M.DescribeSeverityLevelsRequest(_language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSeverityLevelsRequest")
	local t = { 
		["language"] = _language,
	}
	asserts.AssertDescribeSeverityLevelsRequest(t)
	return t
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
-- @param _costOptimizing [TrustedAdvisorCostOptimizingSummary] <p>The summary information about cost savings for a Trusted Advisor check that is in the Cost Optimizing category.</p>
function M.TrustedAdvisorCategorySpecificSummary(_costOptimizing, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCategorySpecificSummary")
	local t = { 
		["costOptimizing"] = _costOptimizing,
	}
	asserts.AssertTrustedAdvisorCategorySpecificSummary(t)
	return t
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
-- @param _attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p>
-- @param _attachments [Attachments] <p>One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.</p>
-- Required parameter: attachments
function M.AddAttachmentsToSetRequest(_attachmentSetId, _attachments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttachmentsToSetRequest")
	local t = { 
		["attachmentSetId"] = _attachmentSetId,
		["attachments"] = _attachments,
	}
	asserts.AssertAddAttachmentsToSetRequest(t)
	return t
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
-- @param _message [ErrorMessage] <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
function M.DescribeAttachmentLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDescribeAttachmentLimitExceeded(t)
	return t
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
-- @param _attachmentId [AttachmentId] <p>The ID of the attachment.</p>
-- @param _fileName [FileName] <p>The file name of the attachment.</p>
function M.AttachmentDetails(_attachmentId, _fileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentDetails")
	local t = { 
		["attachmentId"] = _attachmentId,
		["fileName"] = _fileName,
	}
	asserts.AssertAttachmentDetails(t)
	return t
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
-- @param _services [ServiceList] <p>A JSON-formatted list of AWS services.</p>
function M.DescribeServicesResponse(_services, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesResponse")
	local t = { 
		["services"] = _services,
	}
	asserts.AssertDescribeServicesResponse(t)
	return t
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
-- @param _summaries [TrustedAdvisorCheckSummaryList] <p>The summary information for the requested Trusted Advisor checks.</p>
-- Required parameter: summaries
function M.DescribeTrustedAdvisorCheckSummariesResponse(_summaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckSummariesResponse")
	local t = { 
		["summaries"] = _summaries,
	}
	asserts.AssertDescribeTrustedAdvisorCheckSummariesResponse(t)
	return t
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
-- @param _code [SeverityLevelCode] <p>One of four values: "low," "medium," "high," and "urgent". These values correspond to response times returned to the caller in <code>severityLevel.name</code>. </p>
-- @param _name [SeverityLevelName] <p>The name of the severity level that corresponds to the severity level code.</p>
function M.SeverityLevel(_code, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SeverityLevel")
	local t = { 
		["code"] = _code,
		["name"] = _name,
	}
	asserts.AssertSeverityLevel(t)
	return t
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
-- @param _message [ErrorMessage] <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
function M.AttachmentLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAttachmentLimitExceeded(t)
	return t
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
-- @param _status [Status] <p>The status of the case.</p>
-- @param _recentCommunications [RecentCaseCommunications] <p>The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a <code>nextToken</code> that you can use to retrieve earlier communications.</p>
-- @param _ccEmailAddresses [CcEmailAddressList] <p>The email addresses that receive copies of communication about the case.</p>
-- @param _timeCreated [TimeCreated] <p>The time that the case was case created in the AWS Support Center.</p>
-- @param _caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param _severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>
-- @param _language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param _categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- @param _serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- @param _submittedBy [SubmittedBy] <p>The email address of the account that submitted the case.</p>
-- @param _displayId [DisplayId] <p>The ID displayed for the case in the AWS Support Center. This is a numeric string.</p>
-- @param _subject [Subject] <p>The subject line for the case in the AWS Support Center.</p>
function M.CaseDetails(_status, _recentCommunications, _ccEmailAddresses, _timeCreated, _caseId, _severityCode, _language, _categoryCode, _serviceCode, _submittedBy, _displayId, _subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseDetails")
	local t = { 
		["status"] = _status,
		["recentCommunications"] = _recentCommunications,
		["ccEmailAddresses"] = _ccEmailAddresses,
		["timeCreated"] = _timeCreated,
		["caseId"] = _caseId,
		["severityCode"] = _severityCode,
		["language"] = _language,
		["categoryCode"] = _categoryCode,
		["serviceCode"] = _serviceCode,
		["submittedBy"] = _submittedBy,
		["displayId"] = _displayId,
		["subject"] = _subject,
	}
	asserts.AssertCaseDetails(t)
	return t
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
-- @param _cases [CaseList] <p>The details for the cases that match the request.</p>
-- @param _nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.DescribeCasesResponse(_cases, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCasesResponse")
	local t = { 
		["cases"] = _cases,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeCasesResponse(t)
	return t
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
-- @param _checkIds [StringList] <p>The IDs of the Trusted Advisor checks.</p>
-- Required parameter: checkIds
function M.DescribeTrustedAdvisorCheckSummariesRequest(_checkIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckSummariesRequest")
	local t = { 
		["checkIds"] = _checkIds,
	}
	asserts.AssertDescribeTrustedAdvisorCheckSummariesRequest(t)
	return t
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
	assert(type(string) == "string", "Expected Data to be of type 'string'")
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- Call CreateCase asynchronously, invoking a callback when done
-- @param CreateCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCaseAsync(CreateCaseRequest, cb)
	assert(CreateCaseRequest, "You must provide a CreateCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.CreateCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCaseRequest
-- @return response
-- @return error_message
function M.CreateCaseSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCaseAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddAttachmentsToSet asynchronously, invoking a callback when done
-- @param AddAttachmentsToSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddAttachmentsToSetAsync(AddAttachmentsToSetRequest, cb)
	assert(AddAttachmentsToSetRequest, "You must provide a AddAttachmentsToSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddAttachmentsToSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddAttachmentsToSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AddAttachmentsToSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddAttachmentsToSetRequest
-- @return response
-- @return error_message
function M.AddAttachmentsToSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddAttachmentsToSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddCommunicationToCase asynchronously, invoking a callback when done
-- @param AddCommunicationToCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddCommunicationToCaseAsync(AddCommunicationToCaseRequest, cb)
	assert(AddCommunicationToCaseRequest, "You must provide a AddCommunicationToCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddCommunicationToCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddCommunicationToCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AddCommunicationToCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddCommunicationToCaseRequest
-- @return response
-- @return error_message
function M.AddCommunicationToCaseSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddCommunicationToCaseAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckRefreshStatuses asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckRefreshStatusesAsync(DescribeTrustedAdvisorCheckRefreshStatusesRequest, cb)
	assert(DescribeTrustedAdvisorCheckRefreshStatusesRequest, "You must provide a DescribeTrustedAdvisorCheckRefreshStatusesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckRefreshStatusesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckRefreshStatuses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- @return response
-- @return error_message
function M.DescribeTrustedAdvisorCheckRefreshStatusesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckRefreshStatusesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckResult asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckResultRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckResultAsync(DescribeTrustedAdvisorCheckResultRequest, cb)
	assert(DescribeTrustedAdvisorCheckResultRequest, "You must provide a DescribeTrustedAdvisorCheckResultRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckResultRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckResultRequest
-- @return response
-- @return error_message
function M.DescribeTrustedAdvisorCheckResultSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckResultAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResolveCase asynchronously, invoking a callback when done
-- @param ResolveCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResolveCaseAsync(ResolveCaseRequest, cb)
	assert(ResolveCaseRequest, "You must provide a ResolveCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.ResolveCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResolveCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ResolveCase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResolveCaseRequest
-- @return response
-- @return error_message
function M.ResolveCaseSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResolveCaseAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSeverityLevels asynchronously, invoking a callback when done
-- @param DescribeSeverityLevelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSeverityLevelsAsync(DescribeSeverityLevelsRequest, cb)
	assert(DescribeSeverityLevelsRequest, "You must provide a DescribeSeverityLevelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeSeverityLevels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSeverityLevelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSeverityLevels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSeverityLevelsRequest
-- @return response
-- @return error_message
function M.DescribeSeverityLevelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSeverityLevelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCases asynchronously, invoking a callback when done
-- @param DescribeCasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCasesAsync(DescribeCasesRequest, cb)
	assert(DescribeCasesRequest, "You must provide a DescribeCasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCasesRequest
-- @return response
-- @return error_message
function M.DescribeCasesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCasesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RefreshTrustedAdvisorCheck asynchronously, invoking a callback when done
-- @param RefreshTrustedAdvisorCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RefreshTrustedAdvisorCheckAsync(RefreshTrustedAdvisorCheckRequest, cb)
	assert(RefreshTrustedAdvisorCheckRequest, "You must provide a RefreshTrustedAdvisorCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.RefreshTrustedAdvisorCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RefreshTrustedAdvisorCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RefreshTrustedAdvisorCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RefreshTrustedAdvisorCheckRequest
-- @return response
-- @return error_message
function M.RefreshTrustedAdvisorCheckSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RefreshTrustedAdvisorCheckAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAttachment asynchronously, invoking a callback when done
-- @param DescribeAttachmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAttachmentAsync(DescribeAttachmentRequest, cb)
	assert(DescribeAttachmentRequest, "You must provide a DescribeAttachmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeAttachment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAttachmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAttachment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAttachmentRequest
-- @return response
-- @return error_message
function M.DescribeAttachmentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAttachmentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorChecks asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorChecksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorChecksAsync(DescribeTrustedAdvisorChecksRequest, cb)
	assert(DescribeTrustedAdvisorChecksRequest, "You must provide a DescribeTrustedAdvisorChecksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorChecks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorChecksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorChecks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorChecksRequest
-- @return response
-- @return error_message
function M.DescribeTrustedAdvisorChecksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorChecksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrustedAdvisorCheckSummaries asynchronously, invoking a callback when done
-- @param DescribeTrustedAdvisorCheckSummariesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckSummariesAsync(DescribeTrustedAdvisorCheckSummariesRequest, cb)
	assert(DescribeTrustedAdvisorCheckSummariesRequest, "You must provide a DescribeTrustedAdvisorCheckSummariesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckSummaries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckSummariesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrustedAdvisorCheckSummaries synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrustedAdvisorCheckSummariesRequest
-- @return response
-- @return error_message
function M.DescribeTrustedAdvisorCheckSummariesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrustedAdvisorCheckSummariesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCommunications asynchronously, invoking a callback when done
-- @param DescribeCommunicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCommunicationsAsync(DescribeCommunicationsRequest, cb)
	assert(DescribeCommunicationsRequest, "You must provide a DescribeCommunicationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCommunications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCommunicationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCommunications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCommunicationsRequest
-- @return response
-- @return error_message
function M.DescribeCommunicationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommunicationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServices asynchronously, invoking a callback when done
-- @param DescribeServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeServices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServicesRequest
-- @return response
-- @return error_message
function M.DescribeServicesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServicesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
