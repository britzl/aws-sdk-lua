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

local GetAssignmentRequest_keys = { "AssignmentId" = true, nil }

function M.AssertGetAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	for k,_ in pairs(struct) do
		assert(GetAssignmentRequest_keys[k], "GetAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssignmentRequest
--  
-- @param AssignmentId [EntityId] <p>The ID of the Assignment to be retrieved.</p>
-- Required parameter: AssignmentId
function M.GetAssignmentRequest(AssignmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssignmentRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
	}
	M.AssertGetAssignmentRequest(t)
	return t
end

local ListReviewPolicyResultsForHITRequest_keys = { "RetrieveResults" = true, "PolicyLevels" = true, "MaxResults" = true, "HITId" = true, "RetrieveActions" = true, "NextToken" = true, nil }

function M.AssertListReviewPolicyResultsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewPolicyResultsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["RetrieveResults"] then M.AssertBoolean(struct["RetrieveResults"]) end
	if struct["PolicyLevels"] then M.AssertReviewPolicyLevelList(struct["PolicyLevels"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["RetrieveActions"] then M.AssertBoolean(struct["RetrieveActions"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListReviewPolicyResultsForHITRequest_keys[k], "ListReviewPolicyResultsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewPolicyResultsForHITRequest
--  
-- @param RetrieveResults [Boolean] <p> Specify if the operation should retrieve a list of the results computed by the Review Policies. </p>
-- @param PolicyLevels [ReviewPolicyLevelList] <p> The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies. </p>
-- @param MaxResults [ResultSize] <p>Limit the number of results returned.</p>
-- @param HITId [EntityId] <p>The unique identifier of the HIT to retrieve review results for.</p>
-- @param RetrieveActions [Boolean] <p> Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes. </p>
-- @param NextToken [PaginationToken] <p>Pagination token</p>
-- Required parameter: HITId
function M.ListReviewPolicyResultsForHITRequest(RetrieveResults, PolicyLevels, MaxResults, HITId, RetrieveActions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewPolicyResultsForHITRequest")
	local t = { 
		["RetrieveResults"] = RetrieveResults,
		["PolicyLevels"] = PolicyLevels,
		["MaxResults"] = MaxResults,
		["HITId"] = HITId,
		["RetrieveActions"] = RetrieveActions,
		["NextToken"] = NextToken,
	}
	M.AssertListReviewPolicyResultsForHITRequest(t)
	return t
end

local GetFileUploadURLResponse_keys = { "FileUploadURL" = true, nil }

function M.AssertGetFileUploadURLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileUploadURLResponse to be of type 'table'")
	if struct["FileUploadURL"] then M.AssertString(struct["FileUploadURL"]) end
	for k,_ in pairs(struct) do
		assert(GetFileUploadURLResponse_keys[k], "GetFileUploadURLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileUploadURLResponse
--  
-- @param FileUploadURL [String] <p> A temporary URL for the file that the Worker uploaded for the answer. </p>
function M.GetFileUploadURLResponse(FileUploadURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFileUploadURLResponse")
	local t = { 
		["FileUploadURL"] = FileUploadURL,
	}
	M.AssertGetFileUploadURLResponse(t)
	return t
end

local QualificationRequest_keys = { "QualificationTypeId" = true, "WorkerId" = true, "QualificationRequestId" = true, "SubmitTime" = true, "Test" = true, "Answer" = true, nil }

function M.AssertQualificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationRequest to be of type 'table'")
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["QualificationRequestId"] then M.AssertString(struct["QualificationRequestId"]) end
	if struct["SubmitTime"] then M.AssertTimestamp(struct["SubmitTime"]) end
	if struct["Test"] then M.AssertString(struct["Test"]) end
	if struct["Answer"] then M.AssertString(struct["Answer"]) end
	for k,_ in pairs(struct) do
		assert(QualificationRequest_keys[k], "QualificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationRequest
-- <p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>
-- @param QualificationTypeId [EntityId] <p> The ID of the Qualification type the Worker is requesting, as returned by the CreateQualificationType operation. </p>
-- @param WorkerId [CustomerId] <p> The ID of the Worker requesting the Qualification.</p>
-- @param QualificationRequestId [String] <p>The ID of the Qualification request, a unique identifier generated when the request was submitted. </p>
-- @param SubmitTime [Timestamp] <p>The date and time the Qualification request had a status of Submitted. This is either the time the Worker submitted answers for a Qualification test, or the time the Worker requested the Qualification if the Qualification type does not have a test. </p>
-- @param Test [String] <p> The contents of the Qualification test that was presented to the Worker, if the type has a test and the Worker has submitted answers. This value is identical to the QuestionForm associated with the Qualification type at the time the Worker requests the Qualification.</p>
-- @param Answer [String] <p> The Worker's answers for the Qualification type's test contained in a QuestionFormAnswers document, if the type has a test and the Worker has submitted answers. If the Worker does not provide any answers, Answer may be empty. </p>
function M.QualificationRequest(QualificationTypeId, WorkerId, QualificationRequestId, SubmitTime, Test, Answer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationRequest")
	local t = { 
		["QualificationTypeId"] = QualificationTypeId,
		["WorkerId"] = WorkerId,
		["QualificationRequestId"] = QualificationRequestId,
		["SubmitTime"] = SubmitTime,
		["Test"] = Test,
		["Answer"] = Answer,
	}
	M.AssertQualificationRequest(t)
	return t
end

local CreateHITWithHITTypeRequest_keys = { "RequesterAnnotation" = true, "MaxAssignments" = true, "Question" = true, "UniqueRequestToken" = true, "HITLayoutParameters" = true, "HITTypeId" = true, "AssignmentReviewPolicy" = true, "HITReviewPolicy" = true, "HITLayoutId" = true, "LifetimeInSeconds" = true, nil }

function M.AssertCreateHITWithHITTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITWithHITTypeRequest to be of type 'table'")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	assert(struct["LifetimeInSeconds"], "Expected key LifetimeInSeconds to exist in table")
	if struct["RequesterAnnotation"] then M.AssertString(struct["RequesterAnnotation"]) end
	if struct["MaxAssignments"] then M.AssertInteger(struct["MaxAssignments"]) end
	if struct["Question"] then M.AssertString(struct["Question"]) end
	if struct["UniqueRequestToken"] then M.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	if struct["HITLayoutParameters"] then M.AssertHITLayoutParameterList(struct["HITLayoutParameters"]) end
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	if struct["AssignmentReviewPolicy"] then M.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["HITReviewPolicy"] then M.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["HITLayoutId"] then M.AssertEntityId(struct["HITLayoutId"]) end
	if struct["LifetimeInSeconds"] then M.AssertLong(struct["LifetimeInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITWithHITTypeRequest_keys[k], "CreateHITWithHITTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITWithHITTypeRequest
--  
-- @param RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- @param MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- @param UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- @param HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- @param HITTypeId [EntityId] <p>The HIT type ID you want to create this HIT with.</p>
-- @param AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- @param LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- Required parameter: HITTypeId
-- Required parameter: LifetimeInSeconds
function M.CreateHITWithHITTypeRequest(RequesterAnnotation, MaxAssignments, Question, UniqueRequestToken, HITLayoutParameters, HITTypeId, AssignmentReviewPolicy, HITReviewPolicy, HITLayoutId, LifetimeInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITWithHITTypeRequest")
	local t = { 
		["RequesterAnnotation"] = RequesterAnnotation,
		["MaxAssignments"] = MaxAssignments,
		["Question"] = Question,
		["UniqueRequestToken"] = UniqueRequestToken,
		["HITLayoutParameters"] = HITLayoutParameters,
		["HITTypeId"] = HITTypeId,
		["AssignmentReviewPolicy"] = AssignmentReviewPolicy,
		["HITReviewPolicy"] = HITReviewPolicy,
		["HITLayoutId"] = HITLayoutId,
		["LifetimeInSeconds"] = LifetimeInSeconds,
	}
	M.AssertCreateHITWithHITTypeRequest(t)
	return t
end

local CreateQualificationTypeRequest_keys = { "AutoGranted" = true, "Name" = true, "TestDurationInSeconds" = true, "QualificationTypeStatus" = true, "Test" = true, "AnswerKey" = true, "AutoGrantedValue" = true, "Keywords" = true, "RetryDelayInSeconds" = true, "Description" = true, nil }

function M.AssertCreateQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQualificationTypeRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["QualificationTypeStatus"], "Expected key QualificationTypeStatus to exist in table")
	if struct["AutoGranted"] then M.AssertBoolean(struct["AutoGranted"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["TestDurationInSeconds"] then M.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then M.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["Test"] then M.AssertString(struct["Test"]) end
	if struct["AnswerKey"] then M.AssertString(struct["AnswerKey"]) end
	if struct["AutoGrantedValue"] then M.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["Keywords"] then M.AssertString(struct["Keywords"]) end
	if struct["RetryDelayInSeconds"] then M.AssertLong(struct["RetryDelayInSeconds"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateQualificationTypeRequest_keys[k], "CreateQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQualificationTypeRequest
--  
-- @param AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- @param Name [String] <p> The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.</p>
-- @param TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- @param QualificationTypeStatus [QualificationTypeStatus] <p>The initial status of the Qualification type.</p> <p>Constraints: Valid values are: Active | Inactive</p>
-- @param Test [String] <p> The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified. </p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- @param AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p> <p>Constraints: Must not be longer than 65535 bytes.</p> <p>Constraints: None. If not specified, you must process Qualification requests manually.</p>
-- @param AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- @param Keywords [String] <p>One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.</p>
-- @param RetryDelayInSeconds [Long] <p>The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.</p> <p>Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.</p>
-- @param Description [String] <p>A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.</p>
-- Required parameter: Name
-- Required parameter: Description
-- Required parameter: QualificationTypeStatus
function M.CreateQualificationTypeRequest(AutoGranted, Name, TestDurationInSeconds, QualificationTypeStatus, Test, AnswerKey, AutoGrantedValue, Keywords, RetryDelayInSeconds, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQualificationTypeRequest")
	local t = { 
		["AutoGranted"] = AutoGranted,
		["Name"] = Name,
		["TestDurationInSeconds"] = TestDurationInSeconds,
		["QualificationTypeStatus"] = QualificationTypeStatus,
		["Test"] = Test,
		["AnswerKey"] = AnswerKey,
		["AutoGrantedValue"] = AutoGrantedValue,
		["Keywords"] = Keywords,
		["RetryDelayInSeconds"] = RetryDelayInSeconds,
		["Description"] = Description,
	}
	M.AssertCreateQualificationTypeRequest(t)
	return t
end

local ListWorkersWithQualificationTypeResponse_keys = { "NumResults" = true, "NextToken" = true, "Qualifications" = true, nil }

function M.AssertListWorkersWithQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkersWithQualificationTypeResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["Qualifications"] then M.AssertQualificationList(struct["Qualifications"]) end
	for k,_ in pairs(struct) do
		assert(ListWorkersWithQualificationTypeResponse_keys[k], "ListWorkersWithQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkersWithQualificationTypeResponse
--  
-- @param NumResults [Integer] <p> The number of Qualifications on this page in the filtered results list, equivalent to the number of Qualifications being returned by this call.</p>
-- @param NextToken [PaginationToken]  
-- @param Qualifications [QualificationList] <p> The list of Qualification elements returned by this call. </p>
function M.ListWorkersWithQualificationTypeResponse(NumResults, NextToken, Qualifications, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkersWithQualificationTypeResponse")
	local t = { 
		["NumResults"] = NumResults,
		["NextToken"] = NextToken,
		["Qualifications"] = Qualifications,
	}
	M.AssertListWorkersWithQualificationTypeResponse(t)
	return t
end

local NotifyWorkersFailureStatus_keys = { "NotifyWorkersFailureMessage" = true, "WorkerId" = true, "NotifyWorkersFailureCode" = true, nil }

function M.AssertNotifyWorkersFailureStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersFailureStatus to be of type 'table'")
	if struct["NotifyWorkersFailureMessage"] then M.AssertString(struct["NotifyWorkersFailureMessage"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["NotifyWorkersFailureCode"] then M.AssertNotifyWorkersFailureCode(struct["NotifyWorkersFailureCode"]) end
	for k,_ in pairs(struct) do
		assert(NotifyWorkersFailureStatus_keys[k], "NotifyWorkersFailureStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersFailureStatus
-- <p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>
-- @param NotifyWorkersFailureMessage [String] <p> A message detailing the reason the Worker could not be notified. </p>
-- @param WorkerId [CustomerId] <p> The ID of the Worker.</p>
-- @param NotifyWorkersFailureCode [NotifyWorkersFailureCode] <p> Encoded value for the failure type. </p>
function M.NotifyWorkersFailureStatus(NotifyWorkersFailureMessage, WorkerId, NotifyWorkersFailureCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersFailureStatus")
	local t = { 
		["NotifyWorkersFailureMessage"] = NotifyWorkersFailureMessage,
		["WorkerId"] = WorkerId,
		["NotifyWorkersFailureCode"] = NotifyWorkersFailureCode,
	}
	M.AssertNotifyWorkersFailureStatus(t)
	return t
end

local AcceptQualificationRequestRequest_keys = { "IntegerValue" = true, "QualificationRequestId" = true, nil }

function M.AssertAcceptQualificationRequestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptQualificationRequestRequest to be of type 'table'")
	assert(struct["QualificationRequestId"], "Expected key QualificationRequestId to exist in table")
	if struct["IntegerValue"] then M.AssertInteger(struct["IntegerValue"]) end
	if struct["QualificationRequestId"] then M.AssertString(struct["QualificationRequestId"]) end
	for k,_ in pairs(struct) do
		assert(AcceptQualificationRequestRequest_keys[k], "AcceptQualificationRequestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptQualificationRequestRequest
--  
-- @param IntegerValue [Integer] <p> The value of the Qualification. You can omit this value if you are using the presence or absence of the Qualification as the basis for a HIT requirement. </p>
-- @param QualificationRequestId [String] <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
-- Required parameter: QualificationRequestId
function M.AcceptQualificationRequestRequest(IntegerValue, QualificationRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptQualificationRequestRequest")
	local t = { 
		["IntegerValue"] = IntegerValue,
		["QualificationRequestId"] = QualificationRequestId,
	}
	M.AssertAcceptQualificationRequestRequest(t)
	return t
end

local ListHITsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListHITsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListHITsRequest_keys[k], "ListHITsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsRequest
--  
-- @param NextToken [PaginationToken] <p>Pagination token</p>
-- @param MaxResults [ResultSize]  
function M.ListHITsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListHITsRequest(t)
	return t
end

local ListReviewableHITsRequest_keys = { "Status" = true, "HITTypeId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListReviewableHITsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewableHITsRequest to be of type 'table'")
	if struct["Status"] then M.AssertReviewableHITStatus(struct["Status"]) end
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListReviewableHITsRequest_keys[k], "ListReviewableHITsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewableHITsRequest
--  
-- @param Status [ReviewableHITStatus] <p> Can be either <code>Reviewable</code> or <code>Reviewing</code>. Reviewable is the default value. </p>
-- @param HITTypeId [EntityId] <p> The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered </p>
-- @param NextToken [PaginationToken] <p>Pagination Token</p>
-- @param MaxResults [ResultSize] <p> Limit the number of results returned. </p>
function M.ListReviewableHITsRequest(Status, HITTypeId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewableHITsRequest")
	local t = { 
		["Status"] = Status,
		["HITTypeId"] = HITTypeId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListReviewableHITsRequest(t)
	return t
end

local Assignment_keys = { "ApprovalTime" = true, "AutoApprovalTime" = true, "AssignmentId" = true, "WorkerId" = true, "RequesterFeedback" = true, "AcceptTime" = true, "Deadline" = true, "HITId" = true, "Answer" = true, "AssignmentStatus" = true, "SubmitTime" = true, "RejectionTime" = true, nil }

function M.AssertAssignment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Assignment to be of type 'table'")
	if struct["ApprovalTime"] then M.AssertTimestamp(struct["ApprovalTime"]) end
	if struct["AutoApprovalTime"] then M.AssertTimestamp(struct["AutoApprovalTime"]) end
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["RequesterFeedback"] then M.AssertString(struct["RequesterFeedback"]) end
	if struct["AcceptTime"] then M.AssertTimestamp(struct["AcceptTime"]) end
	if struct["Deadline"] then M.AssertTimestamp(struct["Deadline"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["Answer"] then M.AssertString(struct["Answer"]) end
	if struct["AssignmentStatus"] then M.AssertAssignmentStatus(struct["AssignmentStatus"]) end
	if struct["SubmitTime"] then M.AssertTimestamp(struct["SubmitTime"]) end
	if struct["RejectionTime"] then M.AssertTimestamp(struct["RejectionTime"]) end
	for k,_ in pairs(struct) do
		assert(Assignment_keys[k], "Assignment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Assignment
-- <p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>
-- @param ApprovalTime [Timestamp] <p> If the Worker has submitted results and the Requester has approved the results, ApprovalTime is the date and time the Requester approved the results. This value is omitted from the assignment if the Requester has not yet approved the results.</p>
-- @param AutoApprovalTime [Timestamp] <p> If results have been submitted, AutoApprovalTime is the date and time the results of the assignment results are considered Approved automatically if they have not already been explicitly approved or rejected by the Requester. This value is derived from the auto-approval delay specified by the Requester in the HIT. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- @param AssignmentId [EntityId] <p> A unique identifier for the assignment.</p>
-- @param WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- @param RequesterFeedback [String] <p> The feedback string included with the call to the ApproveAssignment operation or the RejectAssignment operation, if the Requester approved or rejected the assignment and specified feedback.</p>
-- @param AcceptTime [Timestamp] <p> The date and time the Worker accepted the assignment.</p>
-- @param Deadline [Timestamp] <p> The date and time of the deadline for the assignment. This value is derived from the deadline specification for the HIT and the date and time the Worker accepted the HIT.</p>
-- @param HITId [EntityId] <p> The ID of the HIT.</p>
-- @param Answer [String] <p> The Worker's answers submitted for the HIT contained in a QuestionFormAnswers document, if the Worker provides an answer. If the Worker does not provide any answers, Answer may contain a QuestionFormAnswers document, or Answer may be empty.</p>
-- @param AssignmentStatus [AssignmentStatus] <p> The status of the assignment.</p>
-- @param SubmitTime [Timestamp] <p> If the Worker has submitted results, SubmitTime is the date and time the assignment was submitted. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- @param RejectionTime [Timestamp] <p> If the Worker has submitted results and the Requester has rejected the results, RejectionTime is the date and time the Requester rejected the results.</p>
function M.Assignment(ApprovalTime, AutoApprovalTime, AssignmentId, WorkerId, RequesterFeedback, AcceptTime, Deadline, HITId, Answer, AssignmentStatus, SubmitTime, RejectionTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Assignment")
	local t = { 
		["ApprovalTime"] = ApprovalTime,
		["AutoApprovalTime"] = AutoApprovalTime,
		["AssignmentId"] = AssignmentId,
		["WorkerId"] = WorkerId,
		["RequesterFeedback"] = RequesterFeedback,
		["AcceptTime"] = AcceptTime,
		["Deadline"] = Deadline,
		["HITId"] = HITId,
		["Answer"] = Answer,
		["AssignmentStatus"] = AssignmentStatus,
		["SubmitTime"] = SubmitTime,
		["RejectionTime"] = RejectionTime,
	}
	M.AssertAssignment(t)
	return t
end

local GetHITResponse_keys = { "HIT" = true, nil }

function M.AssertGetHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHITResponse to be of type 'table'")
	if struct["HIT"] then M.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(GetHITResponse_keys[k], "GetHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHITResponse
--  
-- @param HIT [HIT] <p> Contains the requested HIT data.</p>
function M.GetHITResponse(HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHITResponse")
	local t = { 
		["HIT"] = HIT,
	}
	M.AssertGetHITResponse(t)
	return t
end

local AssociateQualificationWithWorkerResponse_keys = { nil }

function M.AssertAssociateQualificationWithWorkerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateQualificationWithWorkerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociateQualificationWithWorkerResponse_keys[k], "AssociateQualificationWithWorkerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateQualificationWithWorkerResponse
--  
function M.AssociateQualificationWithWorkerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateQualificationWithWorkerResponse")
	local t = { 
	}
	M.AssertAssociateQualificationWithWorkerResponse(t)
	return t
end

local QualificationRequirement_keys = { "RequiredToPreview" = true, "LocaleValues" = true, "IntegerValues" = true, "Comparator" = true, "QualificationTypeId" = true, nil }

function M.AssertQualificationRequirement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationRequirement to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["Comparator"], "Expected key Comparator to exist in table")
	if struct["RequiredToPreview"] then M.AssertBoolean(struct["RequiredToPreview"]) end
	if struct["LocaleValues"] then M.AssertLocaleList(struct["LocaleValues"]) end
	if struct["IntegerValues"] then M.AssertIntegerList(struct["IntegerValues"]) end
	if struct["Comparator"] then M.AssertComparator(struct["Comparator"]) end
	if struct["QualificationTypeId"] then M.AssertString(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(QualificationRequirement_keys[k], "QualificationRequirement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationRequirement
-- <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT. </p>
-- @param RequiredToPreview [Boolean] <p> If true, the question data for the HIT will not be shown when a Worker whose Qualifications do not meet this requirement tries to preview the HIT. That is, a Worker's Qualifications must meet all of the requirements for which RequiredToPreview is true in order to preview the HIT. If a Worker meets all of the requirements where RequiredToPreview is true (or if there are no such requirements), but does not meet all of the requirements for the HIT, the Worker will be allowed to preview the HIT's question data, but will not be allowed to accept and complete the HIT. The default is false. </p>
-- @param LocaleValues [LocaleList] <p> The locale value to compare against the Qualification's value. The local value must be a valid ISO 3166 country code or supports ISO 3166-2 subdivisions. LocaleValue can only be used with a Worker_Locale QualificationType ID. LocaleValue can only be used with the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use a single LocaleValue element when using the EqualTo or NotEqualTo comparators. When performing a set comparison by using the In or the NotIn comparator, you can use up to 30 LocaleValue elements in a QualificationRequirement data structure. </p>
-- @param IntegerValues [IntegerList] <p> The integer value to compare against the Qualification's value. IntegerValue must not be present if Comparator is Exists or DoesNotExist. IntegerValue can only be used if the Qualification type has an integer value; it cannot be used with the Worker_Locale QualificationType ID. When performing a set comparison by using the In or the NotIn comparator, you can use up to 15 IntegerValue elements in a QualificationRequirement data structure. </p>
-- @param Comparator [Comparator] <p>The kind of comparison to make against a Qualification's value. You can compare a Qualification's value to an IntegerValue to see if it is LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You can compare it to a LocaleValue to see if it is EqualTo, or NotEqualTo the LocaleValue. You can check to see if the value is In or NotIn a set of IntegerValue or LocaleValue values. Lastly, a Qualification requirement can also test if a Qualification Exists or DoesNotExist in the user's profile, regardless of its value. </p>
-- @param QualificationTypeId [String] <p> The ID of the Qualification type for the requirement.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: Comparator
function M.QualificationRequirement(RequiredToPreview, LocaleValues, IntegerValues, Comparator, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationRequirement")
	local t = { 
		["RequiredToPreview"] = RequiredToPreview,
		["LocaleValues"] = LocaleValues,
		["IntegerValues"] = IntegerValues,
		["Comparator"] = Comparator,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertQualificationRequirement(t)
	return t
end

local UpdateHITTypeOfHITResponse_keys = { nil }

function M.AssertUpdateHITTypeOfHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITTypeOfHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateHITTypeOfHITResponse_keys[k], "UpdateHITTypeOfHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITTypeOfHITResponse
--  
function M.UpdateHITTypeOfHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITTypeOfHITResponse")
	local t = { 
	}
	M.AssertUpdateHITTypeOfHITResponse(t)
	return t
end

local CreateWorkerBlockRequest_keys = { "WorkerId" = true, "Reason" = true, nil }

function M.AssertCreateWorkerBlockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkerBlockRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["Reason"], "Expected key Reason to exist in table")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(CreateWorkerBlockRequest_keys[k], "CreateWorkerBlockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkerBlockRequest
--  
-- @param WorkerId [CustomerId] <p>The ID of the Worker to block.</p>
-- @param Reason [String] <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
-- Required parameter: WorkerId
-- Required parameter: Reason
function M.CreateWorkerBlockRequest(WorkerId, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkerBlockRequest")
	local t = { 
		["WorkerId"] = WorkerId,
		["Reason"] = Reason,
	}
	M.AssertCreateWorkerBlockRequest(t)
	return t
end

local RequestError_keys = { "Message" = true, "TurkErrorCode" = true, nil }

function M.AssertRequestError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestError to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["TurkErrorCode"] then M.AssertTurkErrorCode(struct["TurkErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(RequestError_keys[k], "RequestError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestError
-- <p>Your request is invalid.</p>
-- @param Message [ExceptionMessage] <p>Your request is invalid.</p>
-- @param TurkErrorCode [TurkErrorCode] <p>Your request is invalid.</p>
function M.RequestError(Message, TurkErrorCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestError")
	local t = { 
		["Message"] = Message,
		["TurkErrorCode"] = TurkErrorCode,
	}
	M.AssertRequestError(t)
	return t
end

local ApproveAssignmentResponse_keys = { nil }

function M.AssertApproveAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveAssignmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApproveAssignmentResponse_keys[k], "ApproveAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveAssignmentResponse
--  
function M.ApproveAssignmentResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApproveAssignmentResponse")
	local t = { 
	}
	M.AssertApproveAssignmentResponse(t)
	return t
end

local GetQualificationTypeRequest_keys = { "QualificationTypeId" = true, nil }

function M.AssertGetQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(GetQualificationTypeRequest_keys[k], "GetQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationTypeRequest
--  
-- @param QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required parameter: QualificationTypeId
function M.GetQualificationTypeRequest(QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationTypeRequest")
	local t = { 
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertGetQualificationTypeRequest(t)
	return t
end

local ListHITsForQualificationTypeResponse_keys = { "NumResults" = true, "HITs" = true, "NextToken" = true, nil }

function M.AssertListHITsForQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsForQualificationTypeResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then M.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHITsForQualificationTypeResponse_keys[k], "ListHITsForQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsForQualificationTypeResponse
--  
-- @param NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- @param HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param NextToken [PaginationToken]  
function M.ListHITsForQualificationTypeResponse(NumResults, HITs, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsForQualificationTypeResponse")
	local t = { 
		["NumResults"] = NumResults,
		["HITs"] = HITs,
		["NextToken"] = NextToken,
	}
	M.AssertListHITsForQualificationTypeResponse(t)
	return t
end

local ListQualificationRequestsRequest_keys = { "NextToken" = true, "MaxResults" = true, "QualificationTypeId" = true, nil }

function M.AssertListQualificationRequestsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationRequestsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(ListQualificationRequestsRequest_keys[k], "ListQualificationRequestsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationRequestsRequest
--  
-- @param NextToken [PaginationToken]  
-- @param MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- @param QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
function M.ListQualificationRequestsRequest(NextToken, MaxResults, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationRequestsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertListQualificationRequestsRequest(t)
	return t
end

local ListAssignmentsForHITRequest_keys = { "AssignmentStatuses" = true, "NextToken" = true, "HITId" = true, "MaxResults" = true, nil }

function M.AssertListAssignmentsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssignmentsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["AssignmentStatuses"] then M.AssertAssignmentStatusList(struct["AssignmentStatuses"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAssignmentsForHITRequest_keys[k], "ListAssignmentsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssignmentsForHITRequest
--  
-- @param AssignmentStatuses [AssignmentStatusList] <p>The status of the assignments to return: Submitted | Approved | Rejected</p>
-- @param NextToken [PaginationToken] <p>Pagination token</p>
-- @param HITId [EntityId] <p>The ID of the HIT.</p>
-- @param MaxResults [ResultSize]  
-- Required parameter: HITId
function M.ListAssignmentsForHITRequest(AssignmentStatuses, NextToken, HITId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssignmentsForHITRequest")
	local t = { 
		["AssignmentStatuses"] = AssignmentStatuses,
		["NextToken"] = NextToken,
		["HITId"] = HITId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListAssignmentsForHITRequest(t)
	return t
end

local SendTestEventNotificationRequest_keys = { "Notification" = true, "TestEventType" = true, nil }

function M.AssertSendTestEventNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTestEventNotificationRequest to be of type 'table'")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["TestEventType"], "Expected key TestEventType to exist in table")
	if struct["Notification"] then M.AssertNotificationSpecification(struct["Notification"]) end
	if struct["TestEventType"] then M.AssertEventType(struct["TestEventType"]) end
	for k,_ in pairs(struct) do
		assert(SendTestEventNotificationRequest_keys[k], "SendTestEventNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTestEventNotificationRequest
--  
-- @param Notification [NotificationSpecification] <p> The notification specification to test. This value is identical to the value you would provide to the UpdateNotificationSettings operation when you establish the notification specification for a HIT type. </p>
-- @param TestEventType [EventType] <p> The event to simulate to test the notification specification. This event is included in the test message even if the notification specification does not include the event type. The notification specification does not filter out the test event. </p>
-- Required parameter: Notification
-- Required parameter: TestEventType
function M.SendTestEventNotificationRequest(Notification, TestEventType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTestEventNotificationRequest")
	local t = { 
		["Notification"] = Notification,
		["TestEventType"] = TestEventType,
	}
	M.AssertSendTestEventNotificationRequest(t)
	return t
end

local UpdateHITReviewStatusResponse_keys = { nil }

function M.AssertUpdateHITReviewStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITReviewStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateHITReviewStatusResponse_keys[k], "UpdateHITReviewStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITReviewStatusResponse
--  
function M.UpdateHITReviewStatusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITReviewStatusResponse")
	local t = { 
	}
	M.AssertUpdateHITReviewStatusResponse(t)
	return t
end

local ListWorkerBlocksRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListWorkerBlocksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkerBlocksRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListWorkerBlocksRequest_keys[k], "ListWorkerBlocksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkerBlocksRequest
--  
-- @param NextToken [PaginationToken] <p>Pagination token</p>
-- @param MaxResults [ResultSize]  
function M.ListWorkerBlocksRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkerBlocksRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListWorkerBlocksRequest(t)
	return t
end

local ParameterMapEntry_keys = { "Values" = true, "Key" = true, nil }

function M.AssertParameterMapEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterMapEntry to be of type 'table'")
	if struct["Values"] then M.AssertStringList(struct["Values"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ParameterMapEntry_keys[k], "ParameterMapEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterMapEntry
-- <p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
-- @param Values [StringList] <p> The list of answers to the question specified in the MapEntry Key element. The Worker must match all values in order for the answer to be scored correctly. </p>
-- @param Key [String] <p> The QuestionID from the HIT that is used to identify which question requires Mechanical Turk to score as part of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
function M.ParameterMapEntry(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterMapEntry")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertParameterMapEntry(t)
	return t
end

local ListReviewableHITsResponse_keys = { "NumResults" = true, "HITs" = true, "NextToken" = true, nil }

function M.AssertListReviewableHITsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewableHITsResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then M.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListReviewableHITsResponse_keys[k], "ListReviewableHITsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewableHITsResponse
--  
-- @param NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- @param HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param NextToken [PaginationToken]  
function M.ListReviewableHITsResponse(NumResults, HITs, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewableHITsResponse")
	local t = { 
		["NumResults"] = NumResults,
		["HITs"] = HITs,
		["NextToken"] = NextToken,
	}
	M.AssertListReviewableHITsResponse(t)
	return t
end

local ListQualificationTypesResponse_keys = { "NumResults" = true, "QualificationTypes" = true, "NextToken" = true, nil }

function M.AssertListQualificationTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationTypesResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["QualificationTypes"] then M.AssertQualificationTypeList(struct["QualificationTypes"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListQualificationTypesResponse_keys[k], "ListQualificationTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationTypesResponse
--  
-- @param NumResults [Integer] <p> The number of Qualification types on this page in the filtered results list, equivalent to the number of types this operation returns. </p>
-- @param QualificationTypes [QualificationTypeList] <p> The list of QualificationType elements returned by the query. </p>
-- @param NextToken [PaginationToken]  
function M.ListQualificationTypesResponse(NumResults, QualificationTypes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationTypesResponse")
	local t = { 
		["NumResults"] = NumResults,
		["QualificationTypes"] = QualificationTypes,
		["NextToken"] = NextToken,
	}
	M.AssertListQualificationTypesResponse(t)
	return t
end

local ApproveAssignmentRequest_keys = { "AssignmentId" = true, "RequesterFeedback" = true, "OverrideRejection" = true, nil }

function M.AssertApproveAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["RequesterFeedback"] then M.AssertString(struct["RequesterFeedback"]) end
	if struct["OverrideRejection"] then M.AssertBoolean(struct["OverrideRejection"]) end
	for k,_ in pairs(struct) do
		assert(ApproveAssignmentRequest_keys[k], "ApproveAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveAssignmentRequest
--  
-- @param AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- @param RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- @param OverrideRejection [Boolean] <p> A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>. </p>
-- Required parameter: AssignmentId
function M.ApproveAssignmentRequest(AssignmentId, RequesterFeedback, OverrideRejection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApproveAssignmentRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["RequesterFeedback"] = RequesterFeedback,
		["OverrideRejection"] = OverrideRejection,
	}
	M.AssertApproveAssignmentRequest(t)
	return t
end

local GetQualificationScoreRequest_keys = { "WorkerId" = true, "QualificationTypeId" = true, nil }

function M.AssertGetQualificationScoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationScoreRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(GetQualificationScoreRequest_keys[k], "GetQualificationScoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationScoreRequest
--  
-- @param WorkerId [CustomerId] <p>The ID of the Worker whose Qualification is being updated.</p>
-- @param QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: WorkerId
function M.GetQualificationScoreRequest(WorkerId, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationScoreRequest")
	local t = { 
		["WorkerId"] = WorkerId,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertGetQualificationScoreRequest(t)
	return t
end

local CreateHITTypeResponse_keys = { "HITTypeId" = true, nil }

function M.AssertCreateHITTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITTypeResponse to be of type 'table'")
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITTypeResponse_keys[k], "CreateHITTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITTypeResponse
--  
-- @param HITTypeId [EntityId] <p> The ID of the newly registered HIT type.</p>
function M.CreateHITTypeResponse(HITTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITTypeResponse")
	local t = { 
		["HITTypeId"] = HITTypeId,
	}
	M.AssertCreateHITTypeResponse(t)
	return t
end

local CreateHITRequest_keys = { "HITLayoutParameters" = true, "RequesterAnnotation" = true, "AutoApprovalDelayInSeconds" = true, "MaxAssignments" = true, "Title" = true, "Question" = true, "UniqueRequestToken" = true, "AssignmentDurationInSeconds" = true, "AssignmentReviewPolicy" = true, "QualificationRequirements" = true, "HITReviewPolicy" = true, "Keywords" = true, "Reward" = true, "HITLayoutId" = true, "LifetimeInSeconds" = true, "Description" = true, nil }

function M.AssertCreateHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITRequest to be of type 'table'")
	assert(struct["LifetimeInSeconds"], "Expected key LifetimeInSeconds to exist in table")
	assert(struct["AssignmentDurationInSeconds"], "Expected key AssignmentDurationInSeconds to exist in table")
	assert(struct["Reward"], "Expected key Reward to exist in table")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["HITLayoutParameters"] then M.AssertHITLayoutParameterList(struct["HITLayoutParameters"]) end
	if struct["RequesterAnnotation"] then M.AssertString(struct["RequesterAnnotation"]) end
	if struct["AutoApprovalDelayInSeconds"] then M.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	if struct["MaxAssignments"] then M.AssertInteger(struct["MaxAssignments"]) end
	if struct["Title"] then M.AssertString(struct["Title"]) end
	if struct["Question"] then M.AssertString(struct["Question"]) end
	if struct["UniqueRequestToken"] then M.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	if struct["AssignmentDurationInSeconds"] then M.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["AssignmentReviewPolicy"] then M.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["QualificationRequirements"] then M.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["HITReviewPolicy"] then M.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["Keywords"] then M.AssertString(struct["Keywords"]) end
	if struct["Reward"] then M.AssertNumericValue(struct["Reward"]) end
	if struct["HITLayoutId"] then M.AssertEntityId(struct["HITLayoutId"]) end
	if struct["LifetimeInSeconds"] then M.AssertLong(struct["LifetimeInSeconds"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITRequest_keys[k], "CreateHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITRequest
--  
-- @param HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- @param RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- @param AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- @param MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- @param Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- @param UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- @param AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- @param AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet before the Worker is allowed to accept and complete the HIT. </p>
-- @param HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- @param Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- @param Reward [NumericValue] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- @param HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- @param LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- @param Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- Required parameter: LifetimeInSeconds
-- Required parameter: AssignmentDurationInSeconds
-- Required parameter: Reward
-- Required parameter: Title
-- Required parameter: Description
function M.CreateHITRequest(HITLayoutParameters, RequesterAnnotation, AutoApprovalDelayInSeconds, MaxAssignments, Title, Question, UniqueRequestToken, AssignmentDurationInSeconds, AssignmentReviewPolicy, QualificationRequirements, HITReviewPolicy, Keywords, Reward, HITLayoutId, LifetimeInSeconds, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITRequest")
	local t = { 
		["HITLayoutParameters"] = HITLayoutParameters,
		["RequesterAnnotation"] = RequesterAnnotation,
		["AutoApprovalDelayInSeconds"] = AutoApprovalDelayInSeconds,
		["MaxAssignments"] = MaxAssignments,
		["Title"] = Title,
		["Question"] = Question,
		["UniqueRequestToken"] = UniqueRequestToken,
		["AssignmentDurationInSeconds"] = AssignmentDurationInSeconds,
		["AssignmentReviewPolicy"] = AssignmentReviewPolicy,
		["QualificationRequirements"] = QualificationRequirements,
		["HITReviewPolicy"] = HITReviewPolicy,
		["Keywords"] = Keywords,
		["Reward"] = Reward,
		["HITLayoutId"] = HITLayoutId,
		["LifetimeInSeconds"] = LifetimeInSeconds,
		["Description"] = Description,
	}
	M.AssertCreateHITRequest(t)
	return t
end

local ReviewReport_keys = { "ReviewActions" = true, "ReviewResults" = true, nil }

function M.AssertReviewReport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewReport to be of type 'table'")
	if struct["ReviewActions"] then M.AssertReviewActionDetailList(struct["ReviewActions"]) end
	if struct["ReviewResults"] then M.AssertReviewResultDetailList(struct["ReviewResults"]) end
	for k,_ in pairs(struct) do
		assert(ReviewReport_keys[k], "ReviewReport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewReport
-- <p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-- @param ReviewActions [ReviewActionDetailList] <p> A list of ReviewAction objects for each action specified in the Review Policy. </p>
-- @param ReviewResults [ReviewResultDetailList] <p> A list of ReviewResults objects for each action specified in the Review Policy. </p>
function M.ReviewReport(ReviewActions, ReviewResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewReport")
	local t = { 
		["ReviewActions"] = ReviewActions,
		["ReviewResults"] = ReviewResults,
	}
	M.AssertReviewReport(t)
	return t
end

local ReviewActionDetail_keys = { "Status" = true, "ActionName" = true, "TargetType" = true, "TargetId" = true, "ErrorCode" = true, "ActionId" = true, "CompleteTime" = true, "Result" = true, nil }

function M.AssertReviewActionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewActionDetail to be of type 'table'")
	if struct["Status"] then M.AssertReviewActionStatus(struct["Status"]) end
	if struct["ActionName"] then M.AssertString(struct["ActionName"]) end
	if struct["TargetType"] then M.AssertString(struct["TargetType"]) end
	if struct["TargetId"] then M.AssertEntityId(struct["TargetId"]) end
	if struct["ErrorCode"] then M.AssertString(struct["ErrorCode"]) end
	if struct["ActionId"] then M.AssertEntityId(struct["ActionId"]) end
	if struct["CompleteTime"] then M.AssertTimestamp(struct["CompleteTime"]) end
	if struct["Result"] then M.AssertString(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(ReviewActionDetail_keys[k], "ReviewActionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewActionDetail
-- <p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>
-- @param Status [ReviewActionStatus] <p> The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or CANCELLED. </p>
-- @param ActionName [String] <p> The nature of the action itself. The Review Policy is responsible for examining the HIT and Assignments, emitting results, and deciding which other actions will be necessary. </p>
-- @param TargetType [String] <p> The type of object in TargetId.</p>
-- @param TargetId [EntityId] <p> The specific HITId or AssignmentID targeted by the action.</p>
-- @param ErrorCode [String] <p> Present only when the Results have a FAILED Status.</p>
-- @param ActionId [EntityId] <p>The unique identifier for the action.</p>
-- @param CompleteTime [Timestamp] <p> The date when the action was completed.</p>
-- @param Result [String] <p> A description of the outcome of the review.</p>
function M.ReviewActionDetail(Status, ActionName, TargetType, TargetId, ErrorCode, ActionId, CompleteTime, Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewActionDetail")
	local t = { 
		["Status"] = Status,
		["ActionName"] = ActionName,
		["TargetType"] = TargetType,
		["TargetId"] = TargetId,
		["ErrorCode"] = ErrorCode,
		["ActionId"] = ActionId,
		["CompleteTime"] = CompleteTime,
		["Result"] = Result,
	}
	M.AssertReviewActionDetail(t)
	return t
end

local WorkerBlock_keys = { "WorkerId" = true, "Reason" = true, nil }

function M.AssertWorkerBlock(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkerBlock to be of type 'table'")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(WorkerBlock_keys[k], "WorkerBlock contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkerBlock
-- <p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>
-- @param WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- @param Reason [String] <p> A message explaining the reason the Worker was blocked. </p>
function M.WorkerBlock(WorkerId, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkerBlock")
	local t = { 
		["WorkerId"] = WorkerId,
		["Reason"] = Reason,
	}
	M.AssertWorkerBlock(t)
	return t
end

local ListWorkersWithQualificationTypeRequest_keys = { "Status" = true, "NextToken" = true, "MaxResults" = true, "QualificationTypeId" = true, nil }

function M.AssertListWorkersWithQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkersWithQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["Status"] then M.AssertQualificationStatus(struct["Status"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(ListWorkersWithQualificationTypeRequest_keys[k], "ListWorkersWithQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkersWithQualificationTypeRequest
--  
-- @param Status [QualificationStatus] <p> The status of the Qualifications to return. Can be <code>Granted | Revoked</code>. </p>
-- @param NextToken [PaginationToken] <p>Pagination Token</p>
-- @param MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- @param QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualifications to return.</p>
-- Required parameter: QualificationTypeId
function M.ListWorkersWithQualificationTypeRequest(Status, NextToken, MaxResults, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkersWithQualificationTypeRequest")
	local t = { 
		["Status"] = Status,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertListWorkersWithQualificationTypeRequest(t)
	return t
end

local ListWorkerBlocksResponse_keys = { "NumResults" = true, "NextToken" = true, "WorkerBlocks" = true, nil }

function M.AssertListWorkerBlocksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkerBlocksResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["WorkerBlocks"] then M.AssertWorkerBlockList(struct["WorkerBlocks"]) end
	for k,_ in pairs(struct) do
		assert(ListWorkerBlocksResponse_keys[k], "ListWorkerBlocksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkerBlocksResponse
--  
-- @param NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- @param NextToken [PaginationToken]  
-- @param WorkerBlocks [WorkerBlockList] <p> The list of WorkerBlocks, containing the collection of Worker IDs and reasons for blocking.</p>
function M.ListWorkerBlocksResponse(NumResults, NextToken, WorkerBlocks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkerBlocksResponse")
	local t = { 
		["NumResults"] = NumResults,
		["NextToken"] = NextToken,
		["WorkerBlocks"] = WorkerBlocks,
	}
	M.AssertListWorkerBlocksResponse(t)
	return t
end

local DeleteWorkerBlockRequest_keys = { "WorkerId" = true, "Reason" = true, nil }

function M.AssertDeleteWorkerBlockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWorkerBlockRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(DeleteWorkerBlockRequest_keys[k], "DeleteWorkerBlockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWorkerBlockRequest
--  
-- @param WorkerId [CustomerId] <p>The ID of the Worker to unblock.</p>
-- @param Reason [String] <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
-- Required parameter: WorkerId
function M.DeleteWorkerBlockRequest(WorkerId, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWorkerBlockRequest")
	local t = { 
		["WorkerId"] = WorkerId,
		["Reason"] = Reason,
	}
	M.AssertDeleteWorkerBlockRequest(t)
	return t
end

local ListBonusPaymentsRequest_keys = { "AssignmentId" = true, "NextToken" = true, "HITId" = true, "MaxResults" = true, nil }

function M.AssertListBonusPaymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBonusPaymentsRequest to be of type 'table'")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListBonusPaymentsRequest_keys[k], "ListBonusPaymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBonusPaymentsRequest
--  
-- @param AssignmentId [EntityId] <p>The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- @param NextToken [PaginationToken] <p>Pagination token</p>
-- @param HITId [EntityId] <p>The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- @param MaxResults [ResultSize]  
function M.ListBonusPaymentsRequest(AssignmentId, NextToken, HITId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBonusPaymentsRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["NextToken"] = NextToken,
		["HITId"] = HITId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListBonusPaymentsRequest(t)
	return t
end

local ListBonusPaymentsResponse_keys = { "NumResults" = true, "NextToken" = true, "BonusPayments" = true, nil }

function M.AssertListBonusPaymentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBonusPaymentsResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["BonusPayments"] then M.AssertBonusPaymentList(struct["BonusPayments"]) end
	for k,_ in pairs(struct) do
		assert(ListBonusPaymentsResponse_keys[k], "ListBonusPaymentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBonusPaymentsResponse
--  
-- @param NumResults [Integer] <p>The number of bonus payments on this page in the filtered results list, equivalent to the number of bonus payments being returned by this call. </p>
-- @param NextToken [PaginationToken]  
-- @param BonusPayments [BonusPaymentList] <p>A successful request to the ListBonusPayments operation returns a list of BonusPayment objects. </p>
function M.ListBonusPaymentsResponse(NumResults, NextToken, BonusPayments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBonusPaymentsResponse")
	local t = { 
		["NumResults"] = NumResults,
		["NextToken"] = NextToken,
		["BonusPayments"] = BonusPayments,
	}
	M.AssertListBonusPaymentsResponse(t)
	return t
end

local CreateQualificationTypeResponse_keys = { "QualificationType" = true, nil }

function M.AssertCreateQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then M.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(CreateQualificationTypeResponse_keys[k], "CreateQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQualificationTypeResponse
--  
-- @param QualificationType [QualificationType] <p>The created Qualification type, returned as a QualificationType data structure.</p>
function M.CreateQualificationTypeResponse(QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQualificationTypeResponse")
	local t = { 
		["QualificationType"] = QualificationType,
	}
	M.AssertCreateQualificationTypeResponse(t)
	return t
end

local CreateHITTypeRequest_keys = { "Description" = true, "Title" = true, "AssignmentDurationInSeconds" = true, "QualificationRequirements" = true, "Keywords" = true, "Reward" = true, "AutoApprovalDelayInSeconds" = true, nil }

function M.AssertCreateHITTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITTypeRequest to be of type 'table'")
	assert(struct["AssignmentDurationInSeconds"], "Expected key AssignmentDurationInSeconds to exist in table")
	assert(struct["Reward"], "Expected key Reward to exist in table")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Title"] then M.AssertString(struct["Title"]) end
	if struct["AssignmentDurationInSeconds"] then M.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["QualificationRequirements"] then M.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["Keywords"] then M.AssertString(struct["Keywords"]) end
	if struct["Reward"] then M.AssertNumericValue(struct["Reward"]) end
	if struct["AutoApprovalDelayInSeconds"] then M.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITTypeRequest_keys[k], "CreateHITTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITTypeRequest
--  
-- @param Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- @param Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- @param AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- @param QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet before the Worker is allowed to accept and complete the HIT. </p>
-- @param Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- @param Reward [NumericValue] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- @param AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- Required parameter: AssignmentDurationInSeconds
-- Required parameter: Reward
-- Required parameter: Title
-- Required parameter: Description
function M.CreateHITTypeRequest(Description, Title, AssignmentDurationInSeconds, QualificationRequirements, Keywords, Reward, AutoApprovalDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITTypeRequest")
	local t = { 
		["Description"] = Description,
		["Title"] = Title,
		["AssignmentDurationInSeconds"] = AssignmentDurationInSeconds,
		["QualificationRequirements"] = QualificationRequirements,
		["Keywords"] = Keywords,
		["Reward"] = Reward,
		["AutoApprovalDelayInSeconds"] = AutoApprovalDelayInSeconds,
	}
	M.AssertCreateHITTypeRequest(t)
	return t
end

local CreateHITResponse_keys = { "HIT" = true, nil }

function M.AssertCreateHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITResponse to be of type 'table'")
	if struct["HIT"] then M.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITResponse_keys[k], "CreateHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITResponse
--  
-- @param HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
function M.CreateHITResponse(HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITResponse")
	local t = { 
		["HIT"] = HIT,
	}
	M.AssertCreateHITResponse(t)
	return t
end

local RejectAssignmentRequest_keys = { "AssignmentId" = true, "RequesterFeedback" = true, nil }

function M.AssertRejectAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["RequesterFeedback"] then M.AssertString(struct["RequesterFeedback"]) end
	for k,_ in pairs(struct) do
		assert(RejectAssignmentRequest_keys[k], "RejectAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectAssignmentRequest
--  
-- @param AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- @param RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- Required parameter: AssignmentId
function M.RejectAssignmentRequest(AssignmentId, RequesterFeedback, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectAssignmentRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["RequesterFeedback"] = RequesterFeedback,
	}
	M.AssertRejectAssignmentRequest(t)
	return t
end

local UpdateNotificationSettingsRequest_keys = { "Active" = true, "HITTypeId" = true, "Notification" = true, nil }

function M.AssertUpdateNotificationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationSettingsRequest to be of type 'table'")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	if struct["Active"] then M.AssertBoolean(struct["Active"]) end
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	if struct["Notification"] then M.AssertNotificationSpecification(struct["Notification"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNotificationSettingsRequest_keys[k], "UpdateNotificationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationSettingsRequest
--  
-- @param Active [Boolean] <p> Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed. </p>
-- @param HITTypeId [EntityId] <p> The ID of the HIT type whose notification specification is being updated. </p>
-- @param Notification [NotificationSpecification] <p> The notification specification for the HIT type. </p>
-- Required parameter: HITTypeId
function M.UpdateNotificationSettingsRequest(Active, HITTypeId, Notification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationSettingsRequest")
	local t = { 
		["Active"] = Active,
		["HITTypeId"] = HITTypeId,
		["Notification"] = Notification,
	}
	M.AssertUpdateNotificationSettingsRequest(t)
	return t
end

local Qualification_keys = { "Status" = true, "QualificationTypeId" = true, "WorkerId" = true, "LocaleValue" = true, "GrantTime" = true, "IntegerValue" = true, nil }

function M.AssertQualification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Qualification to be of type 'table'")
	if struct["Status"] then M.AssertQualificationStatus(struct["Status"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["LocaleValue"] then M.AssertLocale(struct["LocaleValue"]) end
	if struct["GrantTime"] then M.AssertTimestamp(struct["GrantTime"]) end
	if struct["IntegerValue"] then M.AssertInteger(struct["IntegerValue"]) end
	for k,_ in pairs(struct) do
		assert(Qualification_keys[k], "Qualification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Qualification
-- <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
-- @param Status [QualificationStatus] <p> The status of the Qualification. Valid values are Granted | Revoked.</p>
-- @param QualificationTypeId [EntityId] <p> The ID of the Qualification type for the Qualification.</p>
-- @param WorkerId [CustomerId] <p> The ID of the Worker who possesses the Qualification. </p>
-- @param LocaleValue [Locale] <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
-- @param GrantTime [Timestamp] <p> The date and time the Qualification was granted to the Worker. If the Worker's Qualification was revoked, and then re-granted based on a new Qualification request, GrantTime is the date and time of the last call to the AcceptQualificationRequest operation.</p>
-- @param IntegerValue [Integer] <p> The value (score) of the Qualification, if the Qualification has an integer value.</p>
function M.Qualification(Status, QualificationTypeId, WorkerId, LocaleValue, GrantTime, IntegerValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Qualification")
	local t = { 
		["Status"] = Status,
		["QualificationTypeId"] = QualificationTypeId,
		["WorkerId"] = WorkerId,
		["LocaleValue"] = LocaleValue,
		["GrantTime"] = GrantTime,
		["IntegerValue"] = IntegerValue,
	}
	M.AssertQualification(t)
	return t
end

local UpdateExpirationForHITResponse_keys = { nil }

function M.AssertUpdateExpirationForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateExpirationForHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateExpirationForHITResponse_keys[k], "UpdateExpirationForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateExpirationForHITResponse
--  
function M.UpdateExpirationForHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateExpirationForHITResponse")
	local t = { 
	}
	M.AssertUpdateExpirationForHITResponse(t)
	return t
end

local GetQualificationScoreResponse_keys = { "Qualification" = true, nil }

function M.AssertGetQualificationScoreResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationScoreResponse to be of type 'table'")
	if struct["Qualification"] then M.AssertQualification(struct["Qualification"]) end
	for k,_ in pairs(struct) do
		assert(GetQualificationScoreResponse_keys[k], "GetQualificationScoreResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationScoreResponse
--  
-- @param Qualification [Qualification] <p> The Qualification data structure of the Qualification assigned to a user, including the Qualification type and the value (score). </p>
function M.GetQualificationScoreResponse(Qualification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationScoreResponse")
	local t = { 
		["Qualification"] = Qualification,
	}
	M.AssertGetQualificationScoreResponse(t)
	return t
end

local AcceptQualificationRequestResponse_keys = { nil }

function M.AssertAcceptQualificationRequestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptQualificationRequestResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AcceptQualificationRequestResponse_keys[k], "AcceptQualificationRequestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptQualificationRequestResponse
--  
function M.AcceptQualificationRequestResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptQualificationRequestResponse")
	local t = { 
	}
	M.AssertAcceptQualificationRequestResponse(t)
	return t
end

local BonusPayment_keys = { "AssignmentId" = true, "WorkerId" = true, "BonusAmount" = true, "GrantTime" = true, "Reason" = true, nil }

function M.AssertBonusPayment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BonusPayment to be of type 'table'")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then M.AssertNumericValue(struct["BonusAmount"]) end
	if struct["GrantTime"] then M.AssertTimestamp(struct["GrantTime"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(BonusPayment_keys[k], "BonusPayment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BonusPayment
-- <p>An object representing a Bonus payment paid to a Worker.</p>
-- @param AssignmentId [EntityId] <p>The ID of the assignment associated with this bonus payment.</p>
-- @param WorkerId [CustomerId] <p>The ID of the Worker to whom the bonus was paid.</p>
-- @param BonusAmount [NumericValue] <p>An object representing a Bonus payment paid to a Worker.</p>
-- @param GrantTime [Timestamp] <p>The date and time of when the bonus was granted.</p>
-- @param Reason [String] <p>The Reason text given when the bonus was granted, if any.</p>
function M.BonusPayment(AssignmentId, WorkerId, BonusAmount, GrantTime, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BonusPayment")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["WorkerId"] = WorkerId,
		["BonusAmount"] = BonusAmount,
		["GrantTime"] = GrantTime,
		["Reason"] = Reason,
	}
	M.AssertBonusPayment(t)
	return t
end

local RejectQualificationRequestRequest_keys = { "Reason" = true, "QualificationRequestId" = true, nil }

function M.AssertRejectQualificationRequestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectQualificationRequestRequest to be of type 'table'")
	assert(struct["QualificationRequestId"], "Expected key QualificationRequestId to exist in table")
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	if struct["QualificationRequestId"] then M.AssertString(struct["QualificationRequestId"]) end
	for k,_ in pairs(struct) do
		assert(RejectQualificationRequestRequest_keys[k], "RejectQualificationRequestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectQualificationRequestRequest
--  
-- @param Reason [String] <p>A text message explaining why the request was rejected, to be shown to the Worker who made the request.</p>
-- @param QualificationRequestId [String] <p> The ID of the Qualification request, as returned by the <code>ListQualificationRequests</code> operation. </p>
-- Required parameter: QualificationRequestId
function M.RejectQualificationRequestRequest(Reason, QualificationRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectQualificationRequestRequest")
	local t = { 
		["Reason"] = Reason,
		["QualificationRequestId"] = QualificationRequestId,
	}
	M.AssertRejectQualificationRequestRequest(t)
	return t
end

local DisassociateQualificationFromWorkerResponse_keys = { nil }

function M.AssertDisassociateQualificationFromWorkerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateQualificationFromWorkerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateQualificationFromWorkerResponse_keys[k], "DisassociateQualificationFromWorkerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateQualificationFromWorkerResponse
--  
function M.DisassociateQualificationFromWorkerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateQualificationFromWorkerResponse")
	local t = { 
	}
	M.AssertDisassociateQualificationFromWorkerResponse(t)
	return t
end

local QualificationType_keys = { "AutoGranted" = true, "Description" = true, "QualificationTypeId" = true, "AutoGrantedValue" = true, "CreationTime" = true, "TestDurationInSeconds" = true, "QualificationTypeStatus" = true, "Test" = true, "AnswerKey" = true, "IsRequestable" = true, "Keywords" = true, "RetryDelayInSeconds" = true, "Name" = true, nil }

function M.AssertQualificationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationType to be of type 'table'")
	if struct["AutoGranted"] then M.AssertBoolean(struct["AutoGranted"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["AutoGrantedValue"] then M.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["TestDurationInSeconds"] then M.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then M.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["Test"] then M.AssertString(struct["Test"]) end
	if struct["AnswerKey"] then M.AssertString(struct["AnswerKey"]) end
	if struct["IsRequestable"] then M.AssertBoolean(struct["IsRequestable"]) end
	if struct["Keywords"] then M.AssertString(struct["Keywords"]) end
	if struct["RetryDelayInSeconds"] then M.AssertLong(struct["RetryDelayInSeconds"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(QualificationType_keys[k], "QualificationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationType
-- <p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>
-- @param AutoGranted [Boolean] <p>Specifies that requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Valid values are True | False.</p>
-- @param Description [String] <p> A long description for the Qualification type. </p>
-- @param QualificationTypeId [EntityId] <p> A unique identifier for the Qualification type. A Qualification type is given a Qualification type ID when you call the CreateQualificationType operation. </p>
-- @param AutoGrantedValue [Integer] <p> The Qualification integer value to use for automatically granted Qualifications, if AutoGranted is true. This is 1 by default. </p>
-- @param CreationTime [Timestamp] <p> The date and time the Qualification type was created. </p>
-- @param TestDurationInSeconds [Long] <p> The amount of time, in seconds, given to a Worker to complete the Qualification test, beginning from the time the Worker requests the Qualification. </p>
-- @param QualificationTypeStatus [QualificationTypeStatus] <p> The status of the Qualification type. A Qualification type's status determines if users can apply to receive a Qualification of this type, and if HITs can be created with requirements based on this type. Valid values are Active | Inactive. </p>
-- @param Test [String] <p> The questions for a Qualification test associated with this Qualification type that a user can take to obtain a Qualification of this type. This parameter must be specified if AnswerKey is present. A Qualification type cannot have both a specified Test parameter and an AutoGranted value of true. </p>
-- @param AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter.</p>
-- @param IsRequestable [Boolean] <p> Specifies whether the Qualification type is one that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test. This value is False for Qualifications assigned automatically by the system. Valid values are True | False. </p>
-- @param Keywords [String] <p> One or more words or phrases that describe theQualification type, separated by commas. The Keywords make the type easier to find using a search. </p>
-- @param RetryDelayInSeconds [Long] <p> The amount of time, in seconds, Workers must wait after taking the Qualification test before they can take it again. Workers can take a Qualification test multiple times if they were not granted the Qualification from a previous attempt, or if the test offers a gradient score and they want a better score. If not specified, retries are disabled and Workers can request a Qualification only once. </p>
-- @param Name [String] <p> The name of the Qualification type. The type name is used to identify the type, and to find the type using a Qualification type search. </p>
function M.QualificationType(AutoGranted, Description, QualificationTypeId, AutoGrantedValue, CreationTime, TestDurationInSeconds, QualificationTypeStatus, Test, AnswerKey, IsRequestable, Keywords, RetryDelayInSeconds, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QualificationType")
	local t = { 
		["AutoGranted"] = AutoGranted,
		["Description"] = Description,
		["QualificationTypeId"] = QualificationTypeId,
		["AutoGrantedValue"] = AutoGrantedValue,
		["CreationTime"] = CreationTime,
		["TestDurationInSeconds"] = TestDurationInSeconds,
		["QualificationTypeStatus"] = QualificationTypeStatus,
		["Test"] = Test,
		["AnswerKey"] = AnswerKey,
		["IsRequestable"] = IsRequestable,
		["Keywords"] = Keywords,
		["RetryDelayInSeconds"] = RetryDelayInSeconds,
		["Name"] = Name,
	}
	M.AssertQualificationType(t)
	return t
end

local UpdateHITReviewStatusRequest_keys = { "Revert" = true, "HITId" = true, nil }

function M.AssertUpdateHITReviewStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITReviewStatusRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["Revert"] then M.AssertBoolean(struct["Revert"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHITReviewStatusRequest_keys[k], "UpdateHITReviewStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITReviewStatusRequest
--  
-- @param Revert [Boolean] <p> Specifies how to update the HIT status. Default is <code>False</code>. </p> <ul> <li> <p> Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code> </p> </li> <li> <p> Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code> </p> </li> </ul>
-- @param HITId [EntityId] <p> The ID of the HIT to update. </p>
-- Required parameter: HITId
function M.UpdateHITReviewStatusRequest(Revert, HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITReviewStatusRequest")
	local t = { 
		["Revert"] = Revert,
		["HITId"] = HITId,
	}
	M.AssertUpdateHITReviewStatusRequest(t)
	return t
end

local ListQualificationRequestsResponse_keys = { "NumResults" = true, "QualificationRequests" = true, "NextToken" = true, nil }

function M.AssertListQualificationRequestsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationRequestsResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["QualificationRequests"] then M.AssertQualificationRequestList(struct["QualificationRequests"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListQualificationRequestsResponse_keys[k], "ListQualificationRequestsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationRequestsResponse
--  
-- @param NumResults [Integer] <p>The number of Qualification requests on this page in the filtered results list, equivalent to the number of Qualification requests being returned by this call.</p>
-- @param QualificationRequests [QualificationRequestList] <p>The Qualification request. The response includes one QualificationRequest element for each Qualification request returned by the query.</p>
-- @param NextToken [PaginationToken]  
function M.ListQualificationRequestsResponse(NumResults, QualificationRequests, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationRequestsResponse")
	local t = { 
		["NumResults"] = NumResults,
		["QualificationRequests"] = QualificationRequests,
		["NextToken"] = NextToken,
	}
	M.AssertListQualificationRequestsResponse(t)
	return t
end

local PolicyParameter_keys = { "MapEntries" = true, "Values" = true, "Key" = true, nil }

function M.AssertPolicyParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyParameter to be of type 'table'")
	if struct["MapEntries"] then M.AssertParameterMapEntryList(struct["MapEntries"]) end
	if struct["Values"] then M.AssertStringList(struct["Values"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(PolicyParameter_keys[k], "PolicyParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyParameter
-- <p> Name of the parameter from the Review policy. </p>
-- @param MapEntries [ParameterMapEntryList] <p> List of ParameterMapEntry objects. </p>
-- @param Values [StringList] <p> The list of values of the Parameter</p>
-- @param Key [String] <p> Name of the parameter from the list of Review Polices. </p>
function M.PolicyParameter(MapEntries, Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyParameter")
	local t = { 
		["MapEntries"] = MapEntries,
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertPolicyParameter(t)
	return t
end

local ReviewResultDetail_keys = { "QuestionId" = true, "SubjectType" = true, "Value" = true, "ActionId" = true, "Key" = true, "SubjectId" = true, nil }

function M.AssertReviewResultDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewResultDetail to be of type 'table'")
	if struct["QuestionId"] then M.AssertEntityId(struct["QuestionId"]) end
	if struct["SubjectType"] then M.AssertString(struct["SubjectType"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["ActionId"] then M.AssertEntityId(struct["ActionId"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	if struct["SubjectId"] then M.AssertEntityId(struct["SubjectId"]) end
	for k,_ in pairs(struct) do
		assert(ReviewResultDetail_keys[k], "ReviewResultDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewResultDetail
-- <p> This data structure is returned multiple times for each result specified in the Review Policy. </p>
-- @param QuestionId [EntityId] <p> Specifies the QuestionId the result is describing. Depending on whether the TargetType is a HIT or Assignment this results could specify multiple values. If TargetType is HIT and QuestionId is absent, then the result describes results of the HIT, including the HIT agreement score. If ObjectType is Assignment and QuestionId is absent, then the result describes the Worker's performance on the HIT. </p>
-- @param SubjectType [String] <p> The type of the object from the SubjectId field.</p>
-- @param Value [String] <p> The values of Key provided by the review policies you have selected. </p>
-- @param ActionId [EntityId] <p> A unique identifier of the Review action result. </p>
-- @param Key [String] <p> Key identifies the particular piece of reviewed information. </p>
-- @param SubjectId [EntityId] <p>The HITID or AssignmentId about which this result was taken. Note that HIT-level Review Policies will often emit results about both the HIT itself and its Assignments, while Assignment-level review policies generally only emit results about the Assignment itself. </p>
function M.ReviewResultDetail(QuestionId, SubjectType, Value, ActionId, Key, SubjectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewResultDetail")
	local t = { 
		["QuestionId"] = QuestionId,
		["SubjectType"] = SubjectType,
		["Value"] = Value,
		["ActionId"] = ActionId,
		["Key"] = Key,
		["SubjectId"] = SubjectId,
	}
	M.AssertReviewResultDetail(t)
	return t
end

local SendBonusResponse_keys = { nil }

function M.AssertSendBonusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBonusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SendBonusResponse_keys[k], "SendBonusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBonusResponse
--  
function M.SendBonusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBonusResponse")
	local t = { 
	}
	M.AssertSendBonusResponse(t)
	return t
end

local DeleteHITRequest_keys = { "HITId" = true, nil }

function M.AssertDeleteHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHITRequest_keys[k], "DeleteHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHITRequest
--  
-- @param HITId [EntityId] <p>The ID of the HIT to be deleted.</p>
-- Required parameter: HITId
function M.DeleteHITRequest(HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHITRequest")
	local t = { 
		["HITId"] = HITId,
	}
	M.AssertDeleteHITRequest(t)
	return t
end

local CreateWorkerBlockResponse_keys = { nil }

function M.AssertCreateWorkerBlockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkerBlockResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateWorkerBlockResponse_keys[k], "CreateWorkerBlockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkerBlockResponse
--  
function M.CreateWorkerBlockResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkerBlockResponse")
	local t = { 
	}
	M.AssertCreateWorkerBlockResponse(t)
	return t
end

local DeleteQualificationTypeRequest_keys = { "QualificationTypeId" = true, nil }

function M.AssertDeleteQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteQualificationTypeRequest_keys[k], "DeleteQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQualificationTypeRequest
--  
-- @param QualificationTypeId [EntityId] <p>The ID of the QualificationType to dispose.</p>
-- Required parameter: QualificationTypeId
function M.DeleteQualificationTypeRequest(QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQualificationTypeRequest")
	local t = { 
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertDeleteQualificationTypeRequest(t)
	return t
end

local CreateAdditionalAssignmentsForHITResponse_keys = { nil }

function M.AssertCreateAdditionalAssignmentsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAdditionalAssignmentsForHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateAdditionalAssignmentsForHITResponse_keys[k], "CreateAdditionalAssignmentsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAdditionalAssignmentsForHITResponse
--  
function M.CreateAdditionalAssignmentsForHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAdditionalAssignmentsForHITResponse")
	local t = { 
	}
	M.AssertCreateAdditionalAssignmentsForHITResponse(t)
	return t
end

local ListReviewPolicyResultsForHITResponse_keys = { "HITReviewReport" = true, "AssignmentReviewReport" = true, "AssignmentReviewPolicy" = true, "HITId" = true, "HITReviewPolicy" = true, "NextToken" = true, nil }

function M.AssertListReviewPolicyResultsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReviewPolicyResultsForHITResponse to be of type 'table'")
	if struct["HITReviewReport"] then M.AssertReviewReport(struct["HITReviewReport"]) end
	if struct["AssignmentReviewReport"] then M.AssertReviewReport(struct["AssignmentReviewReport"]) end
	if struct["AssignmentReviewPolicy"] then M.AssertReviewPolicy(struct["AssignmentReviewPolicy"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["HITReviewPolicy"] then M.AssertReviewPolicy(struct["HITReviewPolicy"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListReviewPolicyResultsForHITResponse_keys[k], "ListReviewPolicyResultsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReviewPolicyResultsForHITResponse
--  
-- @param HITReviewReport [ReviewReport] <p>Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-- @param AssignmentReviewReport [ReviewReport] <p> Contains both ReviewResult and ReviewAction elements for an Assignment. </p>
-- @param AssignmentReviewPolicy [ReviewPolicy] <p> The name of the Assignment-level Review Policy. This contains only the PolicyName element. </p>
-- @param HITId [EntityId] <p>The HITId of the HIT for which results have been returned.</p>
-- @param HITReviewPolicy [ReviewPolicy] <p>The name of the HIT-level Review Policy. This contains only the PolicyName element.</p>
-- @param NextToken [PaginationToken]  
function M.ListReviewPolicyResultsForHITResponse(HITReviewReport, AssignmentReviewReport, AssignmentReviewPolicy, HITId, HITReviewPolicy, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReviewPolicyResultsForHITResponse")
	local t = { 
		["HITReviewReport"] = HITReviewReport,
		["AssignmentReviewReport"] = AssignmentReviewReport,
		["AssignmentReviewPolicy"] = AssignmentReviewPolicy,
		["HITId"] = HITId,
		["HITReviewPolicy"] = HITReviewPolicy,
		["NextToken"] = NextToken,
	}
	M.AssertListReviewPolicyResultsForHITResponse(t)
	return t
end

local UpdateQualificationTypeRequest_keys = { "AutoGranted" = true, "Description" = true, "QualificationTypeId" = true, "TestDurationInSeconds" = true, "QualificationTypeStatus" = true, "AnswerKey" = true, "AutoGrantedValue" = true, "Test" = true, "RetryDelayInSeconds" = true, nil }

function M.AssertUpdateQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["AutoGranted"] then M.AssertBoolean(struct["AutoGranted"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	if struct["TestDurationInSeconds"] then M.AssertLong(struct["TestDurationInSeconds"]) end
	if struct["QualificationTypeStatus"] then M.AssertQualificationTypeStatus(struct["QualificationTypeStatus"]) end
	if struct["AnswerKey"] then M.AssertString(struct["AnswerKey"]) end
	if struct["AutoGrantedValue"] then M.AssertInteger(struct["AutoGrantedValue"]) end
	if struct["Test"] then M.AssertString(struct["Test"]) end
	if struct["RetryDelayInSeconds"] then M.AssertLong(struct["RetryDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(UpdateQualificationTypeRequest_keys[k], "UpdateQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQualificationTypeRequest
--  
-- @param AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- @param Description [String] <p>The new description of the Qualification type.</p>
-- @param QualificationTypeId [EntityId] <p>The ID of the Qualification type to update.</p>
-- @param TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- @param QualificationTypeStatus [QualificationTypeStatus] <p>The new status of the Qualification type - Active | Inactive</p>
-- @param AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
-- @param AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- @param Test [String] <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- @param RetryDelayInSeconds [Long] <p>The amount of time, in seconds, that Workers must wait after requesting a Qualification of the specified Qualification type before they can retry the Qualification request. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must dispose of the existing retry-enabled Qualification type using DisposeQualificationType and then create a new Qualification type with retries disabled using CreateQualificationType.</p>
-- Required parameter: QualificationTypeId
function M.UpdateQualificationTypeRequest(AutoGranted, Description, QualificationTypeId, TestDurationInSeconds, QualificationTypeStatus, AnswerKey, AutoGrantedValue, Test, RetryDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateQualificationTypeRequest")
	local t = { 
		["AutoGranted"] = AutoGranted,
		["Description"] = Description,
		["QualificationTypeId"] = QualificationTypeId,
		["TestDurationInSeconds"] = TestDurationInSeconds,
		["QualificationTypeStatus"] = QualificationTypeStatus,
		["AnswerKey"] = AnswerKey,
		["AutoGrantedValue"] = AutoGrantedValue,
		["Test"] = Test,
		["RetryDelayInSeconds"] = RetryDelayInSeconds,
	}
	M.AssertUpdateQualificationTypeRequest(t)
	return t
end

local CreateAdditionalAssignmentsForHITRequest_keys = { "NumberOfAdditionalAssignments" = true, "HITId" = true, "UniqueRequestToken" = true, nil }

function M.AssertCreateAdditionalAssignmentsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAdditionalAssignmentsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["NumberOfAdditionalAssignments"] then M.AssertInteger(struct["NumberOfAdditionalAssignments"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["UniqueRequestToken"] then M.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateAdditionalAssignmentsForHITRequest_keys[k], "CreateAdditionalAssignmentsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAdditionalAssignmentsForHITRequest
--  
-- @param NumberOfAdditionalAssignments [Integer] <p>The number of additional assignments to request for this HIT.</p>
-- @param HITId [EntityId] <p>The ID of the HIT to extend.</p>
-- @param UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request, which allows you to retry the call on error without extending the HIT multiple times. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the extend HIT already exists in the system from a previous call using the same <code>UniqueRequestToken</code>, subsequent calls will return an error with a message containing the request ID. </p>
-- Required parameter: HITId
function M.CreateAdditionalAssignmentsForHITRequest(NumberOfAdditionalAssignments, HITId, UniqueRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAdditionalAssignmentsForHITRequest")
	local t = { 
		["NumberOfAdditionalAssignments"] = NumberOfAdditionalAssignments,
		["HITId"] = HITId,
		["UniqueRequestToken"] = UniqueRequestToken,
	}
	M.AssertCreateAdditionalAssignmentsForHITRequest(t)
	return t
end

local GetAccountBalanceResponse_keys = { "AvailableBalance" = true, "OnHoldBalance" = true, nil }

function M.AssertGetAccountBalanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountBalanceResponse to be of type 'table'")
	if struct["AvailableBalance"] then M.AssertNumericValue(struct["AvailableBalance"]) end
	if struct["OnHoldBalance"] then M.AssertNumericValue(struct["OnHoldBalance"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountBalanceResponse_keys[k], "GetAccountBalanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountBalanceResponse
--  
-- @param AvailableBalance [NumericValue]  
-- @param OnHoldBalance [NumericValue]  
function M.GetAccountBalanceResponse(AvailableBalance, OnHoldBalance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountBalanceResponse")
	local t = { 
		["AvailableBalance"] = AvailableBalance,
		["OnHoldBalance"] = OnHoldBalance,
	}
	M.AssertGetAccountBalanceResponse(t)
	return t
end

local UpdateExpirationForHITRequest_keys = { "HITId" = true, "ExpireAt" = true, nil }

function M.AssertUpdateExpirationForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateExpirationForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["ExpireAt"] then M.AssertTimestamp(struct["ExpireAt"]) end
	for k,_ in pairs(struct) do
		assert(UpdateExpirationForHITRequest_keys[k], "UpdateExpirationForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateExpirationForHITRequest
--  
-- @param HITId [EntityId] <p> The HIT to update. </p>
-- @param ExpireAt [Timestamp] <p> The date and time at which you want the HIT to expire </p>
-- Required parameter: HITId
function M.UpdateExpirationForHITRequest(HITId, ExpireAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateExpirationForHITRequest")
	local t = { 
		["HITId"] = HITId,
		["ExpireAt"] = ExpireAt,
	}
	M.AssertUpdateExpirationForHITRequest(t)
	return t
end

local ServiceFault_keys = { "Message" = true, "TurkErrorCode" = true, nil }

function M.AssertServiceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFault to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["TurkErrorCode"] then M.AssertTurkErrorCode(struct["TurkErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(ServiceFault_keys[k], "ServiceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFault
-- <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
-- @param Message [ExceptionMessage] <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
-- @param TurkErrorCode [TurkErrorCode] <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
function M.ServiceFault(Message, TurkErrorCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFault")
	local t = { 
		["Message"] = Message,
		["TurkErrorCode"] = TurkErrorCode,
	}
	M.AssertServiceFault(t)
	return t
end

local DeleteHITResponse_keys = { nil }

function M.AssertDeleteHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHITResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteHITResponse_keys[k], "DeleteHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHITResponse
--  
function M.DeleteHITResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHITResponse")
	local t = { 
	}
	M.AssertDeleteHITResponse(t)
	return t
end

local DeleteQualificationTypeResponse_keys = { nil }

function M.AssertDeleteQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQualificationTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteQualificationTypeResponse_keys[k], "DeleteQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQualificationTypeResponse
--  
function M.DeleteQualificationTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQualificationTypeResponse")
	local t = { 
	}
	M.AssertDeleteQualificationTypeResponse(t)
	return t
end

local RejectQualificationRequestResponse_keys = { nil }

function M.AssertRejectQualificationRequestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectQualificationRequestResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RejectQualificationRequestResponse_keys[k], "RejectQualificationRequestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectQualificationRequestResponse
--  
function M.RejectQualificationRequestResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectQualificationRequestResponse")
	local t = { 
	}
	M.AssertRejectQualificationRequestResponse(t)
	return t
end

local UpdateQualificationTypeResponse_keys = { "QualificationType" = true, nil }

function M.AssertUpdateQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then M.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(UpdateQualificationTypeResponse_keys[k], "UpdateQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQualificationTypeResponse
--  
-- @param QualificationType [QualificationType] <p> Contains a QualificationType data structure.</p>
function M.UpdateQualificationTypeResponse(QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateQualificationTypeResponse")
	local t = { 
		["QualificationType"] = QualificationType,
	}
	M.AssertUpdateQualificationTypeResponse(t)
	return t
end

local UpdateNotificationSettingsResponse_keys = { nil }

function M.AssertUpdateNotificationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateNotificationSettingsResponse_keys[k], "UpdateNotificationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationSettingsResponse
--  
function M.UpdateNotificationSettingsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationSettingsResponse")
	local t = { 
	}
	M.AssertUpdateNotificationSettingsResponse(t)
	return t
end

local DeleteWorkerBlockResponse_keys = { nil }

function M.AssertDeleteWorkerBlockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWorkerBlockResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteWorkerBlockResponse_keys[k], "DeleteWorkerBlockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWorkerBlockResponse
--  
function M.DeleteWorkerBlockResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteWorkerBlockResponse")
	local t = { 
	}
	M.AssertDeleteWorkerBlockResponse(t)
	return t
end

local GetQualificationTypeResponse_keys = { "QualificationType" = true, nil }

function M.AssertGetQualificationTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQualificationTypeResponse to be of type 'table'")
	if struct["QualificationType"] then M.AssertQualificationType(struct["QualificationType"]) end
	for k,_ in pairs(struct) do
		assert(GetQualificationTypeResponse_keys[k], "GetQualificationTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQualificationTypeResponse
--  
-- @param QualificationType [QualificationType] <p> The returned Qualification Type</p>
function M.GetQualificationTypeResponse(QualificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQualificationTypeResponse")
	local t = { 
		["QualificationType"] = QualificationType,
	}
	M.AssertGetQualificationTypeResponse(t)
	return t
end

local ListHITsResponse_keys = { "NumResults" = true, "HITs" = true, "NextToken" = true, nil }

function M.AssertListHITsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["HITs"] then M.AssertHITList(struct["HITs"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHITsResponse_keys[k], "ListHITsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsResponse
--  
-- @param NumResults [Integer] <p>The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.</p>
-- @param HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- @param NextToken [PaginationToken]  
function M.ListHITsResponse(NumResults, HITs, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsResponse")
	local t = { 
		["NumResults"] = NumResults,
		["HITs"] = HITs,
		["NextToken"] = NextToken,
	}
	M.AssertListHITsResponse(t)
	return t
end

local RejectAssignmentResponse_keys = { nil }

function M.AssertRejectAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectAssignmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RejectAssignmentResponse_keys[k], "RejectAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectAssignmentResponse
--  
function M.RejectAssignmentResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectAssignmentResponse")
	local t = { 
	}
	M.AssertRejectAssignmentResponse(t)
	return t
end

local UpdateHITTypeOfHITRequest_keys = { "HITTypeId" = true, "HITId" = true, nil }

function M.AssertUpdateHITTypeOfHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHITTypeOfHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	assert(struct["HITTypeId"], "Expected key HITTypeId to exist in table")
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHITTypeOfHITRequest_keys[k], "UpdateHITTypeOfHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHITTypeOfHITRequest
--  
-- @param HITTypeId [EntityId] <p>The ID of the new HIT type.</p>
-- @param HITId [EntityId] <p>The HIT to update.</p>
-- Required parameter: HITId
-- Required parameter: HITTypeId
function M.UpdateHITTypeOfHITRequest(HITTypeId, HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHITTypeOfHITRequest")
	local t = { 
		["HITTypeId"] = HITTypeId,
		["HITId"] = HITId,
	}
	M.AssertUpdateHITTypeOfHITRequest(t)
	return t
end

local GetAssignmentResponse_keys = { "Assignment" = true, "HIT" = true, nil }

function M.AssertGetAssignmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssignmentResponse to be of type 'table'")
	if struct["Assignment"] then M.AssertAssignment(struct["Assignment"]) end
	if struct["HIT"] then M.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(GetAssignmentResponse_keys[k], "GetAssignmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssignmentResponse
--  
-- @param Assignment [Assignment] <p> The assignment. The response includes one Assignment element. </p>
-- @param HIT [HIT] <p> The HIT associated with this assignment. The response includes one HIT element.</p>
function M.GetAssignmentResponse(Assignment, HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssignmentResponse")
	local t = { 
		["Assignment"] = Assignment,
		["HIT"] = HIT,
	}
	M.AssertGetAssignmentResponse(t)
	return t
end

local ListQualificationTypesRequest_keys = { "Query" = true, "MustBeOwnedByCaller" = true, "NextToken" = true, "MaxResults" = true, "MustBeRequestable" = true, nil }

function M.AssertListQualificationTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQualificationTypesRequest to be of type 'table'")
	assert(struct["MustBeRequestable"], "Expected key MustBeRequestable to exist in table")
	if struct["Query"] then M.AssertString(struct["Query"]) end
	if struct["MustBeOwnedByCaller"] then M.AssertBoolean(struct["MustBeOwnedByCaller"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	if struct["MustBeRequestable"] then M.AssertBoolean(struct["MustBeRequestable"]) end
	for k,_ in pairs(struct) do
		assert(ListQualificationTypesRequest_keys[k], "ListQualificationTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQualificationTypesRequest
--  
-- @param Query [String] <p> A text query against all of the searchable attributes of Qualification types. </p>
-- @param MustBeOwnedByCaller [Boolean] <p> Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types. </p>
-- @param NextToken [PaginationToken]  
-- @param MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- @param MustBeRequestable [Boolean] <p>Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False. </p>
-- Required parameter: MustBeRequestable
function M.ListQualificationTypesRequest(Query, MustBeOwnedByCaller, NextToken, MaxResults, MustBeRequestable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQualificationTypesRequest")
	local t = { 
		["Query"] = Query,
		["MustBeOwnedByCaller"] = MustBeOwnedByCaller,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["MustBeRequestable"] = MustBeRequestable,
	}
	M.AssertListQualificationTypesRequest(t)
	return t
end

local GetAccountBalanceRequest_keys = { nil }

function M.AssertGetAccountBalanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountBalanceRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetAccountBalanceRequest_keys[k], "GetAccountBalanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountBalanceRequest
--  
function M.GetAccountBalanceRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountBalanceRequest")
	local t = { 
	}
	M.AssertGetAccountBalanceRequest(t)
	return t
end

local NotifyWorkersRequest_keys = { "WorkerIds" = true, "MessageText" = true, "Subject" = true, nil }

function M.AssertNotifyWorkersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersRequest to be of type 'table'")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	assert(struct["MessageText"], "Expected key MessageText to exist in table")
	assert(struct["WorkerIds"], "Expected key WorkerIds to exist in table")
	if struct["WorkerIds"] then M.AssertCustomerIdList(struct["WorkerIds"]) end
	if struct["MessageText"] then M.AssertString(struct["MessageText"]) end
	if struct["Subject"] then M.AssertString(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(NotifyWorkersRequest_keys[k], "NotifyWorkersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersRequest
--  
-- @param WorkerIds [CustomerIdList] <p>A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.</p>
-- @param MessageText [String] <p>The text of the email message to send. Can include up to 4,096 characters</p>
-- @param Subject [String] <p>The subject line of the email message to send. Can include up to 200 characters.</p>
-- Required parameter: Subject
-- Required parameter: MessageText
-- Required parameter: WorkerIds
function M.NotifyWorkersRequest(WorkerIds, MessageText, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersRequest")
	local t = { 
		["WorkerIds"] = WorkerIds,
		["MessageText"] = MessageText,
		["Subject"] = Subject,
	}
	M.AssertNotifyWorkersRequest(t)
	return t
end

local SendTestEventNotificationResponse_keys = { nil }

function M.AssertSendTestEventNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTestEventNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SendTestEventNotificationResponse_keys[k], "SendTestEventNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTestEventNotificationResponse
--  
function M.SendTestEventNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTestEventNotificationResponse")
	local t = { 
	}
	M.AssertSendTestEventNotificationResponse(t)
	return t
end

local AssociateQualificationWithWorkerRequest_keys = { "WorkerId" = true, "SendNotification" = true, "IntegerValue" = true, "QualificationTypeId" = true, nil }

function M.AssertAssociateQualificationWithWorkerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateQualificationWithWorkerRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["SendNotification"] then M.AssertBoolean(struct["SendNotification"]) end
	if struct["IntegerValue"] then M.AssertInteger(struct["IntegerValue"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateQualificationWithWorkerRequest_keys[k], "AssociateQualificationWithWorkerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateQualificationWithWorkerRequest
--  
-- @param WorkerId [CustomerId] <p> The ID of the Worker to whom the Qualification is being assigned. Worker IDs are included with submitted HIT assignments and Qualification requests. </p>
-- @param SendNotification [Boolean] <p> Specifies whether to send a notification email message to the Worker saying that the qualification was assigned to the Worker. Note: this is true by default. </p>
-- @param IntegerValue [Integer] <p>The value of the Qualification to assign.</p>
-- @param QualificationTypeId [EntityId] <p>The ID of the Qualification type to use for the assigned Qualification.</p>
-- Required parameter: QualificationTypeId
-- Required parameter: WorkerId
function M.AssociateQualificationWithWorkerRequest(WorkerId, SendNotification, IntegerValue, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateQualificationWithWorkerRequest")
	local t = { 
		["WorkerId"] = WorkerId,
		["SendNotification"] = SendNotification,
		["IntegerValue"] = IntegerValue,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertAssociateQualificationWithWorkerRequest(t)
	return t
end

local HIT_keys = { "HITGroupId" = true, "RequesterAnnotation" = true, "NumberOfAssignmentsCompleted" = true, "Description" = true, "MaxAssignments" = true, "Title" = true, "NumberOfAssignmentsAvailable" = true, "Question" = true, "CreationTime" = true, "AssignmentDurationInSeconds" = true, "HITTypeId" = true, "NumberOfAssignmentsPending" = true, "HITStatus" = true, "HITId" = true, "QualificationRequirements" = true, "Keywords" = true, "Expiration" = true, "Reward" = true, "HITLayoutId" = true, "HITReviewStatus" = true, "AutoApprovalDelayInSeconds" = true, nil }

function M.AssertHIT(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HIT to be of type 'table'")
	if struct["HITGroupId"] then M.AssertEntityId(struct["HITGroupId"]) end
	if struct["RequesterAnnotation"] then M.AssertString(struct["RequesterAnnotation"]) end
	if struct["NumberOfAssignmentsCompleted"] then M.AssertInteger(struct["NumberOfAssignmentsCompleted"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["MaxAssignments"] then M.AssertInteger(struct["MaxAssignments"]) end
	if struct["Title"] then M.AssertString(struct["Title"]) end
	if struct["NumberOfAssignmentsAvailable"] then M.AssertInteger(struct["NumberOfAssignmentsAvailable"]) end
	if struct["Question"] then M.AssertString(struct["Question"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["AssignmentDurationInSeconds"] then M.AssertLong(struct["AssignmentDurationInSeconds"]) end
	if struct["HITTypeId"] then M.AssertEntityId(struct["HITTypeId"]) end
	if struct["NumberOfAssignmentsPending"] then M.AssertInteger(struct["NumberOfAssignmentsPending"]) end
	if struct["HITStatus"] then M.AssertHITStatus(struct["HITStatus"]) end
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	if struct["QualificationRequirements"] then M.AssertQualificationRequirementList(struct["QualificationRequirements"]) end
	if struct["Keywords"] then M.AssertString(struct["Keywords"]) end
	if struct["Expiration"] then M.AssertTimestamp(struct["Expiration"]) end
	if struct["Reward"] then M.AssertNumericValue(struct["Reward"]) end
	if struct["HITLayoutId"] then M.AssertEntityId(struct["HITLayoutId"]) end
	if struct["HITReviewStatus"] then M.AssertHITReviewStatus(struct["HITReviewStatus"]) end
	if struct["AutoApprovalDelayInSeconds"] then M.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(HIT_keys[k], "HIT contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HIT
-- <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
-- @param HITGroupId [EntityId] <p> The ID of the HIT Group of this HIT.</p>
-- @param RequesterAnnotation [String] <p> An arbitrary data field the Requester who created the HIT can use. This field is visible only to the creator of the HIT.</p>
-- @param NumberOfAssignmentsCompleted [Integer] <p> The number of assignments for this HIT that have been approved or rejected.</p>
-- @param Description [String] <p> A general description of the HIT.</p>
-- @param MaxAssignments [Integer] <p>The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- @param Title [String] <p> The title of the HIT.</p>
-- @param NumberOfAssignmentsAvailable [Integer] <p> The number of assignments for this HIT that are available for Workers to accept.</p>
-- @param Question [String] <p> The data the Worker completing the HIT uses produce the results. This is either either a QuestionForm, HTMLQuestion or an ExternalQuestion data structure.</p>
-- @param CreationTime [Timestamp] <p> The date and time the HIT was created.</p>
-- @param AssignmentDurationInSeconds [Long] <p> The length of time, in seconds, that a Worker has to complete the HIT after accepting it.</p>
-- @param HITTypeId [EntityId] <p>The ID of the HIT type of this HIT</p>
-- @param NumberOfAssignmentsPending [Integer] <p> The number of assignments for this HIT that are being previewed or have been accepted by Workers, but have not yet been submitted, returned, or abandoned.</p>
-- @param HITStatus [HITStatus] <p>The status of the HIT and its assignments. Valid Values are Assignable | Unassignable | Reviewable | Reviewing | Disposed. </p>
-- @param HITId [EntityId] <p> A unique identifier for the HIT.</p>
-- @param QualificationRequirements [QualificationRequirementList] <p> A condition that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met by a Worker's Qualifications for the Worker to accept the HIT.</p>
-- @param Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. Search terms similar to the keywords of a HIT are more likely to have the HIT in the search results.</p>
-- @param Expiration [Timestamp] <p>The date and time the HIT expires.</p>
-- @param Reward [NumericValue] <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
-- @param HITLayoutId [EntityId] <p> The ID of the HIT Layout of this HIT.</p>
-- @param HITReviewStatus [HITReviewStatus] <p> Indicates the review status of the HIT. Valid Values are NotReviewed | MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.</p>
-- @param AutoApprovalDelayInSeconds [Long] <p>The amount of time, in seconds, after the Worker submits an assignment for the HIT that the results are automatically approved by Amazon Mechanical Turk. This is the amount of time the Requester has to reject an assignment submitted by a Worker before the assignment is auto-approved and the Worker is paid. </p>
function M.HIT(HITGroupId, RequesterAnnotation, NumberOfAssignmentsCompleted, Description, MaxAssignments, Title, NumberOfAssignmentsAvailable, Question, CreationTime, AssignmentDurationInSeconds, HITTypeId, NumberOfAssignmentsPending, HITStatus, HITId, QualificationRequirements, Keywords, Expiration, Reward, HITLayoutId, HITReviewStatus, AutoApprovalDelayInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HIT")
	local t = { 
		["HITGroupId"] = HITGroupId,
		["RequesterAnnotation"] = RequesterAnnotation,
		["NumberOfAssignmentsCompleted"] = NumberOfAssignmentsCompleted,
		["Description"] = Description,
		["MaxAssignments"] = MaxAssignments,
		["Title"] = Title,
		["NumberOfAssignmentsAvailable"] = NumberOfAssignmentsAvailable,
		["Question"] = Question,
		["CreationTime"] = CreationTime,
		["AssignmentDurationInSeconds"] = AssignmentDurationInSeconds,
		["HITTypeId"] = HITTypeId,
		["NumberOfAssignmentsPending"] = NumberOfAssignmentsPending,
		["HITStatus"] = HITStatus,
		["HITId"] = HITId,
		["QualificationRequirements"] = QualificationRequirements,
		["Keywords"] = Keywords,
		["Expiration"] = Expiration,
		["Reward"] = Reward,
		["HITLayoutId"] = HITLayoutId,
		["HITReviewStatus"] = HITReviewStatus,
		["AutoApprovalDelayInSeconds"] = AutoApprovalDelayInSeconds,
	}
	M.AssertHIT(t)
	return t
end

local CreateHITWithHITTypeResponse_keys = { "HIT" = true, nil }

function M.AssertCreateHITWithHITTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHITWithHITTypeResponse to be of type 'table'")
	if struct["HIT"] then M.AssertHIT(struct["HIT"]) end
	for k,_ in pairs(struct) do
		assert(CreateHITWithHITTypeResponse_keys[k], "CreateHITWithHITTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITWithHITTypeResponse
--  
-- @param HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
function M.CreateHITWithHITTypeResponse(HIT, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHITWithHITTypeResponse")
	local t = { 
		["HIT"] = HIT,
	}
	M.AssertCreateHITWithHITTypeResponse(t)
	return t
end

local ListHITsForQualificationTypeRequest_keys = { "NextToken" = true, "MaxResults" = true, "QualificationTypeId" = true, nil }

function M.AssertListHITsForQualificationTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHITsForQualificationTypeRequest to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertResultSize(struct["MaxResults"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(ListHITsForQualificationTypeRequest_keys[k], "ListHITsForQualificationTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHITsForQualificationTypeRequest
--  
-- @param NextToken [PaginationToken] <p>Pagination Token</p>
-- @param MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- @param QualificationTypeId [EntityId] <p> The ID of the Qualification type to use when querying HITs. </p>
-- Required parameter: QualificationTypeId
function M.ListHITsForQualificationTypeRequest(NextToken, MaxResults, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHITsForQualificationTypeRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertListHITsForQualificationTypeRequest(t)
	return t
end

local HITLayoutParameter_keys = { "Name" = true, "Value" = true, nil }

function M.AssertHITLayoutParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HITLayoutParameter to be of type 'table'")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(HITLayoutParameter_keys[k], "HITLayoutParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HITLayoutParameter
-- <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
-- @param Name [String] <p> The name of the parameter in the HITLayout. </p>
-- @param Value [String] <p>The value substituted for the parameter referenced in the HITLayout. </p>
function M.HITLayoutParameter(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HITLayoutParameter")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertHITLayoutParameter(t)
	return t
end

local NotifyWorkersResponse_keys = { "NotifyWorkersFailureStatuses" = true, nil }

function M.AssertNotifyWorkersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWorkersResponse to be of type 'table'")
	if struct["NotifyWorkersFailureStatuses"] then M.AssertNotifyWorkersFailureStatusList(struct["NotifyWorkersFailureStatuses"]) end
	for k,_ in pairs(struct) do
		assert(NotifyWorkersResponse_keys[k], "NotifyWorkersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWorkersResponse
--  
-- @param NotifyWorkersFailureStatuses [NotifyWorkersFailureStatusList] <p> When MTurk sends notifications to the list of Workers, it returns back any failures it encounters in this list of NotifyWorkersFailureStatus objects. </p>
function M.NotifyWorkersResponse(NotifyWorkersFailureStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotifyWorkersResponse")
	local t = { 
		["NotifyWorkersFailureStatuses"] = NotifyWorkersFailureStatuses,
	}
	M.AssertNotifyWorkersResponse(t)
	return t
end

local Locale_keys = { "Country" = true, "Subdivision" = true, nil }

function M.AssertLocale(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Locale to be of type 'table'")
	assert(struct["Country"], "Expected key Country to exist in table")
	if struct["Country"] then M.AssertCountryParameters(struct["Country"]) end
	if struct["Subdivision"] then M.AssertCountryParameters(struct["Subdivision"]) end
	for k,_ in pairs(struct) do
		assert(Locale_keys[k], "Locale contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Locale
-- <p>The Locale data structure represents a geographical region or location.</p>
-- @param Country [CountryParameters] <p> The country of the locale. Must be a valid ISO 3166 country code. For example, the code US refers to the United States of America. </p>
-- @param Subdivision [CountryParameters] <p>The state or subdivision of the locale. A valid ISO 3166-2 subdivision code. For example, the code WA refers to the state of Washington.</p>
-- Required parameter: Country
function M.Locale(Country, Subdivision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Locale")
	local t = { 
		["Country"] = Country,
		["Subdivision"] = Subdivision,
	}
	M.AssertLocale(t)
	return t
end

local ListAssignmentsForHITResponse_keys = { "NumResults" = true, "Assignments" = true, "NextToken" = true, nil }

function M.AssertListAssignmentsForHITResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssignmentsForHITResponse to be of type 'table'")
	if struct["NumResults"] then M.AssertInteger(struct["NumResults"]) end
	if struct["Assignments"] then M.AssertAssignmentList(struct["Assignments"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAssignmentsForHITResponse_keys[k], "ListAssignmentsForHITResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssignmentsForHITResponse
--  
-- @param NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- @param Assignments [AssignmentList] <p> The collection of Assignment data structures returned by this call.</p>
-- @param NextToken [PaginationToken]  
function M.ListAssignmentsForHITResponse(NumResults, Assignments, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssignmentsForHITResponse")
	local t = { 
		["NumResults"] = NumResults,
		["Assignments"] = Assignments,
		["NextToken"] = NextToken,
	}
	M.AssertListAssignmentsForHITResponse(t)
	return t
end

local SendBonusRequest_keys = { "AssignmentId" = true, "WorkerId" = true, "BonusAmount" = true, "Reason" = true, "UniqueRequestToken" = true, nil }

function M.AssertSendBonusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBonusRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["BonusAmount"], "Expected key BonusAmount to exist in table")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then M.AssertNumericValue(struct["BonusAmount"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	if struct["UniqueRequestToken"] then M.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(SendBonusRequest_keys[k], "SendBonusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBonusRequest
--  
-- @param AssignmentId [EntityId] <p>The ID of the assignment for which this bonus is paid.</p>
-- @param WorkerId [CustomerId] <p>The ID of the Worker being paid the bonus.</p>
-- @param BonusAmount [NumericValue] <p> The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and "101.42" represents $101.42 USD). Do not include currency symbols or currency codes. </p>
-- @param Reason [String] <p>A message that explains the reason for the bonus payment. The Worker receiving the bonus can see this message.</p>
-- @param UniqueRequestToken [IdempotencyToken] <p>A unique identifier for this request, which allows you to retry the call on error without granting multiple bonuses. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the bonus already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID.</p>
-- Required parameter: WorkerId
-- Required parameter: BonusAmount
-- Required parameter: AssignmentId
function M.SendBonusRequest(AssignmentId, WorkerId, BonusAmount, Reason, UniqueRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBonusRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["WorkerId"] = WorkerId,
		["BonusAmount"] = BonusAmount,
		["Reason"] = Reason,
		["UniqueRequestToken"] = UniqueRequestToken,
	}
	M.AssertSendBonusRequest(t)
	return t
end

local NotificationSpecification_keys = { "EventTypes" = true, "Destination" = true, "Version" = true, "Transport" = true, nil }

function M.AssertNotificationSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationSpecification to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Transport"], "Expected key Transport to exist in table")
	if struct["EventTypes"] then M.AssertEventTypeList(struct["EventTypes"]) end
	if struct["Destination"] then M.AssertString(struct["Destination"]) end
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["Transport"] then M.AssertNotificationTransport(struct["Transport"]) end
	for k,_ in pairs(struct) do
		assert(NotificationSpecification_keys[k], "NotificationSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationSpecification
-- <p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>
-- @param EventTypes [EventTypeList] <p> The list of events that should cause notifications to be sent. Valid Values: AssignmentAccepted | AssignmentAbandoned | AssignmentReturned | AssignmentSubmitted | AssignmentRejected | AssignmentApproved | HITCreated | HITExtended | HITDisposed | HITReviewable | HITExpired | Ping. The Ping event is only valid for the SendTestEventNotification operation. </p>
-- @param Destination [String] <p> The destination for notification messages. or email notifications (if Transport is Email), this is an email address. For Amazon Simple Queue Service (Amazon SQS) notifications (if Transport is SQS), this is the URL for your Amazon SQS queue. </p>
-- @param Version [String] <p>The version of the Notification API to use. Valid value is 2006-05-05.</p>
-- @param Transport [NotificationTransport] <p> The method Amazon Mechanical Turk uses to send the notification. Valid Values: Email | SQS. </p>
-- Required parameter: Destination
-- Required parameter: Transport
function M.NotificationSpecification(EventTypes, Destination, Version, Transport, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationSpecification")
	local t = { 
		["EventTypes"] = EventTypes,
		["Destination"] = Destination,
		["Version"] = Version,
		["Transport"] = Transport,
	}
	M.AssertNotificationSpecification(t)
	return t
end

local GetFileUploadURLRequest_keys = { "AssignmentId" = true, "QuestionIdentifier" = true, nil }

function M.AssertGetFileUploadURLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileUploadURLRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	assert(struct["QuestionIdentifier"], "Expected key QuestionIdentifier to exist in table")
	if struct["AssignmentId"] then M.AssertEntityId(struct["AssignmentId"]) end
	if struct["QuestionIdentifier"] then M.AssertString(struct["QuestionIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(GetFileUploadURLRequest_keys[k], "GetFileUploadURLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileUploadURLRequest
--  
-- @param AssignmentId [EntityId] <p>The ID of the assignment that contains the question with a FileUploadAnswer.</p>
-- @param QuestionIdentifier [String] <p>The identifier of the question with a FileUploadAnswer, as specified in the QuestionForm of the HIT.</p>
-- Required parameter: AssignmentId
-- Required parameter: QuestionIdentifier
function M.GetFileUploadURLRequest(AssignmentId, QuestionIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFileUploadURLRequest")
	local t = { 
		["AssignmentId"] = AssignmentId,
		["QuestionIdentifier"] = QuestionIdentifier,
	}
	M.AssertGetFileUploadURLRequest(t)
	return t
end

local ReviewPolicy_keys = { "PolicyName" = true, "Parameters" = true, nil }

function M.AssertReviewPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewPolicy to be of type 'table'")
	if struct["PolicyName"] then M.AssertString(struct["PolicyName"]) end
	if struct["Parameters"] then M.AssertPolicyParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ReviewPolicy_keys[k], "ReviewPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewPolicy
-- <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
-- @param PolicyName [String] <p> Name of a Review Policy: SimplePlurality/2011-09-01 or ScoreMyKnownAnswers/2011-09-01 </p>
-- @param Parameters [PolicyParameterList] <p>Name of the parameter from the Review policy.</p>
function M.ReviewPolicy(PolicyName, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReviewPolicy")
	local t = { 
		["PolicyName"] = PolicyName,
		["Parameters"] = Parameters,
	}
	M.AssertReviewPolicy(t)
	return t
end

local DisassociateQualificationFromWorkerRequest_keys = { "WorkerId" = true, "Reason" = true, "QualificationTypeId" = true, nil }

function M.AssertDisassociateQualificationFromWorkerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateQualificationFromWorkerRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	if struct["WorkerId"] then M.AssertCustomerId(struct["WorkerId"]) end
	if struct["Reason"] then M.AssertString(struct["Reason"]) end
	if struct["QualificationTypeId"] then M.AssertEntityId(struct["QualificationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateQualificationFromWorkerRequest_keys[k], "DisassociateQualificationFromWorkerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateQualificationFromWorkerRequest
--  
-- @param WorkerId [CustomerId] <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
-- @param Reason [String] <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
-- @param QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualification to be revoked.</p>
-- Required parameter: WorkerId
-- Required parameter: QualificationTypeId
function M.DisassociateQualificationFromWorkerRequest(WorkerId, Reason, QualificationTypeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateQualificationFromWorkerRequest")
	local t = { 
		["WorkerId"] = WorkerId,
		["Reason"] = Reason,
		["QualificationTypeId"] = QualificationTypeId,
	}
	M.AssertDisassociateQualificationFromWorkerRequest(t)
	return t
end

local GetHITRequest_keys = { "HITId" = true, nil }

function M.AssertGetHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	if struct["HITId"] then M.AssertEntityId(struct["HITId"]) end
	for k,_ in pairs(struct) do
		assert(GetHITRequest_keys[k], "GetHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHITRequest
--  
-- @param HITId [EntityId] <p>The ID of the HIT to be retrieved.</p>
-- Required parameter: HITId
function M.GetHITRequest(HITId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHITRequest")
	local t = { 
		["HITId"] = HITId,
	}
	M.AssertGetHITRequest(t)
	return t
end

function M.AssertReviewPolicyLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewPolicyLevel to be of type 'string'")
end

--  
function M.ReviewPolicyLevel(str)
	M.AssertReviewPolicyLevel(str)
	return str
end

function M.AssertTurkErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected TurkErrorCode to be of type 'string'")
end

--  
function M.TurkErrorCode(str)
	M.AssertTurkErrorCode(str)
	return str
end

function M.AssertNotifyWorkersFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected NotifyWorkersFailureCode to be of type 'string'")
end

--  
function M.NotifyWorkersFailureCode(str)
	M.AssertNotifyWorkersFailureCode(str)
	return str
end

function M.AssertNotificationTransport(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTransport to be of type 'string'")
end

--  
function M.NotificationTransport(str)
	M.AssertNotificationTransport(str)
	return str
end

function M.AssertEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[A-Z0-9]+$"), "Expected string to match pattern '^[A-Z0-9]+$'")
end

--  
function M.EntityId(str)
	M.AssertEntityId(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk returns a pagination token in the response. You can use this pagination token to retrieve the next set of results. </p>
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertHITStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HITStatus to be of type 'string'")
end

--  
function M.HITStatus(str)
	M.AssertHITStatus(str)
	return str
end

function M.AssertReviewableHITStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewableHITStatus to be of type 'string'")
end

--  
function M.ReviewableHITStatus(str)
	M.AssertReviewableHITStatus(str)
	return str
end

function M.AssertCustomerId(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^A[A-Z0-9]+$"), "Expected string to match pattern '^A[A-Z0-9]+$'")
end

--  
function M.CustomerId(str)
	M.AssertCustomerId(str)
	return str
end

function M.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	M.AssertEventType(str)
	return str
end

function M.AssertQualificationTypeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected QualificationTypeStatus to be of type 'string'")
end

--  
function M.QualificationTypeStatus(str)
	M.AssertQualificationTypeStatus(str)
	return str
end

function M.AssertAssignmentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AssignmentStatus to be of type 'string'")
end

--  
function M.AssignmentStatus(str)
	M.AssertAssignmentStatus(str)
	return str
end

function M.AssertReviewActionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewActionStatus to be of type 'string'")
end

--  
function M.ReviewActionStatus(str)
	M.AssertReviewActionStatus(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertHITReviewStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HITReviewStatus to be of type 'string'")
end

--  
function M.HITReviewStatus(str)
	M.AssertHITReviewStatus(str)
	return str
end

function M.AssertComparator(str)
	assert(str)
	assert(type(str) == "string", "Expected Comparator to be of type 'string'")
end

--  
function M.Comparator(str)
	M.AssertComparator(str)
	return str
end

function M.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdempotencyToken(str)
	M.AssertIdempotencyToken(str)
	return str
end

function M.AssertNumericValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericValue to be of type 'string'")
	assert(str:match("^[0-9]+(%.)?[0-9]*$"), "Expected string to match pattern '^[0-9]+(%.)?[0-9]*$'")
end

-- <p>A string representing a numeric value.</p>
function M.NumericValue(str)
	M.AssertNumericValue(str)
	return str
end

function M.AssertCountryParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryParameters to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.CountryParameters(str)
	M.AssertCountryParameters(str)
	return str
end

function M.AssertQualificationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected QualificationStatus to be of type 'string'")
end

--  
function M.QualificationStatus(str)
	M.AssertQualificationStatus(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertResultSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResultSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ResultSize(integer)
	M.AssertResultSize(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypeList(list)
	M.AssertEventTypeList(list)
	return list
end

function M.AssertQualificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQualification(v)
	end
end

--  
-- List of Qualification objects
function M.QualificationList(list)
	M.AssertQualificationList(list)
	return list
end

function M.AssertCustomerIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomerIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCustomerId(v)
	end
end

--  
-- List of CustomerId objects
function M.CustomerIdList(list)
	M.AssertCustomerIdList(list)
	return list
end

function M.AssertAssignmentStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssignmentStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAssignmentStatus(v)
	end
end

--  
-- List of AssignmentStatus objects
function M.AssignmentStatusList(list)
	M.AssertAssignmentStatusList(list)
	return list
end

function M.AssertQualificationRequirementList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationRequirementList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQualificationRequirement(v)
	end
end

--  
-- List of QualificationRequirement objects
function M.QualificationRequirementList(list)
	M.AssertQualificationRequirementList(list)
	return list
end

function M.AssertAssignmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssignmentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAssignment(v)
	end
end

--  
-- List of Assignment objects
function M.AssignmentList(list)
	M.AssertAssignmentList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertReviewResultDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewResultDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReviewResultDetail(v)
	end
end

--  
-- List of ReviewResultDetail objects
function M.ReviewResultDetailList(list)
	M.AssertReviewResultDetailList(list)
	return list
end

function M.AssertReviewActionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewActionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReviewActionDetail(v)
	end
end

--  
-- List of ReviewActionDetail objects
function M.ReviewActionDetailList(list)
	M.AssertReviewActionDetailList(list)
	return list
end

function M.AssertReviewPolicyLevelList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReviewPolicyLevelList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReviewPolicyLevel(v)
	end
end

--  
-- List of ReviewPolicyLevel objects
function M.ReviewPolicyLevelList(list)
	M.AssertReviewPolicyLevelList(list)
	return list
end

function M.AssertQualificationRequestList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationRequestList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQualificationRequest(v)
	end
end

--  
-- List of QualificationRequest objects
function M.QualificationRequestList(list)
	M.AssertQualificationRequestList(list)
	return list
end

function M.AssertPolicyParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyParameter(v)
	end
end

--  
-- List of PolicyParameter objects
function M.PolicyParameterList(list)
	M.AssertPolicyParameterList(list)
	return list
end

function M.AssertQualificationTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected QualificationTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQualificationType(v)
	end
end

--  
-- List of QualificationType objects
function M.QualificationTypeList(list)
	M.AssertQualificationTypeList(list)
	return list
end

function M.AssertHITLayoutParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected HITLayoutParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHITLayoutParameter(v)
	end
end

--  
-- List of HITLayoutParameter objects
function M.HITLayoutParameterList(list)
	M.AssertHITLayoutParameterList(list)
	return list
end

function M.AssertBonusPaymentList(list)
	assert(list)
	assert(type(list) == "table", "Expected BonusPaymentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBonusPayment(v)
	end
end

--  
-- List of BonusPayment objects
function M.BonusPaymentList(list)
	M.AssertBonusPaymentList(list)
	return list
end

function M.AssertParameterMapEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterMapEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterMapEntry(v)
	end
end

--  
-- List of ParameterMapEntry objects
function M.ParameterMapEntryList(list)
	M.AssertParameterMapEntryList(list)
	return list
end

function M.AssertHITList(list)
	assert(list)
	assert(type(list) == "table", "Expected HITList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHIT(v)
	end
end

--  
-- List of HIT objects
function M.HITList(list)
	M.AssertHITList(list)
	return list
end

function M.AssertNotifyWorkersFailureStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotifyWorkersFailureStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNotifyWorkersFailureStatus(v)
	end
end

--  
-- List of NotifyWorkersFailureStatus objects
function M.NotifyWorkersFailureStatusList(list)
	M.AssertNotifyWorkersFailureStatusList(list)
	return list
end

function M.AssertLocaleList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocaleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLocale(v)
	end
end

--  
-- List of Locale objects
function M.LocaleList(list)
	M.AssertLocaleList(list)
	return list
end

function M.AssertIntegerList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntegerList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInteger(v)
	end
end

--  
-- List of Integer objects
function M.IntegerList(list)
	M.AssertIntegerList(list)
	return list
end

function M.AssertWorkerBlockList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkerBlockList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkerBlock(v)
	end
end

--  
-- List of WorkerBlock objects
function M.WorkerBlockList(list)
	M.AssertWorkerBlockList(list)
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
