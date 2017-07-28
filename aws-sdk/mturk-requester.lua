--- GENERATED CODE - DO NOT MODIFY
-- Amazon Mechanical Turk (mturk-requester-2017-01-17)

local M = {}

M.metadata = {
	api_version = "2017-01-17",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "mturk-requester",
	service_abbreviation = "Amazon MTurk",
	service_full_name = "Amazon Mechanical Turk",
	signature_version = "v4",
	target_prefix = "MTurkRequesterServiceV20170117",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mturk-requester-2017-01-17",
}

local keys = {}
local asserts = {}

keys.GetAssignmentRequest = { ["AssignmentId"] = true, nil }

function asserts.AssertGetAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssignmentRequest[k], "GetAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssignmentRequest
--  
-- @param _AssignmentId [EntityId] <p>The ID of the Assignment to be retrieved.</p>
-- Required parameter: AssignmentId
function M.GetAssignmentRequest(_AssignmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssignmentRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
	}
	asserts.AssertGetAssignmentRequest(t)
	return t
end

keys.ListReviewPolicyResultsForHITRequest = { ["RetrieveResults"] = true, ["PolicyLevels"] = true, ["MaxResults"] = true, ["HITId"] = true, ["RetrieveActions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListReviewPolicyResultsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewPolicyResultsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["RetrieveResults"] then asserts.AssertBoolean(struct["RetrieveResults"]) end
	if struct["PolicyLevels"] then asserts.AssertReviewPolicyLevelList(struct["PolicyLevels"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["RetrieveActions"] then asserts.AssertBoolean(struct["RetrieveActions"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReviewPolicyResultsForHITRequest[k], "ListReviewPolicyResultsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewPolicyResultsForHITRequest
--  
-- @param _RetrieveResults [Boolean] <p> Specify if the operation should retrieve a list of the results computed by the Review Policies. </p>
-- @param _PolicyLevels [ReviewPolicyLevelList] <p> The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies. </p>
-- @param _MaxResults [ResultSize] <p>Limit the number of results returned.</p>
-- @param _HITId [EntityId] <p>The unique identifier of the HIT to retrieve review results for.</p>
-- @param _RetrieveActions [Boolean] <p> Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes. </p>
-- @param _NextToken [PaginationToken] <p>Pagination token</p>
-- Required parameter: HITId
function M.ListReviewPolicyResultsForHITRequest(_RetrieveResults, _PolicyLevels, _MaxResults, _HITId, _RetrieveActions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewPolicyResultsForHITRequest")
	local t = { 
		["RetrieveResults"] = _RetrieveResults,
		["PolicyLevels"] = _PolicyLevels,
		["MaxResults"] = _MaxResults,
		["HITId"] = _HITId,
		["RetrieveActions"] = _RetrieveActions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListReviewPolicyResultsForHITRequest(t)
	return t
end

keys.GetFileUploadURLResponse = { ["FileUploadURL"] = true, nil }

function asserts.AssertGetFileUploadURLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileUploadURLResponse to be of type 'table'")
	if struct["FileUploadURL"] then asserts.AssertString(struct["FileUploadURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFileUploadURLResponse[k], "GetFileUploadURLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileUploadURLResponse
--  
-- @param _FileUploadURL [String] <p> A temporary URL for the file that the Worker uploaded for the answer. </p>
function M.GetFileUploadURLResponse(_FileUploadURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFileUploadURLResponse")
	local t = { 
		["FileUploadURL"] = _FileUploadURL,
	}
	asserts.AssertGetFileUploadURLResponse(t)
	return t
end

keys.QualificationRequest = { ["QualificationTypeId"] = true, ["WorkerId"] = true, ["QualificationRequestId"] = true, ["SubmitTime"] = true, ["Test"] = true, ["Answer"] = true, nil }

function asserts.AssertQualificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationRequest to be of type 'table'")
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["QualificationRequestId"] then asserts.AssertString(struct["QualificationRequestId"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["Test"] then asserts.AssertString(struct["Test"]) end
	if struct["Answer"] then asserts.AssertString(struct["Answer"]) end
	for k,_ in pairs(struct) do
		assert(keys.QualificationRequest[k], "QualificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationRequest
-- <p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>
-- @param _QualificationTypeId [EntityId] <p> The ID of the Qualification type the Worker is requesting, as returned by the CreateQualificationType operation. </p>
-- @param _WorkerId [CustomerId] <p> The ID of the Worker requesting the Qualification.</p>
-- @param _QualificationRequestId [String] <p>The ID of the Qualification request, a unique identifier generated when the request was submitted. </p>
-- @param _SubmitTime [Timestamp] <p>The date and time the Qualification request had a status of Submitted. This is either the time the Worker submitted answers for a Qualification test, or the time the Worker requested the Qualification if the Qualification type does not have a test. </p>
-- @param _Test [String] <p> The contents of the Qualification test that was presented to the Worker, if the type has a test and the Worker has submitted answers. This value is identical to the QuestionForm associated with the Qualification type at the time the Worker requests the Qualification.</p>
-- @param _Answer [String] <p> The Worker's answers for the Qualification type's test contained in a QuestionFormAnswers document, if the type has a test and the Worker has submitted answers. If the Worker does not provide any answers, Answer may be empty. </p>
function M.QualificationRequest(_QualificationTypeId, _WorkerId, _QualificationRequestId, _SubmitTime, _Test, _Answer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationRequest")
	local t = { 
		["QualificationTypeId"] = _QualificationTypeId,
		["WorkerId"] = _WorkerId,
		["QualificationRequestId"] = _QualificationRequestId,
		["SubmitTime"] = _SubmitTime,
		["Test"] = _Test,
		["Answer"] = _Answer,
	}
	asserts.AssertQualificationRequest(t)
	return t
end

keys.CreateHITWithHITTypeRequest = { ["RequesterAnnotation"] = true, ["MaxAssignments"] = true, ["Question"] = true, ["UniqueRequestToken"] = true, ["HITLayoutParameters"] = true, ["HITTypeId"] = true, ["AssignmentReviewPolicy"] = true, ["HITReviewPolicy"] = true, ["HITLayoutId"] = true, ["LifetimeInSeconds"] = true, nil }

function asserts.AssertCreateHITWithHITTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITWithHITTypeRequest to be of type 'table'")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	assert(struct["LifetimeInSeconds"], "Expected key LifetimeInSeconds to exist in table")
	if struct["RequesterAnnotation"] then asserts.AssertString(struct["RequesterAnnotation"]) end
	if struct["MaxAssignments"] then asserts.AssertInteger(struct["MaxAssignments"]) end
	if struct["Question"] then asserts.AssertString(struct["Question"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	if struct["HITLayoutParameters"] then asserts.AssertHITLayoutParameterList(struct["HITLayoutParameters"]) end
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	if struct["AssignmentReviewPolicy"] then asserts.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["HITReviewPolicy"] then asserts.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["HITLayoutId"] then asserts.AssertEntityId(struct["HITLayoutId"]) end
	if struct["LifetimeInSeconds"] then asserts.AssertLong(struct["LifetimeInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITWithHITTypeRequest[k], "CreateHITWithHITTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITWithHITTypeRequest
--  
-- @param _RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- @param _MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param _Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- @param _UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- @param _HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- @param _HITTypeId [EntityId] <p>The HIT type ID you want to create this HIT with.</p>
-- @param _AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param _HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param _HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- @param _LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- Required parameter: HITTypeId
-- Required parameter: LifetimeInSeconds
function M.CreateHITWithHITTypeRequest(_RequesterAnnotation, _MaxAssignments, _Question, _UniqueRequestToken, _HITLayoutParameters, _HITTypeId, _AssignmentReviewPolicy, _HITReviewPolicy, _HITLayoutId, _LifetimeInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITWithHITTypeRequest")
	local t = { 
		["RequesterAnnotation"] = _RequesterAnnotation,
		["MaxAssignments"] = _MaxAssignments,
		["Question"] = _Question,
		["UniqueRequestToken"] = _UniqueRequestToken,
		["HITLayoutParameters"] = _HITLayoutParameters,
		["HITTypeId"] = _HITTypeId,
		["AssignmentReviewPolicy"] = _AssignmentReviewPolicy,
		["HITReviewPolicy"] = _HITReviewPolicy,
		["HITLayoutId"] = _HITLayoutId,
		["LifetimeInSeconds"] = _LifetimeInSeconds,
	}
	asserts.AssertCreateHITWithHITTypeRequest(t)
	return t
end

keys.CreateQualificationTypeRequest = { ["AutoGranted"] = true, ["Name"] = true, ["TestDurationInSeconds"] = true, ["QualificationTypeStatus"] = true, ["Test"] = true, ["AnswerKey"] = true, ["AutoGrantedValue"] = true, ["Keywords"] = true, ["RetryDelayInSeconds"] = true, ["Description"] = true, nil }

function asserts.AssertCreateQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQualificationTypeRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["QualificationTypeStatus"], "Expected key QualificationTypeStatus to exist in table")
	if struct["AutoGranted"] then asserts.AssertBoolean(struct["AutoGranted"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["TestDurationInSeconds"] then asserts.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then asserts.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["Test"] then asserts.AssertString(struct["Test"]) end
	if struct["AnswerKey"] then asserts.AssertString(struct["AnswerKey"]) end
	if struct["AutoGrantedValue"] then asserts.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["Keywords"] then asserts.AssertString(struct["Keywords"]) end
	if struct["RetryDelayInSeconds"] then asserts.AssertLong(struct["RetryDelayInSeconds"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQualificationTypeRequest[k], "CreateQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQualificationTypeRequest
--  
-- @param _AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- @param _Name [String] <p> The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.</p>
-- @param _TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- @param _QualificationTypeStatus [QualificationTypeStatus] <p>The initial status of the Qualification type.</p> <p>Constraints: Valid values are: Active | Inactive</p>
-- @param _Test [String] <p> The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified. </p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- @param _AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p> <p>Constraints: Must not be longer than 65535 bytes.</p> <p>Constraints: None. If not specified, you must process Qualification requests manually.</p>
-- @param _AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- @param _Keywords [String] <p>One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.</p>
-- @param _RetryDelayInSeconds [Long] <p>The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.</p> <p>Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.</p>
-- @param _Description [String] <p>A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.</p>
-- Required parameter: Name
-- Required parameter: Description
-- Required parameter: QualificationTypeStatus
function M.CreateQualificationTypeRequest(_AutoGranted, _Name, _TestDurationInSeconds, _QualificationTypeStatus, _Test, _AnswerKey, _AutoGrantedValue, _Keywords, _RetryDelayInSeconds, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQualificationTypeRequest")
	local t = { 
		["AutoGranted"] = _AutoGranted,
		["Name"] = _Name,
		["TestDurationInSeconds"] = _TestDurationInSeconds,
		["QualificationTypeStatus"] = _QualificationTypeStatus,
		["Test"] = _Test,
		["AnswerKey"] = _AnswerKey,
		["AutoGrantedValue"] = _AutoGrantedValue,
		["Keywords"] = _Keywords,
		["RetryDelayInSeconds"] = _RetryDelayInSeconds,
		["Description"] = _Description,
	}
	asserts.AssertCreateQualificationTypeRequest(t)
	return t
end

keys.ListWorkersWithQualificationTypeResponse = { ["NumResults"] = true, ["NextToken"] = true, ["Qualifications"] = true, nil }

function asserts.AssertListWorkersWithQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkersWithQualificationTypeResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Qualifications"] then asserts.AssertQualificationList(struct["Qualifications"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWorkersWithQualificationTypeResponse[k], "ListWorkersWithQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkersWithQualificationTypeResponse
--  
-- @param _NumResults [Integer] <p> The number of Qualifications on this page in the filtered results list, equivalent to the number of Qualifications being returned by this call.</p>
-- @param _NextToken [PaginationToken] 
-- @param _Qualifications [QualificationList] <p> The list of Qualification elements returned by this call. </p>
function M.ListWorkersWithQualificationTypeResponse(_NumResults, _NextToken, _Qualifications, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkersWithQualificationTypeResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["NextToken"] = _NextToken,
		["Qualifications"] = _Qualifications,
	}
	asserts.AssertListWorkersWithQualificationTypeResponse(t)
	return t
end

keys.NotifyWorkersFailureStatus = { ["NotifyWorkersFailureMessage"] = true, ["WorkerId"] = true, ["NotifyWorkersFailureCode"] = true, nil }

function asserts.AssertNotifyWorkersFailureStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersFailureStatus to be of type 'table'")
	if struct["NotifyWorkersFailureMessage"] then asserts.AssertString(struct["NotifyWorkersFailureMessage"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["NotifyWorkersFailureCode"] then asserts.AssertNotifyWorkersFailureCode(struct["NotifyWorkersFailureCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyWorkersFailureStatus[k], "NotifyWorkersFailureStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersFailureStatus
-- <p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>
-- @param _NotifyWorkersFailureMessage [String] <p> A message detailing the reason the Worker could not be notified. </p>
-- @param _WorkerId [CustomerId] <p> The ID of the Worker.</p>
-- @param _NotifyWorkersFailureCode [NotifyWorkersFailureCode] <p> Encoded value for the failure type. </p>
function M.NotifyWorkersFailureStatus(_NotifyWorkersFailureMessage, _WorkerId, _NotifyWorkersFailureCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersFailureStatus")
	local t = { 
		["NotifyWorkersFailureMessage"] = _NotifyWorkersFailureMessage,
		["WorkerId"] = _WorkerId,
		["NotifyWorkersFailureCode"] = _NotifyWorkersFailureCode,
	}
	asserts.AssertNotifyWorkersFailureStatus(t)
	return t
end

keys.AcceptQualificationRequestRequest = { ["IntegerValue"] = true, ["QualificationRequestId"] = true, nil }

function asserts.AssertAcceptQualificationRequestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptQualificationRequestRequest to be of type 'table'")
	assert(struct["QualificationRequestId"], "Expected key QualificationRequestId to exist in table")
	if struct["IntegerValue"] then asserts.AssertInteger(struct["IntegerValue"]) end
	if struct["QualificationRequestId"] then asserts.AssertString(struct["QualificationRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptQualificationRequestRequest[k], "AcceptQualificationRequestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptQualificationRequestRequest
--  
-- @param _IntegerValue [Integer] <p> The value of the Qualification. You can omit this value if you are using the presence or absence of the Qualification as the basis for a HIT requirement. </p>
-- @param _QualificationRequestId [String] <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
-- Required parameter: QualificationRequestId
function M.AcceptQualificationRequestRequest(_IntegerValue, _QualificationRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptQualificationRequestRequest")
	local t = { 
		["IntegerValue"] = _IntegerValue,
		["QualificationRequestId"] = _QualificationRequestId,
	}
	asserts.AssertAcceptQualificationRequestRequest(t)
	return t
end

keys.ListHITsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListHITsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHITsRequest[k], "ListHITsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsRequest
--  
-- @param _NextToken [PaginationToken] <p>Pagination token</p>
-- @param _MaxResults [ResultSize] 
function M.ListHITsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListHITsRequest(t)
	return t
end

keys.ListReviewableHITsRequest = { ["Status"] = true, ["HITTypeId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListReviewableHITsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewableHITsRequest to be of type 'table'")
	if struct["Status"] then asserts.AssertReviewableHITStatus(struct["Status"]) end
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReviewableHITsRequest[k], "ListReviewableHITsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewableHITsRequest
--  
-- @param _Status [ReviewableHITStatus] <p> Can be either <code>Reviewable</code> or <code>Reviewing</code>. Reviewable is the default value. </p>
-- @param _HITTypeId [EntityId] <p> The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered </p>
-- @param _NextToken [PaginationToken] <p>Pagination Token</p>
-- @param _MaxResults [ResultSize] <p> Limit the number of results returned. </p>
function M.ListReviewableHITsRequest(_Status, _HITTypeId, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewableHITsRequest")
	local t = { 
		["Status"] = _Status,
		["HITTypeId"] = _HITTypeId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListReviewableHITsRequest(t)
	return t
end

keys.Assignment = { ["ApprovalTime"] = true, ["AutoApprovalTime"] = true, ["AssignmentId"] = true, ["WorkerId"] = true, ["RequesterFeedback"] = true, ["AcceptTime"] = true, ["Deadline"] = true, ["HITId"] = true, ["Answer"] = true, ["AssignmentStatus"] = true, ["SubmitTime"] = true, ["RejectionTime"] = true, nil }

function asserts.AssertAssignment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Assignment to be of type 'table'")
	if struct["ApprovalTime"] then asserts.AssertTimestamp(struct["ApprovalTime"]) end
	if struct["AutoApprovalTime"] then asserts.AssertTimestamp(struct["AutoApprovalTime"]) end
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["RequesterFeedback"] then asserts.AssertString(struct["RequesterFeedback"]) end
	if struct["AcceptTime"] then asserts.AssertTimestamp(struct["AcceptTime"]) end
	if struct["Deadline"] then asserts.AssertTimestamp(struct["Deadline"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["Answer"] then asserts.AssertString(struct["Answer"]) end
	if struct["AssignmentStatus"] then asserts.AssertAssignmentStatus(struct["AssignmentStatus"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["RejectionTime"] then asserts.AssertTimestamp(struct["RejectionTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Assignment[k], "Assignment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Assignment
-- <p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>
-- @param _ApprovalTime [Timestamp] <p> If the Worker has submitted results and the Requester has approved the results, ApprovalTime is the date and time the Requester approved the results. This value is omitted from the assignment if the Requester has not yet approved the results.</p>
-- @param _AutoApprovalTime [Timestamp] <p> If results have been submitted, AutoApprovalTime is the date and time the results of the assignment results are considered Approved automatically if they have not already been explicitly approved or rejected by the Requester. This value is derived from the auto-approval delay specified by the Requester in the HIT. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- @param _AssignmentId [EntityId] <p> A unique identifier for the assignment.</p>
-- @param _WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- @param _RequesterFeedback [String] <p> The feedback string included with the call to the ApproveAssignment operation or the RejectAssignment operation, if the Requester approved or rejected the assignment and specified feedback.</p>
-- @param _AcceptTime [Timestamp] <p> The date and time the Worker accepted the assignment.</p>
-- @param _Deadline [Timestamp] <p> The date and time of the deadline for the assignment. This value is derived from the deadline specification for the HIT and the date and time the Worker accepted the HIT.</p>
-- @param _HITId [EntityId] <p> The ID of the HIT.</p>
-- @param _Answer [String] <p> The Worker's answers submitted for the HIT contained in a QuestionFormAnswers document, if the Worker provides an answer. If the Worker does not provide any answers, Answer may contain a QuestionFormAnswers document, or Answer may be empty.</p>
-- @param _AssignmentStatus [AssignmentStatus] <p> The status of the assignment.</p>
-- @param _SubmitTime [Timestamp] <p> If the Worker has submitted results, SubmitTime is the date and time the assignment was submitted. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- @param _RejectionTime [Timestamp] <p> If the Worker has submitted results and the Requester has rejected the results, RejectionTime is the date and time the Requester rejected the results.</p>
function M.Assignment(_ApprovalTime, _AutoApprovalTime, _AssignmentId, _WorkerId, _RequesterFeedback, _AcceptTime, _Deadline, _HITId, _Answer, _AssignmentStatus, _SubmitTime, _RejectionTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Assignment")
	local t = { 
		["ApprovalTime"] = _ApprovalTime,
		["AutoApprovalTime"] = _AutoApprovalTime,
		["AssignmentId"] = _AssignmentId,
		["WorkerId"] = _WorkerId,
		["RequesterFeedback"] = _RequesterFeedback,
		["AcceptTime"] = _AcceptTime,
		["Deadline"] = _Deadline,
		["HITId"] = _HITId,
		["Answer"] = _Answer,
		["AssignmentStatus"] = _AssignmentStatus,
		["SubmitTime"] = _SubmitTime,
		["RejectionTime"] = _RejectionTime,
	}
	asserts.AssertAssignment(t)
	return t
end

keys.GetHITResponse = { ["HIT"] = true, nil }

function asserts.AssertGetHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHITResponse to be of type 'table'")
	if struct["HIT"] then asserts.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHITResponse[k], "GetHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHITResponse
--  
-- @param _HIT [HIT] <p> Contains the requested HIT data.</p>
function M.GetHITResponse(_HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHITResponse")
	local t = { 
		["HIT"] = _HIT,
	}
	asserts.AssertGetHITResponse(t)
	return t
end

keys.AssociateQualificationWithWorkerResponse = { nil }

function asserts.AssertAssociateQualificationWithWorkerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateQualificationWithWorkerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateQualificationWithWorkerResponse[k], "AssociateQualificationWithWorkerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateQualificationWithWorkerResponse
--  
function M.AssociateQualificationWithWorkerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateQualificationWithWorkerResponse")
	local t = { 
	}
	asserts.AssertAssociateQualificationWithWorkerResponse(t)
	return t
end

keys.QualificationRequirement = { ["RequiredToPreview"] = true, ["LocaleValues"] = true, ["IntegerValues"] = true, ["Comparator"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertQualificationRequirement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationRequirement to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["Comparator"], "Expected key Comparator to exist in table")
	if struct["RequiredToPreview"] then asserts.AssertBoolean(struct["RequiredToPreview"]) end
	if struct["LocaleValues"] then asserts.AssertLocaleList(struct["LocaleValues"]) end
	if struct["IntegerValues"] then asserts.AssertIntegerList(struct["IntegerValues"]) end
	if struct["Comparator"] then asserts.AssertComparator(struct["Comparator"]) end
	if struct["QualificationTypeId"] then asserts.AssertString(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.QualificationRequirement[k], "QualificationRequirement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationRequirement
-- <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT. </p>
-- @param _RequiredToPreview [Boolean] <p> If true, the question data for the HIT will not be shown when a Worker whose Qualifications do not meet this requirement tries to preview the HIT. That is, a Worker's Qualifications must meet all of the requirements for which RequiredToPreview is true in order to preview the HIT. If a Worker meets all of the requirements where RequiredToPreview is true (or if there are no such requirements), but does not meet all of the requirements for the HIT, the Worker will be allowed to preview the HIT's question data, but will not be allowed to accept and complete the HIT. The default is false. </p>
-- @param _LocaleValues [LocaleList] <p> The locale value to compare against the Qualification's value. The local value must be a valid ISO 3166 country code or supports ISO 3166-2 subdivisions. LocaleValue can only be used with a Worker_Locale QualificationType ID. LocaleValue can only be used with the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use a single LocaleValue element when using the EqualTo or NotEqualTo comparators. When performing a set comparison by using the In or the NotIn comparator, you can use up to 30 LocaleValue elements in a QualificationRequirement data structure. </p>
-- @param _IntegerValues [IntegerList] <p> The integer value to compare against the Qualification's value. IntegerValue must not be present if Comparator is Exists or DoesNotExist. IntegerValue can only be used if the Qualification type has an integer value; it cannot be used with the Worker_Locale QualificationType ID. When performing a set comparison by using the In or the NotIn comparator, you can use up to 15 IntegerValue elements in a QualificationRequirement data structure. </p>
-- @param _Comparator [Comparator] <p>The kind of comparison to make against a Qualification's value. You can compare a Qualification's value to an IntegerValue to see if it is LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You can compare it to a LocaleValue to see if it is EqualTo, or NotEqualTo the LocaleValue. You can check to see if the value is In or NotIn a set of IntegerValue or LocaleValue values. Lastly, a Qualification requirement can also test if a Qualification Exists or DoesNotExist in the user's profile, regardless of its value. </p>
-- @param _QualificationTypeId [String] <p> The ID of the Qualification type for the requirement.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: Comparator
function M.QualificationRequirement(_RequiredToPreview, _LocaleValues, _IntegerValues, _Comparator, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationRequirement")
	local t = { 
		["RequiredToPreview"] = _RequiredToPreview,
		["LocaleValues"] = _LocaleValues,
		["IntegerValues"] = _IntegerValues,
		["Comparator"] = _Comparator,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertQualificationRequirement(t)
	return t
end

keys.UpdateHITTypeOfHITResponse = { nil }

function asserts.AssertUpdateHITTypeOfHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITTypeOfHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateHITTypeOfHITResponse[k], "UpdateHITTypeOfHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITTypeOfHITResponse
--  
function M.UpdateHITTypeOfHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITTypeOfHITResponse")
	local t = { 
	}
	asserts.AssertUpdateHITTypeOfHITResponse(t)
	return t
end

keys.CreateWorkerBlockRequest = { ["WorkerId"] = true, ["Reason"] = true, nil }

function asserts.AssertCreateWorkerBlockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkerBlockRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["Reason"], "Expected key Reason to exist in table")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWorkerBlockRequest[k], "CreateWorkerBlockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkerBlockRequest
--  
-- @param _WorkerId [CustomerId] <p>The ID of the Worker to block.</p>
-- @param _Reason [String] <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
-- Required parameter: WorkerId
-- Required parameter: Reason
function M.CreateWorkerBlockRequest(_WorkerId, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkerBlockRequest")
	local t = { 
		["WorkerId"] = _WorkerId,
		["Reason"] = _Reason,
	}
	asserts.AssertCreateWorkerBlockRequest(t)
	return t
end

keys.RequestError = { ["Message"] = true, ["TurkErrorCode"] = true, nil }

function asserts.AssertRequestError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestError to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["TurkErrorCode"] then asserts.AssertTurkErrorCode(struct["TurkErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestError[k], "RequestError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestError
-- <p>Your request is invalid.</p>
-- @param _Message [ExceptionMessage] 
-- @param _TurkErrorCode [TurkErrorCode] 
function M.RequestError(_Message, _TurkErrorCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestError")
	local t = { 
		["Message"] = _Message,
		["TurkErrorCode"] = _TurkErrorCode,
	}
	asserts.AssertRequestError(t)
	return t
end

keys.ApproveAssignmentResponse = { nil }

function asserts.AssertApproveAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveAssignmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApproveAssignmentResponse[k], "ApproveAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveAssignmentResponse
--  
function M.ApproveAssignmentResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApproveAssignmentResponse")
	local t = { 
	}
	asserts.AssertApproveAssignmentResponse(t)
	return t
end

keys.GetQualificationTypeRequest = { ["QualificationTypeId"] = true, nil }

function asserts.AssertGetQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQualificationTypeRequest[k], "GetQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationTypeRequest
--  
-- @param _QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required parameter: QualificationTypeId
function M.GetQualificationTypeRequest(_QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationTypeRequest")
	local t = { 
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertGetQualificationTypeRequest(t)
	return t
end

keys.ListHITsForQualificationTypeResponse = { ["NumResults"] = true, ["HITs"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHITsForQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsForQualificationTypeResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then asserts.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHITsForQualificationTypeResponse[k], "ListHITsForQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsForQualificationTypeResponse
--  
-- @param _NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- @param _HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param _NextToken [PaginationToken] 
function M.ListHITsForQualificationTypeResponse(_NumResults, _HITs, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsForQualificationTypeResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["HITs"] = _HITs,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHITsForQualificationTypeResponse(t)
	return t
end

keys.ListQualificationRequestsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertListQualificationRequestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationRequestsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQualificationRequestsRequest[k], "ListQualificationRequestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationRequestsRequest
--  
-- @param _NextToken [PaginationToken] 
-- @param _MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
function M.ListQualificationRequestsRequest(_NextToken, _MaxResults, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationRequestsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertListQualificationRequestsRequest(t)
	return t
end

keys.ListAssignmentsForHITRequest = { ["AssignmentStatuses"] = true, ["NextToken"] = true, ["HITId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAssignmentsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssignmentsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["AssignmentStatuses"] then asserts.AssertAssignmentStatusList(struct["AssignmentStatuses"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssignmentsForHITRequest[k], "ListAssignmentsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssignmentsForHITRequest
--  
-- @param _AssignmentStatuses [AssignmentStatusList] <p>The status of the assignments to return: Submitted | Approved | Rejected</p>
-- @param _NextToken [PaginationToken] <p>Pagination token</p>
-- @param _HITId [EntityId] <p>The ID of the HIT.</p>
-- @param _MaxResults [ResultSize] 
-- Required parameter: HITId
function M.ListAssignmentsForHITRequest(_AssignmentStatuses, _NextToken, _HITId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssignmentsForHITRequest")
	local t = { 
		["AssignmentStatuses"] = _AssignmentStatuses,
		["NextToken"] = _NextToken,
		["HITId"] = _HITId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListAssignmentsForHITRequest(t)
	return t
end

keys.SendTestEventNotificationRequest = { ["Notification"] = true, ["TestEventType"] = true, nil }

function asserts.AssertSendTestEventNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTestEventNotificationRequest to be of type 'table'")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["TestEventType"], "Expected key TestEventType to exist in table")
	if struct["Notification"] then asserts.AssertNotificationSpecification(struct["Notification"]) end
	if struct["TestEventType"] then asserts.AssertEventType(struct["TestEventType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTestEventNotificationRequest[k], "SendTestEventNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTestEventNotificationRequest
--  
-- @param _Notification [NotificationSpecification] <p> The notification specification to test. This value is identical to the value you would provide to the UpdateNotificationSettings operation when you establish the notification specification for a HIT type. </p>
-- @param _TestEventType [EventType] <p> The event to simulate to test the notification specification. This event is included in the test message even if the notification specification does not include the event type. The notification specification does not filter out the test event. </p>
-- Required parameter: Notification
-- Required parameter: TestEventType
function M.SendTestEventNotificationRequest(_Notification, _TestEventType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTestEventNotificationRequest")
	local t = { 
		["Notification"] = _Notification,
		["TestEventType"] = _TestEventType,
	}
	asserts.AssertSendTestEventNotificationRequest(t)
	return t
end

keys.UpdateHITReviewStatusResponse = { nil }

function asserts.AssertUpdateHITReviewStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITReviewStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateHITReviewStatusResponse[k], "UpdateHITReviewStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITReviewStatusResponse
--  
function M.UpdateHITReviewStatusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITReviewStatusResponse")
	local t = { 
	}
	asserts.AssertUpdateHITReviewStatusResponse(t)
	return t
end

keys.ListWorkerBlocksRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListWorkerBlocksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkerBlocksRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWorkerBlocksRequest[k], "ListWorkerBlocksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkerBlocksRequest
--  
-- @param _NextToken [PaginationToken] <p>Pagination token</p>
-- @param _MaxResults [ResultSize] 
function M.ListWorkerBlocksRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkerBlocksRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListWorkerBlocksRequest(t)
	return t
end

keys.ParameterMapEntry = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertParameterMapEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterMapEntry to be of type 'table'")
	if struct["Values"] then asserts.AssertStringList(struct["Values"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterMapEntry[k], "ParameterMapEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterMapEntry
-- <p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
-- @param _Values [StringList] <p> The list of answers to the question specified in the MapEntry Key element. The Worker must match all values in order for the answer to be scored correctly. </p>
-- @param _Key [String] <p> The QuestionID from the HIT that is used to identify which question requires Mechanical Turk to score as part of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
function M.ParameterMapEntry(_Values, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterMapEntry")
	local t = { 
		["Values"] = _Values,
		["Key"] = _Key,
	}
	asserts.AssertParameterMapEntry(t)
	return t
end

keys.ListReviewableHITsResponse = { ["NumResults"] = true, ["HITs"] = true, ["NextToken"] = true, nil }

function asserts.AssertListReviewableHITsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewableHITsResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then asserts.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReviewableHITsResponse[k], "ListReviewableHITsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewableHITsResponse
--  
-- @param _NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- @param _HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param _NextToken [PaginationToken] 
function M.ListReviewableHITsResponse(_NumResults, _HITs, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewableHITsResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["HITs"] = _HITs,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListReviewableHITsResponse(t)
	return t
end

keys.ListQualificationTypesResponse = { ["NumResults"] = true, ["QualificationTypes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListQualificationTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationTypesResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["QualificationTypes"] then asserts.AssertQualificationTypeList(struct["QualificationTypes"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQualificationTypesResponse[k], "ListQualificationTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationTypesResponse
--  
-- @param _NumResults [Integer] <p> The number of Qualification types on this page in the filtered results list, equivalent to the number of types this operation returns. </p>
-- @param _QualificationTypes [QualificationTypeList] <p> The list of QualificationType elements returned by the query. </p>
-- @param _NextToken [PaginationToken] 
function M.ListQualificationTypesResponse(_NumResults, _QualificationTypes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationTypesResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["QualificationTypes"] = _QualificationTypes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListQualificationTypesResponse(t)
	return t
end

keys.ApproveAssignmentRequest = { ["AssignmentId"] = true, ["RequesterFeedback"] = true, ["OverrideRejection"] = true, nil }

function asserts.AssertApproveAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["RequesterFeedback"] then asserts.AssertString(struct["RequesterFeedback"]) end
	if struct["OverrideRejection"] then asserts.AssertBoolean(struct["OverrideRejection"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApproveAssignmentRequest[k], "ApproveAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveAssignmentRequest
--  
-- @param _AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- @param _RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- @param _OverrideRejection [Boolean] <p> A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>. </p>
-- Required parameter: AssignmentId
function M.ApproveAssignmentRequest(_AssignmentId, _RequesterFeedback, _OverrideRejection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApproveAssignmentRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["RequesterFeedback"] = _RequesterFeedback,
		["OverrideRejection"] = _OverrideRejection,
	}
	asserts.AssertApproveAssignmentRequest(t)
	return t
end

keys.GetQualificationScoreRequest = { ["WorkerId"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertGetQualificationScoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationScoreRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQualificationScoreRequest[k], "GetQualificationScoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationScoreRequest
--  
-- @param _WorkerId [CustomerId] <p>The ID of the Worker whose Qualification is being updated.</p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: WorkerId
function M.GetQualificationScoreRequest(_WorkerId, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationScoreRequest")
	local t = { 
		["WorkerId"] = _WorkerId,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertGetQualificationScoreRequest(t)
	return t
end

keys.CreateHITTypeResponse = { ["HITTypeId"] = true, nil }

function asserts.AssertCreateHITTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITTypeResponse to be of type 'table'")
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITTypeResponse[k], "CreateHITTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITTypeResponse
--  
-- @param _HITTypeId [EntityId] <p> The ID of the newly registered HIT type.</p>
function M.CreateHITTypeResponse(_HITTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITTypeResponse")
	local t = { 
		["HITTypeId"] = _HITTypeId,
	}
	asserts.AssertCreateHITTypeResponse(t)
	return t
end

keys.CreateHITRequest = { ["HITLayoutParameters"] = true, ["RequesterAnnotation"] = true, ["AutoApprovalDelayInSeconds"] = true, ["MaxAssignments"] = true, ["Title"] = true, ["Question"] = true, ["UniqueRequestToken"] = true, ["AssignmentDurationInSeconds"] = true, ["AssignmentReviewPolicy"] = true, ["QualificationRequirements"] = true, ["HITReviewPolicy"] = true, ["Keywords"] = true, ["Reward"] = true, ["HITLayoutId"] = true, ["LifetimeInSeconds"] = true, ["Description"] = true, nil }

function asserts.AssertCreateHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITRequest to be of type 'table'")
	assert(struct["LifetimeInSeconds"], "Expected key LifetimeInSeconds to exist in table")
	assert(struct["AssignmentDurationInSeconds"], "Expected key AssignmentDurationInSeconds to exist in table")
	assert(struct["Reward"], "Expected key Reward to exist in table")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["HITLayoutParameters"] then asserts.AssertHITLayoutParameterList(struct["HITLayoutParameters"]) end
	if struct["RequesterAnnotation"] then asserts.AssertString(struct["RequesterAnnotation"]) end
	if struct["AutoApprovalDelayInSeconds"] then asserts.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	if struct["MaxAssignments"] then asserts.AssertInteger(struct["MaxAssignments"]) end
	if struct["Title"] then asserts.AssertString(struct["Title"]) end
	if struct["Question"] then asserts.AssertString(struct["Question"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	if struct["AssignmentDurationInSeconds"] then asserts.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["AssignmentReviewPolicy"] then asserts.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["QualificationRequirements"] then asserts.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["HITReviewPolicy"] then asserts.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["Keywords"] then asserts.AssertString(struct["Keywords"]) end
	if struct["Reward"] then asserts.AssertNumericValue(struct["Reward"]) end
	if struct["HITLayoutId"] then asserts.AssertEntityId(struct["HITLayoutId"]) end
	if struct["LifetimeInSeconds"] then asserts.AssertLong(struct["LifetimeInSeconds"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITRequest[k], "CreateHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITRequest
--  
-- @param _HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- @param _RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- @param _AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- @param _MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param _Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- @param _Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- @param _UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- @param _AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- @param _AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param _QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet before the Worker is allowed to accept and complete the HIT. </p>
-- @param _HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param _Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- @param _Reward [NumericValue] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- @param _HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- @param _LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- @param _Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- Required parameter: LifetimeInSeconds
-- Required parameter: AssignmentDurationInSeconds
-- Required parameter: Reward
-- Required parameter: Title
-- Required parameter: Description
function M.CreateHITRequest(_HITLayoutParameters, _RequesterAnnotation, _AutoApprovalDelayInSeconds, _MaxAssignments, _Title, _Question, _UniqueRequestToken, _AssignmentDurationInSeconds, _AssignmentReviewPolicy, _QualificationRequirements, _HITReviewPolicy, _Keywords, _Reward, _HITLayoutId, _LifetimeInSeconds, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITRequest")
	local t = { 
		["HITLayoutParameters"] = _HITLayoutParameters,
		["RequesterAnnotation"] = _RequesterAnnotation,
		["AutoApprovalDelayInSeconds"] = _AutoApprovalDelayInSeconds,
		["MaxAssignments"] = _MaxAssignments,
		["Title"] = _Title,
		["Question"] = _Question,
		["UniqueRequestToken"] = _UniqueRequestToken,
		["AssignmentDurationInSeconds"] = _AssignmentDurationInSeconds,
		["AssignmentReviewPolicy"] = _AssignmentReviewPolicy,
		["QualificationRequirements"] = _QualificationRequirements,
		["HITReviewPolicy"] = _HITReviewPolicy,
		["Keywords"] = _Keywords,
		["Reward"] = _Reward,
		["HITLayoutId"] = _HITLayoutId,
		["LifetimeInSeconds"] = _LifetimeInSeconds,
		["Description"] = _Description,
	}
	asserts.AssertCreateHITRequest(t)
	return t
end

keys.ReviewReport = { ["ReviewActions"] = true, ["ReviewResults"] = true, nil }

function asserts.AssertReviewReport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewReport to be of type 'table'")
	if struct["ReviewActions"] then asserts.AssertReviewActionDetailList(struct["ReviewActions"]) end
	if struct["ReviewResults"] then asserts.AssertReviewResultDetailList(struct["ReviewResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReviewReport[k], "ReviewReport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewReport
-- <p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-- @param _ReviewActions [ReviewActionDetailList] <p> A list of ReviewAction objects for each action specified in the Review Policy. </p>
-- @param _ReviewResults [ReviewResultDetailList] <p> A list of ReviewResults objects for each action specified in the Review Policy. </p>
function M.ReviewReport(_ReviewActions, _ReviewResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewReport")
	local t = { 
		["ReviewActions"] = _ReviewActions,
		["ReviewResults"] = _ReviewResults,
	}
	asserts.AssertReviewReport(t)
	return t
end

keys.ReviewActionDetail = { ["Status"] = true, ["ActionName"] = true, ["TargetType"] = true, ["TargetId"] = true, ["ErrorCode"] = true, ["ActionId"] = true, ["CompleteTime"] = true, ["Result"] = true, nil }

function asserts.AssertReviewActionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewActionDetail to be of type 'table'")
	if struct["Status"] then asserts.AssertReviewActionStatus(struct["Status"]) end
	if struct["ActionName"] then asserts.AssertString(struct["ActionName"]) end
	if struct["TargetType"] then asserts.AssertString(struct["TargetType"]) end
	if struct["TargetId"] then asserts.AssertEntityId(struct["TargetId"]) end
	if struct["ErrorCode"] then asserts.AssertString(struct["ErrorCode"]) end
	if struct["ActionId"] then asserts.AssertEntityId(struct["ActionId"]) end
	if struct["CompleteTime"] then asserts.AssertTimestamp(struct["CompleteTime"]) end
	if struct["Result"] then asserts.AssertString(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReviewActionDetail[k], "ReviewActionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewActionDetail
-- <p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>
-- @param _Status [ReviewActionStatus] <p> The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or CANCELLED. </p>
-- @param _ActionName [String] <p> The nature of the action itself. The Review Policy is responsible for examining the HIT and Assignments, emitting results, and deciding which other actions will be necessary. </p>
-- @param _TargetType [String] <p> The type of object in TargetId.</p>
-- @param _TargetId [EntityId] <p> The specific HITId or AssignmentID targeted by the action.</p>
-- @param _ErrorCode [String] <p> Present only when the Results have a FAILED Status.</p>
-- @param _ActionId [EntityId] <p>The unique identifier for the action.</p>
-- @param _CompleteTime [Timestamp] <p> The date when the action was completed.</p>
-- @param _Result [String] <p> A description of the outcome of the review.</p>
function M.ReviewActionDetail(_Status, _ActionName, _TargetType, _TargetId, _ErrorCode, _ActionId, _CompleteTime, _Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewActionDetail")
	local t = { 
		["Status"] = _Status,
		["ActionName"] = _ActionName,
		["TargetType"] = _TargetType,
		["TargetId"] = _TargetId,
		["ErrorCode"] = _ErrorCode,
		["ActionId"] = _ActionId,
		["CompleteTime"] = _CompleteTime,
		["Result"] = _Result,
	}
	asserts.AssertReviewActionDetail(t)
	return t
end

keys.WorkerBlock = { ["WorkerId"] = true, ["Reason"] = true, nil }

function asserts.AssertWorkerBlock(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkerBlock to be of type 'table'")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkerBlock[k], "WorkerBlock contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkerBlock
-- <p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>
-- @param _WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- @param _Reason [String] <p> A message explaining the reason the Worker was blocked. </p>
function M.WorkerBlock(_WorkerId, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkerBlock")
	local t = { 
		["WorkerId"] = _WorkerId,
		["Reason"] = _Reason,
	}
	asserts.AssertWorkerBlock(t)
	return t
end

keys.ListWorkersWithQualificationTypeRequest = { ["Status"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertListWorkersWithQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkersWithQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["Status"] then asserts.AssertQualificationStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWorkersWithQualificationTypeRequest[k], "ListWorkersWithQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkersWithQualificationTypeRequest
--  
-- @param _Status [QualificationStatus] <p> The status of the Qualifications to return. Can be <code>Granted | Revoked</code>. </p>
-- @param _NextToken [PaginationToken] <p>Pagination Token</p>
-- @param _MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualifications to return.</p>
-- Required parameter: QualificationTypeId
function M.ListWorkersWithQualificationTypeRequest(_Status, _NextToken, _MaxResults, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkersWithQualificationTypeRequest")
	local t = { 
		["Status"] = _Status,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertListWorkersWithQualificationTypeRequest(t)
	return t
end

keys.ListWorkerBlocksResponse = { ["NumResults"] = true, ["NextToken"] = true, ["WorkerBlocks"] = true, nil }

function asserts.AssertListWorkerBlocksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkerBlocksResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["WorkerBlocks"] then asserts.AssertWorkerBlockList(struct["WorkerBlocks"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWorkerBlocksResponse[k], "ListWorkerBlocksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkerBlocksResponse
--  
-- @param _NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- @param _NextToken [PaginationToken] 
-- @param _WorkerBlocks [WorkerBlockList] <p> The list of WorkerBlocks, containing the collection of Worker IDs and reasons for blocking.</p>
function M.ListWorkerBlocksResponse(_NumResults, _NextToken, _WorkerBlocks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkerBlocksResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["NextToken"] = _NextToken,
		["WorkerBlocks"] = _WorkerBlocks,
	}
	asserts.AssertListWorkerBlocksResponse(t)
	return t
end

keys.DeleteWorkerBlockRequest = { ["WorkerId"] = true, ["Reason"] = true, nil }

function asserts.AssertDeleteWorkerBlockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWorkerBlockRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteWorkerBlockRequest[k], "DeleteWorkerBlockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWorkerBlockRequest
--  
-- @param _WorkerId [CustomerId] <p>The ID of the Worker to unblock.</p>
-- @param _Reason [String] <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
-- Required parameter: WorkerId
function M.DeleteWorkerBlockRequest(_WorkerId, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWorkerBlockRequest")
	local t = { 
		["WorkerId"] = _WorkerId,
		["Reason"] = _Reason,
	}
	asserts.AssertDeleteWorkerBlockRequest(t)
	return t
end

keys.ListBonusPaymentsRequest = { ["AssignmentId"] = true, ["NextToken"] = true, ["HITId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListBonusPaymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBonusPaymentsRequest to be of type 'table'")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBonusPaymentsRequest[k], "ListBonusPaymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBonusPaymentsRequest
--  
-- @param _AssignmentId [EntityId] <p>The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- @param _NextToken [PaginationToken] <p>Pagination token</p>
-- @param _HITId [EntityId] <p>The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- @param _MaxResults [ResultSize] 
function M.ListBonusPaymentsRequest(_AssignmentId, _NextToken, _HITId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBonusPaymentsRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["NextToken"] = _NextToken,
		["HITId"] = _HITId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListBonusPaymentsRequest(t)
	return t
end

keys.ListBonusPaymentsResponse = { ["NumResults"] = true, ["NextToken"] = true, ["BonusPayments"] = true, nil }

function asserts.AssertListBonusPaymentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBonusPaymentsResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["BonusPayments"] then asserts.AssertBonusPaymentList(struct["BonusPayments"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBonusPaymentsResponse[k], "ListBonusPaymentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBonusPaymentsResponse
--  
-- @param _NumResults [Integer] <p>The number of bonus payments on this page in the filtered results list, equivalent to the number of bonus payments being returned by this call. </p>
-- @param _NextToken [PaginationToken] 
-- @param _BonusPayments [BonusPaymentList] <p>A successful request to the ListBonusPayments operation returns a list of BonusPayment objects. </p>
function M.ListBonusPaymentsResponse(_NumResults, _NextToken, _BonusPayments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBonusPaymentsResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["NextToken"] = _NextToken,
		["BonusPayments"] = _BonusPayments,
	}
	asserts.AssertListBonusPaymentsResponse(t)
	return t
end

keys.CreateQualificationTypeResponse = { ["QualificationType"] = true, nil }

function asserts.AssertCreateQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then asserts.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQualificationTypeResponse[k], "CreateQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQualificationTypeResponse
--  
-- @param _QualificationType [QualificationType] <p>The created Qualification type, returned as a QualificationType data structure.</p>
function M.CreateQualificationTypeResponse(_QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQualificationTypeResponse")
	local t = { 
		["QualificationType"] = _QualificationType,
	}
	asserts.AssertCreateQualificationTypeResponse(t)
	return t
end

keys.CreateHITTypeRequest = { ["Description"] = true, ["Title"] = true, ["AssignmentDurationInSeconds"] = true, ["QualificationRequirements"] = true, ["Keywords"] = true, ["Reward"] = true, ["AutoApprovalDelayInSeconds"] = true, nil }

function asserts.AssertCreateHITTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITTypeRequest to be of type 'table'")
	assert(struct["AssignmentDurationInSeconds"], "Expected key AssignmentDurationInSeconds to exist in table")
	assert(struct["Reward"], "Expected key Reward to exist in table")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Title"] then asserts.AssertString(struct["Title"]) end
	if struct["AssignmentDurationInSeconds"] then asserts.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["QualificationRequirements"] then asserts.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["Keywords"] then asserts.AssertString(struct["Keywords"]) end
	if struct["Reward"] then asserts.AssertNumericValue(struct["Reward"]) end
	if struct["AutoApprovalDelayInSeconds"] then asserts.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITTypeRequest[k], "CreateHITTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITTypeRequest
--  
-- @param _Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- @param _Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- @param _AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- @param _QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet before the Worker is allowed to accept and complete the HIT. </p>
-- @param _Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- @param _Reward [NumericValue] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- @param _AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- Required parameter: AssignmentDurationInSeconds
-- Required parameter: Reward
-- Required parameter: Title
-- Required parameter: Description
function M.CreateHITTypeRequest(_Description, _Title, _AssignmentDurationInSeconds, _QualificationRequirements, _Keywords, _Reward, _AutoApprovalDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITTypeRequest")
	local t = { 
		["Description"] = _Description,
		["Title"] = _Title,
		["AssignmentDurationInSeconds"] = _AssignmentDurationInSeconds,
		["QualificationRequirements"] = _QualificationRequirements,
		["Keywords"] = _Keywords,
		["Reward"] = _Reward,
		["AutoApprovalDelayInSeconds"] = _AutoApprovalDelayInSeconds,
	}
	asserts.AssertCreateHITTypeRequest(t)
	return t
end

keys.CreateHITResponse = { ["HIT"] = true, nil }

function asserts.AssertCreateHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITResponse to be of type 'table'")
	if struct["HIT"] then asserts.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITResponse[k], "CreateHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITResponse
--  
-- @param _HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
function M.CreateHITResponse(_HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITResponse")
	local t = { 
		["HIT"] = _HIT,
	}
	asserts.AssertCreateHITResponse(t)
	return t
end

keys.RejectAssignmentRequest = { ["AssignmentId"] = true, ["RequesterFeedback"] = true, nil }

function asserts.AssertRejectAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["RequesterFeedback"] then asserts.AssertString(struct["RequesterFeedback"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectAssignmentRequest[k], "RejectAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectAssignmentRequest
--  
-- @param _AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- @param _RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- Required parameter: AssignmentId
function M.RejectAssignmentRequest(_AssignmentId, _RequesterFeedback, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectAssignmentRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["RequesterFeedback"] = _RequesterFeedback,
	}
	asserts.AssertRejectAssignmentRequest(t)
	return t
end

keys.UpdateNotificationSettingsRequest = { ["Active"] = true, ["HITTypeId"] = true, ["Notification"] = true, nil }

function asserts.AssertUpdateNotificationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationSettingsRequest to be of type 'table'")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	if struct["Active"] then asserts.AssertBoolean(struct["Active"]) end
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	if struct["Notification"] then asserts.AssertNotificationSpecification(struct["Notification"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotificationSettingsRequest[k], "UpdateNotificationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationSettingsRequest
--  
-- @param _Active [Boolean] <p> Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed. </p>
-- @param _HITTypeId [EntityId] <p> The ID of the HIT type whose notification specification is being updated. </p>
-- @param _Notification [NotificationSpecification] <p> The notification specification for the HIT type. </p>
-- Required parameter: HITTypeId
function M.UpdateNotificationSettingsRequest(_Active, _HITTypeId, _Notification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationSettingsRequest")
	local t = { 
		["Active"] = _Active,
		["HITTypeId"] = _HITTypeId,
		["Notification"] = _Notification,
	}
	asserts.AssertUpdateNotificationSettingsRequest(t)
	return t
end

keys.Qualification = { ["Status"] = true, ["QualificationTypeId"] = true, ["WorkerId"] = true, ["LocaleValue"] = true, ["GrantTime"] = true, ["IntegerValue"] = true, nil }

function asserts.AssertQualification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Qualification to be of type 'table'")
	if struct["Status"] then asserts.AssertQualificationStatus(struct["Status"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["LocaleValue"] then asserts.AssertLocale(struct["LocaleValue"]) end
	if struct["GrantTime"] then asserts.AssertTimestamp(struct["GrantTime"]) end
	if struct["IntegerValue"] then asserts.AssertInteger(struct["IntegerValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Qualification[k], "Qualification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Qualification
-- <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
-- @param _Status [QualificationStatus] <p> The status of the Qualification. Valid values are Granted | Revoked.</p>
-- @param _QualificationTypeId [EntityId] <p> The ID of the Qualification type for the Qualification.</p>
-- @param _WorkerId [CustomerId] <p> The ID of the Worker who possesses the Qualification. </p>
-- @param _LocaleValue [Locale] 
-- @param _GrantTime [Timestamp] <p> The date and time the Qualification was granted to the Worker. If the Worker's Qualification was revoked, and then re-granted based on a new Qualification request, GrantTime is the date and time of the last call to the AcceptQualificationRequest operation.</p>
-- @param _IntegerValue [Integer] <p> The value (score) of the Qualification, if the Qualification has an integer value.</p>
function M.Qualification(_Status, _QualificationTypeId, _WorkerId, _LocaleValue, _GrantTime, _IntegerValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Qualification")
	local t = { 
		["Status"] = _Status,
		["QualificationTypeId"] = _QualificationTypeId,
		["WorkerId"] = _WorkerId,
		["LocaleValue"] = _LocaleValue,
		["GrantTime"] = _GrantTime,
		["IntegerValue"] = _IntegerValue,
	}
	asserts.AssertQualification(t)
	return t
end

keys.UpdateExpirationForHITResponse = { nil }

function asserts.AssertUpdateExpirationForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateExpirationForHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateExpirationForHITResponse[k], "UpdateExpirationForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateExpirationForHITResponse
--  
function M.UpdateExpirationForHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateExpirationForHITResponse")
	local t = { 
	}
	asserts.AssertUpdateExpirationForHITResponse(t)
	return t
end

keys.GetQualificationScoreResponse = { ["Qualification"] = true, nil }

function asserts.AssertGetQualificationScoreResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationScoreResponse to be of type 'table'")
	if struct["Qualification"] then asserts.AssertQualification(struct["Qualification"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQualificationScoreResponse[k], "GetQualificationScoreResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationScoreResponse
--  
-- @param _Qualification [Qualification] <p> The Qualification data structure of the Qualification assigned to a user, including the Qualification type and the value (score). </p>
function M.GetQualificationScoreResponse(_Qualification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationScoreResponse")
	local t = { 
		["Qualification"] = _Qualification,
	}
	asserts.AssertGetQualificationScoreResponse(t)
	return t
end

keys.AcceptQualificationRequestResponse = { nil }

function asserts.AssertAcceptQualificationRequestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptQualificationRequestResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AcceptQualificationRequestResponse[k], "AcceptQualificationRequestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptQualificationRequestResponse
--  
function M.AcceptQualificationRequestResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptQualificationRequestResponse")
	local t = { 
	}
	asserts.AssertAcceptQualificationRequestResponse(t)
	return t
end

keys.BonusPayment = { ["AssignmentId"] = true, ["WorkerId"] = true, ["BonusAmount"] = true, ["GrantTime"] = true, ["Reason"] = true, nil }

function asserts.AssertBonusPayment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BonusPayment to be of type 'table'")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then asserts.AssertNumericValue(struct["BonusAmount"]) end
	if struct["GrantTime"] then asserts.AssertTimestamp(struct["GrantTime"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.BonusPayment[k], "BonusPayment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BonusPayment
-- <p>An object representing a Bonus payment paid to a Worker.</p>
-- @param _AssignmentId [EntityId] <p>The ID of the assignment associated with this bonus payment.</p>
-- @param _WorkerId [CustomerId] <p>The ID of the Worker to whom the bonus was paid.</p>
-- @param _BonusAmount [NumericValue] 
-- @param _GrantTime [Timestamp] <p>The date and time of when the bonus was granted.</p>
-- @param _Reason [String] <p>The Reason text given when the bonus was granted, if any.</p>
function M.BonusPayment(_AssignmentId, _WorkerId, _BonusAmount, _GrantTime, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BonusPayment")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["WorkerId"] = _WorkerId,
		["BonusAmount"] = _BonusAmount,
		["GrantTime"] = _GrantTime,
		["Reason"] = _Reason,
	}
	asserts.AssertBonusPayment(t)
	return t
end

keys.RejectQualificationRequestRequest = { ["Reason"] = true, ["QualificationRequestId"] = true, nil }

function asserts.AssertRejectQualificationRequestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectQualificationRequestRequest to be of type 'table'")
	assert(struct["QualificationRequestId"], "Expected key QualificationRequestId to exist in table")
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["QualificationRequestId"] then asserts.AssertString(struct["QualificationRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectQualificationRequestRequest[k], "RejectQualificationRequestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectQualificationRequestRequest
--  
-- @param _Reason [String] <p>A text message explaining why the request was rejected, to be shown to the Worker who made the request.</p>
-- @param _QualificationRequestId [String] <p> The ID of the Qualification request, as returned by the <code>ListQualificationRequests</code> operation. </p>
-- Required parameter: QualificationRequestId
function M.RejectQualificationRequestRequest(_Reason, _QualificationRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectQualificationRequestRequest")
	local t = { 
		["Reason"] = _Reason,
		["QualificationRequestId"] = _QualificationRequestId,
	}
	asserts.AssertRejectQualificationRequestRequest(t)
	return t
end

keys.DisassociateQualificationFromWorkerResponse = { nil }

function asserts.AssertDisassociateQualificationFromWorkerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateQualificationFromWorkerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateQualificationFromWorkerResponse[k], "DisassociateQualificationFromWorkerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateQualificationFromWorkerResponse
--  
function M.DisassociateQualificationFromWorkerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateQualificationFromWorkerResponse")
	local t = { 
	}
	asserts.AssertDisassociateQualificationFromWorkerResponse(t)
	return t
end

keys.QualificationType = { ["AutoGranted"] = true, ["Description"] = true, ["QualificationTypeId"] = true, ["AutoGrantedValue"] = true, ["CreationTime"] = true, ["TestDurationInSeconds"] = true, ["QualificationTypeStatus"] = true, ["Test"] = true, ["AnswerKey"] = true, ["IsRequestable"] = true, ["Keywords"] = true, ["RetryDelayInSeconds"] = true, ["Name"] = true, nil }

function asserts.AssertQualificationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationType to be of type 'table'")
	if struct["AutoGranted"] then asserts.AssertBoolean(struct["AutoGranted"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["AutoGrantedValue"] then asserts.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TestDurationInSeconds"] then asserts.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then asserts.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["Test"] then asserts.AssertString(struct["Test"]) end
	if struct["AnswerKey"] then asserts.AssertString(struct["AnswerKey"]) end
	if struct["IsRequestable"] then asserts.AssertBoolean(struct["IsRequestable"]) end
	if struct["Keywords"] then asserts.AssertString(struct["Keywords"]) end
	if struct["RetryDelayInSeconds"] then asserts.AssertLong(struct["RetryDelayInSeconds"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.QualificationType[k], "QualificationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationType
-- <p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>
-- @param _AutoGranted [Boolean] <p>Specifies that requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Valid values are True | False.</p>
-- @param _Description [String] <p> A long description for the Qualification type. </p>
-- @param _QualificationTypeId [EntityId] <p> A unique identifier for the Qualification type. A Qualification type is given a Qualification type ID when you call the CreateQualificationType operation. </p>
-- @param _AutoGrantedValue [Integer] <p> The Qualification integer value to use for automatically granted Qualifications, if AutoGranted is true. This is 1 by default. </p>
-- @param _CreationTime [Timestamp] <p> The date and time the Qualification type was created. </p>
-- @param _TestDurationInSeconds [Long] <p> The amount of time, in seconds, given to a Worker to complete the Qualification test, beginning from the time the Worker requests the Qualification. </p>
-- @param _QualificationTypeStatus [QualificationTypeStatus] <p> The status of the Qualification type. A Qualification type's status determines if users can apply to receive a Qualification of this type, and if HITs can be created with requirements based on this type. Valid values are Active | Inactive. </p>
-- @param _Test [String] <p> The questions for a Qualification test associated with this Qualification type that a user can take to obtain a Qualification of this type. This parameter must be specified if AnswerKey is present. A Qualification type cannot have both a specified Test parameter and an AutoGranted value of true. </p>
-- @param _AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter.</p>
-- @param _IsRequestable [Boolean] <p> Specifies whether the Qualification type is one that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test. This value is False for Qualifications assigned automatically by the system. Valid values are True | False. </p>
-- @param _Keywords [String] <p> One or more words or phrases that describe theQualification type, separated by commas. The Keywords make the type easier to find using a search. </p>
-- @param _RetryDelayInSeconds [Long] <p> The amount of time, in seconds, Workers must wait after taking the Qualification test before they can take it again. Workers can take a Qualification test multiple times if they were not granted the Qualification from a previous attempt, or if the test offers a gradient score and they want a better score. If not specified, retries are disabled and Workers can request a Qualification only once. </p>
-- @param _Name [String] <p> The name of the Qualification type. The type name is used to identify the type, and to find the type using a Qualification type search. </p>
function M.QualificationType(_AutoGranted, _Description, _QualificationTypeId, _AutoGrantedValue, _CreationTime, _TestDurationInSeconds, _QualificationTypeStatus, _Test, _AnswerKey, _IsRequestable, _Keywords, _RetryDelayInSeconds, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationType")
	local t = { 
		["AutoGranted"] = _AutoGranted,
		["Description"] = _Description,
		["QualificationTypeId"] = _QualificationTypeId,
		["AutoGrantedValue"] = _AutoGrantedValue,
		["CreationTime"] = _CreationTime,
		["TestDurationInSeconds"] = _TestDurationInSeconds,
		["QualificationTypeStatus"] = _QualificationTypeStatus,
		["Test"] = _Test,
		["AnswerKey"] = _AnswerKey,
		["IsRequestable"] = _IsRequestable,
		["Keywords"] = _Keywords,
		["RetryDelayInSeconds"] = _RetryDelayInSeconds,
		["Name"] = _Name,
	}
	asserts.AssertQualificationType(t)
	return t
end

keys.UpdateHITReviewStatusRequest = { ["Revert"] = true, ["HITId"] = true, nil }

function asserts.AssertUpdateHITReviewStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITReviewStatusRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["Revert"] then asserts.AssertBoolean(struct["Revert"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHITReviewStatusRequest[k], "UpdateHITReviewStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITReviewStatusRequest
--  
-- @param _Revert [Boolean] <p> Specifies how to update the HIT status. Default is <code>False</code>. </p> <ul> <li> <p> Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code> </p> </li> <li> <p> Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code> </p> </li> </ul>
-- @param _HITId [EntityId] <p> The ID of the HIT to update. </p>
-- Required parameter: HITId
function M.UpdateHITReviewStatusRequest(_Revert, _HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITReviewStatusRequest")
	local t = { 
		["Revert"] = _Revert,
		["HITId"] = _HITId,
	}
	asserts.AssertUpdateHITReviewStatusRequest(t)
	return t
end

keys.ListQualificationRequestsResponse = { ["NumResults"] = true, ["QualificationRequests"] = true, ["NextToken"] = true, nil }

function asserts.AssertListQualificationRequestsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationRequestsResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["QualificationRequests"] then asserts.AssertQualificationRequestList(struct["QualificationRequests"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQualificationRequestsResponse[k], "ListQualificationRequestsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationRequestsResponse
--  
-- @param _NumResults [Integer] <p>The number of Qualification requests on this page in the filtered results list, equivalent to the number of Qualification requests being returned by this call.</p>
-- @param _QualificationRequests [QualificationRequestList] <p>The Qualification request. The response includes one QualificationRequest element for each Qualification request returned by the query.</p>
-- @param _NextToken [PaginationToken] 
function M.ListQualificationRequestsResponse(_NumResults, _QualificationRequests, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationRequestsResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["QualificationRequests"] = _QualificationRequests,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListQualificationRequestsResponse(t)
	return t
end

keys.PolicyParameter = { ["MapEntries"] = true, ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertPolicyParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyParameter to be of type 'table'")
	if struct["MapEntries"] then asserts.AssertParameterMapEntryList(struct["MapEntries"]) end
	if struct["Values"] then asserts.AssertStringList(struct["Values"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyParameter[k], "PolicyParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyParameter
-- <p> Name of the parameter from the Review policy. </p>
-- @param _MapEntries [ParameterMapEntryList] <p> List of ParameterMapEntry objects. </p>
-- @param _Values [StringList] <p> The list of values of the Parameter</p>
-- @param _Key [String] <p> Name of the parameter from the list of Review Polices. </p>
function M.PolicyParameter(_MapEntries, _Values, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyParameter")
	local t = { 
		["MapEntries"] = _MapEntries,
		["Values"] = _Values,
		["Key"] = _Key,
	}
	asserts.AssertPolicyParameter(t)
	return t
end

keys.ReviewResultDetail = { ["QuestionId"] = true, ["SubjectType"] = true, ["Value"] = true, ["ActionId"] = true, ["Key"] = true, ["SubjectId"] = true, nil }

function asserts.AssertReviewResultDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewResultDetail to be of type 'table'")
	if struct["QuestionId"] then asserts.AssertEntityId(struct["QuestionId"]) end
	if struct["SubjectType"] then asserts.AssertString(struct["SubjectType"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["ActionId"] then asserts.AssertEntityId(struct["ActionId"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	if struct["SubjectId"] then asserts.AssertEntityId(struct["SubjectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReviewResultDetail[k], "ReviewResultDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewResultDetail
-- <p> This data structure is returned multiple times for each result specified in the Review Policy. </p>
-- @param _QuestionId [EntityId] <p> Specifies the QuestionId the result is describing. Depending on whether the TargetType is a HIT or Assignment this results could specify multiple values. If TargetType is HIT and QuestionId is absent, then the result describes results of the HIT, including the HIT agreement score. If ObjectType is Assignment and QuestionId is absent, then the result describes the Worker's performance on the HIT. </p>
-- @param _SubjectType [String] <p> The type of the object from the SubjectId field.</p>
-- @param _Value [String] <p> The values of Key provided by the review policies you have selected. </p>
-- @param _ActionId [EntityId] <p> A unique identifier of the Review action result. </p>
-- @param _Key [String] <p> Key identifies the particular piece of reviewed information. </p>
-- @param _SubjectId [EntityId] <p>The HITID or AssignmentId about which this result was taken. Note that HIT-level Review Policies will often emit results about both the HIT itself and its Assignments, while Assignment-level review policies generally only emit results about the Assignment itself. </p>
function M.ReviewResultDetail(_QuestionId, _SubjectType, _Value, _ActionId, _Key, _SubjectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewResultDetail")
	local t = { 
		["QuestionId"] = _QuestionId,
		["SubjectType"] = _SubjectType,
		["Value"] = _Value,
		["ActionId"] = _ActionId,
		["Key"] = _Key,
		["SubjectId"] = _SubjectId,
	}
	asserts.AssertReviewResultDetail(t)
	return t
end

keys.SendBonusResponse = { nil }

function asserts.AssertSendBonusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBonusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendBonusResponse[k], "SendBonusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBonusResponse
--  
function M.SendBonusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBonusResponse")
	local t = { 
	}
	asserts.AssertSendBonusResponse(t)
	return t
end

keys.DeleteHITRequest = { ["HITId"] = true, nil }

function asserts.AssertDeleteHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHITRequest[k], "DeleteHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHITRequest
--  
-- @param _HITId [EntityId] <p>The ID of the HIT to be deleted.</p>
-- Required parameter: HITId
function M.DeleteHITRequest(_HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHITRequest")
	local t = { 
		["HITId"] = _HITId,
	}
	asserts.AssertDeleteHITRequest(t)
	return t
end

keys.CreateWorkerBlockResponse = { nil }

function asserts.AssertCreateWorkerBlockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkerBlockResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateWorkerBlockResponse[k], "CreateWorkerBlockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkerBlockResponse
--  
function M.CreateWorkerBlockResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkerBlockResponse")
	local t = { 
	}
	asserts.AssertCreateWorkerBlockResponse(t)
	return t
end

keys.DeleteQualificationTypeRequest = { ["QualificationTypeId"] = true, nil }

function asserts.AssertDeleteQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteQualificationTypeRequest[k], "DeleteQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQualificationTypeRequest
--  
-- @param _QualificationTypeId [EntityId] <p>The ID of the QualificationType to dispose.</p>
-- Required parameter: QualificationTypeId
function M.DeleteQualificationTypeRequest(_QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQualificationTypeRequest")
	local t = { 
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertDeleteQualificationTypeRequest(t)
	return t
end

keys.CreateAdditionalAssignmentsForHITResponse = { nil }

function asserts.AssertCreateAdditionalAssignmentsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAdditionalAssignmentsForHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateAdditionalAssignmentsForHITResponse[k], "CreateAdditionalAssignmentsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAdditionalAssignmentsForHITResponse
--  
function M.CreateAdditionalAssignmentsForHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAdditionalAssignmentsForHITResponse")
	local t = { 
	}
	asserts.AssertCreateAdditionalAssignmentsForHITResponse(t)
	return t
end

keys.ListReviewPolicyResultsForHITResponse = { ["HITReviewReport"] = true, ["AssignmentReviewReport"] = true, ["AssignmentReviewPolicy"] = true, ["HITId"] = true, ["HITReviewPolicy"] = true, ["NextToken"] = true, nil }

function asserts.AssertListReviewPolicyResultsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewPolicyResultsForHITResponse to be of type 'table'")
	if struct["HITReviewReport"] then asserts.AssertReviewReport(struct["HITReviewReport"]) end
	if struct["AssignmentReviewReport"] then asserts.AssertReviewReport(struct["AssignmentReviewReport"]) end
	if struct["AssignmentReviewPolicy"] then asserts.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["HITReviewPolicy"] then asserts.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReviewPolicyResultsForHITResponse[k], "ListReviewPolicyResultsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewPolicyResultsForHITResponse
--  
-- @param _HITReviewReport [ReviewReport] <p>Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-- @param _AssignmentReviewReport [ReviewReport] <p> Contains both ReviewResult and ReviewAction elements for an Assignment. </p>
-- @param _AssignmentReviewPolicy [ReviewPolicy] <p> The name of the Assignment-level Review Policy. This contains only the PolicyName element. </p>
-- @param _HITId [EntityId] <p>The HITId of the HIT for which results have been returned.</p>
-- @param _HITReviewPolicy [ReviewPolicy] <p>The name of the HIT-level Review Policy. This contains only the PolicyName element.</p>
-- @param _NextToken [PaginationToken] 
function M.ListReviewPolicyResultsForHITResponse(_HITReviewReport, _AssignmentReviewReport, _AssignmentReviewPolicy, _HITId, _HITReviewPolicy, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewPolicyResultsForHITResponse")
	local t = { 
		["HITReviewReport"] = _HITReviewReport,
		["AssignmentReviewReport"] = _AssignmentReviewReport,
		["AssignmentReviewPolicy"] = _AssignmentReviewPolicy,
		["HITId"] = _HITId,
		["HITReviewPolicy"] = _HITReviewPolicy,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListReviewPolicyResultsForHITResponse(t)
	return t
end

keys.UpdateQualificationTypeRequest = { ["AutoGranted"] = true, ["Description"] = true, ["QualificationTypeId"] = true, ["TestDurationInSeconds"] = true, ["QualificationTypeStatus"] = true, ["AnswerKey"] = true, ["AutoGrantedValue"] = true, ["Test"] = true, ["RetryDelayInSeconds"] = true, nil }

function asserts.AssertUpdateQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["AutoGranted"] then asserts.AssertBoolean(struct["AutoGranted"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["TestDurationInSeconds"] then asserts.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then asserts.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["AnswerKey"] then asserts.AssertString(struct["AnswerKey"]) end
	if struct["AutoGrantedValue"] then asserts.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["Test"] then asserts.AssertString(struct["Test"]) end
	if struct["RetryDelayInSeconds"] then asserts.AssertLong(struct["RetryDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateQualificationTypeRequest[k], "UpdateQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQualificationTypeRequest
--  
-- @param _AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- @param _Description [String] <p>The new description of the Qualification type.</p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the Qualification type to update.</p>
-- @param _TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- @param _QualificationTypeStatus [QualificationTypeStatus] <p>The new status of the Qualification type - Active | Inactive</p>
-- @param _AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
-- @param _AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- @param _Test [String] <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- @param _RetryDelayInSeconds [Long] <p>The amount of time, in seconds, that Workers must wait after requesting a Qualification of the specified Qualification type before they can retry the Qualification request. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must dispose of the existing retry-enabled Qualification type using DisposeQualificationType and then create a new Qualification type with retries disabled using CreateQualificationType.</p>
-- Required parameter: QualificationTypeId
function M.UpdateQualificationTypeRequest(_AutoGranted, _Description, _QualificationTypeId, _TestDurationInSeconds, _QualificationTypeStatus, _AnswerKey, _AutoGrantedValue, _Test, _RetryDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateQualificationTypeRequest")
	local t = { 
		["AutoGranted"] = _AutoGranted,
		["Description"] = _Description,
		["QualificationTypeId"] = _QualificationTypeId,
		["TestDurationInSeconds"] = _TestDurationInSeconds,
		["QualificationTypeStatus"] = _QualificationTypeStatus,
		["AnswerKey"] = _AnswerKey,
		["AutoGrantedValue"] = _AutoGrantedValue,
		["Test"] = _Test,
		["RetryDelayInSeconds"] = _RetryDelayInSeconds,
	}
	asserts.AssertUpdateQualificationTypeRequest(t)
	return t
end

keys.CreateAdditionalAssignmentsForHITRequest = { ["NumberOfAdditionalAssignments"] = true, ["HITId"] = true, ["UniqueRequestToken"] = true, nil }

function asserts.AssertCreateAdditionalAssignmentsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAdditionalAssignmentsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["NumberOfAdditionalAssignments"] then asserts.AssertInteger(struct["NumberOfAdditionalAssignments"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAdditionalAssignmentsForHITRequest[k], "CreateAdditionalAssignmentsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAdditionalAssignmentsForHITRequest
--  
-- @param _NumberOfAdditionalAssignments [Integer] <p>The number of additional assignments to request for this HIT.</p>
-- @param _HITId [EntityId] <p>The ID of the HIT to extend.</p>
-- @param _UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request, which allows you to retry the call on error without extending the HIT multiple times. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the extend HIT already exists in the system from a previous call using the same <code>UniqueRequestToken</code>, subsequent calls will return an error with a message containing the request ID. </p>
-- Required parameter: HITId
function M.CreateAdditionalAssignmentsForHITRequest(_NumberOfAdditionalAssignments, _HITId, _UniqueRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAdditionalAssignmentsForHITRequest")
	local t = { 
		["NumberOfAdditionalAssignments"] = _NumberOfAdditionalAssignments,
		["HITId"] = _HITId,
		["UniqueRequestToken"] = _UniqueRequestToken,
	}
	asserts.AssertCreateAdditionalAssignmentsForHITRequest(t)
	return t
end

keys.GetAccountBalanceResponse = { ["AvailableBalance"] = true, ["OnHoldBalance"] = true, nil }

function asserts.AssertGetAccountBalanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountBalanceResponse to be of type 'table'")
	if struct["AvailableBalance"] then asserts.AssertNumericValue(struct["AvailableBalance"]) end
	if struct["OnHoldBalance"] then asserts.AssertNumericValue(struct["OnHoldBalance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountBalanceResponse[k], "GetAccountBalanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountBalanceResponse
--  
-- @param _AvailableBalance [NumericValue] 
-- @param _OnHoldBalance [NumericValue] 
function M.GetAccountBalanceResponse(_AvailableBalance, _OnHoldBalance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountBalanceResponse")
	local t = { 
		["AvailableBalance"] = _AvailableBalance,
		["OnHoldBalance"] = _OnHoldBalance,
	}
	asserts.AssertGetAccountBalanceResponse(t)
	return t
end

keys.UpdateExpirationForHITRequest = { ["HITId"] = true, ["ExpireAt"] = true, nil }

function asserts.AssertUpdateExpirationForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateExpirationForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["ExpireAt"] then asserts.AssertTimestamp(struct["ExpireAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateExpirationForHITRequest[k], "UpdateExpirationForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateExpirationForHITRequest
--  
-- @param _HITId [EntityId] <p> The HIT to update. </p>
-- @param _ExpireAt [Timestamp] <p> The date and time at which you want the HIT to expire </p>
-- Required parameter: HITId
function M.UpdateExpirationForHITRequest(_HITId, _ExpireAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateExpirationForHITRequest")
	local t = { 
		["HITId"] = _HITId,
		["ExpireAt"] = _ExpireAt,
	}
	asserts.AssertUpdateExpirationForHITRequest(t)
	return t
end

keys.ServiceFault = { ["Message"] = true, ["TurkErrorCode"] = true, nil }

function asserts.AssertServiceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFault to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["TurkErrorCode"] then asserts.AssertTurkErrorCode(struct["TurkErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceFault[k], "ServiceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFault
-- <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
-- @param _Message [ExceptionMessage] 
-- @param _TurkErrorCode [TurkErrorCode] 
function M.ServiceFault(_Message, _TurkErrorCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFault")
	local t = { 
		["Message"] = _Message,
		["TurkErrorCode"] = _TurkErrorCode,
	}
	asserts.AssertServiceFault(t)
	return t
end

keys.DeleteHITResponse = { nil }

function asserts.AssertDeleteHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteHITResponse[k], "DeleteHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHITResponse
--  
function M.DeleteHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHITResponse")
	local t = { 
	}
	asserts.AssertDeleteHITResponse(t)
	return t
end

keys.DeleteQualificationTypeResponse = { nil }

function asserts.AssertDeleteQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQualificationTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteQualificationTypeResponse[k], "DeleteQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQualificationTypeResponse
--  
function M.DeleteQualificationTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQualificationTypeResponse")
	local t = { 
	}
	asserts.AssertDeleteQualificationTypeResponse(t)
	return t
end

keys.RejectQualificationRequestResponse = { nil }

function asserts.AssertRejectQualificationRequestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectQualificationRequestResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RejectQualificationRequestResponse[k], "RejectQualificationRequestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectQualificationRequestResponse
--  
function M.RejectQualificationRequestResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectQualificationRequestResponse")
	local t = { 
	}
	asserts.AssertRejectQualificationRequestResponse(t)
	return t
end

keys.UpdateQualificationTypeResponse = { ["QualificationType"] = true, nil }

function asserts.AssertUpdateQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then asserts.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateQualificationTypeResponse[k], "UpdateQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQualificationTypeResponse
--  
-- @param _QualificationType [QualificationType] <p> Contains a QualificationType data structure.</p>
function M.UpdateQualificationTypeResponse(_QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateQualificationTypeResponse")
	local t = { 
		["QualificationType"] = _QualificationType,
	}
	asserts.AssertUpdateQualificationTypeResponse(t)
	return t
end

keys.UpdateNotificationSettingsResponse = { nil }

function asserts.AssertUpdateNotificationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotificationSettingsResponse[k], "UpdateNotificationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationSettingsResponse
--  
function M.UpdateNotificationSettingsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationSettingsResponse")
	local t = { 
	}
	asserts.AssertUpdateNotificationSettingsResponse(t)
	return t
end

keys.DeleteWorkerBlockResponse = { nil }

function asserts.AssertDeleteWorkerBlockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWorkerBlockResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteWorkerBlockResponse[k], "DeleteWorkerBlockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWorkerBlockResponse
--  
function M.DeleteWorkerBlockResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWorkerBlockResponse")
	local t = { 
	}
	asserts.AssertDeleteWorkerBlockResponse(t)
	return t
end

keys.GetQualificationTypeResponse = { ["QualificationType"] = true, nil }

function asserts.AssertGetQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then asserts.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQualificationTypeResponse[k], "GetQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationTypeResponse
--  
-- @param _QualificationType [QualificationType] <p> The returned Qualification Type</p>
function M.GetQualificationTypeResponse(_QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationTypeResponse")
	local t = { 
		["QualificationType"] = _QualificationType,
	}
	asserts.AssertGetQualificationTypeResponse(t)
	return t
end

keys.ListHITsResponse = { ["NumResults"] = true, ["HITs"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHITsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then asserts.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHITsResponse[k], "ListHITsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsResponse
--  
-- @param _NumResults [Integer] <p>The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.</p>
-- @param _HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param _NextToken [PaginationToken] 
function M.ListHITsResponse(_NumResults, _HITs, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["HITs"] = _HITs,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHITsResponse(t)
	return t
end

keys.RejectAssignmentResponse = { nil }

function asserts.AssertRejectAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectAssignmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RejectAssignmentResponse[k], "RejectAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectAssignmentResponse
--  
function M.RejectAssignmentResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectAssignmentResponse")
	local t = { 
	}
	asserts.AssertRejectAssignmentResponse(t)
	return t
end

keys.UpdateHITTypeOfHITRequest = { ["HITTypeId"] = true, ["HITId"] = true, nil }

function asserts.AssertUpdateHITTypeOfHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITTypeOfHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHITTypeOfHITRequest[k], "UpdateHITTypeOfHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITTypeOfHITRequest
--  
-- @param _HITTypeId [EntityId] <p>The ID of the new HIT type.</p>
-- @param _HITId [EntityId] <p>The HIT to update.</p>
-- Required parameter: HITId
-- Required parameter: HITTypeId
function M.UpdateHITTypeOfHITRequest(_HITTypeId, _HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITTypeOfHITRequest")
	local t = { 
		["HITTypeId"] = _HITTypeId,
		["HITId"] = _HITId,
	}
	asserts.AssertUpdateHITTypeOfHITRequest(t)
	return t
end

keys.GetAssignmentResponse = { ["Assignment"] = true, ["HIT"] = true, nil }

function asserts.AssertGetAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssignmentResponse to be of type 'table'")
	if struct["Assignment"] then asserts.AssertAssignment(struct["Assignment"]) end
	if struct["HIT"] then asserts.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssignmentResponse[k], "GetAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssignmentResponse
--  
-- @param _Assignment [Assignment] <p> The assignment. The response includes one Assignment element. </p>
-- @param _HIT [HIT] <p> The HIT associated with this assignment. The response includes one HIT element.</p>
function M.GetAssignmentResponse(_Assignment, _HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssignmentResponse")
	local t = { 
		["Assignment"] = _Assignment,
		["HIT"] = _HIT,
	}
	asserts.AssertGetAssignmentResponse(t)
	return t
end

keys.ListQualificationTypesRequest = { ["Query"] = true, ["MustBeOwnedByCaller"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["MustBeRequestable"] = true, nil }

function asserts.AssertListQualificationTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationTypesRequest to be of type 'table'")
	assert(struct["MustBeRequestable"], "Expected key MustBeRequestable to exist in table")
	if struct["Query"] then asserts.AssertString(struct["Query"]) end
	if struct["MustBeOwnedByCaller"] then asserts.AssertBoolean(struct["MustBeOwnedByCaller"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	if struct["MustBeRequestable"] then asserts.AssertBoolean(struct["MustBeRequestable"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQualificationTypesRequest[k], "ListQualificationTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationTypesRequest
--  
-- @param _Query [String] <p> A text query against all of the searchable attributes of Qualification types. </p>
-- @param _MustBeOwnedByCaller [Boolean] <p> Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types. </p>
-- @param _NextToken [PaginationToken] 
-- @param _MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- @param _MustBeRequestable [Boolean] <p>Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False. </p>
-- Required parameter: MustBeRequestable
function M.ListQualificationTypesRequest(_Query, _MustBeOwnedByCaller, _NextToken, _MaxResults, _MustBeRequestable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationTypesRequest")
	local t = { 
		["Query"] = _Query,
		["MustBeOwnedByCaller"] = _MustBeOwnedByCaller,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["MustBeRequestable"] = _MustBeRequestable,
	}
	asserts.AssertListQualificationTypesRequest(t)
	return t
end

keys.GetAccountBalanceRequest = { nil }

function asserts.AssertGetAccountBalanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountBalanceRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAccountBalanceRequest[k], "GetAccountBalanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountBalanceRequest
--  
function M.GetAccountBalanceRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountBalanceRequest")
	local t = { 
	}
	asserts.AssertGetAccountBalanceRequest(t)
	return t
end

keys.NotifyWorkersRequest = { ["WorkerIds"] = true, ["MessageText"] = true, ["Subject"] = true, nil }

function asserts.AssertNotifyWorkersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersRequest to be of type 'table'")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	assert(struct["MessageText"], "Expected key MessageText to exist in table")
	assert(struct["WorkerIds"], "Expected key WorkerIds to exist in table")
	if struct["WorkerIds"] then asserts.AssertCustomerIdList(struct["WorkerIds"]) end
	if struct["MessageText"] then asserts.AssertString(struct["MessageText"]) end
	if struct["Subject"] then asserts.AssertString(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyWorkersRequest[k], "NotifyWorkersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersRequest
--  
-- @param _WorkerIds [CustomerIdList] <p>A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.</p>
-- @param _MessageText [String] <p>The text of the email message to send. Can include up to 4,096 characters</p>
-- @param _Subject [String] <p>The subject line of the email message to send. Can include up to 200 characters.</p>
-- Required parameter: Subject
-- Required parameter: MessageText
-- Required parameter: WorkerIds
function M.NotifyWorkersRequest(_WorkerIds, _MessageText, _Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersRequest")
	local t = { 
		["WorkerIds"] = _WorkerIds,
		["MessageText"] = _MessageText,
		["Subject"] = _Subject,
	}
	asserts.AssertNotifyWorkersRequest(t)
	return t
end

keys.SendTestEventNotificationResponse = { nil }

function asserts.AssertSendTestEventNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTestEventNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendTestEventNotificationResponse[k], "SendTestEventNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTestEventNotificationResponse
--  
function M.SendTestEventNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTestEventNotificationResponse")
	local t = { 
	}
	asserts.AssertSendTestEventNotificationResponse(t)
	return t
end

keys.AssociateQualificationWithWorkerRequest = { ["WorkerId"] = true, ["SendNotification"] = true, ["IntegerValue"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertAssociateQualificationWithWorkerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateQualificationWithWorkerRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["SendNotification"] then asserts.AssertBoolean(struct["SendNotification"]) end
	if struct["IntegerValue"] then asserts.AssertInteger(struct["IntegerValue"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateQualificationWithWorkerRequest[k], "AssociateQualificationWithWorkerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateQualificationWithWorkerRequest
--  
-- @param _WorkerId [CustomerId] <p> The ID of the Worker to whom the Qualification is being assigned. Worker IDs are included with submitted HIT assignments and Qualification requests. </p>
-- @param _SendNotification [Boolean] <p> Specifies whether to send a notification email message to the Worker saying that the qualification was assigned to the Worker. Note: this is true by default. </p>
-- @param _IntegerValue [Integer] <p>The value of the Qualification to assign.</p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the Qualification type to use for the assigned Qualification.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: WorkerId
function M.AssociateQualificationWithWorkerRequest(_WorkerId, _SendNotification, _IntegerValue, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateQualificationWithWorkerRequest")
	local t = { 
		["WorkerId"] = _WorkerId,
		["SendNotification"] = _SendNotification,
		["IntegerValue"] = _IntegerValue,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertAssociateQualificationWithWorkerRequest(t)
	return t
end

keys.HIT = { ["HITGroupId"] = true, ["RequesterAnnotation"] = true, ["NumberOfAssignmentsCompleted"] = true, ["Description"] = true, ["MaxAssignments"] = true, ["Title"] = true, ["NumberOfAssignmentsAvailable"] = true, ["Question"] = true, ["CreationTime"] = true, ["AssignmentDurationInSeconds"] = true, ["HITTypeId"] = true, ["NumberOfAssignmentsPending"] = true, ["HITStatus"] = true, ["HITId"] = true, ["QualificationRequirements"] = true, ["Keywords"] = true, ["Expiration"] = true, ["Reward"] = true, ["HITLayoutId"] = true, ["HITReviewStatus"] = true, ["AutoApprovalDelayInSeconds"] = true, nil }

function asserts.AssertHIT(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HIT to be of type 'table'")
	if struct["HITGroupId"] then asserts.AssertEntityId(struct["HITGroupId"]) end
	if struct["RequesterAnnotation"] then asserts.AssertString(struct["RequesterAnnotation"]) end
	if struct["NumberOfAssignmentsCompleted"] then asserts.AssertInteger(struct["NumberOfAssignmentsCompleted"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["MaxAssignments"] then asserts.AssertInteger(struct["MaxAssignments"]) end
	if struct["Title"] then asserts.AssertString(struct["Title"]) end
	if struct["NumberOfAssignmentsAvailable"] then asserts.AssertInteger(struct["NumberOfAssignmentsAvailable"]) end
	if struct["Question"] then asserts.AssertString(struct["Question"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["AssignmentDurationInSeconds"] then asserts.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["HITTypeId"] then asserts.AssertEntityId(struct["HITTypeId"]) end
	if struct["NumberOfAssignmentsPending"] then asserts.AssertInteger(struct["NumberOfAssignmentsPending"]) end
	if struct["HITStatus"] then asserts.AssertHITStatus(struct["HITStatus"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["QualificationRequirements"] then asserts.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["Keywords"] then asserts.AssertString(struct["Keywords"]) end
	if struct["Expiration"] then asserts.AssertTimestamp(struct["Expiration"]) end
	if struct["Reward"] then asserts.AssertNumericValue(struct["Reward"]) end
	if struct["HITLayoutId"] then asserts.AssertEntityId(struct["HITLayoutId"]) end
	if struct["HITReviewStatus"] then asserts.AssertHITReviewStatus(struct["HITReviewStatus"]) end
	if struct["AutoApprovalDelayInSeconds"] then asserts.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.HIT[k], "HIT contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HIT
-- <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
-- @param _HITGroupId [EntityId] <p> The ID of the HIT Group of this HIT.</p>
-- @param _RequesterAnnotation [String] <p> An arbitrary data field the Requester who created the HIT can use. This field is visible only to the creator of the HIT.</p>
-- @param _NumberOfAssignmentsCompleted [Integer] <p> The number of assignments for this HIT that have been approved or rejected.</p>
-- @param _Description [String] <p> A general description of the HIT.</p>
-- @param _MaxAssignments [Integer] <p>The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param _Title [String] <p> The title of the HIT.</p>
-- @param _NumberOfAssignmentsAvailable [Integer] <p> The number of assignments for this HIT that are available for Workers to accept.</p>
-- @param _Question [String] <p> The data the Worker completing the HIT uses produce the results. This is either either a QuestionForm, HTMLQuestion or an ExternalQuestion data structure.</p>
-- @param _CreationTime [Timestamp] <p> The date and time the HIT was created.</p>
-- @param _AssignmentDurationInSeconds [Long] <p> The length of time, in seconds, that a Worker has to complete the HIT after accepting it.</p>
-- @param _HITTypeId [EntityId] <p>The ID of the HIT type of this HIT</p>
-- @param _NumberOfAssignmentsPending [Integer] <p> The number of assignments for this HIT that are being previewed or have been accepted by Workers, but have not yet been submitted, returned, or abandoned.</p>
-- @param _HITStatus [HITStatus] <p>The status of the HIT and its assignments. Valid Values are Assignable | Unassignable | Reviewable | Reviewing | Disposed. </p>
-- @param _HITId [EntityId] <p> A unique identifier for the HIT.</p>
-- @param _QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met by a Worker's Qualifications for the Worker to accept the HIT.</p>
-- @param _Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. Search terms similar to the keywords of a HIT are more likely to have the HIT in the search results.</p>
-- @param _Expiration [Timestamp] <p>The date and time the HIT expires.</p>
-- @param _Reward [NumericValue] 
-- @param _HITLayoutId [EntityId] <p> The ID of the HIT Layout of this HIT.</p>
-- @param _HITReviewStatus [HITReviewStatus] <p> Indicates the review status of the HIT. Valid Values are NotReviewed | MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.</p>
-- @param _AutoApprovalDelayInSeconds [Long] <p>The amount of time, in seconds, after the Worker submits an assignment for the HIT that the results are automatically approved by Amazon Mechanical Turk. This is the amount of time the Requester has to reject an assignment submitted by a Worker before the assignment is auto-approved and the Worker is paid. </p>
function M.HIT(_HITGroupId, _RequesterAnnotation, _NumberOfAssignmentsCompleted, _Description, _MaxAssignments, _Title, _NumberOfAssignmentsAvailable, _Question, _CreationTime, _AssignmentDurationInSeconds, _HITTypeId, _NumberOfAssignmentsPending, _HITStatus, _HITId, _QualificationRequirements, _Keywords, _Expiration, _Reward, _HITLayoutId, _HITReviewStatus, _AutoApprovalDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HIT")
	local t = { 
		["HITGroupId"] = _HITGroupId,
		["RequesterAnnotation"] = _RequesterAnnotation,
		["NumberOfAssignmentsCompleted"] = _NumberOfAssignmentsCompleted,
		["Description"] = _Description,
		["MaxAssignments"] = _MaxAssignments,
		["Title"] = _Title,
		["NumberOfAssignmentsAvailable"] = _NumberOfAssignmentsAvailable,
		["Question"] = _Question,
		["CreationTime"] = _CreationTime,
		["AssignmentDurationInSeconds"] = _AssignmentDurationInSeconds,
		["HITTypeId"] = _HITTypeId,
		["NumberOfAssignmentsPending"] = _NumberOfAssignmentsPending,
		["HITStatus"] = _HITStatus,
		["HITId"] = _HITId,
		["QualificationRequirements"] = _QualificationRequirements,
		["Keywords"] = _Keywords,
		["Expiration"] = _Expiration,
		["Reward"] = _Reward,
		["HITLayoutId"] = _HITLayoutId,
		["HITReviewStatus"] = _HITReviewStatus,
		["AutoApprovalDelayInSeconds"] = _AutoApprovalDelayInSeconds,
	}
	asserts.AssertHIT(t)
	return t
end

keys.CreateHITWithHITTypeResponse = { ["HIT"] = true, nil }

function asserts.AssertCreateHITWithHITTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITWithHITTypeResponse to be of type 'table'")
	if struct["HIT"] then asserts.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITWithHITTypeResponse[k], "CreateHITWithHITTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITWithHITTypeResponse
--  
-- @param _HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
function M.CreateHITWithHITTypeResponse(_HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITWithHITTypeResponse")
	local t = { 
		["HIT"] = _HIT,
	}
	asserts.AssertCreateHITWithHITTypeResponse(t)
	return t
end

keys.ListHITsForQualificationTypeRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertListHITsForQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsForQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHITsForQualificationTypeRequest[k], "ListHITsForQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsForQualificationTypeRequest
--  
-- @param _NextToken [PaginationToken] <p>Pagination Token</p>
-- @param _MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- @param _QualificationTypeId [EntityId] <p> The ID of the Qualification type to use when querying HITs. </p>
-- Required parameter: QualificationTypeId
function M.ListHITsForQualificationTypeRequest(_NextToken, _MaxResults, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsForQualificationTypeRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertListHITsForQualificationTypeRequest(t)
	return t
end

keys.HITLayoutParameter = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertHITLayoutParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HITLayoutParameter to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HITLayoutParameter[k], "HITLayoutParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HITLayoutParameter
-- <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
-- @param _Name [String] <p> The name of the parameter in the HITLayout. </p>
-- @param _Value [String] <p>The value substituted for the parameter referenced in the HITLayout. </p>
function M.HITLayoutParameter(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HITLayoutParameter")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertHITLayoutParameter(t)
	return t
end

keys.NotifyWorkersResponse = { ["NotifyWorkersFailureStatuses"] = true, nil }

function asserts.AssertNotifyWorkersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersResponse to be of type 'table'")
	if struct["NotifyWorkersFailureStatuses"] then asserts.AssertNotifyWorkersFailureStatusList(struct["NotifyWorkersFailureStatuses"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyWorkersResponse[k], "NotifyWorkersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersResponse
--  
-- @param _NotifyWorkersFailureStatuses [NotifyWorkersFailureStatusList] <p> When MTurk sends notifications to the list of Workers, it returns back any failures it encounters in this list of NotifyWorkersFailureStatus objects. </p>
function M.NotifyWorkersResponse(_NotifyWorkersFailureStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersResponse")
	local t = { 
		["NotifyWorkersFailureStatuses"] = _NotifyWorkersFailureStatuses,
	}
	asserts.AssertNotifyWorkersResponse(t)
	return t
end

keys.Locale = { ["Country"] = true, ["Subdivision"] = true, nil }

function asserts.AssertLocale(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Locale to be of type 'table'")
	assert(struct["Country"], "Expected key Country to exist in table")
	if struct["Country"] then asserts.AssertCountryParameters(struct["Country"]) end
	if struct["Subdivision"] then asserts.AssertCountryParameters(struct["Subdivision"]) end
	for k,_ in pairs(struct) do
		assert(keys.Locale[k], "Locale contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Locale
-- <p>The Locale data structure represents a geographical region or location.</p>
-- @param _Country [CountryParameters] <p> The country of the locale. Must be a valid ISO 3166 country code. For example, the code US refers to the United States of America. </p>
-- @param _Subdivision [CountryParameters] <p>The state or subdivision of the locale. A valid ISO 3166-2 subdivision code. For example, the code WA refers to the state of Washington.</p>
-- Required parameter: Country
function M.Locale(_Country, _Subdivision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Locale")
	local t = { 
		["Country"] = _Country,
		["Subdivision"] = _Subdivision,
	}
	asserts.AssertLocale(t)
	return t
end

keys.ListAssignmentsForHITResponse = { ["NumResults"] = true, ["Assignments"] = true, ["NextToken"] = true, nil }

function asserts.AssertListAssignmentsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssignmentsForHITResponse to be of type 'table'")
	if struct["NumResults"] then asserts.AssertInteger(struct["NumResults"]) end
	if struct["Assignments"] then asserts.AssertAssignmentList(struct["Assignments"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssignmentsForHITResponse[k], "ListAssignmentsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssignmentsForHITResponse
--  
-- @param _NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- @param _Assignments [AssignmentList] <p> The collection of Assignment data structures returned by this call.</p>
-- @param _NextToken [PaginationToken] 
function M.ListAssignmentsForHITResponse(_NumResults, _Assignments, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssignmentsForHITResponse")
	local t = { 
		["NumResults"] = _NumResults,
		["Assignments"] = _Assignments,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListAssignmentsForHITResponse(t)
	return t
end

keys.SendBonusRequest = { ["AssignmentId"] = true, ["WorkerId"] = true, ["BonusAmount"] = true, ["Reason"] = true, ["UniqueRequestToken"] = true, nil }

function asserts.AssertSendBonusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBonusRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["BonusAmount"], "Expected key BonusAmount to exist in table")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then asserts.AssertNumericValue(struct["BonusAmount"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBonusRequest[k], "SendBonusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBonusRequest
--  
-- @param _AssignmentId [EntityId] <p>The ID of the assignment for which this bonus is paid.</p>
-- @param _WorkerId [CustomerId] <p>The ID of the Worker being paid the bonus.</p>
-- @param _BonusAmount [NumericValue] <p> The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and "101.42" represents $101.42 USD). Do not include currency symbols or currency codes. </p>
-- @param _Reason [String] <p>A message that explains the reason for the bonus payment. The Worker receiving the bonus can see this message.</p>
-- @param _UniqueRequestToken [IdempotencyToken] <p>A unique identifier for this request, which allows you to retry the call on error without granting multiple bonuses. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the bonus already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID.</p>
-- Required parameter: WorkerId
-- Required parameter: BonusAmount
-- Required parameter: AssignmentId
function M.SendBonusRequest(_AssignmentId, _WorkerId, _BonusAmount, _Reason, _UniqueRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBonusRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["WorkerId"] = _WorkerId,
		["BonusAmount"] = _BonusAmount,
		["Reason"] = _Reason,
		["UniqueRequestToken"] = _UniqueRequestToken,
	}
	asserts.AssertSendBonusRequest(t)
	return t
end

keys.NotificationSpecification = { ["EventTypes"] = true, ["Destination"] = true, ["Version"] = true, ["Transport"] = true, nil }

function asserts.AssertNotificationSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationSpecification to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Transport"], "Expected key Transport to exist in table")
	if struct["EventTypes"] then asserts.AssertEventTypeList(struct["EventTypes"]) end
	if struct["Destination"] then asserts.AssertString(struct["Destination"]) end
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Transport"] then asserts.AssertNotificationTransport(struct["Transport"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationSpecification[k], "NotificationSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationSpecification
-- <p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>
-- @param _EventTypes [EventTypeList] <p> The list of events that should cause notifications to be sent. Valid Values: AssignmentAccepted | AssignmentAbandoned | AssignmentReturned | AssignmentSubmitted | AssignmentRejected | AssignmentApproved | HITCreated | HITExtended | HITDisposed | HITReviewable | HITExpired | Ping. The Ping event is only valid for the SendTestEventNotification operation. </p>
-- @param _Destination [String] <p> The destination for notification messages. or email notifications (if Transport is Email), this is an email address. For Amazon Simple Queue Service (Amazon SQS) notifications (if Transport is SQS), this is the URL for your Amazon SQS queue. </p>
-- @param _Version [String] <p>The version of the Notification API to use. Valid value is 2006-05-05.</p>
-- @param _Transport [NotificationTransport] <p> The method Amazon Mechanical Turk uses to send the notification. Valid Values: Email | SQS. </p>
-- Required parameter: Destination
-- Required parameter: Transport
function M.NotificationSpecification(_EventTypes, _Destination, _Version, _Transport, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationSpecification")
	local t = { 
		["EventTypes"] = _EventTypes,
		["Destination"] = _Destination,
		["Version"] = _Version,
		["Transport"] = _Transport,
	}
	asserts.AssertNotificationSpecification(t)
	return t
end

keys.GetFileUploadURLRequest = { ["AssignmentId"] = true, ["QuestionIdentifier"] = true, nil }

function asserts.AssertGetFileUploadURLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileUploadURLRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	assert(struct["QuestionIdentifier"], "Expected key QuestionIdentifier to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["QuestionIdentifier"] then asserts.AssertString(struct["QuestionIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFileUploadURLRequest[k], "GetFileUploadURLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileUploadURLRequest
--  
-- @param _AssignmentId [EntityId] <p>The ID of the assignment that contains the question with a FileUploadAnswer.</p>
-- @param _QuestionIdentifier [String] <p>The identifier of the question with a FileUploadAnswer, as specified in the QuestionForm of the HIT.</p>
-- Required parameter: AssignmentId
-- Required parameter: QuestionIdentifier
function M.GetFileUploadURLRequest(_AssignmentId, _QuestionIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFileUploadURLRequest")
	local t = { 
		["AssignmentId"] = _AssignmentId,
		["QuestionIdentifier"] = _QuestionIdentifier,
	}
	asserts.AssertGetFileUploadURLRequest(t)
	return t
end

keys.ReviewPolicy = { ["PolicyName"] = true, ["Parameters"] = true, nil }

function asserts.AssertReviewPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewPolicy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertString(struct["PolicyName"]) end
	if struct["Parameters"] then asserts.AssertPolicyParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReviewPolicy[k], "ReviewPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewPolicy
-- <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
-- @param _PolicyName [String] <p> Name of a Review Policy: SimplePlurality/2011-09-01 or ScoreMyKnownAnswers/2011-09-01 </p>
-- @param _Parameters [PolicyParameterList] <p>Name of the parameter from the Review policy.</p>
function M.ReviewPolicy(_PolicyName, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewPolicy")
	local t = { 
		["PolicyName"] = _PolicyName,
		["Parameters"] = _Parameters,
	}
	asserts.AssertReviewPolicy(t)
	return t
end

keys.DisassociateQualificationFromWorkerRequest = { ["WorkerId"] = true, ["Reason"] = true, ["QualificationTypeId"] = true, nil }

function asserts.AssertDisassociateQualificationFromWorkerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateQualificationFromWorkerRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["QualificationTypeId"] then asserts.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateQualificationFromWorkerRequest[k], "DisassociateQualificationFromWorkerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateQualificationFromWorkerRequest
--  
-- @param _WorkerId [CustomerId] <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
-- @param _Reason [String] <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
-- @param _QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualification to be revoked.</p>
-- Required parameter: WorkerId
-- Required parameter: QualificationTypeId
function M.DisassociateQualificationFromWorkerRequest(_WorkerId, _Reason, _QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateQualificationFromWorkerRequest")
	local t = { 
		["WorkerId"] = _WorkerId,
		["Reason"] = _Reason,
		["QualificationTypeId"] = _QualificationTypeId,
	}
	asserts.AssertDisassociateQualificationFromWorkerRequest(t)
	return t
end

keys.GetHITRequest = { ["HITId"] = true, nil }

function asserts.AssertGetHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHITRequest[k], "GetHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHITRequest
--  
-- @param _HITId [EntityId] <p>The ID of the HIT to be retrieved.</p>
-- Required parameter: HITId
function M.GetHITRequest(_HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHITRequest")
	local t = { 
		["HITId"] = _HITId,
	}
	asserts.AssertGetHITRequest(t)
	return t
end

function asserts.AssertReviewPolicyLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewPolicyLevel to be of type 'string'")
end

--  
function M.ReviewPolicyLevel(str)
	asserts.AssertReviewPolicyLevel(str)
	return str
end

function asserts.AssertTurkErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected TurkErrorCode to be of type 'string'")
end

--  
function M.TurkErrorCode(str)
	asserts.AssertTurkErrorCode(str)
	return str
end

function asserts.AssertNotifyWorkersFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected NotifyWorkersFailureCode to be of type 'string'")
end

--  
function M.NotifyWorkersFailureCode(str)
	asserts.AssertNotifyWorkersFailureCode(str)
	return str
end

function asserts.AssertNotificationTransport(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTransport to be of type 'string'")
end

--  
function M.NotificationTransport(str)
	asserts.AssertNotificationTransport(str)
	return str
end

function asserts.AssertEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EntityId(str)
	asserts.AssertEntityId(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk returns a pagination token in the response. You can use this pagination token to retrieve the next set of results. </p>
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
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

function asserts.AssertHITStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HITStatus to be of type 'string'")
end

--  
function M.HITStatus(str)
	asserts.AssertHITStatus(str)
	return str
end

function asserts.AssertReviewableHITStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewableHITStatus to be of type 'string'")
end

--  
function M.ReviewableHITStatus(str)
	asserts.AssertReviewableHITStatus(str)
	return str
end

function asserts.AssertCustomerId(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomerId(str)
	asserts.AssertCustomerId(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertQualificationTypeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected QualificationTypeStatus to be of type 'string'")
end

--  
function M.QualificationTypeStatus(str)
	asserts.AssertQualificationTypeStatus(str)
	return str
end

function asserts.AssertAssignmentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AssignmentStatus to be of type 'string'")
end

--  
function M.AssignmentStatus(str)
	asserts.AssertAssignmentStatus(str)
	return str
end

function asserts.AssertReviewActionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewActionStatus to be of type 'string'")
end

--  
function M.ReviewActionStatus(str)
	asserts.AssertReviewActionStatus(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertHITReviewStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HITReviewStatus to be of type 'string'")
end

--  
function M.HITReviewStatus(str)
	asserts.AssertHITReviewStatus(str)
	return str
end

function asserts.AssertComparator(str)
	assert(str)
	assert(type(str) == "string", "Expected Comparator to be of type 'string'")
end

--  
function M.Comparator(str)
	asserts.AssertComparator(str)
	return str
end

function asserts.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdempotencyToken(str)
	asserts.AssertIdempotencyToken(str)
	return str
end

function asserts.AssertNumericValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericValue to be of type 'string'")
end

-- <p>A string representing a numeric value.</p>
function M.NumericValue(str)
	asserts.AssertNumericValue(str)
	return str
end

function asserts.AssertCountryParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryParameters to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.CountryParameters(str)
	asserts.AssertCountryParameters(str)
	return str
end

function asserts.AssertQualificationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected QualificationStatus to be of type 'string'")
end

--  
function M.QualificationStatus(str)
	asserts.AssertQualificationStatus(str)
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertResultSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResultSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ResultSize(integer)
	asserts.AssertResultSize(integer)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypeList(list)
	asserts.AssertEventTypeList(list)
	return list
end

function asserts.AssertQualificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQualification(v)
	end
end

--  
-- List of Qualification objects
function M.QualificationList(list)
	asserts.AssertQualificationList(list)
	return list
end

function asserts.AssertCustomerIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomerIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomerId(v)
	end
end

--  
-- List of CustomerId objects
function M.CustomerIdList(list)
	asserts.AssertCustomerIdList(list)
	return list
end

function asserts.AssertAssignmentStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssignmentStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAssignmentStatus(v)
	end
end

--  
-- List of AssignmentStatus objects
function M.AssignmentStatusList(list)
	asserts.AssertAssignmentStatusList(list)
	return list
end

function asserts.AssertQualificationRequirementList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationRequirementList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQualificationRequirement(v)
	end
end

--  
-- List of QualificationRequirement objects
function M.QualificationRequirementList(list)
	asserts.AssertQualificationRequirementList(list)
	return list
end

function asserts.AssertAssignmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssignmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAssignment(v)
	end
end

--  
-- List of Assignment objects
function M.AssignmentList(list)
	asserts.AssertAssignmentList(list)
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

function asserts.AssertReviewResultDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewResultDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReviewResultDetail(v)
	end
end

--  
-- List of ReviewResultDetail objects
function M.ReviewResultDetailList(list)
	asserts.AssertReviewResultDetailList(list)
	return list
end

function asserts.AssertReviewActionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewActionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReviewActionDetail(v)
	end
end

--  
-- List of ReviewActionDetail objects
function M.ReviewActionDetailList(list)
	asserts.AssertReviewActionDetailList(list)
	return list
end

function asserts.AssertReviewPolicyLevelList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewPolicyLevelList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReviewPolicyLevel(v)
	end
end

--  
-- List of ReviewPolicyLevel objects
function M.ReviewPolicyLevelList(list)
	asserts.AssertReviewPolicyLevelList(list)
	return list
end

function asserts.AssertQualificationRequestList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationRequestList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQualificationRequest(v)
	end
end

--  
-- List of QualificationRequest objects
function M.QualificationRequestList(list)
	asserts.AssertQualificationRequestList(list)
	return list
end

function asserts.AssertPolicyParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyParameter(v)
	end
end

--  
-- List of PolicyParameter objects
function M.PolicyParameterList(list)
	asserts.AssertPolicyParameterList(list)
	return list
end

function asserts.AssertQualificationTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQualificationType(v)
	end
end

--  
-- List of QualificationType objects
function M.QualificationTypeList(list)
	asserts.AssertQualificationTypeList(list)
	return list
end

function asserts.AssertHITLayoutParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected HITLayoutParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHITLayoutParameter(v)
	end
end

--  
-- List of HITLayoutParameter objects
function M.HITLayoutParameterList(list)
	asserts.AssertHITLayoutParameterList(list)
	return list
end

function asserts.AssertBonusPaymentList(list)
	assert(list)
	assert(type(list) == "table", "Expected BonusPaymentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBonusPayment(v)
	end
end

--  
-- List of BonusPayment objects
function M.BonusPaymentList(list)
	asserts.AssertBonusPaymentList(list)
	return list
end

function asserts.AssertParameterMapEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterMapEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterMapEntry(v)
	end
end

--  
-- List of ParameterMapEntry objects
function M.ParameterMapEntryList(list)
	asserts.AssertParameterMapEntryList(list)
	return list
end

function asserts.AssertHITList(list)
	assert(list)
	assert(type(list) == "table", "Expected HITList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHIT(v)
	end
end

--  
-- List of HIT objects
function M.HITList(list)
	asserts.AssertHITList(list)
	return list
end

function asserts.AssertNotifyWorkersFailureStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotifyWorkersFailureStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotifyWorkersFailureStatus(v)
	end
end

--  
-- List of NotifyWorkersFailureStatus objects
function M.NotifyWorkersFailureStatusList(list)
	asserts.AssertNotifyWorkersFailureStatusList(list)
	return list
end

function asserts.AssertLocaleList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocaleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocale(v)
	end
end

--  
-- List of Locale objects
function M.LocaleList(list)
	asserts.AssertLocaleList(list)
	return list
end

function asserts.AssertIntegerList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntegerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInteger(v)
	end
end

--  
-- List of Integer objects
function M.IntegerList(list)
	asserts.AssertIntegerList(list)
	return list
end

function asserts.AssertWorkerBlockList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkerBlockList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkerBlock(v)
	end
end

--  
-- List of WorkerBlock objects
function M.WorkerBlockList(list)
	asserts.AssertWorkerBlockList(list)
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
			return "mturk-requester.amazonaws.com"
		end
	end
	local ss = { "mturk-requester" }
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
--- SendBonus
-- @param SendBonusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendBonusAsync(SendBonusRequest, cb)
	assert(SendBonusRequest, "You must provide a SendBonusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.SendBonus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendBonusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateQualificationWithWorker
-- @param AssociateQualificationWithWorkerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateQualificationWithWorkerAsync(AssociateQualificationWithWorkerRequest, cb)
	assert(AssociateQualificationWithWorkerRequest, "You must provide a AssociateQualificationWithWorkerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.AssociateQualificationWithWorker",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateQualificationWithWorkerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateHITTypeOfHIT
-- @param UpdateHITTypeOfHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHITTypeOfHITAsync(UpdateHITTypeOfHITRequest, cb)
	assert(UpdateHITTypeOfHITRequest, "You must provide a UpdateHITTypeOfHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateHITTypeOfHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateHITTypeOfHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateNotificationSettings
-- @param UpdateNotificationSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateNotificationSettingsAsync(UpdateNotificationSettingsRequest, cb)
	assert(UpdateNotificationSettingsRequest, "You must provide a UpdateNotificationSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateNotificationSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateNotificationSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListWorkerBlocks
-- @param ListWorkerBlocksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListWorkerBlocksAsync(ListWorkerBlocksRequest, cb)
	assert(ListWorkerBlocksRequest, "You must provide a ListWorkerBlocksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListWorkerBlocks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListWorkerBlocksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListReviewableHITs
-- @param ListReviewableHITsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReviewableHITsAsync(ListReviewableHITsRequest, cb)
	assert(ListReviewableHITsRequest, "You must provide a ListReviewableHITsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListReviewableHITs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListReviewableHITsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssignmentsForHIT
-- @param ListAssignmentsForHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssignmentsForHITAsync(ListAssignmentsForHITRequest, cb)
	assert(ListAssignmentsForHITRequest, "You must provide a ListAssignmentsForHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListAssignmentsForHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssignmentsForHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateQualificationFromWorker
-- @param DisassociateQualificationFromWorkerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateQualificationFromWorkerAsync(DisassociateQualificationFromWorkerRequest, cb)
	assert(DisassociateQualificationFromWorkerRequest, "You must provide a DisassociateQualificationFromWorkerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DisassociateQualificationFromWorker",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateQualificationFromWorkerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RejectQualificationRequest
-- @param RejectQualificationRequestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RejectQualificationRequestAsync(RejectQualificationRequestRequest, cb)
	assert(RejectQualificationRequestRequest, "You must provide a RejectQualificationRequestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.RejectQualificationRequest",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RejectQualificationRequestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHITType
-- @param CreateHITTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHITTypeAsync(CreateHITTypeRequest, cb)
	assert(CreateHITTypeRequest, "You must provide a CreateHITTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHITType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHITTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFileUploadURL
-- @param GetFileUploadURLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFileUploadURLAsync(GetFileUploadURLRequest, cb)
	assert(GetFileUploadURLRequest, "You must provide a GetFileUploadURLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetFileUploadURL",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetFileUploadURLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListReviewPolicyResultsForHIT
-- @param ListReviewPolicyResultsForHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReviewPolicyResultsForHITAsync(ListReviewPolicyResultsForHITRequest, cb)
	assert(ListReviewPolicyResultsForHITRequest, "You must provide a ListReviewPolicyResultsForHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListReviewPolicyResultsForHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListReviewPolicyResultsForHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateExpirationForHIT
-- @param UpdateExpirationForHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateExpirationForHITAsync(UpdateExpirationForHITRequest, cb)
	assert(UpdateExpirationForHITRequest, "You must provide a UpdateExpirationForHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateExpirationForHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateExpirationForHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateQualificationType
-- @param UpdateQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateQualificationTypeAsync(UpdateQualificationTypeRequest, cb)
	assert(UpdateQualificationTypeRequest, "You must provide a UpdateQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- NotifyWorkers
-- @param NotifyWorkersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.NotifyWorkersAsync(NotifyWorkersRequest, cb)
	assert(NotifyWorkersRequest, "You must provide a NotifyWorkersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.NotifyWorkers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", NotifyWorkersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListQualificationTypes
-- @param ListQualificationTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListQualificationTypesAsync(ListQualificationTypesRequest, cb)
	assert(ListQualificationTypesRequest, "You must provide a ListQualificationTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListQualificationTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListQualificationTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHIT
-- @param CreateHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHITAsync(CreateHITRequest, cb)
	assert(CreateHITRequest, "You must provide a CreateHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHITsForQualificationType
-- @param ListHITsForQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHITsForQualificationTypeAsync(ListHITsForQualificationTypeRequest, cb)
	assert(ListHITsForQualificationTypeRequest, "You must provide a ListHITsForQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListHITsForQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHITsForQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcceptQualificationRequest
-- @param AcceptQualificationRequestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptQualificationRequestAsync(AcceptQualificationRequestRequest, cb)
	assert(AcceptQualificationRequestRequest, "You must provide a AcceptQualificationRequestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.AcceptQualificationRequest",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcceptQualificationRequestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListQualificationRequests
-- @param ListQualificationRequestsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListQualificationRequestsAsync(ListQualificationRequestsRequest, cb)
	assert(ListQualificationRequestsRequest, "You must provide a ListQualificationRequestsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListQualificationRequests",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListQualificationRequestsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateHITReviewStatus
-- @param UpdateHITReviewStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHITReviewStatusAsync(UpdateHITReviewStatusRequest, cb)
	assert(UpdateHITReviewStatusRequest, "You must provide a UpdateHITReviewStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateHITReviewStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateHITReviewStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHITs
-- @param ListHITsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHITsAsync(ListHITsRequest, cb)
	assert(ListHITsRequest, "You must provide a ListHITsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListHITs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHITsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListWorkersWithQualificationType
-- @param ListWorkersWithQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListWorkersWithQualificationTypeAsync(ListWorkersWithQualificationTypeRequest, cb)
	assert(ListWorkersWithQualificationTypeRequest, "You must provide a ListWorkersWithQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListWorkersWithQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListWorkersWithQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountBalance
-- @param GetAccountBalanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountBalanceAsync(GetAccountBalanceRequest, cb)
	assert(GetAccountBalanceRequest, "You must provide a GetAccountBalanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetAccountBalance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAccountBalanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteQualificationType
-- @param DeleteQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteQualificationTypeAsync(DeleteQualificationTypeRequest, cb)
	assert(DeleteQualificationTypeRequest, "You must provide a DeleteQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendTestEventNotification
-- @param SendTestEventNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendTestEventNotificationAsync(SendTestEventNotificationRequest, cb)
	assert(SendTestEventNotificationRequest, "You must provide a SendTestEventNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.SendTestEventNotification",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendTestEventNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHITWithHITType
-- @param CreateHITWithHITTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHITWithHITTypeAsync(CreateHITWithHITTypeRequest, cb)
	assert(CreateHITWithHITTypeRequest, "You must provide a CreateHITWithHITTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHITWithHITType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHITWithHITTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateWorkerBlock
-- @param CreateWorkerBlockRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateWorkerBlockAsync(CreateWorkerBlockRequest, cb)
	assert(CreateWorkerBlockRequest, "You must provide a CreateWorkerBlockRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateWorkerBlock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateWorkerBlockRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ApproveAssignment
-- @param ApproveAssignmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ApproveAssignmentAsync(ApproveAssignmentRequest, cb)
	assert(ApproveAssignmentRequest, "You must provide a ApproveAssignmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ApproveAssignment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ApproveAssignmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBonusPayments
-- @param ListBonusPaymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBonusPaymentsAsync(ListBonusPaymentsRequest, cb)
	assert(ListBonusPaymentsRequest, "You must provide a ListBonusPaymentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListBonusPayments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBonusPaymentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHIT
-- @param DeleteHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHITAsync(DeleteHITRequest, cb)
	assert(DeleteHITRequest, "You must provide a DeleteHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQualificationScore
-- @param GetQualificationScoreRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQualificationScoreAsync(GetQualificationScoreRequest, cb)
	assert(GetQualificationScoreRequest, "You must provide a GetQualificationScoreRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetQualificationScore",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQualificationScoreRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteWorkerBlock
-- @param DeleteWorkerBlockRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteWorkerBlockAsync(DeleteWorkerBlockRequest, cb)
	assert(DeleteWorkerBlockRequest, "You must provide a DeleteWorkerBlockRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteWorkerBlock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteWorkerBlockRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQualificationType
-- @param GetQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQualificationTypeAsync(GetQualificationTypeRequest, cb)
	assert(GetQualificationTypeRequest, "You must provide a GetQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RejectAssignment
-- @param RejectAssignmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RejectAssignmentAsync(RejectAssignmentRequest, cb)
	assert(RejectAssignmentRequest, "You must provide a RejectAssignmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.RejectAssignment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RejectAssignmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateQualificationType
-- @param CreateQualificationTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateQualificationTypeAsync(CreateQualificationTypeRequest, cb)
	assert(CreateQualificationTypeRequest, "You must provide a CreateQualificationTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateQualificationType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateQualificationTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAssignment
-- @param GetAssignmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAssignmentAsync(GetAssignmentRequest, cb)
	assert(GetAssignmentRequest, "You must provide a GetAssignmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetAssignment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAssignmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHIT
-- @param GetHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHITAsync(GetHITRequest, cb)
	assert(GetHITRequest, "You must provide a GetHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAdditionalAssignmentsForHIT
-- @param CreateAdditionalAssignmentsForHITRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAdditionalAssignmentsForHITAsync(CreateAdditionalAssignmentsForHITRequest, cb)
	assert(CreateAdditionalAssignmentsForHITRequest, "You must provide a CreateAdditionalAssignmentsForHITRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateAdditionalAssignmentsForHIT",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAdditionalAssignmentsForHITRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
