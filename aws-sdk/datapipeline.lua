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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [tagList] <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- * name [id] <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
-- * uniqueId [id] <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
-- * description [string] <p>The description for the pipeline.</p>
-- Required key: name
-- Required key: uniqueId
-- @return CreatePipelineInput structure as a key-value pair table
function M.CreatePipelineInput(args)
	assert(args, "You must provide an argument table when creating CreatePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tags"] = args["tags"],
		["name"] = args["name"],
		["uniqueId"] = args["uniqueId"],
		["description"] = args["description"],
	}
	asserts.AssertCreatePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>QueryObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- * query [Query] <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * limit [int] <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
-- * sphere [string] <p>Indicates whether the query applies to components or instances. The possible values are: <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
-- Required key: pipelineId
-- Required key: sphere
-- @return QueryObjectsInput structure as a key-value pair table
function M.QueryObjectsInput(args)
	assert(args, "You must provide an argument table when creating QueryObjectsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["query"] = args["query"],
		["pipelineId"] = args["pipelineId"],
		["limit"] = args["limit"],
		["sphere"] = args["sphere"],
	}
	asserts.AssertQueryObjectsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> again with this marker value. If the value is null, there are no more results.</p>
-- * hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
-- * pipelineIdList [pipelineList] <p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>
-- Required key: pipelineIdList
-- @return ListPipelinesOutput structure as a key-value pair table
function M.ListPipelinesOutput(args)
	assert(args, "You must provide an argument table when creating ListPipelinesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["hasMoreResults"] = args["hasMoreResults"],
		["pipelineIdList"] = args["pipelineIdList"],
	}
	asserts.AssertListPipelinesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorStackTrace [string] <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- * errorMessage [errorMessage] <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>
-- * errorId [string] <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
-- * taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- * taskStatus [TaskStatus] <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
-- Required key: taskId
-- Required key: taskStatus
-- @return SetTaskStatusInput structure as a key-value pair table
function M.SetTaskStatusInput(args)
	assert(args, "You must provide an argument table when creating SetTaskStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorStackTrace"] = args["errorStackTrace"],
		["errorMessage"] = args["errorMessage"],
		["errorId"] = args["errorId"],
		["taskId"] = args["taskId"],
		["taskStatus"] = args["taskStatus"],
	}
	asserts.AssertSetTaskStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * expression [longString] <p>The expression to evaluate.</p>
-- * objectId [id] <p>The ID of the object.</p>
-- Required key: pipelineId
-- Required key: objectId
-- Required key: expression
-- @return EvaluateExpressionInput structure as a key-value pair table
function M.EvaluateExpressionInput(args)
	assert(args, "You must provide an argument table when creating EvaluateExpressionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineId"] = args["pipelineId"],
		["expression"] = args["expression"],
		["objectId"] = args["objectId"],
	}
	asserts.AssertEvaluateExpressionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetTaskStatusOutput structure as a key-value pair table
function M.SetTaskStatusOutput(args)
	assert(args, "You must provide an argument table when creating SetTaskStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetTaskStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * document [string] <p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>
-- * signature [string] <p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>
-- @return InstanceIdentity structure as a key-value pair table
function M.InstanceIdentity(args)
	assert(args, "You must provide an argument table when creating InstanceIdentity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["document"] = args["document"],
		["signature"] = args["signature"],
	}
	asserts.AssertInstanceIdentity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stringValue [attributeValueString] <p>The field value, expressed as a String.</p>
-- * key [attributeNameString] <p>The field identifier.</p>
-- Required key: key
-- Required key: stringValue
-- @return ParameterAttribute structure as a key-value pair table
function M.ParameterAttribute(args)
	assert(args, "You must provide an argument table when creating ParameterAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stringValue"] = args["stringValue"],
		["key"] = args["key"],
	}
	asserts.AssertParameterAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errors [validationMessages] <p>A description of the validation error.</p>
-- * id [id] <p>The identifier of the object that contains the validation error.</p>
-- @return ValidationError structure as a key-value pair table
function M.ValidationError(args)
	assert(args, "You must provide an argument table when creating ValidationError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errors"] = args["errors"],
		["id"] = args["id"],
	}
	asserts.AssertValidationError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Description of the error message.</p>
-- @return PipelineDeletedException structure as a key-value pair table
function M.PipelineDeletedException(args)
	assert(args, "You must provide an argument table when creating PipelineDeletedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPipelineDeletedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameterValues [ParameterValueList] <p>The parameter values used in the pipeline definition.</p>
-- * pipelineObjects [PipelineObjectList] <p>The objects defined in the pipeline.</p>
-- * parameterObjects [ParameterObjectList] <p>The parameter objects used in the pipeline definition.</p>
-- @return GetPipelineDefinitionOutput structure as a key-value pair table
function M.GetPipelineDefinitionOutput(args)
	assert(args, "You must provide an argument table when creating GetPipelineDefinitionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameterValues"] = args["parameterValues"],
		["pipelineObjects"] = args["pipelineObjects"],
		["parameterObjects"] = args["parameterObjects"],
	}
	asserts.AssertGetPipelineDefinitionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Description of the error message.</p>
-- @return TaskNotFoundException structure as a key-value pair table
function M.TaskNotFoundException(args)
	assert(args, "You must provide an argument table when creating TaskNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTaskNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- * pipelineObjects [PipelineObjectList] <p>An array of object definitions.</p>
-- * hasMoreResults [boolean] <p>Indicates whether there are more results to return.</p>
-- Required key: pipelineObjects
-- @return DescribeObjectsOutput structure as a key-value pair table
function M.DescribeObjectsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeObjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["pipelineObjects"] = args["pipelineObjects"],
		["hasMoreResults"] = args["hasMoreResults"],
	}
	asserts.AssertDescribeObjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fields [fieldList] <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
-- * taskId [taskId] <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
-- Required key: taskId
-- @return ReportTaskProgressInput structure as a key-value pair table
function M.ReportTaskProgressInput(args)
	assert(args, "You must provide an argument table when creating ReportTaskProgressInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fields"] = args["fields"],
		["taskId"] = args["taskId"],
	}
	asserts.AssertReportTaskProgressInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [tagValue] <p>The optional value portion of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- * key [tagKey] <p>The key name of a tag defined by a user. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- Required key: key
-- Required key: value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * values [stringList] <p>The value that the actual field value will be compared with.</p>
-- * type [OperatorType] <p> The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below. </p> <p> The comparison operators EQ and REF_EQ act on the following fields: </p> <ul> <li>name</li> <li>@sphere</li> <li>parent</li> <li>@componentParent</li> <li>@instanceParent</li> <li>@status</li> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p> The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields: </p> <ul> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string "my".</p>
-- @return Operator structure as a key-value pair table
function M.Operator(args)
	assert(args, "You must provide an argument table when creating Operator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["values"] = args["values"],
		["type"] = args["type"],
	}
	asserts.AssertOperator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Description of the error message.</p>
-- @return InternalServiceError structure as a key-value pair table
function M.InternalServiceError(args)
	assert(args, "You must provide an argument table when creating InternalServiceError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalServiceError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineIds [idList] <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
-- Required key: pipelineIds
-- @return DescribePipelinesInput structure as a key-value pair table
function M.DescribePipelinesInput(args)
	assert(args, "You must provide an argument table when creating DescribePipelinesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineIds"] = args["pipelineIds"],
	}
	asserts.AssertDescribePipelinesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * operator [Operator] 
-- * fieldName [string] <p>The name of the field that the operator will be applied to. The field name is the "key" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>
-- @return Selector structure as a key-value pair table
function M.Selector(args)
	assert(args, "You must provide an argument table when creating Selector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["operator"] = args["operator"],
		["fieldName"] = args["fieldName"],
	}
	asserts.AssertSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fields [fieldList] <p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>
-- * pipelineId [id] <p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- * name [id] <p>The name of the pipeline.</p>
-- * tags [tagList] <p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-- * description [string] <p>Description of the pipeline.</p>
-- Required key: pipelineId
-- Required key: name
-- Required key: fields
-- @return PipelineDescription structure as a key-value pair table
function M.PipelineDescription(args)
	assert(args, "You must provide an argument table when creating PipelineDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fields"] = args["fields"],
		["pipelineId"] = args["pipelineId"],
		["name"] = args["name"],
		["tags"] = args["tags"],
		["description"] = args["description"],
	}
	asserts.AssertPipelineDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * objects [PipelineObjectMap] <p>Connection information for the location where the task runner will publish the output of the task.</p>
-- * pipelineId [id] <p>The ID of the pipeline that provided the task.</p>
-- * attemptId [id] <p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>
-- * taskId [taskId] <p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>
-- @return TaskObject structure as a key-value pair table
function M.TaskObject(args)
	assert(args, "You must provide an argument table when creating TaskObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["objects"] = args["objects"],
		["pipelineId"] = args["pipelineId"],
		["attemptId"] = args["attemptId"],
		["taskId"] = args["taskId"],
	}
	asserts.AssertTaskObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fields [fieldList] <p>Key-value pairs that define the properties of the object.</p>
-- * id [id] <p>The ID of the object.</p>
-- * name [id] <p>The name of the object.</p>
-- Required key: id
-- Required key: name
-- Required key: fields
-- @return PipelineObject structure as a key-value pair table
function M.PipelineObject(args)
	assert(args, "You must provide an argument table when creating PipelineObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fields"] = args["fields"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertPipelineObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- * pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline changes to validate against the pipeline.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required key: pipelineId
-- Required key: pipelineObjects
-- @return ValidatePipelineDefinitionInput structure as a key-value pair table
function M.ValidatePipelineDefinitionInput(args)
	assert(args, "You must provide an argument table when creating ValidatePipelineDefinitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameterValues"] = args["parameterValues"],
		["pipelineObjects"] = args["pipelineObjects"],
		["pipelineId"] = args["pipelineId"],
		["parameterObjects"] = args["parameterObjects"],
	}
	asserts.AssertValidatePipelineDefinitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- Required key: pipelineId
-- @return DeletePipelineInput structure as a key-value pair table
function M.DeletePipelineInput(args)
	assert(args, "You must provide an argument table when creating DeletePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertDeletePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * canceled [boolean] <p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>
-- Required key: canceled
-- @return ReportTaskProgressOutput structure as a key-value pair table
function M.ReportTaskProgressOutput(args)
	assert(args, "You must provide an argument table when creating ReportTaskProgressOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["canceled"] = args["canceled"],
	}
	asserts.AssertReportTaskProgressOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validationErrors [ValidationErrors] <p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- * errored [boolean] <p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>
-- * validationWarnings [ValidationWarnings] <p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>
-- Required key: errored
-- @return PutPipelineDefinitionOutput structure as a key-value pair table
function M.PutPipelineDefinitionOutput(args)
	assert(args, "You must provide an argument table when creating PutPipelineDefinitionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["validationErrors"] = args["validationErrors"],
		["errored"] = args["errored"],
		["validationWarnings"] = args["validationWarnings"],
	}
	asserts.AssertPutPipelineDefinitionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineId [id] <p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>
-- Required key: pipelineId
-- @return CreatePipelineOutput structure as a key-value pair table
function M.CreatePipelineOutput(args)
	assert(args, "You must provide an argument table when creating CreatePipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertCreatePipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * terminate [boolean] <p>Indicates whether the calling task runner should terminate.</p>
-- Required key: terminate
-- @return ReportTaskRunnerHeartbeatOutput structure as a key-value pair table
function M.ReportTaskRunnerHeartbeatOutput(args)
	assert(args, "You must provide an argument table when creating ReportTaskRunnerHeartbeatOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["terminate"] = args["terminate"],
	}
	asserts.AssertReportTaskRunnerHeartbeatOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tagKeys [stringList] <p>The keys of the tags to remove.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- Required key: pipelineId
-- Required key: tagKeys
-- @return RemoveTagsInput structure as a key-value pair table
function M.RemoveTagsInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tagKeys"] = args["tagKeys"],
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertRemoveTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ActivatePipelineOutput structure as a key-value pair table
function M.ActivatePipelineOutput(args)
	assert(args, "You must provide an argument table when creating ActivatePipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertActivatePipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsOutput structure as a key-value pair table
function M.RemoveTagsOutput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * selectors [SelectorList] <p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>
-- @return Query structure as a key-value pair table
function M.Query(args)
	assert(args, "You must provide an argument table when creating Query")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["selectors"] = args["selectors"],
	}
	asserts.AssertQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Description of the error message.</p>
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * objectIds [idList] <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
-- * status [string] <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
-- * pipelineId [id] <p>The ID of the pipeline that contains the objects.</p>
-- Required key: pipelineId
-- Required key: objectIds
-- Required key: status
-- @return SetStatusInput structure as a key-value pair table
function M.SetStatusInput(args)
	assert(args, "You must provide an argument table when creating SetStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["objectIds"] = args["objectIds"],
		["status"] = args["status"],
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertSetStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskObject [TaskObject] <p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> and <a>SetTaskStatus</a>.</p>
-- @return PollForTaskOutput structure as a key-value pair table
function M.PollForTaskOutput(args)
	assert(args, "You must provide an argument table when creating PollForTaskOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskObject"] = args["taskObject"],
	}
	asserts.AssertPollForTaskOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * evaluatedExpression [longString] <p>The evaluated expression.</p>
-- Required key: evaluatedExpression
-- @return EvaluateExpressionOutput structure as a key-value pair table
function M.EvaluateExpressionOutput(args)
	assert(args, "You must provide an argument table when creating EvaluateExpressionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["evaluatedExpression"] = args["evaluatedExpression"],
	}
	asserts.AssertEvaluateExpressionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeactivatePipelineOutput structure as a key-value pair table
function M.DeactivatePipelineOutput(args)
	assert(args, "You must provide an argument table when creating DeactivatePipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeactivatePipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsOutput structure as a key-value pair table
function M.AddTagsOutput(args)
	assert(args, "You must provide an argument table when creating AddTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>Description of the error message.</p>
-- @return PipelineNotFoundException structure as a key-value pair table
function M.PipelineNotFoundException(args)
	assert(args, "You must provide an argument table when creating PipelineNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPipelineNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- * hostname [id] <p>The public DNS name of the calling task runner.</p>
-- * instanceIdentity [InstanceIdentity] <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
-- Required key: workerGroup
-- @return PollForTaskInput structure as a key-value pair table
function M.PollForTaskInput(args)
	assert(args, "You must provide an argument table when creating PollForTaskInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workerGroup"] = args["workerGroup"],
		["hostname"] = args["hostname"],
		["instanceIdentity"] = args["instanceIdentity"],
	}
	asserts.AssertPollForTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [id] <p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
-- * name [id] <p>The name of the pipeline.</p>
-- @return PipelineIdName structure as a key-value pair table
function M.PipelineIdName(args)
	assert(args, "You must provide an argument table when creating PipelineIdName")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertPipelineIdName(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * tags [tagList] <p>The tags to add, as key/value pairs.</p>
-- Required key: pipelineId
-- Required key: tags
-- @return AddTagsInput structure as a key-value pair table
function M.AddTagsInput(args)
	assert(args, "You must provide an argument table when creating AddTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineId"] = args["pipelineId"],
		["tags"] = args["tags"],
	}
	asserts.AssertAddTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [ParameterAttributeList] <p>The attributes of the parameter object.</p>
-- * id [fieldNameString] <p>The ID of the parameter object. </p>
-- Required key: id
-- Required key: attributes
-- @return ParameterObject structure as a key-value pair table
function M.ParameterObject(args)
	assert(args, "You must provide an argument table when creating ParameterObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["id"] = args["id"],
	}
	asserts.AssertParameterObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>ListPipelines</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- @return ListPipelinesInput structure as a key-value pair table
function M.ListPipelinesInput(args)
	assert(args, "You must provide an argument table when creating ListPipelinesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
	}
	asserts.AssertListPipelinesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- * refValue [fieldNameString] <p>The field value, expressed as the identifier of another object.</p>
-- * key [fieldNameString] <p>The field identifier.</p>
-- Required key: key
-- @return Field structure as a key-value pair table
function M.Field(args)
	assert(args, "You must provide an argument table when creating Field")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stringValue"] = args["stringValue"],
		["refValue"] = args["refValue"],
		["key"] = args["key"],
	}
	asserts.AssertField(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * version [string] <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) to use the last definition saved to the pipeline or <code>active</code> to use the last definition that was activated.</p>
-- Required key: pipelineId
-- @return GetPipelineDefinitionInput structure as a key-value pair table
function M.GetPipelineDefinitionInput(args)
	assert(args, "You must provide an argument table when creating GetPipelineDefinitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineId"] = args["pipelineId"],
		["version"] = args["version"],
	}
	asserts.AssertGetPipelineDefinitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineDescriptionList [PipelineDescriptionList] <p>An array of descriptions for the specified pipelines.</p>
-- Required key: pipelineDescriptionList
-- @return DescribePipelinesOutput structure as a key-value pair table
function M.DescribePipelinesOutput(args)
	assert(args, "You must provide an argument table when creating DescribePipelinesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineDescriptionList"] = args["pipelineDescriptionList"],
	}
	asserts.AssertDescribePipelinesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workerGroup [string] <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
-- * hostname [id] <p>The public DNS name of the task runner.</p>
-- * taskrunnerId [id] <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
-- Required key: taskrunnerId
-- @return ReportTaskRunnerHeartbeatInput structure as a key-value pair table
function M.ReportTaskRunnerHeartbeatInput(args)
	assert(args, "You must provide an argument table when creating ReportTaskRunnerHeartbeatInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workerGroup"] = args["workerGroup"],
		["hostname"] = args["hostname"],
		["taskrunnerId"] = args["taskrunnerId"],
	}
	asserts.AssertReportTaskRunnerHeartbeatInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cancelActive [cancelActive] <p>Indicates whether to cancel any running objects. The default is true, which sets the state of any running objects to <code>CANCELED</code>. If this value is false, the pipeline is deactivated after all running objects finish.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- Required key: pipelineId
-- @return DeactivatePipelineInput structure as a key-value pair table
function M.DeactivatePipelineInput(args)
	assert(args, "You must provide an argument table when creating DeactivatePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cancelActive"] = args["cancelActive"],
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertDeactivatePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validationErrors [ValidationErrors] <p>Any validation errors that were found.</p>
-- * errored [boolean] <p>Indicates whether there were validation errors.</p>
-- * validationWarnings [ValidationWarnings] <p>Any validation warnings that were found.</p>
-- Required key: errored
-- @return ValidatePipelineDefinitionOutput structure as a key-value pair table
function M.ValidatePipelineDefinitionOutput(args)
	assert(args, "You must provide an argument table when creating ValidatePipelineDefinitionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["validationErrors"] = args["validationErrors"],
		["errored"] = args["errored"],
		["validationWarnings"] = args["validationWarnings"],
	}
	asserts.AssertValidatePipelineDefinitionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * objectIds [idList] <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
-- * marker [string] <p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>DescribeObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>
-- * pipelineId [id] <p>The ID of the pipeline that contains the object definitions.</p>
-- * evaluateExpressions [boolean] <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
-- Required key: pipelineId
-- Required key: objectIds
-- @return DescribeObjectsInput structure as a key-value pair table
function M.DescribeObjectsInput(args)
	assert(args, "You must provide an argument table when creating DescribeObjectsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["objectIds"] = args["objectIds"],
		["marker"] = args["marker"],
		["pipelineId"] = args["pipelineId"],
		["evaluateExpressions"] = args["evaluateExpressions"],
	}
	asserts.AssertDescribeObjectsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> again with this marker value. If the value is null, there are no more results.</p>
-- * ids [idList] <p>The identifiers that match the query selectors.</p>
-- * hasMoreResults [boolean] <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
-- @return QueryObjectsOutput structure as a key-value pair table
function M.QueryObjectsOutput(args)
	assert(args, "You must provide an argument table when creating QueryObjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["ids"] = args["ids"],
		["hasMoreResults"] = args["hasMoreResults"],
	}
	asserts.AssertQueryObjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stringValue [fieldStringValue] <p>The field value, expressed as a String.</p>
-- * id [fieldNameString] <p>The ID of the parameter value.</p>
-- Required key: id
-- Required key: stringValue
-- @return ParameterValue structure as a key-value pair table
function M.ParameterValue(args)
	assert(args, "You must provide an argument table when creating ParameterValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stringValue"] = args["stringValue"],
		["id"] = args["id"],
	}
	asserts.AssertParameterValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [id] <p>The identifier of the object that contains the validation warning.</p>
-- * warnings [validationMessages] <p>A description of the validation warning.</p>
-- @return ValidationWarning structure as a key-value pair table
function M.ValidationWarning(args)
	assert(args, "You must provide an argument table when creating ValidationWarning")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertValidationWarning(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameterValues [ParameterValueList] <p>The parameter values used with the pipeline.</p>
-- * pipelineObjects [PipelineObjectList] <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- * parameterObjects [ParameterObjectList] <p>The parameter objects used with the pipeline.</p>
-- Required key: pipelineId
-- Required key: pipelineObjects
-- @return PutPipelineDefinitionInput structure as a key-value pair table
function M.PutPipelineDefinitionInput(args)
	assert(args, "You must provide an argument table when creating PutPipelineDefinitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameterValues"] = args["parameterValues"],
		["pipelineObjects"] = args["pipelineObjects"],
		["pipelineId"] = args["pipelineId"],
		["parameterObjects"] = args["parameterObjects"],
	}
	asserts.AssertPutPipelineDefinitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameterValues [ParameterValueList] <p>A list of parameter values to pass to the pipeline at activation.</p>
-- * startTimestamp [timestamp] <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
-- * pipelineId [id] <p>The ID of the pipeline.</p>
-- Required key: pipelineId
-- @return ActivatePipelineInput structure as a key-value pair table
function M.ActivatePipelineInput(args)
	assert(args, "You must provide an argument table when creating ActivatePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameterValues"] = args["parameterValues"],
		["startTimestamp"] = args["startTimestamp"],
		["pipelineId"] = args["pipelineId"],
	}
	asserts.AssertActivatePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call RemoveTags asynchronously, invoking a callback when done
-- @param RemoveTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsAsync(RemoveTagsInput, cb)
	assert(RemoveTagsInput, "You must provide a RemoveTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.RemoveTags",
	}
	for header,value in pairs(RemoveTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsSync(RemoveTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(RemoveTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeactivatePipeline asynchronously, invoking a callback when done
-- @param DeactivatePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeactivatePipelineAsync(DeactivatePipelineInput, cb)
	assert(DeactivatePipelineInput, "You must provide a DeactivatePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.DeactivatePipeline",
	}
	for header,value in pairs(DeactivatePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeactivatePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeactivatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeactivatePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeactivatePipelineSync(DeactivatePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeactivatePipelineAsync(DeactivatePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.AddTags",
	}
	for header,value in pairs(AddTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsSync(AddTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(AddTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ValidatePipelineDefinition asynchronously, invoking a callback when done
-- @param ValidatePipelineDefinitionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ValidatePipelineDefinitionAsync(ValidatePipelineDefinitionInput, cb)
	assert(ValidatePipelineDefinitionInput, "You must provide a ValidatePipelineDefinitionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.ValidatePipelineDefinition",
	}
	for header,value in pairs(ValidatePipelineDefinitionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ValidatePipelineDefinitionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ValidatePipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ValidatePipelineDefinitionInput
-- @return response
-- @return error_type
-- @return error_message
function M.ValidatePipelineDefinitionSync(ValidatePipelineDefinitionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ValidatePipelineDefinitionAsync(ValidatePipelineDefinitionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelines asynchronously, invoking a callback when done
-- @param ListPipelinesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPipelinesAsync(ListPipelinesInput, cb)
	assert(ListPipelinesInput, "You must provide a ListPipelinesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.ListPipelines",
	}
	for header,value in pairs(ListPipelinesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPipelinesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelinesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPipelinesSync(ListPipelinesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelinesAsync(ListPipelinesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePipeline asynchronously, invoking a callback when done
-- @param DeletePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePipelineAsync(DeletePipelineInput, cb)
	assert(DeletePipelineInput, "You must provide a DeletePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.DeletePipeline",
	}
	for header,value in pairs(DeletePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePipelineSync(DeletePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePipelineAsync(DeletePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeObjects asynchronously, invoking a callback when done
-- @param DescribeObjectsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeObjectsAsync(DescribeObjectsInput, cb)
	assert(DescribeObjectsInput, "You must provide a DescribeObjectsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.DescribeObjects",
	}
	for header,value in pairs(DescribeObjectsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeObjectsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeObjectsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeObjectsSync(DescribeObjectsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeObjectsAsync(DescribeObjectsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call QueryObjects asynchronously, invoking a callback when done
-- @param QueryObjectsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.QueryObjectsAsync(QueryObjectsInput, cb)
	assert(QueryObjectsInput, "You must provide a QueryObjectsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.QueryObjects",
	}
	for header,value in pairs(QueryObjectsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", QueryObjectsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call QueryObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param QueryObjectsInput
-- @return response
-- @return error_type
-- @return error_message
function M.QueryObjectsSync(QueryObjectsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.QueryObjectsAsync(QueryObjectsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetStatus asynchronously, invoking a callback when done
-- @param SetStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetStatusAsync(SetStatusInput, cb)
	assert(SetStatusInput, "You must provide a SetStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.SetStatus",
	}
	for header,value in pairs(SetStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetStatusSync(SetStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetStatusAsync(SetStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTaskStatus asynchronously, invoking a callback when done
-- @param SetTaskStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetTaskStatusAsync(SetTaskStatusInput, cb)
	assert(SetTaskStatusInput, "You must provide a SetTaskStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.SetTaskStatus",
	}
	for header,value in pairs(SetTaskStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetTaskStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetTaskStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTaskStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetTaskStatusSync(SetTaskStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTaskStatusAsync(SetTaskStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutPipelineDefinition asynchronously, invoking a callback when done
-- @param PutPipelineDefinitionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutPipelineDefinitionAsync(PutPipelineDefinitionInput, cb)
	assert(PutPipelineDefinitionInput, "You must provide a PutPipelineDefinitionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.PutPipelineDefinition",
	}
	for header,value in pairs(PutPipelineDefinitionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutPipelineDefinitionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutPipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPipelineDefinitionInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutPipelineDefinitionSync(PutPipelineDefinitionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPipelineDefinitionAsync(PutPipelineDefinitionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForTask asynchronously, invoking a callback when done
-- @param PollForTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PollForTaskAsync(PollForTaskInput, cb)
	assert(PollForTaskInput, "You must provide a PollForTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.PollForTask",
	}
	for header,value in pairs(PollForTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PollForTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PollForTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.PollForTaskSync(PollForTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForTaskAsync(PollForTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ActivatePipeline asynchronously, invoking a callback when done
-- @param ActivatePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ActivatePipelineAsync(ActivatePipelineInput, cb)
	assert(ActivatePipelineInput, "You must provide a ActivatePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.ActivatePipeline",
	}
	for header,value in pairs(ActivatePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ActivatePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ActivatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ActivatePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.ActivatePipelineSync(ActivatePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ActivatePipelineAsync(ActivatePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePipeline asynchronously, invoking a callback when done
-- @param CreatePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePipelineAsync(CreatePipelineInput, cb)
	assert(CreatePipelineInput, "You must provide a CreatePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.CreatePipeline",
	}
	for header,value in pairs(CreatePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePipelineSync(CreatePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePipelineAsync(CreatePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EvaluateExpression asynchronously, invoking a callback when done
-- @param EvaluateExpressionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EvaluateExpressionAsync(EvaluateExpressionInput, cb)
	assert(EvaluateExpressionInput, "You must provide a EvaluateExpressionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.EvaluateExpression",
	}
	for header,value in pairs(EvaluateExpressionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EvaluateExpressionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EvaluateExpression synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EvaluateExpressionInput
-- @return response
-- @return error_type
-- @return error_message
function M.EvaluateExpressionSync(EvaluateExpressionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EvaluateExpressionAsync(EvaluateExpressionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPipelineDefinition asynchronously, invoking a callback when done
-- @param GetPipelineDefinitionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPipelineDefinitionAsync(GetPipelineDefinitionInput, cb)
	assert(GetPipelineDefinitionInput, "You must provide a GetPipelineDefinitionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.GetPipelineDefinition",
	}
	for header,value in pairs(GetPipelineDefinitionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPipelineDefinitionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPipelineDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPipelineDefinitionInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetPipelineDefinitionSync(GetPipelineDefinitionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPipelineDefinitionAsync(GetPipelineDefinitionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReportTaskProgress asynchronously, invoking a callback when done
-- @param ReportTaskProgressInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReportTaskProgressAsync(ReportTaskProgressInput, cb)
	assert(ReportTaskProgressInput, "You must provide a ReportTaskProgressInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.ReportTaskProgress",
	}
	for header,value in pairs(ReportTaskProgressInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ReportTaskProgressInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReportTaskProgress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReportTaskProgressInput
-- @return response
-- @return error_type
-- @return error_message
function M.ReportTaskProgressSync(ReportTaskProgressInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReportTaskProgressAsync(ReportTaskProgressInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReportTaskRunnerHeartbeat asynchronously, invoking a callback when done
-- @param ReportTaskRunnerHeartbeatInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReportTaskRunnerHeartbeatAsync(ReportTaskRunnerHeartbeatInput, cb)
	assert(ReportTaskRunnerHeartbeatInput, "You must provide a ReportTaskRunnerHeartbeatInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.ReportTaskRunnerHeartbeat",
	}
	for header,value in pairs(ReportTaskRunnerHeartbeatInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ReportTaskRunnerHeartbeatInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReportTaskRunnerHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReportTaskRunnerHeartbeatInput
-- @return response
-- @return error_type
-- @return error_message
function M.ReportTaskRunnerHeartbeatSync(ReportTaskRunnerHeartbeatInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReportTaskRunnerHeartbeatAsync(ReportTaskRunnerHeartbeatInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePipelines asynchronously, invoking a callback when done
-- @param DescribePipelinesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePipelinesAsync(DescribePipelinesInput, cb)
	assert(DescribePipelinesInput, "You must provide a DescribePipelinesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DataPipeline.DescribePipelines",
	}
	for header,value in pairs(DescribePipelinesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePipelinesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePipelinesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePipelinesSync(DescribePipelinesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePipelinesAsync(DescribePipelinesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
