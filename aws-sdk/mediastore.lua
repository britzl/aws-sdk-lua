--- GENERATED CODE - DO NOT MODIFY
-- AWS Elemental MediaStore (mediastore-2017-09-01)

local M = {}

M.metadata = {
	api_version = "2017-09-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "mediastore",
	service_abbreviation = "MediaStore",
	service_full_name = "AWS Elemental MediaStore",
	signature_version = "v4",
	target_prefix = "MediaStore_20170901",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mediastore-2017-09-01",
}

local keys = {}
local asserts = {}

keys.Container = { ["Status"] = true, ["Endpoint"] = true, ["CreationTime"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertContainer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Container to be of type 'table'")
	if struct["Status"] then asserts.AssertContainerStatus(struct["Status"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["CreationTime"] then asserts.AssertTimeStamp(struct["CreationTime"]) end
	if struct["Name"] then asserts.AssertContainerName(struct["Name"]) end
	if struct["ARN"] then asserts.AssertContainerARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Container[k], "Container contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Container
-- <p>This section describes operations that you can perform on an AWS Elemental MediaStore container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ContainerStatus] <p>The status of container creation or deletion. The status is one of the following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service is creating the container, the status is <code>CREATING</code>. When the endpoint is available, the status changes to <code>ACTIVE</code>.</p>
-- * Endpoint [Endpoint] <p>The DNS endpoint of the container. Use the endpoint to identify the specific container when sending requests to the data plane. The service assigns this value when the container is created. Once the value has been assigned, it does not change.</p>
-- * CreationTime [TimeStamp] <p>Unix timestamp.</p>
-- * Name [ContainerName] <p>The name of the container.</p>
-- * ARN [ContainerARN] <p>The Amazon Resource Name (ARN) of the container. The ARN has the following format:</p> <p>arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt; </p> <p>For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p>
-- @return Container structure as a key-value pair table
function M.Container(args)
	assert(args, "You must provide an argument table when creating Container")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Endpoint"] = args["Endpoint"],
		["CreationTime"] = args["CreationTime"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertContainer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerNotFoundException = { ["Message"] = true, nil }

function asserts.AssertContainerNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerNotFoundException[k], "ContainerNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerNotFoundException
-- <p>Could not perform an operation on a container that does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ContainerNotFoundException structure as a key-value pair table
function M.ContainerNotFoundException(args)
	assert(args, "You must provide an argument table when creating ContainerNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertContainerNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateContainerInput = { ["ContainerName"] = true, nil }

function asserts.AssertCreateContainerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateContainerInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateContainerInput[k], "CreateContainerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateContainerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named <code>movies</code> in every region, as long as you don’t have an existing container with that name.</p>
-- Required key: ContainerName
-- @return CreateContainerInput structure as a key-value pair table
function M.CreateContainerInput(args)
	assert(args, "You must provide an argument table when creating CreateContainerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertCreateContainerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContainerInput = { ["ContainerName"] = true, nil }

function asserts.AssertDeleteContainerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContainerInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteContainerInput[k], "DeleteContainerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContainerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container to delete. </p>
-- Required key: ContainerName
-- @return DeleteContainerInput structure as a key-value pair table
function M.DeleteContainerInput(args)
	assert(args, "You must provide an argument table when creating DeleteContainerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertDeleteContainerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContainerOutput = { nil }

function asserts.AssertDeleteContainerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContainerOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteContainerOutput[k], "DeleteContainerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContainerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteContainerOutput structure as a key-value pair table
function M.DeleteContainerOutput(args)
	assert(args, "You must provide an argument table when creating DeleteContainerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteContainerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A service limit has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContainerPolicyOutput = { nil }

function asserts.AssertDeleteContainerPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContainerPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteContainerPolicyOutput[k], "DeleteContainerPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContainerPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteContainerPolicyOutput structure as a key-value pair table
function M.DeleteContainerPolicyOutput(args)
	assert(args, "You must provide an argument table when creating DeleteContainerPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteContainerPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CorsRule = { ["AllowedHeaders"] = true, ["ExposeHeaders"] = true, ["MaxAgeSeconds"] = true, ["AllowedMethods"] = true, ["AllowedOrigins"] = true, nil }

function asserts.AssertCorsRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CorsRule to be of type 'table'")
	if struct["AllowedHeaders"] then asserts.AssertAllowedHeaders(struct["AllowedHeaders"]) end
	if struct["ExposeHeaders"] then asserts.AssertExposeHeaders(struct["ExposeHeaders"]) end
	if struct["MaxAgeSeconds"] then asserts.AssertMaxAgeSeconds(struct["MaxAgeSeconds"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["AllowedOrigins"] then asserts.AssertAllowedOrigins(struct["AllowedOrigins"]) end
	for k,_ in pairs(struct) do
		assert(keys.CorsRule[k], "CorsRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CorsRule
-- <p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowedHeaders [AllowedHeaders] <p>Specifies which headers are allowed in a preflight <code>OPTIONS</code> request through the <code>Access-Control-Request-Headers</code> header. Each header name that is specified in <code>Access-Control-Request-Headers</code> must have a corresponding entry in the rule. Only the headers that were requested are sent back. </p> <p>This element can contain only one wildcard character (*).</p>
-- * ExposeHeaders [ExposeHeaders] <p>One or more headers in the response that you want users to be able to access from their applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p> <p>This element is optional for each rule.</p>
-- * MaxAgeSeconds [MaxAgeSeconds] <p>The time in seconds that your browser caches the preflight response for the specified resource.</p> <p>A CORS rule can have only one <code>MaxAgeSeconds</code> element.</p>
-- * AllowedMethods [AllowedMethods] <p>Identifies an HTTP method that the origin that is specified in the rule is allowed to execute.</p> <p>Each CORS rule must contain at least one <code>AllowedMethod</code> and one <code>AllowedOrigin</code> element.</p>
-- * AllowedOrigins [AllowedOrigins] <p>One or more response headers that you want users to be able to access from their applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p> <p>Each CORS rule must have at least one <code>AllowedOrigin</code> element. The string value can include only one wildcard character (*), for example, http://*.example.com. Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.</p>
-- @return CorsRule structure as a key-value pair table
function M.CorsRule(args)
	assert(args, "You must provide an argument table when creating CorsRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowedHeaders"] = args["AllowedHeaders"],
		["ExposeHeaders"] = args["ExposeHeaders"],
		["MaxAgeSeconds"] = args["MaxAgeSeconds"],
		["AllowedMethods"] = args["AllowedMethods"],
		["AllowedOrigins"] = args["AllowedOrigins"],
	}
	asserts.AssertCorsRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyNotFoundException = { ["Message"] = true, nil }

function asserts.AssertPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyNotFoundException[k], "PolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotFoundException
-- <p>Could not perform an operation on a policy that does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return PolicyNotFoundException structure as a key-value pair table
function M.PolicyNotFoundException(args)
	assert(args, "You must provide an argument table when creating PolicyNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertPolicyNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListContainersOutput = { ["NextToken"] = true, ["Containers"] = true, nil }

function asserts.AssertListContainersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainersOutput to be of type 'table'")
	assert(struct["Containers"], "Expected key Containers to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Containers"] then asserts.AssertContainerList(struct["Containers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListContainersOutput[k], "ListContainersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainersOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p> <code>NextToken</code> is the token to use in the next call to <code>ListContainers</code>. This token is returned only if you included the <code>MaxResults</code> tag in the original command, and only if there are still containers to return. </p>
-- * Containers [ContainerList] <p>The names of the containers.</p>
-- Required key: Containers
-- @return ListContainersOutput structure as a key-value pair table
function M.ListContainersOutput(args)
	assert(args, "You must provide an argument table when creating ListContainersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Containers"] = args["Containers"],
	}
	asserts.AssertListContainersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutCorsPolicyInput = { ["ContainerName"] = true, ["CorsPolicy"] = true, nil }

function asserts.AssertPutCorsPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutCorsPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	assert(struct["CorsPolicy"], "Expected key CorsPolicy to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	if struct["CorsPolicy"] then asserts.AssertCorsPolicy(struct["CorsPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutCorsPolicyInput[k], "PutCorsPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutCorsPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container that you want to assign the CORS policy to.</p>
-- * CorsPolicy [CorsPolicy] <p>The CORS policy to apply to the container. </p>
-- Required key: ContainerName
-- Required key: CorsPolicy
-- @return PutCorsPolicyInput structure as a key-value pair table
function M.PutCorsPolicyInput(args)
	assert(args, "You must provide an argument table when creating PutCorsPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
		["CorsPolicy"] = args["CorsPolicy"],
	}
	asserts.AssertPutCorsPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutContainerPolicyInput = { ["Policy"] = true, ["ContainerName"] = true, nil }

function asserts.AssertPutContainerPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutContainerPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertContainerPolicy(struct["Policy"]) end
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutContainerPolicyInput[k], "PutContainerPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutContainerPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [ContainerPolicy] <p>The contents of the policy, which includes the following: </p> <ul> <li> <p>One <code>Version</code> tag</p> </li> <li> <p>One <code>Statement</code> tag that contains the standard tags for the policy.</p> </li> </ul>
-- * ContainerName [ContainerName] <p>The name of the container.</p>
-- Required key: ContainerName
-- Required key: Policy
-- @return PutContainerPolicyInput structure as a key-value pair table
function M.PutContainerPolicyInput(args)
	assert(args, "You must provide an argument table when creating PutContainerPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertPutContainerPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutContainerPolicyOutput = { nil }

function asserts.AssertPutContainerPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutContainerPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutContainerPolicyOutput[k], "PutContainerPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutContainerPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutContainerPolicyOutput structure as a key-value pair table
function M.PutContainerPolicyOutput(args)
	assert(args, "You must provide an argument table when creating PutContainerPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutContainerPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContainerInput = { ["ContainerName"] = true, nil }

function asserts.AssertDescribeContainerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerInput to be of type 'table'")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContainerInput[k], "DescribeContainerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container to query.</p>
-- @return DescribeContainerInput structure as a key-value pair table
function M.DescribeContainerInput(args)
	assert(args, "You must provide an argument table when creating DescribeContainerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertDescribeContainerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListContainersInput = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListContainersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainersInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertContainerListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListContainersInput[k], "ListContainersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainersInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>Only if you used <code>MaxResults</code> in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.</p>
-- * MaxResults [ContainerListLimit] <p>Enter the maximum number of containers in the response. Use from 1 to 255 characters. </p>
-- @return ListContainersInput structure as a key-value pair table
function M.ListContainersInput(args)
	assert(args, "You must provide an argument table when creating ListContainersInput")
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
	asserts.AssertListContainersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContainerOutput = { ["Container"] = true, nil }

function asserts.AssertDescribeContainerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerOutput to be of type 'table'")
	if struct["Container"] then asserts.AssertContainer(struct["Container"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContainerOutput[k], "DescribeContainerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Container [Container] <p>The name of the queried container.</p>
-- @return DescribeContainerOutput structure as a key-value pair table
function M.DescribeContainerOutput(args)
	assert(args, "You must provide an argument table when creating DescribeContainerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Container"] = args["Container"],
	}
	asserts.AssertDescribeContainerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutCorsPolicyOutput = { nil }

function asserts.AssertPutCorsPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutCorsPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutCorsPolicyOutput[k], "PutCorsPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutCorsPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutCorsPolicyOutput structure as a key-value pair table
function M.PutCorsPolicyOutput(args)
	assert(args, "You must provide an argument table when creating PutCorsPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutCorsPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContainerPolicyInput = { ["ContainerName"] = true, nil }

function asserts.AssertGetContainerPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContainerPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContainerPolicyInput[k], "GetContainerPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContainerPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container. </p>
-- Required key: ContainerName
-- @return GetContainerPolicyInput structure as a key-value pair table
function M.GetContainerPolicyInput(args)
	assert(args, "You must provide an argument table when creating GetContainerPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertGetContainerPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerError = { ["Message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>The service is temporarily unavailable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
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
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContainerPolicyOutput = { ["Policy"] = true, nil }

function asserts.AssertGetContainerPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContainerPolicyOutput to be of type 'table'")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertContainerPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContainerPolicyOutput[k], "GetContainerPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContainerPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [ContainerPolicy] <p>The contents of the access policy.</p>
-- Required key: Policy
-- @return GetContainerPolicyOutput structure as a key-value pair table
function M.GetContainerPolicyOutput(args)
	assert(args, "You must provide an argument table when creating GetContainerPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetContainerPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCorsPolicyOutput = { nil }

function asserts.AssertDeleteCorsPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCorsPolicyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCorsPolicyOutput[k], "DeleteCorsPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCorsPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteCorsPolicyOutput structure as a key-value pair table
function M.DeleteCorsPolicyOutput(args)
	assert(args, "You must provide an argument table when creating DeleteCorsPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteCorsPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateContainerOutput = { ["Container"] = true, nil }

function asserts.AssertCreateContainerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateContainerOutput to be of type 'table'")
	assert(struct["Container"], "Expected key Container to exist in table")
	if struct["Container"] then asserts.AssertContainer(struct["Container"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateContainerOutput[k], "CreateContainerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateContainerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Container [Container] <p>ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p> <p>ContainerName: The container name as specified in the request.</p> <p>CreationTime: Unix time stamp.</p> <p>Status: The status of container creation or deletion. The status is one of the following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service is creating the container, the status is <code>CREATING</code>. When an endpoint is available, the status changes to <code>ACTIVE</code>.</p> <p>The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using <a>DescribeContainer</a> or <a>ListContainers</a>.</p>
-- Required key: Container
-- @return CreateContainerOutput structure as a key-value pair table
function M.CreateContainerOutput(args)
	assert(args, "You must provide an argument table when creating CreateContainerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Container"] = args["Container"],
	}
	asserts.AssertCreateContainerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CorsPolicyNotFoundException = { ["Message"] = true, nil }

function asserts.AssertCorsPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CorsPolicyNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CorsPolicyNotFoundException[k], "CorsPolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CorsPolicyNotFoundException
-- <p>Could not perform an operation on a policy that does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return CorsPolicyNotFoundException structure as a key-value pair table
function M.CorsPolicyNotFoundException(args)
	assert(args, "You must provide an argument table when creating CorsPolicyNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertCorsPolicyNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCorsPolicyOutput = { ["CorsPolicy"] = true, nil }

function asserts.AssertGetCorsPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCorsPolicyOutput to be of type 'table'")
	assert(struct["CorsPolicy"], "Expected key CorsPolicy to exist in table")
	if struct["CorsPolicy"] then asserts.AssertCorsPolicy(struct["CorsPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCorsPolicyOutput[k], "GetCorsPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCorsPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CorsPolicy [CorsPolicy] 
-- Required key: CorsPolicy
-- @return GetCorsPolicyOutput structure as a key-value pair table
function M.GetCorsPolicyOutput(args)
	assert(args, "You must provide an argument table when creating GetCorsPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CorsPolicy"] = args["CorsPolicy"],
	}
	asserts.AssertGetCorsPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContainerPolicyInput = { ["ContainerName"] = true, nil }

function asserts.AssertDeleteContainerPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContainerPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteContainerPolicyInput[k], "DeleteContainerPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContainerPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container that holds the policy.</p>
-- Required key: ContainerName
-- @return DeleteContainerPolicyInput structure as a key-value pair table
function M.DeleteContainerPolicyInput(args)
	assert(args, "You must provide an argument table when creating DeleteContainerPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertDeleteContainerPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCorsPolicyInput = { ["ContainerName"] = true, nil }

function asserts.AssertDeleteCorsPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCorsPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCorsPolicyInput[k], "DeleteCorsPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCorsPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container to remove the policy from.</p>
-- Required key: ContainerName
-- @return DeleteCorsPolicyInput structure as a key-value pair table
function M.DeleteCorsPolicyInput(args)
	assert(args, "You must provide an argument table when creating DeleteCorsPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertDeleteCorsPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerInUseException = { ["Message"] = true, nil }

function asserts.AssertContainerInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerInUseException[k], "ContainerInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerInUseException
-- <p>Resource already exists or is being updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ContainerInUseException structure as a key-value pair table
function M.ContainerInUseException(args)
	assert(args, "You must provide an argument table when creating ContainerInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertContainerInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCorsPolicyInput = { ["ContainerName"] = true, nil }

function asserts.AssertGetCorsPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCorsPolicyInput to be of type 'table'")
	assert(struct["ContainerName"], "Expected key ContainerName to exist in table")
	if struct["ContainerName"] then asserts.AssertContainerName(struct["ContainerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCorsPolicyInput[k], "GetCorsPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCorsPolicyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContainerName [ContainerName] <p>The name of the container that the policy is assigned to.</p>
-- Required key: ContainerName
-- @return GetCorsPolicyInput structure as a key-value pair table
function M.GetCorsPolicyInput(args)
	assert(args, "You must provide an argument table when creating GetCorsPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContainerName"] = args["ContainerName"],
	}
	asserts.AssertGetCorsPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertContainerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContainerName(str)
	asserts.AssertContainerName(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertContainerARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerARN to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContainerARN(str)
	asserts.AssertContainerARN(str)
	return str
end

function asserts.AssertMethodName(str)
	assert(str)
	assert(type(str) == "string", "Expected MethodName to be of type 'string'")
end

--  
function M.MethodName(str)
	asserts.AssertMethodName(str)
	return str
end

function asserts.AssertContainerPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerPolicy to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContainerPolicy(str)
	asserts.AssertContainerPolicy(str)
	return str
end

function asserts.AssertEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected Endpoint to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Endpoint(str)
	asserts.AssertEndpoint(str)
	return str
end

function asserts.AssertOrigin(str)
	assert(str)
	assert(type(str) == "string", "Expected Origin to be of type 'string'")
end

--  
function M.Origin(str)
	asserts.AssertOrigin(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertContainerStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerStatus to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContainerStatus(str)
	asserts.AssertContainerStatus(str)
	return str
end

function asserts.AssertHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected Header to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Header(str)
	asserts.AssertHeader(str)
	return str
end

function asserts.AssertMaxAgeSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxAgeSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
end

function M.MaxAgeSeconds(integer)
	asserts.AssertMaxAgeSeconds(integer)
	return integer
end

function asserts.AssertContainerListLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ContainerListLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ContainerListLimit(integer)
	asserts.AssertContainerListLimit(integer)
	return integer
end

function asserts.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	asserts.AssertTimeStamp(timestamp)
	return timestamp
end

function asserts.AssertContainerList(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContainer(v)
	end
end

--  
-- List of Container objects
function M.ContainerList(list)
	asserts.AssertContainerList(list)
	return list
end

function asserts.AssertAllowedOrigins(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedOrigins to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrigin(v)
	end
end

--  
-- List of Origin objects
function M.AllowedOrigins(list)
	asserts.AssertAllowedOrigins(list)
	return list
end

function asserts.AssertAllowedHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedHeaders to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertHeader(v)
	end
end

--  
-- List of Header objects
function M.AllowedHeaders(list)
	asserts.AssertAllowedHeaders(list)
	return list
end

function asserts.AssertAllowedMethods(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedMethods to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMethodName(v)
	end
end

--  
-- List of MethodName objects
function M.AllowedMethods(list)
	asserts.AssertAllowedMethods(list)
	return list
end

function asserts.AssertCorsPolicy(list)
	assert(list)
	assert(type(list) == "table", "Expected CorsPolicy to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertCorsRule(v)
	end
end

-- <p>The CORS policy of the container. </p>
-- List of CorsRule objects
function M.CorsPolicy(list)
	asserts.AssertCorsPolicy(list)
	return list
end

function asserts.AssertExposeHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected ExposeHeaders to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertHeader(v)
	end
end

--  
-- List of Header objects
function M.ExposeHeaders(list)
	asserts.AssertExposeHeaders(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mediastore.amazonaws.com"
		end
	end
	local ss = { "mediastore" }
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
--- Call PutContainerPolicy asynchronously, invoking a callback when done
-- @param PutContainerPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutContainerPolicyAsync(PutContainerPolicyInput, cb)
	assert(PutContainerPolicyInput, "You must provide a PutContainerPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.PutContainerPolicy",
	}
	for header,value in pairs(PutContainerPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutContainerPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutContainerPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutContainerPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutContainerPolicySync(PutContainerPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutContainerPolicyAsync(PutContainerPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCorsPolicy asynchronously, invoking a callback when done
-- @param DeleteCorsPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCorsPolicyAsync(DeleteCorsPolicyInput, cb)
	assert(DeleteCorsPolicyInput, "You must provide a DeleteCorsPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.DeleteCorsPolicy",
	}
	for header,value in pairs(DeleteCorsPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCorsPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCorsPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCorsPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCorsPolicySync(DeleteCorsPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCorsPolicyAsync(DeleteCorsPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteContainerPolicy asynchronously, invoking a callback when done
-- @param DeleteContainerPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteContainerPolicyAsync(DeleteContainerPolicyInput, cb)
	assert(DeleteContainerPolicyInput, "You must provide a DeleteContainerPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.DeleteContainerPolicy",
	}
	for header,value in pairs(DeleteContainerPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteContainerPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteContainerPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteContainerPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteContainerPolicySync(DeleteContainerPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteContainerPolicyAsync(DeleteContainerPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCorsPolicy asynchronously, invoking a callback when done
-- @param GetCorsPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCorsPolicyAsync(GetCorsPolicyInput, cb)
	assert(GetCorsPolicyInput, "You must provide a GetCorsPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.GetCorsPolicy",
	}
	for header,value in pairs(GetCorsPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCorsPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCorsPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCorsPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetCorsPolicySync(GetCorsPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCorsPolicyAsync(GetCorsPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListContainers asynchronously, invoking a callback when done
-- @param ListContainersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListContainersAsync(ListContainersInput, cb)
	assert(ListContainersInput, "You must provide a ListContainersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.ListContainers",
	}
	for header,value in pairs(ListContainersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListContainersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListContainers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListContainersInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListContainersSync(ListContainersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListContainersAsync(ListContainersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeContainer asynchronously, invoking a callback when done
-- @param DescribeContainerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeContainerAsync(DescribeContainerInput, cb)
	assert(DescribeContainerInput, "You must provide a DescribeContainerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.DescribeContainer",
	}
	for header,value in pairs(DescribeContainerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeContainerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeContainer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeContainerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeContainerSync(DescribeContainerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeContainerAsync(DescribeContainerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateContainer asynchronously, invoking a callback when done
-- @param CreateContainerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateContainerAsync(CreateContainerInput, cb)
	assert(CreateContainerInput, "You must provide a CreateContainerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.CreateContainer",
	}
	for header,value in pairs(CreateContainerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateContainerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateContainer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateContainerInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateContainerSync(CreateContainerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateContainerAsync(CreateContainerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutCorsPolicy asynchronously, invoking a callback when done
-- @param PutCorsPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutCorsPolicyAsync(PutCorsPolicyInput, cb)
	assert(PutCorsPolicyInput, "You must provide a PutCorsPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.PutCorsPolicy",
	}
	for header,value in pairs(PutCorsPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutCorsPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutCorsPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutCorsPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutCorsPolicySync(PutCorsPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutCorsPolicyAsync(PutCorsPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteContainer asynchronously, invoking a callback when done
-- @param DeleteContainerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteContainerAsync(DeleteContainerInput, cb)
	assert(DeleteContainerInput, "You must provide a DeleteContainerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.DeleteContainer",
	}
	for header,value in pairs(DeleteContainerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteContainerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteContainer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteContainerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteContainerSync(DeleteContainerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteContainerAsync(DeleteContainerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContainerPolicy asynchronously, invoking a callback when done
-- @param GetContainerPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContainerPolicyAsync(GetContainerPolicyInput, cb)
	assert(GetContainerPolicyInput, "You must provide a GetContainerPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MediaStore_20170901.GetContainerPolicy",
	}
	for header,value in pairs(GetContainerPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContainerPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContainerPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContainerPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetContainerPolicySync(GetContainerPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContainerPolicyAsync(GetContainerPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
