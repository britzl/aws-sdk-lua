--- GENERATED CODE - DO NOT MODIFY
-- AWS Data Pipeline (datapipeline-2012-10-29)

local M = {}

M.metadata = {
	api_version = "2012-10-29",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "datapipeline",
	service_abbreviation = "",
	service_full_name = "AWS Data Pipeline",
	signature_version = "v4",
	target_prefix = "DataPipeline",
	timestamp_format = "",
	global_endpoint = "",
	uid = "datapipeline-2012-10-29",
}

local CreatePipelineInput_keys = { "tags" = true, "name" = true, "uniqueId" = true, "description" = true, nil }

function M.AssertCreatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["uniqueId"], "Expected key uniqueId to exist in table")
	if struct["tags"] then M.AsserttagList(struct["tags"]) end
	if struct["name"] then M.Assertid(struct["name"]) end
	if struct["uniqueId"] then M.Assertid(struct["uniqueId"]) end
	if struct["description"] then M.Assertstring(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineInput_keys[k], "CreatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineInput
-- <p>Contains the parameters for CreatePipeline.</p>
-- @param tags [tagList] <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param name [id] <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
-- @param uniqueId [id] <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
-- @param description [string] <p>The description for the pipeline.</p>
-- Required parameter: name
-- Required parameter: uniqueId
function M.CreatePipelineInput(tags, name, uniqueId, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineInput")
	local t = { 
		["tags"] = tags,
		["name"] = name,
		["uniqueId"] = uniqueId,
		["description"] = description,
	}
	M.AssertCreatePipelineInput(t)
	return t
end

local QueryObjectsInput_keys = { "marker" = true, "query" = true, "pipelineId" = true, "limit" = true, "sphere" = true, nil }

function M.AssertQueryObjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryObjectsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["sphere"], "Expected key sphere to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["query"] then M.AssertQuery(struct["query"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["limit"] then M.Assertint(struct["limit"]) end
	if struct["sphere"] then M.Assertstring(struct["sphere"]) end
	for k,_ in pairs(struct) do
		assert(QueryObjectsInput_keys[k], "QueryObjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryObjectsInput
-- <p>Contains the parameters for QueryObjects.</p>
-- @param marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>QueryObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- @param query [Query] <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param limit [int] <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
-- @param sphere [string] <p>Indicates whether the query applies to components or instances. The possible values are: <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
-- Required parameter: pipelineId
-- Required parameter: sphere
function M.QueryObjectsInput(marker, query, pipelineId, limit, sphere, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryObjectsInput")
	local t = { 
		["marker"] = marker,
		["query"] = query,
		["pipelineId"] = pipelineId,
		["limit"] = limit,
		["sphere"] = sphere,
	}
	M.AssertQueryObjectsInput(t)
	return t
end

local ListPipelinesOutput_keys = { "marker" = true, "hasMoreResults" = true, "pipelineIdList" = true, nil }

function M.AssertListPipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesOutput to be of type 'table'")
	assert(struct["pipelineIdList"], "Expected key pipelineIdList to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["hasMoreResults"] then M.Assertboolean(struct["hasMoreResults"]) end
	if struct["pipelineIdList"] then M.AssertpipelineList(struct["pipelineIdList"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesOutput_keys[k], "ListPipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesOutput
-- <p>Contains the output of ListPipelines.</p>
-- @param marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
-- @param pipelineIdList [pipelineList] <p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>
-- Required parameter: pipelineIdList
function M.ListPipelinesOutput(marker, hasMoreResults, pipelineIdList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesOutput")
	local t = { 
		["marker"] = marker,
		["hasMoreResults"] = hasMoreResults,
		["pipelineIdList"] = pipelineIdList,
	}
	M.AssertListPipelinesOutput(t)
	return t
end

local SetTaskStatusInput_keys = { "errorStackTrace" = true, "errorMessage" = true, "errorId" = true, "taskId" = true, "taskStatus" = true, nil }

function M.AssertSetTaskStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTaskStatusInput to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	assert(struct["taskStatus"], "Expected key taskStatus to exist in table")
	if struct["errorStackTrace"] then M.Assertstring(struct["errorStackTrace"]) end
	if struct["errorMessage"] then M.AsserterrorMessage(struct["errorMessage"]) end
	if struct["errorId"] then M.Assertstring(struct["errorId"]) end
	if struct["taskId"] then M.AsserttaskId(struct["taskId"]) end
	if struct["taskStatus"] then M.AssertTaskStatus(struct["taskStatus"]) end
	for k,_ in pairs(struct) do
		assert(SetTaskStatusInput_keys[k], "SetTaskStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTaskStatusInput
-- <p>Contains the parameters for SetTaskStatus.</p>
-- @param errorStackTrace [string] <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- @param errorMessage [errorMessage] <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- @param errorId [string] <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
-- @param taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- @param taskStatus [TaskStatus] <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
-- Required parameter: taskId
-- Required parameter: taskStatus
function M.SetTaskStatusInput(errorStackTrace, errorMessage, errorId, taskId, taskStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTaskStatusInput")
	local t = { 
		["errorStackTrace"] = errorStackTrace,
		["errorMessage"] = errorMessage,
		["errorId"] = errorId,
		["taskId"] = taskId,
		["taskStatus"] = taskStatus,
	}
	M.AssertSetTaskStatusInput(t)
	return t
end

local EvaluateExpressionInput_keys = { "pipelineId" = true, "expression" = true, "objectId" = true, nil }

function M.AssertEvaluateExpressionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluateExpressionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectId"], "Expected key objectId to exist in table")
	assert(struct["expression"], "Expected key expression to exist in table")
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["expression"] then M.AssertlongString(struct["expression"]) end
	if struct["objectId"] then M.Assertid(struct["objectId"]) end
	for k,_ in pairs(struct) do
		assert(EvaluateExpressionInput_keys[k], "EvaluateExpressionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluateExpressionInput
-- <p>Contains the parameters for EvaluateExpression.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param expression [longString] <p>The expression to evaluate.</p>
-- @param objectId [id] <p>The ID of the object.</p>
-- Required parameter: pipelineId
-- Required parameter: objectId
-- Required parameter: expression
function M.EvaluateExpressionInput(pipelineId, expression, objectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluateExpressionInput")
	local t = { 
		["pipelineId"] = pipelineId,
		["expression"] = expression,
		["objectId"] = objectId,
	}
	M.AssertEvaluateExpressionInput(t)
	return t
end

local SetTaskStatusOutput_keys = { nil }

function M.AssertSetTaskStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTaskStatusOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetTaskStatusOutput_keys[k], "SetTaskStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTaskStatusOutput
-- <p>Contains the output of SetTaskStatus.</p>
function M.SetTaskStatusOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTaskStatusOutput")
	local t = { 
	}
	M.AssertSetTaskStatusOutput(t)
	return t
end

local InstanceIdentity_keys = { "document" = true, "signature" = true, nil }

function M.AssertInstanceIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdentity to be of type 'table'")
	if struct["document"] then M.Assertstring(struct["document"]) end
	if struct["signature"] then M.Assertstring(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(InstanceIdentity_keys[k], "InstanceIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdentity
-- <p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>
-- @param document [string] <p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>
-- @param signature [string] <p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>
function M.InstanceIdentity(document, signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdentity")
	local t = { 
		["document"] = document,
		["signature"] = signature,
	}
	M.AssertInstanceIdentity(t)
	return t
end

local ParameterAttribute_keys = { "stringValue" = true, "key" = true, nil }

function M.AssertParameterAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterAttribute to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["stringValue"], "Expected key stringValue to exist in table")
	if struct["stringValue"] then M.AssertattributeValueString(struct["stringValue"]) end
	if struct["key"] then M.AssertattributeNameString(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(ParameterAttribute_keys[k], "ParameterAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterAttribute
-- <p>The attributes allowed or specified with a parameter object.</p>
-- @param stringValue [attributeValueString] <p>The field value, expressed as a String.</p>
-- @param key [attributeNameString] <p>The field identifier.</p>
-- Required parameter: key
-- Required parameter: stringValue
function M.ParameterAttribute(stringValue, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterAttribute")
	local t = { 
		["stringValue"] = stringValue,
		["key"] = key,
	}
	M.AssertParameterAttribute(t)
	return t
end

local ValidationError_keys = { "errors" = true, "id" = true, nil }

function M.AssertValidationError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationError to be of type 'table'")
	if struct["errors"] then M.AssertvalidationMessages(struct["errors"]) end
	if struct["id"] then M.Assertid(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(ValidationError_keys[k], "ValidationError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationError
-- <p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>
-- @param errors [validationMessages] <p>A description of the validation error.</p>
-- @param id [id] <p>The identifier of the object that contains the validation error.</p>
function M.ValidationError(errors, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationError")
	local t = { 
		["errors"] = errors,
		["id"] = id,
	}
	M.AssertValidationError(t)
	return t
end

local PipelineDeletedException_keys = { "message" = true, nil }

function M.AssertPipelineDeletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDeletedException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PipelineDeletedException_keys[k], "PipelineDeletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDeletedException
-- <p>The specified pipeline has been deleted.</p>
-- @param message [errorMessage] <p>Description of the error message.</p>
function M.PipelineDeletedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineDeletedException")
	local t = { 
		["message"] = message,
	}
	M.AssertPipelineDeletedException(t)
	return t
end

local GetPipelineDefinitionOutput_keys = { "parameterValues" = true, "pipelineObjects" = true, "parameterObjects" = true, nil }

function M.AssertGetPipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineDefinitionOutput to be of type 'table'")
	if struct["parameterValues"] then M.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then M.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["parameterObjects"] then M.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineDefinitionOutput_keys[k], "GetPipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineDefinitionOutput
-- <p>Contains the output of GetPipelineDefinition.</p>
-- @param parameterValues [ParameterValueList] <p>The parameter values used in the pipeline definition.</p>
-- @param pipelineObjects [PipelineObjectList] <p>The objects defined in the pipeline.</p>
-- @param parameterObjects [ParameterObjectList] <p>The parameter objects used in the pipeline definition.</p>
function M.GetPipelineDefinitionOutput(parameterValues, pipelineObjects, parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineDefinitionOutput")
	local t = { 
		["parameterValues"] = parameterValues,
		["pipelineObjects"] = pipelineObjects,
		["parameterObjects"] = parameterObjects,
	}
	M.AssertGetPipelineDefinitionOutput(t)
	return t
end

local TaskNotFoundException_keys = { "message" = true, nil }

function M.AssertTaskNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskNotFoundException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TaskNotFoundException_keys[k], "TaskNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskNotFoundException
-- <p>The specified task was not found. </p>
-- @param message [errorMessage] <p>Description of the error message.</p>
function M.TaskNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertTaskNotFoundException(t)
	return t
end

local DescribeObjectsOutput_keys = { "marker" = true, "pipelineObjects" = true, "hasMoreResults" = true, nil }

function M.AssertDescribeObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectsOutput to be of type 'table'")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["pipelineObjects"] then M.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["hasMoreResults"] then M.Assertboolean(struct["hasMoreResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeObjectsOutput_keys[k], "DescribeObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectsOutput
-- <p>Contains the output of DescribeObjects.</p>
-- @param marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param pipelineObjects [PipelineObjectList] <p>An array of object definitions.</p>
-- @param hasMoreResults [boolean] <p>Indicates whether there are more results to return.</p>
-- Required parameter: pipelineObjects
function M.DescribeObjectsOutput(marker, pipelineObjects, hasMoreResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeObjectsOutput")
	local t = { 
		["marker"] = marker,
		["pipelineObjects"] = pipelineObjects,
		["hasMoreResults"] = hasMoreResults,
	}
	M.AssertDescribeObjectsOutput(t)
	return t
end

local ReportTaskProgressInput_keys = { "fields" = true, "taskId" = true, nil }

function M.AssertReportTaskProgressInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskProgressInput to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	if struct["fields"] then M.AssertfieldList(struct["fields"]) end
	if struct["taskId"] then M.AsserttaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(ReportTaskProgressInput_keys[k], "ReportTaskProgressInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskProgressInput
-- <p>Contains the parameters for ReportTaskProgress.</p>
-- @param fields [fieldList] <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
-- @param taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- Required parameter: taskId
function M.ReportTaskProgressInput(fields, taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskProgressInput")
	local t = { 
		["fields"] = fields,
		["taskId"] = taskId,
	}
	M.AssertReportTaskProgressInput(t)
	return t
end

local Tag_keys = { "value" = true, "key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AsserttagValue(struct["value"]) end
	if struct["key"] then M.AsserttagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param value [tagValue] <p>The optional value portion of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param key [tagKey] <p>The key name of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- Required parameter: key
-- Required parameter: value
function M.Tag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertTag(t)
	return t
end

local Operator_keys = { "values" = true, "type" = true, nil }

function M.AssertOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Operator to be of type 'table'")
	if struct["values"] then M.AssertstringList(struct["values"]) end
	if struct["type"] then M.AssertOperatorType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(Operator_keys[k], "Operator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Operator
-- <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
-- @param values [stringList] <p>The value that the actual field value will be compared with.</p>
-- @param type [OperatorType] <p> The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below. </p> <p> The comparison operators EQ and REF_EQ act on the following fields: </p> <ul> <li>name</li> <li>@sphere</li> <li>parent</li> <li>@componentParent</li> <li>@instanceParent</li> <li>@status</li> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p> The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields: </p> <ul> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string "my".</p>
function M.Operator(values, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Operator")
	local t = { 
		["values"] = values,
		["type"] = type,
	}
	M.AssertOperator(t)
	return t
end

local InternalServiceError_keys = { "message" = true, nil }

function M.AssertInternalServiceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceError to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceError_keys[k], "InternalServiceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceError
-- <p>An internal service error occurred.</p>
-- @param message [errorMessage] <p>Description of the error message.</p>
function M.InternalServiceError(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceError")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServiceError(t)
	return t
end

local DescribePipelinesInput_keys = { "pipelineIds" = true, nil }

function M.AssertDescribePipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelinesInput to be of type 'table'")
	assert(struct["pipelineIds"], "Expected key pipelineIds to exist in table")
	if struct["pipelineIds"] then M.AssertidList(struct["pipelineIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribePipelinesInput_keys[k], "DescribePipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelinesInput
-- <p>Contains the parameters for DescribePipelines.</p>
-- @param pipelineIds [idList] <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
-- Required parameter: pipelineIds
function M.DescribePipelinesInput(pipelineIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePipelinesInput")
	local t = { 
		["pipelineIds"] = pipelineIds,
	}
	M.AssertDescribePipelinesInput(t)
	return t
end

local Selector_keys = { "operator" = true, "fieldName" = true, nil }

function M.AssertSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Selector to be of type 'table'")
	if struct["operator"] then M.AssertOperator(struct["operator"]) end
	if struct["fieldName"] then M.Assertstring(struct["fieldName"]) end
	for k,_ in pairs(struct) do
		assert(Selector_keys[k], "Selector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Selector
-- <p>A comparision that is used to determine whether a query should return this object.</p>
-- @param operator [Operator] <p>A comparision that is used to determine whether a query should return this object.</p>
-- @param fieldName [string] <p>The name of the field that the operator will be applied to. The field name is the "key" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>
function M.Selector(operator, fieldName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Selector")
	local t = { 
		["operator"] = operator,
		["fieldName"] = fieldName,
	}
	M.AssertSelector(t)
	return t
end

local PipelineDescription_keys = { "fields" = true, "pipelineId" = true, "name" = true, "tags" = true, "description" = true, nil }

function M.AssertPipelineDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDescription to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["fields"], "Expected key fields to exist in table")
	if struct["fields"] then M.AssertfieldList(struct["fields"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["name"] then M.Assertid(struct["name"]) end
	if struct["tags"] then M.AsserttagList(struct["tags"]) end
	if struct["description"] then M.Assertstring(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PipelineDescription_keys[k], "PipelineDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDescription
-- <p>Contains pipeline metadata.</p>
-- @param fields [fieldList] <p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>
-- @param pipelineId [id] <p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- @param name [id] <p>The name of the pipeline.</p>
-- @param tags [tagList] <p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param description [string] <p>Description of the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: name
-- Required parameter: fields
function M.PipelineDescription(fields, pipelineId, name, tags, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineDescription")
	local t = { 
		["fields"] = fields,
		["pipelineId"] = pipelineId,
		["name"] = name,
		["tags"] = tags,
		["description"] = description,
	}
	M.AssertPipelineDescription(t)
	return t
end

local TaskObject_keys = { "objects" = true, "pipelineId" = true, "attemptId" = true, "taskId" = true, nil }

function M.AssertTaskObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskObject to be of type 'table'")
	if struct["objects"] then M.AssertPipelineObjectMap(struct["objects"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["attemptId"] then M.Assertid(struct["attemptId"]) end
	if struct["taskId"] then M.AsserttaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(TaskObject_keys[k], "TaskObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskObject
-- <p>Contains information about a pipeline task that is assigned to a task runner.</p>
-- @param objects [PipelineObjectMap] <p>Connection information for the location where the task runner will publish the output of the task.</p>
-- @param pipelineId [id] <p>The ID of the pipeline that provided the task.</p>
-- @param attemptId [id] <p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>
-- @param taskId [taskId] <p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>
function M.TaskObject(objects, pipelineId, attemptId, taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskObject")
	local t = { 
		["objects"] = objects,
		["pipelineId"] = pipelineId,
		["attemptId"] = attemptId,
		["taskId"] = taskId,
	}
	M.AssertTaskObject(t)
	return t
end

local PipelineObject_keys = { "fields" = true, "id" = true, "name" = true, nil }

function M.AssertPipelineObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineObject to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["fields"], "Expected key fields to exist in table")
	if struct["fields"] then M.AssertfieldList(struct["fields"]) end
	if struct["id"] then M.Assertid(struct["id"]) end
	if struct["name"] then M.Assertid(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(PipelineObject_keys[k], "PipelineObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineObject
-- <p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>
-- @param fields [fieldList] <p>Key-value pairs that define the properties of the object.</p>
-- @param id [id] <p>The ID of the object.</p>
-- @param name [id] <p>The name of the object.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: fields
function M.PipelineObject(fields, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineObject")
	local t = { 
		["fields"] = fields,
		["id"] = id,
		["name"] = name,
	}
	M.AssertPipelineObject(t)
	return t
end

local ValidatePipelineDefinitionInput_keys = { "parameterValues" = true, "pipelineObjects" = true, "pipelineId" = true, "parameterObjects" = true, nil }

function M.AssertValidatePipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidatePipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["parameterValues"] then M.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then M.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["parameterObjects"] then M.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(ValidatePipelineDefinitionInput_keys[k], "ValidatePipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidatePipelineDefinitionInput
-- <p>Contains the parameters for ValidatePipelineDefinition.</p>
-- @param parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- @param pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline changes to validate against the pipeline.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: pipelineObjects
function M.ValidatePipelineDefinitionInput(parameterValues, pipelineObjects, pipelineId, parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidatePipelineDefinitionInput")
	local t = { 
		["parameterValues"] = parameterValues,
		["pipelineObjects"] = pipelineObjects,
		["pipelineId"] = pipelineId,
		["parameterObjects"] = parameterObjects,
	}
	M.AssertValidatePipelineDefinitionInput(t)
	return t
end

local DeletePipelineInput_keys = { "pipelineId" = true, nil }

function M.AssertDeletePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePipelineInput_keys[k], "DeletePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineInput
-- <p>Contains the parameters for DeletePipeline.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.DeletePipelineInput(pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePipelineInput")
	local t = { 
		["pipelineId"] = pipelineId,
	}
	M.AssertDeletePipelineInput(t)
	return t
end

local ReportTaskProgressOutput_keys = { "canceled" = true, nil }

function M.AssertReportTaskProgressOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskProgressOutput to be of type 'table'")
	assert(struct["canceled"], "Expected key canceled to exist in table")
	if struct["canceled"] then M.Assertboolean(struct["canceled"]) end
	for k,_ in pairs(struct) do
		assert(ReportTaskProgressOutput_keys[k], "ReportTaskProgressOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskProgressOutput
-- <p>Contains the output of ReportTaskProgress.</p>
-- @param canceled [boolean] <p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>
-- Required parameter: canceled
function M.ReportTaskProgressOutput(canceled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskProgressOutput")
	local t = { 
		["canceled"] = canceled,
	}
	M.AssertReportTaskProgressOutput(t)
	return t
end

local PutPipelineDefinitionOutput_keys = { "validationErrors" = true, "errored" = true, "validationWarnings" = true, nil }

function M.AssertPutPipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPipelineDefinitionOutput to be of type 'table'")
	assert(struct["errored"], "Expected key errored to exist in table")
	if struct["validationErrors"] then M.AssertValidationErrors(struct["validationErrors"]) end
	if struct["errored"] then M.Assertboolean(struct["errored"]) end
	if struct["validationWarnings"] then M.AssertValidationWarnings(struct["validationWarnings"]) end
	for k,_ in pairs(struct) do
		assert(PutPipelineDefinitionOutput_keys[k], "PutPipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPipelineDefinitionOutput
-- <p>Contains the output of PutPipelineDefinition.</p>
-- @param validationErrors [ValidationErrors] <p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- @param errored [boolean] <p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>
-- @param validationWarnings [ValidationWarnings] <p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- Required parameter: errored
function M.PutPipelineDefinitionOutput(validationErrors, errored, validationWarnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutPipelineDefinitionOutput")
	local t = { 
		["validationErrors"] = validationErrors,
		["errored"] = errored,
		["validationWarnings"] = validationWarnings,
	}
	M.AssertPutPipelineDefinitionOutput(t)
	return t
end

local CreatePipelineOutput_keys = { "pipelineId" = true, nil }

function M.AssertCreatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineOutput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineOutput_keys[k], "CreatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineOutput
-- <p>Contains the output of CreatePipeline.</p>
-- @param pipelineId [id] <p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>
-- Required parameter: pipelineId
function M.CreatePipelineOutput(pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineOutput")
	local t = { 
		["pipelineId"] = pipelineId,
	}
	M.AssertCreatePipelineOutput(t)
	return t
end

local ReportTaskRunnerHeartbeatOutput_keys = { "terminate" = true, nil }

function M.AssertReportTaskRunnerHeartbeatOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskRunnerHeartbeatOutput to be of type 'table'")
	assert(struct["terminate"], "Expected key terminate to exist in table")
	if struct["terminate"] then M.Assertboolean(struct["terminate"]) end
	for k,_ in pairs(struct) do
		assert(ReportTaskRunnerHeartbeatOutput_keys[k], "ReportTaskRunnerHeartbeatOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskRunnerHeartbeatOutput
-- <p>Contains the output of ReportTaskRunnerHeartbeat.</p>
-- @param terminate [boolean] <p>Indicates whether the calling task runner should terminate.</p>
-- Required parameter: terminate
function M.ReportTaskRunnerHeartbeatOutput(terminate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskRunnerHeartbeatOutput")
	local t = { 
		["terminate"] = terminate,
	}
	M.AssertReportTaskRunnerHeartbeatOutput(t)
	return t
end

local RemoveTagsInput_keys = { "tagKeys" = true, "pipelineId" = true, nil }

function M.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["tagKeys"] then M.AssertstringList(struct["tagKeys"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsInput_keys[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
-- <p>Contains the parameters for RemoveTags.</p>
-- @param tagKeys [stringList] <p>The keys of the tags to remove.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: tagKeys
function M.RemoveTagsInput(tagKeys, pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsInput")
	local t = { 
		["tagKeys"] = tagKeys,
		["pipelineId"] = pipelineId,
	}
	M.AssertRemoveTagsInput(t)
	return t
end

local ActivatePipelineOutput_keys = { nil }

function M.AssertActivatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatePipelineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ActivatePipelineOutput_keys[k], "ActivatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatePipelineOutput
-- <p>Contains the output of ActivatePipeline.</p>
function M.ActivatePipelineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivatePipelineOutput")
	local t = { 
	}
	M.AssertActivatePipelineOutput(t)
	return t
end

local RemoveTagsOutput_keys = { nil }

function M.AssertRemoveTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsOutput_keys[k], "RemoveTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsOutput
-- <p>Contains the output of RemoveTags.</p>
function M.RemoveTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsOutput")
	local t = { 
	}
	M.AssertRemoveTagsOutput(t)
	return t
end

local Query_keys = { "selectors" = true, nil }

function M.AssertQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Query to be of type 'table'")
	if struct["selectors"] then M.AssertSelectorList(struct["selectors"]) end
	for k,_ in pairs(struct) do
		assert(Query_keys[k], "Query contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Query
-- <p>Defines the query to run against an object.</p>
-- @param selectors [SelectorList] <p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>
function M.Query(selectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Query")
	local t = { 
		["selectors"] = selectors,
	}
	M.AssertQuery(t)
	return t
end

local InvalidRequestException_keys = { "message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
-- @param message [errorMessage] <p>Description of the error message.</p>
function M.InvalidRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local SetStatusInput_keys = { "objectIds" = true, "status" = true, "pipelineId" = true, nil }

function M.AssertSetStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetStatusInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectIds"], "Expected key objectIds to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["objectIds"] then M.AssertidList(struct["objectIds"]) end
	if struct["status"] then M.Assertstring(struct["status"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(SetStatusInput_keys[k], "SetStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetStatusInput
-- <p>Contains the parameters for SetStatus.</p>
-- @param objectIds [idList] <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
-- @param status [string] <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
-- @param pipelineId [id] <p>The ID of the pipeline that contains the objects.</p>
-- Required parameter: pipelineId
-- Required parameter: objectIds
-- Required parameter: status
function M.SetStatusInput(objectIds, status, pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetStatusInput")
	local t = { 
		["objectIds"] = objectIds,
		["status"] = status,
		["pipelineId"] = pipelineId,
	}
	M.AssertSetStatusInput(t)
	return t
end

local PollForTaskOutput_keys = { "taskObject" = true, nil }

function M.AssertPollForTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForTaskOutput to be of type 'table'")
	if struct["taskObject"] then M.AssertTaskObject(struct["taskObject"]) end
	for k,_ in pairs(struct) do
		assert(PollForTaskOutput_keys[k], "PollForTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForTaskOutput
-- <p>Contains the output of PollForTask.</p>
-- @param taskObject [TaskObject] <p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> and <a>SetTaskStatus</a>.</p>
function M.PollForTaskOutput(taskObject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForTaskOutput")
	local t = { 
		["taskObject"] = taskObject,
	}
	M.AssertPollForTaskOutput(t)
	return t
end

local EvaluateExpressionOutput_keys = { "evaluatedExpression" = true, nil }

function M.AssertEvaluateExpressionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluateExpressionOutput to be of type 'table'")
	assert(struct["evaluatedExpression"], "Expected key evaluatedExpression to exist in table")
	if struct["evaluatedExpression"] then M.AssertlongString(struct["evaluatedExpression"]) end
	for k,_ in pairs(struct) do
		assert(EvaluateExpressionOutput_keys[k], "EvaluateExpressionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluateExpressionOutput
-- <p>Contains the output of EvaluateExpression.</p>
-- @param evaluatedExpression [longString] <p>The evaluated expression.</p>
-- Required parameter: evaluatedExpression
function M.EvaluateExpressionOutput(evaluatedExpression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluateExpressionOutput")
	local t = { 
		["evaluatedExpression"] = evaluatedExpression,
	}
	M.AssertEvaluateExpressionOutput(t)
	return t
end

local DeactivatePipelineOutput_keys = { nil }

function M.AssertDeactivatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatePipelineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeactivatePipelineOutput_keys[k], "DeactivatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatePipelineOutput
-- <p>Contains the output of DeactivatePipeline.</p>
function M.DeactivatePipelineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatePipelineOutput")
	local t = { 
	}
	M.AssertDeactivatePipelineOutput(t)
	return t
end

local AddTagsOutput_keys = { nil }

function M.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsOutput_keys[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
-- <p>Contains the output of AddTags.</p>
function M.AddTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
	}
	M.AssertAddTagsOutput(t)
	return t
end

local PipelineNotFoundException_keys = { "message" = true, nil }

function M.AssertPipelineNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNotFoundException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PipelineNotFoundException_keys[k], "PipelineNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNotFoundException
-- <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
-- @param message [errorMessage] <p>Description of the error message.</p>
function M.PipelineNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertPipelineNotFoundException(t)
	return t
end

local PollForTaskInput_keys = { "workerGroup" = true, "hostname" = true, "instanceIdentity" = true, nil }

function M.AssertPollForTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForTaskInput to be of type 'table'")
	assert(struct["workerGroup"], "Expected key workerGroup to exist in table")
	if struct["workerGroup"] then M.Assertstring(struct["workerGroup"]) end
	if struct["hostname"] then M.Assertid(struct["hostname"]) end
	if struct["instanceIdentity"] then M.AssertInstanceIdentity(struct["instanceIdentity"]) end
	for k,_ in pairs(struct) do
		assert(PollForTaskInput_keys[k], "PollForTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForTaskInput
-- <p>Contains the parameters for PollForTask.</p>
-- @param workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- @param hostname [id] <p>The public DNS name of the calling task runner.</p>
-- @param instanceIdentity [InstanceIdentity] <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
-- Required parameter: workerGroup
function M.PollForTaskInput(workerGroup, hostname, instanceIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForTaskInput")
	local t = { 
		["workerGroup"] = workerGroup,
		["hostname"] = hostname,
		["instanceIdentity"] = instanceIdentity,
	}
	M.AssertPollForTaskInput(t)
	return t
end

local PipelineIdName_keys = { "id" = true, "name" = true, nil }

function M.AssertPipelineIdName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineIdName to be of type 'table'")
	if struct["id"] then M.Assertid(struct["id"]) end
	if struct["name"] then M.Assertid(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(PipelineIdName_keys[k], "PipelineIdName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineIdName
-- <p>Contains the name and identifier of a pipeline.</p>
-- @param id [id] <p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- @param name [id] <p>The name of the pipeline.</p>
function M.PipelineIdName(id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineIdName")
	local t = { 
		["id"] = id,
		["name"] = name,
	}
	M.AssertPipelineIdName(t)
	return t
end

local AddTagsInput_keys = { "pipelineId" = true, "tags" = true, nil }

function M.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["tags"] then M.AsserttagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsInput_keys[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
-- <p>Contains the parameters for AddTags.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param tags [tagList] <p>The tags to add, as key/value pairs.</p>
-- Required parameter: pipelineId
-- Required parameter: tags
function M.AddTagsInput(pipelineId, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["pipelineId"] = pipelineId,
		["tags"] = tags,
	}
	M.AssertAddTagsInput(t)
	return t
end

local ParameterObject_keys = { "attributes" = true, "id" = true, nil }

function M.AssertParameterObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterObject to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then M.AssertParameterAttributeList(struct["attributes"]) end
	if struct["id"] then M.AssertfieldNameString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(ParameterObject_keys[k], "ParameterObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterObject
-- <p>Contains information about a parameter object.</p>
-- @param attributes [ParameterAttributeList] <p>The attributes of the parameter object.</p>
-- @param id [fieldNameString] <p>The ID of the parameter object. </p>
-- Required parameter: id
-- Required parameter: attributes
function M.ParameterObject(attributes, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterObject")
	local t = { 
		["attributes"] = attributes,
		["id"] = id,
	}
	M.AssertParameterObject(t)
	return t
end

local ListPipelinesInput_keys = { "marker" = true, nil }

function M.AssertListPipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesInput to be of type 'table'")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesInput_keys[k], "ListPipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesInput
-- <p>Contains the parameters for ListPipelines.</p>
-- @param marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>ListPipelines</code> with the marker value from the previous call to retrieve the next set of results.</p>
function M.ListPipelinesInput(marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesInput")
	local t = { 
		["marker"] = marker,
	}
	M.AssertListPipelinesInput(t)
	return t
end

local Field_keys = { "stringValue" = true, "refValue" = true, "key" = true, nil }

function M.AssertField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Field to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["stringValue"] then M.AssertfieldStringValue(struct["stringValue"]) end
	if struct["refValue"] then M.AssertfieldNameString(struct["refValue"]) end
	if struct["key"] then M.AssertfieldNameString(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Field_keys[k], "Field contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Field
-- <p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>
-- @param stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- @param refValue [fieldNameString] <p>The field value, expressed as the identifier of another object.</p>
-- @param key [fieldNameString] <p>The field identifier.</p>
-- Required parameter: key
function M.Field(stringValue, refValue, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Field")
	local t = { 
		["stringValue"] = stringValue,
		["refValue"] = refValue,
		["key"] = key,
	}
	M.AssertField(t)
	return t
end

local GetPipelineDefinitionInput_keys = { "pipelineId" = true, "version" = true, nil }

function M.AssertGetPipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["version"] then M.Assertstring(struct["version"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineDefinitionInput_keys[k], "GetPipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineDefinitionInput
-- <p>Contains the parameters for GetPipelineDefinition.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param version [string] <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) to use the last definition saved to the pipeline or <code>active</code> to use the last definition that was activated.</p>
-- Required parameter: pipelineId
function M.GetPipelineDefinitionInput(pipelineId, version, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineDefinitionInput")
	local t = { 
		["pipelineId"] = pipelineId,
		["version"] = version,
	}
	M.AssertGetPipelineDefinitionInput(t)
	return t
end

local DescribePipelinesOutput_keys = { "pipelineDescriptionList" = true, nil }

function M.AssertDescribePipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelinesOutput to be of type 'table'")
	assert(struct["pipelineDescriptionList"], "Expected key pipelineDescriptionList to exist in table")
	if struct["pipelineDescriptionList"] then M.AssertPipelineDescriptionList(struct["pipelineDescriptionList"]) end
	for k,_ in pairs(struct) do
		assert(DescribePipelinesOutput_keys[k], "DescribePipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelinesOutput
-- <p>Contains the output of DescribePipelines.</p>
-- @param pipelineDescriptionList [PipelineDescriptionList] <p>An array of descriptions for the specified pipelines.</p>
-- Required parameter: pipelineDescriptionList
function M.DescribePipelinesOutput(pipelineDescriptionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePipelinesOutput")
	local t = { 
		["pipelineDescriptionList"] = pipelineDescriptionList,
	}
	M.AssertDescribePipelinesOutput(t)
	return t
end

local ReportTaskRunnerHeartbeatInput_keys = { "workerGroup" = true, "hostname" = true, "taskrunnerId" = true, nil }

function M.AssertReportTaskRunnerHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskRunnerHeartbeatInput to be of type 'table'")
	assert(struct["taskrunnerId"], "Expected key taskrunnerId to exist in table")
	if struct["workerGroup"] then M.Assertstring(struct["workerGroup"]) end
	if struct["hostname"] then M.Assertid(struct["hostname"]) end
	if struct["taskrunnerId"] then M.Assertid(struct["taskrunnerId"]) end
	for k,_ in pairs(struct) do
		assert(ReportTaskRunnerHeartbeatInput_keys[k], "ReportTaskRunnerHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskRunnerHeartbeatInput
-- <p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>
-- @param workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- @param hostname [id] <p>The public DNS name of the task runner.</p>
-- @param taskrunnerId [id] <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
-- Required parameter: taskrunnerId
function M.ReportTaskRunnerHeartbeatInput(workerGroup, hostname, taskrunnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskRunnerHeartbeatInput")
	local t = { 
		["workerGroup"] = workerGroup,
		["hostname"] = hostname,
		["taskrunnerId"] = taskrunnerId,
	}
	M.AssertReportTaskRunnerHeartbeatInput(t)
	return t
end

local DeactivatePipelineInput_keys = { "cancelActive" = true, "pipelineId" = true, nil }

function M.AssertDeactivatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["cancelActive"] then M.AssertcancelActive(struct["cancelActive"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(DeactivatePipelineInput_keys[k], "DeactivatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatePipelineInput
-- <p>Contains the parameters for DeactivatePipeline.</p>
-- @param cancelActive [cancelActive] <p>Indicates whether to cancel any running objects. The default is true, which sets the state of any running objects to <code>CANCELED</code>. If this value is false, the pipeline is deactivated after all running objects finish.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.DeactivatePipelineInput(cancelActive, pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatePipelineInput")
	local t = { 
		["cancelActive"] = cancelActive,
		["pipelineId"] = pipelineId,
	}
	M.AssertDeactivatePipelineInput(t)
	return t
end

local ValidatePipelineDefinitionOutput_keys = { "validationErrors" = true, "errored" = true, "validationWarnings" = true, nil }

function M.AssertValidatePipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidatePipelineDefinitionOutput to be of type 'table'")
	assert(struct["errored"], "Expected key errored to exist in table")
	if struct["validationErrors"] then M.AssertValidationErrors(struct["validationErrors"]) end
	if struct["errored"] then M.Assertboolean(struct["errored"]) end
	if struct["validationWarnings"] then M.AssertValidationWarnings(struct["validationWarnings"]) end
	for k,_ in pairs(struct) do
		assert(ValidatePipelineDefinitionOutput_keys[k], "ValidatePipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidatePipelineDefinitionOutput
-- <p>Contains the output of ValidatePipelineDefinition.</p>
-- @param validationErrors [ValidationErrors] <p>Any validation errors that were found.</p>
-- @param errored [boolean] <p>Indicates whether there were validation errors.</p>
-- @param validationWarnings [ValidationWarnings] <p>Any validation warnings that were found.</p>
-- Required parameter: errored
function M.ValidatePipelineDefinitionOutput(validationErrors, errored, validationWarnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidatePipelineDefinitionOutput")
	local t = { 
		["validationErrors"] = validationErrors,
		["errored"] = errored,
		["validationWarnings"] = validationWarnings,
	}
	M.AssertValidatePipelineDefinitionOutput(t)
	return t
end

local DescribeObjectsInput_keys = { "objectIds" = true, "marker" = true, "pipelineId" = true, "evaluateExpressions" = true, nil }

function M.AssertDescribeObjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectIds"], "Expected key objectIds to exist in table")
	if struct["objectIds"] then M.AssertidList(struct["objectIds"]) end
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["evaluateExpressions"] then M.Assertboolean(struct["evaluateExpressions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeObjectsInput_keys[k], "DescribeObjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectsInput
-- <p>Contains the parameters for DescribeObjects.</p>
-- @param objectIds [idList] <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
-- @param marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>DescribeObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- @param pipelineId [id] <p>The ID of the pipeline that contains the object definitions.</p>
-- @param evaluateExpressions [boolean] <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
-- Required parameter: pipelineId
-- Required parameter: objectIds
function M.DescribeObjectsInput(objectIds, marker, pipelineId, evaluateExpressions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeObjectsInput")
	local t = { 
		["objectIds"] = objectIds,
		["marker"] = marker,
		["pipelineId"] = pipelineId,
		["evaluateExpressions"] = evaluateExpressions,
	}
	M.AssertDescribeObjectsInput(t)
	return t
end

local QueryObjectsOutput_keys = { "marker" = true, "ids" = true, "hasMoreResults" = true, nil }

function M.AssertQueryObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryObjectsOutput to be of type 'table'")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["ids"] then M.AssertidList(struct["ids"]) end
	if struct["hasMoreResults"] then M.Assertboolean(struct["hasMoreResults"]) end
	for k,_ in pairs(struct) do
		assert(QueryObjectsOutput_keys[k], "QueryObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryObjectsOutput
-- <p>Contains the output of QueryObjects.</p>
-- @param marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param ids [idList] <p>The identifiers that match the query selectors.</p>
-- @param hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
function M.QueryObjectsOutput(marker, ids, hasMoreResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryObjectsOutput")
	local t = { 
		["marker"] = marker,
		["ids"] = ids,
		["hasMoreResults"] = hasMoreResults,
	}
	M.AssertQueryObjectsOutput(t)
	return t
end

local ParameterValue_keys = { "stringValue" = true, "id" = true, nil }

function M.AssertParameterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterValue to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["stringValue"], "Expected key stringValue to exist in table")
	if struct["stringValue"] then M.AssertfieldStringValue(struct["stringValue"]) end
	if struct["id"] then M.AssertfieldNameString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(ParameterValue_keys[k], "ParameterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterValue
-- <p>A value or list of parameter values. </p>
-- @param stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- @param id [fieldNameString] <p>The ID of the parameter value.</p>
-- Required parameter: id
-- Required parameter: stringValue
function M.ParameterValue(stringValue, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterValue")
	local t = { 
		["stringValue"] = stringValue,
		["id"] = id,
	}
	M.AssertParameterValue(t)
	return t
end

local ValidationWarning_keys = { "id" = true, "warnings" = true, nil }

function M.AssertValidationWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationWarning to be of type 'table'")
	if struct["id"] then M.Assertid(struct["id"]) end
	if struct["warnings"] then M.AssertvalidationMessages(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(ValidationWarning_keys[k], "ValidationWarning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationWarning
-- <p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>
-- @param id [id] <p>The identifier of the object that contains the validation warning.</p>
-- @param warnings [validationMessages] <p>A description of the validation warning.</p>
function M.ValidationWarning(id, warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationWarning")
	local t = { 
		["id"] = id,
		["warnings"] = warnings,
	}
	M.AssertValidationWarning(t)
	return t
end

local PutPipelineDefinitionInput_keys = { "parameterValues" = true, "pipelineObjects" = true, "pipelineId" = true, "parameterObjects" = true, nil }

function M.AssertPutPipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["parameterValues"] then M.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then M.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	if struct["parameterObjects"] then M.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(PutPipelineDefinitionInput_keys[k], "PutPipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPipelineDefinitionInput
-- <p>Contains the parameters for PutPipelineDefinition.</p>
-- @param parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- @param pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- @param parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: pipelineObjects
function M.PutPipelineDefinitionInput(parameterValues, pipelineObjects, pipelineId, parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutPipelineDefinitionInput")
	local t = { 
		["parameterValues"] = parameterValues,
		["pipelineObjects"] = pipelineObjects,
		["pipelineId"] = pipelineId,
		["parameterObjects"] = parameterObjects,
	}
	M.AssertPutPipelineDefinitionInput(t)
	return t
end

local ActivatePipelineInput_keys = { "parameterValues" = true, "startTimestamp" = true, "pipelineId" = true, nil }

function M.AssertActivatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["parameterValues"] then M.AssertParameterValueList(struct["parameterValues"]) end
	if struct["startTimestamp"] then M.Asserttimestamp(struct["startTimestamp"]) end
	if struct["pipelineId"] then M.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(ActivatePipelineInput_keys[k], "ActivatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatePipelineInput
-- <p>Contains the parameters for ActivatePipeline.</p>
-- @param parameterValues [ParameterValueList] <p>A list of parameter values to pass to the pipeline at activation.</p>
-- @param startTimestamp [timestamp] <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
-- @param pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.ActivatePipelineInput(parameterValues, startTimestamp, pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivatePipelineInput")
	local t = { 
		["parameterValues"] = parameterValues,
		["startTimestamp"] = startTimestamp,
		["pipelineId"] = pipelineId,
	}
	M.AssertActivatePipelineInput(t)
	return t
end

function M.AsserttagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected tagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.tagKey(str)
	M.AsserttagKey(str)
	return str
end

function M.AssertfieldStringValue(str)
	assert(str)
	assert(type(str) == "string", "Expected fieldStringValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.fieldStringValue(str)
	M.AssertfieldStringValue(str)
	return str
end

function M.AsserttagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected tagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.tagValue(str)
	M.AsserttagValue(str)
	return str
end

function M.AssertfieldNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected fieldNameString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.fieldNameString(str)
	M.AssertfieldNameString(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertTaskStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskStatus to be of type 'string'")
end

--  
function M.TaskStatus(str)
	M.AssertTaskStatus(str)
	return str
end

function M.AssertvalidationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected validationMessage to be of type 'string'")
	assert(#str <= 10000, "Expected string to be max 10000 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.validationMessage(str)
	M.AssertvalidationMessage(str)
	return str
end

function M.AsserttaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected taskId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.taskId(str)
	M.AsserttaskId(str)
	return str
end

function M.AssertOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatorType to be of type 'string'")
end

--  
function M.OperatorType(str)
	M.AssertOperatorType(str)
	return str
end

function M.AssertattributeNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeNameString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.attributeNameString(str)
	M.AssertattributeNameString(str)
	return str
end

function M.AssertattributeValueString(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeValueString to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.attributeValueString(str)
	M.AssertattributeValueString(str)
	return str
end

function M.Assertid(str)
	assert(str)
	assert(type(str) == "string", "Expected id to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.id(str)
	M.Assertid(str)
	return str
end

function M.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.string(str)
	M.Assertstring(str)
	return str
end

function M.AssertlongString(str)
	assert(str)
	assert(type(str) == "string", "Expected longString to be of type 'string'")
	assert(#str <= 20971520, "Expected string to be max 20971520 characters")
	assert(str:match("[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*"), "Expected string to match pattern '[%u0020-%uD7FF%uE000-%uFFFD%uD800%uDC00-%uDBFF%uDFFF%r%n%t]*'")
end

--  
function M.longString(str)
	M.AssertlongString(str)
	return str
end

function M.Assertint(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected int to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.int(integer)
	M.Assertint(integer)
	return integer
end

function M.AssertcancelActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected cancelActive to be of type 'boolean'")
end

function M.cancelActive(boolean)
	M.AssertcancelActive(boolean)
	return boolean
end

function M.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	M.Assertboolean(boolean)
	return boolean
end

function M.AssertPipelineObjectMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PipelineObjectMap to be of type 'table'")
	for k,v in pairs(map) do
		M.Assertid(k)
		M.AssertPipelineObject(v)
	end
end

function M.PipelineObjectMap(map)
	M.AssertPipelineObjectMap(map)
	return map
end

function M.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	M.Asserttimestamp(timestamp)
	return timestamp
end

function M.AssertpipelineList(list)
	assert(list)
	assert(type(list) == "table", "Expected pipelineList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipelineIdName(v)
	end
end

--  
-- List of PipelineIdName objects
function M.pipelineList(list)
	M.AssertpipelineList(list)
	return list
end

function M.AsserttagList(list)
	assert(list)
	assert(type(list) == "table", "Expected tagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.tagList(list)
	M.AsserttagList(list)
	return list
end

function M.AssertParameterAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterAttribute(v)
	end
end

--  
-- List of ParameterAttribute objects
function M.ParameterAttributeList(list)
	M.AssertParameterAttributeList(list)
	return list
end

function M.AssertSelectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected SelectorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSelector(v)
	end
end

-- <p>The list of Selectors that define queries on individual fields.</p>
-- List of Selector objects
function M.SelectorList(list)
	M.AssertSelectorList(list)
	return list
end

function M.AssertParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.ParameterValueList(list)
	M.AssertParameterValueList(list)
	return list
end

function M.AssertfieldList(list)
	assert(list)
	assert(type(list) == "table", "Expected fieldList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertField(v)
	end
end

--  
-- List of Field objects
function M.fieldList(list)
	M.AssertfieldList(list)
	return list
end

function M.AssertParameterObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterObjectList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterObject(v)
	end
end

--  
-- List of ParameterObject objects
function M.ParameterObjectList(list)
	M.AssertParameterObjectList(list)
	return list
end

function M.AssertPipelineObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineObjectList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipelineObject(v)
	end
end

--  
-- List of PipelineObject objects
function M.PipelineObjectList(list)
	M.AssertPipelineObjectList(list)
	return list
end

function M.AssertValidationWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationWarnings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertValidationWarning(v)
	end
end

--  
-- List of ValidationWarning objects
function M.ValidationWarnings(list)
	M.AssertValidationWarnings(list)
	return list
end

function M.AssertValidationErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationErrors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertValidationError(v)
	end
end

--  
-- List of ValidationError objects
function M.ValidationErrors(list)
	M.AssertValidationErrors(list)
	return list
end

function M.AssertstringList(list)
	assert(list)
	assert(type(list) == "table", "Expected stringList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.stringList(list)
	M.AssertstringList(list)
	return list
end

function M.AssertPipelineDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipelineDescription(v)
	end
end

--  
-- List of PipelineDescription objects
function M.PipelineDescriptionList(list)
	M.AssertPipelineDescriptionList(list)
	return list
end

function M.AssertidList(list)
	assert(list)
	assert(type(list) == "table", "Expected idList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertid(v)
	end
end

--  
-- List of id objects
function M.idList(list)
	M.AssertidList(list)
	return list
end

function M.AssertvalidationMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected validationMessages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertvalidationMessage(v)
	end
end

--  
-- List of validationMessage objects
function M.validationMessages(list)
	M.AssertvalidationMessages(list)
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
			return "datapipeline.amazonaws.com"
		end
	end
	local ss = { "datapipeline" }
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
--- RemoveTags
-- @param RemoveTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsAsync(RemoveTagsInput, cb)
	assert(RemoveTagsInput, "You must provide a RemoveTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeactivatePipeline
-- @param DeactivatePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeactivatePipelineAsync(DeactivatePipelineInput, cb)
	assert(DeactivatePipelineInput, "You must provide a DeactivatePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.DeactivatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeactivatePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTags
-- @param AddTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ValidatePipelineDefinition
-- @param ValidatePipelineDefinitionInput
-- @param cb Callback function accepting two args: response, error_message
function M.ValidatePipelineDefinitionAsync(ValidatePipelineDefinitionInput, cb)
	assert(ValidatePipelineDefinitionInput, "You must provide a ValidatePipelineDefinitionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.ValidatePipelineDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ValidatePipelineDefinitionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPipelines
-- @param ListPipelinesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPipelinesAsync(ListPipelinesInput, cb)
	assert(ListPipelinesInput, "You must provide a ListPipelinesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.ListPipelines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPipelinesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePipeline
-- @param DeletePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePipelineAsync(DeletePipelineInput, cb)
	assert(DeletePipelineInput, "You must provide a DeletePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.DeletePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeObjects
-- @param DescribeObjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeObjectsAsync(DescribeObjectsInput, cb)
	assert(DescribeObjectsInput, "You must provide a DescribeObjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.DescribeObjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeObjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- QueryObjects
-- @param QueryObjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.QueryObjectsAsync(QueryObjectsInput, cb)
	assert(QueryObjectsInput, "You must provide a QueryObjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.QueryObjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", QueryObjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetStatus
-- @param SetStatusInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetStatusAsync(SetStatusInput, cb)
	assert(SetStatusInput, "You must provide a SetStatusInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.SetStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetStatusInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetTaskStatus
-- @param SetTaskStatusInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetTaskStatusAsync(SetTaskStatusInput, cb)
	assert(SetTaskStatusInput, "You must provide a SetTaskStatusInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.SetTaskStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetTaskStatusInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutPipelineDefinition
-- @param PutPipelineDefinitionInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutPipelineDefinitionAsync(PutPipelineDefinitionInput, cb)
	assert(PutPipelineDefinitionInput, "You must provide a PutPipelineDefinitionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.PutPipelineDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutPipelineDefinitionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PollForTask
-- @param PollForTaskInput
-- @param cb Callback function accepting two args: response, error_message
function M.PollForTaskAsync(PollForTaskInput, cb)
	assert(PollForTaskInput, "You must provide a PollForTaskInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.PollForTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PollForTaskInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ActivatePipeline
-- @param ActivatePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.ActivatePipelineAsync(ActivatePipelineInput, cb)
	assert(ActivatePipelineInput, "You must provide a ActivatePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.ActivatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ActivatePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePipeline
-- @param CreatePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePipelineAsync(CreatePipelineInput, cb)
	assert(CreatePipelineInput, "You must provide a CreatePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.CreatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EvaluateExpression
-- @param EvaluateExpressionInput
-- @param cb Callback function accepting two args: response, error_message
function M.EvaluateExpressionAsync(EvaluateExpressionInput, cb)
	assert(EvaluateExpressionInput, "You must provide a EvaluateExpressionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.EvaluateExpression",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EvaluateExpressionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPipelineDefinition
-- @param GetPipelineDefinitionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPipelineDefinitionAsync(GetPipelineDefinitionInput, cb)
	assert(GetPipelineDefinitionInput, "You must provide a GetPipelineDefinitionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.GetPipelineDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPipelineDefinitionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReportTaskProgress
-- @param ReportTaskProgressInput
-- @param cb Callback function accepting two args: response, error_message
function M.ReportTaskProgressAsync(ReportTaskProgressInput, cb)
	assert(ReportTaskProgressInput, "You must provide a ReportTaskProgressInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.ReportTaskProgress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReportTaskProgressInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReportTaskRunnerHeartbeat
-- @param ReportTaskRunnerHeartbeatInput
-- @param cb Callback function accepting two args: response, error_message
function M.ReportTaskRunnerHeartbeatAsync(ReportTaskRunnerHeartbeatInput, cb)
	assert(ReportTaskRunnerHeartbeatInput, "You must provide a ReportTaskRunnerHeartbeatInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.ReportTaskRunnerHeartbeat",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReportTaskRunnerHeartbeatInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePipelines
-- @param DescribePipelinesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePipelinesAsync(DescribePipelinesInput, cb)
	assert(DescribePipelinesInput, "You must provide a DescribePipelinesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DataPipeline.DescribePipelines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePipelinesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
