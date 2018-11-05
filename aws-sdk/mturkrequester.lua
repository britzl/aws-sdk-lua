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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p>The ID of the Assignment to be retrieved.</p>
-- Required key: AssignmentId
-- @return GetAssignmentRequest structure as a key-value pair table
function M.GetAssignmentRequest(args)
	assert(args, "You must provide an argument table when creating GetAssignmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
	}
	asserts.AssertGetAssignmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetrieveResults [Boolean] <p> Specify if the operation should retrieve a list of the results computed by the Review Policies. </p>
-- * PolicyLevels [ReviewPolicyLevelList] <p> The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies. </p>
-- * MaxResults [ResultSize] <p>Limit the number of results returned.</p>
-- * HITId [EntityId] <p>The unique identifier of the HIT to retrieve review results for.</p>
-- * RetrieveActions [Boolean] <p> Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes. </p>
-- * NextToken [PaginationToken] <p>Pagination token</p>
-- Required key: HITId
-- @return ListReviewPolicyResultsForHITRequest structure as a key-value pair table
function M.ListReviewPolicyResultsForHITRequest(args)
	assert(args, "You must provide an argument table when creating ListReviewPolicyResultsForHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetrieveResults"] = args["RetrieveResults"],
		["PolicyLevels"] = args["PolicyLevels"],
		["MaxResults"] = args["MaxResults"],
		["HITId"] = args["HITId"],
		["RetrieveActions"] = args["RetrieveActions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListReviewPolicyResultsForHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileUploadURL [String] <p> A temporary URL for the file that the Worker uploaded for the answer. </p>
-- @return GetFileUploadURLResponse structure as a key-value pair table
function M.GetFileUploadURLResponse(args)
	assert(args, "You must provide an argument table when creating GetFileUploadURLResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileUploadURL"] = args["FileUploadURL"],
	}
	asserts.AssertGetFileUploadURLResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationTypeId [EntityId] <p> The ID of the Qualification type the Worker is requesting, as returned by the CreateQualificationType operation. </p>
-- * WorkerId [CustomerId] <p> The ID of the Worker requesting the Qualification.</p>
-- * QualificationRequestId [String] <p>The ID of the Qualification request, a unique identifier generated when the request was submitted. </p>
-- * SubmitTime [Timestamp] <p>The date and time the Qualification request had a status of Submitted. This is either the time the Worker submitted answers for a Qualification test, or the time the Worker requested the Qualification if the Qualification type does not have a test. </p>
-- * Test [String] <p> The contents of the Qualification test that was presented to the Worker, if the type has a test and the Worker has submitted answers. This value is identical to the QuestionForm associated with the Qualification type at the time the Worker requests the Qualification.</p>
-- * Answer [String] <p> The Worker's answers for the Qualification type's test contained in a QuestionFormAnswers document, if the type has a test and the Worker has submitted answers. If the Worker does not provide any answers, Answer may be empty. </p>
-- @return QualificationRequest structure as a key-value pair table
function M.QualificationRequest(args)
	assert(args, "You must provide an argument table when creating QualificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationTypeId"] = args["QualificationTypeId"],
		["WorkerId"] = args["WorkerId"],
		["QualificationRequestId"] = args["QualificationRequestId"],
		["SubmitTime"] = args["SubmitTime"],
		["Test"] = args["Test"],
		["Answer"] = args["Answer"],
	}
	asserts.AssertQualificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- * MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- * Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- * UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- * HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- * HITTypeId [EntityId] <p>The HIT type ID you want to create this HIT with.</p>
-- * AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- * HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- * HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- * LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- Required key: HITTypeId
-- Required key: LifetimeInSeconds
-- @return CreateHITWithHITTypeRequest structure as a key-value pair table
function M.CreateHITWithHITTypeRequest(args)
	assert(args, "You must provide an argument table when creating CreateHITWithHITTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequesterAnnotation"] = args["RequesterAnnotation"],
		["MaxAssignments"] = args["MaxAssignments"],
		["Question"] = args["Question"],
		["UniqueRequestToken"] = args["UniqueRequestToken"],
		["HITLayoutParameters"] = args["HITLayoutParameters"],
		["HITTypeId"] = args["HITTypeId"],
		["AssignmentReviewPolicy"] = args["AssignmentReviewPolicy"],
		["HITReviewPolicy"] = args["HITReviewPolicy"],
		["HITLayoutId"] = args["HITLayoutId"],
		["LifetimeInSeconds"] = args["LifetimeInSeconds"],
	}
	asserts.AssertCreateHITWithHITTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- * Name [String] <p> The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.</p>
-- * TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- * QualificationTypeStatus [QualificationTypeStatus] <p>The initial status of the Qualification type.</p> <p>Constraints: Valid values are: Active | Inactive</p>
-- * Test [String] <p> The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified. </p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- * AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p> <p>Constraints: Must not be longer than 65535 bytes.</p> <p>Constraints: None. If not specified, you must process Qualification requests manually.</p>
-- * AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- * Keywords [String] <p>One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.</p>
-- * RetryDelayInSeconds [Long] <p>The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.</p> <p>Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.</p>
-- * Description [String] <p>A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.</p>
-- Required key: Name
-- Required key: Description
-- Required key: QualificationTypeStatus
-- @return CreateQualificationTypeRequest structure as a key-value pair table
function M.CreateQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating CreateQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoGranted"] = args["AutoGranted"],
		["Name"] = args["Name"],
		["TestDurationInSeconds"] = args["TestDurationInSeconds"],
		["QualificationTypeStatus"] = args["QualificationTypeStatus"],
		["Test"] = args["Test"],
		["AnswerKey"] = args["AnswerKey"],
		["AutoGrantedValue"] = args["AutoGrantedValue"],
		["Keywords"] = args["Keywords"],
		["RetryDelayInSeconds"] = args["RetryDelayInSeconds"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of Qualifications on this page in the filtered results list, equivalent to the number of Qualifications being returned by this call.</p>
-- * NextToken [PaginationToken] 
-- * Qualifications [QualificationList] <p> The list of Qualification elements returned by this call. </p>
-- @return ListWorkersWithQualificationTypeResponse structure as a key-value pair table
function M.ListWorkersWithQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating ListWorkersWithQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["NextToken"] = args["NextToken"],
		["Qualifications"] = args["Qualifications"],
	}
	asserts.AssertListWorkersWithQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotifyWorkersFailureMessage [String] <p> A message detailing the reason the Worker could not be notified. </p>
-- * WorkerId [CustomerId] <p> The ID of the Worker.</p>
-- * NotifyWorkersFailureCode [NotifyWorkersFailureCode] <p> Encoded value for the failure type. </p>
-- @return NotifyWorkersFailureStatus structure as a key-value pair table
function M.NotifyWorkersFailureStatus(args)
	assert(args, "You must provide an argument table when creating NotifyWorkersFailureStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotifyWorkersFailureMessage"] = args["NotifyWorkersFailureMessage"],
		["WorkerId"] = args["WorkerId"],
		["NotifyWorkersFailureCode"] = args["NotifyWorkersFailureCode"],
	}
	asserts.AssertNotifyWorkersFailureStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IntegerValue [Integer] <p> The value of the Qualification. You can omit this value if you are using the presence or absence of the Qualification as the basis for a HIT requirement. </p>
-- * QualificationRequestId [String] <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
-- Required key: QualificationRequestId
-- @return AcceptQualificationRequestRequest structure as a key-value pair table
function M.AcceptQualificationRequestRequest(args)
	assert(args, "You must provide an argument table when creating AcceptQualificationRequestRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IntegerValue"] = args["IntegerValue"],
		["QualificationRequestId"] = args["QualificationRequestId"],
	}
	asserts.AssertAcceptQualificationRequestRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>Pagination token</p>
-- * MaxResults [ResultSize] 
-- @return ListHITsRequest structure as a key-value pair table
function M.ListHITsRequest(args)
	assert(args, "You must provide an argument table when creating ListHITsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListHITsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ReviewableHITStatus] <p> Can be either <code>Reviewable</code> or <code>Reviewing</code>. Reviewable is the default value. </p>
-- * HITTypeId [EntityId] <p> The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered </p>
-- * NextToken [PaginationToken] <p>Pagination Token</p>
-- * MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- @return ListReviewableHITsRequest structure as a key-value pair table
function M.ListReviewableHITsRequest(args)
	assert(args, "You must provide an argument table when creating ListReviewableHITsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["HITTypeId"] = args["HITTypeId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListReviewableHITsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApprovalTime [Timestamp] <p> If the Worker has submitted results and the Requester has approved the results, ApprovalTime is the date and time the Requester approved the results. This value is omitted from the assignment if the Requester has not yet approved the results.</p>
-- * AutoApprovalTime [Timestamp] <p> If results have been submitted, AutoApprovalTime is the date and time the results of the assignment results are considered Approved automatically if they have not already been explicitly approved or rejected by the Requester. This value is derived from the auto-approval delay specified by the Requester in the HIT. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- * AssignmentId [EntityId] <p> A unique identifier for the assignment.</p>
-- * WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- * RequesterFeedback [String] <p> The feedback string included with the call to the ApproveAssignment operation or the RejectAssignment operation, if the Requester approved or rejected the assignment and specified feedback.</p>
-- * AcceptTime [Timestamp] <p> The date and time the Worker accepted the assignment.</p>
-- * Deadline [Timestamp] <p> The date and time of the deadline for the assignment. This value is derived from the deadline specification for the HIT and the date and time the Worker accepted the HIT.</p>
-- * HITId [EntityId] <p> The ID of the HIT.</p>
-- * Answer [String] <p> The Worker's answers submitted for the HIT contained in a QuestionFormAnswers document, if the Worker provides an answer. If the Worker does not provide any answers, Answer may contain a QuestionFormAnswers document, or Answer may be empty.</p>
-- * AssignmentStatus [AssignmentStatus] <p> The status of the assignment.</p>
-- * SubmitTime [Timestamp] <p> If the Worker has submitted results, SubmitTime is the date and time the assignment was submitted. This value is omitted from the assignment if the Worker has not yet submitted results.</p>
-- * RejectionTime [Timestamp] <p> If the Worker has submitted results and the Requester has rejected the results, RejectionTime is the date and time the Requester rejected the results.</p>
-- @return Assignment structure as a key-value pair table
function M.Assignment(args)
	assert(args, "You must provide an argument table when creating Assignment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApprovalTime"] = args["ApprovalTime"],
		["AutoApprovalTime"] = args["AutoApprovalTime"],
		["AssignmentId"] = args["AssignmentId"],
		["WorkerId"] = args["WorkerId"],
		["RequesterFeedback"] = args["RequesterFeedback"],
		["AcceptTime"] = args["AcceptTime"],
		["Deadline"] = args["Deadline"],
		["HITId"] = args["HITId"],
		["Answer"] = args["Answer"],
		["AssignmentStatus"] = args["AssignmentStatus"],
		["SubmitTime"] = args["SubmitTime"],
		["RejectionTime"] = args["RejectionTime"],
	}
	asserts.AssertAssignment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HIT [HIT] <p> Contains the requested HIT data.</p>
-- @return GetHITResponse structure as a key-value pair table
function M.GetHITResponse(args)
	assert(args, "You must provide an argument table when creating GetHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HIT"] = args["HIT"],
	}
	asserts.AssertGetHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateQualificationWithWorkerResponse structure as a key-value pair table
function M.AssociateQualificationWithWorkerResponse(args)
	assert(args, "You must provide an argument table when creating AssociateQualificationWithWorkerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateQualificationWithWorkerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QualificationRequirement = { ["RequiredToPreview"] = true, ["Comparator"] = true, ["QualificationTypeId"] = true, ["ActionsGuarded"] = true, ["IntegerValues"] = true, ["LocaleValues"] = true, nil }

function asserts.AssertQualificationRequirement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QualificationRequirement to be of type 'table'")
	assert(struct["QualificationTypeId"], "Expected key QualificationTypeId to exist in table")
	assert(struct["Comparator"], "Expected key Comparator to exist in table")
	if struct["RequiredToPreview"] then asserts.AssertBoolean(struct["RequiredToPreview"]) end
	if struct["Comparator"] then asserts.AssertComparator(struct["Comparator"]) end
	if struct["QualificationTypeId"] then asserts.AssertString(struct["QualificationTypeId"]) end
	if struct["ActionsGuarded"] then asserts.AssertHITAccessActions(struct["ActionsGuarded"]) end
	if struct["IntegerValues"] then asserts.AssertIntegerList(struct["IntegerValues"]) end
	if struct["LocaleValues"] then asserts.AssertLocaleList(struct["LocaleValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.QualificationRequirement[k], "QualificationRequirement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QualificationRequirement
-- <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT, or see the HIT in search results. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequiredToPreview [Boolean] <p> DEPRECATED: Use the <code>ActionsGuarded</code> field instead. If RequiredToPreview is true, the question data for the HIT will not be shown when a Worker whose Qualifications do not meet this requirement tries to preview the HIT. That is, a Worker's Qualifications must meet all of the requirements for which RequiredToPreview is true in order to preview the HIT. If a Worker meets all of the requirements where RequiredToPreview is true (or if there are no such requirements), but does not meet all of the requirements for the HIT, the Worker will be allowed to preview the HIT's question data, but will not be allowed to accept and complete the HIT. The default is false. This should not be used in combination with the <code>ActionsGuarded</code> field. </p>
-- * Comparator [Comparator] <p>The kind of comparison to make against a Qualification's value. You can compare a Qualification's value to an IntegerValue to see if it is LessThan, LessThanOrEqualTo, GreaterThan, GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You can compare it to a LocaleValue to see if it is EqualTo, or NotEqualTo the LocaleValue. You can check to see if the value is In or NotIn a set of IntegerValue or LocaleValue values. Lastly, a Qualification requirement can also test if a Qualification Exists or DoesNotExist in the user's profile, regardless of its value. </p>
-- * QualificationTypeId [String] <p> The ID of the Qualification type for the requirement.</p>
-- * ActionsGuarded [HITAccessActions] <p> Setting this attribute prevents Workers whose Qualifications do not meet this QualificationRequirement from taking the specified action. Valid arguments include "Accept" (Worker cannot accept the HIT, but can preview the HIT and see it in their search results), "PreviewAndAccept" (Worker cannot accept or preview the HIT, but can see the HIT in their search results), and "DiscoverPreviewAndAccept" (Worker cannot accept, preview, or see the HIT in their search results). It's possible for you to create a HIT with multiple QualificationRequirements (which can have different values for the ActionGuarded attribute). In this case, the Worker is only permitted to perform an action when they have met all QualificationRequirements guarding the action. The actions in the order of least restrictive to most restrictive are Discover, Preview and Accept. For example, if a Worker meets all QualificationRequirements that are set to DiscoverPreviewAndAccept, but do not meet all requirements that are set with PreviewAndAccept, then the Worker will be able to Discover, i.e. see the HIT in their search result, but will not be able to Preview or Accept the HIT. ActionsGuarded should not be used in combination with the <code>RequiredToPreview</code> field. </p>
-- * IntegerValues [IntegerList] <p> The integer value to compare against the Qualification's value. IntegerValue must not be present if Comparator is Exists or DoesNotExist. IntegerValue can only be used if the Qualification type has an integer value; it cannot be used with the Worker_Locale QualificationType ID. When performing a set comparison by using the In or the NotIn comparator, you can use up to 15 IntegerValue elements in a QualificationRequirement data structure. </p>
-- * LocaleValues [LocaleList] <p> The locale value to compare against the Qualification's value. The local value must be a valid ISO 3166 country code or supports ISO 3166-2 subdivisions. LocaleValue can only be used with a Worker_Locale QualificationType ID. LocaleValue can only be used with the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use a single LocaleValue element when using the EqualTo or NotEqualTo comparators. When performing a set comparison by using the In or the NotIn comparator, you can use up to 30 LocaleValue elements in a QualificationRequirement data structure. </p>
-- Required key: QualificationTypeId
-- Required key: Comparator
-- @return QualificationRequirement structure as a key-value pair table
function M.QualificationRequirement(args)
	assert(args, "You must provide an argument table when creating QualificationRequirement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequiredToPreview"] = args["RequiredToPreview"],
		["Comparator"] = args["Comparator"],
		["QualificationTypeId"] = args["QualificationTypeId"],
		["ActionsGuarded"] = args["ActionsGuarded"],
		["IntegerValues"] = args["IntegerValues"],
		["LocaleValues"] = args["LocaleValues"],
	}
	asserts.AssertQualificationRequirement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateHITTypeOfHITResponse structure as a key-value pair table
function M.UpdateHITTypeOfHITResponse(args)
	assert(args, "You must provide an argument table when creating UpdateHITTypeOfHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateHITTypeOfHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p>The ID of the Worker to block.</p>
-- * Reason [String] <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
-- Required key: WorkerId
-- Required key: Reason
-- @return CreateWorkerBlockRequest structure as a key-value pair table
function M.CreateWorkerBlockRequest(args)
	assert(args, "You must provide an argument table when creating CreateWorkerBlockRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertCreateWorkerBlockRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * TurkErrorCode [TurkErrorCode] 
-- @return RequestError structure as a key-value pair table
function M.RequestError(args)
	assert(args, "You must provide an argument table when creating RequestError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["TurkErrorCode"] = args["TurkErrorCode"],
	}
	asserts.AssertRequestError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApproveAssignmentResponse structure as a key-value pair table
function M.ApproveAssignmentResponse(args)
	assert(args, "You must provide an argument table when creating ApproveAssignmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApproveAssignmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- * HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- * NextToken [PaginationToken] 
-- @return ListHITsForQualificationTypeResponse structure as a key-value pair table
function M.ListHITsForQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating ListHITsForQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["HITs"] = args["HITs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHITsForQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] 
-- * MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- * QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- @return ListQualificationRequestsRequest structure as a key-value pair table
function M.ListQualificationRequestsRequest(args)
	assert(args, "You must provide an argument table when creating ListQualificationRequestsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertListQualificationRequestsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentStatuses [AssignmentStatusList] <p>The status of the assignments to return: Submitted | Approved | Rejected</p>
-- * NextToken [PaginationToken] <p>Pagination token</p>
-- * HITId [EntityId] <p>The ID of the HIT.</p>
-- * MaxResults [ResultSize] 
-- Required key: HITId
-- @return ListAssignmentsForHITRequest structure as a key-value pair table
function M.ListAssignmentsForHITRequest(args)
	assert(args, "You must provide an argument table when creating ListAssignmentsForHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentStatuses"] = args["AssignmentStatuses"],
		["NextToken"] = args["NextToken"],
		["HITId"] = args["HITId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListAssignmentsForHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [NotificationSpecification] <p> The notification specification to test. This value is identical to the value you would provide to the UpdateNotificationSettings operation when you establish the notification specification for a HIT type. </p>
-- * TestEventType [EventType] <p> The event to simulate to test the notification specification. This event is included in the test message even if the notification specification does not include the event type. The notification specification does not filter out the test event. </p>
-- Required key: Notification
-- Required key: TestEventType
-- @return SendTestEventNotificationRequest structure as a key-value pair table
function M.SendTestEventNotificationRequest(args)
	assert(args, "You must provide an argument table when creating SendTestEventNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["TestEventType"] = args["TestEventType"],
	}
	asserts.AssertSendTestEventNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateHITReviewStatusResponse structure as a key-value pair table
function M.UpdateHITReviewStatusResponse(args)
	assert(args, "You must provide an argument table when creating UpdateHITReviewStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateHITReviewStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>Pagination token</p>
-- * MaxResults [ResultSize] 
-- @return ListWorkerBlocksRequest structure as a key-value pair table
function M.ListWorkerBlocksRequest(args)
	assert(args, "You must provide an argument table when creating ListWorkerBlocksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListWorkerBlocksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [StringList] <p> The list of answers to the question specified in the MapEntry Key element. The Worker must match all values in order for the answer to be scored correctly. </p>
-- * Key [String] <p> The QuestionID from the HIT that is used to identify which question requires Mechanical Turk to score as part of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
-- @return ParameterMapEntry structure as a key-value pair table
function M.ParameterMapEntry(args)
	assert(args, "You must provide an argument table when creating ParameterMapEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertParameterMapEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call. </p>
-- * HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- * NextToken [PaginationToken] 
-- @return ListReviewableHITsResponse structure as a key-value pair table
function M.ListReviewableHITsResponse(args)
	assert(args, "You must provide an argument table when creating ListReviewableHITsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["HITs"] = args["HITs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListReviewableHITsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteWorkerBlockResponse structure as a key-value pair table
function M.DeleteWorkerBlockResponse(args)
	assert(args, "You must provide an argument table when creating DeleteWorkerBlockResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteWorkerBlockResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- * RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- * OverrideRejection [Boolean] <p> A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>. </p>
-- Required key: AssignmentId
-- @return ApproveAssignmentRequest structure as a key-value pair table
function M.ApproveAssignmentRequest(args)
	assert(args, "You must provide an argument table when creating ApproveAssignmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["RequesterFeedback"] = args["RequesterFeedback"],
		["OverrideRejection"] = args["OverrideRejection"],
	}
	asserts.AssertApproveAssignmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p>The ID of the Worker whose Qualification is being updated.</p>
-- * QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required key: QualificationTypeId
-- Required key: WorkerId
-- @return GetQualificationScoreRequest structure as a key-value pair table
function M.GetQualificationScoreRequest(args)
	assert(args, "You must provide an argument table when creating GetQualificationScoreRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertGetQualificationScoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITTypeId [EntityId] <p> The ID of the newly registered HIT type.</p>
-- @return CreateHITTypeResponse structure as a key-value pair table
function M.CreateHITTypeResponse(args)
	assert(args, "You must provide an argument table when creating CreateHITTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITTypeId"] = args["HITTypeId"],
	}
	asserts.AssertCreateHITTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["Reward"] then asserts.AssertCurrencyAmount(struct["Reward"]) end
	if struct["HITLayoutId"] then asserts.AssertEntityId(struct["HITLayoutId"]) end
	if struct["LifetimeInSeconds"] then asserts.AssertLong(struct["LifetimeInSeconds"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITRequest[k], "CreateHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITLayoutParameters [HITLayoutParameterList] <p> If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. </p>
-- * RequesterAnnotation [String] <p> An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT. </p> <p> The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester. </p> <p> The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. </p>
-- * AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- * MaxAssignments [Integer] <p> The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- * Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- * Question [String] <p> The data the person completing the HIT uses to produce the results. </p> <p> Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace. </p> <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
-- * UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId. </p> <note> <p> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs. </p> </note>
-- * AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- * AssignmentReviewPolicy [ReviewPolicy] <p> The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- * QualificationRequirements [QualificationRequirementList] <p> Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the <code>ActionsGuarded</code> field on each <code>QualificationRequirement</code> structure. </p>
-- * HITReviewPolicy [ReviewPolicy] <p> The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. </p>
-- * Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- * Reward [CurrencyAmount] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- * HITLayoutId [EntityId] <p> The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters. </p> <p> Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. </p>
-- * LifetimeInSeconds [Long] <p> An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. </p>
-- * Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- Required key: LifetimeInSeconds
-- Required key: AssignmentDurationInSeconds
-- Required key: Reward
-- Required key: Title
-- Required key: Description
-- @return CreateHITRequest structure as a key-value pair table
function M.CreateHITRequest(args)
	assert(args, "You must provide an argument table when creating CreateHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITLayoutParameters"] = args["HITLayoutParameters"],
		["RequesterAnnotation"] = args["RequesterAnnotation"],
		["AutoApprovalDelayInSeconds"] = args["AutoApprovalDelayInSeconds"],
		["MaxAssignments"] = args["MaxAssignments"],
		["Title"] = args["Title"],
		["Question"] = args["Question"],
		["UniqueRequestToken"] = args["UniqueRequestToken"],
		["AssignmentDurationInSeconds"] = args["AssignmentDurationInSeconds"],
		["AssignmentReviewPolicy"] = args["AssignmentReviewPolicy"],
		["QualificationRequirements"] = args["QualificationRequirements"],
		["HITReviewPolicy"] = args["HITReviewPolicy"],
		["Keywords"] = args["Keywords"],
		["Reward"] = args["Reward"],
		["HITLayoutId"] = args["HITLayoutId"],
		["LifetimeInSeconds"] = args["LifetimeInSeconds"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteQualificationTypeResponse structure as a key-value pair table
function M.DeleteQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating DeleteQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReviewActions [ReviewActionDetailList] <p> A list of ReviewAction objects for each action specified in the Review Policy. </p>
-- * ReviewResults [ReviewResultDetailList] <p> A list of ReviewResults objects for each action specified in the Review Policy. </p>
-- @return ReviewReport structure as a key-value pair table
function M.ReviewReport(args)
	assert(args, "You must provide an argument table when creating ReviewReport")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReviewActions"] = args["ReviewActions"],
		["ReviewResults"] = args["ReviewResults"],
	}
	asserts.AssertReviewReport(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ReviewActionStatus] <p> The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or CANCELLED. </p>
-- * ActionName [String] <p> The nature of the action itself. The Review Policy is responsible for examining the HIT and Assignments, emitting results, and deciding which other actions will be necessary. </p>
-- * TargetType [String] <p> The type of object in TargetId.</p>
-- * TargetId [EntityId] <p> The specific HITId or AssignmentID targeted by the action.</p>
-- * ErrorCode [String] <p> Present only when the Results have a FAILED Status.</p>
-- * ActionId [EntityId] <p>The unique identifier for the action.</p>
-- * CompleteTime [Timestamp] <p> The date when the action was completed.</p>
-- * Result [String] <p> A description of the outcome of the review.</p>
-- @return ReviewActionDetail structure as a key-value pair table
function M.ReviewActionDetail(args)
	assert(args, "You must provide an argument table when creating ReviewActionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ActionName"] = args["ActionName"],
		["TargetType"] = args["TargetType"],
		["TargetId"] = args["TargetId"],
		["ErrorCode"] = args["ErrorCode"],
		["ActionId"] = args["ActionId"],
		["CompleteTime"] = args["CompleteTime"],
		["Result"] = args["Result"],
	}
	asserts.AssertReviewActionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p> The ID of the Worker who accepted the HIT.</p>
-- * Reason [String] <p> A message explaining the reason the Worker was blocked. </p>
-- @return WorkerBlock structure as a key-value pair table
function M.WorkerBlock(args)
	assert(args, "You must provide an argument table when creating WorkerBlock")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertWorkerBlock(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [QualificationStatus] <p> The status of the Qualifications to return. Can be <code>Granted | Revoked</code>. </p>
-- * NextToken [PaginationToken] <p>Pagination Token</p>
-- * MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- * QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualifications to return.</p>
-- Required key: QualificationTypeId
-- @return ListWorkersWithQualificationTypeRequest structure as a key-value pair table
function M.ListWorkersWithQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating ListWorkersWithQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertListWorkersWithQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- * NextToken [PaginationToken] 
-- * WorkerBlocks [WorkerBlockList] <p> The list of WorkerBlocks, containing the collection of Worker IDs and reasons for blocking.</p>
-- @return ListWorkerBlocksResponse structure as a key-value pair table
function M.ListWorkerBlocksResponse(args)
	assert(args, "You must provide an argument table when creating ListWorkerBlocksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["NextToken"] = args["NextToken"],
		["WorkerBlocks"] = args["WorkerBlocks"],
	}
	asserts.AssertListWorkerBlocksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p>The ID of the Worker to unblock.</p>
-- * Reason [String] <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
-- Required key: WorkerId
-- @return DeleteWorkerBlockRequest structure as a key-value pair table
function M.DeleteWorkerBlockRequest(args)
	assert(args, "You must provide an argument table when creating DeleteWorkerBlockRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertDeleteWorkerBlockRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p>The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- * NextToken [PaginationToken] <p>Pagination token</p>
-- * HITId [EntityId] <p>The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified</p>
-- * MaxResults [ResultSize] 
-- @return ListBonusPaymentsRequest structure as a key-value pair table
function M.ListBonusPaymentsRequest(args)
	assert(args, "You must provide an argument table when creating ListBonusPaymentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["NextToken"] = args["NextToken"],
		["HITId"] = args["HITId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListBonusPaymentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p>The number of bonus payments on this page in the filtered results list, equivalent to the number of bonus payments being returned by this call. </p>
-- * NextToken [PaginationToken] 
-- * BonusPayments [BonusPaymentList] <p>A successful request to the ListBonusPayments operation returns a list of BonusPayment objects. </p>
-- @return ListBonusPaymentsResponse structure as a key-value pair table
function M.ListBonusPaymentsResponse(args)
	assert(args, "You must provide an argument table when creating ListBonusPaymentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["NextToken"] = args["NextToken"],
		["BonusPayments"] = args["BonusPayments"],
	}
	asserts.AssertListBonusPaymentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationType [QualificationType] <p>The created Qualification type, returned as a QualificationType data structure.</p>
-- @return CreateQualificationTypeResponse structure as a key-value pair table
function M.CreateQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating CreateQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationType"] = args["QualificationType"],
	}
	asserts.AssertCreateQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["Reward"] then asserts.AssertCurrencyAmount(struct["Reward"]) end
	if struct["AutoApprovalDelayInSeconds"] then asserts.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHITTypeRequest[k], "CreateHITTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHITTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p> A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. </p>
-- * Title [String] <p> The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. </p>
-- * AssignmentDurationInSeconds [Long] <p> The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. </p>
-- * QualificationRequirements [QualificationRequirementList] <p> Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the <code>ActionsGuarded</code> field on each <code>QualificationRequirement</code> structure. </p>
-- * Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. </p>
-- * Reward [CurrencyAmount] <p> The amount of money the Requester will pay a Worker for successfully completing the HIT. </p>
-- * AutoApprovalDelayInSeconds [Long] <p> The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. </p>
-- Required key: AssignmentDurationInSeconds
-- Required key: Reward
-- Required key: Title
-- Required key: Description
-- @return CreateHITTypeRequest structure as a key-value pair table
function M.CreateHITTypeRequest(args)
	assert(args, "You must provide an argument table when creating CreateHITTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Title"] = args["Title"],
		["AssignmentDurationInSeconds"] = args["AssignmentDurationInSeconds"],
		["QualificationRequirements"] = args["QualificationRequirements"],
		["Keywords"] = args["Keywords"],
		["Reward"] = args["Reward"],
		["AutoApprovalDelayInSeconds"] = args["AutoApprovalDelayInSeconds"],
	}
	asserts.AssertCreateHITTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
-- @return CreateHITResponse structure as a key-value pair table
function M.CreateHITResponse(args)
	assert(args, "You must provide an argument table when creating CreateHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HIT"] = args["HIT"],
	}
	asserts.AssertCreateHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectAssignmentRequest = { ["AssignmentId"] = true, ["RequesterFeedback"] = true, nil }

function asserts.AssertRejectAssignmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectAssignmentRequest to be of type 'table'")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	assert(struct["RequesterFeedback"], "Expected key RequesterFeedback to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["RequesterFeedback"] then asserts.AssertString(struct["RequesterFeedback"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectAssignmentRequest[k], "RejectAssignmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectAssignmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p> The ID of the assignment. The assignment must correspond to a HIT created by the Requester. </p>
-- * RequesterFeedback [String] <p> A message for the Worker, which the Worker can see in the Status section of the web site. </p>
-- Required key: AssignmentId
-- Required key: RequesterFeedback
-- @return RejectAssignmentRequest structure as a key-value pair table
function M.RejectAssignmentRequest(args)
	assert(args, "You must provide an argument table when creating RejectAssignmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["RequesterFeedback"] = args["RequesterFeedback"],
	}
	asserts.AssertRejectAssignmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [Boolean] <p> Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed. </p>
-- * HITTypeId [EntityId] <p> The ID of the HIT type whose notification specification is being updated. </p>
-- * Notification [NotificationSpecification] <p> The notification specification for the HIT type. </p>
-- Required key: HITTypeId
-- @return UpdateNotificationSettingsRequest structure as a key-value pair table
function M.UpdateNotificationSettingsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateNotificationSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Active"] = args["Active"],
		["HITTypeId"] = args["HITTypeId"],
		["Notification"] = args["Notification"],
	}
	asserts.AssertUpdateNotificationSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [QualificationStatus] <p> The status of the Qualification. Valid values are Granted | Revoked.</p>
-- * QualificationTypeId [EntityId] <p> The ID of the Qualification type for the Qualification.</p>
-- * WorkerId [CustomerId] <p> The ID of the Worker who possesses the Qualification. </p>
-- * LocaleValue [Locale] 
-- * GrantTime [Timestamp] <p> The date and time the Qualification was granted to the Worker. If the Worker's Qualification was revoked, and then re-granted based on a new Qualification request, GrantTime is the date and time of the last call to the AcceptQualificationRequest operation.</p>
-- * IntegerValue [Integer] <p> The value (score) of the Qualification, if the Qualification has an integer value.</p>
-- @return Qualification structure as a key-value pair table
function M.Qualification(args)
	assert(args, "You must provide an argument table when creating Qualification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["QualificationTypeId"] = args["QualificationTypeId"],
		["WorkerId"] = args["WorkerId"],
		["LocaleValue"] = args["LocaleValue"],
		["GrantTime"] = args["GrantTime"],
		["IntegerValue"] = args["IntegerValue"],
	}
	asserts.AssertQualification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateExpirationForHITResponse structure as a key-value pair table
function M.UpdateExpirationForHITResponse(args)
	assert(args, "You must provide an argument table when creating UpdateExpirationForHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateExpirationForHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of Qualification types on this page in the filtered results list, equivalent to the number of types this operation returns. </p>
-- * QualificationTypes [QualificationTypeList] <p> The list of QualificationType elements returned by the query. </p>
-- * NextToken [PaginationToken] 
-- @return ListQualificationTypesResponse structure as a key-value pair table
function M.ListQualificationTypesResponse(args)
	assert(args, "You must provide an argument table when creating ListQualificationTypesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["QualificationTypes"] = args["QualificationTypes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListQualificationTypesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Qualification [Qualification] <p> The Qualification data structure of the Qualification assigned to a user, including the Qualification type and the value (score). </p>
-- @return GetQualificationScoreResponse structure as a key-value pair table
function M.GetQualificationScoreResponse(args)
	assert(args, "You must provide an argument table when creating GetQualificationScoreResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Qualification"] = args["Qualification"],
	}
	asserts.AssertGetQualificationScoreResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AcceptQualificationRequestResponse structure as a key-value pair table
function M.AcceptQualificationRequestResponse(args)
	assert(args, "You must provide an argument table when creating AcceptQualificationRequestResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAcceptQualificationRequestResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BonusPayment = { ["AssignmentId"] = true, ["WorkerId"] = true, ["BonusAmount"] = true, ["GrantTime"] = true, ["Reason"] = true, nil }

function asserts.AssertBonusPayment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BonusPayment to be of type 'table'")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then asserts.AssertCurrencyAmount(struct["BonusAmount"]) end
	if struct["GrantTime"] then asserts.AssertTimestamp(struct["GrantTime"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.BonusPayment[k], "BonusPayment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BonusPayment
-- <p>An object representing a Bonus payment paid to a Worker.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p>The ID of the assignment associated with this bonus payment.</p>
-- * WorkerId [CustomerId] <p>The ID of the Worker to whom the bonus was paid.</p>
-- * BonusAmount [CurrencyAmount] 
-- * GrantTime [Timestamp] <p>The date and time of when the bonus was granted.</p>
-- * Reason [String] <p>The Reason text given when the bonus was granted, if any.</p>
-- @return BonusPayment structure as a key-value pair table
function M.BonusPayment(args)
	assert(args, "You must provide an argument table when creating BonusPayment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["WorkerId"] = args["WorkerId"],
		["BonusAmount"] = args["BonusAmount"],
		["GrantTime"] = args["GrantTime"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertBonusPayment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reason [String] <p>A text message explaining why the request was rejected, to be shown to the Worker who made the request.</p>
-- * QualificationRequestId [String] <p> The ID of the Qualification request, as returned by the <code>ListQualificationRequests</code> operation. </p>
-- Required key: QualificationRequestId
-- @return RejectQualificationRequestRequest structure as a key-value pair table
function M.RejectQualificationRequestRequest(args)
	assert(args, "You must provide an argument table when creating RejectQualificationRequestRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reason"] = args["Reason"],
		["QualificationRequestId"] = args["QualificationRequestId"],
	}
	asserts.AssertRejectQualificationRequestRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateQualificationFromWorkerResponse structure as a key-value pair table
function M.DisassociateQualificationFromWorkerResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateQualificationFromWorkerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateQualificationFromWorkerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoGranted [Boolean] <p>Specifies that requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Valid values are True | False.</p>
-- * Description [String] <p> A long description for the Qualification type. </p>
-- * QualificationTypeId [EntityId] <p> A unique identifier for the Qualification type. A Qualification type is given a Qualification type ID when you call the CreateQualificationType operation. </p>
-- * AutoGrantedValue [Integer] <p> The Qualification integer value to use for automatically granted Qualifications, if AutoGranted is true. This is 1 by default. </p>
-- * CreationTime [Timestamp] <p> The date and time the Qualification type was created. </p>
-- * TestDurationInSeconds [Long] <p> The amount of time, in seconds, given to a Worker to complete the Qualification test, beginning from the time the Worker requests the Qualification. </p>
-- * QualificationTypeStatus [QualificationTypeStatus] <p> The status of the Qualification type. A Qualification type's status determines if users can apply to receive a Qualification of this type, and if HITs can be created with requirements based on this type. Valid values are Active | Inactive. </p>
-- * Test [String] <p> The questions for a Qualification test associated with this Qualification type that a user can take to obtain a Qualification of this type. This parameter must be specified if AnswerKey is present. A Qualification type cannot have both a specified Test parameter and an AutoGranted value of true. </p>
-- * AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter.</p>
-- * IsRequestable [Boolean] <p> Specifies whether the Qualification type is one that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test. This value is False for Qualifications assigned automatically by the system. Valid values are True | False. </p>
-- * Keywords [String] <p> One or more words or phrases that describe theQualification type, separated by commas. The Keywords make the type easier to find using a search. </p>
-- * RetryDelayInSeconds [Long] <p> The amount of time, in seconds, Workers must wait after taking the Qualification test before they can take it again. Workers can take a Qualification test multiple times if they were not granted the Qualification from a previous attempt, or if the test offers a gradient score and they want a better score. If not specified, retries are disabled and Workers can request a Qualification only once. </p>
-- * Name [String] <p> The name of the Qualification type. The type name is used to identify the type, and to find the type using a Qualification type search. </p>
-- @return QualificationType structure as a key-value pair table
function M.QualificationType(args)
	assert(args, "You must provide an argument table when creating QualificationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoGranted"] = args["AutoGranted"],
		["Description"] = args["Description"],
		["QualificationTypeId"] = args["QualificationTypeId"],
		["AutoGrantedValue"] = args["AutoGrantedValue"],
		["CreationTime"] = args["CreationTime"],
		["TestDurationInSeconds"] = args["TestDurationInSeconds"],
		["QualificationTypeStatus"] = args["QualificationTypeStatus"],
		["Test"] = args["Test"],
		["AnswerKey"] = args["AnswerKey"],
		["IsRequestable"] = args["IsRequestable"],
		["Keywords"] = args["Keywords"],
		["RetryDelayInSeconds"] = args["RetryDelayInSeconds"],
		["Name"] = args["Name"],
	}
	asserts.AssertQualificationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Revert [Boolean] <p> Specifies how to update the HIT status. Default is <code>False</code>. </p> <ul> <li> <p> Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code> </p> </li> <li> <p> Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code> </p> </li> </ul>
-- * HITId [EntityId] <p> The ID of the HIT to update. </p>
-- Required key: HITId
-- @return UpdateHITReviewStatusRequest structure as a key-value pair table
function M.UpdateHITReviewStatusRequest(args)
	assert(args, "You must provide an argument table when creating UpdateHITReviewStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Revert"] = args["Revert"],
		["HITId"] = args["HITId"],
	}
	asserts.AssertUpdateHITReviewStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p>The number of Qualification requests on this page in the filtered results list, equivalent to the number of Qualification requests being returned by this call.</p>
-- * QualificationRequests [QualificationRequestList] <p>The Qualification request. The response includes one QualificationRequest element for each Qualification request returned by the query.</p>
-- * NextToken [PaginationToken] 
-- @return ListQualificationRequestsResponse structure as a key-value pair table
function M.ListQualificationRequestsResponse(args)
	assert(args, "You must provide an argument table when creating ListQualificationRequestsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["QualificationRequests"] = args["QualificationRequests"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListQualificationRequestsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MapEntries [ParameterMapEntryList] <p> List of ParameterMapEntry objects. </p>
-- * Values [StringList] <p> The list of values of the Parameter</p>
-- * Key [String] <p> Name of the parameter from the list of Review Polices. </p>
-- @return PolicyParameter structure as a key-value pair table
function M.PolicyParameter(args)
	assert(args, "You must provide an argument table when creating PolicyParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MapEntries"] = args["MapEntries"],
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertPolicyParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuestionId [EntityId] <p> Specifies the QuestionId the result is describing. Depending on whether the TargetType is a HIT or Assignment this results could specify multiple values. If TargetType is HIT and QuestionId is absent, then the result describes results of the HIT, including the HIT agreement score. If ObjectType is Assignment and QuestionId is absent, then the result describes the Worker's performance on the HIT. </p>
-- * SubjectType [String] <p> The type of the object from the SubjectId field.</p>
-- * Value [String] <p> The values of Key provided by the review policies you have selected. </p>
-- * ActionId [EntityId] <p> A unique identifier of the Review action result. </p>
-- * Key [String] <p> Key identifies the particular piece of reviewed information. </p>
-- * SubjectId [EntityId] <p>The HITID or AssignmentId about which this result was taken. Note that HIT-level Review Policies will often emit results about both the HIT itself and its Assignments, while Assignment-level review policies generally only emit results about the Assignment itself. </p>
-- @return ReviewResultDetail structure as a key-value pair table
function M.ReviewResultDetail(args)
	assert(args, "You must provide an argument table when creating ReviewResultDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QuestionId"] = args["QuestionId"],
		["SubjectType"] = args["SubjectType"],
		["Value"] = args["Value"],
		["ActionId"] = args["ActionId"],
		["Key"] = args["Key"],
		["SubjectId"] = args["SubjectId"],
	}
	asserts.AssertReviewResultDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendBonusResponse structure as a key-value pair table
function M.SendBonusResponse(args)
	assert(args, "You must provide an argument table when creating SendBonusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendBonusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITId [EntityId] <p>The ID of the HIT to be deleted.</p>
-- Required key: HITId
-- @return DeleteHITRequest structure as a key-value pair table
function M.DeleteHITRequest(args)
	assert(args, "You must provide an argument table when creating DeleteHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITId"] = args["HITId"],
	}
	asserts.AssertDeleteHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateWorkerBlockResponse structure as a key-value pair table
function M.CreateWorkerBlockResponse(args)
	assert(args, "You must provide an argument table when creating CreateWorkerBlockResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateWorkerBlockResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationTypeId [EntityId] <p>The ID of the QualificationType to dispose.</p>
-- Required key: QualificationTypeId
-- @return DeleteQualificationTypeRequest structure as a key-value pair table
function M.DeleteQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating DeleteQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertDeleteQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateAdditionalAssignmentsForHITResponse structure as a key-value pair table
function M.CreateAdditionalAssignmentsForHITResponse(args)
	assert(args, "You must provide an argument table when creating CreateAdditionalAssignmentsForHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateAdditionalAssignmentsForHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITReviewReport [ReviewReport] <p>Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-- * AssignmentReviewReport [ReviewReport] <p> Contains both ReviewResult and ReviewAction elements for an Assignment. </p>
-- * AssignmentReviewPolicy [ReviewPolicy] <p> The name of the Assignment-level Review Policy. This contains only the PolicyName element. </p>
-- * HITId [EntityId] <p>The HITId of the HIT for which results have been returned.</p>
-- * HITReviewPolicy [ReviewPolicy] <p>The name of the HIT-level Review Policy. This contains only the PolicyName element.</p>
-- * NextToken [PaginationToken] 
-- @return ListReviewPolicyResultsForHITResponse structure as a key-value pair table
function M.ListReviewPolicyResultsForHITResponse(args)
	assert(args, "You must provide an argument table when creating ListReviewPolicyResultsForHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITReviewReport"] = args["HITReviewReport"],
		["AssignmentReviewReport"] = args["AssignmentReviewReport"],
		["AssignmentReviewPolicy"] = args["AssignmentReviewPolicy"],
		["HITId"] = args["HITId"],
		["HITReviewPolicy"] = args["HITReviewPolicy"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListReviewPolicyResultsForHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoGranted [Boolean] <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p> <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
-- * Description [String] <p>The new description of the Qualification type.</p>
-- * QualificationTypeId [EntityId] <p>The ID of the Qualification type to update.</p>
-- * TestDurationInSeconds [Long] <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
-- * QualificationTypeStatus [QualificationTypeStatus] <p>The new status of the Qualification type - Active | Inactive</p>
-- * AnswerKey [String] <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
-- * AutoGrantedValue [Integer] <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
-- * Test [String] <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p> <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p> <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
-- * RetryDelayInSeconds [Long] <p>The amount of time, in seconds, that Workers must wait after requesting a Qualification of the specified Qualification type before they can retry the Qualification request. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must dispose of the existing retry-enabled Qualification type using DisposeQualificationType and then create a new Qualification type with retries disabled using CreateQualificationType.</p>
-- Required key: QualificationTypeId
-- @return UpdateQualificationTypeRequest structure as a key-value pair table
function M.UpdateQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoGranted"] = args["AutoGranted"],
		["Description"] = args["Description"],
		["QualificationTypeId"] = args["QualificationTypeId"],
		["TestDurationInSeconds"] = args["TestDurationInSeconds"],
		["QualificationTypeStatus"] = args["QualificationTypeStatus"],
		["AnswerKey"] = args["AnswerKey"],
		["AutoGrantedValue"] = args["AutoGrantedValue"],
		["Test"] = args["Test"],
		["RetryDelayInSeconds"] = args["RetryDelayInSeconds"],
	}
	asserts.AssertUpdateQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAdditionalAssignmentsForHITRequest = { ["NumberOfAdditionalAssignments"] = true, ["HITId"] = true, ["UniqueRequestToken"] = true, nil }

function asserts.AssertCreateAdditionalAssignmentsForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAdditionalAssignmentsForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	assert(struct["NumberOfAdditionalAssignments"], "Expected key NumberOfAdditionalAssignments to exist in table")
	if struct["NumberOfAdditionalAssignments"] then asserts.AssertInteger(struct["NumberOfAdditionalAssignments"]) end
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAdditionalAssignmentsForHITRequest[k], "CreateAdditionalAssignmentsForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAdditionalAssignmentsForHITRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfAdditionalAssignments [Integer] <p>The number of additional assignments to request for this HIT.</p>
-- * HITId [EntityId] <p>The ID of the HIT to extend.</p>
-- * UniqueRequestToken [IdempotencyToken] <p> A unique identifier for this request, which allows you to retry the call on error without extending the HIT multiple times. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the extend HIT already exists in the system from a previous call using the same <code>UniqueRequestToken</code>, subsequent calls will return an error with a message containing the request ID. </p>
-- Required key: HITId
-- Required key: NumberOfAdditionalAssignments
-- @return CreateAdditionalAssignmentsForHITRequest structure as a key-value pair table
function M.CreateAdditionalAssignmentsForHITRequest(args)
	assert(args, "You must provide an argument table when creating CreateAdditionalAssignmentsForHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfAdditionalAssignments"] = args["NumberOfAdditionalAssignments"],
		["HITId"] = args["HITId"],
		["UniqueRequestToken"] = args["UniqueRequestToken"],
	}
	asserts.AssertCreateAdditionalAssignmentsForHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountBalanceResponse = { ["AvailableBalance"] = true, ["OnHoldBalance"] = true, nil }

function asserts.AssertGetAccountBalanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountBalanceResponse to be of type 'table'")
	if struct["AvailableBalance"] then asserts.AssertCurrencyAmount(struct["AvailableBalance"]) end
	if struct["OnHoldBalance"] then asserts.AssertCurrencyAmount(struct["OnHoldBalance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountBalanceResponse[k], "GetAccountBalanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountBalanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailableBalance [CurrencyAmount] 
-- * OnHoldBalance [CurrencyAmount] 
-- @return GetAccountBalanceResponse structure as a key-value pair table
function M.GetAccountBalanceResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountBalanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailableBalance"] = args["AvailableBalance"],
		["OnHoldBalance"] = args["OnHoldBalance"],
	}
	asserts.AssertGetAccountBalanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateExpirationForHITRequest = { ["HITId"] = true, ["ExpireAt"] = true, nil }

function asserts.AssertUpdateExpirationForHITRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateExpirationForHITRequest to be of type 'table'")
	assert(struct["HITId"], "Expected key HITId to exist in table")
	assert(struct["ExpireAt"], "Expected key ExpireAt to exist in table")
	if struct["HITId"] then asserts.AssertEntityId(struct["HITId"]) end
	if struct["ExpireAt"] then asserts.AssertTimestamp(struct["ExpireAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateExpirationForHITRequest[k], "UpdateExpirationForHITRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateExpirationForHITRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITId [EntityId] <p> The HIT to update. </p>
-- * ExpireAt [Timestamp] <p> The date and time at which you want the HIT to expire </p>
-- Required key: HITId
-- Required key: ExpireAt
-- @return UpdateExpirationForHITRequest structure as a key-value pair table
function M.UpdateExpirationForHITRequest(args)
	assert(args, "You must provide an argument table when creating UpdateExpirationForHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITId"] = args["HITId"],
		["ExpireAt"] = args["ExpireAt"],
	}
	asserts.AssertUpdateExpirationForHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- * TurkErrorCode [TurkErrorCode] 
-- @return ServiceFault structure as a key-value pair table
function M.ServiceFault(args)
	assert(args, "You must provide an argument table when creating ServiceFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["TurkErrorCode"] = args["TurkErrorCode"],
	}
	asserts.AssertServiceFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteHITResponse structure as a key-value pair table
function M.DeleteHITResponse(args)
	assert(args, "You must provide an argument table when creating DeleteHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationTypeId [EntityId] <p>The ID of the QualificationType.</p>
-- Required key: QualificationTypeId
-- @return GetQualificationTypeRequest structure as a key-value pair table
function M.GetQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating GetQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertGetQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RejectQualificationRequestResponse structure as a key-value pair table
function M.RejectQualificationRequestResponse(args)
	assert(args, "You must provide an argument table when creating RejectQualificationRequestResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRejectQualificationRequestResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationType [QualificationType] <p> Contains a QualificationType data structure.</p>
-- @return UpdateQualificationTypeResponse structure as a key-value pair table
function M.UpdateQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating UpdateQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationType"] = args["QualificationType"],
	}
	asserts.AssertUpdateQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateNotificationSettingsResponse structure as a key-value pair table
function M.UpdateNotificationSettingsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateNotificationSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateNotificationSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QualificationType [QualificationType] <p> The returned Qualification Type</p>
-- @return GetQualificationTypeResponse structure as a key-value pair table
function M.GetQualificationTypeResponse(args)
	assert(args, "You must provide an argument table when creating GetQualificationTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QualificationType"] = args["QualificationType"],
	}
	asserts.AssertGetQualificationTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p>The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.</p>
-- * HITs [HITList] <p> The list of HIT elements returned by the query.</p>
-- * NextToken [PaginationToken] 
-- @return ListHITsResponse structure as a key-value pair table
function M.ListHITsResponse(args)
	assert(args, "You must provide an argument table when creating ListHITsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["HITs"] = args["HITs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHITsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RejectAssignmentResponse structure as a key-value pair table
function M.RejectAssignmentResponse(args)
	assert(args, "You must provide an argument table when creating RejectAssignmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRejectAssignmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITTypeId [EntityId] <p>The ID of the new HIT type.</p>
-- * HITId [EntityId] <p>The HIT to update.</p>
-- Required key: HITId
-- Required key: HITTypeId
-- @return UpdateHITTypeOfHITRequest structure as a key-value pair table
function M.UpdateHITTypeOfHITRequest(args)
	assert(args, "You must provide an argument table when creating UpdateHITTypeOfHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITTypeId"] = args["HITTypeId"],
		["HITId"] = args["HITId"],
	}
	asserts.AssertUpdateHITTypeOfHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Assignment [Assignment] <p> The assignment. The response includes one Assignment element. </p>
-- * HIT [HIT] <p> The HIT associated with this assignment. The response includes one HIT element.</p>
-- @return GetAssignmentResponse structure as a key-value pair table
function M.GetAssignmentResponse(args)
	assert(args, "You must provide an argument table when creating GetAssignmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Assignment"] = args["Assignment"],
		["HIT"] = args["HIT"],
	}
	asserts.AssertGetAssignmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Query [String] <p> A text query against all of the searchable attributes of Qualification types. </p>
-- * MustBeOwnedByCaller [Boolean] <p> Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types. </p>
-- * NextToken [PaginationToken] 
-- * MaxResults [ResultSize] <p> The maximum number of results to return in a single call. </p>
-- * MustBeRequestable [Boolean] <p>Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False. </p>
-- Required key: MustBeRequestable
-- @return ListQualificationTypesRequest structure as a key-value pair table
function M.ListQualificationTypesRequest(args)
	assert(args, "You must provide an argument table when creating ListQualificationTypesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Query"] = args["Query"],
		["MustBeOwnedByCaller"] = args["MustBeOwnedByCaller"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["MustBeRequestable"] = args["MustBeRequestable"],
	}
	asserts.AssertListQualificationTypesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountBalanceRequest structure as a key-value pair table
function M.GetAccountBalanceRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountBalanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAccountBalanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerIds [CustomerIdList] <p>A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.</p>
-- * MessageText [String] <p>The text of the email message to send. Can include up to 4,096 characters</p>
-- * Subject [String] <p>The subject line of the email message to send. Can include up to 200 characters.</p>
-- Required key: Subject
-- Required key: MessageText
-- Required key: WorkerIds
-- @return NotifyWorkersRequest structure as a key-value pair table
function M.NotifyWorkersRequest(args)
	assert(args, "You must provide an argument table when creating NotifyWorkersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerIds"] = args["WorkerIds"],
		["MessageText"] = args["MessageText"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertNotifyWorkersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendTestEventNotificationResponse structure as a key-value pair table
function M.SendTestEventNotificationResponse(args)
	assert(args, "You must provide an argument table when creating SendTestEventNotificationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendTestEventNotificationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p> The ID of the Worker to whom the Qualification is being assigned. Worker IDs are included with submitted HIT assignments and Qualification requests. </p>
-- * SendNotification [Boolean] <p> Specifies whether to send a notification email message to the Worker saying that the qualification was assigned to the Worker. Note: this is true by default. </p>
-- * IntegerValue [Integer] <p>The value of the Qualification to assign.</p>
-- * QualificationTypeId [EntityId] <p>The ID of the Qualification type to use for the assigned Qualification.</p>
-- Required key: QualificationTypeId
-- Required key: WorkerId
-- @return AssociateQualificationWithWorkerRequest structure as a key-value pair table
function M.AssociateQualificationWithWorkerRequest(args)
	assert(args, "You must provide an argument table when creating AssociateQualificationWithWorkerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["SendNotification"] = args["SendNotification"],
		["IntegerValue"] = args["IntegerValue"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertAssociateQualificationWithWorkerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["Reward"] then asserts.AssertCurrencyAmount(struct["Reward"]) end
	if struct["HITLayoutId"] then asserts.AssertEntityId(struct["HITLayoutId"]) end
	if struct["HITReviewStatus"] then asserts.AssertHITReviewStatus(struct["HITReviewStatus"]) end
	if struct["AutoApprovalDelayInSeconds"] then asserts.AssertLong(struct["AutoApprovalDelayInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.HIT[k], "HIT contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HIT
-- <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITGroupId [EntityId] <p> The ID of the HIT Group of this HIT.</p>
-- * RequesterAnnotation [String] <p> An arbitrary data field the Requester who created the HIT can use. This field is visible only to the creator of the HIT.</p>
-- * NumberOfAssignmentsCompleted [Integer] <p> The number of assignments for this HIT that have been approved or rejected.</p>
-- * Description [String] <p> A general description of the HIT.</p>
-- * MaxAssignments [Integer] <p>The number of times the HIT can be accepted and completed before the HIT becomes unavailable. </p>
-- * Title [String] <p> The title of the HIT.</p>
-- * NumberOfAssignmentsAvailable [Integer] <p> The number of assignments for this HIT that are available for Workers to accept.</p>
-- * Question [String] <p> The data the Worker completing the HIT uses produce the results. This is either either a QuestionForm, HTMLQuestion or an ExternalQuestion data structure.</p>
-- * CreationTime [Timestamp] <p> The date and time the HIT was created.</p>
-- * AssignmentDurationInSeconds [Long] <p> The length of time, in seconds, that a Worker has to complete the HIT after accepting it.</p>
-- * HITTypeId [EntityId] <p>The ID of the HIT type of this HIT</p>
-- * NumberOfAssignmentsPending [Integer] <p> The number of assignments for this HIT that are being previewed or have been accepted by Workers, but have not yet been submitted, returned, or abandoned.</p>
-- * HITStatus [HITStatus] <p>The status of the HIT and its assignments. Valid Values are Assignable | Unassignable | Reviewable | Reviewing | Disposed. </p>
-- * HITId [EntityId] <p> A unique identifier for the HIT.</p>
-- * QualificationRequirements [QualificationRequirementList] <p> Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the <code>ActionsGuarded</code> field on each <code>QualificationRequirement</code> structure. </p>
-- * Keywords [String] <p> One or more words or phrases that describe the HIT, separated by commas. Search terms similar to the keywords of a HIT are more likely to have the HIT in the search results.</p>
-- * Expiration [Timestamp] <p>The date and time the HIT expires.</p>
-- * Reward [CurrencyAmount] 
-- * HITLayoutId [EntityId] <p> The ID of the HIT Layout of this HIT.</p>
-- * HITReviewStatus [HITReviewStatus] <p> Indicates the review status of the HIT. Valid Values are NotReviewed | MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.</p>
-- * AutoApprovalDelayInSeconds [Long] <p>The amount of time, in seconds, after the Worker submits an assignment for the HIT that the results are automatically approved by Amazon Mechanical Turk. This is the amount of time the Requester has to reject an assignment submitted by a Worker before the assignment is auto-approved and the Worker is paid. </p>
-- @return HIT structure as a key-value pair table
function M.HIT(args)
	assert(args, "You must provide an argument table when creating HIT")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITGroupId"] = args["HITGroupId"],
		["RequesterAnnotation"] = args["RequesterAnnotation"],
		["NumberOfAssignmentsCompleted"] = args["NumberOfAssignmentsCompleted"],
		["Description"] = args["Description"],
		["MaxAssignments"] = args["MaxAssignments"],
		["Title"] = args["Title"],
		["NumberOfAssignmentsAvailable"] = args["NumberOfAssignmentsAvailable"],
		["Question"] = args["Question"],
		["CreationTime"] = args["CreationTime"],
		["AssignmentDurationInSeconds"] = args["AssignmentDurationInSeconds"],
		["HITTypeId"] = args["HITTypeId"],
		["NumberOfAssignmentsPending"] = args["NumberOfAssignmentsPending"],
		["HITStatus"] = args["HITStatus"],
		["HITId"] = args["HITId"],
		["QualificationRequirements"] = args["QualificationRequirements"],
		["Keywords"] = args["Keywords"],
		["Expiration"] = args["Expiration"],
		["Reward"] = args["Reward"],
		["HITLayoutId"] = args["HITLayoutId"],
		["HITReviewStatus"] = args["HITReviewStatus"],
		["AutoApprovalDelayInSeconds"] = args["AutoApprovalDelayInSeconds"],
	}
	asserts.AssertHIT(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HIT [HIT] <p> Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation. </p>
-- @return CreateHITWithHITTypeResponse structure as a key-value pair table
function M.CreateHITWithHITTypeResponse(args)
	assert(args, "You must provide an argument table when creating CreateHITWithHITTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HIT"] = args["HIT"],
	}
	asserts.AssertCreateHITWithHITTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>Pagination Token</p>
-- * MaxResults [ResultSize] <p> Limit the number of results returned. </p>
-- * QualificationTypeId [EntityId] <p> The ID of the Qualification type to use when querying HITs. </p>
-- Required key: QualificationTypeId
-- @return ListHITsForQualificationTypeRequest structure as a key-value pair table
function M.ListHITsForQualificationTypeRequest(args)
	assert(args, "You must provide an argument table when creating ListHITsForQualificationTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertListHITsForQualificationTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HITLayoutParameter = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertHITLayoutParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HITLayoutParameter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HITLayoutParameter[k], "HITLayoutParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HITLayoutParameter
-- <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p> The name of the parameter in the HITLayout. </p>
-- * Value [String] <p>The value substituted for the parameter referenced in the HITLayout. </p>
-- Required key: Name
-- Required key: Value
-- @return HITLayoutParameter structure as a key-value pair table
function M.HITLayoutParameter(args)
	assert(args, "You must provide an argument table when creating HITLayoutParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertHITLayoutParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotifyWorkersFailureStatuses [NotifyWorkersFailureStatusList] <p> When MTurk sends notifications to the list of Workers, it returns back any failures it encounters in this list of NotifyWorkersFailureStatus objects. </p>
-- @return NotifyWorkersResponse structure as a key-value pair table
function M.NotifyWorkersResponse(args)
	assert(args, "You must provide an argument table when creating NotifyWorkersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotifyWorkersFailureStatuses"] = args["NotifyWorkersFailureStatuses"],
	}
	asserts.AssertNotifyWorkersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Country [CountryParameters] <p> The country of the locale. Must be a valid ISO 3166 country code. For example, the code US refers to the United States of America. </p>
-- * Subdivision [CountryParameters] <p>The state or subdivision of the locale. A valid ISO 3166-2 subdivision code. For example, the code WA refers to the state of Washington.</p>
-- Required key: Country
-- @return Locale structure as a key-value pair table
function M.Locale(args)
	assert(args, "You must provide an argument table when creating Locale")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Country"] = args["Country"],
		["Subdivision"] = args["Subdivision"],
	}
	asserts.AssertLocale(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumResults [Integer] <p> The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.</p>
-- * Assignments [AssignmentList] <p> The collection of Assignment data structures returned by this call.</p>
-- * NextToken [PaginationToken] 
-- @return ListAssignmentsForHITResponse structure as a key-value pair table
function M.ListAssignmentsForHITResponse(args)
	assert(args, "You must provide an argument table when creating ListAssignmentsForHITResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumResults"] = args["NumResults"],
		["Assignments"] = args["Assignments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListAssignmentsForHITResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendBonusRequest = { ["AssignmentId"] = true, ["WorkerId"] = true, ["BonusAmount"] = true, ["Reason"] = true, ["UniqueRequestToken"] = true, nil }

function asserts.AssertSendBonusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBonusRequest to be of type 'table'")
	assert(struct["WorkerId"], "Expected key WorkerId to exist in table")
	assert(struct["BonusAmount"], "Expected key BonusAmount to exist in table")
	assert(struct["AssignmentId"], "Expected key AssignmentId to exist in table")
	assert(struct["Reason"], "Expected key Reason to exist in table")
	if struct["AssignmentId"] then asserts.AssertEntityId(struct["AssignmentId"]) end
	if struct["WorkerId"] then asserts.AssertCustomerId(struct["WorkerId"]) end
	if struct["BonusAmount"] then asserts.AssertCurrencyAmount(struct["BonusAmount"]) end
	if struct["Reason"] then asserts.AssertString(struct["Reason"]) end
	if struct["UniqueRequestToken"] then asserts.AssertIdempotencyToken(struct["UniqueRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBonusRequest[k], "SendBonusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBonusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p>The ID of the assignment for which this bonus is paid.</p>
-- * WorkerId [CustomerId] <p>The ID of the Worker being paid the bonus.</p>
-- * BonusAmount [CurrencyAmount] <p> The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and "101.42" represents $101.42 USD). Do not include currency symbols or currency codes. </p>
-- * Reason [String] <p>A message that explains the reason for the bonus payment. The Worker receiving the bonus can see this message.</p>
-- * UniqueRequestToken [IdempotencyToken] <p>A unique identifier for this request, which allows you to retry the call on error without granting multiple bonuses. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the bonus already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID.</p>
-- Required key: WorkerId
-- Required key: BonusAmount
-- Required key: AssignmentId
-- Required key: Reason
-- @return SendBonusRequest structure as a key-value pair table
function M.SendBonusRequest(args)
	assert(args, "You must provide an argument table when creating SendBonusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["WorkerId"] = args["WorkerId"],
		["BonusAmount"] = args["BonusAmount"],
		["Reason"] = args["Reason"],
		["UniqueRequestToken"] = args["UniqueRequestToken"],
	}
	asserts.AssertSendBonusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationSpecification = { ["EventTypes"] = true, ["Destination"] = true, ["Version"] = true, ["Transport"] = true, nil }

function asserts.AssertNotificationSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationSpecification to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Transport"], "Expected key Transport to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["EventTypes"], "Expected key EventTypes to exist in table")
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventTypes [EventTypeList] <p> The list of events that should cause notifications to be sent. Valid Values: AssignmentAccepted | AssignmentAbandoned | AssignmentReturned | AssignmentSubmitted | AssignmentRejected | AssignmentApproved | HITCreated | HITExtended | HITDisposed | HITReviewable | HITExpired | Ping. The Ping event is only valid for the SendTestEventNotification operation. </p>
-- * Destination [String] <p> The target for notification messages. The Destination’s format is determined by the specified Transport: </p> <ul> <li> <p>When Transport is Email, the Destination is your email address.</p> </li> <li> <p>When Transport is SQS, the Destination is your queue URL.</p> </li> <li> <p>When Transport is SNS, the Destination is the ARN of your topic.</p> </li> </ul>
-- * Version [String] <p>The version of the Notification API to use. Valid value is 2006-05-05.</p>
-- * Transport [NotificationTransport] <p> The method Amazon Mechanical Turk uses to send the notification. Valid Values: Email | SQS | SNS. </p>
-- Required key: Destination
-- Required key: Transport
-- Required key: Version
-- Required key: EventTypes
-- @return NotificationSpecification structure as a key-value pair table
function M.NotificationSpecification(args)
	assert(args, "You must provide an argument table when creating NotificationSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventTypes"] = args["EventTypes"],
		["Destination"] = args["Destination"],
		["Version"] = args["Version"],
		["Transport"] = args["Transport"],
	}
	asserts.AssertNotificationSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssignmentId [EntityId] <p>The ID of the assignment that contains the question with a FileUploadAnswer.</p>
-- * QuestionIdentifier [String] <p>The identifier of the question with a FileUploadAnswer, as specified in the QuestionForm of the HIT.</p>
-- Required key: AssignmentId
-- Required key: QuestionIdentifier
-- @return GetFileUploadURLRequest structure as a key-value pair table
function M.GetFileUploadURLRequest(args)
	assert(args, "You must provide an argument table when creating GetFileUploadURLRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssignmentId"] = args["AssignmentId"],
		["QuestionIdentifier"] = args["QuestionIdentifier"],
	}
	asserts.AssertGetFileUploadURLRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReviewPolicy = { ["PolicyName"] = true, ["Parameters"] = true, nil }

function asserts.AssertReviewPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReviewPolicy to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertString(struct["PolicyName"]) end
	if struct["Parameters"] then asserts.AssertPolicyParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReviewPolicy[k], "ReviewPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReviewPolicy
-- <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [String] <p> Name of a Review Policy: SimplePlurality/2011-09-01 or ScoreMyKnownAnswers/2011-09-01 </p>
-- * Parameters [PolicyParameterList] <p>Name of the parameter from the Review policy.</p>
-- Required key: PolicyName
-- @return ReviewPolicy structure as a key-value pair table
function M.ReviewPolicy(args)
	assert(args, "You must provide an argument table when creating ReviewPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertReviewPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkerId [CustomerId] <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
-- * Reason [String] <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
-- * QualificationTypeId [EntityId] <p>The ID of the Qualification type of the Qualification to be revoked.</p>
-- Required key: WorkerId
-- Required key: QualificationTypeId
-- @return DisassociateQualificationFromWorkerRequest structure as a key-value pair table
function M.DisassociateQualificationFromWorkerRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateQualificationFromWorkerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkerId"] = args["WorkerId"],
		["Reason"] = args["Reason"],
		["QualificationTypeId"] = args["QualificationTypeId"],
	}
	asserts.AssertDisassociateQualificationFromWorkerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HITId [EntityId] <p>The ID of the HIT to be retrieved.</p>
-- Required key: HITId
-- @return GetHITRequest structure as a key-value pair table
function M.GetHITRequest(args)
	assert(args, "You must provide an argument table when creating GetHITRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HITId"] = args["HITId"],
	}
	asserts.AssertGetHITRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertCurrencyAmount(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrencyAmount to be of type 'string'")
end

-- <p>A string representing a currency amount.</p>
function M.CurrencyAmount(str)
	asserts.AssertCurrencyAmount(str)
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

function asserts.AssertHITAccessActions(str)
	assert(str)
	assert(type(str) == "string", "Expected HITAccessActions to be of type 'string'")
end

--  
function M.HITAccessActions(str)
	asserts.AssertHITAccessActions(str)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call SendBonus asynchronously, invoking a callback when done
-- @param SendBonusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendBonusAsync(SendBonusRequest, cb)
	assert(SendBonusRequest, "You must provide a SendBonusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.SendBonus",
	}
	for header,value in pairs(SendBonusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendBonusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendBonus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendBonusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendBonusSync(SendBonusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendBonusAsync(SendBonusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateQualificationWithWorker asynchronously, invoking a callback when done
-- @param AssociateQualificationWithWorkerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateQualificationWithWorkerAsync(AssociateQualificationWithWorkerRequest, cb)
	assert(AssociateQualificationWithWorkerRequest, "You must provide a AssociateQualificationWithWorkerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.AssociateQualificationWithWorker",
	}
	for header,value in pairs(AssociateQualificationWithWorkerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateQualificationWithWorkerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateQualificationWithWorker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateQualificationWithWorkerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateQualificationWithWorkerSync(AssociateQualificationWithWorkerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateQualificationWithWorkerAsync(AssociateQualificationWithWorkerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateHITTypeOfHIT asynchronously, invoking a callback when done
-- @param UpdateHITTypeOfHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateHITTypeOfHITAsync(UpdateHITTypeOfHITRequest, cb)
	assert(UpdateHITTypeOfHITRequest, "You must provide a UpdateHITTypeOfHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateHITTypeOfHIT",
	}
	for header,value in pairs(UpdateHITTypeOfHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateHITTypeOfHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateHITTypeOfHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateHITTypeOfHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateHITTypeOfHITSync(UpdateHITTypeOfHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateHITTypeOfHITAsync(UpdateHITTypeOfHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNotificationSettings asynchronously, invoking a callback when done
-- @param UpdateNotificationSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNotificationSettingsAsync(UpdateNotificationSettingsRequest, cb)
	assert(UpdateNotificationSettingsRequest, "You must provide a UpdateNotificationSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateNotificationSettings",
	}
	for header,value in pairs(UpdateNotificationSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNotificationSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNotificationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNotificationSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNotificationSettingsSync(UpdateNotificationSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNotificationSettingsAsync(UpdateNotificationSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWorkerBlocks asynchronously, invoking a callback when done
-- @param ListWorkerBlocksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListWorkerBlocksAsync(ListWorkerBlocksRequest, cb)
	assert(ListWorkerBlocksRequest, "You must provide a ListWorkerBlocksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListWorkerBlocks",
	}
	for header,value in pairs(ListWorkerBlocksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListWorkerBlocksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListWorkerBlocks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWorkerBlocksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListWorkerBlocksSync(ListWorkerBlocksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWorkerBlocksAsync(ListWorkerBlocksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReviewableHITs asynchronously, invoking a callback when done
-- @param ListReviewableHITsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListReviewableHITsAsync(ListReviewableHITsRequest, cb)
	assert(ListReviewableHITsRequest, "You must provide a ListReviewableHITsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListReviewableHITs",
	}
	for header,value in pairs(ListReviewableHITsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListReviewableHITsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReviewableHITs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReviewableHITsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListReviewableHITsSync(ListReviewableHITsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReviewableHITsAsync(ListReviewableHITsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssignmentsForHIT asynchronously, invoking a callback when done
-- @param ListAssignmentsForHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAssignmentsForHITAsync(ListAssignmentsForHITRequest, cb)
	assert(ListAssignmentsForHITRequest, "You must provide a ListAssignmentsForHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListAssignmentsForHIT",
	}
	for header,value in pairs(ListAssignmentsForHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssignmentsForHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssignmentsForHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssignmentsForHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAssignmentsForHITSync(ListAssignmentsForHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssignmentsForHITAsync(ListAssignmentsForHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateQualificationFromWorker asynchronously, invoking a callback when done
-- @param DisassociateQualificationFromWorkerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateQualificationFromWorkerAsync(DisassociateQualificationFromWorkerRequest, cb)
	assert(DisassociateQualificationFromWorkerRequest, "You must provide a DisassociateQualificationFromWorkerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DisassociateQualificationFromWorker",
	}
	for header,value in pairs(DisassociateQualificationFromWorkerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateQualificationFromWorkerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateQualificationFromWorker synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateQualificationFromWorkerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateQualificationFromWorkerSync(DisassociateQualificationFromWorkerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateQualificationFromWorkerAsync(DisassociateQualificationFromWorkerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectQualificationRequest asynchronously, invoking a callback when done
-- @param RejectQualificationRequestRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RejectQualificationRequestAsync(RejectQualificationRequestRequest, cb)
	assert(RejectQualificationRequestRequest, "You must provide a RejectQualificationRequestRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.RejectQualificationRequest",
	}
	for header,value in pairs(RejectQualificationRequestRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RejectQualificationRequestRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectQualificationRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectQualificationRequestRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RejectQualificationRequestSync(RejectQualificationRequestRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectQualificationRequestAsync(RejectQualificationRequestRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHITType asynchronously, invoking a callback when done
-- @param CreateHITTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHITTypeAsync(CreateHITTypeRequest, cb)
	assert(CreateHITTypeRequest, "You must provide a CreateHITTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHITType",
	}
	for header,value in pairs(CreateHITTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHITTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHITType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHITTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateHITTypeSync(CreateHITTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHITTypeAsync(CreateHITTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFileUploadURL asynchronously, invoking a callback when done
-- @param GetFileUploadURLRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFileUploadURLAsync(GetFileUploadURLRequest, cb)
	assert(GetFileUploadURLRequest, "You must provide a GetFileUploadURLRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetFileUploadURL",
	}
	for header,value in pairs(GetFileUploadURLRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetFileUploadURLRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFileUploadURL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFileUploadURLRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFileUploadURLSync(GetFileUploadURLRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFileUploadURLAsync(GetFileUploadURLRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReviewPolicyResultsForHIT asynchronously, invoking a callback when done
-- @param ListReviewPolicyResultsForHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListReviewPolicyResultsForHITAsync(ListReviewPolicyResultsForHITRequest, cb)
	assert(ListReviewPolicyResultsForHITRequest, "You must provide a ListReviewPolicyResultsForHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListReviewPolicyResultsForHIT",
	}
	for header,value in pairs(ListReviewPolicyResultsForHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListReviewPolicyResultsForHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReviewPolicyResultsForHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReviewPolicyResultsForHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListReviewPolicyResultsForHITSync(ListReviewPolicyResultsForHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReviewPolicyResultsForHITAsync(ListReviewPolicyResultsForHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateExpirationForHIT asynchronously, invoking a callback when done
-- @param UpdateExpirationForHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateExpirationForHITAsync(UpdateExpirationForHITRequest, cb)
	assert(UpdateExpirationForHITRequest, "You must provide a UpdateExpirationForHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateExpirationForHIT",
	}
	for header,value in pairs(UpdateExpirationForHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateExpirationForHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateExpirationForHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateExpirationForHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateExpirationForHITSync(UpdateExpirationForHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateExpirationForHITAsync(UpdateExpirationForHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateQualificationType asynchronously, invoking a callback when done
-- @param UpdateQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateQualificationTypeAsync(UpdateQualificationTypeRequest, cb)
	assert(UpdateQualificationTypeRequest, "You must provide a UpdateQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateQualificationType",
	}
	for header,value in pairs(UpdateQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateQualificationTypeSync(UpdateQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateQualificationTypeAsync(UpdateQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call NotifyWorkers asynchronously, invoking a callback when done
-- @param NotifyWorkersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.NotifyWorkersAsync(NotifyWorkersRequest, cb)
	assert(NotifyWorkersRequest, "You must provide a NotifyWorkersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.NotifyWorkers",
	}
	for header,value in pairs(NotifyWorkersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", NotifyWorkersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call NotifyWorkers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param NotifyWorkersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.NotifyWorkersSync(NotifyWorkersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.NotifyWorkersAsync(NotifyWorkersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQualificationTypes asynchronously, invoking a callback when done
-- @param ListQualificationTypesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListQualificationTypesAsync(ListQualificationTypesRequest, cb)
	assert(ListQualificationTypesRequest, "You must provide a ListQualificationTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListQualificationTypes",
	}
	for header,value in pairs(ListQualificationTypesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListQualificationTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListQualificationTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQualificationTypesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListQualificationTypesSync(ListQualificationTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQualificationTypesAsync(ListQualificationTypesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHIT asynchronously, invoking a callback when done
-- @param CreateHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHITAsync(CreateHITRequest, cb)
	assert(CreateHITRequest, "You must provide a CreateHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHIT",
	}
	for header,value in pairs(CreateHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateHITSync(CreateHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHITAsync(CreateHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHITsForQualificationType asynchronously, invoking a callback when done
-- @param ListHITsForQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHITsForQualificationTypeAsync(ListHITsForQualificationTypeRequest, cb)
	assert(ListHITsForQualificationTypeRequest, "You must provide a ListHITsForQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListHITsForQualificationType",
	}
	for header,value in pairs(ListHITsForQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHITsForQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHITsForQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHITsForQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListHITsForQualificationTypeSync(ListHITsForQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHITsForQualificationTypeAsync(ListHITsForQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptQualificationRequest asynchronously, invoking a callback when done
-- @param AcceptQualificationRequestRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptQualificationRequestAsync(AcceptQualificationRequestRequest, cb)
	assert(AcceptQualificationRequestRequest, "You must provide a AcceptQualificationRequestRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.AcceptQualificationRequest",
	}
	for header,value in pairs(AcceptQualificationRequestRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcceptQualificationRequestRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptQualificationRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptQualificationRequestRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptQualificationRequestSync(AcceptQualificationRequestRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptQualificationRequestAsync(AcceptQualificationRequestRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQualificationRequests asynchronously, invoking a callback when done
-- @param ListQualificationRequestsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListQualificationRequestsAsync(ListQualificationRequestsRequest, cb)
	assert(ListQualificationRequestsRequest, "You must provide a ListQualificationRequestsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListQualificationRequests",
	}
	for header,value in pairs(ListQualificationRequestsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListQualificationRequestsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListQualificationRequests synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQualificationRequestsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListQualificationRequestsSync(ListQualificationRequestsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQualificationRequestsAsync(ListQualificationRequestsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateHITReviewStatus asynchronously, invoking a callback when done
-- @param UpdateHITReviewStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateHITReviewStatusAsync(UpdateHITReviewStatusRequest, cb)
	assert(UpdateHITReviewStatusRequest, "You must provide a UpdateHITReviewStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.UpdateHITReviewStatus",
	}
	for header,value in pairs(UpdateHITReviewStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateHITReviewStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateHITReviewStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateHITReviewStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateHITReviewStatusSync(UpdateHITReviewStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateHITReviewStatusAsync(UpdateHITReviewStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHITs asynchronously, invoking a callback when done
-- @param ListHITsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHITsAsync(ListHITsRequest, cb)
	assert(ListHITsRequest, "You must provide a ListHITsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListHITs",
	}
	for header,value in pairs(ListHITsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHITsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHITs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHITsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListHITsSync(ListHITsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHITsAsync(ListHITsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWorkersWithQualificationType asynchronously, invoking a callback when done
-- @param ListWorkersWithQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListWorkersWithQualificationTypeAsync(ListWorkersWithQualificationTypeRequest, cb)
	assert(ListWorkersWithQualificationTypeRequest, "You must provide a ListWorkersWithQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListWorkersWithQualificationType",
	}
	for header,value in pairs(ListWorkersWithQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListWorkersWithQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListWorkersWithQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWorkersWithQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListWorkersWithQualificationTypeSync(ListWorkersWithQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWorkersWithQualificationTypeAsync(ListWorkersWithQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountBalance asynchronously, invoking a callback when done
-- @param GetAccountBalanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountBalanceAsync(GetAccountBalanceRequest, cb)
	assert(GetAccountBalanceRequest, "You must provide a GetAccountBalanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetAccountBalance",
	}
	for header,value in pairs(GetAccountBalanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAccountBalanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountBalance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountBalanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountBalanceSync(GetAccountBalanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountBalanceAsync(GetAccountBalanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteQualificationType asynchronously, invoking a callback when done
-- @param DeleteQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteQualificationTypeAsync(DeleteQualificationTypeRequest, cb)
	assert(DeleteQualificationTypeRequest, "You must provide a DeleteQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteQualificationType",
	}
	for header,value in pairs(DeleteQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteQualificationTypeSync(DeleteQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteQualificationTypeAsync(DeleteQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTestEventNotification asynchronously, invoking a callback when done
-- @param SendTestEventNotificationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendTestEventNotificationAsync(SendTestEventNotificationRequest, cb)
	assert(SendTestEventNotificationRequest, "You must provide a SendTestEventNotificationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.SendTestEventNotification",
	}
	for header,value in pairs(SendTestEventNotificationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendTestEventNotificationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendTestEventNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTestEventNotificationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendTestEventNotificationSync(SendTestEventNotificationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTestEventNotificationAsync(SendTestEventNotificationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHITWithHITType asynchronously, invoking a callback when done
-- @param CreateHITWithHITTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHITWithHITTypeAsync(CreateHITWithHITTypeRequest, cb)
	assert(CreateHITWithHITTypeRequest, "You must provide a CreateHITWithHITTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateHITWithHITType",
	}
	for header,value in pairs(CreateHITWithHITTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHITWithHITTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHITWithHITType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHITWithHITTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateHITWithHITTypeSync(CreateHITWithHITTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHITWithHITTypeAsync(CreateHITWithHITTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateWorkerBlock asynchronously, invoking a callback when done
-- @param CreateWorkerBlockRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateWorkerBlockAsync(CreateWorkerBlockRequest, cb)
	assert(CreateWorkerBlockRequest, "You must provide a CreateWorkerBlockRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateWorkerBlock",
	}
	for header,value in pairs(CreateWorkerBlockRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateWorkerBlockRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateWorkerBlock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateWorkerBlockRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateWorkerBlockSync(CreateWorkerBlockRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateWorkerBlockAsync(CreateWorkerBlockRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApproveAssignment asynchronously, invoking a callback when done
-- @param ApproveAssignmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApproveAssignmentAsync(ApproveAssignmentRequest, cb)
	assert(ApproveAssignmentRequest, "You must provide a ApproveAssignmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ApproveAssignment",
	}
	for header,value in pairs(ApproveAssignmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApproveAssignmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApproveAssignment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApproveAssignmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ApproveAssignmentSync(ApproveAssignmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApproveAssignmentAsync(ApproveAssignmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBonusPayments asynchronously, invoking a callback when done
-- @param ListBonusPaymentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBonusPaymentsAsync(ListBonusPaymentsRequest, cb)
	assert(ListBonusPaymentsRequest, "You must provide a ListBonusPaymentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.ListBonusPayments",
	}
	for header,value in pairs(ListBonusPaymentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBonusPaymentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBonusPayments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBonusPaymentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBonusPaymentsSync(ListBonusPaymentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBonusPaymentsAsync(ListBonusPaymentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHIT asynchronously, invoking a callback when done
-- @param DeleteHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHITAsync(DeleteHITRequest, cb)
	assert(DeleteHITRequest, "You must provide a DeleteHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteHIT",
	}
	for header,value in pairs(DeleteHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteHITSync(DeleteHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHITAsync(DeleteHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQualificationScore asynchronously, invoking a callback when done
-- @param GetQualificationScoreRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetQualificationScoreAsync(GetQualificationScoreRequest, cb)
	assert(GetQualificationScoreRequest, "You must provide a GetQualificationScoreRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetQualificationScore",
	}
	for header,value in pairs(GetQualificationScoreRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQualificationScoreRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQualificationScore synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQualificationScoreRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetQualificationScoreSync(GetQualificationScoreRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQualificationScoreAsync(GetQualificationScoreRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteWorkerBlock asynchronously, invoking a callback when done
-- @param DeleteWorkerBlockRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteWorkerBlockAsync(DeleteWorkerBlockRequest, cb)
	assert(DeleteWorkerBlockRequest, "You must provide a DeleteWorkerBlockRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.DeleteWorkerBlock",
	}
	for header,value in pairs(DeleteWorkerBlockRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteWorkerBlockRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteWorkerBlock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteWorkerBlockRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteWorkerBlockSync(DeleteWorkerBlockRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteWorkerBlockAsync(DeleteWorkerBlockRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQualificationType asynchronously, invoking a callback when done
-- @param GetQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetQualificationTypeAsync(GetQualificationTypeRequest, cb)
	assert(GetQualificationTypeRequest, "You must provide a GetQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetQualificationType",
	}
	for header,value in pairs(GetQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetQualificationTypeSync(GetQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQualificationTypeAsync(GetQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectAssignment asynchronously, invoking a callback when done
-- @param RejectAssignmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RejectAssignmentAsync(RejectAssignmentRequest, cb)
	assert(RejectAssignmentRequest, "You must provide a RejectAssignmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.RejectAssignment",
	}
	for header,value in pairs(RejectAssignmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RejectAssignmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectAssignment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectAssignmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RejectAssignmentSync(RejectAssignmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectAssignmentAsync(RejectAssignmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateQualificationType asynchronously, invoking a callback when done
-- @param CreateQualificationTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateQualificationTypeAsync(CreateQualificationTypeRequest, cb)
	assert(CreateQualificationTypeRequest, "You must provide a CreateQualificationTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateQualificationType",
	}
	for header,value in pairs(CreateQualificationTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateQualificationTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateQualificationType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateQualificationTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateQualificationTypeSync(CreateQualificationTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateQualificationTypeAsync(CreateQualificationTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAssignment asynchronously, invoking a callback when done
-- @param GetAssignmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAssignmentAsync(GetAssignmentRequest, cb)
	assert(GetAssignmentRequest, "You must provide a GetAssignmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetAssignment",
	}
	for header,value in pairs(GetAssignmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAssignmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAssignment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAssignmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAssignmentSync(GetAssignmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAssignmentAsync(GetAssignmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHIT asynchronously, invoking a callback when done
-- @param GetHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetHITAsync(GetHITRequest, cb)
	assert(GetHITRequest, "You must provide a GetHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.GetHIT",
	}
	for header,value in pairs(GetHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetHITSync(GetHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHITAsync(GetHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAdditionalAssignmentsForHIT asynchronously, invoking a callback when done
-- @param CreateAdditionalAssignmentsForHITRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAdditionalAssignmentsForHITAsync(CreateAdditionalAssignmentsForHITRequest, cb)
	assert(CreateAdditionalAssignmentsForHITRequest, "You must provide a CreateAdditionalAssignmentsForHITRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MTurkRequesterServiceV20170117.CreateAdditionalAssignmentsForHIT",
	}
	for header,value in pairs(CreateAdditionalAssignmentsForHITRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAdditionalAssignmentsForHITRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAdditionalAssignmentsForHIT synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAdditionalAssignmentsForHITRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAdditionalAssignmentsForHITSync(CreateAdditionalAssignmentsForHITRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAdditionalAssignmentsForHITAsync(CreateAdditionalAssignmentsForHITRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
