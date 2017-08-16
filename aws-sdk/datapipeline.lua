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

local keys = {}
local asserts = {}

keys.CreatePipelineInput = { ["tags"] = true, ["name"] = true, ["uniqueId"] = true, ["description"] = true, nil }

function asserts.AssertCreatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["uniqueId"], "Expected key uniqueId to exist in table")
	if struct["tags"] then asserts.AsserttagList(struct["tags"]) end
	if struct["name"] then asserts.Assertid(struct["name"]) end
	if struct["uniqueId"] then asserts.Assertid(struct["uniqueId"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineInput[k], "CreatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineInput
-- <p>Contains the parameters for CreatePipeline.</p>
-- @param _tags [tagList] <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param _name [id] <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
-- @param _uniqueId [id] <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
-- @param _description [string] <p>The description for the pipeline.</p>
-- Required parameter: name
-- Required parameter: uniqueId
function M.CreatePipelineInput(_tags, _name, _uniqueId, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineInput")
	local t = { 
		["tags"] = _tags,
		["name"] = _name,
		["uniqueId"] = _uniqueId,
		["description"] = _description,
	}
	asserts.AssertCreatePipelineInput(t)
	return t
end

keys.QueryObjectsInput = { ["marker"] = true, ["query"] = true, ["pipelineId"] = true, ["limit"] = true, ["sphere"] = true, nil }

function asserts.AssertQueryObjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryObjectsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["sphere"], "Expected key sphere to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["query"] then asserts.AssertQuery(struct["query"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["limit"] then asserts.Assertint(struct["limit"]) end
	if struct["sphere"] then asserts.Assertstring(struct["sphere"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryObjectsInput[k], "QueryObjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryObjectsInput
-- <p>Contains the parameters for QueryObjects.</p>
-- @param _marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>QueryObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- @param _query [Query] <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _limit [int] <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
-- @param _sphere [string] <p>Indicates whether the query applies to components or instances. The possible values are: <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
-- Required parameter: pipelineId
-- Required parameter: sphere
function M.QueryObjectsInput(_marker, _query, _pipelineId, _limit, _sphere, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryObjectsInput")
	local t = { 
		["marker"] = _marker,
		["query"] = _query,
		["pipelineId"] = _pipelineId,
		["limit"] = _limit,
		["sphere"] = _sphere,
	}
	asserts.AssertQueryObjectsInput(t)
	return t
end

keys.ListPipelinesOutput = { ["marker"] = true, ["hasMoreResults"] = true, ["pipelineIdList"] = true, nil }

function asserts.AssertListPipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesOutput to be of type 'table'")
	assert(struct["pipelineIdList"], "Expected key pipelineIdList to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["hasMoreResults"] then asserts.Assertboolean(struct["hasMoreResults"]) end
	if struct["pipelineIdList"] then asserts.AssertpipelineList(struct["pipelineIdList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesOutput[k], "ListPipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesOutput
-- <p>Contains the output of ListPipelines.</p>
-- @param _marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param _hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
-- @param _pipelineIdList [pipelineList] <p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>
-- Required parameter: pipelineIdList
function M.ListPipelinesOutput(_marker, _hasMoreResults, _pipelineIdList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesOutput")
	local t = { 
		["marker"] = _marker,
		["hasMoreResults"] = _hasMoreResults,
		["pipelineIdList"] = _pipelineIdList,
	}
	asserts.AssertListPipelinesOutput(t)
	return t
end

keys.SetTaskStatusInput = { ["errorStackTrace"] = true, ["errorMessage"] = true, ["errorId"] = true, ["taskId"] = true, ["taskStatus"] = true, nil }

function asserts.AssertSetTaskStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTaskStatusInput to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	assert(struct["taskStatus"], "Expected key taskStatus to exist in table")
	if struct["errorStackTrace"] then asserts.Assertstring(struct["errorStackTrace"]) end
	if struct["errorMessage"] then asserts.AsserterrorMessage(struct["errorMessage"]) end
	if struct["errorId"] then asserts.Assertstring(struct["errorId"]) end
	if struct["taskId"] then asserts.AsserttaskId(struct["taskId"]) end
	if struct["taskStatus"] then asserts.AssertTaskStatus(struct["taskStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetTaskStatusInput[k], "SetTaskStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTaskStatusInput
-- <p>Contains the parameters for SetTaskStatus.</p>
-- @param _errorStackTrace [string] <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- @param _errorMessage [errorMessage] <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- @param _errorId [string] <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
-- @param _taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- @param _taskStatus [TaskStatus] <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
-- Required parameter: taskId
-- Required parameter: taskStatus
function M.SetTaskStatusInput(_errorStackTrace, _errorMessage, _errorId, _taskId, _taskStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTaskStatusInput")
	local t = { 
		["errorStackTrace"] = _errorStackTrace,
		["errorMessage"] = _errorMessage,
		["errorId"] = _errorId,
		["taskId"] = _taskId,
		["taskStatus"] = _taskStatus,
	}
	asserts.AssertSetTaskStatusInput(t)
	return t
end

keys.EvaluateExpressionInput = { ["pipelineId"] = true, ["expression"] = true, ["objectId"] = true, nil }

function asserts.AssertEvaluateExpressionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluateExpressionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectId"], "Expected key objectId to exist in table")
	assert(struct["expression"], "Expected key expression to exist in table")
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["expression"] then asserts.AssertlongString(struct["expression"]) end
	if struct["objectId"] then asserts.Assertid(struct["objectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluateExpressionInput[k], "EvaluateExpressionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluateExpressionInput
-- <p>Contains the parameters for EvaluateExpression.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _expression [longString] <p>The expression to evaluate.</p>
-- @param _objectId [id] <p>The ID of the object.</p>
-- Required parameter: pipelineId
-- Required parameter: objectId
-- Required parameter: expression
function M.EvaluateExpressionInput(_pipelineId, _expression, _objectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluateExpressionInput")
	local t = { 
		["pipelineId"] = _pipelineId,
		["expression"] = _expression,
		["objectId"] = _objectId,
	}
	asserts.AssertEvaluateExpressionInput(t)
	return t
end

keys.SetTaskStatusOutput = { nil }

function asserts.AssertSetTaskStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTaskStatusOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetTaskStatusOutput[k], "SetTaskStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTaskStatusOutput
-- <p>Contains the output of SetTaskStatus.</p>
function M.SetTaskStatusOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTaskStatusOutput")
	local t = { 
	}
	asserts.AssertSetTaskStatusOutput(t)
	return t
end

keys.InstanceIdentity = { ["document"] = true, ["signature"] = true, nil }

function asserts.AssertInstanceIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdentity to be of type 'table'")
	if struct["document"] then asserts.Assertstring(struct["document"]) end
	if struct["signature"] then asserts.Assertstring(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceIdentity[k], "InstanceIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdentity
-- <p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>
-- @param _document [string] <p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>
-- @param _signature [string] <p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>
function M.InstanceIdentity(_document, _signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdentity")
	local t = { 
		["document"] = _document,
		["signature"] = _signature,
	}
	asserts.AssertInstanceIdentity(t)
	return t
end

keys.ParameterAttribute = { ["stringValue"] = true, ["key"] = true, nil }

function asserts.AssertParameterAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterAttribute to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["stringValue"], "Expected key stringValue to exist in table")
	if struct["stringValue"] then asserts.AssertattributeValueString(struct["stringValue"]) end
	if struct["key"] then asserts.AssertattributeNameString(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterAttribute[k], "ParameterAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterAttribute
-- <p>The attributes allowed or specified with a parameter object.</p>
-- @param _stringValue [attributeValueString] <p>The field value, expressed as a String.</p>
-- @param _key [attributeNameString] <p>The field identifier.</p>
-- Required parameter: key
-- Required parameter: stringValue
function M.ParameterAttribute(_stringValue, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterAttribute")
	local t = { 
		["stringValue"] = _stringValue,
		["key"] = _key,
	}
	asserts.AssertParameterAttribute(t)
	return t
end

keys.ValidationError = { ["errors"] = true, ["id"] = true, nil }

function asserts.AssertValidationError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationError to be of type 'table'")
	if struct["errors"] then asserts.AssertvalidationMessages(struct["errors"]) end
	if struct["id"] then asserts.Assertid(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationError[k], "ValidationError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationError
-- <p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>
-- @param _errors [validationMessages] <p>A description of the validation error.</p>
-- @param _id [id] <p>The identifier of the object that contains the validation error.</p>
function M.ValidationError(_errors, _id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationError")
	local t = { 
		["errors"] = _errors,
		["id"] = _id,
	}
	asserts.AssertValidationError(t)
	return t
end

keys.PipelineDeletedException = { ["message"] = true, nil }

function asserts.AssertPipelineDeletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDeletedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineDeletedException[k], "PipelineDeletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDeletedException
-- <p>The specified pipeline has been deleted.</p>
-- @param _message [errorMessage] <p>Description of the error message.</p>
function M.PipelineDeletedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineDeletedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPipelineDeletedException(t)
	return t
end

keys.GetPipelineDefinitionOutput = { ["parameterValues"] = true, ["pipelineObjects"] = true, ["parameterObjects"] = true, nil }

function asserts.AssertGetPipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineDefinitionOutput to be of type 'table'")
	if struct["parameterValues"] then asserts.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then asserts.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["parameterObjects"] then asserts.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineDefinitionOutput[k], "GetPipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineDefinitionOutput
-- <p>Contains the output of GetPipelineDefinition.</p>
-- @param _parameterValues [ParameterValueList] <p>The parameter values used in the pipeline definition.</p>
-- @param _pipelineObjects [PipelineObjectList] <p>The objects defined in the pipeline.</p>
-- @param _parameterObjects [ParameterObjectList] <p>The parameter objects used in the pipeline definition.</p>
function M.GetPipelineDefinitionOutput(_parameterValues, _pipelineObjects, _parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineDefinitionOutput")
	local t = { 
		["parameterValues"] = _parameterValues,
		["pipelineObjects"] = _pipelineObjects,
		["parameterObjects"] = _parameterObjects,
	}
	asserts.AssertGetPipelineDefinitionOutput(t)
	return t
end

keys.TaskNotFoundException = { ["message"] = true, nil }

function asserts.AssertTaskNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskNotFoundException[k], "TaskNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskNotFoundException
-- <p>The specified task was not found. </p>
-- @param _message [errorMessage] <p>Description of the error message.</p>
function M.TaskNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTaskNotFoundException(t)
	return t
end

keys.DescribeObjectsOutput = { ["marker"] = true, ["pipelineObjects"] = true, ["hasMoreResults"] = true, nil }

function asserts.AssertDescribeObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectsOutput to be of type 'table'")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["pipelineObjects"] then asserts.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["hasMoreResults"] then asserts.Assertboolean(struct["hasMoreResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeObjectsOutput[k], "DescribeObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectsOutput
-- <p>Contains the output of DescribeObjects.</p>
-- @param _marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param _pipelineObjects [PipelineObjectList] <p>An array of object definitions.</p>
-- @param _hasMoreResults [boolean] <p>Indicates whether there are more results to return.</p>
-- Required parameter: pipelineObjects
function M.DescribeObjectsOutput(_marker, _pipelineObjects, _hasMoreResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeObjectsOutput")
	local t = { 
		["marker"] = _marker,
		["pipelineObjects"] = _pipelineObjects,
		["hasMoreResults"] = _hasMoreResults,
	}
	asserts.AssertDescribeObjectsOutput(t)
	return t
end

keys.ReportTaskProgressInput = { ["fields"] = true, ["taskId"] = true, nil }

function asserts.AssertReportTaskProgressInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskProgressInput to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	if struct["fields"] then asserts.AssertfieldList(struct["fields"]) end
	if struct["taskId"] then asserts.AsserttaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportTaskProgressInput[k], "ReportTaskProgressInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskProgressInput
-- <p>Contains the parameters for ReportTaskProgress.</p>
-- @param _fields [fieldList] <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
-- @param _taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- Required parameter: taskId
function M.ReportTaskProgressInput(_fields, _taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskProgressInput")
	local t = { 
		["fields"] = _fields,
		["taskId"] = _taskId,
	}
	asserts.AssertReportTaskProgressInput(t)
	return t
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AsserttagValue(struct["value"]) end
	if struct["key"] then asserts.AsserttagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param _value [tagValue] <p>The optional value portion of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param _key [tagKey] <p>The key name of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- Required parameter: key
-- Required parameter: value
function M.Tag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertTag(t)
	return t
end

keys.Operator = { ["values"] = true, ["type"] = true, nil }

function asserts.AssertOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Operator to be of type 'table'")
	if struct["values"] then asserts.AssertstringList(struct["values"]) end
	if struct["type"] then asserts.AssertOperatorType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Operator[k], "Operator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Operator
-- <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
-- @param _values [stringList] <p>The value that the actual field value will be compared with.</p>
-- @param _type [OperatorType] <p> The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below. </p> <p> The comparison operators EQ and REF_EQ act on the following fields: </p> <ul> <li>name</li> <li>@sphere</li> <li>parent</li> <li>@componentParent</li> <li>@instanceParent</li> <li>@status</li> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p> The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields: </p> <ul> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string "my".</p>
function M.Operator(_values, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Operator")
	local t = { 
		["values"] = _values,
		["type"] = _type,
	}
	asserts.AssertOperator(t)
	return t
end

keys.InternalServiceError = { ["message"] = true, nil }

function asserts.AssertInternalServiceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceError to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceError[k], "InternalServiceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceError
-- <p>An internal service error occurred.</p>
-- @param _message [errorMessage] <p>Description of the error message.</p>
function M.InternalServiceError(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceError")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServiceError(t)
	return t
end

keys.DescribePipelinesInput = { ["pipelineIds"] = true, nil }

function asserts.AssertDescribePipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelinesInput to be of type 'table'")
	assert(struct["pipelineIds"], "Expected key pipelineIds to exist in table")
	if struct["pipelineIds"] then asserts.AssertidList(struct["pipelineIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePipelinesInput[k], "DescribePipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelinesInput
-- <p>Contains the parameters for DescribePipelines.</p>
-- @param _pipelineIds [idList] <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
-- Required parameter: pipelineIds
function M.DescribePipelinesInput(_pipelineIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePipelinesInput")
	local t = { 
		["pipelineIds"] = _pipelineIds,
	}
	asserts.AssertDescribePipelinesInput(t)
	return t
end

keys.Selector = { ["operator"] = true, ["fieldName"] = true, nil }

function asserts.AssertSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Selector to be of type 'table'")
	if struct["operator"] then asserts.AssertOperator(struct["operator"]) end
	if struct["fieldName"] then asserts.Assertstring(struct["fieldName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Selector[k], "Selector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Selector
-- <p>A comparision that is used to determine whether a query should return this object.</p>
-- @param _operator [Operator] 
-- @param _fieldName [string] <p>The name of the field that the operator will be applied to. The field name is the "key" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>
function M.Selector(_operator, _fieldName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Selector")
	local t = { 
		["operator"] = _operator,
		["fieldName"] = _fieldName,
	}
	asserts.AssertSelector(t)
	return t
end

keys.PipelineDescription = { ["fields"] = true, ["pipelineId"] = true, ["name"] = true, ["tags"] = true, ["description"] = true, nil }

function asserts.AssertPipelineDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDescription to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["fields"], "Expected key fields to exist in table")
	if struct["fields"] then asserts.AssertfieldList(struct["fields"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["name"] then asserts.Assertid(struct["name"]) end
	if struct["tags"] then asserts.AsserttagList(struct["tags"]) end
	if struct["description"] then asserts.Assertstring(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineDescription[k], "PipelineDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDescription
-- <p>Contains pipeline metadata.</p>
-- @param _fields [fieldList] <p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>
-- @param _pipelineId [id] <p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- @param _name [id] <p>The name of the pipeline.</p>
-- @param _tags [tagList] <p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- @param _description [string] <p>Description of the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: name
-- Required parameter: fields
function M.PipelineDescription(_fields, _pipelineId, _name, _tags, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineDescription")
	local t = { 
		["fields"] = _fields,
		["pipelineId"] = _pipelineId,
		["name"] = _name,
		["tags"] = _tags,
		["description"] = _description,
	}
	asserts.AssertPipelineDescription(t)
	return t
end

keys.TaskObject = { ["objects"] = true, ["pipelineId"] = true, ["attemptId"] = true, ["taskId"] = true, nil }

function asserts.AssertTaskObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskObject to be of type 'table'")
	if struct["objects"] then asserts.AssertPipelineObjectMap(struct["objects"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["attemptId"] then asserts.Assertid(struct["attemptId"]) end
	if struct["taskId"] then asserts.AsserttaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskObject[k], "TaskObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskObject
-- <p>Contains information about a pipeline task that is assigned to a task runner.</p>
-- @param _objects [PipelineObjectMap] <p>Connection information for the location where the task runner will publish the output of the task.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline that provided the task.</p>
-- @param _attemptId [id] <p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>
-- @param _taskId [taskId] <p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>
function M.TaskObject(_objects, _pipelineId, _attemptId, _taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskObject")
	local t = { 
		["objects"] = _objects,
		["pipelineId"] = _pipelineId,
		["attemptId"] = _attemptId,
		["taskId"] = _taskId,
	}
	asserts.AssertTaskObject(t)
	return t
end

keys.PipelineObject = { ["fields"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertPipelineObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineObject to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["fields"], "Expected key fields to exist in table")
	if struct["fields"] then asserts.AssertfieldList(struct["fields"]) end
	if struct["id"] then asserts.Assertid(struct["id"]) end
	if struct["name"] then asserts.Assertid(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineObject[k], "PipelineObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineObject
-- <p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>
-- @param _fields [fieldList] <p>Key-value pairs that define the properties of the object.</p>
-- @param _id [id] <p>The ID of the object.</p>
-- @param _name [id] <p>The name of the object.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: fields
function M.PipelineObject(_fields, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineObject")
	local t = { 
		["fields"] = _fields,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertPipelineObject(t)
	return t
end

keys.ValidatePipelineDefinitionInput = { ["parameterValues"] = true, ["pipelineObjects"] = true, ["pipelineId"] = true, ["parameterObjects"] = true, nil }

function asserts.AssertValidatePipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidatePipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["parameterValues"] then asserts.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then asserts.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["parameterObjects"] then asserts.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidatePipelineDefinitionInput[k], "ValidatePipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidatePipelineDefinitionInput
-- <p>Contains the parameters for ValidatePipelineDefinition.</p>
-- @param _parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- @param _pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline changes to validate against the pipeline.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: pipelineObjects
function M.ValidatePipelineDefinitionInput(_parameterValues, _pipelineObjects, _pipelineId, _parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidatePipelineDefinitionInput")
	local t = { 
		["parameterValues"] = _parameterValues,
		["pipelineObjects"] = _pipelineObjects,
		["pipelineId"] = _pipelineId,
		["parameterObjects"] = _parameterObjects,
	}
	asserts.AssertValidatePipelineDefinitionInput(t)
	return t
end

keys.DeletePipelineInput = { ["pipelineId"] = true, nil }

function asserts.AssertDeletePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePipelineInput[k], "DeletePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineInput
-- <p>Contains the parameters for DeletePipeline.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.DeletePipelineInput(_pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePipelineInput")
	local t = { 
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertDeletePipelineInput(t)
	return t
end

keys.ReportTaskProgressOutput = { ["canceled"] = true, nil }

function asserts.AssertReportTaskProgressOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskProgressOutput to be of type 'table'")
	assert(struct["canceled"], "Expected key canceled to exist in table")
	if struct["canceled"] then asserts.Assertboolean(struct["canceled"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportTaskProgressOutput[k], "ReportTaskProgressOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskProgressOutput
-- <p>Contains the output of ReportTaskProgress.</p>
-- @param _canceled [boolean] <p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>
-- Required parameter: canceled
function M.ReportTaskProgressOutput(_canceled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskProgressOutput")
	local t = { 
		["canceled"] = _canceled,
	}
	asserts.AssertReportTaskProgressOutput(t)
	return t
end

keys.PutPipelineDefinitionOutput = { ["validationErrors"] = true, ["errored"] = true, ["validationWarnings"] = true, nil }

function asserts.AssertPutPipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPipelineDefinitionOutput to be of type 'table'")
	assert(struct["errored"], "Expected key errored to exist in table")
	if struct["validationErrors"] then asserts.AssertValidationErrors(struct["validationErrors"]) end
	if struct["errored"] then asserts.Assertboolean(struct["errored"]) end
	if struct["validationWarnings"] then asserts.AssertValidationWarnings(struct["validationWarnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPipelineDefinitionOutput[k], "PutPipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPipelineDefinitionOutput
-- <p>Contains the output of PutPipelineDefinition.</p>
-- @param _validationErrors [ValidationErrors] <p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- @param _errored [boolean] <p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>
-- @param _validationWarnings [ValidationWarnings] <p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- Required parameter: errored
function M.PutPipelineDefinitionOutput(_validationErrors, _errored, _validationWarnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutPipelineDefinitionOutput")
	local t = { 
		["validationErrors"] = _validationErrors,
		["errored"] = _errored,
		["validationWarnings"] = _validationWarnings,
	}
	asserts.AssertPutPipelineDefinitionOutput(t)
	return t
end

keys.CreatePipelineOutput = { ["pipelineId"] = true, nil }

function asserts.AssertCreatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineOutput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineOutput[k], "CreatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineOutput
-- <p>Contains the output of CreatePipeline.</p>
-- @param _pipelineId [id] <p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>
-- Required parameter: pipelineId
function M.CreatePipelineOutput(_pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineOutput")
	local t = { 
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertCreatePipelineOutput(t)
	return t
end

keys.ReportTaskRunnerHeartbeatOutput = { ["terminate"] = true, nil }

function asserts.AssertReportTaskRunnerHeartbeatOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskRunnerHeartbeatOutput to be of type 'table'")
	assert(struct["terminate"], "Expected key terminate to exist in table")
	if struct["terminate"] then asserts.Assertboolean(struct["terminate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportTaskRunnerHeartbeatOutput[k], "ReportTaskRunnerHeartbeatOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskRunnerHeartbeatOutput
-- <p>Contains the output of ReportTaskRunnerHeartbeat.</p>
-- @param _terminate [boolean] <p>Indicates whether the calling task runner should terminate.</p>
-- Required parameter: terminate
function M.ReportTaskRunnerHeartbeatOutput(_terminate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskRunnerHeartbeatOutput")
	local t = { 
		["terminate"] = _terminate,
	}
	asserts.AssertReportTaskRunnerHeartbeatOutput(t)
	return t
end

keys.RemoveTagsInput = { ["tagKeys"] = true, ["pipelineId"] = true, nil }

function asserts.AssertRemoveTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["tagKeys"] then asserts.AssertstringList(struct["tagKeys"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsInput[k], "RemoveTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsInput
-- <p>Contains the parameters for RemoveTags.</p>
-- @param _tagKeys [stringList] <p>The keys of the tags to remove.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: tagKeys
function M.RemoveTagsInput(_tagKeys, _pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsInput")
	local t = { 
		["tagKeys"] = _tagKeys,
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertRemoveTagsInput(t)
	return t
end

keys.ActivatePipelineOutput = { nil }

function asserts.AssertActivatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatePipelineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ActivatePipelineOutput[k], "ActivatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatePipelineOutput
-- <p>Contains the output of ActivatePipeline.</p>
function M.ActivatePipelineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivatePipelineOutput")
	local t = { 
	}
	asserts.AssertActivatePipelineOutput(t)
	return t
end

keys.RemoveTagsOutput = { nil }

function asserts.AssertRemoveTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsOutput[k], "RemoveTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsOutput
-- <p>Contains the output of RemoveTags.</p>
function M.RemoveTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsOutput")
	local t = { 
	}
	asserts.AssertRemoveTagsOutput(t)
	return t
end

keys.Query = { ["selectors"] = true, nil }

function asserts.AssertQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Query to be of type 'table'")
	if struct["selectors"] then asserts.AssertSelectorList(struct["selectors"]) end
	for k,_ in pairs(struct) do
		assert(keys.Query[k], "Query contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Query
-- <p>Defines the query to run against an object.</p>
-- @param _selectors [SelectorList] <p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>
function M.Query(_selectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Query")
	local t = { 
		["selectors"] = _selectors,
	}
	asserts.AssertQuery(t)
	return t
end

keys.InvalidRequestException = { ["message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
-- @param _message [errorMessage] <p>Description of the error message.</p>
function M.InvalidRequestException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.SetStatusInput = { ["objectIds"] = true, ["status"] = true, ["pipelineId"] = true, nil }

function asserts.AssertSetStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetStatusInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectIds"], "Expected key objectIds to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["objectIds"] then asserts.AssertidList(struct["objectIds"]) end
	if struct["status"] then asserts.Assertstring(struct["status"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetStatusInput[k], "SetStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetStatusInput
-- <p>Contains the parameters for SetStatus.</p>
-- @param _objectIds [idList] <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
-- @param _status [string] <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline that contains the objects.</p>
-- Required parameter: pipelineId
-- Required parameter: objectIds
-- Required parameter: status
function M.SetStatusInput(_objectIds, _status, _pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetStatusInput")
	local t = { 
		["objectIds"] = _objectIds,
		["status"] = _status,
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertSetStatusInput(t)
	return t
end

keys.PollForTaskOutput = { ["taskObject"] = true, nil }

function asserts.AssertPollForTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForTaskOutput to be of type 'table'")
	if struct["taskObject"] then asserts.AssertTaskObject(struct["taskObject"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForTaskOutput[k], "PollForTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForTaskOutput
-- <p>Contains the output of PollForTask.</p>
-- @param _taskObject [TaskObject] <p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> and <a>SetTaskStatus</a>.</p>
function M.PollForTaskOutput(_taskObject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForTaskOutput")
	local t = { 
		["taskObject"] = _taskObject,
	}
	asserts.AssertPollForTaskOutput(t)
	return t
end

keys.EvaluateExpressionOutput = { ["evaluatedExpression"] = true, nil }

function asserts.AssertEvaluateExpressionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluateExpressionOutput to be of type 'table'")
	assert(struct["evaluatedExpression"], "Expected key evaluatedExpression to exist in table")
	if struct["evaluatedExpression"] then asserts.AssertlongString(struct["evaluatedExpression"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluateExpressionOutput[k], "EvaluateExpressionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluateExpressionOutput
-- <p>Contains the output of EvaluateExpression.</p>
-- @param _evaluatedExpression [longString] <p>The evaluated expression.</p>
-- Required parameter: evaluatedExpression
function M.EvaluateExpressionOutput(_evaluatedExpression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluateExpressionOutput")
	local t = { 
		["evaluatedExpression"] = _evaluatedExpression,
	}
	asserts.AssertEvaluateExpressionOutput(t)
	return t
end

keys.DeactivatePipelineOutput = { nil }

function asserts.AssertDeactivatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatePipelineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeactivatePipelineOutput[k], "DeactivatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatePipelineOutput
-- <p>Contains the output of DeactivatePipeline.</p>
function M.DeactivatePipelineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatePipelineOutput")
	local t = { 
	}
	asserts.AssertDeactivatePipelineOutput(t)
	return t
end

keys.AddTagsOutput = { nil }

function asserts.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsOutput[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
-- <p>Contains the output of AddTags.</p>
function M.AddTagsOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
	}
	asserts.AssertAddTagsOutput(t)
	return t
end

keys.PipelineNotFoundException = { ["message"] = true, nil }

function asserts.AssertPipelineNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineNotFoundException[k], "PipelineNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNotFoundException
-- <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
-- @param _message [errorMessage] <p>Description of the error message.</p>
function M.PipelineNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPipelineNotFoundException(t)
	return t
end

keys.PollForTaskInput = { ["workerGroup"] = true, ["hostname"] = true, ["instanceIdentity"] = true, nil }

function asserts.AssertPollForTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForTaskInput to be of type 'table'")
	assert(struct["workerGroup"], "Expected key workerGroup to exist in table")
	if struct["workerGroup"] then asserts.Assertstring(struct["workerGroup"]) end
	if struct["hostname"] then asserts.Assertid(struct["hostname"]) end
	if struct["instanceIdentity"] then asserts.AssertInstanceIdentity(struct["instanceIdentity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForTaskInput[k], "PollForTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForTaskInput
-- <p>Contains the parameters for PollForTask.</p>
-- @param _workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- @param _hostname [id] <p>The public DNS name of the calling task runner.</p>
-- @param _instanceIdentity [InstanceIdentity] <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
-- Required parameter: workerGroup
function M.PollForTaskInput(_workerGroup, _hostname, _instanceIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForTaskInput")
	local t = { 
		["workerGroup"] = _workerGroup,
		["hostname"] = _hostname,
		["instanceIdentity"] = _instanceIdentity,
	}
	asserts.AssertPollForTaskInput(t)
	return t
end

keys.PipelineIdName = { ["id"] = true, ["name"] = true, nil }

function asserts.AssertPipelineIdName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineIdName to be of type 'table'")
	if struct["id"] then asserts.Assertid(struct["id"]) end
	if struct["name"] then asserts.Assertid(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineIdName[k], "PipelineIdName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineIdName
-- <p>Contains the name and identifier of a pipeline.</p>
-- @param _id [id] <p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- @param _name [id] <p>The name of the pipeline.</p>
function M.PipelineIdName(_id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineIdName")
	local t = { 
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertPipelineIdName(t)
	return t
end

keys.AddTagsInput = { ["pipelineId"] = true, ["tags"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["tags"] then asserts.AsserttagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
-- <p>Contains the parameters for AddTags.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _tags [tagList] <p>The tags to add, as key/value pairs.</p>
-- Required parameter: pipelineId
-- Required parameter: tags
function M.AddTagsInput(_pipelineId, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["pipelineId"] = _pipelineId,
		["tags"] = _tags,
	}
	asserts.AssertAddTagsInput(t)
	return t
end

keys.ParameterObject = { ["attributes"] = true, ["id"] = true, nil }

function asserts.AssertParameterObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterObject to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertParameterAttributeList(struct["attributes"]) end
	if struct["id"] then asserts.AssertfieldNameString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterObject[k], "ParameterObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterObject
-- <p>Contains information about a parameter object.</p>
-- @param _attributes [ParameterAttributeList] <p>The attributes of the parameter object.</p>
-- @param _id [fieldNameString] <p>The ID of the parameter object. </p>
-- Required parameter: id
-- Required parameter: attributes
function M.ParameterObject(_attributes, _id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterObject")
	local t = { 
		["attributes"] = _attributes,
		["id"] = _id,
	}
	asserts.AssertParameterObject(t)
	return t
end

keys.ListPipelinesInput = { ["marker"] = true, nil }

function asserts.AssertListPipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesInput to be of type 'table'")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesInput[k], "ListPipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesInput
-- <p>Contains the parameters for ListPipelines.</p>
-- @param _marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>ListPipelines</code> with the marker value from the previous call to retrieve the next set of results.</p>
function M.ListPipelinesInput(_marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesInput")
	local t = { 
		["marker"] = _marker,
	}
	asserts.AssertListPipelinesInput(t)
	return t
end

keys.Field = { ["stringValue"] = true, ["refValue"] = true, ["key"] = true, nil }

function asserts.AssertField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Field to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["stringValue"] then asserts.AssertfieldStringValue(struct["stringValue"]) end
	if struct["refValue"] then asserts.AssertfieldNameString(struct["refValue"]) end
	if struct["key"] then asserts.AssertfieldNameString(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Field[k], "Field contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Field
-- <p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>
-- @param _stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- @param _refValue [fieldNameString] <p>The field value, expressed as the identifier of another object.</p>
-- @param _key [fieldNameString] <p>The field identifier.</p>
-- Required parameter: key
function M.Field(_stringValue, _refValue, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Field")
	local t = { 
		["stringValue"] = _stringValue,
		["refValue"] = _refValue,
		["key"] = _key,
	}
	asserts.AssertField(t)
	return t
end

keys.GetPipelineDefinitionInput = { ["pipelineId"] = true, ["version"] = true, nil }

function asserts.AssertGetPipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["version"] then asserts.Assertstring(struct["version"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineDefinitionInput[k], "GetPipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineDefinitionInput
-- <p>Contains the parameters for GetPipelineDefinition.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _version [string] <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) to use the last definition saved to the pipeline or <code>active</code> to use the last definition that was activated.</p>
-- Required parameter: pipelineId
function M.GetPipelineDefinitionInput(_pipelineId, _version, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineDefinitionInput")
	local t = { 
		["pipelineId"] = _pipelineId,
		["version"] = _version,
	}
	asserts.AssertGetPipelineDefinitionInput(t)
	return t
end

keys.DescribePipelinesOutput = { ["pipelineDescriptionList"] = true, nil }

function asserts.AssertDescribePipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelinesOutput to be of type 'table'")
	assert(struct["pipelineDescriptionList"], "Expected key pipelineDescriptionList to exist in table")
	if struct["pipelineDescriptionList"] then asserts.AssertPipelineDescriptionList(struct["pipelineDescriptionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePipelinesOutput[k], "DescribePipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelinesOutput
-- <p>Contains the output of DescribePipelines.</p>
-- @param _pipelineDescriptionList [PipelineDescriptionList] <p>An array of descriptions for the specified pipelines.</p>
-- Required parameter: pipelineDescriptionList
function M.DescribePipelinesOutput(_pipelineDescriptionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePipelinesOutput")
	local t = { 
		["pipelineDescriptionList"] = _pipelineDescriptionList,
	}
	asserts.AssertDescribePipelinesOutput(t)
	return t
end

keys.ReportTaskRunnerHeartbeatInput = { ["workerGroup"] = true, ["hostname"] = true, ["taskrunnerId"] = true, nil }

function asserts.AssertReportTaskRunnerHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportTaskRunnerHeartbeatInput to be of type 'table'")
	assert(struct["taskrunnerId"], "Expected key taskrunnerId to exist in table")
	if struct["workerGroup"] then asserts.Assertstring(struct["workerGroup"]) end
	if struct["hostname"] then asserts.Assertid(struct["hostname"]) end
	if struct["taskrunnerId"] then asserts.Assertid(struct["taskrunnerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportTaskRunnerHeartbeatInput[k], "ReportTaskRunnerHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportTaskRunnerHeartbeatInput
-- <p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>
-- @param _workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- @param _hostname [id] <p>The public DNS name of the task runner.</p>
-- @param _taskrunnerId [id] <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
-- Required parameter: taskrunnerId
function M.ReportTaskRunnerHeartbeatInput(_workerGroup, _hostname, _taskrunnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportTaskRunnerHeartbeatInput")
	local t = { 
		["workerGroup"] = _workerGroup,
		["hostname"] = _hostname,
		["taskrunnerId"] = _taskrunnerId,
	}
	asserts.AssertReportTaskRunnerHeartbeatInput(t)
	return t
end

keys.DeactivatePipelineInput = { ["cancelActive"] = true, ["pipelineId"] = true, nil }

function asserts.AssertDeactivatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["cancelActive"] then asserts.AssertcancelActive(struct["cancelActive"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeactivatePipelineInput[k], "DeactivatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatePipelineInput
-- <p>Contains the parameters for DeactivatePipeline.</p>
-- @param _cancelActive [cancelActive] <p>Indicates whether to cancel any running objects. The default is true, which sets the state of any running objects to <code>CANCELED</code>. If this value is false, the pipeline is deactivated after all running objects finish.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.DeactivatePipelineInput(_cancelActive, _pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatePipelineInput")
	local t = { 
		["cancelActive"] = _cancelActive,
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertDeactivatePipelineInput(t)
	return t
end

keys.ValidatePipelineDefinitionOutput = { ["validationErrors"] = true, ["errored"] = true, ["validationWarnings"] = true, nil }

function asserts.AssertValidatePipelineDefinitionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidatePipelineDefinitionOutput to be of type 'table'")
	assert(struct["errored"], "Expected key errored to exist in table")
	if struct["validationErrors"] then asserts.AssertValidationErrors(struct["validationErrors"]) end
	if struct["errored"] then asserts.Assertboolean(struct["errored"]) end
	if struct["validationWarnings"] then asserts.AssertValidationWarnings(struct["validationWarnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidatePipelineDefinitionOutput[k], "ValidatePipelineDefinitionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidatePipelineDefinitionOutput
-- <p>Contains the output of ValidatePipelineDefinition.</p>
-- @param _validationErrors [ValidationErrors] <p>Any validation errors that were found.</p>
-- @param _errored [boolean] <p>Indicates whether there were validation errors.</p>
-- @param _validationWarnings [ValidationWarnings] <p>Any validation warnings that were found.</p>
-- Required parameter: errored
function M.ValidatePipelineDefinitionOutput(_validationErrors, _errored, _validationWarnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidatePipelineDefinitionOutput")
	local t = { 
		["validationErrors"] = _validationErrors,
		["errored"] = _errored,
		["validationWarnings"] = _validationWarnings,
	}
	asserts.AssertValidatePipelineDefinitionOutput(t)
	return t
end

keys.DescribeObjectsInput = { ["objectIds"] = true, ["marker"] = true, ["pipelineId"] = true, ["evaluateExpressions"] = true, nil }

function asserts.AssertDescribeObjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectsInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["objectIds"], "Expected key objectIds to exist in table")
	if struct["objectIds"] then asserts.AssertidList(struct["objectIds"]) end
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["evaluateExpressions"] then asserts.Assertboolean(struct["evaluateExpressions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeObjectsInput[k], "DescribeObjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectsInput
-- <p>Contains the parameters for DescribeObjects.</p>
-- @param _objectIds [idList] <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
-- @param _marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>DescribeObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline that contains the object definitions.</p>
-- @param _evaluateExpressions [boolean] <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
-- Required parameter: pipelineId
-- Required parameter: objectIds
function M.DescribeObjectsInput(_objectIds, _marker, _pipelineId, _evaluateExpressions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeObjectsInput")
	local t = { 
		["objectIds"] = _objectIds,
		["marker"] = _marker,
		["pipelineId"] = _pipelineId,
		["evaluateExpressions"] = _evaluateExpressions,
	}
	asserts.AssertDescribeObjectsInput(t)
	return t
end

keys.QueryObjectsOutput = { ["marker"] = true, ["ids"] = true, ["hasMoreResults"] = true, nil }

function asserts.AssertQueryObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryObjectsOutput to be of type 'table'")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["ids"] then asserts.AssertidList(struct["ids"]) end
	if struct["hasMoreResults"] then asserts.Assertboolean(struct["hasMoreResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryObjectsOutput[k], "QueryObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryObjectsOutput
-- <p>Contains the output of QueryObjects.</p>
-- @param _marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- @param _ids [idList] <p>The identifiers that match the query selectors.</p>
-- @param _hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
function M.QueryObjectsOutput(_marker, _ids, _hasMoreResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryObjectsOutput")
	local t = { 
		["marker"] = _marker,
		["ids"] = _ids,
		["hasMoreResults"] = _hasMoreResults,
	}
	asserts.AssertQueryObjectsOutput(t)
	return t
end

keys.ParameterValue = { ["stringValue"] = true, ["id"] = true, nil }

function asserts.AssertParameterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterValue to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["stringValue"], "Expected key stringValue to exist in table")
	if struct["stringValue"] then asserts.AssertfieldStringValue(struct["stringValue"]) end
	if struct["id"] then asserts.AssertfieldNameString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterValue[k], "ParameterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterValue
-- <p>A value or list of parameter values. </p>
-- @param _stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- @param _id [fieldNameString] <p>The ID of the parameter value.</p>
-- Required parameter: id
-- Required parameter: stringValue
function M.ParameterValue(_stringValue, _id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterValue")
	local t = { 
		["stringValue"] = _stringValue,
		["id"] = _id,
	}
	asserts.AssertParameterValue(t)
	return t
end

keys.ValidationWarning = { ["id"] = true, ["warnings"] = true, nil }

function asserts.AssertValidationWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationWarning to be of type 'table'")
	if struct["id"] then asserts.Assertid(struct["id"]) end
	if struct["warnings"] then asserts.AssertvalidationMessages(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationWarning[k], "ValidationWarning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationWarning
-- <p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>
-- @param _id [id] <p>The identifier of the object that contains the validation warning.</p>
-- @param _warnings [validationMessages] <p>A description of the validation warning.</p>
function M.ValidationWarning(_id, _warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationWarning")
	local t = { 
		["id"] = _id,
		["warnings"] = _warnings,
	}
	asserts.AssertValidationWarning(t)
	return t
end

keys.PutPipelineDefinitionInput = { ["parameterValues"] = true, ["pipelineObjects"] = true, ["pipelineId"] = true, ["parameterObjects"] = true, nil }

function asserts.AssertPutPipelineDefinitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPipelineDefinitionInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	assert(struct["pipelineObjects"], "Expected key pipelineObjects to exist in table")
	if struct["parameterValues"] then asserts.AssertParameterValueList(struct["parameterValues"]) end
	if struct["pipelineObjects"] then asserts.AssertPipelineObjectList(struct["pipelineObjects"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	if struct["parameterObjects"] then asserts.AssertParameterObjectList(struct["parameterObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPipelineDefinitionInput[k], "PutPipelineDefinitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPipelineDefinitionInput
-- <p>Contains the parameters for PutPipelineDefinition.</p>
-- @param _parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- @param _pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- @param _parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required parameter: pipelineId
-- Required parameter: pipelineObjects
function M.PutPipelineDefinitionInput(_parameterValues, _pipelineObjects, _pipelineId, _parameterObjects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutPipelineDefinitionInput")
	local t = { 
		["parameterValues"] = _parameterValues,
		["pipelineObjects"] = _pipelineObjects,
		["pipelineId"] = _pipelineId,
		["parameterObjects"] = _parameterObjects,
	}
	asserts.AssertPutPipelineDefinitionInput(t)
	return t
end

keys.ActivatePipelineInput = { ["parameterValues"] = true, ["startTimestamp"] = true, ["pipelineId"] = true, nil }

function asserts.AssertActivatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivatePipelineInput to be of type 'table'")
	assert(struct["pipelineId"], "Expected key pipelineId to exist in table")
	if struct["parameterValues"] then asserts.AssertParameterValueList(struct["parameterValues"]) end
	if struct["startTimestamp"] then asserts.Asserttimestamp(struct["startTimestamp"]) end
	if struct["pipelineId"] then asserts.Assertid(struct["pipelineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivatePipelineInput[k], "ActivatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivatePipelineInput
-- <p>Contains the parameters for ActivatePipeline.</p>
-- @param _parameterValues [ParameterValueList] <p>A list of parameter values to pass to the pipeline at activation.</p>
-- @param _startTimestamp [timestamp] <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
-- @param _pipelineId [id] <p>The ID of the pipeline.</p>
-- Required parameter: pipelineId
function M.ActivatePipelineInput(_parameterValues, _startTimestamp, _pipelineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivatePipelineInput")
	local t = { 
		["parameterValues"] = _parameterValues,
		["startTimestamp"] = _startTimestamp,
		["pipelineId"] = _pipelineId,
	}
	asserts.AssertActivatePipelineInput(t)
	return t
end

function asserts.AsserttagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected tagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.tagKey(str)
	asserts.AsserttagKey(str)
	return str
end

function asserts.AssertfieldStringValue(str)
	assert(str)
	assert(type(str) == "string", "Expected fieldStringValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.fieldStringValue(str)
	asserts.AssertfieldStringValue(str)
	return str
end

function asserts.AsserttagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected tagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.tagValue(str)
	asserts.AsserttagValue(str)
	return str
end

function asserts.AssertfieldNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected fieldNameString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.fieldNameString(str)
	asserts.AssertfieldNameString(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertTaskStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskStatus to be of type 'string'")
end

--  
function M.TaskStatus(str)
	asserts.AssertTaskStatus(str)
	return str
end

function asserts.AssertvalidationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected validationMessage to be of type 'string'")
	assert(#str <= 10000, "Expected string to be max 10000 characters")
end

--  
function M.validationMessage(str)
	asserts.AssertvalidationMessage(str)
	return str
end

function asserts.AsserttaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected taskId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.taskId(str)
	asserts.AsserttaskId(str)
	return str
end

function asserts.AssertOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatorType to be of type 'string'")
end

--  
function M.OperatorType(str)
	asserts.AssertOperatorType(str)
	return str
end

function asserts.AssertattributeNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeNameString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.attributeNameString(str)
	asserts.AssertattributeNameString(str)
	return str
end

function asserts.AssertattributeValueString(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeValueString to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.attributeValueString(str)
	asserts.AssertattributeValueString(str)
	return str
end

function asserts.Assertid(str)
	assert(str)
	assert(type(str) == "string", "Expected id to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.id(str)
	asserts.Assertid(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertlongString(str)
	assert(str)
	assert(type(str) == "string", "Expected longString to be of type 'string'")
	assert(#str <= 20971520, "Expected string to be max 20971520 characters")
end

--  
function M.longString(str)
	asserts.AssertlongString(str)
	return str
end

function asserts.Assertint(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected int to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.int(integer)
	asserts.Assertint(integer)
	return integer
end

function asserts.AssertcancelActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected cancelActive to be of type 'boolean'")
end

function M.cancelActive(boolean)
	asserts.AssertcancelActive(boolean)
	return boolean
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.AssertPipelineObjectMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PipelineObjectMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assertid(k)
		asserts.AssertPipelineObject(v)
	end
end

function M.PipelineObjectMap(map)
	asserts.AssertPipelineObjectMap(map)
	return map
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertpipelineList(list)
	assert(list)
	assert(type(list) == "table", "Expected pipelineList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineIdName(v)
	end
end

--  
-- List of PipelineIdName objects
function M.pipelineList(list)
	asserts.AssertpipelineList(list)
	return list
end

function asserts.AsserttagList(list)
	assert(list)
	assert(type(list) == "table", "Expected tagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.tagList(list)
	asserts.AsserttagList(list)
	return list
end

function asserts.AssertParameterAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterAttribute(v)
	end
end

--  
-- List of ParameterAttribute objects
function M.ParameterAttributeList(list)
	asserts.AssertParameterAttributeList(list)
	return list
end

function asserts.AssertSelectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected SelectorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSelector(v)
	end
end

-- <p>The list of Selectors that define queries on individual fields.</p>
-- List of Selector objects
function M.SelectorList(list)
	asserts.AssertSelectorList(list)
	return list
end

function asserts.AssertParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.ParameterValueList(list)
	asserts.AssertParameterValueList(list)
	return list
end

function asserts.AssertfieldList(list)
	assert(list)
	assert(type(list) == "table", "Expected fieldList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertField(v)
	end
end

--  
-- List of Field objects
function M.fieldList(list)
	asserts.AssertfieldList(list)
	return list
end

function asserts.AssertParameterObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterObjectList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterObject(v)
	end
end

--  
-- List of ParameterObject objects
function M.ParameterObjectList(list)
	asserts.AssertParameterObjectList(list)
	return list
end

function asserts.AssertPipelineObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineObjectList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineObject(v)
	end
end

--  
-- List of PipelineObject objects
function M.PipelineObjectList(list)
	asserts.AssertPipelineObjectList(list)
	return list
end

function asserts.AssertValidationWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationWarnings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValidationWarning(v)
	end
end

--  
-- List of ValidationWarning objects
function M.ValidationWarnings(list)
	asserts.AssertValidationWarnings(list)
	return list
end

function asserts.AssertValidationErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidationErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValidationError(v)
	end
end

--  
-- List of ValidationError objects
function M.ValidationErrors(list)
	asserts.AssertValidationErrors(list)
	return list
end

function asserts.AssertstringList(list)
	assert(list)
	assert(type(list) == "table", "Expected stringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.stringList(list)
	asserts.AssertstringList(list)
	return list
end

function asserts.AssertPipelineDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineDescription(v)
	end
end

--  
-- List of PipelineDescription objects
function M.PipelineDescriptionList(list)
	asserts.AssertPipelineDescriptionList(list)
	return list
end

function asserts.AssertidList(list)
	assert(list)
	assert(type(list) == "table", "Expected idList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertid(v)
	end
end

--  
-- List of id objects
function M.idList(list)
	asserts.AssertidList(list)
	return list
end

function asserts.AssertvalidationMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected validationMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertvalidationMessage(v)
	end
end

--  
-- List of validationMessage objects
function M.validationMessages(list)
	asserts.AssertvalidationMessages(list)
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
--- Call RemoveTags asynchronously, invoking a callback when done
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

--- Call RemoveTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsInput
-- @return response
-- @return error_message
function M.RemoveTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeactivatePipeline asynchronously, invoking a callback when done
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

--- Call DeactivatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeactivatePipelineInput
-- @return response
-- @return error_message
function M.DeactivatePipelineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeactivatePipelineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
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

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsInput
-- @return response
-- @return error_message
function M.AddTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ValidatePipelineDefinition asynchronously, invoking a callback when done
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

--- Call ValidatePipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ValidatePipelineDefinitionInput
-- @return response
-- @return error_message
function M.ValidatePipelineDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ValidatePipelineDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelines asynchronously, invoking a callback when done
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

--- Call ListPipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelinesInput
-- @return response
-- @return error_message
function M.ListPipelinesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelinesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePipeline asynchronously, invoking a callback when done
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

--- Call DeletePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePipelineInput
-- @return response
-- @return error_message
function M.DeletePipelineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePipelineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeObjects asynchronously, invoking a callback when done
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

--- Call DescribeObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeObjectsInput
-- @return response
-- @return error_message
function M.DescribeObjectsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeObjectsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call QueryObjects asynchronously, invoking a callback when done
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

--- Call QueryObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param QueryObjectsInput
-- @return response
-- @return error_message
function M.QueryObjectsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.QueryObjectsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetStatus asynchronously, invoking a callback when done
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

--- Call SetStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetStatusInput
-- @return response
-- @return error_message
function M.SetStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTaskStatus asynchronously, invoking a callback when done
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

--- Call SetTaskStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTaskStatusInput
-- @return response
-- @return error_message
function M.SetTaskStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTaskStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutPipelineDefinition asynchronously, invoking a callback when done
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

--- Call PutPipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPipelineDefinitionInput
-- @return response
-- @return error_message
function M.PutPipelineDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPipelineDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForTask asynchronously, invoking a callback when done
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

--- Call PollForTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForTaskInput
-- @return response
-- @return error_message
function M.PollForTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ActivatePipeline asynchronously, invoking a callback when done
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

--- Call ActivatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ActivatePipelineInput
-- @return response
-- @return error_message
function M.ActivatePipelineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ActivatePipelineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePipeline asynchronously, invoking a callback when done
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

--- Call CreatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePipelineInput
-- @return response
-- @return error_message
function M.CreatePipelineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePipelineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EvaluateExpression asynchronously, invoking a callback when done
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

--- Call EvaluateExpression synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EvaluateExpressionInput
-- @return response
-- @return error_message
function M.EvaluateExpressionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EvaluateExpressionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPipelineDefinition asynchronously, invoking a callback when done
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

--- Call GetPipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPipelineDefinitionInput
-- @return response
-- @return error_message
function M.GetPipelineDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPipelineDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReportTaskProgress asynchronously, invoking a callback when done
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

--- Call ReportTaskProgress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReportTaskProgressInput
-- @return response
-- @return error_message
function M.ReportTaskProgressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReportTaskProgressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReportTaskRunnerHeartbeat asynchronously, invoking a callback when done
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

--- Call ReportTaskRunnerHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReportTaskRunnerHeartbeatInput
-- @return response
-- @return error_message
function M.ReportTaskRunnerHeartbeatSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReportTaskRunnerHeartbeatAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePipelines asynchronously, invoking a callback when done
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

--- Call DescribePipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePipelinesInput
-- @return response
-- @return error_message
function M.DescribePipelinesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePipelinesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
