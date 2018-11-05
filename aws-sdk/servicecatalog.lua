--- GENERATED CODE - DO NOT MODIFY
-- AWS Service Catalog (servicecatalog-2015-12-10)

local M = {}

M.metadata = {
	api_version = "2015-12-10",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "servicecatalog",
	service_abbreviation = "",
	service_full_name = "AWS Service Catalog",
	signature_version = "v4",
	target_prefix = "AWS242ServiceCatalogService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "servicecatalog-2015-12-10",
}

local keys = {}
local asserts = {}

keys.DescribeProvisionedProductPlanInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PlanId"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeProvisionedProductPlanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductPlanInput to be of type 'table'")
	assert(struct["PlanId"], "Expected key PlanId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisionedProductPlanInput[k], "DescribeProvisionedProductPlanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductPlanInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- Required key: PlanId
-- @return DescribeProvisionedProductPlanInput structure as a key-value pair table
function M.DescribeProvisionedProductPlanInput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisionedProductPlanInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PlanId"] = args["PlanId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeProvisionedProductPlanInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationPortfolioAccessInput = { ["AcceptLanguage"] = true, ["OrganizationNodeType"] = true, ["PortfolioId"] = true, ["PageSize"] = true, ["PageToken"] = true, nil }

function asserts.AssertListOrganizationPortfolioAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationPortfolioAccessInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["OrganizationNodeType"], "Expected key OrganizationNodeType to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["OrganizationNodeType"] then asserts.AssertOrganizationNodeType(struct["OrganizationNodeType"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationPortfolioAccessInput[k], "ListOrganizationPortfolioAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationPortfolioAccessInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * OrganizationNodeType [OrganizationNodeType] <p>The organization node type that will be returned in the output.</p> <ul> <li> <p> <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p> </li> <li> <p> <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p> </li> <li> <p> <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p> </li> </ul>
-- * PortfolioId [Id] <p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- Required key: PortfolioId
-- Required key: OrganizationNodeType
-- @return ListOrganizationPortfolioAccessInput structure as a key-value pair table
function M.ListOrganizationPortfolioAccessInput(args)
	assert(args, "You must provide an argument table when creating ListOrganizationPortfolioAccessInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["OrganizationNodeType"] = args["OrganizationNodeType"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
	}
	asserts.AssertListOrganizationPortfolioAccessInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectPortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioShareType"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertRejectPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioShareType"] then asserts.AssertPortfolioShareType(struct["PortfolioShareType"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectPortfolioShareInput[k], "RejectPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectPortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioShareType [PortfolioShareType] <p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the master account of your organization.</p> </li> <li> <p> <code>IMPORTED</code> - Reject imported portfolios.</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p> </li> </ul> <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code> </p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return RejectPortfolioShareInput structure as a key-value pair table
function M.RejectPortfolioShareInput(args)
	assert(args, "You must provide an argument table when creating RejectPortfolioShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioShareType"] = args["PortfolioShareType"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertRejectPortfolioShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProductViewAggregationValue = { ["ApproximateCount"] = true, ["Value"] = true, nil }

function asserts.AssertProductViewAggregationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewAggregationValue to be of type 'table'")
	if struct["ApproximateCount"] then asserts.AssertApproximateCount(struct["ApproximateCount"]) end
	if struct["Value"] then asserts.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductViewAggregationValue[k], "ProductViewAggregationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewAggregationValue
-- <p>A single product view aggregation value/count pair, containing metadata about each product to which the calling user has access.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApproximateCount [ApproximateCount] <p>An approximate count of the products that match the value.</p>
-- * Value [AttributeValue] <p>The value of the product view aggregation.</p>
-- @return ProductViewAggregationValue structure as a key-value pair table
function M.ProductViewAggregationValue(args)
	assert(args, "You must provide an argument table when creating ProductViewAggregationValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApproximateCount"] = args["ApproximateCount"],
		["Value"] = args["Value"],
	}
	asserts.AssertProductViewAggregationValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePortfolioInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDeletePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioInput[k], "DeletePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The portfolio identifier.</p>
-- Required key: Id
-- @return DeletePortfolioInput structure as a key-value pair table
function M.DeletePortfolioInput(args)
	assert(args, "You must provide an argument table when creating DeletePortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeletePortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningParameter = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertProvisioningParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningParameter to be of type 'table'")
	if struct["Value"] then asserts.AssertParameterValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertParameterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningParameter[k], "ProvisioningParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningParameter
-- <p>Information about a parameter used to provision a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [ParameterValue] <p>The parameter value.</p>
-- * Key [ParameterKey] <p>The parameter key.</p>
-- @return ProvisioningParameter structure as a key-value pair table
function M.ProvisioningParameter(args)
	assert(args, "You must provide an argument table when creating ProvisioningParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertProvisioningParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceActionDetail = { ["ServiceActionSummary"] = true, ["Definition"] = true, nil }

function asserts.AssertServiceActionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceActionDetail to be of type 'table'")
	if struct["ServiceActionSummary"] then asserts.AssertServiceActionSummary(struct["ServiceActionSummary"]) end
	if struct["Definition"] then asserts.AssertServiceActionDefinitionMap(struct["Definition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceActionDetail[k], "ServiceActionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceActionDetail
-- <p>An object containing detailed information about the self-service action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceActionSummary [ServiceActionSummary] <p>Summary information about the self-service action.</p>
-- * Definition [ServiceActionDefinitionMap] <p>A map that defines the self-service action.</p>
-- @return ServiceActionDetail structure as a key-value pair table
function M.ServiceActionDetail(args)
	assert(args, "You must provide an argument table when creating ServiceActionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceActionSummary"] = args["ServiceActionSummary"],
		["Definition"] = args["Definition"],
	}
	asserts.AssertServiceActionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProvisionedProductPlanOutput = { ["PlanName"] = true, ["ProvisionedProductName"] = true, ["ProvisionProductId"] = true, ["PlanId"] = true, ["ProvisioningArtifactId"] = true, nil }

function asserts.AssertCreateProvisionedProductPlanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisionedProductPlanOutput to be of type 'table'")
	if struct["PlanName"] then asserts.AssertProvisionedProductPlanName(struct["PlanName"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["ProvisionProductId"] then asserts.AssertId(struct["ProvisionProductId"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProvisionedProductPlanOutput[k], "CreateProvisionedProductPlanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisionedProductPlanOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlanName [ProvisionedProductPlanName] <p>The name of the plan.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>The user-friendly name of the provisioned product.</p>
-- * ProvisionProductId [Id] <p>The product identifier.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- @return CreateProvisionedProductPlanOutput structure as a key-value pair table
function M.CreateProvisionedProductPlanOutput(args)
	assert(args, "You must provide an argument table when creating CreateProvisionedProductPlanOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlanName"] = args["PlanName"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["ProvisionProductId"] = args["ProvisionProductId"],
		["PlanId"] = args["PlanId"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
	}
	asserts.AssertCreateProvisionedProductPlanOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceActionOutput = { ["ServiceActionDetail"] = true, nil }

function asserts.AssertUpdateServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceActionOutput to be of type 'table'")
	if struct["ServiceActionDetail"] then asserts.AssertServiceActionDetail(struct["ServiceActionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceActionOutput[k], "UpdateServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceActionDetail [ServiceActionDetail] <p>Detailed information about the self-service action.</p>
-- @return UpdateServiceActionOutput structure as a key-value pair table
function M.UpdateServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating UpdateServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceActionDetail"] = args["ServiceActionDetail"],
	}
	asserts.AssertUpdateServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateServiceActionWithProvisioningArtifactInput = { ["ProvisioningArtifactId"] = true, ["AcceptLanguage"] = true, ["ServiceActionId"] = true, ["ProductId"] = true, nil }

function asserts.AssertAssociateServiceActionWithProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceActionWithProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ServiceActionId"], "Expected key ServiceActionId to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateServiceActionWithProvisioningArtifactInput[k], "AssociateServiceActionWithProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceActionWithProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- Required key: ServiceActionId
-- @return AssociateServiceActionWithProvisioningArtifactInput structure as a key-value pair table
function M.AssociateServiceActionWithProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating AssociateServiceActionWithProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ServiceActionId"] = args["ServiceActionId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertAssociateServiceActionWithProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecuteProvisionedProductPlanInput = { ["AcceptLanguage"] = true, ["IdempotencyToken"] = true, ["PlanId"] = true, nil }

function asserts.AssertExecuteProvisionedProductPlanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteProvisionedProductPlanInput to be of type 'table'")
	assert(struct["PlanId"], "Expected key PlanId to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecuteProvisionedProductPlanInput[k], "ExecuteProvisionedProductPlanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteProvisionedProductPlanInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- Required key: PlanId
-- Required key: IdempotencyToken
-- @return ExecuteProvisionedProductPlanInput structure as a key-value pair table
function M.ExecuteProvisionedProductPlanInput(args)
	assert(args, "You must provide an argument table when creating ExecuteProvisionedProductPlanInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["PlanId"] = args["PlanId"],
	}
	asserts.AssertExecuteProvisionedProductPlanInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProvisioningArtifactOutput = { ["ProvisioningArtifactDetail"] = true, ["Info"] = true, ["Status"] = true, nil }

function asserts.AssertUpdateProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then asserts.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then asserts.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisioningArtifactOutput[k], "UpdateProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Information about the provisioning artifact.</p>
-- * Info [ProvisioningArtifactInfo] <p>The URL of the CloudFormation template in Amazon S3.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return UpdateProvisioningArtifactOutput structure as a key-value pair table
function M.UpdateProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating UpdateProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertUpdateProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProductInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProductInput[k], "DeleteProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The product identifier.</p>
-- Required key: Id
-- @return DeleteProductInput structure as a key-value pair table
function M.DeleteProductInput(args)
	assert(args, "You must provide an argument table when creating DeleteProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRecordOutput = { ["RecordDetail"] = true, ["NextPageToken"] = true, ["RecordOutputs"] = true, nil }

function asserts.AssertDescribeRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRecordOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["RecordOutputs"] then asserts.AssertRecordOutputs(struct["RecordOutputs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRecordOutput[k], "DescribeRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRecordOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>Information about the product.</p>
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * RecordOutputs [RecordOutputs] <p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
-- @return DescribeRecordOutput structure as a key-value pair table
function M.DescribeRecordOutput(args)
	assert(args, "You must provide an argument table when creating DescribeRecordOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
		["NextPageToken"] = args["NextPageToken"],
		["RecordOutputs"] = args["RecordOutputs"],
	}
	asserts.AssertDescribeRecordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePortfolioShareStatusInput = { ["PortfolioShareToken"] = true, nil }

function asserts.AssertDescribePortfolioShareStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioShareStatusInput to be of type 'table'")
	assert(struct["PortfolioShareToken"], "Expected key PortfolioShareToken to exist in table")
	if struct["PortfolioShareToken"] then asserts.AssertPortfolioShareToken(struct["PortfolioShareToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePortfolioShareStatusInput[k], "DescribePortfolioShareStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioShareStatusInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioShareToken [PortfolioShareToken] <p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>
-- Required key: PortfolioShareToken
-- @return DescribePortfolioShareStatusInput structure as a key-value pair table
function M.DescribePortfolioShareStatusInput(args)
	assert(args, "You must provide an argument table when creating DescribePortfolioShareStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioShareToken"] = args["PortfolioShareToken"],
	}
	asserts.AssertDescribePortfolioShareStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLaunchPathsOutput = { ["NextPageToken"] = true, ["LaunchPathSummaries"] = true, nil }

function asserts.AssertListLaunchPathsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLaunchPathsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["LaunchPathSummaries"] then asserts.AssertLaunchPathSummaries(struct["LaunchPathSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLaunchPathsOutput[k], "ListLaunchPathsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLaunchPathsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * LaunchPathSummaries [LaunchPathSummaries] <p>Information about the launch path.</p>
-- @return ListLaunchPathsOutput structure as a key-value pair table
function M.ListLaunchPathsOutput(args)
	assert(args, "You must provide an argument table when creating ListLaunchPathsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["LaunchPathSummaries"] = args["LaunchPathSummaries"],
	}
	asserts.AssertListLaunchPathsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptPortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioShareType"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertAcceptPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioShareType"] then asserts.AssertPortfolioShareType(struct["PortfolioShareType"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptPortfolioShareInput[k], "AcceptPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptPortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioShareType [PortfolioShareType] <p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the master account of your organization.</p> </li> <li> <p> <code>IMPORTED</code> - Accept imported portfolios.</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p> </li> </ul> <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code> </p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return AcceptPortfolioShareInput structure as a key-value pair table
function M.AcceptPortfolioShareInput(args)
	assert(args, "You must provide an argument table when creating AcceptPortfolioShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioShareType"] = args["PortfolioShareType"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertAcceptPortfolioShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAWSOrganizationsAccessStatusInput = { nil }

function asserts.AssertGetAWSOrganizationsAccessStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAWSOrganizationsAccessStatusInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAWSOrganizationsAccessStatusInput[k], "GetAWSOrganizationsAccessStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAWSOrganizationsAccessStatusInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAWSOrganizationsAccessStatusInput structure as a key-value pair table
function M.GetAWSOrganizationsAccessStatusInput(args)
	assert(args, "You must provide an argument table when creating GetAWSOrganizationsAccessStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAWSOrganizationsAccessStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePortfolioInput = { ["RemoveTags"] = true, ["DisplayName"] = true, ["AddTags"] = true, ["ProviderName"] = true, ["AcceptLanguage"] = true, ["Id"] = true, ["Description"] = true, nil }

function asserts.AssertUpdatePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["RemoveTags"] then asserts.AssertTagKeys(struct["RemoveTags"]) end
	if struct["DisplayName"] then asserts.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["AddTags"] then asserts.AssertAddTags(struct["AddTags"]) end
	if struct["ProviderName"] then asserts.AssertProviderName(struct["ProviderName"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Description"] then asserts.AssertPortfolioDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePortfolioInput[k], "UpdatePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoveTags [TagKeys] <p>The tags to remove.</p>
-- * DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- * AddTags [AddTags] <p>The tags to add.</p>
-- * ProviderName [ProviderName] <p>The updated name of the portfolio provider.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The portfolio identifier.</p>
-- * Description [PortfolioDescription] <p>The updated description of the portfolio.</p>
-- Required key: Id
-- @return UpdatePortfolioInput structure as a key-value pair table
function M.UpdatePortfolioInput(args)
	assert(args, "You must provide an argument table when creating UpdatePortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoveTags"] = args["RemoveTags"],
		["DisplayName"] = args["DisplayName"],
		["AddTags"] = args["AddTags"],
		["ProviderName"] = args["ProviderName"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdatePortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceActionInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceActionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceActionInput[k], "DeleteServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- Required key: Id
-- @return DeleteServiceActionInput structure as a key-value pair table
function M.DeleteServiceActionInput(args)
	assert(args, "You must provide an argument table when creating DeleteServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateProductWithPortfolioInput = { ["AcceptLanguage"] = true, ["SourcePortfolioId"] = true, ["PortfolioId"] = true, ["ProductId"] = true, nil }

function asserts.AssertAssociateProductWithPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateProductWithPortfolioInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SourcePortfolioId"] then asserts.AssertId(struct["SourcePortfolioId"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateProductWithPortfolioInput[k], "AssociateProductWithPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateProductWithPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * SourcePortfolioId [Id] <p>The identifier of the source portfolio.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: PortfolioId
-- @return AssociateProductWithPortfolioInput structure as a key-value pair table
function M.AssociateProductWithPortfolioInput(args)
	assert(args, "You must provide an argument table when creating AssociateProductWithPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SourcePortfolioId"] = args["SourcePortfolioId"],
		["PortfolioId"] = args["PortfolioId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertAssociateProductWithPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfoliosForProductInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, ["ProductId"] = true, nil }

function asserts.AssertListPortfoliosForProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosForProductInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfoliosForProductInput[k], "ListPortfoliosForProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosForProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- @return ListPortfoliosForProductInput structure as a key-value pair table
function M.ListPortfoliosForProductInput(args)
	assert(args, "You must provide an argument table when creating ListPortfoliosForProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListPortfoliosForProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceActionOutput = { ["ServiceActionDetail"] = true, nil }

function asserts.AssertCreateServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceActionOutput to be of type 'table'")
	if struct["ServiceActionDetail"] then asserts.AssertServiceActionDetail(struct["ServiceActionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceActionOutput[k], "CreateServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceActionDetail [ServiceActionDetail] <p>An object containing information about the self-service action.</p>
-- @return CreateServiceActionOutput structure as a key-value pair table
function M.CreateServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating CreateServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceActionDetail"] = args["ServiceActionDetail"],
	}
	asserts.AssertCreateServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedProductDetail = { ["Status"] = true, ["ProvisioningArtifactId"] = true, ["Name"] = true, ["LastRecordId"] = true, ["IdempotencyToken"] = true, ["Arn"] = true, ["CreatedTime"] = true, ["Type"] = true, ["Id"] = true, ["StatusMessage"] = true, ["ProductId"] = true, nil }

function asserts.AssertProvisionedProductDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductDetail to be of type 'table'")
	if struct["Status"] then asserts.AssertProvisionedProductStatus(struct["Status"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Name"] then asserts.AssertProvisionedProductNameOrArn(struct["Name"]) end
	if struct["LastRecordId"] then asserts.AssertLastRequestId(struct["LastRecordId"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Arn"] then asserts.AssertProvisionedProductNameOrArn(struct["Arn"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Type"] then asserts.AssertProvisionedProductType(struct["Type"]) end
	if struct["Id"] then asserts.AssertProvisionedProductId(struct["Id"]) end
	if struct["StatusMessage"] then asserts.AssertProvisionedProductStatusMessage(struct["StatusMessage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedProductDetail[k], "ProvisionedProductDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductDetail
-- <p>Information about a provisioned product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ProvisionedProductStatus] <p>The current status of the provisioned product.</p> <ul> <li> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent operation succeeded and completed.</p> </li> <li> <p> <code>UNDER_CHANGE</code> - Transitive state, operations performed might not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> <li> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.</p> </li> <li> <p> <code>ERROR</code> - An unexpected error occurred, the provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * Name [ProvisionedProductNameOrArn] <p>The user-friendly name of the provisioned product.</p>
-- * LastRecordId [LastRequestId] <p>The record identifier of the last request performed on this provisioned product.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * Arn [ProvisionedProductNameOrArn] <p>The ARN of the provisioned product.</p>
-- * CreatedTime [CreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * Type [ProvisionedProductType] <p>The type of provisioned product. The supported value is <code>CFN_STACK</code>.</p>
-- * Id [ProvisionedProductId] <p>The identifier of the provisioned product.</p>
-- * StatusMessage [ProvisionedProductStatusMessage] <p>The current status message of the provisioned product.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- @return ProvisionedProductDetail structure as a key-value pair table
function M.ProvisionedProductDetail(args)
	assert(args, "You must provide an argument table when creating ProvisionedProductDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Name"] = args["Name"],
		["LastRecordId"] = args["LastRecordId"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["Arn"] = args["Arn"],
		["CreatedTime"] = args["CreatedTime"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["StatusMessage"] = args["StatusMessage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertProvisionedProductDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProvisionedProductsOutput = { ["NextPageToken"] = true, ["TotalResultsCount"] = true, ["ProvisionedProducts"] = true, nil }

function asserts.AssertSearchProvisionedProductsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProvisionedProductsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["TotalResultsCount"] then asserts.AssertTotalResultsCount(struct["TotalResultsCount"]) end
	if struct["ProvisionedProducts"] then asserts.AssertProvisionedProductAttributes(struct["ProvisionedProducts"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProvisionedProductsOutput[k], "SearchProvisionedProductsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProvisionedProductsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * TotalResultsCount [TotalResultsCount] <p>The number of provisioned products found.</p>
-- * ProvisionedProducts [ProvisionedProductAttributes] <p>Information about the provisioned products.</p>
-- @return SearchProvisionedProductsOutput structure as a key-value pair table
function M.SearchProvisionedProductsOutput(args)
	assert(args, "You must provide an argument table when creating SearchProvisionedProductsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["TotalResultsCount"] = args["TotalResultsCount"],
		["ProvisionedProducts"] = args["ProvisionedProducts"],
	}
	asserts.AssertSearchProvisionedProductsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRecordHistorySearchFilter = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertListRecordHistorySearchFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistorySearchFilter to be of type 'table'")
	if struct["Value"] then asserts.AssertSearchFilterValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertSearchFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRecordHistorySearchFilter[k], "ListRecordHistorySearchFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistorySearchFilter
-- <p>The search filter to use when listing history records.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [SearchFilterValue] <p>The filter value.</p>
-- * Key [SearchFilterKey] <p>The filter key.</p> <ul> <li> <p> <code>product</code> - Filter results based on the specified product identifier.</p> </li> <li> <p> <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p> </li> </ul>
-- @return ListRecordHistorySearchFilter structure as a key-value pair table
function M.ListRecordHistorySearchFilter(args)
	assert(args, "You must provide an argument table when creating ListRecordHistorySearchFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertListRecordHistorySearchFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePortfolioShareOutput = { ["PortfolioShareToken"] = true, nil }

function asserts.AssertDeletePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareOutput to be of type 'table'")
	if struct["PortfolioShareToken"] then asserts.AssertPortfolioShareToken(struct["PortfolioShareToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioShareOutput[k], "DeletePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioShareToken [PortfolioShareToken] <p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>
-- @return DeletePortfolioShareOutput structure as a key-value pair table
function M.DeletePortfolioShareOutput(args)
	assert(args, "You must provide an argument table when creating DeletePortfolioShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioShareToken"] = args["PortfolioShareToken"],
	}
	asserts.AssertDeletePortfolioShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagOptionsInput = { ["PageToken"] = true, ["PageSize"] = true, ["Filters"] = true, nil }

function asserts.AssertListTagOptionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsInput to be of type 'table'")
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["Filters"] then asserts.AssertListTagOptionsFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagOptionsInput[k], "ListTagOptionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * Filters [ListTagOptionsFilters] <p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>
-- @return ListTagOptionsInput structure as a key-value pair table
function M.ListTagOptionsInput(args)
	assert(args, "You must provide an argument table when creating ListTagOptionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListTagOptionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisioningArtifactsForServiceActionInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["ServiceActionId"] = true, ["PageSize"] = true, nil }

function asserts.AssertListProvisioningArtifactsForServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsForServiceActionInput to be of type 'table'")
	assert(struct["ServiceActionId"], "Expected key ServiceActionId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisioningArtifactsForServiceActionInput[k], "ListProvisioningArtifactsForServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsForServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- Required key: ServiceActionId
-- @return ListProvisioningArtifactsForServiceActionInput structure as a key-value pair table
function M.ListProvisioningArtifactsForServiceActionInput(args)
	assert(args, "You must provide an argument table when creating ListProvisioningArtifactsForServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["ServiceActionId"] = args["ServiceActionId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListProvisioningArtifactsForServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisionedProductInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisionedProductInput[k], "DescribeProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The provisioned product identifier.</p>
-- Required key: Id
-- @return DescribeProvisionedProductInput structure as a key-value pair table
function M.DescribeProvisionedProductInput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisionedProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProvisionedProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPrincipalsForPortfolioInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PortfolioId"] = true, ["PageSize"] = true, nil }

function asserts.AssertListPrincipalsForPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalsForPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalsForPortfolioInput[k], "ListPrincipalsForPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalsForPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- Required key: PortfolioId
-- @return ListPrincipalsForPortfolioInput structure as a key-value pair table
function M.ListPrincipalsForPortfolioInput(args)
	assert(args, "You must provide an argument table when creating ListPrincipalsForPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListPrincipalsForPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagOptionOutput = { nil }

function asserts.AssertDeleteTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagOptionOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagOptionOutput[k], "DeleteTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagOptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTagOptionOutput structure as a key-value pair table
function M.DeleteTagOptionOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTagOptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTagOptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProvisionedProductPlanInput = { ["AcceptLanguage"] = true, ["IgnoreErrors"] = true, ["PlanId"] = true, nil }

function asserts.AssertDeleteProvisionedProductPlanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisionedProductPlanInput to be of type 'table'")
	assert(struct["PlanId"], "Expected key PlanId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["IgnoreErrors"] then asserts.AssertIgnoreErrors(struct["IgnoreErrors"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProvisionedProductPlanInput[k], "DeleteProvisionedProductPlanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisionedProductPlanInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * IgnoreErrors [IgnoreErrors] <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- Required key: PlanId
-- @return DeleteProvisionedProductPlanInput structure as a key-value pair table
function M.DeleteProvisionedProductPlanInput(args)
	assert(args, "You must provide an argument table when creating DeleteProvisionedProductPlanInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["IgnoreErrors"] = args["IgnoreErrors"],
		["PlanId"] = args["PlanId"],
	}
	asserts.AssertDeleteProvisionedProductPlanInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationPortfolioAccessOutput = { ["NextPageToken"] = true, ["OrganizationNodes"] = true, nil }

function asserts.AssertListOrganizationPortfolioAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationPortfolioAccessOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["OrganizationNodes"] then asserts.AssertOrganizationNodes(struct["OrganizationNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationPortfolioAccessOutput[k], "ListOrganizationPortfolioAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationPortfolioAccessOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * OrganizationNodes [OrganizationNodes] <p>Displays information about the organization nodes.</p>
-- @return ListOrganizationPortfolioAccessOutput structure as a key-value pair table
function M.ListOrganizationPortfolioAccessOutput(args)
	assert(args, "You must provide an argument table when creating ListOrganizationPortfolioAccessOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["OrganizationNodes"] = args["OrganizationNodes"],
	}
	asserts.AssertListOrganizationPortfolioAccessOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceActionSummary = { ["DefinitionType"] = true, ["Description"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertServiceActionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceActionSummary to be of type 'table'")
	if struct["DefinitionType"] then asserts.AssertServiceActionDefinitionType(struct["DefinitionType"]) end
	if struct["Description"] then asserts.AssertServiceActionDescription(struct["Description"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertServiceActionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceActionSummary[k], "ServiceActionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceActionSummary
-- <p>Detailed information about the self-service action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefinitionType [ServiceActionDefinitionType] <p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
-- * Description [ServiceActionDescription] <p>The self-service action description.</p>
-- * Id [Id] <p>The self-service action identifier.</p>
-- * Name [ServiceActionName] <p>The self-service action name.</p>
-- @return ServiceActionSummary structure as a key-value pair table
function M.ServiceActionSummary(args)
	assert(args, "You must provide an argument table when creating ServiceActionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefinitionType"] = args["DefinitionType"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertServiceActionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAcceptedPortfolioSharesInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PortfolioShareType"] = true, ["PageSize"] = true, nil }

function asserts.AssertListAcceptedPortfolioSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAcceptedPortfolioSharesInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PortfolioShareType"] then asserts.AssertPortfolioShareType(struct["PortfolioShareType"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAcceptedPortfolioSharesInput[k], "ListAcceptedPortfolioSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAcceptedPortfolioSharesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PortfolioShareType [PortfolioShareType] <p>The type of shared portfolios to list. The default is to list imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - List portfolios shared by the master account of your organization</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - List default portfolios</p> </li> <li> <p> <code>IMPORTED</code> - List imported portfolios</p> </li> </ul>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- @return ListAcceptedPortfolioSharesInput structure as a key-value pair table
function M.ListAcceptedPortfolioSharesInput(args)
	assert(args, "You must provide an argument table when creating ListAcceptedPortfolioSharesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PortfolioShareType"] = args["PortfolioShareType"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListAcceptedPortfolioSharesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisionedProductOutput = { ["ProvisionedProductDetail"] = true, ["CloudWatchDashboards"] = true, nil }

function asserts.AssertDescribeProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductOutput to be of type 'table'")
	if struct["ProvisionedProductDetail"] then asserts.AssertProvisionedProductDetail(struct["ProvisionedProductDetail"]) end
	if struct["CloudWatchDashboards"] then asserts.AssertCloudWatchDashboards(struct["CloudWatchDashboards"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisionedProductOutput[k], "DescribeProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedProductDetail [ProvisionedProductDetail] <p>Information about the provisioned product.</p>
-- * CloudWatchDashboards [CloudWatchDashboards] <p>Any CloudWatch dashboards that were created when provisioning the product.</p>
-- @return DescribeProvisionedProductOutput structure as a key-value pair table
function M.DescribeProvisionedProductOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisionedProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedProductDetail"] = args["ProvisionedProductDetail"],
		["CloudWatchDashboards"] = args["CloudWatchDashboards"],
	}
	asserts.AssertDescribeProvisionedProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePortfolioOutput = { ["PortfolioDetail"] = true, ["Tags"] = true, nil }

function asserts.AssertCreatePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioOutput to be of type 'table'")
	if struct["PortfolioDetail"] then asserts.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioOutput[k], "CreatePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioDetail [PortfolioDetail] <p>Information about the portfolio.</p>
-- * Tags [Tags] <p>Information about the tags associated with the portfolio.</p>
-- @return CreatePortfolioOutput structure as a key-value pair table
function M.CreatePortfolioOutput(args)
	assert(args, "You must provide an argument table when creating CreatePortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreatePortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConstraintInput = { ["AcceptLanguage"] = true, ["Id"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Description"] then asserts.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConstraintInput[k], "UpdateConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConstraintInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The identifier of the constraint.</p>
-- * Description [ConstraintDescription] <p>The updated description of the constraint.</p>
-- Required key: Id
-- @return UpdateConstraintInput structure as a key-value pair table
function M.UpdateConstraintInput(args)
	assert(args, "You must provide an argument table when creating UpdateConstraintInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateConstraintInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisioningArtifactsForServiceActionOutput = { ["ProvisioningArtifactViews"] = true, ["NextPageToken"] = true, nil }

function asserts.AssertListProvisioningArtifactsForServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsForServiceActionOutput to be of type 'table'")
	if struct["ProvisioningArtifactViews"] then asserts.AssertProvisioningArtifactViews(struct["ProvisioningArtifactViews"]) end
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisioningArtifactsForServiceActionOutput[k], "ListProvisioningArtifactsForServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsForServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactViews [ProvisioningArtifactViews] <p>An array of objects with information about product views and provisioning artifacts.</p>
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- @return ListProvisioningArtifactsForServiceActionOutput structure as a key-value pair table
function M.ListProvisioningArtifactsForServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating ListProvisioningArtifactsForServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactViews"] = args["ProvisioningArtifactViews"],
		["NextPageToken"] = args["NextPageToken"],
	}
	asserts.AssertListProvisioningArtifactsForServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProvisioningArtifactOutput = { ["ProvisioningArtifactDetail"] = true, ["Info"] = true, ["Status"] = true, nil }

function asserts.AssertCreateProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then asserts.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then asserts.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProvisioningArtifactOutput[k], "CreateProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Information about the provisioning artifact.</p>
-- * Info [ProvisioningArtifactInfo] <p>The URL of the CloudFormation template in Amazon S3, in JSON format.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return CreateProvisioningArtifactOutput structure as a key-value pair table
function M.CreateProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating CreateProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertCreateProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConstraintOutput = { nil }

function asserts.AssertDeleteConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConstraintOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConstraintOutput[k], "DeleteConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConstraintOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConstraintOutput structure as a key-value pair table
function M.DeleteConstraintOutput(args)
	assert(args, "You must provide an argument table when creating DeleteConstraintOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConstraintOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProductViewDetail = { ["ProductViewSummary"] = true, ["Status"] = true, ["ProductARN"] = true, ["CreatedTime"] = true, nil }

function asserts.AssertProductViewDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewDetail to be of type 'table'")
	if struct["ProductViewSummary"] then asserts.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["ProductARN"] then asserts.AssertResourceARN(struct["ProductARN"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductViewDetail[k], "ProductViewDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewDetail
-- <p>Information about a product view.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewSummary [ProductViewSummary] <p>Summary information about the product view.</p>
-- * Status [Status] <p>The status of the product.</p> <ul> <li> <p> <code>AVAILABLE</code> - The product is ready for use.</p> </li> <li> <p> <code>CREATING</code> - Product creation has started; the product is not ready for use.</p> </li> <li> <p> <code>FAILED</code> - An action failed.</p> </li> </ul>
-- * ProductARN [ResourceARN] <p>The ARN of the product.</p>
-- * CreatedTime [CreatedTime] <p>The UTC time stamp of the creation time.</p>
-- @return ProductViewDetail structure as a key-value pair table
function M.ProductViewDetail(args)
	assert(args, "You must provide an argument table when creating ProductViewDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["Status"] = args["Status"],
		["ProductARN"] = args["ProductARN"],
		["CreatedTime"] = args["CreatedTime"],
	}
	asserts.AssertProductViewDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPrincipalsForPortfolioOutput = { ["NextPageToken"] = true, ["Principals"] = true, nil }

function asserts.AssertListPrincipalsForPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalsForPortfolioOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["Principals"] then asserts.AssertPrincipals(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalsForPortfolioOutput[k], "ListPrincipalsForPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalsForPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * Principals [Principals] <p>The IAM principals (users or roles) associated with the portfolio.</p>
-- @return ListPrincipalsForPortfolioOutput structure as a key-value pair table
function M.ListPrincipalsForPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating ListPrincipalsForPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Principals"] = args["Principals"],
	}
	asserts.AssertListPrincipalsForPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareDetails = { ["ShareErrors"] = true, ["SuccessfulShares"] = true, nil }

function asserts.AssertShareDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareDetails to be of type 'table'")
	if struct["ShareErrors"] then asserts.AssertShareErrors(struct["ShareErrors"]) end
	if struct["SuccessfulShares"] then asserts.AssertSuccessfulShares(struct["SuccessfulShares"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareDetails[k], "ShareDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareDetails
-- <p>Information about the portfolio share operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShareErrors [ShareErrors] <p>List of errors.</p>
-- * SuccessfulShares [SuccessfulShares] <p>List of accounts for whom the operation succeeded.</p>
-- @return ShareDetails structure as a key-value pair table
function M.ShareDetails(args)
	assert(args, "You must provide an argument table when creating ShareDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShareErrors"] = args["ShareErrors"],
		["SuccessfulShares"] = args["SuccessfulShares"],
	}
	asserts.AssertShareDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProvisionedProductOutput = { ["RecordDetail"] = true, nil }

function asserts.AssertUpdateProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisionedProductOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisionedProductOutput[k], "UpdateProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisionedProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>Information about the result of the request.</p>
-- @return UpdateProvisionedProductOutput structure as a key-value pair table
function M.UpdateProvisionedProductOutput(args)
	assert(args, "You must provide an argument table when creating UpdateProvisionedProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertUpdateProvisionedProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConstraintOutput = { ["Status"] = true, ["ConstraintParameters"] = true, ["ConstraintDetail"] = true, nil }

function asserts.AssertUpdateConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConstraintOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then asserts.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then asserts.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConstraintOutput[k], "UpdateConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConstraintOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>The status of the current request.</p>
-- * ConstraintParameters [ConstraintParameters] <p>The constraint parameters.</p>
-- * ConstraintDetail [ConstraintDetail] <p>Information about the constraint.</p>
-- @return UpdateConstraintOutput structure as a key-value pair table
function M.UpdateConstraintOutput(args)
	assert(args, "You must provide an argument table when creating UpdateConstraintOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertUpdateConstraintOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServiceActionInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceActionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceActionInput[k], "DescribeServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The self-service action identifier.</p>
-- Required key: Id
-- @return DescribeServiceActionInput structure as a key-value pair table
function M.DescribeServiceActionInput(args)
	assert(args, "You must provide an argument table when creating DescribeServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConstraintsForPortfolioInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PortfolioId"] = true, ["PageSize"] = true, ["ProductId"] = true, nil }

function asserts.AssertListConstraintsForPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConstraintsForPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConstraintsForPortfolioInput[k], "ListConstraintsForPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConstraintsForPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: PortfolioId
-- @return ListConstraintsForPortfolioInput structure as a key-value pair table
function M.ListConstraintsForPortfolioInput(args)
	assert(args, "You must provide an argument table when creating ListConstraintsForPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListConstraintsForPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRecordHistoryInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, ["SearchFilter"] = true, ["AccessLevelFilter"] = true, nil }

function asserts.AssertListRecordHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistoryInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["SearchFilter"] then asserts.AssertListRecordHistorySearchFilter(struct["SearchFilter"]) end
	if struct["AccessLevelFilter"] then asserts.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRecordHistoryInput[k], "ListRecordHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistoryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * SearchFilter [ListRecordHistorySearchFilter] <p>The search filter to scope the results.</p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level to use to obtain results. The default is <code>User</code>.</p>
-- @return ListRecordHistoryInput structure as a key-value pair table
function M.ListRecordHistoryInput(args)
	assert(args, "You must provide an argument table when creating ListRecordHistoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["SearchFilter"] = args["SearchFilter"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
	}
	asserts.AssertListRecordHistoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListLaunchPathsInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, ["ProductId"] = true, nil }

function asserts.AssertListLaunchPathsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLaunchPathsInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLaunchPathsInput[k], "ListLaunchPathsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLaunchPathsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- @return ListLaunchPathsInput structure as a key-value pair table
function M.ListLaunchPathsInput(args)
	assert(args, "You must provide an argument table when creating ListLaunchPathsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListLaunchPathsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductViewOutput = { ["ProductViewSummary"] = true, ["ProvisioningArtifacts"] = true, nil }

function asserts.AssertDescribeProductViewOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductViewOutput to be of type 'table'")
	if struct["ProductViewSummary"] then asserts.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["ProvisioningArtifacts"] then asserts.AssertProvisioningArtifacts(struct["ProvisioningArtifacts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductViewOutput[k], "DescribeProductViewOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductViewOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewSummary [ProductViewSummary] <p>Summary information about the product.</p>
-- * ProvisioningArtifacts [ProvisioningArtifacts] <p>Information about the provisioning artifacts for the product.</p>
-- @return DescribeProductViewOutput structure as a key-value pair table
function M.DescribeProductViewOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProductViewOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["ProvisioningArtifacts"] = args["ProvisioningArtifacts"],
	}
	asserts.AssertDescribeProductViewOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifactDetail = { ["Description"] = true, ["Active"] = true, ["CreatedTime"] = true, ["Type"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProvisioningArtifactDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactDetail to be of type 'table'")
	if struct["Description"] then asserts.AssertProvisioningArtifactName(struct["Description"]) end
	if struct["Active"] then asserts.AssertProvisioningArtifactActive(struct["Active"]) end
	if struct["CreatedTime"] then asserts.AssertCreationTime(struct["CreatedTime"]) end
	if struct["Type"] then asserts.AssertProvisioningArtifactType(struct["Type"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactDetail[k], "ProvisioningArtifactDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactDetail
-- <p>Information about a provisioning artifact (also known as a version) for a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [ProvisioningArtifactName] <p>The description of the provisioning artifact.</p>
-- * Active [ProvisioningArtifactActive] <p>Indicates whether the product version is active.</p>
-- * CreatedTime [CreationTime] <p>The UTC time stamp of the creation time.</p>
-- * Type [ProvisioningArtifactType] <p>The type of provisioning artifact.</p> <ul> <li> <p> <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p> </li> <li> <p> <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p> </li> <li> <p> <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p> </li> </ul>
-- * Id [Id] <p>The identifier of the provisioning artifact.</p>
-- * Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
-- @return ProvisioningArtifactDetail structure as a key-value pair table
function M.ProvisioningArtifactDetail(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifactDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Active"] = args["Active"],
		["CreatedTime"] = args["CreatedTime"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifactDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateTagOptionFromResourceInput = { ["ResourceId"] = true, ["TagOptionId"] = true, nil }

function asserts.AssertDisassociateTagOptionFromResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTagOptionFromResourceInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["TagOptionId"] then asserts.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateTagOptionFromResourceInput[k], "DisassociateTagOptionFromResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTagOptionFromResourceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>The resource identifier.</p>
-- * TagOptionId [TagOptionId] <p>The TagOption identifier.</p>
-- Required key: ResourceId
-- Required key: TagOptionId
-- @return DisassociateTagOptionFromResourceInput structure as a key-value pair table
function M.DisassociateTagOptionFromResourceInput(args)
	assert(args, "You must provide an argument table when creating DisassociateTagOptionFromResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertDisassociateTagOptionFromResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagOptionInput = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertCreateTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagOptionInput to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagOptionInput[k], "CreateTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagOptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagOptionValue] <p>The TagOption value.</p>
-- * Key [TagOptionKey] <p>The TagOption key.</p>
-- Required key: Key
-- Required key: Value
-- @return CreateTagOptionInput structure as a key-value pair table
function M.CreateTagOptionInput(args)
	assert(args, "You must provide an argument table when creating CreateTagOptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertCreateTagOptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProvisionedProductPlanInput = { ["PlanName"] = true, ["ProvisioningArtifactId"] = true, ["ProvisionedProductName"] = true, ["NotificationArns"] = true, ["PlanType"] = true, ["Tags"] = true, ["PathId"] = true, ["IdempotencyToken"] = true, ["ProvisioningParameters"] = true, ["AcceptLanguage"] = true, ["ProductId"] = true, nil }

function asserts.AssertCreateProvisionedProductPlanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisionedProductPlanInput to be of type 'table'")
	assert(struct["PlanName"], "Expected key PlanName to exist in table")
	assert(struct["PlanType"], "Expected key PlanType to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisionedProductName"], "Expected key ProvisionedProductName to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["PlanName"] then asserts.AssertProvisionedProductPlanName(struct["PlanName"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["NotificationArns"] then asserts.AssertNotificationArns(struct["NotificationArns"]) end
	if struct["PlanType"] then asserts.AssertProvisionedProductPlanType(struct["PlanType"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["ProvisioningParameters"] then asserts.AssertUpdateProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProvisionedProductPlanInput[k], "CreateProvisionedProductPlanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisionedProductPlanInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlanName [ProvisionedProductPlanName] <p>The name of the plan.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>
-- * NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- * PlanType [ProvisionedProductPlanType] <p>The plan type.</p>
-- * Tags [Tags] <p>One or more tags.</p>
-- * PathId [Id] <p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * ProvisioningParameters [UpdateProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: PlanName
-- Required key: PlanType
-- Required key: ProductId
-- Required key: ProvisionedProductName
-- Required key: ProvisioningArtifactId
-- Required key: IdempotencyToken
-- @return CreateProvisionedProductPlanInput structure as a key-value pair table
function M.CreateProvisionedProductPlanInput(args)
	assert(args, "You must provide an argument table when creating CreateProvisionedProductPlanInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlanName"] = args["PlanName"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["NotificationArns"] = args["NotificationArns"],
		["PlanType"] = args["PlanType"],
		["Tags"] = args["Tags"],
		["PathId"] = args["PathId"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["ProvisioningParameters"] = args["ProvisioningParameters"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertCreateProvisionedProductPlanInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisionedProductPlansOutput = { ["NextPageToken"] = true, ["ProvisionedProductPlans"] = true, nil }

function asserts.AssertListProvisionedProductPlansOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedProductPlansOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisionedProductPlans"] then asserts.AssertProvisionedProductPlans(struct["ProvisionedProductPlans"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisionedProductPlansOutput[k], "ListProvisionedProductPlansOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedProductPlansOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProvisionedProductPlans [ProvisionedProductPlans] <p>Information about the plans.</p>
-- @return ListProvisionedProductPlansOutput structure as a key-value pair table
function M.ListProvisionedProductPlansOutput(args)
	assert(args, "You must provide an argument table when creating ListProvisionedProductPlansOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProvisionedProductPlans"] = args["ProvisionedProductPlans"],
	}
	asserts.AssertListProvisionedProductPlansOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParameterConstraints = { ["AllowedValues"] = true, nil }

function asserts.AssertParameterConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterConstraints to be of type 'table'")
	if struct["AllowedValues"] then asserts.AssertAllowedValues(struct["AllowedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterConstraints[k], "ParameterConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterConstraints
-- <p>The constraints that the administrator has put on the parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowedValues [AllowedValues] <p>The values that the administrator has allowed for the parameter.</p>
-- @return ParameterConstraints structure as a key-value pair table
function M.ParameterConstraints(args)
	assert(args, "You must provide an argument table when creating ParameterConstraints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowedValues"] = args["AllowedValues"],
	}
	asserts.AssertParameterConstraints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCopyProductStatusInput = { ["AcceptLanguage"] = true, ["CopyProductToken"] = true, nil }

function asserts.AssertDescribeCopyProductStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCopyProductStatusInput to be of type 'table'")
	assert(struct["CopyProductToken"], "Expected key CopyProductToken to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["CopyProductToken"] then asserts.AssertId(struct["CopyProductToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCopyProductStatusInput[k], "DescribeCopyProductStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCopyProductStatusInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * CopyProductToken [Id] <p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>
-- Required key: CopyProductToken
-- @return DescribeCopyProductStatusInput structure as a key-value pair table
function M.DescribeCopyProductStatusInput(args)
	assert(args, "You must provide an argument table when creating DescribeCopyProductStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["CopyProductToken"] = args["CopyProductToken"],
	}
	asserts.AssertDescribeCopyProductStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfoliosInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, nil }

function asserts.AssertListPortfoliosInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfoliosInput[k], "ListPortfoliosInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- @return ListPortfoliosInput structure as a key-value pair table
function M.ListPortfoliosInput(args)
	assert(args, "You must provide an argument table when creating ListPortfoliosInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListPortfoliosInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisioningParametersOutput = { ["TagOptions"] = true, ["ProvisioningArtifactParameters"] = true, ["ConstraintSummaries"] = true, ["UsageInstructions"] = true, nil }

function asserts.AssertDescribeProvisioningParametersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningParametersOutput to be of type 'table'")
	if struct["TagOptions"] then asserts.AssertTagOptionSummaries(struct["TagOptions"]) end
	if struct["ProvisioningArtifactParameters"] then asserts.AssertProvisioningArtifactParameters(struct["ProvisioningArtifactParameters"]) end
	if struct["ConstraintSummaries"] then asserts.AssertConstraintSummaries(struct["ConstraintSummaries"]) end
	if struct["UsageInstructions"] then asserts.AssertUsageInstructions(struct["UsageInstructions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisioningParametersOutput[k], "DescribeProvisioningParametersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningParametersOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagOptions [TagOptionSummaries] <p>Information about the TagOptions associated with the resource.</p>
-- * ProvisioningArtifactParameters [ProvisioningArtifactParameters] <p>Information about the parameters used to provision the product.</p>
-- * ConstraintSummaries [ConstraintSummaries] <p>Information about the constraints used to provision the product.</p>
-- * UsageInstructions [UsageInstructions] <p>Any additional metadata specifically related to the provisioning of the product. For example, see the <code>Version</code> field of the CloudFormation template.</p>
-- @return DescribeProvisioningParametersOutput structure as a key-value pair table
function M.DescribeProvisioningParametersOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisioningParametersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagOptions"] = args["TagOptions"],
		["ProvisioningArtifactParameters"] = args["ProvisioningArtifactParameters"],
		["ConstraintSummaries"] = args["ConstraintSummaries"],
		["UsageInstructions"] = args["UsageInstructions"],
	}
	asserts.AssertDescribeProvisioningParametersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProductsInput = { ["PageSize"] = true, ["PageToken"] = true, ["SortOrder"] = true, ["Filters"] = true, ["AcceptLanguage"] = true, ["SortBy"] = true, nil }

function asserts.AssertSearchProductsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsInput to be of type 'table'")
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["Filters"] then asserts.AssertProductViewFilters(struct["Filters"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SortBy"] then asserts.AssertProductViewSortBy(struct["SortBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProductsInput[k], "SearchProductsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * SortOrder [SortOrder] <p>The sort order. If no value is specified, the results are not sorted.</p>
-- * Filters [ProductViewFilters] <p>The search filters. If no search filters are specified, the output includes all products to which the caller has access.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * SortBy [ProductViewSortBy] <p>The sort field. If no value is specified, the results are not sorted.</p>
-- @return SearchProductsInput structure as a key-value pair table
function M.SearchProductsInput(args)
	assert(args, "You must provide an argument table when creating SearchProductsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
		["SortOrder"] = args["SortOrder"],
		["Filters"] = args["Filters"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SortBy"] = args["SortBy"],
	}
	asserts.AssertSearchProductsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServiceActionsInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, nil }

function asserts.AssertListServiceActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceActionsInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceActionsInput[k], "ListServiceActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceActionsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- @return ListServiceActionsInput structure as a key-value pair table
function M.ListServiceActionsInput(args)
	assert(args, "You must provide an argument table when creating ListServiceActionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListServiceActionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfoliosForProductOutput = { ["NextPageToken"] = true, ["PortfolioDetails"] = true, nil }

function asserts.AssertListPortfoliosForProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosForProductOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then asserts.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfoliosForProductOutput[k], "ListPortfoliosForProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosForProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>Information about the portfolios.</p>
-- @return ListPortfoliosForProductOutput structure as a key-value pair table
function M.ListPortfoliosForProductOutput(args)
	assert(args, "You must provide an argument table when creating ListPortfoliosForProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListPortfoliosForProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateServiceActionFromProvisioningArtifactInput = { ["ProvisioningArtifactId"] = true, ["AcceptLanguage"] = true, ["ServiceActionId"] = true, ["ProductId"] = true, nil }

function asserts.AssertDisassociateServiceActionFromProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceActionFromProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ServiceActionId"], "Expected key ServiceActionId to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateServiceActionFromProvisioningArtifactInput[k], "DisassociateServiceActionFromProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceActionFromProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- Required key: ServiceActionId
-- @return DisassociateServiceActionFromProvisioningArtifactInput structure as a key-value pair table
function M.DisassociateServiceActionFromProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating DisassociateServiceActionFromProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ServiceActionId"] = args["ServiceActionId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDisassociateServiceActionFromProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag. A tag is a key-value pair. Tags are propagated to the resources created when provisioning a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value for this key.</p>
-- * Key [TagKey] <p>The tag key.</p>
-- Required key: Key
-- Required key: Value
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCopyProductStatusOutput = { ["TargetProductId"] = true, ["CopyProductStatus"] = true, ["StatusDetail"] = true, nil }

function asserts.AssertDescribeCopyProductStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCopyProductStatusOutput to be of type 'table'")
	if struct["TargetProductId"] then asserts.AssertId(struct["TargetProductId"]) end
	if struct["CopyProductStatus"] then asserts.AssertCopyProductStatus(struct["CopyProductStatus"]) end
	if struct["StatusDetail"] then asserts.AssertStatusDetail(struct["StatusDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCopyProductStatusOutput[k], "DescribeCopyProductStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCopyProductStatusOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetProductId [Id] <p>The identifier of the copied product.</p>
-- * CopyProductStatus [CopyProductStatus] <p>The status of the copy product operation.</p>
-- * StatusDetail [StatusDetail] <p>The status message.</p>
-- @return DescribeCopyProductStatusOutput structure as a key-value pair table
function M.DescribeCopyProductStatusOutput(args)
	assert(args, "You must provide an argument table when creating DescribeCopyProductStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetProductId"] = args["TargetProductId"],
		["CopyProductStatus"] = args["CopyProductStatus"],
		["StatusDetail"] = args["StatusDetail"],
	}
	asserts.AssertDescribeCopyProductStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisionedProductPlansInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["ProvisionProductId"] = true, ["PageSize"] = true, ["AccessLevelFilter"] = true, nil }

function asserts.AssertListProvisionedProductPlansInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedProductPlansInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["ProvisionProductId"] then asserts.AssertId(struct["ProvisionProductId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["AccessLevelFilter"] then asserts.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisionedProductPlansInput[k], "ListProvisionedProductPlansInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedProductPlansInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * ProvisionProductId [Id] <p>The product identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level to use to obtain results. The default is <code>User</code>.</p>
-- @return ListProvisionedProductPlansInput structure as a key-value pair table
function M.ListProvisionedProductPlansInput(args)
	assert(args, "You must provide an argument table when creating ListProvisionedProductPlansInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["ProvisionProductId"] = args["ProvisionProductId"],
		["PageSize"] = args["PageSize"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
	}
	asserts.AssertListProvisionedProductPlansInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifactSummary = { ["CreatedTime"] = true, ["Description"] = true, ["ProvisioningArtifactMetadata"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProvisioningArtifactSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactSummary to be of type 'table'")
	if struct["CreatedTime"] then asserts.AssertProvisioningArtifactCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["ProvisioningArtifactMetadata"] then asserts.AssertProvisioningArtifactInfo(struct["ProvisioningArtifactMetadata"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactSummary[k], "ProvisioningArtifactSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactSummary
-- <p>Summary information about a provisioning artifact (also known as a version) for a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact.</p>
-- * ProvisioningArtifactMetadata [ProvisioningArtifactInfo] <p>The metadata for the provisioning artifact. This is used with AWS Marketplace products.</p>
-- * Id [Id] <p>The identifier of the provisioning artifact.</p>
-- * Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
-- @return ProvisioningArtifactSummary structure as a key-value pair table
function M.ProvisioningArtifactSummary(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifactSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["ProvisioningArtifactMetadata"] = args["ProvisioningArtifactMetadata"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifactSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProvisionedProductsInput = { ["PageSize"] = true, ["PageToken"] = true, ["SortOrder"] = true, ["Filters"] = true, ["AccessLevelFilter"] = true, ["AcceptLanguage"] = true, ["SortBy"] = true, nil }

function asserts.AssertSearchProvisionedProductsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProvisionedProductsInput to be of type 'table'")
	if struct["PageSize"] then asserts.AssertSearchProvisionedProductsPageSize(struct["PageSize"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["Filters"] then asserts.AssertProvisionedProductFilters(struct["Filters"]) end
	if struct["AccessLevelFilter"] then asserts.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SortBy"] then asserts.AssertSortField(struct["SortBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProvisionedProductsInput[k], "SearchProvisionedProductsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProvisionedProductsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageSize [SearchProvisionedProductsPageSize] <p>The maximum number of items to return with this call.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * SortOrder [SortOrder] <p>The sort order. If no value is specified, the results are not sorted.</p>
-- * Filters [ProvisionedProductFilters] <p>The search filters.</p> <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>, <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, <code>provisioningArtifact</code>, <code>type</code>, <code>status</code>, <code>tags</code>, <code>userArn</code>, and <code>userArnSession</code>.</p> <p>Example: <code>"SearchQuery":["status:AVAILABLE"]</code> </p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level to use to obtain results. The default is <code>User</code>.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * SortBy [SortField] <p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, and <code>lastRecordId</code>.</p>
-- @return SearchProvisionedProductsInput structure as a key-value pair table
function M.SearchProvisionedProductsInput(args)
	assert(args, "You must provide an argument table when creating SearchProvisionedProductsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
		["SortOrder"] = args["SortOrder"],
		["Filters"] = args["Filters"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SortBy"] = args["SortBy"],
	}
	asserts.AssertSearchProvisionedProductsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductViewInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeProductViewInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductViewInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductViewInput[k], "DescribeProductViewInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductViewInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The product view identifier.</p>
-- Required key: Id
-- @return DescribeProductViewInput structure as a key-value pair table
function M.DescribeProductViewInput(args)
	assert(args, "You must provide an argument table when creating DescribeProductViewInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductViewInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateProductWithPortfolioOutput = { nil }

function asserts.AssertAssociateProductWithPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateProductWithPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateProductWithPortfolioOutput[k], "AssociateProductWithPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateProductWithPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateProductWithPortfolioOutput structure as a key-value pair table
function M.AssociateProductWithPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating AssociateProductWithPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateProductWithPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableAWSOrganizationsAccessInput = { nil }

function asserts.AssertDisableAWSOrganizationsAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableAWSOrganizationsAccessInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableAWSOrganizationsAccessInput[k], "DisableAWSOrganizationsAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableAWSOrganizationsAccessInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableAWSOrganizationsAccessInput structure as a key-value pair table
function M.DisableAWSOrganizationsAccessInput(args)
	assert(args, "You must provide an argument table when creating DisableAWSOrganizationsAccessInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableAWSOrganizationsAccessInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareError = { ["Message"] = true, ["Accounts"] = true, ["Error"] = true, nil }

function asserts.AssertShareError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareError to be of type 'table'")
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["Accounts"] then asserts.AssertNamespaces(struct["Accounts"]) end
	if struct["Error"] then asserts.AssertError(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareError[k], "ShareError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareError
-- <p>Errors that occurred during the portfolio share operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [Message] <p>Information about the error.</p>
-- * Accounts [Namespaces] <p>List of accounts impacted by the error.</p>
-- * Error [Error] <p>Error type that happened when processing the operation.</p>
-- @return ShareError structure as a key-value pair table
function M.ShareError(args)
	assert(args, "You must provide an argument table when creating ShareError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Accounts"] = args["Accounts"],
		["Error"] = args["Error"],
	}
	asserts.AssertShareError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PortfolioDetail = { ["DisplayName"] = true, ["Description"] = true, ["ProviderName"] = true, ["CreatedTime"] = true, ["Id"] = true, ["ARN"] = true, nil }

function asserts.AssertPortfolioDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortfolioDetail to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["Description"] then asserts.AssertPortfolioDescription(struct["Description"]) end
	if struct["ProviderName"] then asserts.AssertProviderName(struct["ProviderName"]) end
	if struct["CreatedTime"] then asserts.AssertCreationTime(struct["CreatedTime"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["ARN"] then asserts.AssertResourceARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PortfolioDetail[k], "PortfolioDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortfolioDetail
-- <p>Information about a portfolio.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- * Description [PortfolioDescription] <p>The description of the portfolio.</p>
-- * ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- * CreatedTime [CreationTime] <p>The UTC time stamp of the creation time.</p>
-- * Id [Id] <p>The portfolio identifier.</p>
-- * ARN [ResourceARN] <p>The ARN assigned to the portfolio.</p>
-- @return PortfolioDetail structure as a key-value pair table
function M.PortfolioDetail(args)
	assert(args, "You must provide an argument table when creating PortfolioDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["ProviderName"] = args["ProviderName"],
		["CreatedTime"] = args["CreatedTime"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertPortfolioDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProvisioningArtifactOutput = { nil }

function asserts.AssertDeleteProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisioningArtifactOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProvisioningArtifactOutput[k], "DeleteProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProvisioningArtifactOutput structure as a key-value pair table
function M.DeleteProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating DeleteProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisioningArtifactsInput = { ["AcceptLanguage"] = true, ["ProductId"] = true, nil }

function asserts.AssertListProvisioningArtifactsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisioningArtifactsInput[k], "ListProvisioningArtifactsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- @return ListProvisioningArtifactsInput structure as a key-value pair table
function M.ListProvisioningArtifactsInput(args)
	assert(args, "You must provide an argument table when creating ListProvisioningArtifactsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListProvisioningArtifactsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisioningParametersInput = { ["AcceptLanguage"] = true, ["ProvisioningArtifactId"] = true, ["PathId"] = true, ["ProductId"] = true, nil }

function asserts.AssertDescribeProvisioningParametersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningParametersInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisioningParametersInput[k], "DescribeProvisioningParametersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningParametersInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * PathId [Id] <p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return DescribeProvisioningParametersInput structure as a key-value pair table
function M.DescribeProvisioningParametersInput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisioningParametersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["PathId"] = args["PathId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDescribeProvisioningParametersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProductInput = { ["RemoveTags"] = true, ["SupportEmail"] = true, ["Description"] = true, ["SupportUrl"] = true, ["Owner"] = true, ["AddTags"] = true, ["AcceptLanguage"] = true, ["Distributor"] = true, ["SupportDescription"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["RemoveTags"] then asserts.AssertTagKeys(struct["RemoveTags"]) end
	if struct["SupportEmail"] then asserts.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Description"] then asserts.AssertProductViewShortDescription(struct["Description"]) end
	if struct["SupportUrl"] then asserts.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Owner"] then asserts.AssertProductViewOwner(struct["Owner"]) end
	if struct["AddTags"] then asserts.AssertAddTags(struct["AddTags"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Distributor"] then asserts.AssertProductViewOwner(struct["Distributor"]) end
	if struct["SupportDescription"] then asserts.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProductViewName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProductInput[k], "UpdateProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoveTags [TagKeys] <p>The tags to remove from the product.</p>
-- * SupportEmail [SupportEmail] <p>The updated support email for the product.</p>
-- * Description [ProductViewShortDescription] <p>The updated description of the product.</p>
-- * SupportUrl [SupportUrl] <p>The updated support URL for the product.</p>
-- * Owner [ProductViewOwner] <p>The updated owner of the product.</p>
-- * AddTags [AddTags] <p>The tags to add to the product.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Distributor [ProductViewOwner] <p>The updated distributor of the product.</p>
-- * SupportDescription [SupportDescription] <p>The updated support description for the product.</p>
-- * Id [Id] <p>The product identifier.</p>
-- * Name [ProductViewName] <p>The updated product name.</p>
-- Required key: Id
-- @return UpdateProductInput structure as a key-value pair table
function M.UpdateProductInput(args)
	assert(args, "You must provide an argument table when creating UpdateProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoveTags"] = args["RemoveTags"],
		["SupportEmail"] = args["SupportEmail"],
		["Description"] = args["Description"],
		["SupportUrl"] = args["SupportUrl"],
		["Owner"] = args["Owner"],
		["AddTags"] = args["AddTags"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Distributor"] = args["Distributor"],
		["SupportDescription"] = args["SupportDescription"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordError = { ["Code"] = true, ["Description"] = true, nil }

function asserts.AssertRecordError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordError to be of type 'table'")
	if struct["Code"] then asserts.AssertErrorCode(struct["Code"]) end
	if struct["Description"] then asserts.AssertErrorDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordError[k], "RecordError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordError
-- <p>The error code and description resulting from an operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [ErrorCode] <p>The numeric value of the error.</p>
-- * Description [ErrorDescription] <p>The description of the error.</p>
-- @return RecordError structure as a key-value pair table
function M.RecordError(args)
	assert(args, "You must provide an argument table when creating RecordError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["Description"] = args["Description"],
	}
	asserts.AssertRecordError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceActionInput = { ["AcceptLanguage"] = true, ["Definition"] = true, ["Description"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceActionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Definition"] then asserts.AssertServiceActionDefinitionMap(struct["Definition"]) end
	if struct["Description"] then asserts.AssertServiceActionDescription(struct["Description"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertServiceActionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceActionInput[k], "UpdateServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Definition [ServiceActionDefinitionMap] <p>A map that defines the self-service action.</p>
-- * Description [ServiceActionDescription] <p>The self-service action description.</p>
-- * Id [Id] <p>The self-service action identifier.</p>
-- * Name [ServiceActionName] <p>The self-service action name.</p>
-- Required key: Id
-- @return UpdateServiceActionInput structure as a key-value pair table
function M.UpdateServiceActionInput(args)
	assert(args, "You must provide an argument table when creating UpdateServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Definition"] = args["Definition"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecuteProvisionedProductServiceActionInput = { ["ExecuteToken"] = true, ["AcceptLanguage"] = true, ["ServiceActionId"] = true, ["ProvisionedProductId"] = true, nil }

function asserts.AssertExecuteProvisionedProductServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteProvisionedProductServiceActionInput to be of type 'table'")
	assert(struct["ProvisionedProductId"], "Expected key ProvisionedProductId to exist in table")
	assert(struct["ServiceActionId"], "Expected key ServiceActionId to exist in table")
	assert(struct["ExecuteToken"], "Expected key ExecuteToken to exist in table")
	if struct["ExecuteToken"] then asserts.AssertIdempotencyToken(struct["ExecuteToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["ProvisionedProductId"] then asserts.AssertId(struct["ProvisionedProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecuteProvisionedProductServiceActionInput[k], "ExecuteProvisionedProductServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteProvisionedProductServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExecuteToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the execute request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the provisioned product.</p>
-- Required key: ProvisionedProductId
-- Required key: ServiceActionId
-- Required key: ExecuteToken
-- @return ExecuteProvisionedProductServiceActionInput structure as a key-value pair table
function M.ExecuteProvisionedProductServiceActionInput(args)
	assert(args, "You must provide an argument table when creating ExecuteProvisionedProductServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExecuteToken"] = args["ExecuteToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ServiceActionId"] = args["ServiceActionId"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
	}
	asserts.AssertExecuteProvisionedProductServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceActionOutput = { nil }

function asserts.AssertDeleteServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceActionOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceActionOutput[k], "DeleteServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteServiceActionOutput structure as a key-value pair table
function M.DeleteServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating DeleteServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAWSOrganizationsAccessOutput = { nil }

function asserts.AssertEnableAWSOrganizationsAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAWSOrganizationsAccessOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableAWSOrganizationsAccessOutput[k], "EnableAWSOrganizationsAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAWSOrganizationsAccessOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableAWSOrganizationsAccessOutput structure as a key-value pair table
function M.EnableAWSOrganizationsAccessOutput(args)
	assert(args, "You must provide an argument table when creating EnableAWSOrganizationsAccessOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableAWSOrganizationsAccessOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProvisionedProductPlanOutput = { nil }

function asserts.AssertDeleteProvisionedProductPlanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisionedProductPlanOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProvisionedProductPlanOutput[k], "DeleteProvisionedProductPlanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisionedProductPlanOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProvisionedProductPlanOutput structure as a key-value pair table
function M.DeleteProvisionedProductPlanOutput(args)
	assert(args, "You must provide an argument table when creating DeleteProvisionedProductPlanOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProvisionedProductPlanOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptPortfolioShareOutput = { nil }

function asserts.AssertAcceptPortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptPortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AcceptPortfolioShareOutput[k], "AcceptPortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptPortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AcceptPortfolioShareOutput structure as a key-value pair table
function M.AcceptPortfolioShareOutput(args)
	assert(args, "You must provide an argument table when creating AcceptPortfolioShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAcceptPortfolioShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifactParameter = { ["ParameterType"] = true, ["ParameterConstraints"] = true, ["Description"] = true, ["DefaultValue"] = true, ["IsNoEcho"] = true, ["ParameterKey"] = true, nil }

function asserts.AssertProvisioningArtifactParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactParameter to be of type 'table'")
	if struct["ParameterType"] then asserts.AssertParameterType(struct["ParameterType"]) end
	if struct["ParameterConstraints"] then asserts.AssertParameterConstraints(struct["ParameterConstraints"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["DefaultValue"] then asserts.AssertDefaultValue(struct["DefaultValue"]) end
	if struct["IsNoEcho"] then asserts.AssertNoEcho(struct["IsNoEcho"]) end
	if struct["ParameterKey"] then asserts.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactParameter[k], "ProvisioningArtifactParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactParameter
-- <p>Information about a parameter used to provision a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterType [ParameterType] <p>The parameter type.</p>
-- * ParameterConstraints [ParameterConstraints] <p>Constraints that the administrator has put on a parameter.</p>
-- * Description [Description] <p>The description of the parameter.</p>
-- * DefaultValue [DefaultValue] <p>The default value.</p>
-- * IsNoEcho [NoEcho] <p>If this value is true, the value for this parameter is obfuscated from view when the parameter is retrieved. This parameter is used to hide sensitive information.</p>
-- * ParameterKey [ParameterKey] <p>The parameter key.</p>
-- @return ProvisioningArtifactParameter structure as a key-value pair table
function M.ProvisioningArtifactParameter(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifactParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterType"] = args["ParameterType"],
		["ParameterConstraints"] = args["ParameterConstraints"],
		["Description"] = args["Description"],
		["DefaultValue"] = args["DefaultValue"],
		["IsNoEcho"] = args["IsNoEcho"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertProvisioningArtifactParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProvisioningParameter = { ["Value"] = true, ["Key"] = true, ["UsePreviousValue"] = true, nil }

function asserts.AssertUpdateProvisioningParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningParameter to be of type 'table'")
	if struct["Value"] then asserts.AssertParameterValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertParameterKey(struct["Key"]) end
	if struct["UsePreviousValue"] then asserts.AssertUsePreviousValue(struct["UsePreviousValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisioningParameter[k], "UpdateProvisioningParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningParameter
-- <p>The parameter key-value pair used to update a provisioned product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [ParameterValue] <p>The parameter value.</p>
-- * Key [ParameterKey] <p>The parameter key.</p>
-- * UsePreviousValue [UsePreviousValue] <p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>
-- @return UpdateProvisioningParameter structure as a key-value pair table
function M.UpdateProvisioningParameter(args)
	assert(args, "You must provide an argument table when creating UpdateProvisioningParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["UsePreviousValue"] = args["UsePreviousValue"],
	}
	asserts.AssertUpdateProvisioningParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScanProvisionedProductsInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, ["AccessLevelFilter"] = true, nil }

function asserts.AssertScanProvisionedProductsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanProvisionedProductsInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["AccessLevelFilter"] then asserts.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScanProvisionedProductsInput[k], "ScanProvisionedProductsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanProvisionedProductsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level to use to obtain results. The default is <code>User</code>.</p>
-- @return ScanProvisionedProductsInput structure as a key-value pair table
function M.ScanProvisionedProductsInput(args)
	assert(args, "You must provide an argument table when creating ScanProvisionedProductsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
	}
	asserts.AssertScanProvisionedProductsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifactProperties = { ["Info"] = true, ["Type"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertProvisioningArtifactProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactProperties to be of type 'table'")
	assert(struct["Info"], "Expected key Info to exist in table")
	if struct["Info"] then asserts.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Type"] then asserts.AssertProvisioningArtifactType(struct["Type"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactProperties[k], "ProvisioningArtifactProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactProperties
-- <p>Information about a provisioning artifact (also known as a version) for a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Info [ProvisioningArtifactInfo] <p>The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows:</p> <p> <code>"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."</code> </p>
-- * Type [ProvisioningArtifactType] <p>The type of provisioning artifact.</p> <ul> <li> <p> <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p> </li> <li> <p> <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p> </li> <li> <p> <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p> </li> </ul>
-- * Name [ProvisioningArtifactName] <p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>
-- * Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>
-- Required key: Info
-- @return ProvisioningArtifactProperties structure as a key-value pair table
function M.ProvisioningArtifactProperties(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifactProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Info"] = args["Info"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertProvisioningArtifactProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConstraintInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConstraintInput[k], "DeleteConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConstraintInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The identifier of the constraint.</p>
-- Required key: Id
-- @return DeleteConstraintInput structure as a key-value pair table
function M.DeleteConstraintInput(args)
	assert(args, "You must provide an argument table when creating DeleteConstraintInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteConstraintInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationNode = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertOrganizationNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationNode to be of type 'table'")
	if struct["Type"] then asserts.AssertOrganizationNodeType(struct["Type"]) end
	if struct["Value"] then asserts.AssertOrganizationNodeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationNode[k], "OrganizationNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationNode
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [OrganizationNodeType] <p/>
-- * Value [OrganizationNodeValue] <p/>
-- @return OrganizationNode structure as a key-value pair table
function M.OrganizationNode(args)
	assert(args, "You must provide an argument table when creating OrganizationNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertOrganizationNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceActionAssociation = { ["ProvisioningArtifactId"] = true, ["ServiceActionId"] = true, ["ProductId"] = true, nil }

function asserts.AssertServiceActionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceActionAssociation to be of type 'table'")
	assert(struct["ServiceActionId"], "Expected key ServiceActionId to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceActionAssociation[k], "ServiceActionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceActionAssociation
-- <p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- Required key: ServiceActionId
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return ServiceActionAssociation structure as a key-value pair table
function M.ServiceActionAssociation(args)
	assert(args, "You must provide an argument table when creating ServiceActionAssociation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ServiceActionId"] = args["ServiceActionId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertServiceActionAssociation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedProductAttribute = { ["Status"] = true, ["ProvisioningArtifactId"] = true, ["Name"] = true, ["Tags"] = true, ["UserArnSession"] = true, ["PhysicalId"] = true, ["LastRecordId"] = true, ["UserArn"] = true, ["IdempotencyToken"] = true, ["Arn"] = true, ["CreatedTime"] = true, ["Type"] = true, ["Id"] = true, ["StatusMessage"] = true, ["ProductId"] = true, nil }

function asserts.AssertProvisionedProductAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductAttribute to be of type 'table'")
	if struct["Status"] then asserts.AssertProvisionedProductStatus(struct["Status"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Name"] then asserts.AssertProvisionedProductNameOrArn(struct["Name"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["UserArnSession"] then asserts.AssertUserArnSession(struct["UserArnSession"]) end
	if struct["PhysicalId"] then asserts.AssertPhysicalId(struct["PhysicalId"]) end
	if struct["LastRecordId"] then asserts.AssertId(struct["LastRecordId"]) end
	if struct["UserArn"] then asserts.AssertUserArn(struct["UserArn"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Arn"] then asserts.AssertProvisionedProductNameOrArn(struct["Arn"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Type"] then asserts.AssertProvisionedProductType(struct["Type"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["StatusMessage"] then asserts.AssertProvisionedProductStatusMessage(struct["StatusMessage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedProductAttribute[k], "ProvisionedProductAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductAttribute
-- <p>Information about a provisioned product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ProvisionedProductStatus] <p>The current status of the provisioned product.</p> <ul> <li> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent operation succeeded and completed.</p> </li> <li> <p> <code>UNDER_CHANGE</code> - Transitive state, operations performed might not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> <li> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.</p> </li> <li> <p> <code>ERROR</code> - An unexpected error occurred, the provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * Name [ProvisionedProductNameOrArn] <p>The user-friendly name of the provisioned product.</p>
-- * Tags [Tags] <p>One or more tags.</p>
-- * UserArnSession [UserArnSession] <p>The ARN of the IAM user in the session. This ARN might contain a session ID.</p>
-- * PhysicalId [PhysicalId] <p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>
-- * LastRecordId [Id] <p>The record identifier of the last request performed on this provisioned product.</p>
-- * UserArn [UserArn] <p>The Amazon Resource Name (ARN) of the IAM user.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * Arn [ProvisionedProductNameOrArn] <p>The ARN of the provisioned product.</p>
-- * CreatedTime [CreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * Type [ProvisionedProductType] <p>The type of provisioned product. The supported value is <code>CFN_STACK</code>.</p>
-- * Id [Id] <p>The identifier of the provisioned product.</p>
-- * StatusMessage [ProvisionedProductStatusMessage] <p>The current status message of the provisioned product.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- @return ProvisionedProductAttribute structure as a key-value pair table
function M.ProvisionedProductAttribute(args)
	assert(args, "You must provide an argument table when creating ProvisionedProductAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Name"] = args["Name"],
		["Tags"] = args["Tags"],
		["UserArnSession"] = args["UserArnSession"],
		["PhysicalId"] = args["PhysicalId"],
		["LastRecordId"] = args["LastRecordId"],
		["UserArn"] = args["UserArn"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["Arn"] = args["Arn"],
		["CreatedTime"] = args["CreatedTime"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["StatusMessage"] = args["StatusMessage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertProvisionedProductAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Principal = { ["PrincipalType"] = true, ["PrincipalARN"] = true, nil }

function asserts.AssertPrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Principal to be of type 'table'")
	if struct["PrincipalType"] then asserts.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalARN"] then asserts.AssertPrincipalARN(struct["PrincipalARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Principal[k], "Principal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Principal
-- <p>Information about a principal.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrincipalType [PrincipalType] <p>The principal type. The supported value is <code>IAM</code>.</p>
-- * PrincipalARN [PrincipalARN] <p>The ARN of the principal (IAM user, role, or group).</p>
-- @return Principal structure as a key-value pair table
function M.Principal(args)
	assert(args, "You must provide an argument table when creating Principal")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PrincipalType"] = args["PrincipalType"],
		["PrincipalARN"] = args["PrincipalARN"],
	}
	asserts.AssertPrincipal(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifactView = { ["ProductViewSummary"] = true, ["ProvisioningArtifact"] = true, nil }

function asserts.AssertProvisioningArtifactView(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactView to be of type 'table'")
	if struct["ProductViewSummary"] then asserts.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["ProvisioningArtifact"] then asserts.AssertProvisioningArtifact(struct["ProvisioningArtifact"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactView[k], "ProvisioningArtifactView contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactView
-- <p>An object that contains summary information about a product view and a provisioning artifact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewSummary [ProductViewSummary] <p>Summary information about a product view.</p>
-- * ProvisioningArtifact [ProvisioningArtifact] <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
-- @return ProvisioningArtifactView structure as a key-value pair table
function M.ProvisioningArtifactView(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifactView")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["ProvisioningArtifact"] = args["ProvisioningArtifact"],
	}
	asserts.AssertProvisioningArtifactView(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagOptionOutput = { ["TagOptionDetail"] = true, nil }

function asserts.AssertDescribeTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then asserts.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagOptionOutput[k], "DescribeTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagOptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagOptionDetail [TagOptionDetail] <p>Information about the TagOption.</p>
-- @return DescribeTagOptionOutput structure as a key-value pair table
function M.DescribeTagOptionOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTagOptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertDescribeTagOptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectPortfolioShareOutput = { nil }

function asserts.AssertRejectPortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectPortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RejectPortfolioShareOutput[k], "RejectPortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectPortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RejectPortfolioShareOutput structure as a key-value pair table
function M.RejectPortfolioShareOutput(args)
	assert(args, "You must provide an argument table when creating RejectPortfolioShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRejectPortfolioShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyProductInput = { ["CopyOptions"] = true, ["TargetProductId"] = true, ["SourceProductArn"] = true, ["IdempotencyToken"] = true, ["TargetProductName"] = true, ["AcceptLanguage"] = true, ["SourceProvisioningArtifactIdentifiers"] = true, nil }

function asserts.AssertCopyProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyProductInput to be of type 'table'")
	assert(struct["SourceProductArn"], "Expected key SourceProductArn to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["CopyOptions"] then asserts.AssertCopyOptions(struct["CopyOptions"]) end
	if struct["TargetProductId"] then asserts.AssertId(struct["TargetProductId"]) end
	if struct["SourceProductArn"] then asserts.AssertProductArn(struct["SourceProductArn"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["TargetProductName"] then asserts.AssertProductViewName(struct["TargetProductName"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SourceProvisioningArtifactIdentifiers"] then asserts.AssertSourceProvisioningArtifactProperties(struct["SourceProvisioningArtifactIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyProductInput[k], "CopyProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyOptions [CopyOptions] <p>The copy options. If the value is <code>CopyTags</code>, the tags from the source product are copied to the target product.</p>
-- * TargetProductId [Id] <p>The identifier of the target product. By default, a new product is created.</p>
-- * SourceProductArn [ProductArn] <p>The Amazon Resource Name (ARN) of the source product.</p>
-- * IdempotencyToken [IdempotencyToken] <p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request. </p>
-- * TargetProductName [ProductViewName] <p>A name for the target product. The default is the name of the source product.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * SourceProvisioningArtifactIdentifiers [SourceProvisioningArtifactProperties] <p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.</p>
-- Required key: SourceProductArn
-- Required key: IdempotencyToken
-- @return CopyProductInput structure as a key-value pair table
function M.CopyProductInput(args)
	assert(args, "You must provide an argument table when creating CopyProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyOptions"] = args["CopyOptions"],
		["TargetProductId"] = args["TargetProductId"],
		["SourceProductArn"] = args["SourceProductArn"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["TargetProductName"] = args["TargetProductName"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SourceProvisioningArtifactIdentifiers"] = args["SourceProvisioningArtifactIdentifiers"],
	}
	asserts.AssertCopyProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConstraintDetail = { ["Owner"] = true, ["ConstraintId"] = true, ["Type"] = true, ["Description"] = true, nil }

function asserts.AssertConstraintDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintDetail to be of type 'table'")
	if struct["Owner"] then asserts.AssertAccountId(struct["Owner"]) end
	if struct["ConstraintId"] then asserts.AssertId(struct["ConstraintId"]) end
	if struct["Type"] then asserts.AssertConstraintType(struct["Type"]) end
	if struct["Description"] then asserts.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConstraintDetail[k], "ConstraintDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintDetail
-- <p>Information about a constraint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [AccountId] <p>The owner of the constraint.</p>
-- * ConstraintId [Id] <p>The identifier of the constraint.</p>
-- * Type [ConstraintType] <p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>
-- * Description [ConstraintDescription] <p>The description of the constraint.</p>
-- @return ConstraintDetail structure as a key-value pair table
function M.ConstraintDetail(args)
	assert(args, "You must provide an argument table when creating ConstraintDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["ConstraintId"] = args["ConstraintId"],
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertConstraintDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceActionInput = { ["Definition"] = true, ["Description"] = true, ["DefinitionType"] = true, ["IdempotencyToken"] = true, ["AcceptLanguage"] = true, ["Name"] = true, nil }

function asserts.AssertCreateServiceActionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceActionInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DefinitionType"], "Expected key DefinitionType to exist in table")
	assert(struct["Definition"], "Expected key Definition to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["Definition"] then asserts.AssertServiceActionDefinitionMap(struct["Definition"]) end
	if struct["Description"] then asserts.AssertServiceActionDescription(struct["Description"]) end
	if struct["DefinitionType"] then asserts.AssertServiceActionDefinitionType(struct["DefinitionType"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Name"] then asserts.AssertServiceActionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceActionInput[k], "CreateServiceActionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceActionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [ServiceActionDefinitionMap] <p>The self-service action definition. Can be one of the following:</p> <dl> <dt>Name</dt> <dd> <p>The name of the AWS Systems Manager Document. For example, <code>AWS-RestartEC2Instance</code>.</p> </dd> <dt>Version</dt> <dd> <p>The AWS Systems Manager automation document version. For example, <code>"Version": "1"</code> </p> </dd> <dt>AssumeRole</dt> <dd> <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p> <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p> </dd> <dt>Parameters</dt> <dd> <p>The list of parameters in JSON format.</p> <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code>.</p> </dd> </dl>
-- * Description [ServiceActionDescription] <p>The self-service action description.</p>
-- * DefinitionType [ServiceActionDefinitionType] <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Name [ServiceActionName] <p>The self-service action name.</p>
-- Required key: Name
-- Required key: DefinitionType
-- Required key: Definition
-- Required key: IdempotencyToken
-- @return CreateServiceActionInput structure as a key-value pair table
function M.CreateServiceActionInput(args)
	assert(args, "You must provide an argument table when creating CreateServiceActionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Description"] = args["Description"],
		["DefinitionType"] = args["DefinitionType"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateServiceActionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociatePrincipalFromPortfolioOutput = { nil }

function asserts.AssertDisassociatePrincipalFromPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociatePrincipalFromPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociatePrincipalFromPortfolioOutput[k], "DisassociatePrincipalFromPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociatePrincipalFromPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociatePrincipalFromPortfolioOutput structure as a key-value pair table
function M.DisassociatePrincipalFromPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating DisassociatePrincipalFromPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociatePrincipalFromPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecuteProvisionedProductPlanOutput = { ["RecordDetail"] = true, nil }

function asserts.AssertExecuteProvisionedProductPlanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteProvisionedProductPlanOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecuteProvisionedProductPlanOutput[k], "ExecuteProvisionedProductPlanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteProvisionedProductPlanOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>Information about the result of provisioning the product.</p>
-- @return ExecuteProvisionedProductPlanOutput structure as a key-value pair table
function M.ExecuteProvisionedProductPlanOutput(args)
	assert(args, "You must provide an argument table when creating ExecuteProvisionedProductPlanOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertExecuteProvisionedProductPlanOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateProvisionedProductOutput = { ["RecordDetail"] = true, nil }

function asserts.AssertTerminateProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateProvisionedProductOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateProvisionedProductOutput[k], "TerminateProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateProvisionedProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>Information about the result of this request.</p>
-- @return TerminateProvisionedProductOutput structure as a key-value pair table
function M.TerminateProvisionedProductOutput(args)
	assert(args, "You must provide an argument table when creating TerminateProvisionedProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertTerminateProvisionedProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConstraintSummary = { ["Type"] = true, ["Description"] = true, nil }

function asserts.AssertConstraintSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintSummary to be of type 'table'")
	if struct["Type"] then asserts.AssertConstraintType(struct["Type"]) end
	if struct["Description"] then asserts.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConstraintSummary[k], "ConstraintSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintSummary
-- <p>Summary information about a constraint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ConstraintType] <p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>
-- * Description [ConstraintDescription] <p>The description of the constraint.</p>
-- @return ConstraintSummary structure as a key-value pair table
function M.ConstraintSummary(args)
	assert(args, "You must provide an argument table when creating ConstraintSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertConstraintSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessLevelFilter = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertAccessLevelFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessLevelFilter to be of type 'table'")
	if struct["Value"] then asserts.AssertAccessLevelFilterValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertAccessLevelFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessLevelFilter[k], "AccessLevelFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessLevelFilter
-- <p>The access level to use to filter results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [AccessLevelFilterValue] <p>The user to which the access level applies. The only supported value is <code>Self</code>.</p>
-- * Key [AccessLevelFilterKey] <p>The access level.</p> <ul> <li> <p> <code>Account</code> - Filter results based on the account.</p> </li> <li> <p> <code>Role</code> - Filter results based on the federated role of the specified user.</p> </li> <li> <p> <code>User</code> - Filter results based on the specified user.</p> </li> </ul>
-- @return AccessLevelFilter structure as a key-value pair table
function M.AccessLevelFilter(args)
	assert(args, "You must provide an argument table when creating AccessLevelFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertAccessLevelFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProvisionedProductInput = { ["ProvisioningArtifactId"] = true, ["ProvisionedProductId"] = true, ["ProvisioningParameters"] = true, ["PathId"] = true, ["UpdateToken"] = true, ["AcceptLanguage"] = true, ["ProvisionedProductName"] = true, ["ProductId"] = true, nil }

function asserts.AssertUpdateProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisionedProductInput to be of type 'table'")
	assert(struct["UpdateToken"], "Expected key UpdateToken to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionedProductId"] then asserts.AssertId(struct["ProvisionedProductId"]) end
	if struct["ProvisioningParameters"] then asserts.AssertUpdateProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["UpdateToken"] then asserts.AssertIdempotencyToken(struct["UpdateToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductNameOrArn(struct["ProvisionedProductName"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisionedProductInput[k], "UpdateProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisionedProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
-- * ProvisioningParameters [UpdateProvisioningParameters] <p>The new parameters.</p>
-- * PathId [Id] <p>The new path identifier. This value is optional if the product has a default path, and required if the product has more than one path.</p>
-- * UpdateToken [IdempotencyToken] <p>The idempotency token that uniquely identifies the provisioning update request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProvisionedProductName [ProvisionedProductNameOrArn] <p>The updated name of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
-- * ProductId [Id] <p>The identifier of the product.</p>
-- Required key: UpdateToken
-- @return UpdateProvisionedProductInput structure as a key-value pair table
function M.UpdateProvisionedProductInput(args)
	assert(args, "You must provide an argument table when creating UpdateProvisionedProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
		["ProvisioningParameters"] = args["ProvisioningParameters"],
		["PathId"] = args["PathId"],
		["UpdateToken"] = args["UpdateToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertUpdateProvisionedProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateProvisionedProductInput = { ["AcceptLanguage"] = true, ["ProvisionedProductId"] = true, ["TerminateToken"] = true, ["IgnoreErrors"] = true, ["ProvisionedProductName"] = true, nil }

function asserts.AssertTerminateProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateProvisionedProductInput to be of type 'table'")
	assert(struct["TerminateToken"], "Expected key TerminateToken to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisionedProductId"] then asserts.AssertId(struct["ProvisionedProductId"]) end
	if struct["TerminateToken"] then asserts.AssertIdempotencyToken(struct["TerminateToken"]) end
	if struct["IgnoreErrors"] then asserts.AssertIgnoreErrors(struct["IgnoreErrors"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductNameOrArn(struct["ProvisionedProductName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateProvisionedProductInput[k], "TerminateProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateProvisionedProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProvisionedProductId [Id] <p>The identifier of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
-- * TerminateToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return <b>ResourceNotFound</b>.</p>
-- * IgnoreErrors [IgnoreErrors] <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.</p>
-- * ProvisionedProductName [ProvisionedProductNameOrArn] <p>The name of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
-- Required key: TerminateToken
-- @return TerminateProvisionedProductInput structure as a key-value pair table
function M.TerminateProvisionedProductInput(args)
	assert(args, "You must provide an argument table when creating TerminateProvisionedProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
		["TerminateToken"] = args["TerminateToken"],
		["IgnoreErrors"] = args["IgnoreErrors"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
	}
	asserts.AssertTerminateProvisionedProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConstraintInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConstraintInput[k], "DescribeConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConstraintInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The identifier of the constraint.</p>
-- Required key: Id
-- @return DescribeConstraintInput structure as a key-value pair table
function M.DescribeConstraintInput(args)
	assert(args, "You must provide an argument table when creating DescribeConstraintInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeConstraintInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["ProvisioningArtifactId"] = true, ["Verbose"] = true, ["ProductId"] = true, nil }

function asserts.AssertDescribeProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Verbose"] then asserts.AssertVerbose(struct["Verbose"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisioningArtifactInput[k], "DescribeProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * Verbose [Verbose] <p>Indicates whether a verbose level of detail is enabled.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProvisioningArtifactId
-- Required key: ProductId
-- @return DescribeProvisioningArtifactInput structure as a key-value pair table
function M.DescribeProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Verbose"] = args["Verbose"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDescribeProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTargetDefinition = { ["Attribute"] = true, ["Name"] = true, ["RequiresRecreation"] = true, nil }

function asserts.AssertResourceTargetDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTargetDefinition to be of type 'table'")
	if struct["Attribute"] then asserts.AssertResourceAttribute(struct["Attribute"]) end
	if struct["Name"] then asserts.AssertPropertyName(struct["Name"]) end
	if struct["RequiresRecreation"] then asserts.AssertRequiresRecreation(struct["RequiresRecreation"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTargetDefinition[k], "ResourceTargetDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTargetDefinition
-- <p>Information about a change to a resource attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attribute [ResourceAttribute] <p>The attribute to be changed.</p>
-- * Name [PropertyName] <p>If the attribute is <code>Properties</code>, the value is the name of the property. Otherwise, the value is null.</p>
-- * RequiresRecreation [RequiresRecreation] <p>If the attribute is <code>Properties</code>, indicates whether a change to this property causes the resource to be re-created.</p>
-- @return ResourceTargetDefinition structure as a key-value pair table
function M.ResourceTargetDefinition(args)
	assert(args, "You must provide an argument table when creating ResourceTargetDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attribute"] = args["Attribute"],
		["Name"] = args["Name"],
		["RequiresRecreation"] = args["RequiresRecreation"],
	}
	asserts.AssertResourceTargetDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudWatchDashboard = { ["Name"] = true, nil }

function asserts.AssertCloudWatchDashboard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchDashboard to be of type 'table'")
	if struct["Name"] then asserts.AssertCloudWatchDashboardName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchDashboard[k], "CloudWatchDashboard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchDashboard
-- <p>Information about a CloudWatch dashboard.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [CloudWatchDashboardName] <p>The name of the CloudWatch dashboard.</p>
-- @return CloudWatchDashboard structure as a key-value pair table
function M.CloudWatchDashboard(args)
	assert(args, "You must provide an argument table when creating CloudWatchDashboard")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCloudWatchDashboard(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProductViewSummary = { ["SupportDescription"] = true, ["Name"] = true, ["HasDefaultPath"] = true, ["ShortDescription"] = true, ["SupportUrl"] = true, ["Distributor"] = true, ["Owner"] = true, ["SupportEmail"] = true, ["Type"] = true, ["Id"] = true, ["ProductId"] = true, nil }

function asserts.AssertProductViewSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewSummary to be of type 'table'")
	if struct["SupportDescription"] then asserts.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Name"] then asserts.AssertProductViewName(struct["Name"]) end
	if struct["HasDefaultPath"] then asserts.AssertHasDefaultPath(struct["HasDefaultPath"]) end
	if struct["ShortDescription"] then asserts.AssertProductViewShortDescription(struct["ShortDescription"]) end
	if struct["SupportUrl"] then asserts.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Distributor"] then asserts.AssertProductViewDistributor(struct["Distributor"]) end
	if struct["Owner"] then asserts.AssertProductViewOwner(struct["Owner"]) end
	if struct["SupportEmail"] then asserts.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Type"] then asserts.AssertProductType(struct["Type"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductViewSummary[k], "ProductViewSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewSummary
-- <p>Summary information about a product view.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportDescription [SupportDescription] <p>The description of the support for this Product.</p>
-- * Name [ProductViewName] <p>The name of the product.</p>
-- * HasDefaultPath [HasDefaultPath] <p>Indicates whether the product has a default path. If the product does not have a default path, call <a>ListLaunchPaths</a> to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not required, and the output of <a>ProductViewSummary</a> can be used directly with <a>DescribeProvisioningParameters</a>.</p>
-- * ShortDescription [ProductViewShortDescription] <p>Short description of the product.</p>
-- * SupportUrl [SupportUrl] <p>The URL information to obtain support for this Product.</p>
-- * Distributor [ProductViewDistributor] <p>The distributor of the product. Contact the product administrator for the significance of this value.</p>
-- * Owner [ProductViewOwner] <p>The owner of the product. Contact the product administrator for the significance of this value.</p>
-- * SupportEmail [SupportEmail] <p>The email contact information to obtain support for this Product.</p>
-- * Type [ProductType] <p>The product type. Contact the product administrator for the significance of this value. If this value is <code>MARKETPLACE</code>, the product was created by AWS Marketplace.</p>
-- * Id [Id] <p>The product view identifier.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- @return ProductViewSummary structure as a key-value pair table
function M.ProductViewSummary(args)
	assert(args, "You must provide an argument table when creating ProductViewSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SupportDescription"] = args["SupportDescription"],
		["Name"] = args["Name"],
		["HasDefaultPath"] = args["HasDefaultPath"],
		["ShortDescription"] = args["ShortDescription"],
		["SupportUrl"] = args["SupportUrl"],
		["Distributor"] = args["Distributor"],
		["Owner"] = args["Owner"],
		["SupportEmail"] = args["SupportEmail"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertProductViewSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateProductFromPortfolioInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, ["ProductId"] = true, nil }

function asserts.AssertDisassociateProductFromPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateProductFromPortfolioInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateProductFromPortfolioInput[k], "DisassociateProductFromPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateProductFromPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: PortfolioId
-- @return DisassociateProductFromPortfolioInput structure as a key-value pair table
function M.DisassociateProductFromPortfolioInput(args)
	assert(args, "You must provide an argument table when creating DisassociateProductFromPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDisassociateProductFromPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProductInput = { ["SupportEmail"] = true, ["Name"] = true, ["Tags"] = true, ["SupportUrl"] = true, ["Owner"] = true, ["IdempotencyToken"] = true, ["ProvisioningArtifactParameters"] = true, ["ProductType"] = true, ["AcceptLanguage"] = true, ["Distributor"] = true, ["SupportDescription"] = true, ["Description"] = true, nil }

function asserts.AssertCreateProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProductInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Owner"], "Expected key Owner to exist in table")
	assert(struct["ProductType"], "Expected key ProductType to exist in table")
	assert(struct["ProvisioningArtifactParameters"], "Expected key ProvisioningArtifactParameters to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["SupportEmail"] then asserts.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Name"] then asserts.AssertProductViewName(struct["Name"]) end
	if struct["Tags"] then asserts.AssertAddTags(struct["Tags"]) end
	if struct["SupportUrl"] then asserts.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Owner"] then asserts.AssertProductViewOwner(struct["Owner"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["ProvisioningArtifactParameters"] then asserts.AssertProvisioningArtifactProperties(struct["ProvisioningArtifactParameters"]) end
	if struct["ProductType"] then asserts.AssertProductType(struct["ProductType"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Distributor"] then asserts.AssertProductViewOwner(struct["Distributor"]) end
	if struct["SupportDescription"] then asserts.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Description"] then asserts.AssertProductViewShortDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProductInput[k], "CreateProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportEmail [SupportEmail] <p>The contact email for product support.</p>
-- * Name [ProductViewName] <p>The name of the product.</p>
-- * Tags [AddTags] <p>One or more tags.</p>
-- * SupportUrl [SupportUrl] <p>The contact URL for product support.</p>
-- * Owner [ProductViewOwner] <p>The owner of the product.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * ProvisioningArtifactParameters [ProvisioningArtifactProperties] <p>The configuration of the provisioning artifact.</p>
-- * ProductType [ProductType] <p>The type of product.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Distributor [ProductViewOwner] <p>The distributor of the product.</p>
-- * SupportDescription [SupportDescription] <p>The support information about the product.</p>
-- * Description [ProductViewShortDescription] <p>The description of the product.</p>
-- Required key: Name
-- Required key: Owner
-- Required key: ProductType
-- Required key: ProvisioningArtifactParameters
-- Required key: IdempotencyToken
-- @return CreateProductInput structure as a key-value pair table
function M.CreateProductInput(args)
	assert(args, "You must provide an argument table when creating CreateProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SupportEmail"] = args["SupportEmail"],
		["Name"] = args["Name"],
		["Tags"] = args["Tags"],
		["SupportUrl"] = args["SupportUrl"],
		["Owner"] = args["Owner"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["ProvisioningArtifactParameters"] = args["ProvisioningArtifactParameters"],
		["ProductType"] = args["ProductType"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Distributor"] = args["Distributor"],
		["SupportDescription"] = args["SupportDescription"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisioningArtifactOutput = { ["ProvisioningArtifactDetail"] = true, ["Info"] = true, ["Status"] = true, nil }

function asserts.AssertDescribeProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then asserts.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then asserts.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisioningArtifactOutput[k], "DescribeProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Information about the provisioning artifact.</p>
-- * Info [ProvisioningArtifactInfo] <p>The URL of the CloudFormation template in Amazon S3.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return DescribeProvisioningArtifactOutput structure as a key-value pair table
function M.DescribeProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertDescribeProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAssociateServiceActionWithProvisioningArtifactOutput = { ["FailedServiceActionAssociations"] = true, nil }

function asserts.AssertBatchAssociateServiceActionWithProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAssociateServiceActionWithProvisioningArtifactOutput to be of type 'table'")
	if struct["FailedServiceActionAssociations"] then asserts.AssertFailedServiceActionAssociations(struct["FailedServiceActionAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAssociateServiceActionWithProvisioningArtifactOutput[k], "BatchAssociateServiceActionWithProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAssociateServiceActionWithProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedServiceActionAssociations [FailedServiceActionAssociations] <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
-- @return BatchAssociateServiceActionWithProvisioningArtifactOutput structure as a key-value pair table
function M.BatchAssociateServiceActionWithProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating BatchAssociateServiceActionWithProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedServiceActionAssociations"] = args["FailedServiceActionAssociations"],
	}
	asserts.AssertBatchAssociateServiceActionWithProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductAsAdminInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeProductAsAdminInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductAsAdminInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductAsAdminInput[k], "DescribeProductAsAdminInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductAsAdminInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The product identifier.</p>
-- Required key: Id
-- @return DescribeProductAsAdminInput structure as a key-value pair table
function M.DescribeProductAsAdminInput(args)
	assert(args, "You must provide an argument table when creating DescribeProductAsAdminInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductAsAdminInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConstraintsForPortfolioOutput = { ["NextPageToken"] = true, ["ConstraintDetails"] = true, nil }

function asserts.AssertListConstraintsForPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConstraintsForPortfolioOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ConstraintDetails"] then asserts.AssertConstraintDetails(struct["ConstraintDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConstraintsForPortfolioOutput[k], "ListConstraintsForPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConstraintsForPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ConstraintDetails [ConstraintDetails] <p>Information about the constraints.</p>
-- @return ListConstraintsForPortfolioOutput structure as a key-value pair table
function M.ListConstraintsForPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating ListConstraintsForPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ConstraintDetails"] = args["ConstraintDetails"],
	}
	asserts.AssertListConstraintsForPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateProductFromPortfolioOutput = { nil }

function asserts.AssertDisassociateProductFromPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateProductFromPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateProductFromPortfolioOutput[k], "DisassociateProductFromPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateProductFromPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateProductFromPortfolioOutput structure as a key-value pair table
function M.DisassociateProductFromPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating DisassociateProductFromPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateProductFromPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordOutput = { ["Description"] = true, ["OutputKey"] = true, ["OutputValue"] = true, nil }

function asserts.AssertRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordOutput to be of type 'table'")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["OutputKey"] then asserts.AssertOutputKey(struct["OutputKey"]) end
	if struct["OutputValue"] then asserts.AssertOutputValue(struct["OutputValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordOutput[k], "RecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordOutput
-- <p>The output for the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>The description of the output.</p>
-- * OutputKey [OutputKey] <p>The output key.</p>
-- * OutputValue [OutputValue] <p>The output value.</p>
-- @return RecordOutput structure as a key-value pair table
function M.RecordOutput(args)
	assert(args, "You must provide an argument table when creating RecordOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["OutputKey"] = args["OutputKey"],
		["OutputValue"] = args["OutputValue"],
	}
	asserts.AssertRecordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyProductOutput = { ["CopyProductToken"] = true, nil }

function asserts.AssertCopyProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyProductOutput to be of type 'table'")
	if struct["CopyProductToken"] then asserts.AssertId(struct["CopyProductToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyProductOutput[k], "CopyProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyProductToken [Id] <p>The token to use to track the progress of the operation.</p>
-- @return CopyProductOutput structure as a key-value pair table
function M.CopyProductOutput(args)
	assert(args, "You must provide an argument table when creating CopyProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyProductToken"] = args["CopyProductToken"],
	}
	asserts.AssertCopyProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionProductOutput = { ["RecordDetail"] = true, nil }

function asserts.AssertProvisionProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionProductOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionProductOutput[k], "ProvisionProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>Information about the result of provisioning the product.</p>
-- @return ProvisionProductOutput structure as a key-value pair table
function M.ProvisionProductOutput(args)
	assert(args, "You must provide an argument table when creating ProvisionProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertProvisionProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceChange = { ["ResourceType"] = true, ["PhysicalResourceId"] = true, ["Details"] = true, ["Action"] = true, ["Scope"] = true, ["LogicalResourceId"] = true, ["Replacement"] = true, nil }

function asserts.AssertResourceChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChange to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertPlanResourceType(struct["ResourceType"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["Details"] then asserts.AssertResourceChangeDetails(struct["Details"]) end
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["Scope"] then asserts.AssertScope(struct["Scope"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	if struct["Replacement"] then asserts.AssertReplacement(struct["Replacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceChange[k], "ResourceChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChange
-- <p>Information about a resource change that will occur when a plan is executed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [PlanResourceType] <p>The type of resource.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The ID of the resource, if it was already created.</p>
-- * Details [ResourceChangeDetails] <p>Information about the resource changes.</p>
-- * Action [ChangeAction] <p>The change action.</p>
-- * Scope [Scope] <p>The change scope.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The ID of the resource, as defined in the CloudFormation template.</p>
-- * Replacement [Replacement] <p>If the change type is <code>Modify</code>, indicates whether the existing resource is deleted and replaced with a new one.</p>
-- @return ResourceChange structure as a key-value pair table
function M.ResourceChange(args)
	assert(args, "You must provide an argument table when creating ResourceChange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["Details"] = args["Details"],
		["Action"] = args["Action"],
		["Scope"] = args["Scope"],
		["LogicalResourceId"] = args["LogicalResourceId"],
		["Replacement"] = args["Replacement"],
	}
	asserts.AssertResourceChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagOptionsFilters = { ["Active"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertListTagOptionsFilters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsFilters to be of type 'table'")
	if struct["Active"] then asserts.AssertTagOptionActive(struct["Active"]) end
	if struct["Value"] then asserts.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagOptionsFilters[k], "ListTagOptionsFilters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsFilters
-- <p>Filters to use when listing TagOptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [TagOptionActive] <p>The active state.</p>
-- * Value [TagOptionValue] <p>The TagOption value.</p>
-- * Key [TagOptionKey] <p>The TagOption key.</p>
-- @return ListTagOptionsFilters structure as a key-value pair table
function M.ListTagOptionsFilters(args)
	assert(args, "You must provide an argument table when creating ListTagOptionsFilters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Active"] = args["Active"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertListTagOptionsFilters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["ProvisioningArtifactId"] = true, ["ProductId"] = true, nil }

function asserts.AssertDeleteProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProvisioningArtifactInput[k], "DeleteProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return DeleteProvisioningArtifactInput structure as a key-value pair table
function M.DeleteProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating DeleteProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDeleteProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordDetail = { ["Status"] = true, ["UpdatedTime"] = true, ["ProvisionedProductName"] = true, ["RecordType"] = true, ["ProvisioningArtifactId"] = true, ["RecordId"] = true, ["ProvisionedProductType"] = true, ["RecordTags"] = true, ["RecordErrors"] = true, ["PathId"] = true, ["CreatedTime"] = true, ["ProvisionedProductId"] = true, ["ProductId"] = true, nil }

function asserts.AssertRecordDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordDetail to be of type 'table'")
	if struct["Status"] then asserts.AssertRecordStatus(struct["Status"]) end
	if struct["UpdatedTime"] then asserts.AssertUpdatedTime(struct["UpdatedTime"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["RecordType"] then asserts.AssertRecordType(struct["RecordType"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["RecordId"] then asserts.AssertId(struct["RecordId"]) end
	if struct["ProvisionedProductType"] then asserts.AssertProvisionedProductType(struct["ProvisionedProductType"]) end
	if struct["RecordTags"] then asserts.AssertRecordTags(struct["RecordTags"]) end
	if struct["RecordErrors"] then asserts.AssertRecordErrors(struct["RecordErrors"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["ProvisionedProductId"] then asserts.AssertId(struct["ProvisionedProductId"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordDetail[k], "RecordDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordDetail
-- <p>Information about a request operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [RecordStatus] <p>The status of the provisioned product.</p> <ul> <li> <p> <code>CREATED</code> - The request was created but the operation has not started.</p> </li> <li> <p> <code>IN_PROGRESS</code> - The requested operation is in progress.</p> </li> <li> <p> <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the requested operation failed and some remediation is occurring. For example, a rollback.</p> </li> <li> <p> <code>SUCCEEDED</code> - The requested operation has successfully completed.</p> </li> <li> <p> <code>FAILED</code> - The requested operation has unsuccessfully completed. Investigate using the error messages returned.</p> </li> </ul>
-- * UpdatedTime [UpdatedTime] <p>The time when the record was last updated.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>The user-friendly name of the provisioned product.</p>
-- * RecordType [RecordType] <p>The record type.</p> <ul> <li> <p> <code>PROVISION_PRODUCT</code> </p> </li> <li> <p> <code>UPDATE_PROVISIONED_PRODUCT</code> </p> </li> <li> <p> <code>TERMINATE_PROVISIONED_PRODUCT</code> </p> </li> </ul>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * RecordId [Id] <p>The identifier of the record.</p>
-- * ProvisionedProductType [ProvisionedProductType] <p>The type of provisioned product. The supported value is <code>CFN_STACK</code>.</p>
-- * RecordTags [RecordTags] <p>One or more tags.</p>
-- * RecordErrors [RecordErrors] <p>The errors that occurred.</p>
-- * PathId [Id] <p>The path identifier.</p>
-- * CreatedTime [CreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the provisioned product.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- @return RecordDetail structure as a key-value pair table
function M.RecordDetail(args)
	assert(args, "You must provide an argument table when creating RecordDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["UpdatedTime"] = args["UpdatedTime"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["RecordType"] = args["RecordType"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["RecordId"] = args["RecordId"],
		["ProvisionedProductType"] = args["ProvisionedProductType"],
		["RecordTags"] = args["RecordTags"],
		["RecordErrors"] = args["RecordErrors"],
		["PathId"] = args["PathId"],
		["CreatedTime"] = args["CreatedTime"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertRecordDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagOptionsOutput = { ["PageToken"] = true, ["TagOptionDetails"] = true, nil }

function asserts.AssertListTagOptionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsOutput to be of type 'table'")
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["TagOptionDetails"] then asserts.AssertTagOptionDetails(struct["TagOptionDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagOptionsOutput[k], "ListTagOptionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * TagOptionDetails [TagOptionDetails] <p>Information about the TagOptions.</p>
-- @return ListTagOptionsOutput structure as a key-value pair table
function M.ListTagOptionsOutput(args)
	assert(args, "You must provide an argument table when creating ListTagOptionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageToken"] = args["PageToken"],
		["TagOptionDetails"] = args["TagOptionDetails"],
	}
	asserts.AssertListTagOptionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedProductPlanDetails = { ["PlanName"] = true, ["ProvisioningArtifactId"] = true, ["PlanType"] = true, ["ProvisioningParameters"] = true, ["ProvisionProductName"] = true, ["PlanId"] = true, ["Status"] = true, ["PathId"] = true, ["ProvisionProductId"] = true, ["UpdatedTime"] = true, ["CreatedTime"] = true, ["Tags"] = true, ["StatusMessage"] = true, ["NotificationArns"] = true, ["ProductId"] = true, nil }

function asserts.AssertProvisionedProductPlanDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductPlanDetails to be of type 'table'")
	if struct["PlanName"] then asserts.AssertProvisionedProductPlanName(struct["PlanName"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["PlanType"] then asserts.AssertProvisionedProductPlanType(struct["PlanType"]) end
	if struct["ProvisioningParameters"] then asserts.AssertUpdateProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["ProvisionProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionProductName"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	if struct["Status"] then asserts.AssertProvisionedProductPlanStatus(struct["Status"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["ProvisionProductId"] then asserts.AssertId(struct["ProvisionProductId"]) end
	if struct["UpdatedTime"] then asserts.AssertUpdatedTime(struct["UpdatedTime"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["NotificationArns"] then asserts.AssertNotificationArns(struct["NotificationArns"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedProductPlanDetails[k], "ProvisionedProductPlanDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductPlanDetails
-- <p>Information about a plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlanName [ProvisionedProductPlanName] <p>The name of the plan.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * PlanType [ProvisionedProductPlanType] <p>The plan type.</p>
-- * ProvisioningParameters [UpdateProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- * ProvisionProductName [ProvisionedProductName] <p>The user-friendly name of the provisioned product.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- * Status [ProvisionedProductPlanStatus] <p>The status.</p>
-- * PathId [Id] <p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
-- * ProvisionProductId [Id] <p>The product identifier.</p>
-- * UpdatedTime [UpdatedTime] <p>The time when the plan was last updated.</p>
-- * CreatedTime [CreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * Tags [Tags] <p>One or more tags.</p>
-- * StatusMessage [StatusMessage] <p>The status message.</p>
-- * NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- @return ProvisionedProductPlanDetails structure as a key-value pair table
function M.ProvisionedProductPlanDetails(args)
	assert(args, "You must provide an argument table when creating ProvisionedProductPlanDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlanName"] = args["PlanName"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["PlanType"] = args["PlanType"],
		["ProvisioningParameters"] = args["ProvisioningParameters"],
		["ProvisionProductName"] = args["ProvisionProductName"],
		["PlanId"] = args["PlanId"],
		["Status"] = args["Status"],
		["PathId"] = args["PathId"],
		["ProvisionProductId"] = args["ProvisionProductId"],
		["UpdatedTime"] = args["UpdatedTime"],
		["CreatedTime"] = args["CreatedTime"],
		["Tags"] = args["Tags"],
		["StatusMessage"] = args["StatusMessage"],
		["NotificationArns"] = args["NotificationArns"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertProvisionedProductPlanDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LaunchPathSummary = { ["Name"] = true, ["ConstraintSummaries"] = true, ["Id"] = true, ["Tags"] = true, nil }

function asserts.AssertLaunchPathSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchPathSummary to be of type 'table'")
	if struct["Name"] then asserts.AssertPortfolioName(struct["Name"]) end
	if struct["ConstraintSummaries"] then asserts.AssertConstraintSummaries(struct["ConstraintSummaries"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.LaunchPathSummary[k], "LaunchPathSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchPathSummary
-- <p>Summary information about a product path for a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [PortfolioName] <p>The name of the portfolio to which the user was assigned.</p>
-- * ConstraintSummaries [ConstraintSummaries] <p>The constraints on the portfolio-product relationship.</p>
-- * Id [Id] <p>The identifier of the product path.</p>
-- * Tags [Tags] <p>The tags associated with this product path.</p>
-- @return LaunchPathSummary structure as a key-value pair table
function M.LaunchPathSummary(args)
	assert(args, "You must provide an argument table when creating LaunchPathSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ConstraintSummaries"] = args["ConstraintSummaries"],
		["Id"] = args["Id"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertLaunchPathSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateTagOptionWithResourceInput = { ["ResourceId"] = true, ["TagOptionId"] = true, nil }

function asserts.AssertAssociateTagOptionWithResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTagOptionWithResourceInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["TagOptionId"] then asserts.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateTagOptionWithResourceInput[k], "AssociateTagOptionWithResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTagOptionWithResourceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>The resource identifier.</p>
-- * TagOptionId [TagOptionId] <p>The TagOption identifier.</p>
-- Required key: ResourceId
-- Required key: TagOptionId
-- @return AssociateTagOptionWithResourceInput structure as a key-value pair table
function M.AssociateTagOptionWithResourceInput(args)
	assert(args, "You must provide an argument table when creating AssociateTagOptionWithResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertAssociateTagOptionWithResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociatePrincipalWithPortfolioOutput = { nil }

function asserts.AssertAssociatePrincipalWithPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatePrincipalWithPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociatePrincipalWithPortfolioOutput[k], "AssociatePrincipalWithPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatePrincipalWithPortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociatePrincipalWithPortfolioOutput structure as a key-value pair table
function M.AssociatePrincipalWithPortfolioOutput(args)
	assert(args, "You must provide an argument table when creating AssociatePrincipalWithPortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociatePrincipalWithPortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAcceptedPortfolioSharesOutput = { ["NextPageToken"] = true, ["PortfolioDetails"] = true, nil }

function asserts.AssertListAcceptedPortfolioSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAcceptedPortfolioSharesOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then asserts.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAcceptedPortfolioSharesOutput[k], "ListAcceptedPortfolioSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAcceptedPortfolioSharesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>Information about the portfolios.</p>
-- @return ListAcceptedPortfolioSharesOutput structure as a key-value pair table
function M.ListAcceptedPortfolioSharesOutput(args)
	assert(args, "You must provide an argument table when creating ListAcceptedPortfolioSharesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListAcceptedPortfolioSharesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagOptionDetail = { ["Active"] = true, ["Value"] = true, ["Key"] = true, ["Id"] = true, nil }

function asserts.AssertTagOptionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionDetail to be of type 'table'")
	if struct["Active"] then asserts.AssertTagOptionActive(struct["Active"]) end
	if struct["Value"] then asserts.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagOptionKey(struct["Key"]) end
	if struct["Id"] then asserts.AssertTagOptionId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagOptionDetail[k], "TagOptionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionDetail
-- <p>Information about a TagOption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [TagOptionActive] <p>The TagOption active state.</p>
-- * Value [TagOptionValue] <p>The TagOption value.</p>
-- * Key [TagOptionKey] <p>The TagOption key.</p>
-- * Id [TagOptionId] <p>The TagOption identifier.</p>
-- @return TagOptionDetail structure as a key-value pair table
function M.TagOptionDetail(args)
	assert(args, "You must provide an argument table when creating TagOptionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Active"] = args["Active"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["Id"] = args["Id"],
	}
	asserts.AssertTagOptionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProductsOutput = { ["NextPageToken"] = true, ["ProductViewAggregations"] = true, ["ProductViewSummaries"] = true, nil }

function asserts.AssertSearchProductsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProductViewAggregations"] then asserts.AssertProductViewAggregations(struct["ProductViewAggregations"]) end
	if struct["ProductViewSummaries"] then asserts.AssertProductViewSummaries(struct["ProductViewSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProductsOutput[k], "SearchProductsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProductViewAggregations [ProductViewAggregations] <p>The product view aggregations.</p>
-- * ProductViewSummaries [ProductViewSummaries] <p>Information about the product views.</p>
-- @return SearchProductsOutput structure as a key-value pair table
function M.SearchProductsOutput(args)
	assert(args, "You must provide an argument table when creating SearchProductsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProductViewAggregations"] = args["ProductViewAggregations"],
		["ProductViewSummaries"] = args["ProductViewSummaries"],
	}
	asserts.AssertSearchProductsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["IdempotencyToken"] = true, ["Parameters"] = true, ["ProductId"] = true, nil }

function asserts.AssertCreateProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Parameters"] then asserts.AssertProvisioningArtifactProperties(struct["Parameters"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProvisioningArtifactInput[k], "CreateProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * Parameters [ProvisioningArtifactProperties] <p>The configuration for the provisioning artifact.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: Parameters
-- Required key: IdempotencyToken
-- @return CreateProvisioningArtifactInput structure as a key-value pair table
function M.CreateProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating CreateProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["Parameters"] = args["Parameters"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertCreateProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConstraintOutput = { ["Status"] = true, ["ConstraintParameters"] = true, ["ConstraintDetail"] = true, nil }

function asserts.AssertDescribeConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConstraintOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then asserts.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then asserts.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConstraintOutput[k], "DescribeConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConstraintOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>The status of the current request.</p>
-- * ConstraintParameters [ConstraintParameters] <p>The constraint parameters.</p>
-- * ConstraintDetail [ConstraintDetail] <p>Information about the constraint.</p>
-- @return DescribeConstraintOutput structure as a key-value pair table
function M.DescribeConstraintOutput(args)
	assert(args, "You must provide an argument table when creating DescribeConstraintOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertDescribeConstraintOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePortfolioInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePortfolioInput[k], "DescribePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The portfolio identifier.</p>
-- Required key: Id
-- @return DescribePortfolioInput structure as a key-value pair table
function M.DescribePortfolioInput(args)
	assert(args, "You must provide an argument table when creating DescribePortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribePortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, ["OrganizationNode"] = true, ["AccountId"] = true, nil }

function asserts.AssertDeletePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["OrganizationNode"] then asserts.AssertOrganizationNode(struct["OrganizationNode"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioShareInput[k], "DeletePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * OrganizationNode [OrganizationNode] <p>The organization node to whom you are going to stop sharing.</p>
-- * AccountId [AccountId] <p>The AWS account ID.</p>
-- Required key: PortfolioId
-- @return DeletePortfolioShareInput structure as a key-value pair table
function M.DeletePortfolioShareInput(args)
	assert(args, "You must provide an argument table when creating DeletePortfolioShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["OrganizationNode"] = args["OrganizationNode"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeletePortfolioShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProductsAsAdminOutput = { ["NextPageToken"] = true, ["ProductViewDetails"] = true, nil }

function asserts.AssertSearchProductsAsAdminOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsAsAdminOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProductViewDetails"] then asserts.AssertProductViewDetails(struct["ProductViewDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProductsAsAdminOutput[k], "SearchProductsAsAdminOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsAsAdminOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProductViewDetails [ProductViewDetails] <p>Information about the product views.</p>
-- @return SearchProductsAsAdminOutput structure as a key-value pair table
function M.SearchProductsAsAdminOutput(args)
	assert(args, "You must provide an argument table when creating SearchProductsAsAdminOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProductViewDetails"] = args["ProductViewDetails"],
	}
	asserts.AssertSearchProductsAsAdminOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfolioAccessInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertListPortfolioAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfolioAccessInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfolioAccessInput[k], "ListPortfolioAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfolioAccessInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return ListPortfolioAccessInput structure as a key-value pair table
function M.ListPortfolioAccessInput(args)
	assert(args, "You must provide an argument table when creating ListPortfolioAccessInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertListPortfolioAccessInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductInput = { ["AcceptLanguage"] = true, ["Id"] = true, nil }

function asserts.AssertDescribeProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductInput[k], "DescribeProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Id [Id] <p>The product identifier.</p>
-- Required key: Id
-- @return DescribeProductInput structure as a key-value pair table
function M.DescribeProductInput(args)
	assert(args, "You must provide an argument table when creating DescribeProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagOptionInput = { ["Id"] = true, nil }

function asserts.AssertDeleteTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagOptionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertTagOptionId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagOptionInput[k], "DeleteTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagOptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [TagOptionId] <p>The TagOption identifier.</p>
-- Required key: Id
-- @return DeleteTagOptionInput structure as a key-value pair table
function M.DeleteTagOptionInput(args)
	assert(args, "You must provide an argument table when creating DeleteTagOptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteTagOptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateServiceActionFromProvisioningArtifactOutput = { nil }

function asserts.AssertDisassociateServiceActionFromProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceActionFromProvisioningArtifactOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateServiceActionFromProvisioningArtifactOutput[k], "DisassociateServiceActionFromProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceActionFromProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateServiceActionFromProvisioningArtifactOutput structure as a key-value pair table
function M.DisassociateServiceActionFromProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating DisassociateServiceActionFromProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateServiceActionFromProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateServiceActionWithProvisioningArtifactOutput = { nil }

function asserts.AssertAssociateServiceActionWithProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceActionWithProvisioningArtifactOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateServiceActionWithProvisioningArtifactOutput[k], "AssociateServiceActionWithProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceActionWithProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateServiceActionWithProvisioningArtifactOutput structure as a key-value pair table
function M.AssociateServiceActionWithProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating AssociateServiceActionWithProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateServiceActionWithProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableAWSOrganizationsAccessOutput = { nil }

function asserts.AssertDisableAWSOrganizationsAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableAWSOrganizationsAccessOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableAWSOrganizationsAccessOutput[k], "DisableAWSOrganizationsAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableAWSOrganizationsAccessOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableAWSOrganizationsAccessOutput structure as a key-value pair table
function M.DisableAWSOrganizationsAccessOutput(args)
	assert(args, "You must provide an argument table when creating DisableAWSOrganizationsAccessOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableAWSOrganizationsAccessOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePortfolioOutput = { ["PortfolioDetail"] = true, ["Tags"] = true, nil }

function asserts.AssertUpdatePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePortfolioOutput to be of type 'table'")
	if struct["PortfolioDetail"] then asserts.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePortfolioOutput[k], "UpdatePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioDetail [PortfolioDetail] <p>Information about the portfolio.</p>
-- * Tags [Tags] <p>Information about the tags associated with the portfolio.</p>
-- @return UpdatePortfolioOutput structure as a key-value pair table
function M.UpdatePortfolioOutput(args)
	assert(args, "You must provide an argument table when creating UpdatePortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertUpdatePortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAWSOrganizationsAccessInput = { nil }

function asserts.AssertEnableAWSOrganizationsAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAWSOrganizationsAccessInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableAWSOrganizationsAccessInput[k], "EnableAWSOrganizationsAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAWSOrganizationsAccessInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableAWSOrganizationsAccessInput structure as a key-value pair table
function M.EnableAWSOrganizationsAccessInput(args)
	assert(args, "You must provide an argument table when creating EnableAWSOrganizationsAccessInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableAWSOrganizationsAccessInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfoliosOutput = { ["NextPageToken"] = true, ["PortfolioDetails"] = true, nil }

function asserts.AssertListPortfoliosOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then asserts.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfoliosOutput[k], "ListPortfoliosOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>Information about the portfolios.</p>
-- @return ListPortfoliosOutput structure as a key-value pair table
function M.ListPortfoliosOutput(args)
	assert(args, "You must provide an argument table when creating ListPortfoliosOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListPortfoliosOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, ["OrganizationNode"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreatePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["OrganizationNode"] then asserts.AssertOrganizationNode(struct["OrganizationNode"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioShareInput[k], "CreatePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * OrganizationNode [OrganizationNode] <p>The organization node to whom you are going to share. If <code>OrganizationNode</code> is passed in, <code>PortfolioShare</code> will be created for the node and its children (when applies), and a <code>PortfolioShareToken</code> will be returned in the output in order for the administrator to monitor the status of the <code>PortfolioShare</code> creation process.</p>
-- * AccountId [AccountId] <p>The AWS account ID. For example, <code>123456789012</code>.</p>
-- Required key: PortfolioId
-- @return CreatePortfolioShareInput structure as a key-value pair table
function M.CreatePortfolioShareInput(args)
	assert(args, "You must provide an argument table when creating CreatePortfolioShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["OrganizationNode"] = args["OrganizationNode"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreatePortfolioShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePortfolioOutput = { ["TagOptions"] = true, ["PortfolioDetail"] = true, ["Tags"] = true, nil }

function asserts.AssertDescribePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioOutput to be of type 'table'")
	if struct["TagOptions"] then asserts.AssertTagOptionDetails(struct["TagOptions"]) end
	if struct["PortfolioDetail"] then asserts.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePortfolioOutput[k], "DescribePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagOptions [TagOptionDetails] <p>Information about the TagOptions associated with the portfolio.</p>
-- * PortfolioDetail [PortfolioDetail] <p>Information about the portfolio.</p>
-- * Tags [Tags] <p>Information about the tags associated with the portfolio.</p>
-- @return DescribePortfolioOutput structure as a key-value pair table
function M.DescribePortfolioOutput(args)
	assert(args, "You must provide an argument table when creating DescribePortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagOptions"] = args["TagOptions"],
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribePortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociatePrincipalFromPortfolioInput = { ["AcceptLanguage"] = true, ["PrincipalARN"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertDisassociatePrincipalFromPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociatePrincipalFromPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["PrincipalARN"], "Expected key PrincipalARN to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PrincipalARN"] then asserts.AssertPrincipalARN(struct["PrincipalARN"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociatePrincipalFromPortfolioInput[k], "DisassociatePrincipalFromPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociatePrincipalFromPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PrincipalARN [PrincipalARN] <p>The ARN of the principal (IAM user, role, or group).</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- Required key: PrincipalARN
-- @return DisassociatePrincipalFromPortfolioInput structure as a key-value pair table
function M.DisassociatePrincipalFromPortfolioInput(args)
	assert(args, "You must provide an argument table when creating DisassociatePrincipalFromPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PrincipalARN"] = args["PrincipalARN"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertDisassociatePrincipalFromPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePortfolioShareStatusOutput = { ["Status"] = true, ["OrganizationNodeValue"] = true, ["PortfolioShareToken"] = true, ["PortfolioId"] = true, ["ShareDetails"] = true, nil }

function asserts.AssertDescribePortfolioShareStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioShareStatusOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertShareStatus(struct["Status"]) end
	if struct["OrganizationNodeValue"] then asserts.AssertOrganizationNodeValue(struct["OrganizationNodeValue"]) end
	if struct["PortfolioShareToken"] then asserts.AssertPortfolioShareToken(struct["PortfolioShareToken"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["ShareDetails"] then asserts.AssertShareDetails(struct["ShareDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePortfolioShareStatusOutput[k], "DescribePortfolioShareStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioShareStatusOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ShareStatus] <p>Status of the portfolio share operation.</p>
-- * OrganizationNodeValue [OrganizationNodeValue] <p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>
-- * PortfolioShareToken [PortfolioShareToken] <p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * ShareDetails [ShareDetails] <p>Information about the portfolio share operation.</p>
-- @return DescribePortfolioShareStatusOutput structure as a key-value pair table
function M.DescribePortfolioShareStatusOutput(args)
	assert(args, "You must provide an argument table when creating DescribePortfolioShareStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["OrganizationNodeValue"] = args["OrganizationNodeValue"],
		["PortfolioShareToken"] = args["PortfolioShareToken"],
		["PortfolioId"] = args["PortfolioId"],
		["ShareDetails"] = args["ShareDetails"],
	}
	asserts.AssertDescribePortfolioShareStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConstraintOutput = { ["Status"] = true, ["ConstraintParameters"] = true, ["ConstraintDetail"] = true, nil }

function asserts.AssertCreateConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConstraintOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then asserts.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then asserts.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConstraintOutput[k], "CreateConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConstraintOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>The status of the current request.</p>
-- * ConstraintParameters [ConstraintParameters] <p>The constraint parameters.</p>
-- * ConstraintDetail [ConstraintDetail] <p>Information about the constraint.</p>
-- @return CreateConstraintOutput structure as a key-value pair table
function M.CreateConstraintOutput(args)
	assert(args, "You must provide an argument table when creating CreateConstraintOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertCreateConstraintOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDisassociateServiceActionFromProvisioningArtifactOutput = { ["FailedServiceActionAssociations"] = true, nil }

function asserts.AssertBatchDisassociateServiceActionFromProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDisassociateServiceActionFromProvisioningArtifactOutput to be of type 'table'")
	if struct["FailedServiceActionAssociations"] then asserts.AssertFailedServiceActionAssociations(struct["FailedServiceActionAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDisassociateServiceActionFromProvisioningArtifactOutput[k], "BatchDisassociateServiceActionFromProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDisassociateServiceActionFromProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedServiceActionAssociations [FailedServiceActionAssociations] <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
-- @return BatchDisassociateServiceActionFromProvisioningArtifactOutput structure as a key-value pair table
function M.BatchDisassociateServiceActionFromProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating BatchDisassociateServiceActionFromProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedServiceActionAssociations"] = args["FailedServiceActionAssociations"],
	}
	asserts.AssertBatchDisassociateServiceActionFromProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRecordInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["Id"] = true, ["PageSize"] = true, nil }

function asserts.AssertDescribeRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRecordInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRecordInput[k], "DescribeRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRecordInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * Id [Id] <p>The record identifier of the provisioned product. This identifier is returned by the request operation.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- Required key: Id
-- @return DescribeRecordInput structure as a key-value pair table
function M.DescribeRecordInput(args)
	assert(args, "You must provide an argument table when creating DescribeRecordInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["Id"] = args["Id"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeRecordInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePortfolioOutput = { nil }

function asserts.AssertDeletePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioOutput[k], "DeletePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePortfolioOutput structure as a key-value pair table
function M.DeletePortfolioOutput(args)
	assert(args, "You must provide an argument table when creating DeletePortfolioOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePortfolioOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProductOutput = { ["ProductViewDetail"] = true, ["ProvisioningArtifactDetail"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProductOutput to be of type 'table'")
	if struct["ProductViewDetail"] then asserts.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["ProvisioningArtifactDetail"] then asserts.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProductOutput[k], "CreateProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewDetail [ProductViewDetail] <p>Information about the product view.</p>
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Information about the provisioning artifact.</p>
-- * Tags [Tags] <p>Information about the tags associated with the product.</p>
-- @return CreateProductOutput structure as a key-value pair table
function M.CreateProductOutput(args)
	assert(args, "You must provide an argument table when creating CreateProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProductOutput = { ["ProductViewDetail"] = true, ["Tags"] = true, nil }

function asserts.AssertUpdateProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProductOutput to be of type 'table'")
	if struct["ProductViewDetail"] then asserts.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProductOutput[k], "UpdateProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewDetail [ProductViewDetail] <p>Information about the product view.</p>
-- * Tags [Tags] <p>Information about the tags associated with the product.</p>
-- @return UpdateProductOutput structure as a key-value pair table
function M.UpdateProductOutput(args)
	assert(args, "You must provide an argument table when creating UpdateProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertUpdateProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProvisionedProductPlanOutput = { ["ResourceChanges"] = true, ["NextPageToken"] = true, ["ProvisionedProductPlanDetails"] = true, nil }

function asserts.AssertDescribeProvisionedProductPlanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductPlanOutput to be of type 'table'")
	if struct["ResourceChanges"] then asserts.AssertResourceChanges(struct["ResourceChanges"]) end
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisionedProductPlanDetails"] then asserts.AssertProvisionedProductPlanDetails(struct["ProvisionedProductPlanDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisionedProductPlanOutput[k], "DescribeProvisionedProductPlanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductPlanOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceChanges [ResourceChanges] <p>Information about the resource changes that will occur when the plan is executed.</p>
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProvisionedProductPlanDetails [ProvisionedProductPlanDetails] <p>Information about the plan.</p>
-- @return DescribeProvisionedProductPlanOutput structure as a key-value pair table
function M.DescribeProvisionedProductPlanOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProvisionedProductPlanOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceChanges"] = args["ResourceChanges"],
		["NextPageToken"] = args["NextPageToken"],
		["ProvisionedProductPlanDetails"] = args["ProvisionedProductPlanDetails"],
	}
	asserts.AssertDescribeProvisionedProductPlanOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProductOutput = { nil }

function asserts.AssertDeleteProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProductOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProductOutput[k], "DeleteProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProductOutput structure as a key-value pair table
function M.DeleteProductOutput(args)
	assert(args, "You must provide an argument table when creating DeleteProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedServiceActionAssociation = { ["ProvisioningArtifactId"] = true, ["ErrorCode"] = true, ["ServiceActionId"] = true, ["ErrorMessage"] = true, ["ProductId"] = true, nil }

function asserts.AssertFailedServiceActionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedServiceActionAssociation to be of type 'table'")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ErrorCode"] then asserts.AssertServiceActionAssociationErrorCode(struct["ErrorCode"]) end
	if struct["ServiceActionId"] then asserts.AssertId(struct["ServiceActionId"]) end
	if struct["ErrorMessage"] then asserts.AssertServiceActionAssociationErrorMessage(struct["ErrorMessage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedServiceActionAssociation[k], "FailedServiceActionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedServiceActionAssociation
-- <p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * ErrorCode [ServiceActionAssociationErrorCode] <p>The error code. Valid values are listed below.</p>
-- * ServiceActionId [Id] <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
-- * ErrorMessage [ServiceActionAssociationErrorMessage] <p>A text description of the error.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- @return FailedServiceActionAssociation structure as a key-value pair table
function M.FailedServiceActionAssociation(args)
	assert(args, "You must provide an argument table when creating FailedServiceActionAssociation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ErrorCode"] = args["ErrorCode"],
		["ServiceActionId"] = args["ServiceActionId"],
		["ErrorMessage"] = args["ErrorMessage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertFailedServiceActionAssociation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagOptionSummary = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertTagOptionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionSummary to be of type 'table'")
	if struct["Values"] then asserts.AssertTagOptionValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagOptionSummary[k], "TagOptionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionSummary
-- <p>Summary information about a TagOption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [TagOptionValues] <p>The TagOption value.</p>
-- * Key [TagOptionKey] <p>The TagOption key.</p>
-- @return TagOptionSummary structure as a key-value pair table
function M.TagOptionSummary(args)
	assert(args, "You must provide an argument table when creating TagOptionSummary")
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
	asserts.AssertTagOptionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProductsAsAdminInput = { ["ProductSource"] = true, ["PortfolioId"] = true, ["PageSize"] = true, ["PageToken"] = true, ["SortBy"] = true, ["Filters"] = true, ["AcceptLanguage"] = true, ["SortOrder"] = true, nil }

function asserts.AssertSearchProductsAsAdminInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsAsAdminInput to be of type 'table'")
	if struct["ProductSource"] then asserts.AssertProductSource(struct["ProductSource"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["SortBy"] then asserts.AssertProductViewSortBy(struct["SortBy"]) end
	if struct["Filters"] then asserts.AssertProductViewFilters(struct["Filters"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProductsAsAdminInput[k], "SearchProductsAsAdminInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsAsAdminInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductSource [ProductSource] <p>Access level of the source of the product.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * SortBy [ProductViewSortBy] <p>The sort field. If no value is specified, the results are not sorted.</p>
-- * Filters [ProductViewFilters] <p>The search filters. If no search filters are specified, the output includes all products to which the administrator has access.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * SortOrder [SortOrder] <p>The sort order. If no value is specified, the results are not sorted.</p>
-- @return SearchProductsAsAdminInput structure as a key-value pair table
function M.SearchProductsAsAdminInput(args)
	assert(args, "You must provide an argument table when creating SearchProductsAsAdminInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductSource"] = args["ProductSource"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
		["SortBy"] = args["SortBy"],
		["Filters"] = args["Filters"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertSearchProductsAsAdminInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServiceActionsOutput = { ["NextPageToken"] = true, ["ServiceActionSummaries"] = true, nil }

function asserts.AssertListServiceActionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceActionsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ServiceActionSummaries"] then asserts.AssertServiceActionSummaries(struct["ServiceActionSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceActionsOutput[k], "ListServiceActionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceActionsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ServiceActionSummaries [ServiceActionSummaries] <p>An object containing information about the service actions associated with the provisioning artifact.</p>
-- @return ListServiceActionsOutput structure as a key-value pair table
function M.ListServiceActionsOutput(args)
	assert(args, "You must provide an argument table when creating ListServiceActionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ServiceActionSummaries"] = args["ServiceActionSummaries"],
	}
	asserts.AssertListServiceActionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTagOptionInput = { ["Active"] = true, ["Id"] = true, ["Value"] = true, nil }

function asserts.AssertUpdateTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagOptionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Active"] then asserts.AssertTagOptionActive(struct["Active"]) end
	if struct["Id"] then asserts.AssertTagOptionId(struct["Id"]) end
	if struct["Value"] then asserts.AssertTagOptionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTagOptionInput[k], "UpdateTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagOptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [TagOptionActive] <p>The updated active state.</p>
-- * Id [TagOptionId] <p>The TagOption identifier.</p>
-- * Value [TagOptionValue] <p>The updated value.</p>
-- Required key: Id
-- @return UpdateTagOptionInput structure as a key-value pair table
function M.UpdateTagOptionInput(args)
	assert(args, "You must provide an argument table when creating UpdateTagOptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Active"] = args["Active"],
		["Id"] = args["Id"],
		["Value"] = args["Value"],
	}
	asserts.AssertUpdateTagOptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordTag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertRecordTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordTag to be of type 'table'")
	if struct["Value"] then asserts.AssertRecordTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertRecordTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordTag[k], "RecordTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordTag
-- <p>Information about a tag, which is a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [RecordTagValue] <p>The value for this tag.</p>
-- * Key [RecordTagKey] <p>The key for this tag.</p>
-- @return RecordTag structure as a key-value pair table
function M.RecordTag(args)
	assert(args, "You must provide an argument table when creating RecordTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertRecordTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScanProvisionedProductsOutput = { ["NextPageToken"] = true, ["ProvisionedProducts"] = true, nil }

function asserts.AssertScanProvisionedProductsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanProvisionedProductsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisionedProducts"] then asserts.AssertProvisionedProductDetails(struct["ProvisionedProducts"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScanProvisionedProductsOutput[k], "ScanProvisionedProductsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanProvisionedProductsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProvisionedProducts [ProvisionedProductDetails] <p>Information about the provisioned products.</p>
-- @return ScanProvisionedProductsOutput structure as a key-value pair table
function M.ScanProvisionedProductsOutput(args)
	assert(args, "You must provide an argument table when creating ScanProvisionedProductsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProvisionedProducts"] = args["ProvisionedProducts"],
	}
	asserts.AssertScanProvisionedProductsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePortfolioShareOutput = { ["PortfolioShareToken"] = true, nil }

function asserts.AssertCreatePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareOutput to be of type 'table'")
	if struct["PortfolioShareToken"] then asserts.AssertPortfolioShareToken(struct["PortfolioShareToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioShareOutput[k], "CreatePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioShareToken [PortfolioShareToken] <p>The portfolio share unique identifier. This will only be returned if portfolio is shared to an organization node.</p>
-- @return CreatePortfolioShareOutput structure as a key-value pair table
function M.CreatePortfolioShareOutput(args)
	assert(args, "You must provide an argument table when creating CreatePortfolioShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioShareToken"] = args["PortfolioShareToken"],
	}
	asserts.AssertCreatePortfolioShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisioningArtifact = { ["CreatedTime"] = true, ["Description"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProvisioningArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifact to be of type 'table'")
	if struct["CreatedTime"] then asserts.AssertProvisioningArtifactCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifact[k], "ProvisioningArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifact
-- <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC time stamp of the creation time.</p>
-- * Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact.</p>
-- * Id [Id] <p>The identifier of the provisioning artifact.</p>
-- * Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
-- @return ProvisioningArtifact structure as a key-value pair table
function M.ProvisioningArtifact(args)
	assert(args, "You must provide an argument table when creating ProvisioningArtifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTagOptionOutput = { ["TagOptionDetail"] = true, nil }

function asserts.AssertUpdateTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then asserts.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTagOptionOutput[k], "UpdateTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagOptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagOptionDetail [TagOptionDetail] <p>Information about the TagOption.</p>
-- @return UpdateTagOptionOutput structure as a key-value pair table
function M.UpdateTagOptionOutput(args)
	assert(args, "You must provide an argument table when creating UpdateTagOptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertUpdateTagOptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDisassociateServiceActionFromProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["ServiceActionAssociations"] = true, nil }

function asserts.AssertBatchDisassociateServiceActionFromProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDisassociateServiceActionFromProvisioningArtifactInput to be of type 'table'")
	assert(struct["ServiceActionAssociations"], "Expected key ServiceActionAssociations to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ServiceActionAssociations"] then asserts.AssertServiceActionAssociations(struct["ServiceActionAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDisassociateServiceActionFromProvisioningArtifactInput[k], "BatchDisassociateServiceActionFromProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDisassociateServiceActionFromProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ServiceActionAssociations [ServiceActionAssociations] <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
-- Required key: ServiceActionAssociations
-- @return BatchDisassociateServiceActionFromProvisioningArtifactInput structure as a key-value pair table
function M.BatchDisassociateServiceActionFromProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating BatchDisassociateServiceActionFromProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ServiceActionAssociations"] = args["ServiceActionAssociations"],
	}
	asserts.AssertBatchDisassociateServiceActionFromProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductAsAdminOutput = { ["ProductViewDetail"] = true, ["TagOptions"] = true, ["ProvisioningArtifactSummaries"] = true, ["Tags"] = true, nil }

function asserts.AssertDescribeProductAsAdminOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductAsAdminOutput to be of type 'table'")
	if struct["ProductViewDetail"] then asserts.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["TagOptions"] then asserts.AssertTagOptionDetails(struct["TagOptions"]) end
	if struct["ProvisioningArtifactSummaries"] then asserts.AssertProvisioningArtifactSummaries(struct["ProvisioningArtifactSummaries"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductAsAdminOutput[k], "DescribeProductAsAdminOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductAsAdminOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewDetail [ProductViewDetail] <p>Information about the product view.</p>
-- * TagOptions [TagOptionDetails] <p>Information about the TagOptions associated with the product.</p>
-- * ProvisioningArtifactSummaries [ProvisioningArtifactSummaries] <p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>
-- * Tags [Tags] <p>Information about the tags associated with the product.</p>
-- @return DescribeProductAsAdminOutput structure as a key-value pair table
function M.DescribeProductAsAdminOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProductAsAdminOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["TagOptions"] = args["TagOptions"],
		["ProvisioningArtifactSummaries"] = args["ProvisioningArtifactSummaries"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribeProductAsAdminOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociatePrincipalWithPortfolioInput = { ["AcceptLanguage"] = true, ["PrincipalType"] = true, ["PrincipalARN"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertAssociatePrincipalWithPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatePrincipalWithPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["PrincipalARN"], "Expected key PrincipalARN to exist in table")
	assert(struct["PrincipalType"], "Expected key PrincipalType to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PrincipalType"] then asserts.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalARN"] then asserts.AssertPrincipalARN(struct["PrincipalARN"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociatePrincipalWithPortfolioInput[k], "AssociatePrincipalWithPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatePrincipalWithPortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PrincipalType [PrincipalType] <p>The principal type. The supported value is <code>IAM</code>.</p>
-- * PrincipalARN [PrincipalARN] <p>The ARN of the principal (IAM user, role, or group).</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- Required key: PrincipalARN
-- Required key: PrincipalType
-- @return AssociatePrincipalWithPortfolioInput structure as a key-value pair table
function M.AssociatePrincipalWithPortfolioInput(args)
	assert(args, "You must provide an argument table when creating AssociatePrincipalWithPortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PrincipalType"] = args["PrincipalType"],
		["PrincipalARN"] = args["PrincipalARN"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertAssociatePrincipalWithPortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServiceActionsForProvisioningArtifactOutput = { ["NextPageToken"] = true, ["ServiceActionSummaries"] = true, nil }

function asserts.AssertListServiceActionsForProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceActionsForProvisioningArtifactOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ServiceActionSummaries"] then asserts.AssertServiceActionSummaries(struct["ServiceActionSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceActionsForProvisioningArtifactOutput[k], "ListServiceActionsForProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceActionsForProvisioningArtifactOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ServiceActionSummaries [ServiceActionSummaries] <p>An object containing information about the self-service actions associated with the provisioning artifact.</p>
-- @return ListServiceActionsForProvisioningArtifactOutput structure as a key-value pair table
function M.ListServiceActionsForProvisioningArtifactOutput(args)
	assert(args, "You must provide an argument table when creating ListServiceActionsForProvisioningArtifactOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ServiceActionSummaries"] = args["ServiceActionSummaries"],
	}
	asserts.AssertListServiceActionsForProvisioningArtifactOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UsageInstruction = { ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertUsageInstruction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageInstruction to be of type 'table'")
	if struct["Type"] then asserts.AssertInstructionType(struct["Type"]) end
	if struct["Value"] then asserts.AssertInstructionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsageInstruction[k], "UsageInstruction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageInstruction
-- <p>Additional information provided by the administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [InstructionType] <p>The usage instruction type for the value.</p>
-- * Value [InstructionValue] <p>The usage instruction value for this type.</p>
-- @return UsageInstruction structure as a key-value pair table
function M.UsageInstruction(args)
	assert(args, "You must provide an argument table when creating UsageInstruction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertUsageInstruction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProvisioningArtifactInput = { ["ProvisioningArtifactId"] = true, ["Description"] = true, ["Active"] = true, ["AcceptLanguage"] = true, ["ProductId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["Active"] then asserts.AssertProvisioningArtifactActive(struct["Active"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisioningArtifactInput[k], "UpdateProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * Description [ProvisioningArtifactDescription] <p>The updated description of the provisioning artifact.</p>
-- * Active [ProvisioningArtifactActive] <p>Indicates whether the product version is active.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ProductId [Id] <p>The product identifier.</p>
-- * Name [ProvisioningArtifactName] <p>The updated name of the provisioning artifact.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return UpdateProvisioningArtifactInput structure as a key-value pair table
function M.UpdateProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating UpdateProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Description"] = args["Description"],
		["Active"] = args["Active"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProductId"] = args["ProductId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProductOutput = { ["ProductViewSummary"] = true, ["ProvisioningArtifacts"] = true, nil }

function asserts.AssertDescribeProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductOutput to be of type 'table'")
	if struct["ProductViewSummary"] then asserts.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["ProvisioningArtifacts"] then asserts.AssertProvisioningArtifacts(struct["ProvisioningArtifacts"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProductOutput[k], "DescribeProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewSummary [ProductViewSummary] <p>Summary information about the product view.</p>
-- * ProvisioningArtifacts [ProvisioningArtifacts] <p>Information about the provisioning artifacts for the specified product.</p>
-- @return DescribeProductOutput structure as a key-value pair table
function M.DescribeProductOutput(args)
	assert(args, "You must provide an argument table when creating DescribeProductOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["ProvisioningArtifacts"] = args["ProvisioningArtifacts"],
	}
	asserts.AssertDescribeProductOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourcesForTagOptionInput = { ["ResourceType"] = true, ["PageToken"] = true, ["PageSize"] = true, ["TagOptionId"] = true, nil }

function asserts.AssertListResourcesForTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForTagOptionInput to be of type 'table'")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["TagOptionId"] then asserts.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesForTagOptionInput[k], "ListResourcesForTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForTagOptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceType] <p>The resource type.</p> <ul> <li> <p> <code>Portfolio</code> </p> </li> <li> <p> <code>Product</code> </p> </li> </ul>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * TagOptionId [TagOptionId] <p>The TagOption identifier.</p>
-- Required key: TagOptionId
-- @return ListResourcesForTagOptionInput structure as a key-value pair table
function M.ListResourcesForTagOptionInput(args)
	assert(args, "You must provide an argument table when creating ListResourcesForTagOptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertListResourcesForTagOptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAWSOrganizationsAccessStatusOutput = { ["AccessStatus"] = true, nil }

function asserts.AssertGetAWSOrganizationsAccessStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAWSOrganizationsAccessStatusOutput to be of type 'table'")
	if struct["AccessStatus"] then asserts.AssertAccessStatus(struct["AccessStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAWSOrganizationsAccessStatusOutput[k], "GetAWSOrganizationsAccessStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAWSOrganizationsAccessStatusOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessStatus [AccessStatus] <p>The status of the portfolio share feature.</p>
-- @return GetAWSOrganizationsAccessStatusOutput structure as a key-value pair table
function M.GetAWSOrganizationsAccessStatusOutput(args)
	assert(args, "You must provide an argument table when creating GetAWSOrganizationsAccessStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessStatus"] = args["AccessStatus"],
	}
	asserts.AssertGetAWSOrganizationsAccessStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceDetail = { ["CreatedTime"] = true, ["Description"] = true, ["Id"] = true, ["ARN"] = true, ["Name"] = true, nil }

function asserts.AssertResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceDetail to be of type 'table'")
	if struct["CreatedTime"] then asserts.AssertResourceDetailCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertResourceDetailDescription(struct["Description"]) end
	if struct["Id"] then asserts.AssertResourceDetailId(struct["Id"]) end
	if struct["ARN"] then asserts.AssertResourceDetailARN(struct["ARN"]) end
	if struct["Name"] then asserts.AssertResourceDetailName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceDetail[k], "ResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceDetail
-- <p>Information about a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ResourceDetailCreatedTime] <p>The creation time of the resource.</p>
-- * Description [ResourceDetailDescription] <p>The description of the resource.</p>
-- * Id [ResourceDetailId] <p>The identifier of the resource.</p>
-- * ARN [ResourceDetailARN] <p>The ARN of the resource.</p>
-- * Name [ResourceDetailName] <p>The name of the resource.</p>
-- @return ResourceDetail structure as a key-value pair table
function M.ResourceDetail(args)
	assert(args, "You must provide an argument table when creating ResourceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
		["Name"] = args["Name"],
	}
	asserts.AssertResourceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecuteProvisionedProductServiceActionOutput = { ["RecordDetail"] = true, nil }

function asserts.AssertExecuteProvisionedProductServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteProvisionedProductServiceActionOutput to be of type 'table'")
	if struct["RecordDetail"] then asserts.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecuteProvisionedProductServiceActionOutput[k], "ExecuteProvisionedProductServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteProvisionedProductServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDetail [RecordDetail] <p>An object containing detailed information about the result of provisioning the product.</p>
-- @return ExecuteProvisionedProductServiceActionOutput structure as a key-value pair table
function M.ExecuteProvisionedProductServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating ExecuteProvisionedProductServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertExecuteProvisionedProductServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPortfolioAccessOutput = { ["NextPageToken"] = true, ["AccountIds"] = true, nil }

function asserts.AssertListPortfolioAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfolioAccessOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["AccountIds"] then asserts.AssertAccountIds(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPortfolioAccessOutput[k], "ListPortfolioAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfolioAccessOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * AccountIds [AccountIds] <p>Information about the AWS accounts with access to the portfolio.</p>
-- @return ListPortfolioAccessOutput structure as a key-value pair table
function M.ListPortfolioAccessOutput(args)
	assert(args, "You must provide an argument table when creating ListPortfolioAccessOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["AccountIds"] = args["AccountIds"],
	}
	asserts.AssertListPortfolioAccessOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceChangeDetail = { ["CausingEntity"] = true, ["Evaluation"] = true, ["Target"] = true, nil }

function asserts.AssertResourceChangeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChangeDetail to be of type 'table'")
	if struct["CausingEntity"] then asserts.AssertCausingEntity(struct["CausingEntity"]) end
	if struct["Evaluation"] then asserts.AssertEvaluationType(struct["Evaluation"]) end
	if struct["Target"] then asserts.AssertResourceTargetDefinition(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceChangeDetail[k], "ResourceChangeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChangeDetail
-- <p>Information about a change to a resource attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CausingEntity [CausingEntity] <p>The ID of the entity that caused the change.</p>
-- * Evaluation [EvaluationType] <p>For static evaluations, the value of the resource attribute will change and the new value is known. For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>
-- * Target [ResourceTargetDefinition] <p>Information about the resource attribute to be modified.</p>
-- @return ResourceChangeDetail structure as a key-value pair table
function M.ResourceChangeDetail(args)
	assert(args, "You must provide an argument table when creating ResourceChangeDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CausingEntity"] = args["CausingEntity"],
		["Evaluation"] = args["Evaluation"],
		["Target"] = args["Target"],
	}
	asserts.AssertResourceChangeDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateTagOptionFromResourceOutput = { nil }

function asserts.AssertDisassociateTagOptionFromResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTagOptionFromResourceOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateTagOptionFromResourceOutput[k], "DisassociateTagOptionFromResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTagOptionFromResourceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateTagOptionFromResourceOutput structure as a key-value pair table
function M.DisassociateTagOptionFromResourceOutput(args)
	assert(args, "You must provide an argument table when creating DisassociateTagOptionFromResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateTagOptionFromResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRecordHistoryOutput = { ["NextPageToken"] = true, ["RecordDetails"] = true, nil }

function asserts.AssertListRecordHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistoryOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["RecordDetails"] then asserts.AssertRecordDetails(struct["RecordDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRecordHistoryOutput[k], "ListRecordHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistoryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * RecordDetails [RecordDetails] <p>The records, in reverse chronological order.</p>
-- @return ListRecordHistoryOutput structure as a key-value pair table
function M.ListRecordHistoryOutput(args)
	assert(args, "You must provide an argument table when creating ListRecordHistoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["RecordDetails"] = args["RecordDetails"],
	}
	asserts.AssertListRecordHistoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagOptionInput = { ["Id"] = true, nil }

function asserts.AssertDescribeTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagOptionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertTagOptionId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagOptionInput[k], "DescribeTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagOptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [TagOptionId] <p>The TagOption identifier.</p>
-- Required key: Id
-- @return DescribeTagOptionInput structure as a key-value pair table
function M.DescribeTagOptionInput(args)
	assert(args, "You must provide an argument table when creating DescribeTagOptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeTagOptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConstraintInput = { ["PortfolioId"] = true, ["Description"] = true, ["Parameters"] = true, ["IdempotencyToken"] = true, ["AcceptLanguage"] = true, ["Type"] = true, ["ProductId"] = true, nil }

function asserts.AssertCreateConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConstraintInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["Description"] then asserts.AssertConstraintDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertConstraintParameters(struct["Parameters"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Type"] then asserts.AssertConstraintType(struct["Type"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConstraintInput[k], "CreateConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConstraintInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * Description [ConstraintDescription] <p>The description of the constraint.</p>
-- * Parameters [ConstraintParameters] <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p> <dl> <dt>LAUNCH</dt> <dd> <p>Specify the <code>RoleArn</code> property as follows:</p> <p>\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"</p> </dd> <dt>NOTIFICATION</dt> <dd> <p>Specify the <code>NotificationArns</code> property as follows:</p> <p>\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]</p> </dd> <dt>TEMPLATE</dt> <dd> <p>Specify the <code>Rules</code> property. For more information, see <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p> </dd> </dl>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * Type [ConstraintType] <p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: PortfolioId
-- Required key: ProductId
-- Required key: Parameters
-- Required key: Type
-- Required key: IdempotencyToken
-- @return CreateConstraintInput structure as a key-value pair table
function M.CreateConstraintInput(args)
	assert(args, "You must provide an argument table when creating CreateConstraintInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PortfolioId"] = args["PortfolioId"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Type"] = args["Type"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertCreateConstraintInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAssociateServiceActionWithProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["ServiceActionAssociations"] = true, nil }

function asserts.AssertBatchAssociateServiceActionWithProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAssociateServiceActionWithProvisioningArtifactInput to be of type 'table'")
	assert(struct["ServiceActionAssociations"], "Expected key ServiceActionAssociations to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ServiceActionAssociations"] then asserts.AssertServiceActionAssociations(struct["ServiceActionAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAssociateServiceActionWithProvisioningArtifactInput[k], "BatchAssociateServiceActionWithProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAssociateServiceActionWithProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * ServiceActionAssociations [ServiceActionAssociations] <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
-- Required key: ServiceActionAssociations
-- @return BatchAssociateServiceActionWithProvisioningArtifactInput structure as a key-value pair table
function M.BatchAssociateServiceActionWithProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating BatchAssociateServiceActionWithProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ServiceActionAssociations"] = args["ServiceActionAssociations"],
	}
	asserts.AssertBatchAssociateServiceActionWithProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagOptionOutput = { ["TagOptionDetail"] = true, nil }

function asserts.AssertCreateTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then asserts.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagOptionOutput[k], "CreateTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagOptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagOptionDetail [TagOptionDetail] <p>Information about the TagOption.</p>
-- @return CreateTagOptionOutput structure as a key-value pair table
function M.CreateTagOptionOutput(args)
	assert(args, "You must provide an argument table when creating CreateTagOptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertCreateTagOptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServiceActionsForProvisioningArtifactInput = { ["ProvisioningArtifactId"] = true, ["PageToken"] = true, ["AcceptLanguage"] = true, ["PageSize"] = true, ["ProductId"] = true, nil }

function asserts.AssertListServiceActionsForProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceActionsForProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceActionsForProvisioningArtifactInput[k], "ListServiceActionsForProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceActionsForProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * PageSize [PageSize] <p>The maximum number of items to return with this call.</p>
-- * ProductId [Id] <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return ListServiceActionsForProvisioningArtifactInput structure as a key-value pair table
function M.ListServiceActionsForProvisioningArtifactInput(args)
	assert(args, "You must provide an argument table when creating ListServiceActionsForProvisioningArtifactInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["PageToken"] = args["PageToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListServiceActionsForProvisioningArtifactInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServiceActionOutput = { ["ServiceActionDetail"] = true, nil }

function asserts.AssertDescribeServiceActionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceActionOutput to be of type 'table'")
	if struct["ServiceActionDetail"] then asserts.AssertServiceActionDetail(struct["ServiceActionDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceActionOutput[k], "DescribeServiceActionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceActionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceActionDetail [ServiceActionDetail] <p>Detailed information about the self-service action.</p>
-- @return DescribeServiceActionOutput structure as a key-value pair table
function M.DescribeServiceActionOutput(args)
	assert(args, "You must provide an argument table when creating DescribeServiceActionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceActionDetail"] = args["ServiceActionDetail"],
	}
	asserts.AssertDescribeServiceActionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionProductInput = { ["ProvisioningArtifactId"] = true, ["ProvisionedProductName"] = true, ["Tags"] = true, ["ProvisioningParameters"] = true, ["PathId"] = true, ["ProvisionToken"] = true, ["AcceptLanguage"] = true, ["NotificationArns"] = true, ["ProductId"] = true, nil }

function asserts.AssertProvisionProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionProductInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ProvisionedProductName"], "Expected key ProvisionedProductName to exist in table")
	assert(struct["ProvisionToken"], "Expected key ProvisionToken to exist in table")
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionedProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["ProvisioningParameters"] then asserts.AssertProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["PathId"] then asserts.AssertId(struct["PathId"]) end
	if struct["ProvisionToken"] then asserts.AssertIdempotencyToken(struct["ProvisionToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["NotificationArns"] then asserts.AssertNotificationArns(struct["NotificationArns"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionProductInput[k], "ProvisionProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionProductInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>
-- * Tags [Tags] <p>One or more tags.</p>
-- * ProvisioningParameters [ProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- * PathId [Id] <p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
-- * ProvisionToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the provisioning request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- * NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- Required key: ProvisionedProductName
-- Required key: ProvisionToken
-- @return ProvisionProductInput structure as a key-value pair table
function M.ProvisionProductInput(args)
	assert(args, "You must provide an argument table when creating ProvisionProductInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["Tags"] = args["Tags"],
		["ProvisioningParameters"] = args["ProvisioningParameters"],
		["PathId"] = args["PathId"],
		["ProvisionToken"] = args["ProvisionToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["NotificationArns"] = args["NotificationArns"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertProvisionProductInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisioningArtifactsOutput = { ["NextPageToken"] = true, ["ProvisioningArtifactDetails"] = true, nil }

function asserts.AssertListProvisioningArtifactsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsOutput to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisioningArtifactDetails"] then asserts.AssertProvisioningArtifactDetails(struct["ProvisioningArtifactDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisioningArtifactsOutput[k], "ListProvisioningArtifactsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
-- * ProvisioningArtifactDetails [ProvisioningArtifactDetails] <p>Information about the provisioning artifacts.</p>
-- @return ListProvisioningArtifactsOutput structure as a key-value pair table
function M.ListProvisioningArtifactsOutput(args)
	assert(args, "You must provide an argument table when creating ListProvisioningArtifactsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProvisioningArtifactDetails"] = args["ProvisioningArtifactDetails"],
	}
	asserts.AssertListProvisioningArtifactsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourcesForTagOptionOutput = { ["ResourceDetails"] = true, ["PageToken"] = true, nil }

function asserts.AssertListResourcesForTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForTagOptionOutput to be of type 'table'")
	if struct["ResourceDetails"] then asserts.AssertResourceDetails(struct["ResourceDetails"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesForTagOptionOutput[k], "ListResourcesForTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForTagOptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceDetails [ResourceDetails] <p>Information about the resources.</p>
-- * PageToken [PageToken] <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
-- @return ListResourcesForTagOptionOutput structure as a key-value pair table
function M.ListResourcesForTagOptionOutput(args)
	assert(args, "You must provide an argument table when creating ListResourcesForTagOptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceDetails"] = args["ResourceDetails"],
		["PageToken"] = args["PageToken"],
	}
	asserts.AssertListResourcesForTagOptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateTagOptionWithResourceOutput = { nil }

function asserts.AssertAssociateTagOptionWithResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTagOptionWithResourceOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateTagOptionWithResourceOutput[k], "AssociateTagOptionWithResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTagOptionWithResourceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateTagOptionWithResourceOutput structure as a key-value pair table
function M.AssociateTagOptionWithResourceOutput(args)
	assert(args, "You must provide an argument table when creating AssociateTagOptionWithResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateTagOptionWithResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePortfolioInput = { ["DisplayName"] = true, ["Description"] = true, ["ProviderName"] = true, ["Tags"] = true, ["IdempotencyToken"] = true, ["AcceptLanguage"] = true, nil }

function asserts.AssertCreatePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioInput to be of type 'table'")
	assert(struct["DisplayName"], "Expected key DisplayName to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["DisplayName"] then asserts.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["Description"] then asserts.AssertPortfolioDescription(struct["Description"]) end
	if struct["ProviderName"] then asserts.AssertProviderName(struct["ProviderName"]) end
	if struct["Tags"] then asserts.AssertAddTags(struct["Tags"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioInput[k], "CreatePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- * Description [PortfolioDescription] <p>The description of the portfolio.</p>
-- * ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- * Tags [AddTags] <p>One or more tags.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>
-- Required key: DisplayName
-- Required key: ProviderName
-- Required key: IdempotencyToken
-- @return CreatePortfolioInput structure as a key-value pair table
function M.CreatePortfolioInput(args)
	assert(args, "You must provide an argument table when creating CreatePortfolioInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["ProviderName"] = args["ProviderName"],
		["Tags"] = args["Tags"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
	}
	asserts.AssertCreatePortfolioInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedProductPlanSummary = { ["PlanName"] = true, ["ProvisioningArtifactId"] = true, ["ProvisionProductName"] = true, ["PlanId"] = true, ["PlanType"] = true, ["ProvisionProductId"] = true, nil }

function asserts.AssertProvisionedProductPlanSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductPlanSummary to be of type 'table'")
	if struct["PlanName"] then asserts.AssertProvisionedProductPlanName(struct["PlanName"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionProductName"] then asserts.AssertProvisionedProductName(struct["ProvisionProductName"]) end
	if struct["PlanId"] then asserts.AssertId(struct["PlanId"]) end
	if struct["PlanType"] then asserts.AssertProvisionedProductPlanType(struct["PlanType"]) end
	if struct["ProvisionProductId"] then asserts.AssertId(struct["ProvisionProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedProductPlanSummary[k], "ProvisionedProductPlanSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductPlanSummary
-- <p>Summary information about a plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlanName [ProvisionedProductPlanName] <p>The name of the plan.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact.</p>
-- * ProvisionProductName [ProvisionedProductName] <p>The user-friendly name of the provisioned product.</p>
-- * PlanId [Id] <p>The plan identifier.</p>
-- * PlanType [ProvisionedProductPlanType] <p>The plan type.</p>
-- * ProvisionProductId [Id] <p>The product identifier.</p>
-- @return ProvisionedProductPlanSummary structure as a key-value pair table
function M.ProvisionedProductPlanSummary(args)
	assert(args, "You must provide an argument table when creating ProvisionedProductPlanSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlanName"] = args["PlanName"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProvisionProductName"] = args["ProvisionProductName"],
		["PlanId"] = args["PlanId"],
		["PlanType"] = args["PlanType"],
		["ProvisionProductId"] = args["ProvisionProductId"],
	}
	asserts.AssertProvisionedProductPlanSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertServiceActionAssociationErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionAssociationErrorMessage to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ServiceActionAssociationErrorMessage(str)
	asserts.AssertServiceActionAssociationErrorMessage(str)
	return str
end

function asserts.AssertServiceActionDefinitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionDefinitionKey to be of type 'string'")
end

--  
function M.ServiceActionDefinitionKey(str)
	asserts.AssertServiceActionDefinitionKey(str)
	return str
end

function asserts.AssertOrganizationNodeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationNodeValue to be of type 'string'")
end

--  
function M.OrganizationNodeValue(str)
	asserts.AssertOrganizationNodeValue(str)
	return str
end

function asserts.AssertEvaluationType(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationType to be of type 'string'")
end

--  
function M.EvaluationType(str)
	asserts.AssertEvaluationType(str)
	return str
end

function asserts.AssertPortfolioName(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioName to be of type 'string'")
end

--  
function M.PortfolioName(str)
	asserts.AssertPortfolioName(str)
	return str
end

function asserts.AssertProvisioningArtifactPropertyName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactPropertyName to be of type 'string'")
end

--  
function M.ProvisioningArtifactPropertyName(str)
	asserts.AssertProvisioningArtifactPropertyName(str)
	return str
end

function asserts.AssertProvisioningArtifactDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactDescription to be of type 'string'")
end

--  
function M.ProvisioningArtifactDescription(str)
	asserts.AssertProvisioningArtifactDescription(str)
	return str
end

function asserts.AssertPrincipalARN(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalARN to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrincipalARN(str)
	asserts.AssertPrincipalARN(str)
	return str
end

function asserts.AssertProductViewOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewOwner to be of type 'string'")
	assert(#str <= 8191, "Expected string to be max 8191 characters")
end

--  
function M.ProductViewOwner(str)
	asserts.AssertProductViewOwner(str)
	return str
end

function asserts.AssertProductViewAggregationType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewAggregationType to be of type 'string'")
end

--  
function M.ProductViewAggregationType(str)
	asserts.AssertProductViewAggregationType(str)
	return str
end

function asserts.AssertLastRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected LastRequestId to be of type 'string'")
end

--  
function M.LastRequestId(str)
	asserts.AssertLastRequestId(str)
	return str
end

function asserts.AssertRecordTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordTagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordTagKey(str)
	asserts.AssertRecordTagKey(str)
	return str
end

function asserts.AssertProvisionedProductPlanName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductPlanName to be of type 'string'")
end

--  
function M.ProvisionedProductPlanName(str)
	asserts.AssertProvisionedProductPlanName(str)
	return str
end

function asserts.AssertServiceActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ServiceActionName(str)
	asserts.AssertServiceActionName(str)
	return str
end

function asserts.AssertSearchFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchFilterKey to be of type 'string'")
end

--  
function M.SearchFilterKey(str)
	asserts.AssertSearchFilterKey(str)
	return str
end

function asserts.AssertOrganizationNodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationNodeType to be of type 'string'")
end

--  
function M.OrganizationNodeType(str)
	asserts.AssertOrganizationNodeType(str)
	return str
end

function asserts.AssertProvisioningArtifactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactType to be of type 'string'")
end

--  
function M.ProvisioningArtifactType(str)
	asserts.AssertProvisioningArtifactType(str)
	return str
end

function asserts.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	asserts.AssertChangeAction(str)
	return str
end

function asserts.AssertCloudWatchDashboardName(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchDashboardName to be of type 'string'")
end

--  
function M.CloudWatchDashboardName(str)
	asserts.AssertCloudWatchDashboardName(str)
	return str
end

function asserts.AssertPortfolioDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioDescription to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.PortfolioDescription(str)
	asserts.AssertPortfolioDescription(str)
	return str
end

function asserts.AssertProvisionedProductViewFilterBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductViewFilterBy to be of type 'string'")
end

--  
function M.ProvisionedProductViewFilterBy(str)
	asserts.AssertProvisionedProductViewFilterBy(str)
	return str
end

function asserts.AssertProvisioningArtifactInfoValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactInfoValue to be of type 'string'")
end

--  
function M.ProvisioningArtifactInfoValue(str)
	asserts.AssertProvisioningArtifactInfoValue(str)
	return str
end

function asserts.AssertInstructionType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstructionType to be of type 'string'")
end

--  
function M.InstructionType(str)
	asserts.AssertInstructionType(str)
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

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertPhysicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected PhysicalResourceId to be of type 'string'")
end

--  
function M.PhysicalResourceId(str)
	asserts.AssertPhysicalResourceId(str)
	return str
end

function asserts.AssertProvisioningArtifactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactName to be of type 'string'")
end

--  
function M.ProvisioningArtifactName(str)
	asserts.AssertProvisioningArtifactName(str)
	return str
end

function asserts.AssertPropertyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PropertyName to be of type 'string'")
end

--  
function M.PropertyName(str)
	asserts.AssertPropertyName(str)
	return str
end

function asserts.AssertServiceActionAssociationErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionAssociationErrorCode to be of type 'string'")
end

--  
function M.ServiceActionAssociationErrorCode(str)
	asserts.AssertServiceActionAssociationErrorCode(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertConstraintParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintParameters to be of type 'string'")
end

--  
function M.ConstraintParameters(str)
	asserts.AssertConstraintParameters(str)
	return str
end

function asserts.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProviderName(str)
	asserts.AssertProviderName(str)
	return str
end

function asserts.AssertResourceDetailDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailDescription to be of type 'string'")
end

--  
function M.ResourceDetailDescription(str)
	asserts.AssertResourceDetailDescription(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertOutputKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputKey to be of type 'string'")
end

--  
function M.OutputKey(str)
	asserts.AssertOutputKey(str)
	return str
end

function asserts.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdempotencyToken(str)
	asserts.AssertIdempotencyToken(str)
	return str
end

function asserts.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	asserts.AssertSortOrder(str)
	return str
end

function asserts.AssertNotificationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NotificationArn(str)
	asserts.AssertNotificationArn(str)
	return str
end

function asserts.AssertResourceAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceAttribute to be of type 'string'")
end

--  
function M.ResourceAttribute(str)
	asserts.AssertResourceAttribute(str)
	return str
end

function asserts.AssertProvisionedProductName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProvisionedProductName(str)
	asserts.AssertProvisionedProductName(str)
	return str
end

function asserts.AssertProvisionedProductStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductStatus to be of type 'string'")
end

--  
function M.ProvisionedProductStatus(str)
	asserts.AssertProvisionedProductStatus(str)
	return str
end

function asserts.AssertTagOptionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagOptionKey(str)
	asserts.AssertTagOptionKey(str)
	return str
end

function asserts.AssertProductViewName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewName to be of type 'string'")
	assert(#str <= 8191, "Expected string to be max 8191 characters")
end

--  
function M.ProductViewName(str)
	asserts.AssertProductViewName(str)
	return str
end

function asserts.AssertInstructionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstructionValue to be of type 'string'")
end

--  
function M.InstructionValue(str)
	asserts.AssertInstructionValue(str)
	return str
end

function asserts.AssertSupportEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportEmail to be of type 'string'")
	assert(#str <= 254, "Expected string to be max 254 characters")
end

--  
function M.SupportEmail(str)
	asserts.AssertSupportEmail(str)
	return str
end

function asserts.AssertUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected UserArn to be of type 'string'")
end

--  
function M.UserArn(str)
	asserts.AssertUserArn(str)
	return str
end

function asserts.AssertProvisioningArtifactInfoKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactInfoKey to be of type 'string'")
end

--  
function M.ProvisioningArtifactInfoKey(str)
	asserts.AssertProvisioningArtifactInfoKey(str)
	return str
end

function asserts.AssertServiceActionDefinitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionDefinitionType to be of type 'string'")
end

--  
function M.ServiceActionDefinitionType(str)
	asserts.AssertServiceActionDefinitionType(str)
	return str
end

function asserts.AssertReplacement(str)
	assert(str)
	assert(type(str) == "string", "Expected Replacement to be of type 'string'")
end

--  
function M.Replacement(str)
	asserts.AssertReplacement(str)
	return str
end

function asserts.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	asserts.AssertParameterType(str)
	return str
end

function asserts.AssertSortField(str)
	assert(str)
	assert(type(str) == "string", "Expected SortField to be of type 'string'")
end

--  
function M.SortField(str)
	asserts.AssertSortField(str)
	return str
end

function asserts.AssertProductType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductType to be of type 'string'")
	assert(#str <= 8191, "Expected string to be max 8191 characters")
end

--  
function M.ProductType(str)
	asserts.AssertProductType(str)
	return str
end

function asserts.AssertPortfolioShareToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioShareToken to be of type 'string'")
end

--  
function M.PortfolioShareToken(str)
	asserts.AssertPortfolioShareToken(str)
	return str
end

function asserts.AssertAccessLevelFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLevelFilterValue to be of type 'string'")
end

--  
function M.AccessLevelFilterValue(str)
	asserts.AssertAccessLevelFilterValue(str)
	return str
end

function asserts.AssertRecordStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordStatus to be of type 'string'")
end

--  
function M.RecordStatus(str)
	asserts.AssertRecordStatus(str)
	return str
end

function asserts.AssertParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterValue to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.ParameterValue(str)
	asserts.AssertParameterValue(str)
	return str
end

function asserts.AssertServiceActionDefinitionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionDefinitionValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ServiceActionDefinitionValue(str)
	asserts.AssertServiceActionDefinitionValue(str)
	return str
end

function asserts.AssertCausingEntity(str)
	assert(str)
	assert(type(str) == "string", "Expected CausingEntity to be of type 'string'")
end

--  
function M.CausingEntity(str)
	asserts.AssertCausingEntity(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertAccessLevelFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLevelFilterKey to be of type 'string'")
end

--  
function M.AccessLevelFilterKey(str)
	asserts.AssertAccessLevelFilterKey(str)
	return str
end

function asserts.AssertProvisionedProductStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductStatusMessage to be of type 'string'")
end

--  
function M.ProvisionedProductStatusMessage(str)
	asserts.AssertProvisionedProductStatusMessage(str)
	return str
end

function asserts.AssertProductViewFilterBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewFilterBy to be of type 'string'")
end

--  
function M.ProductViewFilterBy(str)
	asserts.AssertProductViewFilterBy(str)
	return str
end

function asserts.AssertProductViewSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewSortBy to be of type 'string'")
end

--  
function M.ProductViewSortBy(str)
	asserts.AssertProductViewSortBy(str)
	return str
end

function asserts.AssertProductSource(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductSource to be of type 'string'")
end

--  
function M.ProductSource(str)
	asserts.AssertProductSource(str)
	return str
end

function asserts.AssertPrincipalType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalType to be of type 'string'")
end

--  
function M.PrincipalType(str)
	asserts.AssertPrincipalType(str)
	return str
end

function asserts.AssertProductArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProductArn(str)
	asserts.AssertProductArn(str)
	return str
end

function asserts.AssertServiceActionDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceActionDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ServiceActionDescription(str)
	asserts.AssertServiceActionDescription(str)
	return str
end

function asserts.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(#str <= 2024, "Expected string to be max 2024 characters")
end

--  
function M.PageToken(str)
	asserts.AssertPageToken(str)
	return str
end

function asserts.AssertRecordTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordTagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordTagValue(str)
	asserts.AssertRecordTagValue(str)
	return str
end

function asserts.AssertResourceDetailName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailName to be of type 'string'")
end

--  
function M.ResourceDetailName(str)
	asserts.AssertResourceDetailName(str)
	return str
end

function asserts.AssertCopyOption(str)
	assert(str)
	assert(type(str) == "string", "Expected CopyOption to be of type 'string'")
end

--  
function M.CopyOption(str)
	asserts.AssertCopyOption(str)
	return str
end

function asserts.AssertProvisionedProductType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductType to be of type 'string'")
end

--  
function M.ProvisionedProductType(str)
	asserts.AssertProvisionedProductType(str)
	return str
end

function asserts.AssertTagOptionId(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagOptionId(str)
	asserts.AssertTagOptionId(str)
	return str
end

function asserts.AssertPhysicalId(str)
	assert(str)
	assert(type(str) == "string", "Expected PhysicalId to be of type 'string'")
end

--  
function M.PhysicalId(str)
	asserts.AssertPhysicalId(str)
	return str
end

function asserts.AssertProvisionedProductViewFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductViewFilterValue to be of type 'string'")
end

--  
function M.ProvisionedProductViewFilterValue(str)
	asserts.AssertProvisionedProductViewFilterValue(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterKey(str)
	asserts.AssertParameterKey(str)
	return str
end

function asserts.AssertErrorDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorDescription to be of type 'string'")
end

--  
function M.ErrorDescription(str)
	asserts.AssertErrorDescription(str)
	return str
end

function asserts.AssertStatusDetail(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusDetail to be of type 'string'")
end

--  
function M.StatusDetail(str)
	asserts.AssertStatusDetail(str)
	return str
end

function asserts.AssertAcceptLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected AcceptLanguage to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.AcceptLanguage(str)
	asserts.AssertAcceptLanguage(str)
	return str
end

function asserts.AssertProvisionedProductPlanStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductPlanStatus to be of type 'string'")
end

--  
function M.ProvisionedProductPlanStatus(str)
	asserts.AssertProvisionedProductPlanStatus(str)
	return str
end

function asserts.AssertSupportUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportUrl to be of type 'string'")
	assert(#str <= 2083, "Expected string to be max 2083 characters")
end

--  
function M.SupportUrl(str)
	asserts.AssertSupportUrl(str)
	return str
end

function asserts.AssertProvisionedProductNameOrArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductNameOrArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProvisionedProductNameOrArn(str)
	asserts.AssertProvisionedProductNameOrArn(str)
	return str
end

function asserts.AssertUserArnSession(str)
	assert(str)
	assert(type(str) == "string", "Expected UserArnSession to be of type 'string'")
end

--  
function M.UserArnSession(str)
	asserts.AssertUserArnSession(str)
	return str
end

function asserts.AssertPortfolioShareType(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioShareType to be of type 'string'")
end

--  
function M.PortfolioShareType(str)
	asserts.AssertPortfolioShareType(str)
	return str
end

function asserts.AssertLogicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected LogicalResourceId to be of type 'string'")
end

--  
function M.LogicalResourceId(str)
	asserts.AssertLogicalResourceId(str)
	return str
end

function asserts.AssertProductViewDistributor(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewDistributor to be of type 'string'")
end

--  
function M.ProductViewDistributor(str)
	asserts.AssertProductViewDistributor(str)
	return str
end

function asserts.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Id(str)
	asserts.AssertId(str)
	return str
end

function asserts.AssertRecordType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordType to be of type 'string'")
end

--  
function M.RecordType(str)
	asserts.AssertRecordType(str)
	return str
end

function asserts.AssertProvisioningArtifactPropertyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactPropertyValue to be of type 'string'")
end

--  
function M.ProvisioningArtifactPropertyValue(str)
	asserts.AssertProvisioningArtifactPropertyValue(str)
	return str
end

function asserts.AssertShareStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareStatus to be of type 'string'")
end

--  
function M.ShareStatus(str)
	asserts.AssertShareStatus(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertPlanResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlanResourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PlanResourceType(str)
	asserts.AssertPlanResourceType(str)
	return str
end

function asserts.AssertStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusMessage to be of type 'string'")
end

--  
function M.StatusMessage(str)
	asserts.AssertStatusMessage(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertProductViewShortDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewShortDescription to be of type 'string'")
	assert(#str <= 8191, "Expected string to be max 8191 characters")
end

--  
function M.ProductViewShortDescription(str)
	asserts.AssertProductViewShortDescription(str)
	return str
end

function asserts.AssertConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConstraintType(str)
	asserts.AssertConstraintType(str)
	return str
end

function asserts.AssertCopyProductStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CopyProductStatus to be of type 'string'")
end

--  
function M.CopyProductStatus(str)
	asserts.AssertCopyProductStatus(str)
	return str
end

function asserts.AssertProvisionedProductId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductId to be of type 'string'")
end

--  
function M.ProvisionedProductId(str)
	asserts.AssertProvisionedProductId(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertAllowedValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedValue to be of type 'string'")
end

--  
function M.AllowedValue(str)
	asserts.AssertAllowedValue(str)
	return str
end

function asserts.AssertResourceDetailARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailARN to be of type 'string'")
end

--  
function M.ResourceDetailARN(str)
	asserts.AssertResourceDetailARN(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertResourceDetailId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailId to be of type 'string'")
end

--  
function M.ResourceDetailId(str)
	asserts.AssertResourceDetailId(str)
	return str
end

function asserts.AssertAccessStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessStatus to be of type 'string'")
end

--  
function M.AccessStatus(str)
	asserts.AssertAccessStatus(str)
	return str
end

function asserts.AssertPortfolioDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioDisplayName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PortfolioDisplayName(str)
	asserts.AssertPortfolioDisplayName(str)
	return str
end

function asserts.AssertSearchFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchFilterValue to be of type 'string'")
end

--  
function M.SearchFilterValue(str)
	asserts.AssertSearchFilterValue(str)
	return str
end

function asserts.AssertError(str)
	assert(str)
	assert(type(str) == "string", "Expected Error to be of type 'string'")
end

--  
function M.Error(str)
	asserts.AssertError(str)
	return str
end

function asserts.AssertConstraintDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintDescription to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.ConstraintDescription(str)
	asserts.AssertConstraintDescription(str)
	return str
end

function asserts.AssertOutputValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputValue to be of type 'string'")
end

--  
function M.OutputValue(str)
	asserts.AssertOutputValue(str)
	return str
end

function asserts.AssertProvisionedProductPlanType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductPlanType to be of type 'string'")
end

--  
function M.ProvisionedProductPlanType(str)
	asserts.AssertProvisionedProductPlanType(str)
	return str
end

function asserts.AssertRequiresRecreation(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiresRecreation to be of type 'string'")
end

--  
function M.RequiresRecreation(str)
	asserts.AssertRequiresRecreation(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultValue to be of type 'string'")
end

--  
function M.DefaultValue(str)
	asserts.AssertDefaultValue(str)
	return str
end

function asserts.AssertTagOptionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagOptionValue(str)
	asserts.AssertTagOptionValue(str)
	return str
end

function asserts.AssertProductViewFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewFilterValue to be of type 'string'")
end

--  
function M.ProductViewFilterValue(str)
	asserts.AssertProductViewFilterValue(str)
	return str
end

function asserts.AssertSupportDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportDescription to be of type 'string'")
	assert(#str <= 8191, "Expected string to be max 8191 characters")
end

--  
function M.SupportDescription(str)
	asserts.AssertSupportDescription(str)
	return str
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertSearchProvisionedProductsPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SearchProvisionedProductsPageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.SearchProvisionedProductsPageSize(integer)
	asserts.AssertSearchProvisionedProductsPageSize(integer)
	return integer
end

function asserts.AssertTotalResultsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TotalResultsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TotalResultsCount(integer)
	asserts.AssertTotalResultsCount(integer)
	return integer
end

function asserts.AssertApproximateCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ApproximateCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ApproximateCount(integer)
	asserts.AssertApproximateCount(integer)
	return integer
end

function asserts.AssertNoEcho(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoEcho to be of type 'boolean'")
end

function M.NoEcho(boolean)
	asserts.AssertNoEcho(boolean)
	return boolean
end

function asserts.AssertIgnoreErrors(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IgnoreErrors to be of type 'boolean'")
end

function M.IgnoreErrors(boolean)
	asserts.AssertIgnoreErrors(boolean)
	return boolean
end

function asserts.AssertProvisioningArtifactActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ProvisioningArtifactActive to be of type 'boolean'")
end

function M.ProvisioningArtifactActive(boolean)
	asserts.AssertProvisioningArtifactActive(boolean)
	return boolean
end

function asserts.AssertVerbose(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Verbose to be of type 'boolean'")
end

function M.Verbose(boolean)
	asserts.AssertVerbose(boolean)
	return boolean
end

function asserts.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	asserts.AssertUsePreviousValue(boolean)
	return boolean
end

function asserts.AssertTagOptionActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TagOptionActive to be of type 'boolean'")
end

function M.TagOptionActive(boolean)
	asserts.AssertTagOptionActive(boolean)
	return boolean
end

function asserts.AssertHasDefaultPath(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HasDefaultPath to be of type 'boolean'")
end

function M.HasDefaultPath(boolean)
	asserts.AssertHasDefaultPath(boolean)
	return boolean
end

function asserts.AssertProvisionedProductFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected ProvisionedProductFilters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertProvisionedProductViewFilterBy(k)
		asserts.AssertProvisionedProductViewFilterValues(v)
	end
end

function M.ProvisionedProductFilters(map)
	asserts.AssertProvisionedProductFilters(map)
	return map
end

function asserts.AssertProvisioningArtifactInfo(map)
	assert(map)
	assert(type(map) == "table", "Expected ProvisioningArtifactInfo to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertProvisioningArtifactInfoKey(k)
		asserts.AssertProvisioningArtifactInfoValue(v)
	end
end

function M.ProvisioningArtifactInfo(map)
	asserts.AssertProvisioningArtifactInfo(map)
	return map
end

function asserts.AssertProductViewFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected ProductViewFilters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertProductViewFilterBy(k)
		asserts.AssertProductViewFilterValues(v)
	end
end

function M.ProductViewFilters(map)
	asserts.AssertProductViewFilters(map)
	return map
end

function asserts.AssertProductViewAggregations(map)
	assert(map)
	assert(type(map) == "table", "Expected ProductViewAggregations to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertProductViewAggregationType(k)
		asserts.AssertProductViewAggregationValues(v)
	end
end

function M.ProductViewAggregations(map)
	asserts.AssertProductViewAggregations(map)
	return map
end

function asserts.AssertSourceProvisioningArtifactPropertiesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SourceProvisioningArtifactPropertiesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertProvisioningArtifactPropertyName(k)
		asserts.AssertProvisioningArtifactPropertyValue(v)
	end
end

function M.SourceProvisioningArtifactPropertiesMap(map)
	asserts.AssertSourceProvisioningArtifactPropertiesMap(map)
	return map
end

function asserts.AssertServiceActionDefinitionMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ServiceActionDefinitionMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertServiceActionDefinitionKey(k)
		asserts.AssertServiceActionDefinitionValue(v)
	end
end

function M.ServiceActionDefinitionMap(map)
	asserts.AssertServiceActionDefinitionMap(map)
	return map
end

function asserts.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	asserts.AssertCreationTime(timestamp)
	return timestamp
end

function asserts.AssertResourceDetailCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceDetailCreatedTime to be of type 'string'")
end

function M.ResourceDetailCreatedTime(timestamp)
	asserts.AssertResourceDetailCreatedTime(timestamp)
	return timestamp
end

function asserts.AssertUpdatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdatedTime to be of type 'string'")
end

function M.UpdatedTime(timestamp)
	asserts.AssertUpdatedTime(timestamp)
	return timestamp
end

function asserts.AssertCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTime to be of type 'string'")
end

function M.CreatedTime(timestamp)
	asserts.AssertCreatedTime(timestamp)
	return timestamp
end

function asserts.AssertProvisioningArtifactCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ProvisioningArtifactCreatedTime to be of type 'string'")
end

function M.ProvisioningArtifactCreatedTime(timestamp)
	asserts.AssertProvisioningArtifactCreatedTime(timestamp)
	return timestamp
end

function asserts.AssertTagOptionDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagOptionDetail(v)
	end
end

--  
-- List of TagOptionDetail objects
function M.TagOptionDetails(list)
	asserts.AssertTagOptionDetails(list)
	return list
end

function asserts.AssertProvisionedProductViewFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedProductViewFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisionedProductViewFilterValue(v)
	end
end

--  
-- List of ProvisionedProductViewFilterValue objects
function M.ProvisionedProductViewFilterValues(list)
	asserts.AssertProvisionedProductViewFilterValues(list)
	return list
end

function asserts.AssertProvisioningArtifactSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningArtifactSummary(v)
	end
end

--  
-- List of ProvisioningArtifactSummary objects
function M.ProvisioningArtifactSummaries(list)
	asserts.AssertProvisioningArtifactSummaries(list)
	return list
end

function asserts.AssertAllowedValues(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedValue(v)
	end
end

--  
-- List of AllowedValue objects
function M.AllowedValues(list)
	asserts.AssertAllowedValues(list)
	return list
end

function asserts.AssertProductViewFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProductViewFilterValue(v)
	end
end

--  
-- List of ProductViewFilterValue objects
function M.ProductViewFilterValues(list)
	asserts.AssertProductViewFilterValues(list)
	return list
end

function asserts.AssertUsageInstructions(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageInstructions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUsageInstruction(v)
	end
end

--  
-- List of UsageInstruction objects
function M.UsageInstructions(list)
	asserts.AssertUsageInstructions(list)
	return list
end

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end

function asserts.AssertConstraintSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ConstraintSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConstraintSummary(v)
	end
end

--  
-- List of ConstraintSummary objects
function M.ConstraintSummaries(list)
	asserts.AssertConstraintSummaries(list)
	return list
end

function asserts.AssertCloudWatchDashboards(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchDashboards to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchDashboard(v)
	end
end

--  
-- List of CloudWatchDashboard objects
function M.CloudWatchDashboards(list)
	asserts.AssertCloudWatchDashboards(list)
	return list
end

function asserts.AssertProvisioningArtifactParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningArtifactParameter(v)
	end
end

--  
-- List of ProvisioningArtifactParameter objects
function M.ProvisioningArtifactParameters(list)
	asserts.AssertProvisioningArtifactParameters(list)
	return list
end

function asserts.AssertNamespaces(list)
	assert(list)
	assert(type(list) == "table", "Expected Namespaces to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.Namespaces(list)
	asserts.AssertNamespaces(list)
	return list
end

function asserts.AssertRecordTags(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordTags to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertRecordTag(v)
	end
end

--  
-- List of RecordTag objects
function M.RecordTags(list)
	asserts.AssertRecordTags(list)
	return list
end

function asserts.AssertOrganizationNodes(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationNodes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrganizationNode(v)
	end
end

--  
-- List of OrganizationNode objects
function M.OrganizationNodes(list)
	asserts.AssertOrganizationNodes(list)
	return list
end

function asserts.AssertProvisionedProductPlans(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedProductPlans to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisionedProductPlanSummary(v)
	end
end

--  
-- List of ProvisionedProductPlanSummary objects
function M.ProvisionedProductPlans(list)
	asserts.AssertProvisionedProductPlans(list)
	return list
end

function asserts.AssertResourceChanges(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceChanges to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceChange(v)
	end
end

--  
-- List of ResourceChange objects
function M.ResourceChanges(list)
	asserts.AssertResourceChanges(list)
	return list
end

function asserts.AssertServiceActionAssociations(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceActionAssociations to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertServiceActionAssociation(v)
	end
end

--  
-- List of ServiceActionAssociation objects
function M.ServiceActionAssociations(list)
	asserts.AssertServiceActionAssociations(list)
	return list
end

function asserts.AssertShareErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ShareErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertShareError(v)
	end
end

--  
-- List of ShareError objects
function M.ShareErrors(list)
	asserts.AssertShareErrors(list)
	return list
end

function asserts.AssertNotificationArns(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationArns to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertNotificationArn(v)
	end
end

--  
-- List of NotificationArn objects
function M.NotificationArns(list)
	asserts.AssertNotificationArns(list)
	return list
end

function asserts.AssertTagOptionValues(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagOptionValue(v)
	end
end

--  
-- List of TagOptionValue objects
function M.TagOptionValues(list)
	asserts.AssertTagOptionValues(list)
	return list
end

function asserts.AssertProductViewAggregationValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewAggregationValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProductViewAggregationValue(v)
	end
end

--  
-- List of ProductViewAggregationValue objects
function M.ProductViewAggregationValues(list)
	asserts.AssertProductViewAggregationValues(list)
	return list
end

function asserts.AssertUpdateProvisioningParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected UpdateProvisioningParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpdateProvisioningParameter(v)
	end
end

--  
-- List of UpdateProvisioningParameter objects
function M.UpdateProvisioningParameters(list)
	asserts.AssertUpdateProvisioningParameters(list)
	return list
end

function asserts.AssertServiceActionSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceActionSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceActionSummary(v)
	end
end

--  
-- List of ServiceActionSummary objects
function M.ServiceActionSummaries(list)
	asserts.AssertServiceActionSummaries(list)
	return list
end

function asserts.AssertSourceProvisioningArtifactProperties(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceProvisioningArtifactProperties to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSourceProvisioningArtifactPropertiesMap(v)
	end
end

--  
-- List of SourceProvisioningArtifactPropertiesMap objects
function M.SourceProvisioningArtifactProperties(list)
	asserts.AssertSourceProvisioningArtifactProperties(list)
	return list
end

function asserts.AssertRecordErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecordError(v)
	end
end

--  
-- List of RecordError objects
function M.RecordErrors(list)
	asserts.AssertRecordErrors(list)
	return list
end

function asserts.AssertCopyOptions(list)
	assert(list)
	assert(type(list) == "table", "Expected CopyOptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCopyOption(v)
	end
end

--  
-- List of CopyOption objects
function M.CopyOptions(list)
	asserts.AssertCopyOptions(list)
	return list
end

function asserts.AssertAccountIds(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.AccountIds(list)
	asserts.AssertAccountIds(list)
	return list
end

function asserts.AssertSuccessfulShares(list)
	assert(list)
	assert(type(list) == "table", "Expected SuccessfulShares to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.SuccessfulShares(list)
	asserts.AssertSuccessfulShares(list)
	return list
end

function asserts.AssertFailedServiceActionAssociations(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedServiceActionAssociations to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertFailedServiceActionAssociation(v)
	end
end

--  
-- List of FailedServiceActionAssociation objects
function M.FailedServiceActionAssociations(list)
	asserts.AssertFailedServiceActionAssociations(list)
	return list
end

function asserts.AssertProductViewDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProductViewDetail(v)
	end
end

--  
-- List of ProductViewDetail objects
function M.ProductViewDetails(list)
	asserts.AssertProductViewDetails(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertResourceDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceDetail(v)
	end
end

--  
-- List of ResourceDetail objects
function M.ResourceDetails(list)
	asserts.AssertResourceDetails(list)
	return list
end

function asserts.AssertProvisioningParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningParameter(v)
	end
end

--  
-- List of ProvisioningParameter objects
function M.ProvisioningParameters(list)
	asserts.AssertProvisioningParameters(list)
	return list
end

function asserts.AssertProvisionedProductDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedProductDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisionedProductDetail(v)
	end
end

--  
-- List of ProvisionedProductDetail objects
function M.ProvisionedProductDetails(list)
	asserts.AssertProvisionedProductDetails(list)
	return list
end

function asserts.AssertResourceChangeDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceChangeDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceChangeDetail(v)
	end
end

--  
-- List of ResourceChangeDetail objects
function M.ResourceChangeDetails(list)
	asserts.AssertResourceChangeDetails(list)
	return list
end

function asserts.AssertConstraintDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ConstraintDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConstraintDetail(v)
	end
end

--  
-- List of ConstraintDetail objects
function M.ConstraintDetails(list)
	asserts.AssertConstraintDetails(list)
	return list
end

function asserts.AssertScope(list)
	assert(list)
	assert(type(list) == "table", "Expected Scope to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceAttribute(v)
	end
end

--  
-- List of ResourceAttribute objects
function M.Scope(list)
	asserts.AssertScope(list)
	return list
end

function asserts.AssertRecordOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordOutputs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecordOutput(v)
	end
end

--  
-- List of RecordOutput objects
function M.RecordOutputs(list)
	asserts.AssertRecordOutputs(list)
	return list
end

function asserts.AssertLaunchPathSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchPathSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLaunchPathSummary(v)
	end
end

--  
-- List of LaunchPathSummary objects
function M.LaunchPathSummaries(list)
	asserts.AssertLaunchPathSummaries(list)
	return list
end

function asserts.AssertPortfolioDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected PortfolioDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPortfolioDetail(v)
	end
end

--  
-- List of PortfolioDetail objects
function M.PortfolioDetails(list)
	asserts.AssertPortfolioDetails(list)
	return list
end

function asserts.AssertPrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected Principals to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrincipal(v)
	end
end

--  
-- List of Principal objects
function M.Principals(list)
	asserts.AssertPrincipals(list)
	return list
end

function asserts.AssertRecordDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecordDetail(v)
	end
end

--  
-- List of RecordDetail objects
function M.RecordDetails(list)
	asserts.AssertRecordDetails(list)
	return list
end

function asserts.AssertProvisionedProductAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedProductAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisionedProductAttribute(v)
	end
end

--  
-- List of ProvisionedProductAttribute objects
function M.ProvisionedProductAttributes(list)
	asserts.AssertProvisionedProductAttributes(list)
	return list
end

function asserts.AssertAddTags(list)
	assert(list)
	assert(type(list) == "table", "Expected AddTags to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.AddTags(list)
	asserts.AssertAddTags(list)
	return list
end

function asserts.AssertProvisioningArtifacts(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifacts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningArtifact(v)
	end
end

--  
-- List of ProvisioningArtifact objects
function M.ProvisioningArtifacts(list)
	asserts.AssertProvisioningArtifacts(list)
	return list
end

function asserts.AssertProvisioningArtifactDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningArtifactDetail(v)
	end
end

--  
-- List of ProvisioningArtifactDetail objects
function M.ProvisioningArtifactDetails(list)
	asserts.AssertProvisioningArtifactDetails(list)
	return list
end

function asserts.AssertProvisioningArtifactViews(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactViews to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisioningArtifactView(v)
	end
end

--  
-- List of ProvisioningArtifactView objects
function M.ProvisioningArtifactViews(list)
	asserts.AssertProvisioningArtifactViews(list)
	return list
end

function asserts.AssertTagOptionSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagOptionSummary(v)
	end
end

--  
-- List of TagOptionSummary objects
function M.TagOptionSummaries(list)
	asserts.AssertTagOptionSummaries(list)
	return list
end

function asserts.AssertProductViewSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProductViewSummary(v)
	end
end

--  
-- List of ProductViewSummary objects
function M.ProductViewSummaries(list)
	asserts.AssertProductViewSummaries(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "servicecatalog.amazonaws.com"
		end
	end
	local ss = { "servicecatalog" }
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
--- Call ExecuteProvisionedProductPlan asynchronously, invoking a callback when done
-- @param ExecuteProvisionedProductPlanInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExecuteProvisionedProductPlanAsync(ExecuteProvisionedProductPlanInput, cb)
	assert(ExecuteProvisionedProductPlanInput, "You must provide a ExecuteProvisionedProductPlanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ExecuteProvisionedProductPlan",
	}
	for header,value in pairs(ExecuteProvisionedProductPlanInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ExecuteProvisionedProductPlanInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExecuteProvisionedProductPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExecuteProvisionedProductPlanInput
-- @return response
-- @return error_type
-- @return error_message
function M.ExecuteProvisionedProductPlanSync(ExecuteProvisionedProductPlanInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExecuteProvisionedProductPlanAsync(ExecuteProvisionedProductPlanInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConstraint asynchronously, invoking a callback when done
-- @param CreateConstraintInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConstraintAsync(CreateConstraintInput, cb)
	assert(CreateConstraintInput, "You must provide a CreateConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateConstraint",
	}
	for header,value in pairs(CreateConstraintInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConstraintInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConstraint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConstraintInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConstraintSync(CreateConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConstraintAsync(CreateConstraintInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProductAsAdmin asynchronously, invoking a callback when done
-- @param DescribeProductAsAdminInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProductAsAdminAsync(DescribeProductAsAdminInput, cb)
	assert(DescribeProductAsAdminInput, "You must provide a DescribeProductAsAdminInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductAsAdmin",
	}
	for header,value in pairs(DescribeProductAsAdminInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProductAsAdminInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProductAsAdmin synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProductAsAdminInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProductAsAdminSync(DescribeProductAsAdminInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductAsAdminAsync(DescribeProductAsAdminInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateProductWithPortfolio asynchronously, invoking a callback when done
-- @param AssociateProductWithPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateProductWithPortfolioAsync(AssociateProductWithPortfolioInput, cb)
	assert(AssociateProductWithPortfolioInput, "You must provide a AssociateProductWithPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateProductWithPortfolio",
	}
	for header,value in pairs(AssociateProductWithPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateProductWithPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateProductWithPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateProductWithPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateProductWithPortfolioSync(AssociateProductWithPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateProductWithPortfolioAsync(AssociateProductWithPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPrincipalsForPortfolio asynchronously, invoking a callback when done
-- @param ListPrincipalsForPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPrincipalsForPortfolioAsync(ListPrincipalsForPortfolioInput, cb)
	assert(ListPrincipalsForPortfolioInput, "You must provide a ListPrincipalsForPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPrincipalsForPortfolio",
	}
	for header,value in pairs(ListPrincipalsForPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPrincipalsForPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPrincipalsForPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPrincipalsForPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPrincipalsForPortfolioSync(ListPrincipalsForPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPrincipalsForPortfolioAsync(ListPrincipalsForPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTagOption asynchronously, invoking a callback when done
-- @param UpdateTagOptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTagOptionAsync(UpdateTagOptionInput, cb)
	assert(UpdateTagOptionInput, "You must provide a UpdateTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateTagOption",
	}
	for header,value in pairs(UpdateTagOptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTagOptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTagOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTagOptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTagOptionSync(UpdateTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTagOptionAsync(UpdateTagOptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTagOption asynchronously, invoking a callback when done
-- @param DeleteTagOptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagOptionAsync(DeleteTagOptionInput, cb)
	assert(DeleteTagOptionInput, "You must provide a DeleteTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteTagOption",
	}
	for header,value in pairs(DeleteTagOptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagOptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTagOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagOptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagOptionSync(DeleteTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagOptionAsync(DeleteTagOptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociatePrincipalWithPortfolio asynchronously, invoking a callback when done
-- @param AssociatePrincipalWithPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociatePrincipalWithPortfolioAsync(AssociatePrincipalWithPortfolioInput, cb)
	assert(AssociatePrincipalWithPortfolioInput, "You must provide a AssociatePrincipalWithPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociatePrincipalWithPortfolio",
	}
	for header,value in pairs(AssociatePrincipalWithPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociatePrincipalWithPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociatePrincipalWithPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociatePrincipalWithPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.AssociatePrincipalWithPortfolioSync(AssociatePrincipalWithPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociatePrincipalWithPortfolioAsync(AssociatePrincipalWithPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRecordHistory asynchronously, invoking a callback when done
-- @param ListRecordHistoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRecordHistoryAsync(ListRecordHistoryInput, cb)
	assert(ListRecordHistoryInput, "You must provide a ListRecordHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListRecordHistory",
	}
	for header,value in pairs(ListRecordHistoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRecordHistoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRecordHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRecordHistoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListRecordHistorySync(ListRecordHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRecordHistoryAsync(ListRecordHistoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePortfolio asynchronously, invoking a callback when done
-- @param UpdatePortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePortfolioAsync(UpdatePortfolioInput, cb)
	assert(UpdatePortfolioInput, "You must provide a UpdatePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdatePortfolio",
	}
	for header,value in pairs(UpdatePortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePortfolioSync(UpdatePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePortfolioAsync(UpdatePortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProduct asynchronously, invoking a callback when done
-- @param UpdateProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProductAsync(UpdateProductInput, cb)
	assert(UpdateProductInput, "You must provide a UpdateProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProduct",
	}
	for header,value in pairs(UpdateProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProductSync(UpdateProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProductAsync(UpdateProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchProductsAsAdmin asynchronously, invoking a callback when done
-- @param SearchProductsAsAdminInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchProductsAsAdminAsync(SearchProductsAsAdminInput, cb)
	assert(SearchProductsAsAdminInput, "You must provide a SearchProductsAsAdminInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProductsAsAdmin",
	}
	for header,value in pairs(SearchProductsAsAdminInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchProductsAsAdminInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchProductsAsAdmin synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchProductsAsAdminInput
-- @return response
-- @return error_type
-- @return error_message
function M.SearchProductsAsAdminSync(SearchProductsAsAdminInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProductsAsAdminAsync(SearchProductsAsAdminInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProvisionedProductPlans asynchronously, invoking a callback when done
-- @param ListProvisionedProductPlansInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProvisionedProductPlansAsync(ListProvisionedProductPlansInput, cb)
	assert(ListProvisionedProductPlansInput, "You must provide a ListProvisionedProductPlansInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListProvisionedProductPlans",
	}
	for header,value in pairs(ListProvisionedProductPlansInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProvisionedProductPlansInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProvisionedProductPlans synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProvisionedProductPlansInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListProvisionedProductPlansSync(ListProvisionedProductPlansInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProvisionedProductPlansAsync(ListProvisionedProductPlansInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProvisioningArtifact asynchronously, invoking a callback when done
-- @param CreateProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProvisioningArtifactAsync(CreateProvisioningArtifactInput, cb)
	assert(CreateProvisioningArtifactInput, "You must provide a CreateProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProvisioningArtifact",
	}
	for header,value in pairs(CreateProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProvisioningArtifactSync(CreateProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProvisioningArtifactAsync(CreateProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePortfolioShareStatus asynchronously, invoking a callback when done
-- @param DescribePortfolioShareStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePortfolioShareStatusAsync(DescribePortfolioShareStatusInput, cb)
	assert(DescribePortfolioShareStatusInput, "You must provide a DescribePortfolioShareStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribePortfolioShareStatus",
	}
	for header,value in pairs(DescribePortfolioShareStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePortfolioShareStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePortfolioShareStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePortfolioShareStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePortfolioShareStatusSync(DescribePortfolioShareStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePortfolioShareStatusAsync(DescribePortfolioShareStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfolios asynchronously, invoking a callback when done
-- @param ListPortfoliosInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPortfoliosAsync(ListPortfoliosInput, cb)
	assert(ListPortfoliosInput, "You must provide a ListPortfoliosInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolios",
	}
	for header,value in pairs(ListPortfoliosInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPortfoliosInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPortfolios synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPortfoliosInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPortfoliosSync(ListPortfoliosInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfoliosAsync(ListPortfoliosInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchProvisionedProducts asynchronously, invoking a callback when done
-- @param SearchProvisionedProductsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchProvisionedProductsAsync(SearchProvisionedProductsInput, cb)
	assert(SearchProvisionedProductsInput, "You must provide a SearchProvisionedProductsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProvisionedProducts",
	}
	for header,value in pairs(SearchProvisionedProductsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchProvisionedProductsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchProvisionedProducts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchProvisionedProductsInput
-- @return response
-- @return error_type
-- @return error_message
function M.SearchProvisionedProductsSync(SearchProvisionedProductsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProvisionedProductsAsync(SearchProvisionedProductsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProduct asynchronously, invoking a callback when done
-- @param DescribeProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProductAsync(DescribeProductInput, cb)
	assert(DescribeProductInput, "You must provide a DescribeProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProduct",
	}
	for header,value in pairs(DescribeProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProductSync(DescribeProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductAsync(DescribeProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePortfolioShare asynchronously, invoking a callback when done
-- @param CreatePortfolioShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePortfolioShareAsync(CreatePortfolioShareInput, cb)
	assert(CreatePortfolioShareInput, "You must provide a CreatePortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolioShare",
	}
	for header,value in pairs(CreatePortfolioShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePortfolioShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePortfolioShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePortfolioShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePortfolioShareSync(CreatePortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePortfolioShareAsync(CreatePortfolioShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagOptions asynchronously, invoking a callback when done
-- @param ListTagOptionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagOptionsAsync(ListTagOptionsInput, cb)
	assert(ListTagOptionsInput, "You must provide a ListTagOptionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListTagOptions",
	}
	for header,value in pairs(ListTagOptionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagOptionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagOptionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagOptionsSync(ListTagOptionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagOptionsAsync(ListTagOptionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateServiceActionFromProvisioningArtifact asynchronously, invoking a callback when done
-- @param DisassociateServiceActionFromProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateServiceActionFromProvisioningArtifactAsync(DisassociateServiceActionFromProvisioningArtifactInput, cb)
	assert(DisassociateServiceActionFromProvisioningArtifactInput, "You must provide a DisassociateServiceActionFromProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateServiceActionFromProvisioningArtifact",
	}
	for header,value in pairs(DisassociateServiceActionFromProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateServiceActionFromProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateServiceActionFromProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateServiceActionFromProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateServiceActionFromProvisioningArtifactSync(DisassociateServiceActionFromProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateServiceActionFromProvisioningArtifactAsync(DisassociateServiceActionFromProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchAssociateServiceActionWithProvisioningArtifact asynchronously, invoking a callback when done
-- @param BatchAssociateServiceActionWithProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchAssociateServiceActionWithProvisioningArtifactAsync(BatchAssociateServiceActionWithProvisioningArtifactInput, cb)
	assert(BatchAssociateServiceActionWithProvisioningArtifactInput, "You must provide a BatchAssociateServiceActionWithProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.BatchAssociateServiceActionWithProvisioningArtifact",
	}
	for header,value in pairs(BatchAssociateServiceActionWithProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchAssociateServiceActionWithProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchAssociateServiceActionWithProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchAssociateServiceActionWithProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchAssociateServiceActionWithProvisioningArtifactSync(BatchAssociateServiceActionWithProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchAssociateServiceActionWithProvisioningArtifactAsync(BatchAssociateServiceActionWithProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLaunchPaths asynchronously, invoking a callback when done
-- @param ListLaunchPathsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLaunchPathsAsync(ListLaunchPathsInput, cb)
	assert(ListLaunchPathsInput, "You must provide a ListLaunchPathsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListLaunchPaths",
	}
	for header,value in pairs(ListLaunchPathsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListLaunchPathsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLaunchPaths synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLaunchPathsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListLaunchPathsSync(ListLaunchPathsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLaunchPathsAsync(ListLaunchPathsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociatePrincipalFromPortfolio asynchronously, invoking a callback when done
-- @param DisassociatePrincipalFromPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociatePrincipalFromPortfolioAsync(DisassociatePrincipalFromPortfolioInput, cb)
	assert(DisassociatePrincipalFromPortfolioInput, "You must provide a DisassociatePrincipalFromPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociatePrincipalFromPortfolio",
	}
	for header,value in pairs(DisassociatePrincipalFromPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociatePrincipalFromPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociatePrincipalFromPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociatePrincipalFromPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociatePrincipalFromPortfolioSync(DisassociatePrincipalFromPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociatePrincipalFromPortfolioAsync(DisassociatePrincipalFromPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServiceActionsForProvisioningArtifact asynchronously, invoking a callback when done
-- @param ListServiceActionsForProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServiceActionsForProvisioningArtifactAsync(ListServiceActionsForProvisioningArtifactInput, cb)
	assert(ListServiceActionsForProvisioningArtifactInput, "You must provide a ListServiceActionsForProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListServiceActionsForProvisioningArtifact",
	}
	for header,value in pairs(ListServiceActionsForProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServiceActionsForProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServiceActionsForProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServiceActionsForProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListServiceActionsForProvisioningArtifactSync(ListServiceActionsForProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServiceActionsForProvisioningArtifactAsync(ListServiceActionsForProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProduct asynchronously, invoking a callback when done
-- @param CreateProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProductAsync(CreateProductInput, cb)
	assert(CreateProductInput, "You must provide a CreateProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProduct",
	}
	for header,value in pairs(CreateProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProductSync(CreateProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProductAsync(CreateProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAcceptedPortfolioShares asynchronously, invoking a callback when done
-- @param ListAcceptedPortfolioSharesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAcceptedPortfolioSharesAsync(ListAcceptedPortfolioSharesInput, cb)
	assert(ListAcceptedPortfolioSharesInput, "You must provide a ListAcceptedPortfolioSharesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListAcceptedPortfolioShares",
	}
	for header,value in pairs(ListAcceptedPortfolioSharesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAcceptedPortfolioSharesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAcceptedPortfolioShares synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAcceptedPortfolioSharesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListAcceptedPortfolioSharesSync(ListAcceptedPortfolioSharesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAcceptedPortfolioSharesAsync(ListAcceptedPortfolioSharesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfoliosForProduct asynchronously, invoking a callback when done
-- @param ListPortfoliosForProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPortfoliosForProductAsync(ListPortfoliosForProductInput, cb)
	assert(ListPortfoliosForProductInput, "You must provide a ListPortfoliosForProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfoliosForProduct",
	}
	for header,value in pairs(ListPortfoliosForProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPortfoliosForProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPortfoliosForProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPortfoliosForProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPortfoliosForProductSync(ListPortfoliosForProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfoliosForProductAsync(ListPortfoliosForProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServiceAction asynchronously, invoking a callback when done
-- @param DescribeServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServiceActionAsync(DescribeServiceActionInput, cb)
	assert(DescribeServiceActionInput, "You must provide a DescribeServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeServiceAction",
	}
	for header,value in pairs(DescribeServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeServiceActionSync(DescribeServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServiceActionAsync(DescribeServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConstraint asynchronously, invoking a callback when done
-- @param UpdateConstraintInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConstraintAsync(UpdateConstraintInput, cb)
	assert(UpdateConstraintInput, "You must provide a UpdateConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateConstraint",
	}
	for header,value in pairs(UpdateConstraintInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConstraintInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConstraint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConstraintInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConstraintSync(UpdateConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConstraintAsync(UpdateConstraintInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateServiceActionWithProvisioningArtifact asynchronously, invoking a callback when done
-- @param AssociateServiceActionWithProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateServiceActionWithProvisioningArtifactAsync(AssociateServiceActionWithProvisioningArtifactInput, cb)
	assert(AssociateServiceActionWithProvisioningArtifactInput, "You must provide a AssociateServiceActionWithProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateServiceActionWithProvisioningArtifact",
	}
	for header,value in pairs(AssociateServiceActionWithProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateServiceActionWithProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateServiceActionWithProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateServiceActionWithProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateServiceActionWithProvisioningArtifactSync(AssociateServiceActionWithProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateServiceActionWithProvisioningArtifactAsync(AssociateServiceActionWithProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProvisionedProductPlan asynchronously, invoking a callback when done
-- @param DeleteProvisionedProductPlanInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProvisionedProductPlanAsync(DeleteProvisionedProductPlanInput, cb)
	assert(DeleteProvisionedProductPlanInput, "You must provide a DeleteProvisionedProductPlanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProvisionedProductPlan",
	}
	for header,value in pairs(DeleteProvisionedProductPlanInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProvisionedProductPlanInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProvisionedProductPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProvisionedProductPlanInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProvisionedProductPlanSync(DeleteProvisionedProductPlanInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProvisionedProductPlanAsync(DeleteProvisionedProductPlanInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateServiceAction asynchronously, invoking a callback when done
-- @param CreateServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateServiceActionAsync(CreateServiceActionInput, cb)
	assert(CreateServiceActionInput, "You must provide a CreateServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateServiceAction",
	}
	for header,value in pairs(CreateServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateServiceActionSync(CreateServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServiceActionAsync(CreateServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProvisioningArtifacts asynchronously, invoking a callback when done
-- @param ListProvisioningArtifactsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProvisioningArtifactsAsync(ListProvisioningArtifactsInput, cb)
	assert(ListProvisioningArtifactsInput, "You must provide a ListProvisioningArtifactsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListProvisioningArtifacts",
	}
	for header,value in pairs(ListProvisioningArtifactsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProvisioningArtifactsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProvisioningArtifacts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProvisioningArtifactsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListProvisioningArtifactsSync(ListProvisioningArtifactsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProvisioningArtifactsAsync(ListProvisioningArtifactsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProvisioningArtifactsForServiceAction asynchronously, invoking a callback when done
-- @param ListProvisioningArtifactsForServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProvisioningArtifactsForServiceActionAsync(ListProvisioningArtifactsForServiceActionInput, cb)
	assert(ListProvisioningArtifactsForServiceActionInput, "You must provide a ListProvisioningArtifactsForServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListProvisioningArtifactsForServiceAction",
	}
	for header,value in pairs(ListProvisioningArtifactsForServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProvisioningArtifactsForServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProvisioningArtifactsForServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProvisioningArtifactsForServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListProvisioningArtifactsForServiceActionSync(ListProvisioningArtifactsForServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProvisioningArtifactsForServiceActionAsync(ListProvisioningArtifactsForServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectPortfolioShare asynchronously, invoking a callback when done
-- @param RejectPortfolioShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RejectPortfolioShareAsync(RejectPortfolioShareInput, cb)
	assert(RejectPortfolioShareInput, "You must provide a RejectPortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.RejectPortfolioShare",
	}
	for header,value in pairs(RejectPortfolioShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RejectPortfolioShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectPortfolioShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectPortfolioShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.RejectPortfolioShareSync(RejectPortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectPortfolioShareAsync(RejectPortfolioShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateProductFromPortfolio asynchronously, invoking a callback when done
-- @param DisassociateProductFromPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateProductFromPortfolioAsync(DisassociateProductFromPortfolioInput, cb)
	assert(DisassociateProductFromPortfolioInput, "You must provide a DisassociateProductFromPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateProductFromPortfolio",
	}
	for header,value in pairs(DisassociateProductFromPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateProductFromPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateProductFromPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateProductFromPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateProductFromPortfolioSync(DisassociateProductFromPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateProductFromPortfolioAsync(DisassociateProductFromPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptPortfolioShare asynchronously, invoking a callback when done
-- @param AcceptPortfolioShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptPortfolioShareAsync(AcceptPortfolioShareInput, cb)
	assert(AcceptPortfolioShareInput, "You must provide a AcceptPortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AcceptPortfolioShare",
	}
	for header,value in pairs(AcceptPortfolioShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcceptPortfolioShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptPortfolioShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptPortfolioShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptPortfolioShareSync(AcceptPortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptPortfolioShareAsync(AcceptPortfolioShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisionedProduct asynchronously, invoking a callback when done
-- @param DescribeProvisionedProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProvisionedProductAsync(DescribeProvisionedProductInput, cb)
	assert(DescribeProvisionedProductInput, "You must provide a DescribeProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisionedProduct",
	}
	for header,value in pairs(DescribeProvisionedProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProvisionedProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProvisionedProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProvisionedProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProvisionedProductSync(DescribeProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisionedProductAsync(DescribeProvisionedProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServiceActions asynchronously, invoking a callback when done
-- @param ListServiceActionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServiceActionsAsync(ListServiceActionsInput, cb)
	assert(ListServiceActionsInput, "You must provide a ListServiceActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListServiceActions",
	}
	for header,value in pairs(ListServiceActionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServiceActionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServiceActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServiceActionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListServiceActionsSync(ListServiceActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServiceActionsAsync(ListServiceActionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServiceAction asynchronously, invoking a callback when done
-- @param DeleteServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServiceActionAsync(DeleteServiceActionInput, cb)
	assert(DeleteServiceActionInput, "You must provide a DeleteServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteServiceAction",
	}
	for header,value in pairs(DeleteServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServiceActionSync(DeleteServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServiceActionAsync(DeleteServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableAWSOrganizationsAccess asynchronously, invoking a callback when done
-- @param DisableAWSOrganizationsAccessInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableAWSOrganizationsAccessAsync(DisableAWSOrganizationsAccessInput, cb)
	assert(DisableAWSOrganizationsAccessInput, "You must provide a DisableAWSOrganizationsAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisableAWSOrganizationsAccess",
	}
	for header,value in pairs(DisableAWSOrganizationsAccessInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableAWSOrganizationsAccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableAWSOrganizationsAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableAWSOrganizationsAccessInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableAWSOrganizationsAccessSync(DisableAWSOrganizationsAccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableAWSOrganizationsAccessAsync(DisableAWSOrganizationsAccessInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProvisioningArtifact asynchronously, invoking a callback when done
-- @param DeleteProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProvisioningArtifactAsync(DeleteProvisioningArtifactInput, cb)
	assert(DeleteProvisioningArtifactInput, "You must provide a DeleteProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProvisioningArtifact",
	}
	for header,value in pairs(DeleteProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProvisioningArtifactSync(DeleteProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProvisioningArtifactAsync(DeleteProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProvisioningArtifact asynchronously, invoking a callback when done
-- @param UpdateProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProvisioningArtifactAsync(UpdateProvisioningArtifactInput, cb)
	assert(UpdateProvisioningArtifactInput, "You must provide a UpdateProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisioningArtifact",
	}
	for header,value in pairs(UpdateProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProvisioningArtifactSync(UpdateProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProvisioningArtifactAsync(UpdateProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConstraint asynchronously, invoking a callback when done
-- @param DescribeConstraintInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConstraintAsync(DescribeConstraintInput, cb)
	assert(DescribeConstraintInput, "You must provide a DescribeConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeConstraint",
	}
	for header,value in pairs(DescribeConstraintInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConstraintInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConstraint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConstraintInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConstraintSync(DescribeConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConstraintAsync(DescribeConstraintInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDisassociateServiceActionFromProvisioningArtifact asynchronously, invoking a callback when done
-- @param BatchDisassociateServiceActionFromProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDisassociateServiceActionFromProvisioningArtifactAsync(BatchDisassociateServiceActionFromProvisioningArtifactInput, cb)
	assert(BatchDisassociateServiceActionFromProvisioningArtifactInput, "You must provide a BatchDisassociateServiceActionFromProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.BatchDisassociateServiceActionFromProvisioningArtifact",
	}
	for header,value in pairs(BatchDisassociateServiceActionFromProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDisassociateServiceActionFromProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDisassociateServiceActionFromProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDisassociateServiceActionFromProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDisassociateServiceActionFromProvisioningArtifactSync(BatchDisassociateServiceActionFromProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDisassociateServiceActionFromProvisioningArtifactAsync(BatchDisassociateServiceActionFromProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisionedProductPlan asynchronously, invoking a callback when done
-- @param DescribeProvisionedProductPlanInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProvisionedProductPlanAsync(DescribeProvisionedProductPlanInput, cb)
	assert(DescribeProvisionedProductPlanInput, "You must provide a DescribeProvisionedProductPlanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisionedProductPlan",
	}
	for header,value in pairs(DescribeProvisionedProductPlanInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProvisionedProductPlanInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProvisionedProductPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProvisionedProductPlanInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProvisionedProductPlanSync(DescribeProvisionedProductPlanInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisionedProductPlanAsync(DescribeProvisionedProductPlanInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePortfolio asynchronously, invoking a callback when done
-- @param DeletePortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePortfolioAsync(DeletePortfolioInput, cb)
	assert(DeletePortfolioInput, "You must provide a DeletePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolio",
	}
	for header,value in pairs(DeletePortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePortfolioSync(DeletePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePortfolioAsync(DeletePortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRecord asynchronously, invoking a callback when done
-- @param DescribeRecordInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRecordAsync(DescribeRecordInput, cb)
	assert(DescribeRecordInput, "You must provide a DescribeRecordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeRecord",
	}
	for header,value in pairs(DescribeRecordInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRecordInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRecord synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRecordInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRecordSync(DescribeRecordInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRecordAsync(DescribeRecordInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateTagOptionWithResource asynchronously, invoking a callback when done
-- @param AssociateTagOptionWithResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateTagOptionWithResourceAsync(AssociateTagOptionWithResourceInput, cb)
	assert(AssociateTagOptionWithResourceInput, "You must provide a AssociateTagOptionWithResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateTagOptionWithResource",
	}
	for header,value in pairs(AssociateTagOptionWithResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateTagOptionWithResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateTagOptionWithResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateTagOptionWithResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateTagOptionWithResourceSync(AssociateTagOptionWithResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateTagOptionWithResourceAsync(AssociateTagOptionWithResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCopyProductStatus asynchronously, invoking a callback when done
-- @param DescribeCopyProductStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCopyProductStatusAsync(DescribeCopyProductStatusInput, cb)
	assert(DescribeCopyProductStatusInput, "You must provide a DescribeCopyProductStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeCopyProductStatus",
	}
	for header,value in pairs(DescribeCopyProductStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCopyProductStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCopyProductStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCopyProductStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCopyProductStatusSync(DescribeCopyProductStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCopyProductStatusAsync(DescribeCopyProductStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProduct asynchronously, invoking a callback when done
-- @param DeleteProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProductAsync(DeleteProductInput, cb)
	assert(DeleteProductInput, "You must provide a DeleteProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProduct",
	}
	for header,value in pairs(DeleteProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProductSync(DeleteProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProductAsync(DeleteProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableAWSOrganizationsAccess asynchronously, invoking a callback when done
-- @param EnableAWSOrganizationsAccessInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableAWSOrganizationsAccessAsync(EnableAWSOrganizationsAccessInput, cb)
	assert(EnableAWSOrganizationsAccessInput, "You must provide a EnableAWSOrganizationsAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.EnableAWSOrganizationsAccess",
	}
	for header,value in pairs(EnableAWSOrganizationsAccessInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableAWSOrganizationsAccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableAWSOrganizationsAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableAWSOrganizationsAccessInput
-- @return response
-- @return error_type
-- @return error_message
function M.EnableAWSOrganizationsAccessSync(EnableAWSOrganizationsAccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAWSOrganizationsAccessAsync(EnableAWSOrganizationsAccessInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProductView asynchronously, invoking a callback when done
-- @param DescribeProductViewInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProductViewAsync(DescribeProductViewInput, cb)
	assert(DescribeProductViewInput, "You must provide a DescribeProductViewInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductView",
	}
	for header,value in pairs(DescribeProductViewInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProductViewInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProductView synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProductViewInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProductViewSync(DescribeProductViewInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductViewAsync(DescribeProductViewInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateProvisionedProduct asynchronously, invoking a callback when done
-- @param TerminateProvisionedProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateProvisionedProductAsync(TerminateProvisionedProductInput, cb)
	assert(TerminateProvisionedProductInput, "You must provide a TerminateProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.TerminateProvisionedProduct",
	}
	for header,value in pairs(TerminateProvisionedProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateProvisionedProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateProvisionedProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateProvisionedProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateProvisionedProductSync(TerminateProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateProvisionedProductAsync(TerminateProvisionedProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePortfolio asynchronously, invoking a callback when done
-- @param DescribePortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePortfolioAsync(DescribePortfolioInput, cb)
	assert(DescribePortfolioInput, "You must provide a DescribePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribePortfolio",
	}
	for header,value in pairs(DescribePortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePortfolioSync(DescribePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePortfolioAsync(DescribePortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOrganizationPortfolioAccess asynchronously, invoking a callback when done
-- @param ListOrganizationPortfolioAccessInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOrganizationPortfolioAccessAsync(ListOrganizationPortfolioAccessInput, cb)
	assert(ListOrganizationPortfolioAccessInput, "You must provide a ListOrganizationPortfolioAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListOrganizationPortfolioAccess",
	}
	for header,value in pairs(ListOrganizationPortfolioAccessInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOrganizationPortfolioAccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOrganizationPortfolioAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOrganizationPortfolioAccessInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListOrganizationPortfolioAccessSync(ListOrganizationPortfolioAccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOrganizationPortfolioAccessAsync(ListOrganizationPortfolioAccessInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePortfolioShare asynchronously, invoking a callback when done
-- @param DeletePortfolioShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePortfolioShareAsync(DeletePortfolioShareInput, cb)
	assert(DeletePortfolioShareInput, "You must provide a DeletePortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolioShare",
	}
	for header,value in pairs(DeletePortfolioShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePortfolioShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePortfolioShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePortfolioShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePortfolioShareSync(DeletePortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePortfolioShareAsync(DeletePortfolioShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAWSOrganizationsAccessStatus asynchronously, invoking a callback when done
-- @param GetAWSOrganizationsAccessStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAWSOrganizationsAccessStatusAsync(GetAWSOrganizationsAccessStatusInput, cb)
	assert(GetAWSOrganizationsAccessStatusInput, "You must provide a GetAWSOrganizationsAccessStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.GetAWSOrganizationsAccessStatus",
	}
	for header,value in pairs(GetAWSOrganizationsAccessStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAWSOrganizationsAccessStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAWSOrganizationsAccessStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAWSOrganizationsAccessStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetAWSOrganizationsAccessStatusSync(GetAWSOrganizationsAccessStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAWSOrganizationsAccessStatusAsync(GetAWSOrganizationsAccessStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServiceAction asynchronously, invoking a callback when done
-- @param UpdateServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServiceActionAsync(UpdateServiceActionInput, cb)
	assert(UpdateServiceActionInput, "You must provide a UpdateServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateServiceAction",
	}
	for header,value in pairs(UpdateServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServiceActionSync(UpdateServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServiceActionAsync(UpdateServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProvisionedProductPlan asynchronously, invoking a callback when done
-- @param CreateProvisionedProductPlanInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProvisionedProductPlanAsync(CreateProvisionedProductPlanInput, cb)
	assert(CreateProvisionedProductPlanInput, "You must provide a CreateProvisionedProductPlanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProvisionedProductPlan",
	}
	for header,value in pairs(CreateProvisionedProductPlanInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProvisionedProductPlanInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProvisionedProductPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProvisionedProductPlanInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProvisionedProductPlanSync(CreateProvisionedProductPlanInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProvisionedProductPlanAsync(CreateProvisionedProductPlanInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ScanProvisionedProducts asynchronously, invoking a callback when done
-- @param ScanProvisionedProductsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ScanProvisionedProductsAsync(ScanProvisionedProductsInput, cb)
	assert(ScanProvisionedProductsInput, "You must provide a ScanProvisionedProductsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ScanProvisionedProducts",
	}
	for header,value in pairs(ScanProvisionedProductsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScanProvisionedProductsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ScanProvisionedProducts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScanProvisionedProductsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ScanProvisionedProductsSync(ScanProvisionedProductsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScanProvisionedProductsAsync(ScanProvisionedProductsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTagOption asynchronously, invoking a callback when done
-- @param CreateTagOptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTagOptionAsync(CreateTagOptionInput, cb)
	assert(CreateTagOptionInput, "You must provide a CreateTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateTagOption",
	}
	for header,value in pairs(CreateTagOptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTagOptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTagOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTagOptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTagOptionSync(CreateTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagOptionAsync(CreateTagOptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProvisionedProduct asynchronously, invoking a callback when done
-- @param UpdateProvisionedProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProvisionedProductAsync(UpdateProvisionedProductInput, cb)
	assert(UpdateProvisionedProductInput, "You must provide a UpdateProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisionedProduct",
	}
	for header,value in pairs(UpdateProvisionedProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProvisionedProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProvisionedProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProvisionedProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProvisionedProductSync(UpdateProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProvisionedProductAsync(UpdateProvisionedProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourcesForTagOption asynchronously, invoking a callback when done
-- @param ListResourcesForTagOptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourcesForTagOptionAsync(ListResourcesForTagOptionInput, cb)
	assert(ListResourcesForTagOptionInput, "You must provide a ListResourcesForTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListResourcesForTagOption",
	}
	for header,value in pairs(ListResourcesForTagOptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourcesForTagOptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourcesForTagOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourcesForTagOptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourcesForTagOptionSync(ListResourcesForTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesForTagOptionAsync(ListResourcesForTagOptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisioningArtifact asynchronously, invoking a callback when done
-- @param DescribeProvisioningArtifactInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProvisioningArtifactAsync(DescribeProvisioningArtifactInput, cb)
	assert(DescribeProvisioningArtifactInput, "You must provide a DescribeProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningArtifact",
	}
	for header,value in pairs(DescribeProvisioningArtifactInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProvisioningArtifactInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProvisioningArtifact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProvisioningArtifactInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProvisioningArtifactSync(DescribeProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisioningArtifactAsync(DescribeProvisioningArtifactInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfolioAccess asynchronously, invoking a callback when done
-- @param ListPortfolioAccessInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPortfolioAccessAsync(ListPortfolioAccessInput, cb)
	assert(ListPortfolioAccessInput, "You must provide a ListPortfolioAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolioAccess",
	}
	for header,value in pairs(ListPortfolioAccessInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPortfolioAccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPortfolioAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPortfolioAccessInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPortfolioAccessSync(ListPortfolioAccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfolioAccessAsync(ListPortfolioAccessInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConstraintsForPortfolio asynchronously, invoking a callback when done
-- @param ListConstraintsForPortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConstraintsForPortfolioAsync(ListConstraintsForPortfolioInput, cb)
	assert(ListConstraintsForPortfolioInput, "You must provide a ListConstraintsForPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListConstraintsForPortfolio",
	}
	for header,value in pairs(ListConstraintsForPortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListConstraintsForPortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConstraintsForPortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConstraintsForPortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListConstraintsForPortfolioSync(ListConstraintsForPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConstraintsForPortfolioAsync(ListConstraintsForPortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateTagOptionFromResource asynchronously, invoking a callback when done
-- @param DisassociateTagOptionFromResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateTagOptionFromResourceAsync(DisassociateTagOptionFromResourceInput, cb)
	assert(DisassociateTagOptionFromResourceInput, "You must provide a DisassociateTagOptionFromResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateTagOptionFromResource",
	}
	for header,value in pairs(DisassociateTagOptionFromResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateTagOptionFromResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateTagOptionFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateTagOptionFromResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateTagOptionFromResourceSync(DisassociateTagOptionFromResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateTagOptionFromResourceAsync(DisassociateTagOptionFromResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExecuteProvisionedProductServiceAction asynchronously, invoking a callback when done
-- @param ExecuteProvisionedProductServiceActionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExecuteProvisionedProductServiceActionAsync(ExecuteProvisionedProductServiceActionInput, cb)
	assert(ExecuteProvisionedProductServiceActionInput, "You must provide a ExecuteProvisionedProductServiceActionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ExecuteProvisionedProductServiceAction",
	}
	for header,value in pairs(ExecuteProvisionedProductServiceActionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ExecuteProvisionedProductServiceActionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExecuteProvisionedProductServiceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExecuteProvisionedProductServiceActionInput
-- @return response
-- @return error_type
-- @return error_message
function M.ExecuteProvisionedProductServiceActionSync(ExecuteProvisionedProductServiceActionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExecuteProvisionedProductServiceActionAsync(ExecuteProvisionedProductServiceActionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchProducts asynchronously, invoking a callback when done
-- @param SearchProductsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchProductsAsync(SearchProductsInput, cb)
	assert(SearchProductsInput, "You must provide a SearchProductsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProducts",
	}
	for header,value in pairs(SearchProductsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchProductsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchProducts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchProductsInput
-- @return response
-- @return error_type
-- @return error_message
function M.SearchProductsSync(SearchProductsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProductsAsync(SearchProductsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyProduct asynchronously, invoking a callback when done
-- @param CopyProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyProductAsync(CopyProductInput, cb)
	assert(CopyProductInput, "You must provide a CopyProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CopyProduct",
	}
	for header,value in pairs(CopyProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.CopyProductSync(CopyProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyProductAsync(CopyProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConstraint asynchronously, invoking a callback when done
-- @param DeleteConstraintInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConstraintAsync(DeleteConstraintInput, cb)
	assert(DeleteConstraintInput, "You must provide a DeleteConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteConstraint",
	}
	for header,value in pairs(DeleteConstraintInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConstraintInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConstraint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConstraintInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConstraintSync(DeleteConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConstraintAsync(DeleteConstraintInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ProvisionProduct asynchronously, invoking a callback when done
-- @param ProvisionProductInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ProvisionProductAsync(ProvisionProductInput, cb)
	assert(ProvisionProductInput, "You must provide a ProvisionProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ProvisionProduct",
	}
	for header,value in pairs(ProvisionProductInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ProvisionProductInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ProvisionProduct synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ProvisionProductInput
-- @return response
-- @return error_type
-- @return error_message
function M.ProvisionProductSync(ProvisionProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ProvisionProductAsync(ProvisionProductInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePortfolio asynchronously, invoking a callback when done
-- @param CreatePortfolioInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePortfolioAsync(CreatePortfolioInput, cb)
	assert(CreatePortfolioInput, "You must provide a CreatePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolio",
	}
	for header,value in pairs(CreatePortfolioInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePortfolioInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePortfolio synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePortfolioInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePortfolioSync(CreatePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePortfolioAsync(CreatePortfolioInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisioningParameters asynchronously, invoking a callback when done
-- @param DescribeProvisioningParametersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProvisioningParametersAsync(DescribeProvisioningParametersInput, cb)
	assert(DescribeProvisioningParametersInput, "You must provide a DescribeProvisioningParametersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningParameters",
	}
	for header,value in pairs(DescribeProvisioningParametersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProvisioningParametersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProvisioningParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProvisioningParametersInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProvisioningParametersSync(DescribeProvisioningParametersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisioningParametersAsync(DescribeProvisioningParametersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTagOption asynchronously, invoking a callback when done
-- @param DescribeTagOptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagOptionAsync(DescribeTagOptionInput, cb)
	assert(DescribeTagOptionInput, "You must provide a DescribeTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeTagOption",
	}
	for header,value in pairs(DescribeTagOptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagOptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTagOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagOptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagOptionSync(DescribeTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagOptionAsync(DescribeTagOptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
