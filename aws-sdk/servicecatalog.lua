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
-- * ResourceId [ResourceId] <p>Identifier of the resource from which to disassociate the TagOption.</p>
-- * TagOptionId [TagOptionId] <p>Identifier of the TagOption to disassociate from the resource.</p>
-- Required key: ResourceId
-- Required key: TagOptionId
-- @return DisassociateTagOptionFromResourceInput structure as a key-value pair table
function M.DisassociateTagOptionFromResourceInput(args)
	assert(args, "You must provdide an argument table when creating DisassociateTagOptionFromResourceInput")
	local t = { 
		["ResourceId"] = args["ResourceId"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertDisassociateTagOptionFromResourceInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateTagOptionInput")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertCreateTagOptionInput(t)
	return t
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
-- * TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
-- @return DescribeTagOptionOutput structure as a key-value pair table
function M.DescribeTagOptionOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertDescribeTagOptionOutput(t)
	return t
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
-- * TagOptions [TagOptionDetails] <p>TagOptions associated with the portfolio.</p>
-- * PortfolioDetail [PortfolioDetail] <p>Detailed portfolio information.</p>
-- * Tags [Tags] <p>Tags associated with the portfolio.</p>
-- @return DescribePortfolioOutput structure as a key-value pair table
function M.DescribePortfolioOutput(args)
	assert(args, "You must provdide an argument table when creating DescribePortfolioOutput")
	local t = { 
		["TagOptions"] = args["TagOptions"],
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribePortfolioOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RejectPortfolioShareOutput")
	local t = { 
	}
	asserts.AssertRejectPortfolioShareOutput(t)
	return t
end

keys.RejectPortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertRejectPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectPortfolioShareInput[k], "RejectPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectPortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return RejectPortfolioShareInput structure as a key-value pair table
function M.RejectPortfolioShareInput(args)
	assert(args, "You must provdide an argument table when creating RejectPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertRejectPortfolioShareInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UsageInstruction")
	local t = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertUsageInstruction(t)
	return t
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
-- * ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to update. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- * ProvisioningParameters [UpdateProvisioningParameters] <p>A list of <code>ProvisioningParameter</code> objects used to update the ProvisionedProduct object.</p>
-- * PathId [Id] <p>The identifier of the path to use in the updated ProvisionedProduct object. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- * UpdateToken [IdempotencyToken] <p>The idempotency token that uniquely identifies the provisioning update request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisionedProductName [ProvisionedProductNameOrArn] <p>The updated name of the ProvisionedProduct object. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- * ProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- Required key: UpdateToken
-- @return UpdateProvisionedProductInput structure as a key-value pair table
function M.UpdateProvisionedProductInput(args)
	assert(args, "You must provdide an argument table when creating UpdateProvisionedProductInput")
	local t = { 
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
		["ProvisioningParameters"] = args["ProvisioningParameters"],
		["PathId"] = args["PathId"],
		["UpdateToken"] = args["UpdateToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertUpdateProvisionedProductInput(t)
	return t
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
-- * ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>A user-friendly name to identify the ProvisionedProduct object. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>
-- * Tags [Tags] <p>A list of tags to use as provisioning options.</p>
-- * ProvisioningParameters [ProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- * PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- * ProvisionToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the provisioning request. </p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- Required key: ProvisionedProductName
-- Required key: ProvisionToken
-- @return ProvisionProductInput structure as a key-value pair table
function M.ProvisionProductInput(args)
	assert(args, "You must provdide an argument table when creating ProvisionProductInput")
	local t = { 
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
	asserts.AssertProvisionProductInput(t)
	return t
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
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
-- * Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the calling user has access. </p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
-- @return SearchProductsInput structure as a key-value pair table
function M.SearchProductsInput(args)
	assert(args, "You must provdide an argument table when creating SearchProductsInput")
	local t = { 
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
		["SortOrder"] = args["SortOrder"],
		["Filters"] = args["Filters"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SortBy"] = args["SortBy"],
	}
	asserts.AssertSearchProductsInput(t)
	return t
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
-- * ConstraintParameters [ConstraintParameters] <p>The resulting constraint parameters.</p>
-- * ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
-- @return CreateConstraintOutput structure as a key-value pair table
function M.CreateConstraintOutput(args)
	assert(args, "You must provdide an argument table when creating CreateConstraintOutput")
	local t = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertCreateConstraintOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @return ListPortfoliosInput structure as a key-value pair table
function M.ListPortfoliosInput(args)
	assert(args, "You must provdide an argument table when creating ListPortfoliosInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListPortfoliosInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ProductViewAggregationValue")
	local t = { 
		["ApproximateCount"] = args["ApproximateCount"],
		["Value"] = args["Value"],
	}
	asserts.AssertProductViewAggregationValue(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the portfolio for the delete request.</p>
-- Required key: Id
-- @return DeletePortfolioInput structure as a key-value pair table
function M.DeletePortfolioInput(args)
	assert(args, "You must provdide an argument table when creating DeletePortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeletePortfolioInput(t)
	return t
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
-- <p>An administrator-specified constraint to apply when provisioning a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ConstraintType] <p>The type of the constraint. </p>
-- * Description [ConstraintDescription] <p>The text description of the constraint.</p>
-- @return ConstraintSummary structure as a key-value pair table
function M.ConstraintSummary(args)
	assert(args, "You must provdide an argument table when creating ConstraintSummary")
	local t = { 
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertConstraintSummary(t)
	return t
end

keys.CreatePortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreatePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioShareInput[k], "CreatePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * AccountId [AccountId] <p>The account ID with which to share the portfolio.</p>
-- Required key: PortfolioId
-- Required key: AccountId
-- @return CreatePortfolioShareInput structure as a key-value pair table
function M.CreatePortfolioShareInput(args)
	assert(args, "You must provdide an argument table when creating CreatePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreatePortfolioShareInput(t)
	return t
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
-- <p>The access level to limit results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [AccessLevelFilterValue] <p>Specifies the user to which the access level applies. A value of <code>Self</code> is currently supported.</p>
-- * Key [AccessLevelFilterKey] <p>Specifies the access level.</p> <p> <code>Account</code> allows results at the account level. </p> <p> <code>Role</code> allows results based on the federated role of the specified user.</p> <p> <code>User</code> allows results limited to the specified user. </p>
-- @return AccessLevelFilter structure as a key-value pair table
function M.AccessLevelFilter(args)
	assert(args, "You must provdide an argument table when creating AccessLevelFilter")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertAccessLevelFilter(t)
	return t
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
-- * TagOptions [TagOptionSummaries] <p>List of TagOptions associated with the provisioned provisioning parameters.</p>
-- * ProvisioningArtifactParameters [ProvisioningArtifactParameters] <p>The list of parameters used to successfully provision the product. Each parameter includes a list of allowable values and additional metadata about each parameter.</p>
-- * ConstraintSummaries [ConstraintSummaries] <p>The list of constraint summaries that apply to provisioning this product.</p>
-- * UsageInstructions [UsageInstructions] <p>Any additional metadata specifically related to the provisioning of the product. For example, see the <code>Version</code> field of the CloudFormation template.</p>
-- @return DescribeProvisioningParametersOutput structure as a key-value pair table
function M.DescribeProvisioningParametersOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisioningParametersOutput")
	local t = { 
		["TagOptions"] = args["TagOptions"],
		["ProvisioningArtifactParameters"] = args["ProvisioningArtifactParameters"],
		["ConstraintSummaries"] = args["ConstraintSummaries"],
		["UsageInstructions"] = args["UsageInstructions"],
	}
	asserts.AssertDescribeProvisioningParametersOutput(t)
	return t
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
-- * TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
-- @return UpdateTagOptionOutput structure as a key-value pair table
function M.UpdateTagOptionOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertUpdateTagOptionOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- * TerminateToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the ProvisionedProduct object is terminated, further requests to terminate the same ProvisionedProduct object always return <b>ResourceNotFound</b> regardless of the value of <code>TerminateToken</code>.</p>
-- * IgnoreErrors [IgnoreErrors] <p>If set to true, AWS Service Catalog stops managing the specified ProvisionedProduct object even if it cannot delete the underlying resources.</p>
-- * ProvisionedProductName [ProvisionedProductNameOrArn] <p>The name of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- Required key: TerminateToken
-- @return TerminateProvisionedProductInput structure as a key-value pair table
function M.TerminateProvisionedProductInput(args)
	assert(args, "You must provdide an argument table when creating TerminateProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisionedProductId"] = args["ProvisionedProductId"],
		["TerminateToken"] = args["TerminateToken"],
		["IgnoreErrors"] = args["IgnoreErrors"],
		["ProvisionedProductName"] = args["ProvisionedProductName"],
	}
	asserts.AssertTerminateProvisionedProductInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * Id [Id] <p>The record identifier of the ProvisionedProduct object for which to retrieve output information. This is the <code>RecordDetail.RecordId</code> obtained from the request operation's response.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required key: Id
-- @return DescribeRecordInput structure as a key-value pair table
function M.DescribeRecordInput(args)
	assert(args, "You must provdide an argument table when creating DescribeRecordInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["Id"] = args["Id"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertDescribeRecordInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the constraint.</p>
-- Required key: Id
-- @return DescribeConstraintInput structure as a key-value pair table
function M.DescribeConstraintInput(args)
	assert(args, "You must provdide an argument table when creating DescribeConstraintInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeConstraintInput(t)
	return t
end

keys.InvalidStateException = { nil }

function asserts.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidStateException[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>An attempt was made to modify a resource that is in an invalid state. Inspect the resource you are using for this operation to ensure that all resource states are valid before retrying the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidStateException structure as a key-value pair table
function M.InvalidStateException(args)
	assert(args, "You must provdide an argument table when creating InvalidStateException")
	local t = { 
	}
	asserts.AssertInvalidStateException(t)
	return t
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
-- <p>The TagOption summary key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [TagOptionValues] <p>The TagOptionSummary value.</p>
-- * Key [TagOptionKey] <p>The TagOptionSummary key.</p>
-- @return TagOptionSummary structure as a key-value pair table
function M.TagOptionSummary(args)
	assert(args, "You must provdide an argument table when creating TagOptionSummary")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagOptionSummary(t)
	return t
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
-- * ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- * Tags [Tags] <p>Tags associated with the product.</p>
-- @return UpdateProductOutput structure as a key-value pair table
function M.UpdateProductOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateProductOutput")
	local t = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertUpdateProductOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeletePortfolioOutput")
	local t = { 
	}
	asserts.AssertDeletePortfolioOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- * Verbose [Verbose] <p>Enable a verbose level of details for the provisioning artifact.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProvisioningArtifactId
-- Required key: ProductId
-- @return DescribeProvisioningArtifactInput structure as a key-value pair table
function M.DescribeProvisioningArtifactInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Verbose"] = args["Verbose"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDescribeProvisioningArtifactInput(t)
	return t
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
-- * ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- * Tags [Tags] <p>Tags successfully associated with the new product.</p>
-- @return CreateProductOutput structure as a key-value pair table
function M.CreateProductOutput(args)
	assert(args, "You must provdide an argument table when creating CreateProductOutput")
	local t = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateProductOutput(t)
	return t
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
-- <p>The parameter key-value pairs used to provision a product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [ParameterValue] <p>The value to use for provisioning. Any constraints on this value can be found in <code>ProvisioningArtifactParameter</code> for <code>Key</code>.</p>
-- * Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- @return ProvisioningParameter structure as a key-value pair table
function M.ProvisioningParameter(args)
	assert(args, "You must provdide an argument table when creating ProvisioningParameter")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertProvisioningParameter(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
-- @return ListPortfoliosForProductOutput structure as a key-value pair table
function M.ListPortfoliosForProductOutput(args)
	assert(args, "You must provdide an argument table when creating ListPortfoliosForProductOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListPortfoliosForProductOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the product for the delete request.</p>
-- Required key: Id
-- @return DeleteProductInput structure as a key-value pair table
function M.DeleteProductInput(args)
	assert(args, "You must provdide an argument table when creating DeleteProductInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteProductInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteProductOutput")
	local t = { 
	}
	asserts.AssertDeleteProductOutput(t)
	return t
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
-- * RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the portfolio.</p>
-- * DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- * AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the portfolio.</p>
-- * ProviderName [ProviderName] <p>The updated name of the portfolio provider.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the portfolio for the update request.</p>
-- * Description [PortfolioDescription] <p>The updated text description of the portfolio.</p>
-- Required key: Id
-- @return UpdatePortfolioInput structure as a key-value pair table
function M.UpdatePortfolioInput(args)
	assert(args, "You must provdide an argument table when creating UpdatePortfolioInput")
	local t = { 
		["RemoveTags"] = args["RemoveTags"],
		["DisplayName"] = args["DisplayName"],
		["AddTags"] = args["AddTags"],
		["ProviderName"] = args["ProviderName"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdatePortfolioInput(t)
	return t
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
-- * RecordDetail [RecordDetail] <p>The detailed result of the <a>ProvisionProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object of the request, and a list of any errors that the request encountered. </p>
-- @return ProvisionProductOutput structure as a key-value pair table
function M.ProvisionProductOutput(args)
	assert(args, "You must provdide an argument table when creating ProvisionProductOutput")
	local t = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertProvisionProductOutput(t)
	return t
end

keys.DuplicateResourceException = { nil }

function asserts.AssertDuplicateResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateResourceException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateResourceException[k], "DuplicateResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateResourceException
-- <p>The specified resource is a duplicate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateResourceException structure as a key-value pair table
function M.DuplicateResourceException(args)
	assert(args, "You must provdide an argument table when creating DuplicateResourceException")
	local t = { 
	}
	asserts.AssertDuplicateResourceException(t)
	return t
end

keys.InvalidParametersException = { nil }

function asserts.AssertInvalidParametersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParametersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParametersException[k], "InvalidParametersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParametersException
-- <p>One or more parameters provided to the operation are invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidParametersException structure as a key-value pair table
function M.InvalidParametersException(args)
	assert(args, "You must provdide an argument table when creating InvalidParametersException")
	local t = { 
	}
	asserts.AssertInvalidParametersException(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * LaunchPathSummaries [LaunchPathSummaries] <p>List of launch path information summaries for the specified <code>PageToken</code>.</p>
-- @return ListLaunchPathsOutput structure as a key-value pair table
function M.ListLaunchPathsOutput(args)
	assert(args, "You must provdide an argument table when creating ListLaunchPathsOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["LaunchPathSummaries"] = args["LaunchPathSummaries"],
	}
	asserts.AssertListLaunchPathsOutput(t)
	return t
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
-- <p>The summary metadata about the specified product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportDescription [SupportDescription] <p>The description of the support for this Product.</p>
-- * Name [ProductViewName] <p>The name of the product.</p>
-- * HasDefaultPath [HasDefaultPath] <p>A value of <code>false</code> indicates that the product does not have a default path, while a value of <code>true</code> indicates that it does. If it's false, call <a>ListLaunchPaths</a> to disambiguate between paths. If true, <a>ListLaunchPaths</a> is not required, and the output of the <a>ProductViewSummary</a> operation can be used directly with <a>DescribeProvisioningParameters</a>.</p>
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
	assert(args, "You must provdide an argument table when creating ProductViewSummary")
	local t = { 
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
	asserts.AssertProductViewSummary(t)
	return t
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
-- <p>Detailed constraint information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [AccountId] <p>The owner of the constraint.</p>
-- * ConstraintId [Id] <p>The identifier of the constraint.</p>
-- * Type [ConstraintType] <p>The type of the constraint.</p>
-- * Description [ConstraintDescription] <p>The text description of the constraint.</p>
-- @return ConstraintDetail structure as a key-value pair table
function M.ConstraintDetail(args)
	assert(args, "You must provdide an argument table when creating ConstraintDetail")
	local t = { 
		["Owner"] = args["Owner"],
		["ConstraintId"] = args["ConstraintId"],
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertConstraintDetail(t)
	return t
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
-- <p>Key-value pairs to associate with this provisioning. These tags are entirely discretionary and are propagated to the resources created in the provisioning.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The desired value for this key.</p>
-- * Key [TagKey] <p>The <code>ProvisioningArtifactParameter.TagKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- @return ListProvisioningArtifactsInput structure as a key-value pair table
function M.ListProvisioningArtifactsInput(args)
	assert(args, "You must provdide an argument table when creating ListProvisioningArtifactsInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListProvisioningArtifactsInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: PortfolioId
-- @return DisassociateProductFromPortfolioInput structure as a key-value pair table
function M.DisassociateProductFromPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating DisassociateProductFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDisassociateProductFromPortfolioInput(t)
	return t
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
-- * RecordDetail [RecordDetail] <p>Detailed record information for the specified product. </p>
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * RecordOutputs [RecordOutputs] <p>A list of outputs for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
-- @return DescribeRecordOutput structure as a key-value pair table
function M.DescribeRecordOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeRecordOutput")
	local t = { 
		["RecordDetail"] = args["RecordDetail"],
		["NextPageToken"] = args["NextPageToken"],
		["RecordOutputs"] = args["RecordOutputs"],
	}
	asserts.AssertDescribeRecordOutput(t)
	return t
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
-- <p>Stores summary information about a provisioning artifact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- * Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact.</p>
-- * ProvisioningArtifactMetadata [ProvisioningArtifactInfo] <p>The provisioning artifact metadata. This data is used with products created by AWS Marketplace.</p>
-- * Id [Id] <p>The identifier of the provisioning artifact.</p>
-- * Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
-- @return ProvisioningArtifactSummary structure as a key-value pair table
function M.ProvisioningArtifactSummary(args)
	assert(args, "You must provdide an argument table when creating ProvisioningArtifactSummary")
	local t = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["ProvisioningArtifactMetadata"] = args["ProvisioningArtifactMetadata"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifactSummary(t)
	return t
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
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
-- * Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the administrator has access.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
-- @return SearchProductsAsAdminInput structure as a key-value pair table
function M.SearchProductsAsAdminInput(args)
	assert(args, "You must provdide an argument table when creating SearchProductsAsAdminInput")
	local t = { 
		["ProductSource"] = args["ProductSource"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
		["PageToken"] = args["PageToken"],
		["SortBy"] = args["SortBy"],
		["Filters"] = args["Filters"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertSearchProductsAsAdminInput(t)
	return t
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
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- * Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact update request.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return UpdateProvisioningArtifactOutput structure as a key-value pair table
function M.UpdateProvisioningArtifactOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertUpdateProvisioningArtifactOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * SourcePortfolioId [Id] <p>The identifier of the source portfolio to use with this association.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: PortfolioId
-- @return AssociateProductWithPortfolioInput structure as a key-value pair table
function M.AssociateProductWithPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating AssociateProductWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["SourcePortfolioId"] = args["SourcePortfolioId"],
		["PortfolioId"] = args["PortfolioId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertAssociateProductWithPortfolioInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ParameterConstraints")
	local t = { 
		["AllowedValues"] = args["AllowedValues"],
	}
	asserts.AssertParameterConstraints(t)
	return t
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
-- * ResourceType [ResourceType] <p>Resource type.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * TagOptionId [TagOptionId] <p>Identifier of the TagOption.</p>
-- Required key: TagOptionId
-- @return ListResourcesForTagOptionInput structure as a key-value pair table
function M.ListResourcesForTagOptionInput(args)
	assert(args, "You must provdide an argument table when creating ListResourcesForTagOptionInput")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertListResourcesForTagOptionInput(t)
	return t
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
-- * Id [TagOptionId] <p>The identifier of the constraint to update.</p>
-- * Value [TagOptionValue] <p>The updated value.</p>
-- Required key: Id
-- @return UpdateTagOptionInput structure as a key-value pair table
function M.UpdateTagOptionInput(args)
	assert(args, "You must provdide an argument table when creating UpdateTagOptionInput")
	local t = { 
		["Active"] = args["Active"],
		["Id"] = args["Id"],
		["Value"] = args["Value"],
	}
	asserts.AssertUpdateTagOptionInput(t)
	return t
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
-- <p>A tag associated with the record, stored as a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [RecordTagValue] <p>The value for this tag.</p>
-- * Key [RecordTagKey] <p>The key for this tag.</p>
-- @return RecordTag structure as a key-value pair table
function M.RecordTag(args)
	assert(args, "You must provdide an argument table when creating RecordTag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertRecordTag(t)
	return t
end

keys.TagOptionNotMigratedException = { nil }

function asserts.AssertTagOptionNotMigratedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionNotMigratedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagOptionNotMigratedException[k], "TagOptionNotMigratedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionNotMigratedException
-- <p>An operation requiring TagOptions failed because the TagOptions migration process has not been performed for this account. Please use the AWS console to perform the migration process before retrying the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagOptionNotMigratedException structure as a key-value pair table
function M.TagOptionNotMigratedException(args)
	assert(args, "You must provdide an argument table when creating TagOptionNotMigratedException")
	local t = { 
	}
	asserts.AssertTagOptionNotMigratedException(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- @return ListPortfoliosForProductInput structure as a key-value pair table
function M.ListPortfoliosForProductInput(args)
	assert(args, "You must provdide an argument table when creating ListPortfoliosForProductInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListPortfoliosForProductInput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ProvisionedProducts [ProvisionedProductDetails] <p>A list of ProvisionedProduct detail objects.</p>
-- @return ScanProvisionedProductsOutput structure as a key-value pair table
function M.ScanProvisionedProductsOutput(args)
	assert(args, "You must provdide an argument table when creating ScanProvisionedProductsOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProvisionedProducts"] = args["ProvisionedProducts"],
	}
	asserts.AssertScanProvisionedProductsOutput(t)
	return t
end

keys.CreatePortfolioShareOutput = { nil }

function asserts.AssertCreatePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreatePortfolioShareOutput[k], "CreatePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreatePortfolioShareOutput structure as a key-value pair table
function M.CreatePortfolioShareOutput(args)
	assert(args, "You must provdide an argument table when creating CreatePortfolioShareOutput")
	local t = { 
	}
	asserts.AssertCreatePortfolioShareOutput(t)
	return t
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
-- * SupportEmail [SupportEmail] <p>Contact email for product support.</p>
-- * Name [ProductViewName] <p>The name of the product.</p>
-- * Tags [AddTags] <p>Tags to associate with the new product.</p>
-- * SupportUrl [SupportUrl] <p>Contact URL for product support.</p>
-- * Owner [ProductViewOwner] <p>The owner of the product.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- * ProvisioningArtifactParameters [ProvisioningArtifactProperties] <p>Parameters for the provisioning artifact.</p>
-- * ProductType [ProductType] <p>The type of the product to create.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Distributor [ProductViewOwner] <p>The distributor of the product.</p>
-- * SupportDescription [SupportDescription] <p>Support information about the product.</p>
-- * Description [ProductViewShortDescription] <p>The text description of the product.</p>
-- Required key: Name
-- Required key: Owner
-- Required key: ProductType
-- Required key: ProvisioningArtifactParameters
-- Required key: IdempotencyToken
-- @return CreateProductInput structure as a key-value pair table
function M.CreateProductInput(args)
	assert(args, "You must provdide an argument table when creating CreateProductInput")
	local t = { 
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
	asserts.AssertCreateProductInput(t)
	return t
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
-- <p>Contains information indicating the ways in which a product can be provisioned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- * Description [ProvisioningArtifactDescription] <p>The text description of the artifact.</p>
-- * Id [Id] <p>The identifier for the artifact. This is sometimes referred to as the product version.</p>
-- * Name [ProvisioningArtifactName] <p>The name of the artifact.</p>
-- @return ProvisioningArtifact structure as a key-value pair table
function M.ProvisioningArtifact(args)
	assert(args, "You must provdide an argument table when creating ProvisioningArtifact")
	local t = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifact(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the product for which to retrieve information.</p>
-- Required key: Id
-- @return DescribeProductAsAdminInput structure as a key-value pair table
function M.DescribeProductAsAdminInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductAsAdminInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductAsAdminInput(t)
	return t
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
-- <p>Detailed resource information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [ResourceDetailCreatedTime] <p>Creation time of the resource.</p>
-- * Description [ResourceDetailDescription] <p>Description of the resource.</p>
-- * Id [ResourceDetailId] <p>Identifier of the resource.</p>
-- * ARN [ResourceDetailARN] <p>ARN of the resource.</p>
-- * Name [ResourceDetailName] <p>Name of the resource.</p>
-- @return ResourceDetail structure as a key-value pair table
function M.ResourceDetail(args)
	assert(args, "You must provdide an argument table when creating ResourceDetail")
	local t = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
		["Name"] = args["Name"],
	}
	asserts.AssertResourceDetail(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ConstraintDetails [ConstraintDetails] <p>List of detailed constraint information objects.</p>
-- @return ListConstraintsForPortfolioOutput structure as a key-value pair table
function M.ListConstraintsForPortfolioOutput(args)
	assert(args, "You must provdide an argument table when creating ListConstraintsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["ConstraintDetails"] = args["ConstraintDetails"],
	}
	asserts.AssertListConstraintsForPortfolioOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The <code>ProductViewId</code> of the product to describe.</p>
-- Required key: Id
-- @return DescribeProductViewInput structure as a key-value pair table
function M.DescribeProductViewInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductViewInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductViewInput(t)
	return t
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
-- * Description [ErrorDescription] <p>The text description of the error.</p>
-- @return RecordError structure as a key-value pair table
function M.RecordError(args)
	assert(args, "You must provdide an argument table when creating RecordError")
	local t = { 
		["Code"] = args["Code"],
		["Description"] = args["Description"],
	}
	asserts.AssertRecordError(t)
	return t
end

keys.ProvisioningArtifactDetail = { ["CreatedTime"] = true, ["Description"] = true, ["Type"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProvisioningArtifactDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactDetail to be of type 'table'")
	if struct["CreatedTime"] then asserts.AssertCreationTime(struct["CreatedTime"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactName(struct["Description"]) end
	if struct["Type"] then asserts.AssertProvisioningArtifactType(struct["Type"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisioningArtifactDetail[k], "ProvisioningArtifactDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactDetail
-- <p>Detailed provisioning artifact information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- * Description [ProvisioningArtifactName] <p>The text description of the provisioning artifact.</p>
-- * Type [ProvisioningArtifactType] <p>The type of the provisioning artifact. The following provisioning artifact types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- * Id [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- * Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact.</p>
-- @return ProvisioningArtifactDetail structure as a key-value pair table
function M.ProvisioningArtifactDetail(args)
	assert(args, "You must provdide an argument table when creating ProvisioningArtifactDetail")
	local t = { 
		["CreatedTime"] = args["CreatedTime"],
		["Description"] = args["Description"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertProvisioningArtifactDetail(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AssociateProductWithPortfolioOutput")
	local t = { 
	}
	asserts.AssertAssociateProductWithPortfolioOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- * PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- Required key: PrincipalARN
-- Required key: PrincipalType
-- @return AssociatePrincipalWithPortfolioInput structure as a key-value pair table
function M.AssociatePrincipalWithPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating AssociatePrincipalWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PrincipalType"] = args["PrincipalType"],
		["PrincipalARN"] = args["PrincipalARN"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertAssociatePrincipalWithPortfolioInput(t)
	return t
end

keys.UpdateProvisioningArtifactInput = { ["AcceptLanguage"] = true, ["ProvisioningArtifactId"] = true, ["Description"] = true, ["Name"] = true, ["ProductId"] = true, nil }

function asserts.AssertUpdateProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then asserts.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Description"] then asserts.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["Name"] then asserts.AssertProvisioningArtifactName(struct["Name"]) end
	if struct["ProductId"] then asserts.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProvisioningArtifactInput[k], "UpdateProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningArtifactInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the update request. This is sometimes referred to as the product version.</p>
-- * Description [ProvisioningArtifactDescription] <p>The updated text description of the provisioning artifact.</p>
-- * Name [ProvisioningArtifactName] <p>The updated name of the provisioning artifact.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return UpdateProvisioningArtifactInput structure as a key-value pair table
function M.UpdateProvisioningArtifactInput(args)
	assert(args, "You must provdide an argument table when creating UpdateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertUpdateProvisioningArtifactInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DisassociateProductFromPortfolioOutput")
	local t = { 
	}
	asserts.AssertDisassociateProductFromPortfolioOutput(t)
	return t
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
-- <p>An output for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>The text description of the output.</p>
-- * OutputKey [OutputKey] <p>The output key.</p>
-- * OutputValue [OutputValue] <p>The output value.</p>
-- @return RecordOutput structure as a key-value pair table
function M.RecordOutput(args)
	assert(args, "You must provdide an argument table when creating RecordOutput")
	local t = { 
		["Description"] = args["Description"],
		["OutputKey"] = args["OutputKey"],
		["OutputValue"] = args["OutputValue"],
	}
	asserts.AssertRecordOutput(t)
	return t
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
-- * ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- * ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> parameter represent the ways the specified product can be provisioned.</p>
-- @return DescribeProductOutput structure as a key-value pair table
function M.DescribeProductOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductOutput")
	local t = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["ProvisioningArtifacts"] = args["ProvisioningArtifacts"],
	}
	asserts.AssertDescribeProductOutput(t)
	return t
end

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The current limits of the service would have been exceeded by this operation. Reduce the resource use or increase the service limits and retry the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- <p>Detailed portfolio information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- * Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- * ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- * CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- * Id [Id] <p>The identifier for the portfolio.</p>
-- * ARN [ResourceARN] <p>The ARN assigned to the portfolio.</p>
-- @return PortfolioDetail structure as a key-value pair table
function M.PortfolioDetail(args)
	assert(args, "You must provdide an argument table when creating PortfolioDetail")
	local t = { 
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["ProviderName"] = args["ProviderName"],
		["CreatedTime"] = args["CreatedTime"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertPortfolioDetail(t)
	return t
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
-- * RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the product.</p>
-- * SupportEmail [SupportEmail] <p>The updated support email for the product.</p>
-- * Description [ProductViewShortDescription] <p>The updated text description of the product.</p>
-- * SupportUrl [SupportUrl] <p>The updated support URL for the product.</p>
-- * Owner [ProductViewOwner] <p>The updated owner of the product.</p>
-- * AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the product.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Distributor [ProductViewOwner] <p>The updated distributor of the product.</p>
-- * SupportDescription [SupportDescription] <p>The updated support description for the product.</p>
-- * Id [Id] <p>The identifier of the product for the update request.</p>
-- * Name [ProductViewName] <p>The updated product name.</p>
-- Required key: Id
-- @return UpdateProductInput structure as a key-value pair table
function M.UpdateProductInput(args)
	assert(args, "You must provdide an argument table when creating UpdateProductInput")
	local t = { 
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
	asserts.AssertUpdateProductInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteProvisioningArtifactOutput")
	local t = { 
	}
	asserts.AssertDeleteProvisioningArtifactOutput(t)
	return t
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
-- * RecordDetail [RecordDetail] <p>The detailed result of the <a>TerminateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
-- @return TerminateProvisionedProductOutput structure as a key-value pair table
function M.TerminateProvisionedProductOutput(args)
	assert(args, "You must provdide an argument table when creating TerminateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertTerminateProvisionedProductOutput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
-- @return ListPortfoliosOutput structure as a key-value pair table
function M.ListPortfoliosOutput(args)
	assert(args, "You must provdide an argument table when creating ListPortfoliosOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListPortfoliosOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- * PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return DescribeProvisioningParametersInput structure as a key-value pair table
function M.DescribeProvisioningParametersInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisioningParametersInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["PathId"] = args["PathId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDescribeProvisioningParametersInput(t)
	return t
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
-- <p>The full details of a specific ProvisionedProduct object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [RecordStatus] <p>The status of the ProvisionedProduct object.</p> <p> <code>CREATED</code> - Request created but the operation has not yet started.</p> <p> <code>IN_PROGRESS</code> - The requested operation is in-progress.</p> <p> <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the requested operation failed and some remediation is occurring. For example, a rollback.</p> <p> <code>SUCCEEDED</code> - The requested operation has successfully completed.</p> <p> <code>FAILED</code> - The requested operation has completed but has failed. Investigate using the error messages returned.</p>
-- * UpdatedTime [UpdatedTime] <p>The time when the record for the ProvisionedProduct object was last updated.</p>
-- * ProvisionedProductName [ProvisionedProductName] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- * RecordType [RecordType] <p>The record type for this record.</p>
-- * ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- * RecordId [Id] <p>The identifier of the ProvisionedProduct object record.</p>
-- * ProvisionedProductType [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- * RecordTags [RecordTags] <p>List of tags associated with this record.</p>
-- * RecordErrors [RecordErrors] <p>A list of errors that occurred while processing the request.</p>
-- * PathId [Id] <p>The identifier of the path for this product's provisioning.</p>
-- * CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- * ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- @return RecordDetail structure as a key-value pair table
function M.RecordDetail(args)
	assert(args, "You must provdide an argument table when creating RecordDetail")
	local t = { 
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
	asserts.AssertRecordDetail(t)
	return t
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
-- <p>The ListTagOptions filters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [TagOptionActive] <p>The ListTagOptionsFilters active state.</p>
-- * Value [TagOptionValue] <p>The ListTagOptionsFilters value.</p>
-- * Key [TagOptionKey] <p>The ListTagOptionsFilters key.</p>
-- @return ListTagOptionsFilters structure as a key-value pair table
function M.ListTagOptionsFilters(args)
	assert(args, "You must provdide an argument table when creating ListTagOptionsFilters")
	local t = { 
		["Active"] = args["Active"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertListTagOptionsFilters(t)
	return t
end

keys.ResourceInUseException = { nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The operation was requested against a resource that is currently in use. Free the resource from use and retry the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provdide an argument table when creating ResourceInUseException")
	local t = { 
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.DeletePortfolioShareOutput = { nil }

function asserts.AssertDeletePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioShareOutput[k], "DeletePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePortfolioShareOutput structure as a key-value pair table
function M.DeletePortfolioShareOutput(args)
	assert(args, "You must provdide an argument table when creating DeletePortfolioShareOutput")
	local t = { 
	}
	asserts.AssertDeletePortfolioShareOutput(t)
	return t
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
-- * ProductViewDetail [ProductViewDetail] <p>Detailed product view information.</p>
-- * TagOptions [TagOptionDetails] <p>List of TagOptions associated with the product.</p>
-- * ProvisioningArtifactSummaries [ProvisioningArtifactSummaries] <p>A list of provisioning artifact summaries for the product.</p>
-- * Tags [Tags] <p>Tags associated with the product.</p>
-- @return DescribeProductAsAdminOutput structure as a key-value pair table
function M.DescribeProductAsAdminOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductAsAdminOutput")
	local t = { 
		["ProductViewDetail"] = args["ProductViewDetail"],
		["TagOptions"] = args["TagOptions"],
		["ProvisioningArtifactSummaries"] = args["ProvisioningArtifactSummaries"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribeProductAsAdminOutput(t)
	return t
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
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * Filters [ListTagOptionsFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all TagOptions. </p>
-- @return ListTagOptionsInput structure as a key-value pair table
function M.ListTagOptionsInput(args)
	assert(args, "You must provdide an argument table when creating ListTagOptionsInput")
	local t = { 
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListTagOptionsInput(t)
	return t
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
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * TagOptionDetails [TagOptionDetails] <p>The resulting detailed TagOption information.</p>
-- @return ListTagOptionsOutput structure as a key-value pair table
function M.ListTagOptionsOutput(args)
	assert(args, "You must provdide an argument table when creating ListTagOptionsOutput")
	local t = { 
		["PageToken"] = args["PageToken"],
		["TagOptionDetails"] = args["TagOptionDetails"],
	}
	asserts.AssertListTagOptionsOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The provisioned product identifier.</p>
-- Required key: Id
-- @return DescribeProvisionedProductInput structure as a key-value pair table
function M.DescribeProvisionedProductInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProvisionedProductInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required key: PortfolioId
-- @return ListPrincipalsForPortfolioInput structure as a key-value pair table
function M.ListPrincipalsForPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListPrincipalsForPortfolioInput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * AccountIds [AccountIds] <p>List of account IDs associated with access to the portfolio.</p>
-- @return ListPortfolioAccessOutput structure as a key-value pair table
function M.ListPortfolioAccessOutput(args)
	assert(args, "You must provdide an argument table when creating ListPortfolioAccessOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["AccountIds"] = args["AccountIds"],
	}
	asserts.AssertListPortfolioAccessOutput(t)
	return t
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
-- <p>Summary information about a path for a user to have access to a specified product.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [PortfolioName] <p>Corresponds to the name of the portfolio to which the user was assigned.</p>
-- * ConstraintSummaries [ConstraintSummaries] <p>List of constraints on the portfolio-product relationship.</p>
-- * Id [Id] <p>The unique identifier of the product path.</p>
-- * Tags [Tags] <p>List of tags used by this launch path.</p>
-- @return LaunchPathSummary structure as a key-value pair table
function M.LaunchPathSummary(args)
	assert(args, "You must provdide an argument table when creating LaunchPathSummary")
	local t = { 
		["Name"] = args["Name"],
		["ConstraintSummaries"] = args["ConstraintSummaries"],
		["Id"] = args["Id"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertLaunchPathSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DisassociateTagOptionFromResourceOutput")
	local t = { 
	}
	asserts.AssertDisassociateTagOptionFromResourceOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DisassociatePrincipalFromPortfolioOutput")
	local t = { 
	}
	asserts.AssertDisassociatePrincipalFromPortfolioOutput(t)
	return t
end

keys.ListAcceptedPortfolioSharesInput = { ["AcceptLanguage"] = true, ["PageToken"] = true, ["PageSize"] = true, nil }

function asserts.AssertListAcceptedPortfolioSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAcceptedPortfolioSharesInput to be of type 'table'")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then asserts.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then asserts.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAcceptedPortfolioSharesInput[k], "ListAcceptedPortfolioSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAcceptedPortfolioSharesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @return ListAcceptedPortfolioSharesInput structure as a key-value pair table
function M.ListAcceptedPortfolioSharesInput(args)
	assert(args, "You must provdide an argument table when creating ListAcceptedPortfolioSharesInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertListAcceptedPortfolioSharesInput(t)
	return t
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
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Detailed provisioning artifact information.</p>
-- * Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return DescribeProvisioningArtifactOutput structure as a key-value pair table
function M.DescribeProvisioningArtifactOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertDescribeProvisioningArtifactOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AssociatePrincipalWithPortfolioOutput")
	local t = { 
	}
	asserts.AssertAssociatePrincipalWithPortfolioOutput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
-- @return ListAcceptedPortfolioSharesOutput structure as a key-value pair table
function M.ListAcceptedPortfolioSharesOutput(args)
	assert(args, "You must provdide an argument table when creating ListAcceptedPortfolioSharesOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["PortfolioDetails"] = args["PortfolioDetails"],
	}
	asserts.AssertListAcceptedPortfolioSharesOutput(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.AcceptPortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, nil }

function asserts.AssertAcceptPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptPortfolioShareInput[k], "AcceptPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptPortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return AcceptPortfolioShareInput structure as a key-value pair table
function M.AcceptPortfolioShareInput(args)
	assert(args, "You must provdide an argument table when creating AcceptPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertAcceptPortfolioShareInput(t)
	return t
end

keys.DescribeProvisionedProductOutput = { ["ProvisionedProductDetail"] = true, nil }

function asserts.AssertDescribeProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductOutput to be of type 'table'")
	if struct["ProvisionedProductDetail"] then asserts.AssertProvisionedProductDetail(struct["ProvisionedProductDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProvisionedProductOutput[k], "DescribeProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedProductDetail [ProvisionedProductDetail] <p>Detailed provisioned product information.</p>
-- @return DescribeProvisionedProductOutput structure as a key-value pair table
function M.DescribeProvisionedProductOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProvisionedProductOutput")
	local t = { 
		["ProvisionedProductDetail"] = args["ProvisionedProductDetail"],
	}
	asserts.AssertDescribeProvisionedProductOutput(t)
	return t
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
-- <p>The TagOption details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Active [TagOptionActive] <p>The TagOptionDetail active state.</p>
-- * Value [TagOptionValue] <p>The TagOptionDetail value.</p>
-- * Key [TagOptionKey] <p>The TagOptionDetail key.</p>
-- * Id [TagOptionId] <p>The TagOptionDetail identifier.</p>
-- @return TagOptionDetail structure as a key-value pair table
function M.TagOptionDetail(args)
	assert(args, "You must provdide an argument table when creating TagOptionDetail")
	local t = { 
		["Active"] = args["Active"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["Id"] = args["Id"],
	}
	asserts.AssertTagOptionDetail(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * RecordDetails [RecordDetails] <p>A list of record detail objects, listed in reverse chronological order.</p>
-- @return ListRecordHistoryOutput structure as a key-value pair table
function M.ListRecordHistoryOutput(args)
	assert(args, "You must provdide an argument table when creating ListRecordHistoryOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["RecordDetails"] = args["RecordDetails"],
	}
	asserts.AssertListRecordHistoryOutput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ProductViewAggregations [ProductViewAggregations] <p>A list of the product view aggregation value objects.</p>
-- * ProductViewSummaries [ProductViewSummaries] <p>A list of the product view summary objects.</p>
-- @return SearchProductsOutput structure as a key-value pair table
function M.SearchProductsOutput(args)
	assert(args, "You must provdide an argument table when creating SearchProductsOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProductViewAggregations"] = args["ProductViewAggregations"],
		["ProductViewSummaries"] = args["ProductViewSummaries"],
	}
	asserts.AssertSearchProductsOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- * Parameters [ProvisioningArtifactProperties] <p>The parameters to use when creating the new provisioning artifact.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: Parameters
-- Required key: IdempotencyToken
-- @return CreateProvisioningArtifactInput structure as a key-value pair table
function M.CreateProvisioningArtifactInput(args)
	assert(args, "You must provdide an argument table when creating CreateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["Parameters"] = args["Parameters"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertCreateProvisioningArtifactInput(t)
	return t
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
-- * ConstraintParameters [ConstraintParameters] <p>The current parameters associated with the specified constraint.</p>
-- * ConstraintDetail [ConstraintDetail] <p>Detailed constraint information.</p>
-- @return DescribeConstraintOutput structure as a key-value pair table
function M.DescribeConstraintOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeConstraintOutput")
	local t = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertDescribeConstraintOutput(t)
	return t
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
-- * PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- * Tags [Tags] <p>Tags successfully associated with the new portfolio.</p>
-- @return CreatePortfolioOutput structure as a key-value pair table
function M.CreatePortfolioOutput(args)
	assert(args, "You must provdide an argument table when creating CreatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreatePortfolioOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AcceptPortfolioShareOutput")
	local t = { 
	}
	asserts.AssertAcceptPortfolioShareOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the constraint to update.</p>
-- * Description [ConstraintDescription] <p>The updated text description of the constraint.</p>
-- Required key: Id
-- @return UpdateConstraintInput structure as a key-value pair table
function M.UpdateConstraintInput(args)
	assert(args, "You must provdide an argument table when creating UpdateConstraintInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateConstraintInput(t)
	return t
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
-- <p>The search filter to limit results when listing request history records.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [SearchFilterValue] <p>The filter value for <code>Key</code>.</p>
-- * Key [SearchFilterKey] <p>The filter key.</p>
-- @return ListRecordHistorySearchFilter structure as a key-value pair table
function M.ListRecordHistorySearchFilter(args)
	assert(args, "You must provdide an argument table when creating ListRecordHistorySearchFilter")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertListRecordHistorySearchFilter(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the portfolio for which to retrieve information.</p>
-- Required key: Id
-- @return DescribePortfolioInput structure as a key-value pair table
function M.DescribePortfolioInput(args)
	assert(args, "You must provdide an argument table when creating DescribePortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribePortfolioInput(t)
	return t
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
-- * Id [TagOptionId] <p>The identifier of the TagOption.</p>
-- Required key: Id
-- @return DescribeTagOptionInput structure as a key-value pair table
function M.DescribeTagOptionInput(args)
	assert(args, "You must provdide an argument table when creating DescribeTagOptionInput")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeTagOptionInput(t)
	return t
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
-- * Description [ConstraintDescription] <p>The text description of the constraint.</p>
-- * Parameters [ConstraintParameters] <p>The constraint parameters. Expected values vary depending on which <b>Type</b> is specified. For examples, see the bottom of this topic.</p> <p>For Type <code>LAUNCH</code>, the <code>RoleArn</code> property is required. </p> <p>For Type <code>NOTIFICATION</code>, the <code>NotificationArns</code> property is required.</p> <p>For Type <code>TEMPLATE</code>, the <code>Rules</code> property is required.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Type [ConstraintType] <p>The type of the constraint. Case-sensitive valid values are: <code>LAUNCH</code>, <code>NOTIFICATION</code>, or <code>TEMPLATE</code>. </p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: PortfolioId
-- Required key: ProductId
-- Required key: Parameters
-- Required key: Type
-- Required key: IdempotencyToken
-- @return CreateConstraintInput structure as a key-value pair table
function M.CreateConstraintInput(args)
	assert(args, "You must provdide an argument table when creating CreateConstraintInput")
	local t = { 
		["PortfolioId"] = args["PortfolioId"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Type"] = args["Type"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertCreateConstraintInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AssociateTagOptionWithResourceInput")
	local t = { 
		["ResourceId"] = args["ResourceId"],
		["TagOptionId"] = args["TagOptionId"],
	}
	asserts.AssertAssociateTagOptionWithResourceInput(t)
	return t
end

keys.DeletePortfolioShareInput = { ["AcceptLanguage"] = true, ["PortfolioId"] = true, ["AccountId"] = true, nil }

function asserts.AssertDeletePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AcceptLanguage"] then asserts.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then asserts.AssertId(struct["PortfolioId"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePortfolioShareInput[k], "DeletePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * AccountId [AccountId] <p>The account ID associated with the share to delete.</p>
-- Required key: PortfolioId
-- Required key: AccountId
-- @return DeletePortfolioShareInput structure as a key-value pair table
function M.DeletePortfolioShareInput(args)
	assert(args, "You must provdide an argument table when creating DeletePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeletePortfolioShareInput(t)
	return t
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
-- * ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- * Info [ProvisioningArtifactInfo] <p>Additional information about the creation request for the provisioning artifact.</p>
-- * Status [Status] <p>The status of the current request.</p>
-- @return CreateProvisioningArtifactOutput structure as a key-value pair table
function M.CreateProvisioningArtifactOutput(args)
	assert(args, "You must provdide an argument table when creating CreateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = args["ProvisioningArtifactDetail"],
		["Info"] = args["Info"],
		["Status"] = args["Status"],
	}
	asserts.AssertCreateProvisioningArtifactOutput(t)
	return t
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
-- * TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
-- @return CreateTagOptionOutput structure as a key-value pair table
function M.CreateTagOptionOutput(args)
	assert(args, "You must provdide an argument table when creating CreateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = args["TagOptionDetail"],
	}
	asserts.AssertCreateTagOptionOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteConstraintOutput")
	local t = { 
	}
	asserts.AssertDeleteConstraintOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * SearchFilter [ListRecordHistorySearchFilter] <p>The filter to limit search results. </p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
-- @return ListRecordHistoryInput structure as a key-value pair table
function M.ListRecordHistoryInput(args)
	assert(args, "You must provdide an argument table when creating ListRecordHistoryInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["SearchFilter"] = args["SearchFilter"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
	}
	asserts.AssertListRecordHistoryInput(t)
	return t
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
-- <p>Detailed product view information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product view.</p>
-- * Status [Status] <p>Current status of the product.</p> <p> <code>AVAILABLE</code> - Product is available for use.</p> <p> <code>CREATING</code> - Creation of product started, not ready for use.</p> <p> <code>FAILED</code> - Action on product failed.</p>
-- * ProductARN [ResourceARN] <p>The ARN associated with the product.</p>
-- * CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @return ProductViewDetail structure as a key-value pair table
function M.ProductViewDetail(args)
	assert(args, "You must provdide an argument table when creating ProductViewDetail")
	local t = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["Status"] = args["Status"],
		["ProductARN"] = args["ProductARN"],
		["CreatedTime"] = args["CreatedTime"],
	}
	asserts.AssertProductViewDetail(t)
	return t
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
-- * ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- * ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> represent the ways in which the specified product can be provisioned.</p>
-- @return DescribeProductViewOutput structure as a key-value pair table
function M.DescribeProductViewOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductViewOutput")
	local t = { 
		["ProductViewSummary"] = args["ProductViewSummary"],
		["ProvisioningArtifacts"] = args["ProvisioningArtifacts"],
	}
	asserts.AssertDescribeProductViewOutput(t)
	return t
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
-- * PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- * Tags [Tags] <p>Tags associated with the portfolio.</p>
-- @return UpdatePortfolioOutput structure as a key-value pair table
function M.UpdatePortfolioOutput(args)
	assert(args, "You must provdide an argument table when creating UpdatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = args["PortfolioDetail"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertUpdatePortfolioOutput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * Principals [Principals] <p>The IAM principals (users or roles) associated with the portfolio.</p>
-- @return ListPrincipalsForPortfolioOutput structure as a key-value pair table
function M.ListPrincipalsForPortfolioOutput(args)
	assert(args, "You must provdide an argument table when creating ListPrincipalsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["Principals"] = args["Principals"],
	}
	asserts.AssertListPrincipalsForPortfolioOutput(t)
	return t
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
-- <p>The parameter key-value pair used to update a ProvisionedProduct object. If <code>UsePreviousValue</code> is set to true, <code>Value</code> is ignored and the value for <code>Key</code> is kept as previously set (current value).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [ParameterValue] <p>The value to use for updating the product provisioning. Any constraints on this value can be found in the <code>ProvisioningArtifactParameter</code> parameter for <code>Key</code>.</p>
-- * Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- * UsePreviousValue [UsePreviousValue] <p>If true, uses the currently set value for <code>Key</code>, ignoring <code>UpdateProvisioningParameter.Value</code>.</p>
-- @return UpdateProvisioningParameter structure as a key-value pair table
function M.UpdateProvisioningParameter(args)
	assert(args, "You must provdide an argument table when creating UpdateProvisioningParameter")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["UsePreviousValue"] = args["UsePreviousValue"],
	}
	asserts.AssertUpdateProvisioningParameter(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- Required key: PrincipalARN
-- @return DisassociatePrincipalFromPortfolioInput structure as a key-value pair table
function M.DisassociatePrincipalFromPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating DisassociatePrincipalFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PrincipalARN"] = args["PrincipalARN"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertDisassociatePrincipalFromPortfolioInput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ProvisioningArtifactDetails [ProvisioningArtifactDetails] <p>List of detailed provisioning artifact information objects.</p>
-- @return ListProvisioningArtifactsOutput structure as a key-value pair table
function M.ListProvisioningArtifactsOutput(args)
	assert(args, "You must provdide an argument table when creating ListProvisioningArtifactsOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProvisioningArtifactDetails"] = args["ProvisioningArtifactDetails"],
	}
	asserts.AssertListProvisioningArtifactsOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
-- @return ScanProvisionedProductsInput structure as a key-value pair table
function M.ScanProvisionedProductsInput(args)
	assert(args, "You must provdide an argument table when creating ScanProvisionedProductsInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["AccessLevelFilter"] = args["AccessLevelFilter"],
	}
	asserts.AssertScanProvisionedProductsInput(t)
	return t
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
-- * ResourceDetails [ResourceDetails] <p>The resulting detailed resource information.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @return ListResourcesForTagOptionOutput structure as a key-value pair table
function M.ListResourcesForTagOptionOutput(args)
	assert(args, "You must provdide an argument table when creating ListResourcesForTagOptionOutput")
	local t = { 
		["ResourceDetails"] = args["ResourceDetails"],
		["PageToken"] = args["PageToken"],
	}
	asserts.AssertListResourcesForTagOptionOutput(t)
	return t
end

keys.ProvisionedProductDetail = { ["Status"] = true, ["Name"] = true, ["LastRecordId"] = true, ["IdempotencyToken"] = true, ["Arn"] = true, ["CreatedTime"] = true, ["Type"] = true, ["Id"] = true, ["StatusMessage"] = true, nil }

function asserts.AssertProvisionedProductDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductDetail to be of type 'table'")
	if struct["Status"] then asserts.AssertProvisionedProductStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertProvisionedProductNameOrArn(struct["Name"]) end
	if struct["LastRecordId"] then asserts.AssertLastRequestId(struct["LastRecordId"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Arn"] then asserts.AssertProvisionedProductNameOrArn(struct["Arn"]) end
	if struct["CreatedTime"] then asserts.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Type"] then asserts.AssertProvisionedProductType(struct["Type"]) end
	if struct["Id"] then asserts.AssertProvisionedProductId(struct["Id"]) end
	if struct["StatusMessage"] then asserts.AssertProvisionedProductStatusMessage(struct["StatusMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedProductDetail[k], "ProvisionedProductDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductDetail
-- <p>Detailed information about a ProvisionedProduct object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ProvisionedProductStatus] <p>The current status of the ProvisionedProduct.</p> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent action request succeeded and completed.</p> <p> <code>UNDER_CHANGE</code> - Transitive state, operations performed may or may not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version. </p> <p> <code>ERROR</code> - Something unexpected happened such that the provisioned product exists but the stack is not running. For example, CloudFormation received an invalid parameter value and could not launch the stack.</p>
-- * Name [ProvisionedProductNameOrArn] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- * LastRecordId [LastRequestId] <p>The record identifier of the last request performed on this ProvisionedProduct object.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- * Arn [ProvisionedProductNameOrArn] <p>The ARN associated with the ProvisionedProduct object.</p>
-- * CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- * Type [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- * Id [ProvisionedProductId] <p>The identifier of the ProvisionedProduct object.</p>
-- * StatusMessage [ProvisionedProductStatusMessage] <p>The current status message of the ProvisionedProduct.</p>
-- @return ProvisionedProductDetail structure as a key-value pair table
function M.ProvisionedProductDetail(args)
	assert(args, "You must provdide an argument table when creating ProvisionedProductDetail")
	local t = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["LastRecordId"] = args["LastRecordId"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["Arn"] = args["Arn"],
		["CreatedTime"] = args["CreatedTime"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["StatusMessage"] = args["StatusMessage"],
	}
	asserts.AssertProvisionedProductDetail(t)
	return t
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
-- <p>Provisioning artifact properties. For example request JSON, see <a>CreateProvisioningArtifact</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact properties. When using this element in a request, you must specify <code>LoadTemplateFromURL</code>. For more information, see <a>CreateProvisioningArtifact</a>.</p>
-- * Type [ProvisioningArtifactType] <p>The type of the provisioning artifact properties. The following provisioning artifact property types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- * Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact properties.</p>
-- * Description [ProvisioningArtifactDescription] <p>The text description of the provisioning artifact properties.</p>
-- Required key: Info
-- @return ProvisioningArtifactProperties structure as a key-value pair table
function M.ProvisioningArtifactProperties(args)
	assert(args, "You must provdide an argument table when creating ProvisioningArtifactProperties")
	local t = { 
		["Info"] = args["Info"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertProvisioningArtifactProperties(t)
	return t
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
-- * RecordDetail [RecordDetail] <p>The detailed result of the <a>UpdateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
-- @return UpdateProvisionedProductOutput structure as a key-value pair table
function M.UpdateProvisionedProductOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = args["RecordDetail"],
	}
	asserts.AssertUpdateProvisionedProductOutput(t)
	return t
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
-- * ConstraintParameters [ConstraintParameters] <p>The resulting updated constraint parameters.</p>
-- * ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
-- @return UpdateConstraintOutput structure as a key-value pair table
function M.UpdateConstraintOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateConstraintOutput")
	local t = { 
		["Status"] = args["Status"],
		["ConstraintParameters"] = args["ConstraintParameters"],
		["ConstraintDetail"] = args["ConstraintDetail"],
	}
	asserts.AssertUpdateConstraintOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The identifier of the constraint to delete.</p>
-- Required key: Id
-- @return DeleteConstraintInput structure as a key-value pair table
function M.DeleteConstraintInput(args)
	assert(args, "You must provdide an argument table when creating DeleteConstraintInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteConstraintInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required key: PortfolioId
-- @return ListPortfolioAccessInput structure as a key-value pair table
function M.ListPortfolioAccessInput(args)
	assert(args, "You must provdide an argument table when creating ListPortfolioAccessInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PortfolioId"] = args["PortfolioId"],
	}
	asserts.AssertListPortfolioAccessInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AssociateTagOptionWithResourceOutput")
	local t = { 
	}
	asserts.AssertAssociateTagOptionWithResourceOutput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PortfolioId [Id] <p>The portfolio identifier.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: PortfolioId
-- @return ListConstraintsForPortfolioInput structure as a key-value pair table
function M.ListConstraintsForPortfolioInput(args)
	assert(args, "You must provdide an argument table when creating ListConstraintsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PortfolioId"] = args["PortfolioId"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListConstraintsForPortfolioInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * Id [Id] <p>The <code>ProductId</code> of the product to describe.</p>
-- Required key: Id
-- @return DescribeProductInput structure as a key-value pair table
function M.DescribeProductInput(args)
	assert(args, "You must provdide an argument table when creating DescribeProductInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["Id"] = args["Id"],
	}
	asserts.AssertDescribeProductInput(t)
	return t
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
-- * Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- * ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- * Tags [AddTags] <p>Tags to associate with the new portfolio.</p>
-- * IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- Required key: DisplayName
-- Required key: ProviderName
-- Required key: IdempotencyToken
-- @return CreatePortfolioInput structure as a key-value pair table
function M.CreatePortfolioInput(args)
	assert(args, "You must provdide an argument table when creating CreatePortfolioInput")
	local t = { 
		["DisplayName"] = args["DisplayName"],
		["Description"] = args["Description"],
		["ProviderName"] = args["ProviderName"],
		["Tags"] = args["Tags"],
		["IdempotencyToken"] = args["IdempotencyToken"],
		["AcceptLanguage"] = args["AcceptLanguage"],
	}
	asserts.AssertCreatePortfolioInput(t)
	return t
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
-- * NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- * ProductViewDetails [ProductViewDetails] <p>List of detailed product view information objects.</p>
-- @return SearchProductsAsAdminOutput structure as a key-value pair table
function M.SearchProductsAsAdminOutput(args)
	assert(args, "You must provdide an argument table when creating SearchProductsAsAdminOutput")
	local t = { 
		["NextPageToken"] = args["NextPageToken"],
		["ProductViewDetails"] = args["ProductViewDetails"],
	}
	asserts.AssertSearchProductsAsAdminOutput(t)
	return t
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
-- <p>A parameter used to successfully provision the product. This value includes a list of allowable values and additional metadata. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterType [ParameterType] <p>The parameter type.</p>
-- * ParameterConstraints [ParameterConstraints] <p>The list of constraints that the administrator has put on the parameter.</p>
-- * Description [Description] <p>The text description of the parameter.</p>
-- * DefaultValue [DefaultValue] <p>The default value for this parameter.</p>
-- * IsNoEcho [NoEcho] <p>If this value is true, the value for this parameter is obfuscated from view when the parameter is retrieved. This parameter is used to hide sensitive information.</p>
-- * ParameterKey [ParameterKey] <p>The parameter key. </p>
-- @return ProvisioningArtifactParameter structure as a key-value pair table
function M.ProvisioningArtifactParameter(args)
	assert(args, "You must provdide an argument table when creating ProvisioningArtifactParameter")
	local t = { 
		["ParameterType"] = args["ParameterType"],
		["ParameterConstraints"] = args["ParameterConstraints"],
		["Description"] = args["Description"],
		["DefaultValue"] = args["DefaultValue"],
		["IsNoEcho"] = args["IsNoEcho"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertProvisioningArtifactParameter(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the delete request. This is sometimes referred to as the product version.</p>
-- * ProductId [Id] <p>The product identifier.</p>
-- Required key: ProductId
-- Required key: ProvisioningArtifactId
-- @return DeleteProvisioningArtifactInput structure as a key-value pair table
function M.DeleteProvisioningArtifactInput(args)
	assert(args, "You must provdide an argument table when creating DeleteProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["ProvisioningArtifactId"] = args["ProvisioningArtifactId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertDeleteProvisioningArtifactInput(t)
	return t
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
-- * AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- * PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- * PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- * ProductId [Id] <p>The product identifier. Identifies the product for which to retrieve <code>LaunchPathSummaries</code> information.</p>
-- Required key: ProductId
-- @return ListLaunchPathsInput structure as a key-value pair table
function M.ListLaunchPathsInput(args)
	assert(args, "You must provdide an argument table when creating ListLaunchPathsInput")
	local t = { 
		["AcceptLanguage"] = args["AcceptLanguage"],
		["PageToken"] = args["PageToken"],
		["PageSize"] = args["PageSize"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertListLaunchPathsInput(t)
	return t
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
-- <p>A principal's ARN and type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- * PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- @return Principal structure as a key-value pair table
function M.Principal(args)
	assert(args, "You must provdide an argument table when creating Principal")
	local t = { 
		["PrincipalType"] = args["PrincipalType"],
		["PrincipalARN"] = args["PrincipalARN"],
	}
	asserts.AssertPrincipal(t)
	return t
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

function asserts.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProviderName(str)
	asserts.AssertProviderName(str)
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

function asserts.AssertRecordType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordType to be of type 'string'")
end

--  
function M.RecordType(str)
	asserts.AssertRecordType(str)
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

function asserts.AssertProvisionedProductStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductStatus to be of type 'string'")
end

--  
function M.ProvisionedProductStatus(str)
	asserts.AssertProvisionedProductStatus(str)
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

function asserts.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
end

--  
function M.PageToken(str)
	asserts.AssertPageToken(str)
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

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
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
end

--  
function M.ProductViewOwner(str)
	asserts.AssertProductViewOwner(str)
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

function asserts.AssertProductViewName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewName to be of type 'string'")
end

--  
function M.ProductViewName(str)
	asserts.AssertProductViewName(str)
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

function asserts.AssertProductViewShortDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewShortDescription to be of type 'string'")
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

function asserts.AssertSearchFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchFilterKey to be of type 'string'")
end

--  
function M.SearchFilterKey(str)
	asserts.AssertSearchFilterKey(str)
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

function asserts.AssertProvisionedProductId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductId to be of type 'string'")
end

--  
function M.ProvisionedProductId(str)
	asserts.AssertProvisionedProductId(str)
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

function asserts.AssertAllowedValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedValue to be of type 'string'")
end

--  
function M.AllowedValue(str)
	asserts.AssertAllowedValue(str)
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

function asserts.AssertResourceDetailARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailARN to be of type 'string'")
end

--  
function M.ResourceDetailARN(str)
	asserts.AssertResourceDetailARN(str)
	return str
end

function asserts.AssertAcceptLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected AcceptLanguage to be of type 'string'")
end

--  
function M.AcceptLanguage(str)
	asserts.AssertAcceptLanguage(str)
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

function asserts.AssertProvisioningArtifactInfoValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactInfoValue to be of type 'string'")
end

--  
function M.ProvisioningArtifactInfoValue(str)
	asserts.AssertProvisioningArtifactInfoValue(str)
	return str
end

function asserts.AssertSupportEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportEmail to be of type 'string'")
end

--  
function M.SupportEmail(str)
	asserts.AssertSupportEmail(str)
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

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
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

function asserts.AssertProvisioningArtifactDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactDescription to be of type 'string'")
end

--  
function M.ProvisioningArtifactDescription(str)
	asserts.AssertProvisioningArtifactDescription(str)
	return str
end

function asserts.AssertSupportUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportUrl to be of type 'string'")
end

--  
function M.SupportUrl(str)
	asserts.AssertSupportUrl(str)
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

function asserts.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	asserts.AssertParameterType(str)
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

function asserts.AssertPortfolioName(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioName to be of type 'string'")
end

--  
function M.PortfolioName(str)
	asserts.AssertPortfolioName(str)
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

function asserts.AssertConstraintParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintParameters to be of type 'string'")
end

--  
function M.ConstraintParameters(str)
	asserts.AssertConstraintParameters(str)
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

function asserts.AssertProductType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductType to be of type 'string'")
end

--  
function M.ProductType(str)
	asserts.AssertProductType(str)
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

function asserts.AssertInstructionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstructionValue to be of type 'string'")
end

--  
function M.InstructionValue(str)
	asserts.AssertInstructionValue(str)
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

function asserts.AssertAccessLevelFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLevelFilterValue to be of type 'string'")
end

--  
function M.AccessLevelFilterValue(str)
	asserts.AssertAccessLevelFilterValue(str)
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
end

--  
function M.SupportDescription(str)
	asserts.AssertSupportDescription(str)
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

function asserts.AssertApproximateCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ApproximateCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ApproximateCount(integer)
	asserts.AssertApproximateCount(integer)
	return integer
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

function asserts.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	asserts.AssertUsePreviousValue(boolean)
	return boolean
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

function asserts.AssertHasDefaultPath(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HasDefaultPath to be of type 'boolean'")
end

function M.HasDefaultPath(boolean)
	asserts.AssertHasDefaultPath(boolean)
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

function asserts.AssertVerbose(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Verbose to be of type 'boolean'")
end

function M.Verbose(boolean)
	asserts.AssertVerbose(boolean)
	return boolean
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

function asserts.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	asserts.AssertCreationTime(timestamp)
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
--- Call CreateConstraint asynchronously, invoking a callback when done
-- @param CreateConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConstraintAsync(CreateConstraintInput, cb)
	assert(CreateConstraintInput, "You must provide a CreateConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateConstraintSync(CreateConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConstraintAsync(CreateConstraintInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProductAsAdmin asynchronously, invoking a callback when done
-- @param DescribeProductAsAdminInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductAsAdminAsync(DescribeProductAsAdminInput, cb)
	assert(DescribeProductAsAdminInput, "You must provide a DescribeProductAsAdminInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductAsAdmin",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProductAsAdminSync(DescribeProductAsAdminInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductAsAdminAsync(DescribeProductAsAdminInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateProductWithPortfolio asynchronously, invoking a callback when done
-- @param AssociateProductWithPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateProductWithPortfolioAsync(AssociateProductWithPortfolioInput, cb)
	assert(AssociateProductWithPortfolioInput, "You must provide a AssociateProductWithPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateProductWithPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateProductWithPortfolioSync(AssociateProductWithPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateProductWithPortfolioAsync(AssociateProductWithPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPrincipalsForPortfolio asynchronously, invoking a callback when done
-- @param ListPrincipalsForPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalsForPortfolioAsync(ListPrincipalsForPortfolioInput, cb)
	assert(ListPrincipalsForPortfolioInput, "You must provide a ListPrincipalsForPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPrincipalsForPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListPrincipalsForPortfolioSync(ListPrincipalsForPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPrincipalsForPortfolioAsync(ListPrincipalsForPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTagOption asynchronously, invoking a callback when done
-- @param UpdateTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTagOptionAsync(UpdateTagOptionInput, cb)
	assert(UpdateTagOptionInput, "You must provide a UpdateTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateTagOptionSync(UpdateTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTagOptionAsync(UpdateTagOptionInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociatePrincipalFromPortfolio asynchronously, invoking a callback when done
-- @param DisassociatePrincipalFromPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociatePrincipalFromPortfolioAsync(DisassociatePrincipalFromPortfolioInput, cb)
	assert(DisassociatePrincipalFromPortfolioInput, "You must provide a DisassociatePrincipalFromPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociatePrincipalFromPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociatePrincipalFromPortfolioSync(DisassociatePrincipalFromPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociatePrincipalFromPortfolioAsync(DisassociatePrincipalFromPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociatePrincipalWithPortfolio asynchronously, invoking a callback when done
-- @param AssociatePrincipalWithPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociatePrincipalWithPortfolioAsync(AssociatePrincipalWithPortfolioInput, cb)
	assert(AssociatePrincipalWithPortfolioInput, "You must provide a AssociatePrincipalWithPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociatePrincipalWithPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociatePrincipalWithPortfolioSync(AssociatePrincipalWithPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociatePrincipalWithPortfolioAsync(AssociatePrincipalWithPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRecordHistory asynchronously, invoking a callback when done
-- @param ListRecordHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListRecordHistoryAsync(ListRecordHistoryInput, cb)
	assert(ListRecordHistoryInput, "You must provide a ListRecordHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListRecordHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListRecordHistorySync(ListRecordHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRecordHistoryAsync(ListRecordHistoryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchProductsAsAdmin asynchronously, invoking a callback when done
-- @param SearchProductsAsAdminInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchProductsAsAdminAsync(SearchProductsAsAdminInput, cb)
	assert(SearchProductsAsAdminInput, "You must provide a SearchProductsAsAdminInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProductsAsAdmin",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SearchProductsAsAdminSync(SearchProductsAsAdminInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProductsAsAdminAsync(SearchProductsAsAdminInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourcesForTagOption asynchronously, invoking a callback when done
-- @param ListResourcesForTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourcesForTagOptionAsync(ListResourcesForTagOptionInput, cb)
	assert(ListResourcesForTagOptionInput, "You must provide a ListResourcesForTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListResourcesForTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListResourcesForTagOptionSync(ListResourcesForTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesForTagOptionAsync(ListResourcesForTagOptionInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProvisioningArtifact asynchronously, invoking a callback when done
-- @param CreateProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProvisioningArtifactAsync(CreateProvisioningArtifactInput, cb)
	assert(CreateProvisioningArtifactInput, "You must provide a CreateProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateProvisioningArtifactSync(CreateProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProvisioningArtifactAsync(CreateProvisioningArtifactInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfolios asynchronously, invoking a callback when done
-- @param ListPortfoliosInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfoliosAsync(ListPortfoliosInput, cb)
	assert(ListPortfoliosInput, "You must provide a ListPortfoliosInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolios",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListPortfoliosSync(ListPortfoliosInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfoliosAsync(ListPortfoliosInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProduct asynchronously, invoking a callback when done
-- @param DescribeProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductAsync(DescribeProductInput, cb)
	assert(DescribeProductInput, "You must provide a DescribeProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProductSync(DescribeProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductAsync(DescribeProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePortfolioShare asynchronously, invoking a callback when done
-- @param CreatePortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePortfolioShareAsync(CreatePortfolioShareInput, cb)
	assert(CreatePortfolioShareInput, "You must provide a CreatePortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreatePortfolioShareSync(CreatePortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePortfolioShareAsync(CreatePortfolioShareInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagOptions asynchronously, invoking a callback when done
-- @param ListTagOptionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagOptionsAsync(ListTagOptionsInput, cb)
	assert(ListTagOptionsInput, "You must provide a ListTagOptionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListTagOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListTagOptionsSync(ListTagOptionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagOptionsAsync(ListTagOptionsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLaunchPaths asynchronously, invoking a callback when done
-- @param ListLaunchPathsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListLaunchPathsAsync(ListLaunchPathsInput, cb)
	assert(ListLaunchPathsInput, "You must provide a ListLaunchPathsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListLaunchPaths",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListLaunchPathsSync(ListLaunchPathsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLaunchPathsAsync(ListLaunchPathsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProduct asynchronously, invoking a callback when done
-- @param CreateProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProductAsync(CreateProductInput, cb)
	assert(CreateProductInput, "You must provide a CreateProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateProductSync(CreateProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProductAsync(CreateProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAcceptedPortfolioShares asynchronously, invoking a callback when done
-- @param ListAcceptedPortfolioSharesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListAcceptedPortfolioSharesAsync(ListAcceptedPortfolioSharesInput, cb)
	assert(ListAcceptedPortfolioSharesInput, "You must provide a ListAcceptedPortfolioSharesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListAcceptedPortfolioShares",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListAcceptedPortfolioSharesSync(ListAcceptedPortfolioSharesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAcceptedPortfolioSharesAsync(ListAcceptedPortfolioSharesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfoliosForProduct asynchronously, invoking a callback when done
-- @param ListPortfoliosForProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfoliosForProductAsync(ListPortfoliosForProductInput, cb)
	assert(ListPortfoliosForProductInput, "You must provide a ListPortfoliosForProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfoliosForProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListPortfoliosForProductSync(ListPortfoliosForProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfoliosForProductAsync(ListPortfoliosForProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProvisioningArtifacts asynchronously, invoking a callback when done
-- @param ListProvisioningArtifactsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListProvisioningArtifactsAsync(ListProvisioningArtifactsInput, cb)
	assert(ListProvisioningArtifactsInput, "You must provide a ListProvisioningArtifactsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListProvisioningArtifacts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListProvisioningArtifactsSync(ListProvisioningArtifactsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProvisioningArtifactsAsync(ListProvisioningArtifactsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectPortfolioShare asynchronously, invoking a callback when done
-- @param RejectPortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.RejectPortfolioShareAsync(RejectPortfolioShareInput, cb)
	assert(RejectPortfolioShareInput, "You must provide a RejectPortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.RejectPortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RejectPortfolioShareSync(RejectPortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectPortfolioShareAsync(RejectPortfolioShareInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateProductFromPortfolio asynchronously, invoking a callback when done
-- @param DisassociateProductFromPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateProductFromPortfolioAsync(DisassociateProductFromPortfolioInput, cb)
	assert(DisassociateProductFromPortfolioInput, "You must provide a DisassociateProductFromPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateProductFromPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociateProductFromPortfolioSync(DisassociateProductFromPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateProductFromPortfolioAsync(DisassociateProductFromPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptPortfolioShare asynchronously, invoking a callback when done
-- @param AcceptPortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptPortfolioShareAsync(AcceptPortfolioShareInput, cb)
	assert(AcceptPortfolioShareInput, "You must provide a AcceptPortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AcceptPortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AcceptPortfolioShareSync(AcceptPortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptPortfolioShareAsync(AcceptPortfolioShareInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisionedProduct asynchronously, invoking a callback when done
-- @param DescribeProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisionedProductAsync(DescribeProvisionedProductInput, cb)
	assert(DescribeProvisionedProductInput, "You must provide a DescribeProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProvisionedProductSync(DescribeProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisionedProductAsync(DescribeProvisionedProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPortfolioAccess asynchronously, invoking a callback when done
-- @param ListPortfolioAccessInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfolioAccessAsync(ListPortfolioAccessInput, cb)
	assert(ListPortfolioAccessInput, "You must provide a ListPortfolioAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolioAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListPortfolioAccessSync(ListPortfolioAccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPortfolioAccessAsync(ListPortfolioAccessInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProvisioningArtifact asynchronously, invoking a callback when done
-- @param DeleteProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProvisioningArtifactAsync(DeleteProvisioningArtifactInput, cb)
	assert(DeleteProvisioningArtifactInput, "You must provide a DeleteProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteProvisioningArtifactSync(DeleteProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProvisioningArtifactAsync(DeleteProvisioningArtifactInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProvisioningArtifact asynchronously, invoking a callback when done
-- @param UpdateProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProvisioningArtifactAsync(UpdateProvisioningArtifactInput, cb)
	assert(UpdateProvisioningArtifactInput, "You must provide a UpdateProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateProvisioningArtifactSync(UpdateProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProvisioningArtifactAsync(UpdateProvisioningArtifactInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConstraint asynchronously, invoking a callback when done
-- @param DescribeConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConstraintAsync(DescribeConstraintInput, cb)
	assert(DescribeConstraintInput, "You must provide a DescribeConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConstraintSync(DescribeConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConstraintAsync(DescribeConstraintInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePortfolio asynchronously, invoking a callback when done
-- @param UpdatePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePortfolioAsync(UpdatePortfolioInput, cb)
	assert(UpdatePortfolioInput, "You must provide a UpdatePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdatePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdatePortfolioSync(UpdatePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePortfolioAsync(UpdatePortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePortfolio asynchronously, invoking a callback when done
-- @param DeletePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePortfolioAsync(DeletePortfolioInput, cb)
	assert(DeletePortfolioInput, "You must provide a DeletePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeletePortfolioSync(DeletePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePortfolioAsync(DeletePortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRecord asynchronously, invoking a callback when done
-- @param DescribeRecordInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRecordAsync(DescribeRecordInput, cb)
	assert(DescribeRecordInput, "You must provide a DescribeRecordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeRecord",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeRecordSync(DescribeRecordInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRecordAsync(DescribeRecordInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateTagOptionWithResource asynchronously, invoking a callback when done
-- @param AssociateTagOptionWithResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateTagOptionWithResourceAsync(AssociateTagOptionWithResourceInput, cb)
	assert(AssociateTagOptionWithResourceInput, "You must provide a AssociateTagOptionWithResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateTagOptionWithResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateTagOptionWithResourceSync(AssociateTagOptionWithResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateTagOptionWithResourceAsync(AssociateTagOptionWithResourceInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConstraint asynchronously, invoking a callback when done
-- @param UpdateConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConstraintAsync(UpdateConstraintInput, cb)
	assert(UpdateConstraintInput, "You must provide a UpdateConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateConstraintSync(UpdateConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConstraintAsync(UpdateConstraintInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProduct asynchronously, invoking a callback when done
-- @param DeleteProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProductAsync(DeleteProductInput, cb)
	assert(DeleteProductInput, "You must provide a DeleteProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteProductSync(DeleteProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProductAsync(DeleteProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProductView asynchronously, invoking a callback when done
-- @param DescribeProductViewInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductViewAsync(DescribeProductViewInput, cb)
	assert(DescribeProductViewInput, "You must provide a DescribeProductViewInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductView",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProductViewSync(DescribeProductViewInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProductViewAsync(DescribeProductViewInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateProvisionedProduct asynchronously, invoking a callback when done
-- @param TerminateProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateProvisionedProductAsync(TerminateProvisionedProductInput, cb)
	assert(TerminateProvisionedProductInput, "You must provide a TerminateProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.TerminateProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.TerminateProvisionedProductSync(TerminateProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateProvisionedProductAsync(TerminateProvisionedProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePortfolio asynchronously, invoking a callback when done
-- @param DescribePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePortfolioAsync(DescribePortfolioInput, cb)
	assert(DescribePortfolioInput, "You must provide a DescribePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribePortfolioSync(DescribePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePortfolioAsync(DescribePortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePortfolioShare asynchronously, invoking a callback when done
-- @param DeletePortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePortfolioShareAsync(DeletePortfolioShareInput, cb)
	assert(DeletePortfolioShareInput, "You must provide a DeletePortfolioShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeletePortfolioShareSync(DeletePortfolioShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePortfolioShareAsync(DeletePortfolioShareInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ScanProvisionedProducts asynchronously, invoking a callback when done
-- @param ScanProvisionedProductsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ScanProvisionedProductsAsync(ScanProvisionedProductsInput, cb)
	assert(ScanProvisionedProductsInput, "You must provide a ScanProvisionedProductsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ScanProvisionedProducts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ScanProvisionedProductsSync(ScanProvisionedProductsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScanProvisionedProductsAsync(ScanProvisionedProductsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTagOption asynchronously, invoking a callback when done
-- @param CreateTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagOptionAsync(CreateTagOptionInput, cb)
	assert(CreateTagOptionInput, "You must provide a CreateTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateTagOptionSync(CreateTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagOptionAsync(CreateTagOptionInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProvisionedProduct asynchronously, invoking a callback when done
-- @param UpdateProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProvisionedProductAsync(UpdateProvisionedProductInput, cb)
	assert(UpdateProvisionedProductInput, "You must provide a UpdateProvisionedProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateProvisionedProductSync(UpdateProvisionedProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProvisionedProductAsync(UpdateProvisionedProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProduct asynchronously, invoking a callback when done
-- @param UpdateProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProductAsync(UpdateProductInput, cb)
	assert(UpdateProductInput, "You must provide a UpdateProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateProductSync(UpdateProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProductAsync(UpdateProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisioningArtifact asynchronously, invoking a callback when done
-- @param DescribeProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisioningArtifactAsync(DescribeProvisioningArtifactInput, cb)
	assert(DescribeProvisioningArtifactInput, "You must provide a DescribeProvisioningArtifactInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProvisioningArtifactSync(DescribeProvisioningArtifactInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisioningArtifactAsync(DescribeProvisioningArtifactInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConstraintsForPortfolio asynchronously, invoking a callback when done
-- @param ListConstraintsForPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListConstraintsForPortfolioAsync(ListConstraintsForPortfolioInput, cb)
	assert(ListConstraintsForPortfolioInput, "You must provide a ListConstraintsForPortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListConstraintsForPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListConstraintsForPortfolioSync(ListConstraintsForPortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConstraintsForPortfolioAsync(ListConstraintsForPortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateTagOptionFromResource asynchronously, invoking a callback when done
-- @param DisassociateTagOptionFromResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateTagOptionFromResourceAsync(DisassociateTagOptionFromResourceInput, cb)
	assert(DisassociateTagOptionFromResourceInput, "You must provide a DisassociateTagOptionFromResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateTagOptionFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociateTagOptionFromResourceSync(DisassociateTagOptionFromResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateTagOptionFromResourceAsync(DisassociateTagOptionFromResourceInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchProducts asynchronously, invoking a callback when done
-- @param SearchProductsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchProductsAsync(SearchProductsInput, cb)
	assert(SearchProductsInput, "You must provide a SearchProductsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProducts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SearchProductsSync(SearchProductsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProductsAsync(SearchProductsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConstraint asynchronously, invoking a callback when done
-- @param DeleteConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConstraintAsync(DeleteConstraintInput, cb)
	assert(DeleteConstraintInput, "You must provide a DeleteConstraintInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteConstraintSync(DeleteConstraintInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConstraintAsync(DeleteConstraintInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ProvisionProduct asynchronously, invoking a callback when done
-- @param ProvisionProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.ProvisionProductAsync(ProvisionProductInput, cb)
	assert(ProvisionProductInput, "You must provide a ProvisionProductInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ProvisionProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ProvisionProductSync(ProvisionProductInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ProvisionProductAsync(ProvisionProductInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePortfolio asynchronously, invoking a callback when done
-- @param CreatePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePortfolioAsync(CreatePortfolioInput, cb)
	assert(CreatePortfolioInput, "You must provide a CreatePortfolioInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreatePortfolioSync(CreatePortfolioInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePortfolioAsync(CreatePortfolioInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProvisioningParameters asynchronously, invoking a callback when done
-- @param DescribeProvisioningParametersInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisioningParametersAsync(DescribeProvisioningParametersInput, cb)
	assert(DescribeProvisioningParametersInput, "You must provide a DescribeProvisioningParametersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProvisioningParametersSync(DescribeProvisioningParametersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProvisioningParametersAsync(DescribeProvisioningParametersInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTagOption asynchronously, invoking a callback when done
-- @param DescribeTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagOptionAsync(DescribeTagOptionInput, cb)
	assert(DescribeTagOptionInput, "You must provide a DescribeTagOptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeTagOptionSync(DescribeTagOptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagOptionAsync(DescribeTagOptionInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
