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
-- @param _ResourceId [ResourceId] <p>Identifier of the resource from which to disassociate the TagOption.</p>
-- @param _TagOptionId [TagOptionId] <p>Identifier of the TagOption to disassociate from the resource.</p>
-- Required parameter: ResourceId
-- Required parameter: TagOptionId
function M.DisassociateTagOptionFromResourceInput(_ResourceId, _TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTagOptionFromResourceInput")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagOptionId"] = _TagOptionId,
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
-- @param _Value [TagOptionValue] <p>The TagOption value.</p>
-- @param _Key [TagOptionKey] <p>The TagOption key.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.CreateTagOptionInput(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagOptionInput")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
-- @param _TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.DescribeTagOptionOutput(_TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = _TagOptionDetail,
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
-- @param _TagOptions [TagOptionDetails] <p>TagOptions associated with the portfolio.</p>
-- @param _PortfolioDetail [PortfolioDetail] <p>Detailed portfolio information.</p>
-- @param _Tags [Tags] <p>Tags associated with the portfolio.</p>
function M.DescribePortfolioOutput(_TagOptions, _PortfolioDetail, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePortfolioOutput")
	local t = { 
		["TagOptions"] = _TagOptions,
		["PortfolioDetail"] = _PortfolioDetail,
		["Tags"] = _Tags,
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
function M.RejectPortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectPortfolioShareOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.RejectPortfolioShareInput(_AcceptLanguage, _PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
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
-- @param _Type [InstructionType] <p>The usage instruction type for the value.</p>
-- @param _Value [InstructionValue] <p>The usage instruction value for this type.</p>
function M.UsageInstruction(_Type, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageInstruction")
	local t = { 
		["Type"] = _Type,
		["Value"] = _Value,
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
-- @param _ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param _ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to update. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param _ProvisioningParameters [UpdateProvisioningParameters] <p>A list of <code>ProvisioningParameter</code> objects used to update the ProvisionedProduct object.</p>
-- @param _PathId [Id] <p>The identifier of the path to use in the updated ProvisionedProduct object. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param _UpdateToken [IdempotencyToken] <p>The idempotency token that uniquely identifies the provisioning update request.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisionedProductName [ProvisionedProductNameOrArn] <p>The updated name of the ProvisionedProduct object. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param _ProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- Required parameter: UpdateToken
function M.UpdateProvisionedProductInput(_ProvisioningArtifactId, _ProvisionedProductId, _ProvisioningParameters, _PathId, _UpdateToken, _AcceptLanguage, _ProvisionedProductName, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisionedProductInput")
	local t = { 
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["ProvisionedProductId"] = _ProvisionedProductId,
		["ProvisioningParameters"] = _ProvisioningParameters,
		["PathId"] = _PathId,
		["UpdateToken"] = _UpdateToken,
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisionedProductName"] = _ProvisionedProductName,
		["ProductId"] = _ProductId,
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
-- @param _ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param _ProvisionedProductName [ProvisionedProductName] <p>A user-friendly name to identify the ProvisionedProduct object. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>
-- @param _Tags [Tags] <p>A list of tags to use as provisioning options.</p>
-- @param _ProvisioningParameters [ProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- @param _PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param _ProvisionToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the provisioning request. </p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
-- Required parameter: ProvisionedProductName
-- Required parameter: ProvisionToken
function M.ProvisionProductInput(_ProvisioningArtifactId, _ProvisionedProductName, _Tags, _ProvisioningParameters, _PathId, _ProvisionToken, _AcceptLanguage, _NotificationArns, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionProductInput")
	local t = { 
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["ProvisionedProductName"] = _ProvisionedProductName,
		["Tags"] = _Tags,
		["ProvisioningParameters"] = _ProvisioningParameters,
		["PathId"] = _PathId,
		["ProvisionToken"] = _ProvisionToken,
		["AcceptLanguage"] = _AcceptLanguage,
		["NotificationArns"] = _NotificationArns,
		["ProductId"] = _ProductId,
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
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
-- @param _Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the calling user has access. </p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
function M.SearchProductsInput(_PageSize, _PageToken, _SortOrder, _Filters, _AcceptLanguage, _SortBy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsInput")
	local t = { 
		["PageSize"] = _PageSize,
		["PageToken"] = _PageToken,
		["SortOrder"] = _SortOrder,
		["Filters"] = _Filters,
		["AcceptLanguage"] = _AcceptLanguage,
		["SortBy"] = _SortBy,
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
-- @param _Status [Status] <p>The status of the current request.</p>
-- @param _ConstraintParameters [ConstraintParameters] <p>The resulting constraint parameters.</p>
-- @param _ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
function M.CreateConstraintOutput(_Status, _ConstraintParameters, _ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConstraintOutput")
	local t = { 
		["Status"] = _Status,
		["ConstraintParameters"] = _ConstraintParameters,
		["ConstraintDetail"] = _ConstraintDetail,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
function M.ListPortfoliosInput(_AcceptLanguage, _PageToken, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
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
-- @param _ApproximateCount [ApproximateCount] <p>An approximate count of the products that match the value.</p>
-- @param _Value [AttributeValue] <p>The value of the product view aggregation.</p>
function M.ProductViewAggregationValue(_ApproximateCount, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewAggregationValue")
	local t = { 
		["ApproximateCount"] = _ApproximateCount,
		["Value"] = _Value,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the portfolio for the delete request.</p>
-- Required parameter: Id
function M.DeletePortfolioInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _Type [ConstraintType] <p>The type of the constraint. </p>
-- @param _Description [ConstraintDescription] <p>The text description of the constraint.</p>
function M.ConstraintSummary(_Type, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintSummary")
	local t = { 
		["Type"] = _Type,
		["Description"] = _Description,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _AccountId [AccountId] <p>The account ID with which to share the portfolio.</p>
-- Required parameter: PortfolioId
-- Required parameter: AccountId
function M.CreatePortfolioShareInput(_AcceptLanguage, _PortfolioId, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
		["AccountId"] = _AccountId,
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
-- @param _Value [AccessLevelFilterValue] <p>Specifies the user to which the access level applies. A value of <code>Self</code> is currently supported.</p>
-- @param _Key [AccessLevelFilterKey] <p>Specifies the access level.</p> <p> <code>Account</code> allows results at the account level. </p> <p> <code>Role</code> allows results based on the federated role of the specified user.</p> <p> <code>User</code> allows results limited to the specified user. </p>
function M.AccessLevelFilter(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessLevelFilter")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
-- @param _TagOptions [TagOptionSummaries] <p>List of TagOptions associated with the provisioned provisioning parameters.</p>
-- @param _ProvisioningArtifactParameters [ProvisioningArtifactParameters] <p>The list of parameters used to successfully provision the product. Each parameter includes a list of allowable values and additional metadata about each parameter.</p>
-- @param _ConstraintSummaries [ConstraintSummaries] <p>The list of constraint summaries that apply to provisioning this product.</p>
-- @param _UsageInstructions [UsageInstructions] <p>Any additional metadata specifically related to the provisioning of the product. For example, see the <code>Version</code> field of the CloudFormation template.</p>
function M.DescribeProvisioningParametersOutput(_TagOptions, _ProvisioningArtifactParameters, _ConstraintSummaries, _UsageInstructions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningParametersOutput")
	local t = { 
		["TagOptions"] = _TagOptions,
		["ProvisioningArtifactParameters"] = _ProvisioningArtifactParameters,
		["ConstraintSummaries"] = _ConstraintSummaries,
		["UsageInstructions"] = _UsageInstructions,
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
-- @param _TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.UpdateTagOptionOutput(_TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = _TagOptionDetail,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param _TerminateToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the ProvisionedProduct object is terminated, further requests to terminate the same ProvisionedProduct object always return <b>ResourceNotFound</b> regardless of the value of <code>TerminateToken</code>.</p>
-- @param _IgnoreErrors [IgnoreErrors] <p>If set to true, AWS Service Catalog stops managing the specified ProvisionedProduct object even if it cannot delete the underlying resources.</p>
-- @param _ProvisionedProductName [ProvisionedProductNameOrArn] <p>The name of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- Required parameter: TerminateToken
function M.TerminateProvisionedProductInput(_AcceptLanguage, _ProvisionedProductId, _TerminateToken, _IgnoreErrors, _ProvisionedProductName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisionedProductId"] = _ProvisionedProductId,
		["TerminateToken"] = _TerminateToken,
		["IgnoreErrors"] = _IgnoreErrors,
		["ProvisionedProductName"] = _ProvisionedProductName,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _Id [Id] <p>The record identifier of the ProvisionedProduct object for which to retrieve output information. This is the <code>RecordDetail.RecordId</code> obtained from the request operation's response.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required parameter: Id
function M.DescribeRecordInput(_AcceptLanguage, _PageToken, _Id, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRecordInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["Id"] = _Id,
		["PageSize"] = _PageSize,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the constraint.</p>
-- Required parameter: Id
function M.DescribeConstraintInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConstraintInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
function M.InvalidStateException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStateException")
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
-- @param _Values [TagOptionValues] <p>The TagOptionSummary value.</p>
-- @param _Key [TagOptionKey] <p>The TagOptionSummary key.</p>
function M.TagOptionSummary(_Values, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionSummary")
	local t = { 
		["Values"] = _Values,
		["Key"] = _Key,
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
-- @param _ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- @param _Tags [Tags] <p>Tags associated with the product.</p>
function M.UpdateProductOutput(_ProductViewDetail, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProductOutput")
	local t = { 
		["ProductViewDetail"] = _ProductViewDetail,
		["Tags"] = _Tags,
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
function M.DeletePortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- @param _Verbose [Verbose] <p>Enable a verbose level of details for the provisioning artifact.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProvisioningArtifactId
-- Required parameter: ProductId
function M.DescribeProvisioningArtifactInput(_AcceptLanguage, _ProvisioningArtifactId, _Verbose, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["Verbose"] = _Verbose,
		["ProductId"] = _ProductId,
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
-- @param _ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- @param _ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param _Tags [Tags] <p>Tags successfully associated with the new product.</p>
function M.CreateProductOutput(_ProductViewDetail, _ProvisioningArtifactDetail, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProductOutput")
	local t = { 
		["ProductViewDetail"] = _ProductViewDetail,
		["ProvisioningArtifactDetail"] = _ProvisioningArtifactDetail,
		["Tags"] = _Tags,
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
-- @param _Value [ParameterValue] <p>The value to use for provisioning. Any constraints on this value can be found in <code>ProvisioningArtifactParameter</code> for <code>Key</code>.</p>
-- @param _Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
function M.ProvisioningParameter(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningParameter")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListPortfoliosForProductOutput(_NextPageToken, _PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosForProductOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["PortfolioDetails"] = _PortfolioDetails,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the product for the delete request.</p>
-- Required parameter: Id
function M.DeleteProductInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProductInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
function M.DeleteProductOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProductOutput")
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
-- @param _RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the portfolio.</p>
-- @param _DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param _AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the portfolio.</p>
-- @param _ProviderName [ProviderName] <p>The updated name of the portfolio provider.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the portfolio for the update request.</p>
-- @param _Description [PortfolioDescription] <p>The updated text description of the portfolio.</p>
-- Required parameter: Id
function M.UpdatePortfolioInput(_RemoveTags, _DisplayName, _AddTags, _ProviderName, _AcceptLanguage, _Id, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePortfolioInput")
	local t = { 
		["RemoveTags"] = _RemoveTags,
		["DisplayName"] = _DisplayName,
		["AddTags"] = _AddTags,
		["ProviderName"] = _ProviderName,
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
		["Description"] = _Description,
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
-- @param _RecordDetail [RecordDetail] <p>The detailed result of the <a>ProvisionProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object of the request, and a list of any errors that the request encountered. </p>
function M.ProvisionProductOutput(_RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionProductOutput")
	local t = { 
		["RecordDetail"] = _RecordDetail,
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
function M.DuplicateResourceException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateResourceException")
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
function M.InvalidParametersException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParametersException")
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _LaunchPathSummaries [LaunchPathSummaries] <p>List of launch path information summaries for the specified <code>PageToken</code>.</p>
function M.ListLaunchPathsOutput(_NextPageToken, _LaunchPathSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLaunchPathsOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["LaunchPathSummaries"] = _LaunchPathSummaries,
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
-- @param _SupportDescription [SupportDescription] <p>The description of the support for this Product.</p>
-- @param _Name [ProductViewName] <p>The name of the product.</p>
-- @param _HasDefaultPath [HasDefaultPath] <p>A value of <code>false</code> indicates that the product does not have a default path, while a value of <code>true</code> indicates that it does. If it's false, call <a>ListLaunchPaths</a> to disambiguate between paths. If true, <a>ListLaunchPaths</a> is not required, and the output of the <a>ProductViewSummary</a> operation can be used directly with <a>DescribeProvisioningParameters</a>.</p>
-- @param _ShortDescription [ProductViewShortDescription] <p>Short description of the product.</p>
-- @param _SupportUrl [SupportUrl] <p>The URL information to obtain support for this Product.</p>
-- @param _Distributor [ProductViewDistributor] <p>The distributor of the product. Contact the product administrator for the significance of this value.</p>
-- @param _Owner [ProductViewOwner] <p>The owner of the product. Contact the product administrator for the significance of this value.</p>
-- @param _SupportEmail [SupportEmail] <p>The email contact information to obtain support for this Product.</p>
-- @param _Type [ProductType] <p>The product type. Contact the product administrator for the significance of this value. If this value is <code>MARKETPLACE</code>, the product was created by AWS Marketplace.</p>
-- @param _Id [Id] <p>The product view identifier.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
function M.ProductViewSummary(_SupportDescription, _Name, _HasDefaultPath, _ShortDescription, _SupportUrl, _Distributor, _Owner, _SupportEmail, _Type, _Id, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewSummary")
	local t = { 
		["SupportDescription"] = _SupportDescription,
		["Name"] = _Name,
		["HasDefaultPath"] = _HasDefaultPath,
		["ShortDescription"] = _ShortDescription,
		["SupportUrl"] = _SupportUrl,
		["Distributor"] = _Distributor,
		["Owner"] = _Owner,
		["SupportEmail"] = _SupportEmail,
		["Type"] = _Type,
		["Id"] = _Id,
		["ProductId"] = _ProductId,
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
-- @param _Owner [AccountId] <p>The owner of the constraint.</p>
-- @param _ConstraintId [Id] <p>The identifier of the constraint.</p>
-- @param _Type [ConstraintType] <p>The type of the constraint.</p>
-- @param _Description [ConstraintDescription] <p>The text description of the constraint.</p>
function M.ConstraintDetail(_Owner, _ConstraintId, _Type, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintDetail")
	local t = { 
		["Owner"] = _Owner,
		["ConstraintId"] = _ConstraintId,
		["Type"] = _Type,
		["Description"] = _Description,
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
-- @param _Value [TagValue] <p>The desired value for this key.</p>
-- @param _Key [TagKey] <p>The <code>ProvisioningArtifactParameter.TagKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
function M.ListProvisioningArtifactsInput(_AcceptLanguage, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisioningArtifactsInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProductId"] = _ProductId,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: PortfolioId
function M.DisassociateProductFromPortfolioInput(_AcceptLanguage, _PortfolioId, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateProductFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
		["ProductId"] = _ProductId,
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
-- @param _RecordDetail [RecordDetail] <p>Detailed record information for the specified product. </p>
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _RecordOutputs [RecordOutputs] <p>A list of outputs for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
function M.DescribeRecordOutput(_RecordDetail, _NextPageToken, _RecordOutputs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRecordOutput")
	local t = { 
		["RecordDetail"] = _RecordDetail,
		["NextPageToken"] = _NextPageToken,
		["RecordOutputs"] = _RecordOutputs,
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
-- @param _CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param _Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact.</p>
-- @param _ProvisioningArtifactMetadata [ProvisioningArtifactInfo] <p>The provisioning artifact metadata. This data is used with products created by AWS Marketplace.</p>
-- @param _Id [Id] <p>The identifier of the provisioning artifact.</p>
-- @param _Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
function M.ProvisioningArtifactSummary(_CreatedTime, _Description, _ProvisioningArtifactMetadata, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactSummary")
	local t = { 
		["CreatedTime"] = _CreatedTime,
		["Description"] = _Description,
		["ProvisioningArtifactMetadata"] = _ProvisioningArtifactMetadata,
		["Id"] = _Id,
		["Name"] = _Name,
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
-- @param _ProductSource [ProductSource] <p>Access level of the source of the product.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
-- @param _Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the administrator has access.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
function M.SearchProductsAsAdminInput(_ProductSource, _PortfolioId, _PageSize, _PageToken, _SortBy, _Filters, _AcceptLanguage, _SortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsAsAdminInput")
	local t = { 
		["ProductSource"] = _ProductSource,
		["PortfolioId"] = _PortfolioId,
		["PageSize"] = _PageSize,
		["PageToken"] = _PageToken,
		["SortBy"] = _SortBy,
		["Filters"] = _Filters,
		["AcceptLanguage"] = _AcceptLanguage,
		["SortOrder"] = _SortOrder,
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
-- @param _ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param _Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact update request.</p>
-- @param _Status [Status] <p>The status of the current request.</p>
function M.UpdateProvisioningArtifactOutput(_ProvisioningArtifactDetail, _Info, _Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = _ProvisioningArtifactDetail,
		["Info"] = _Info,
		["Status"] = _Status,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _SourcePortfolioId [Id] <p>The identifier of the source portfolio to use with this association.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: PortfolioId
function M.AssociateProductWithPortfolioInput(_AcceptLanguage, _SourcePortfolioId, _PortfolioId, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateProductWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["SourcePortfolioId"] = _SourcePortfolioId,
		["PortfolioId"] = _PortfolioId,
		["ProductId"] = _ProductId,
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
-- @param _AllowedValues [AllowedValues] <p>The values that the administrator has allowed for the parameter.</p>
function M.ParameterConstraints(_AllowedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterConstraints")
	local t = { 
		["AllowedValues"] = _AllowedValues,
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
-- @param _ResourceType [ResourceType] <p>Resource type.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _TagOptionId [TagOptionId] <p>Identifier of the TagOption.</p>
-- Required parameter: TagOptionId
function M.ListResourcesForTagOptionInput(_ResourceType, _PageToken, _PageSize, _TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesForTagOptionInput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["TagOptionId"] = _TagOptionId,
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
-- @param _Active [TagOptionActive] <p>The updated active state.</p>
-- @param _Id [TagOptionId] <p>The identifier of the constraint to update.</p>
-- @param _Value [TagOptionValue] <p>The updated value.</p>
-- Required parameter: Id
function M.UpdateTagOptionInput(_Active, _Id, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagOptionInput")
	local t = { 
		["Active"] = _Active,
		["Id"] = _Id,
		["Value"] = _Value,
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
-- @param _Value [RecordTagValue] <p>The value for this tag.</p>
-- @param _Key [RecordTagKey] <p>The key for this tag.</p>
function M.RecordTag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordTag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
function M.TagOptionNotMigratedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionNotMigratedException")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
function M.ListPortfoliosForProductInput(_AcceptLanguage, _PageToken, _PageSize, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosForProductInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["ProductId"] = _ProductId,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _ProvisionedProducts [ProvisionedProductDetails] <p>A list of ProvisionedProduct detail objects.</p>
function M.ScanProvisionedProductsOutput(_NextPageToken, _ProvisionedProducts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanProvisionedProductsOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["ProvisionedProducts"] = _ProvisionedProducts,
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
function M.CreatePortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioShareOutput")
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
-- @param _SupportEmail [SupportEmail] <p>Contact email for product support.</p>
-- @param _Name [ProductViewName] <p>The name of the product.</p>
-- @param _Tags [AddTags] <p>Tags to associate with the new product.</p>
-- @param _SupportUrl [SupportUrl] <p>Contact URL for product support.</p>
-- @param _Owner [ProductViewOwner] <p>The owner of the product.</p>
-- @param _IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param _ProvisioningArtifactParameters [ProvisioningArtifactProperties] <p>Parameters for the provisioning artifact.</p>
-- @param _ProductType [ProductType] <p>The type of the product to create.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Distributor [ProductViewOwner] <p>The distributor of the product.</p>
-- @param _SupportDescription [SupportDescription] <p>Support information about the product.</p>
-- @param _Description [ProductViewShortDescription] <p>The text description of the product.</p>
-- Required parameter: Name
-- Required parameter: Owner
-- Required parameter: ProductType
-- Required parameter: ProvisioningArtifactParameters
-- Required parameter: IdempotencyToken
function M.CreateProductInput(_SupportEmail, _Name, _Tags, _SupportUrl, _Owner, _IdempotencyToken, _ProvisioningArtifactParameters, _ProductType, _AcceptLanguage, _Distributor, _SupportDescription, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProductInput")
	local t = { 
		["SupportEmail"] = _SupportEmail,
		["Name"] = _Name,
		["Tags"] = _Tags,
		["SupportUrl"] = _SupportUrl,
		["Owner"] = _Owner,
		["IdempotencyToken"] = _IdempotencyToken,
		["ProvisioningArtifactParameters"] = _ProvisioningArtifactParameters,
		["ProductType"] = _ProductType,
		["AcceptLanguage"] = _AcceptLanguage,
		["Distributor"] = _Distributor,
		["SupportDescription"] = _SupportDescription,
		["Description"] = _Description,
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
-- @param _CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param _Description [ProvisioningArtifactDescription] <p>The text description of the artifact.</p>
-- @param _Id [Id] <p>The identifier for the artifact. This is sometimes referred to as the product version.</p>
-- @param _Name [ProvisioningArtifactName] <p>The name of the artifact.</p>
function M.ProvisioningArtifact(_CreatedTime, _Description, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifact")
	local t = { 
		["CreatedTime"] = _CreatedTime,
		["Description"] = _Description,
		["Id"] = _Id,
		["Name"] = _Name,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the product for which to retrieve information.</p>
-- Required parameter: Id
function M.DescribeProductAsAdminInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductAsAdminInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _CreatedTime [ResourceDetailCreatedTime] <p>Creation time of the resource.</p>
-- @param _Description [ResourceDetailDescription] <p>Description of the resource.</p>
-- @param _Id [ResourceDetailId] <p>Identifier of the resource.</p>
-- @param _ARN [ResourceDetailARN] <p>ARN of the resource.</p>
-- @param _Name [ResourceDetailName] <p>Name of the resource.</p>
function M.ResourceDetail(_CreatedTime, _Description, _Id, _ARN, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceDetail")
	local t = { 
		["CreatedTime"] = _CreatedTime,
		["Description"] = _Description,
		["Id"] = _Id,
		["ARN"] = _ARN,
		["Name"] = _Name,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _ConstraintDetails [ConstraintDetails] <p>List of detailed constraint information objects.</p>
function M.ListConstraintsForPortfolioOutput(_NextPageToken, _ConstraintDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConstraintsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["ConstraintDetails"] = _ConstraintDetails,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The <code>ProductViewId</code> of the product to describe.</p>
-- Required parameter: Id
function M.DescribeProductViewInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductViewInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _Code [ErrorCode] <p>The numeric value of the error.</p>
-- @param _Description [ErrorDescription] <p>The text description of the error.</p>
function M.RecordError(_Code, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordError")
	local t = { 
		["Code"] = _Code,
		["Description"] = _Description,
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
-- @param _CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- @param _Description [ProvisioningArtifactName] <p>The text description of the provisioning artifact.</p>
-- @param _Type [ProvisioningArtifactType] <p>The type of the provisioning artifact. The following provisioning artifact types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- @param _Id [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- @param _Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact.</p>
function M.ProvisioningArtifactDetail(_CreatedTime, _Description, _Type, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactDetail")
	local t = { 
		["CreatedTime"] = _CreatedTime,
		["Description"] = _Description,
		["Type"] = _Type,
		["Id"] = _Id,
		["Name"] = _Name,
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
function M.AssociateProductWithPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateProductWithPortfolioOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- @param _PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: PrincipalARN
-- Required parameter: PrincipalType
function M.AssociatePrincipalWithPortfolioInput(_AcceptLanguage, _PrincipalType, _PrincipalARN, _PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociatePrincipalWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PrincipalType"] = _PrincipalType,
		["PrincipalARN"] = _PrincipalARN,
		["PortfolioId"] = _PortfolioId,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the update request. This is sometimes referred to as the product version.</p>
-- @param _Description [ProvisioningArtifactDescription] <p>The updated text description of the provisioning artifact.</p>
-- @param _Name [ProvisioningArtifactName] <p>The updated name of the provisioning artifact.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.UpdateProvisioningArtifactInput(_AcceptLanguage, _ProvisioningArtifactId, _Description, _Name, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["Description"] = _Description,
		["Name"] = _Name,
		["ProductId"] = _ProductId,
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
function M.DisassociateProductFromPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateProductFromPortfolioOutput")
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
-- @param _Description [Description] <p>The text description of the output.</p>
-- @param _OutputKey [OutputKey] <p>The output key.</p>
-- @param _OutputValue [OutputValue] <p>The output value.</p>
function M.RecordOutput(_Description, _OutputKey, _OutputValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordOutput")
	local t = { 
		["Description"] = _Description,
		["OutputKey"] = _OutputKey,
		["OutputValue"] = _OutputValue,
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
-- @param _ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- @param _ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> parameter represent the ways the specified product can be provisioned.</p>
function M.DescribeProductOutput(_ProductViewSummary, _ProvisioningArtifacts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductOutput")
	local t = { 
		["ProductViewSummary"] = _ProductViewSummary,
		["ProvisioningArtifacts"] = _ProvisioningArtifacts,
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
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
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
-- @param _DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param _Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- @param _ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- @param _CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- @param _Id [Id] <p>The identifier for the portfolio.</p>
-- @param _ARN [ResourceARN] <p>The ARN assigned to the portfolio.</p>
function M.PortfolioDetail(_DisplayName, _Description, _ProviderName, _CreatedTime, _Id, _ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortfolioDetail")
	local t = { 
		["DisplayName"] = _DisplayName,
		["Description"] = _Description,
		["ProviderName"] = _ProviderName,
		["CreatedTime"] = _CreatedTime,
		["Id"] = _Id,
		["ARN"] = _ARN,
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
-- @param _RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the product.</p>
-- @param _SupportEmail [SupportEmail] <p>The updated support email for the product.</p>
-- @param _Description [ProductViewShortDescription] <p>The updated text description of the product.</p>
-- @param _SupportUrl [SupportUrl] <p>The updated support URL for the product.</p>
-- @param _Owner [ProductViewOwner] <p>The updated owner of the product.</p>
-- @param _AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the product.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Distributor [ProductViewOwner] <p>The updated distributor of the product.</p>
-- @param _SupportDescription [SupportDescription] <p>The updated support description for the product.</p>
-- @param _Id [Id] <p>The identifier of the product for the update request.</p>
-- @param _Name [ProductViewName] <p>The updated product name.</p>
-- Required parameter: Id
function M.UpdateProductInput(_RemoveTags, _SupportEmail, _Description, _SupportUrl, _Owner, _AddTags, _AcceptLanguage, _Distributor, _SupportDescription, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProductInput")
	local t = { 
		["RemoveTags"] = _RemoveTags,
		["SupportEmail"] = _SupportEmail,
		["Description"] = _Description,
		["SupportUrl"] = _SupportUrl,
		["Owner"] = _Owner,
		["AddTags"] = _AddTags,
		["AcceptLanguage"] = _AcceptLanguage,
		["Distributor"] = _Distributor,
		["SupportDescription"] = _SupportDescription,
		["Id"] = _Id,
		["Name"] = _Name,
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
function M.DeleteProvisioningArtifactOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProvisioningArtifactOutput")
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
-- @param _RecordDetail [RecordDetail] <p>The detailed result of the <a>TerminateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
function M.TerminateProvisionedProductOutput(_RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = _RecordDetail,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListPortfoliosOutput(_NextPageToken, _PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["PortfolioDetails"] = _PortfolioDetails,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param _PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.DescribeProvisioningParametersInput(_AcceptLanguage, _ProvisioningArtifactId, _PathId, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningParametersInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["PathId"] = _PathId,
		["ProductId"] = _ProductId,
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
-- @param _Status [RecordStatus] <p>The status of the ProvisionedProduct object.</p> <p> <code>CREATED</code> - Request created but the operation has not yet started.</p> <p> <code>IN_PROGRESS</code> - The requested operation is in-progress.</p> <p> <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the requested operation failed and some remediation is occurring. For example, a rollback.</p> <p> <code>SUCCEEDED</code> - The requested operation has successfully completed.</p> <p> <code>FAILED</code> - The requested operation has completed but has failed. Investigate using the error messages returned.</p>
-- @param _UpdatedTime [UpdatedTime] <p>The time when the record for the ProvisionedProduct object was last updated.</p>
-- @param _ProvisionedProductName [ProvisionedProductName] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- @param _RecordType [RecordType] <p>The record type for this record.</p>
-- @param _ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param _RecordId [Id] <p>The identifier of the ProvisionedProduct object record.</p>
-- @param _ProvisionedProductType [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- @param _RecordTags [RecordTags] <p>List of tags associated with this record.</p>
-- @param _RecordErrors [RecordErrors] <p>A list of errors that occurred while processing the request.</p>
-- @param _PathId [Id] <p>The identifier of the path for this product's provisioning.</p>
-- @param _CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param _ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
function M.RecordDetail(_Status, _UpdatedTime, _ProvisionedProductName, _RecordType, _ProvisioningArtifactId, _RecordId, _ProvisionedProductType, _RecordTags, _RecordErrors, _PathId, _CreatedTime, _ProvisionedProductId, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordDetail")
	local t = { 
		["Status"] = _Status,
		["UpdatedTime"] = _UpdatedTime,
		["ProvisionedProductName"] = _ProvisionedProductName,
		["RecordType"] = _RecordType,
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["RecordId"] = _RecordId,
		["ProvisionedProductType"] = _ProvisionedProductType,
		["RecordTags"] = _RecordTags,
		["RecordErrors"] = _RecordErrors,
		["PathId"] = _PathId,
		["CreatedTime"] = _CreatedTime,
		["ProvisionedProductId"] = _ProvisionedProductId,
		["ProductId"] = _ProductId,
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
-- @param _Active [TagOptionActive] <p>The ListTagOptionsFilters active state.</p>
-- @param _Value [TagOptionValue] <p>The ListTagOptionsFilters value.</p>
-- @param _Key [TagOptionKey] <p>The ListTagOptionsFilters key.</p>
function M.ListTagOptionsFilters(_Active, _Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsFilters")
	local t = { 
		["Active"] = _Active,
		["Value"] = _Value,
		["Key"] = _Key,
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
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
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
function M.DeletePortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioShareOutput")
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
-- @param _ProductViewDetail [ProductViewDetail] <p>Detailed product view information.</p>
-- @param _TagOptions [TagOptionDetails] <p>List of TagOptions associated with the product.</p>
-- @param _ProvisioningArtifactSummaries [ProvisioningArtifactSummaries] <p>A list of provisioning artifact summaries for the product.</p>
-- @param _Tags [Tags] <p>Tags associated with the product.</p>
function M.DescribeProductAsAdminOutput(_ProductViewDetail, _TagOptions, _ProvisioningArtifactSummaries, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductAsAdminOutput")
	local t = { 
		["ProductViewDetail"] = _ProductViewDetail,
		["TagOptions"] = _TagOptions,
		["ProvisioningArtifactSummaries"] = _ProvisioningArtifactSummaries,
		["Tags"] = _Tags,
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
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _Filters [ListTagOptionsFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all TagOptions. </p>
function M.ListTagOptionsInput(_PageToken, _PageSize, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsInput")
	local t = { 
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["Filters"] = _Filters,
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
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _TagOptionDetails [TagOptionDetails] <p>The resulting detailed TagOption information.</p>
function M.ListTagOptionsOutput(_PageToken, _TagOptionDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsOutput")
	local t = { 
		["PageToken"] = _PageToken,
		["TagOptionDetails"] = _TagOptionDetails,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The provisioned product identifier.</p>
-- Required parameter: Id
function M.DescribeProvisionedProductInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required parameter: PortfolioId
function M.ListPrincipalsForPortfolioInput(_AcceptLanguage, _PageToken, _PortfolioId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PortfolioId"] = _PortfolioId,
		["PageSize"] = _PageSize,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _AccountIds [AccountIds] <p>List of account IDs associated with access to the portfolio.</p>
function M.ListPortfolioAccessOutput(_NextPageToken, _AccountIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfolioAccessOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["AccountIds"] = _AccountIds,
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
-- @param _Name [PortfolioName] <p>Corresponds to the name of the portfolio to which the user was assigned.</p>
-- @param _ConstraintSummaries [ConstraintSummaries] <p>List of constraints on the portfolio-product relationship.</p>
-- @param _Id [Id] <p>The unique identifier of the product path.</p>
-- @param _Tags [Tags] <p>List of tags used by this launch path.</p>
function M.LaunchPathSummary(_Name, _ConstraintSummaries, _Id, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchPathSummary")
	local t = { 
		["Name"] = _Name,
		["ConstraintSummaries"] = _ConstraintSummaries,
		["Id"] = _Id,
		["Tags"] = _Tags,
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
function M.DisassociateTagOptionFromResourceOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTagOptionFromResourceOutput")
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
function M.DisassociatePrincipalFromPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociatePrincipalFromPortfolioOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
function M.ListAcceptedPortfolioSharesInput(_AcceptLanguage, _PageToken, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAcceptedPortfolioSharesInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
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
-- @param _ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Detailed provisioning artifact information.</p>
-- @param _Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact.</p>
-- @param _Status [Status] <p>The status of the current request.</p>
function M.DescribeProvisioningArtifactOutput(_ProvisioningArtifactDetail, _Info, _Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = _ProvisioningArtifactDetail,
		["Info"] = _Info,
		["Status"] = _Status,
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
function M.AssociatePrincipalWithPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociatePrincipalWithPortfolioOutput")
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListAcceptedPortfolioSharesOutput(_NextPageToken, _PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAcceptedPortfolioSharesOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["PortfolioDetails"] = _PortfolioDetails,
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
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.AcceptPortfolioShareInput(_AcceptLanguage, _PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
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
-- @param _ProvisionedProductDetail [ProvisionedProductDetail] <p>Detailed provisioned product information.</p>
function M.DescribeProvisionedProductOutput(_ProvisionedProductDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisionedProductOutput")
	local t = { 
		["ProvisionedProductDetail"] = _ProvisionedProductDetail,
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
-- @param _Active [TagOptionActive] <p>The TagOptionDetail active state.</p>
-- @param _Value [TagOptionValue] <p>The TagOptionDetail value.</p>
-- @param _Key [TagOptionKey] <p>The TagOptionDetail key.</p>
-- @param _Id [TagOptionId] <p>The TagOptionDetail identifier.</p>
function M.TagOptionDetail(_Active, _Value, _Key, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionDetail")
	local t = { 
		["Active"] = _Active,
		["Value"] = _Value,
		["Key"] = _Key,
		["Id"] = _Id,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _RecordDetails [RecordDetails] <p>A list of record detail objects, listed in reverse chronological order.</p>
function M.ListRecordHistoryOutput(_NextPageToken, _RecordDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistoryOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["RecordDetails"] = _RecordDetails,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _ProductViewAggregations [ProductViewAggregations] <p>A list of the product view aggregation value objects.</p>
-- @param _ProductViewSummaries [ProductViewSummaries] <p>A list of the product view summary objects.</p>
function M.SearchProductsOutput(_NextPageToken, _ProductViewAggregations, _ProductViewSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["ProductViewAggregations"] = _ProductViewAggregations,
		["ProductViewSummaries"] = _ProductViewSummaries,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param _Parameters [ProvisioningArtifactProperties] <p>The parameters to use when creating the new provisioning artifact.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: Parameters
-- Required parameter: IdempotencyToken
function M.CreateProvisioningArtifactInput(_AcceptLanguage, _IdempotencyToken, _Parameters, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["IdempotencyToken"] = _IdempotencyToken,
		["Parameters"] = _Parameters,
		["ProductId"] = _ProductId,
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
-- @param _Status [Status] <p>The status of the current request.</p>
-- @param _ConstraintParameters [ConstraintParameters] <p>The current parameters associated with the specified constraint.</p>
-- @param _ConstraintDetail [ConstraintDetail] <p>Detailed constraint information.</p>
function M.DescribeConstraintOutput(_Status, _ConstraintParameters, _ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConstraintOutput")
	local t = { 
		["Status"] = _Status,
		["ConstraintParameters"] = _ConstraintParameters,
		["ConstraintDetail"] = _ConstraintDetail,
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
-- @param _PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- @param _Tags [Tags] <p>Tags successfully associated with the new portfolio.</p>
function M.CreatePortfolioOutput(_PortfolioDetail, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = _PortfolioDetail,
		["Tags"] = _Tags,
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
function M.AcceptPortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptPortfolioShareOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the constraint to update.</p>
-- @param _Description [ConstraintDescription] <p>The updated text description of the constraint.</p>
-- Required parameter: Id
function M.UpdateConstraintInput(_AcceptLanguage, _Id, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConstraintInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
		["Description"] = _Description,
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
-- @param _Value [SearchFilterValue] <p>The filter value for <code>Key</code>.</p>
-- @param _Key [SearchFilterKey] <p>The filter key.</p>
function M.ListRecordHistorySearchFilter(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistorySearchFilter")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the portfolio for which to retrieve information.</p>
-- Required parameter: Id
function M.DescribePortfolioInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _Id [TagOptionId] <p>The identifier of the TagOption.</p>
-- Required parameter: Id
function M.DescribeTagOptionInput(_Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagOptionInput")
	local t = { 
		["Id"] = _Id,
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
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _Description [ConstraintDescription] <p>The text description of the constraint.</p>
-- @param _Parameters [ConstraintParameters] <p>The constraint parameters. Expected values vary depending on which <b>Type</b> is specified. For examples, see the bottom of this topic.</p> <p>For Type <code>LAUNCH</code>, the <code>RoleArn</code> property is required. </p> <p>For Type <code>NOTIFICATION</code>, the <code>NotificationArns</code> property is required.</p> <p>For Type <code>TEMPLATE</code>, the <code>Rules</code> property is required.</p>
-- @param _IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Type [ConstraintType] <p>The type of the constraint. Case-sensitive valid values are: <code>LAUNCH</code>, <code>NOTIFICATION</code>, or <code>TEMPLATE</code>. </p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: ProductId
-- Required parameter: Parameters
-- Required parameter: Type
-- Required parameter: IdempotencyToken
function M.CreateConstraintInput(_PortfolioId, _Description, _Parameters, _IdempotencyToken, _AcceptLanguage, _Type, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConstraintInput")
	local t = { 
		["PortfolioId"] = _PortfolioId,
		["Description"] = _Description,
		["Parameters"] = _Parameters,
		["IdempotencyToken"] = _IdempotencyToken,
		["AcceptLanguage"] = _AcceptLanguage,
		["Type"] = _Type,
		["ProductId"] = _ProductId,
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
-- @param _ResourceId [ResourceId] <p>The resource identifier.</p>
-- @param _TagOptionId [TagOptionId] <p>The TagOption identifier.</p>
-- Required parameter: ResourceId
-- Required parameter: TagOptionId
function M.AssociateTagOptionWithResourceInput(_ResourceId, _TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTagOptionWithResourceInput")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagOptionId"] = _TagOptionId,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _AccountId [AccountId] <p>The account ID associated with the share to delete.</p>
-- Required parameter: PortfolioId
-- Required parameter: AccountId
function M.DeletePortfolioShareInput(_AcceptLanguage, _PortfolioId, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
		["AccountId"] = _AccountId,
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
-- @param _ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param _Info [ProvisioningArtifactInfo] <p>Additional information about the creation request for the provisioning artifact.</p>
-- @param _Status [Status] <p>The status of the current request.</p>
function M.CreateProvisioningArtifactOutput(_ProvisioningArtifactDetail, _Info, _Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = _ProvisioningArtifactDetail,
		["Info"] = _Info,
		["Status"] = _Status,
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
-- @param _TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.CreateTagOptionOutput(_TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = _TagOptionDetail,
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
function M.DeleteConstraintOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConstraintOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _SearchFilter [ListRecordHistorySearchFilter] <p>The filter to limit search results. </p>
-- @param _AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
function M.ListRecordHistoryInput(_AcceptLanguage, _PageToken, _PageSize, _SearchFilter, _AccessLevelFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistoryInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["SearchFilter"] = _SearchFilter,
		["AccessLevelFilter"] = _AccessLevelFilter,
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
-- @param _ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product view.</p>
-- @param _Status [Status] <p>Current status of the product.</p> <p> <code>AVAILABLE</code> - Product is available for use.</p> <p> <code>CREATING</code> - Creation of product started, not ready for use.</p> <p> <code>FAILED</code> - Action on product failed.</p>
-- @param _ProductARN [ResourceARN] <p>The ARN associated with the product.</p>
-- @param _CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
function M.ProductViewDetail(_ProductViewSummary, _Status, _ProductARN, _CreatedTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewDetail")
	local t = { 
		["ProductViewSummary"] = _ProductViewSummary,
		["Status"] = _Status,
		["ProductARN"] = _ProductARN,
		["CreatedTime"] = _CreatedTime,
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
-- @param _ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- @param _ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> represent the ways in which the specified product can be provisioned.</p>
function M.DescribeProductViewOutput(_ProductViewSummary, _ProvisioningArtifacts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductViewOutput")
	local t = { 
		["ProductViewSummary"] = _ProductViewSummary,
		["ProvisioningArtifacts"] = _ProvisioningArtifacts,
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
-- @param _PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- @param _Tags [Tags] <p>Tags associated with the portfolio.</p>
function M.UpdatePortfolioOutput(_PortfolioDetail, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = _PortfolioDetail,
		["Tags"] = _Tags,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _Principals [Principals] <p>The IAM principals (users or roles) associated with the portfolio.</p>
function M.ListPrincipalsForPortfolioOutput(_NextPageToken, _Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["Principals"] = _Principals,
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
-- @param _Value [ParameterValue] <p>The value to use for updating the product provisioning. Any constraints on this value can be found in the <code>ProvisioningArtifactParameter</code> parameter for <code>Key</code>.</p>
-- @param _Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- @param _UsePreviousValue [UsePreviousValue] <p>If true, uses the currently set value for <code>Key</code>, ignoring <code>UpdateProvisioningParameter.Value</code>.</p>
function M.UpdateProvisioningParameter(_Value, _Key, _UsePreviousValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningParameter")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
		["UsePreviousValue"] = _UsePreviousValue,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: PrincipalARN
function M.DisassociatePrincipalFromPortfolioInput(_AcceptLanguage, _PrincipalARN, _PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociatePrincipalFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PrincipalARN"] = _PrincipalARN,
		["PortfolioId"] = _PortfolioId,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _ProvisioningArtifactDetails [ProvisioningArtifactDetails] <p>List of detailed provisioning artifact information objects.</p>
function M.ListProvisioningArtifactsOutput(_NextPageToken, _ProvisioningArtifactDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisioningArtifactsOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["ProvisioningArtifactDetails"] = _ProvisioningArtifactDetails,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
function M.ScanProvisionedProductsInput(_AcceptLanguage, _PageToken, _PageSize, _AccessLevelFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanProvisionedProductsInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["AccessLevelFilter"] = _AccessLevelFilter,
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
-- @param _ResourceDetails [ResourceDetails] <p>The resulting detailed resource information.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
function M.ListResourcesForTagOptionOutput(_ResourceDetails, _PageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesForTagOptionOutput")
	local t = { 
		["ResourceDetails"] = _ResourceDetails,
		["PageToken"] = _PageToken,
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
-- @param _Status [ProvisionedProductStatus] <p>The current status of the ProvisionedProduct.</p> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent action request succeeded and completed.</p> <p> <code>UNDER_CHANGE</code> - Transitive state, operations performed may or may not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version. </p> <p> <code>ERROR</code> - Something unexpected happened such that the provisioned product exists but the stack is not running. For example, CloudFormation received an invalid parameter value and could not launch the stack.</p>
-- @param _Name [ProvisionedProductNameOrArn] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- @param _LastRecordId [LastRequestId] <p>The record identifier of the last request performed on this ProvisionedProduct object.</p>
-- @param _IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param _Arn [ProvisionedProductNameOrArn] <p>The ARN associated with the ProvisionedProduct object.</p>
-- @param _CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param _Type [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- @param _Id [ProvisionedProductId] <p>The identifier of the ProvisionedProduct object.</p>
-- @param _StatusMessage [ProvisionedProductStatusMessage] <p>The current status message of the ProvisionedProduct.</p>
function M.ProvisionedProductDetail(_Status, _Name, _LastRecordId, _IdempotencyToken, _Arn, _CreatedTime, _Type, _Id, _StatusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedProductDetail")
	local t = { 
		["Status"] = _Status,
		["Name"] = _Name,
		["LastRecordId"] = _LastRecordId,
		["IdempotencyToken"] = _IdempotencyToken,
		["Arn"] = _Arn,
		["CreatedTime"] = _CreatedTime,
		["Type"] = _Type,
		["Id"] = _Id,
		["StatusMessage"] = _StatusMessage,
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
-- @param _Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact properties. When using this element in a request, you must specify <code>LoadTemplateFromURL</code>. For more information, see <a>CreateProvisioningArtifact</a>.</p>
-- @param _Type [ProvisioningArtifactType] <p>The type of the provisioning artifact properties. The following provisioning artifact property types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- @param _Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact properties.</p>
-- @param _Description [ProvisioningArtifactDescription] <p>The text description of the provisioning artifact properties.</p>
-- Required parameter: Info
function M.ProvisioningArtifactProperties(_Info, _Type, _Name, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactProperties")
	local t = { 
		["Info"] = _Info,
		["Type"] = _Type,
		["Name"] = _Name,
		["Description"] = _Description,
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
-- @param _RecordDetail [RecordDetail] <p>The detailed result of the <a>UpdateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
function M.UpdateProvisionedProductOutput(_RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = _RecordDetail,
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
-- @param _Status [Status] <p>The status of the current request.</p>
-- @param _ConstraintParameters [ConstraintParameters] <p>The resulting updated constraint parameters.</p>
-- @param _ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
function M.UpdateConstraintOutput(_Status, _ConstraintParameters, _ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConstraintOutput")
	local t = { 
		["Status"] = _Status,
		["ConstraintParameters"] = _ConstraintParameters,
		["ConstraintDetail"] = _ConstraintDetail,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The identifier of the constraint to delete.</p>
-- Required parameter: Id
function M.DeleteConstraintInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConstraintInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.ListPortfolioAccessInput(_AcceptLanguage, _PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfolioAccessInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PortfolioId"] = _PortfolioId,
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
function M.AssociateTagOptionWithResourceOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTagOptionWithResourceOutput")
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: PortfolioId
function M.ListConstraintsForPortfolioInput(_AcceptLanguage, _PageToken, _PortfolioId, _PageSize, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConstraintsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PortfolioId"] = _PortfolioId,
		["PageSize"] = _PageSize,
		["ProductId"] = _ProductId,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _Id [Id] <p>The <code>ProductId</code> of the product to describe.</p>
-- Required parameter: Id
function M.DescribeProductInput(_AcceptLanguage, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["Id"] = _Id,
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
-- @param _DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param _Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- @param _ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- @param _Tags [AddTags] <p>Tags to associate with the new portfolio.</p>
-- @param _IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- Required parameter: DisplayName
-- Required parameter: ProviderName
-- Required parameter: IdempotencyToken
function M.CreatePortfolioInput(_DisplayName, _Description, _ProviderName, _Tags, _IdempotencyToken, _AcceptLanguage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioInput")
	local t = { 
		["DisplayName"] = _DisplayName,
		["Description"] = _Description,
		["ProviderName"] = _ProviderName,
		["Tags"] = _Tags,
		["IdempotencyToken"] = _IdempotencyToken,
		["AcceptLanguage"] = _AcceptLanguage,
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
-- @param _NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param _ProductViewDetails [ProductViewDetails] <p>List of detailed product view information objects.</p>
function M.SearchProductsAsAdminOutput(_NextPageToken, _ProductViewDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsAsAdminOutput")
	local t = { 
		["NextPageToken"] = _NextPageToken,
		["ProductViewDetails"] = _ProductViewDetails,
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
-- @param _ParameterType [ParameterType] <p>The parameter type.</p>
-- @param _ParameterConstraints [ParameterConstraints] <p>The list of constraints that the administrator has put on the parameter.</p>
-- @param _Description [Description] <p>The text description of the parameter.</p>
-- @param _DefaultValue [DefaultValue] <p>The default value for this parameter.</p>
-- @param _IsNoEcho [NoEcho] <p>If this value is true, the value for this parameter is obfuscated from view when the parameter is retrieved. This parameter is used to hide sensitive information.</p>
-- @param _ParameterKey [ParameterKey] <p>The parameter key. </p>
function M.ProvisioningArtifactParameter(_ParameterType, _ParameterConstraints, _Description, _DefaultValue, _IsNoEcho, _ParameterKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactParameter")
	local t = { 
		["ParameterType"] = _ParameterType,
		["ParameterConstraints"] = _ParameterConstraints,
		["Description"] = _Description,
		["DefaultValue"] = _DefaultValue,
		["IsNoEcho"] = _IsNoEcho,
		["ParameterKey"] = _ParameterKey,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the delete request. This is sometimes referred to as the product version.</p>
-- @param _ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.DeleteProvisioningArtifactInput(_AcceptLanguage, _ProvisioningArtifactId, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["ProvisioningArtifactId"] = _ProvisioningArtifactId,
		["ProductId"] = _ProductId,
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
-- @param _AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param _PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param _PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param _ProductId [Id] <p>The product identifier. Identifies the product for which to retrieve <code>LaunchPathSummaries</code> information.</p>
-- Required parameter: ProductId
function M.ListLaunchPathsInput(_AcceptLanguage, _PageToken, _PageSize, _ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLaunchPathsInput")
	local t = { 
		["AcceptLanguage"] = _AcceptLanguage,
		["PageToken"] = _PageToken,
		["PageSize"] = _PageSize,
		["ProductId"] = _ProductId,
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
-- @param _PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- @param _PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
function M.Principal(_PrincipalType, _PrincipalARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Principal")
	local t = { 
		["PrincipalType"] = _PrincipalType,
		["PrincipalARN"] = _PrincipalARN,
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateConstraint
-- @param CreateConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConstraintAsync(CreateConstraintInput, cb)
	assert(CreateConstraintInput, "You must provide a CreateConstraintInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateConstraintInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProductAsAdmin
-- @param DescribeProductAsAdminInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductAsAdminAsync(DescribeProductAsAdminInput, cb)
	assert(DescribeProductAsAdminInput, "You must provide a DescribeProductAsAdminInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductAsAdmin",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProductAsAdminInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateProductWithPortfolio
-- @param AssociateProductWithPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateProductWithPortfolioAsync(AssociateProductWithPortfolioInput, cb)
	assert(AssociateProductWithPortfolioInput, "You must provide a AssociateProductWithPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateProductWithPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateProductWithPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPrincipalsForPortfolio
-- @param ListPrincipalsForPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalsForPortfolioAsync(ListPrincipalsForPortfolioInput, cb)
	assert(ListPrincipalsForPortfolioInput, "You must provide a ListPrincipalsForPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPrincipalsForPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPrincipalsForPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTagOption
-- @param UpdateTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTagOptionAsync(UpdateTagOptionInput, cb)
	assert(UpdateTagOptionInput, "You must provide a UpdateTagOptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTagOptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociatePrincipalFromPortfolio
-- @param DisassociatePrincipalFromPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociatePrincipalFromPortfolioAsync(DisassociatePrincipalFromPortfolioInput, cb)
	assert(DisassociatePrincipalFromPortfolioInput, "You must provide a DisassociatePrincipalFromPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociatePrincipalFromPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociatePrincipalFromPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociatePrincipalWithPortfolio
-- @param AssociatePrincipalWithPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociatePrincipalWithPortfolioAsync(AssociatePrincipalWithPortfolioInput, cb)
	assert(AssociatePrincipalWithPortfolioInput, "You must provide a AssociatePrincipalWithPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociatePrincipalWithPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociatePrincipalWithPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRecordHistory
-- @param ListRecordHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListRecordHistoryAsync(ListRecordHistoryInput, cb)
	assert(ListRecordHistoryInput, "You must provide a ListRecordHistoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListRecordHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRecordHistoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SearchProductsAsAdmin
-- @param SearchProductsAsAdminInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchProductsAsAdminAsync(SearchProductsAsAdminInput, cb)
	assert(SearchProductsAsAdminInput, "You must provide a SearchProductsAsAdminInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProductsAsAdmin",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SearchProductsAsAdminInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListResourcesForTagOption
-- @param ListResourcesForTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourcesForTagOptionAsync(ListResourcesForTagOptionInput, cb)
	assert(ListResourcesForTagOptionInput, "You must provide a ListResourcesForTagOptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListResourcesForTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListResourcesForTagOptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProvisioningArtifact
-- @param CreateProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProvisioningArtifactAsync(CreateProvisioningArtifactInput, cb)
	assert(CreateProvisioningArtifactInput, "You must provide a CreateProvisioningArtifactInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProvisioningArtifactInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPortfolios
-- @param ListPortfoliosInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfoliosAsync(ListPortfoliosInput, cb)
	assert(ListPortfoliosInput, "You must provide a ListPortfoliosInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolios",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPortfoliosInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProduct
-- @param DescribeProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductAsync(DescribeProductInput, cb)
	assert(DescribeProductInput, "You must provide a DescribeProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePortfolioShare
-- @param CreatePortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePortfolioShareAsync(CreatePortfolioShareInput, cb)
	assert(CreatePortfolioShareInput, "You must provide a CreatePortfolioShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePortfolioShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagOptions
-- @param ListTagOptionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagOptionsAsync(ListTagOptionsInput, cb)
	assert(ListTagOptionsInput, "You must provide a ListTagOptionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListTagOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagOptionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLaunchPaths
-- @param ListLaunchPathsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListLaunchPathsAsync(ListLaunchPathsInput, cb)
	assert(ListLaunchPathsInput, "You must provide a ListLaunchPathsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListLaunchPaths",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListLaunchPathsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProduct
-- @param CreateProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProductAsync(CreateProductInput, cb)
	assert(CreateProductInput, "You must provide a CreateProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAcceptedPortfolioShares
-- @param ListAcceptedPortfolioSharesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListAcceptedPortfolioSharesAsync(ListAcceptedPortfolioSharesInput, cb)
	assert(ListAcceptedPortfolioSharesInput, "You must provide a ListAcceptedPortfolioSharesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListAcceptedPortfolioShares",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAcceptedPortfolioSharesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPortfoliosForProduct
-- @param ListPortfoliosForProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfoliosForProductAsync(ListPortfoliosForProductInput, cb)
	assert(ListPortfoliosForProductInput, "You must provide a ListPortfoliosForProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfoliosForProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPortfoliosForProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProvisioningArtifacts
-- @param ListProvisioningArtifactsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListProvisioningArtifactsAsync(ListProvisioningArtifactsInput, cb)
	assert(ListProvisioningArtifactsInput, "You must provide a ListProvisioningArtifactsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListProvisioningArtifacts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProvisioningArtifactsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RejectPortfolioShare
-- @param RejectPortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.RejectPortfolioShareAsync(RejectPortfolioShareInput, cb)
	assert(RejectPortfolioShareInput, "You must provide a RejectPortfolioShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.RejectPortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RejectPortfolioShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateProductFromPortfolio
-- @param DisassociateProductFromPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateProductFromPortfolioAsync(DisassociateProductFromPortfolioInput, cb)
	assert(DisassociateProductFromPortfolioInput, "You must provide a DisassociateProductFromPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateProductFromPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateProductFromPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcceptPortfolioShare
-- @param AcceptPortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptPortfolioShareAsync(AcceptPortfolioShareInput, cb)
	assert(AcceptPortfolioShareInput, "You must provide a AcceptPortfolioShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AcceptPortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcceptPortfolioShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProvisionedProduct
-- @param DescribeProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisionedProductAsync(DescribeProvisionedProductInput, cb)
	assert(DescribeProvisionedProductInput, "You must provide a DescribeProvisionedProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProvisionedProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPortfolioAccess
-- @param ListPortfolioAccessInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPortfolioAccessAsync(ListPortfolioAccessInput, cb)
	assert(ListPortfolioAccessInput, "You must provide a ListPortfolioAccessInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListPortfolioAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPortfolioAccessInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteProvisioningArtifact
-- @param DeleteProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProvisioningArtifactAsync(DeleteProvisioningArtifactInput, cb)
	assert(DeleteProvisioningArtifactInput, "You must provide a DeleteProvisioningArtifactInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProvisioningArtifactInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProvisioningArtifact
-- @param UpdateProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProvisioningArtifactAsync(UpdateProvisioningArtifactInput, cb)
	assert(UpdateProvisioningArtifactInput, "You must provide a UpdateProvisioningArtifactInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProvisioningArtifactInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConstraint
-- @param DescribeConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConstraintAsync(DescribeConstraintInput, cb)
	assert(DescribeConstraintInput, "You must provide a DescribeConstraintInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConstraintInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePortfolio
-- @param UpdatePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePortfolioAsync(UpdatePortfolioInput, cb)
	assert(UpdatePortfolioInput, "You must provide a UpdatePortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdatePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdatePortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePortfolio
-- @param DeletePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePortfolioAsync(DeletePortfolioInput, cb)
	assert(DeletePortfolioInput, "You must provide a DeletePortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRecord
-- @param DescribeRecordInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRecordAsync(DescribeRecordInput, cb)
	assert(DescribeRecordInput, "You must provide a DescribeRecordInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeRecord",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRecordInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateTagOptionWithResource
-- @param AssociateTagOptionWithResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateTagOptionWithResourceAsync(AssociateTagOptionWithResourceInput, cb)
	assert(AssociateTagOptionWithResourceInput, "You must provide a AssociateTagOptionWithResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.AssociateTagOptionWithResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateTagOptionWithResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateConstraint
-- @param UpdateConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConstraintAsync(UpdateConstraintInput, cb)
	assert(UpdateConstraintInput, "You must provide a UpdateConstraintInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateConstraintInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteProduct
-- @param DeleteProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProductAsync(DeleteProductInput, cb)
	assert(DeleteProductInput, "You must provide a DeleteProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProductView
-- @param DescribeProductViewInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProductViewAsync(DescribeProductViewInput, cb)
	assert(DescribeProductViewInput, "You must provide a DescribeProductViewInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProductView",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProductViewInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TerminateProvisionedProduct
-- @param TerminateProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateProvisionedProductAsync(TerminateProvisionedProductInput, cb)
	assert(TerminateProvisionedProductInput, "You must provide a TerminateProvisionedProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.TerminateProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TerminateProvisionedProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePortfolio
-- @param DescribePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePortfolioAsync(DescribePortfolioInput, cb)
	assert(DescribePortfolioInput, "You must provide a DescribePortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePortfolioShare
-- @param DeletePortfolioShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePortfolioShareAsync(DeletePortfolioShareInput, cb)
	assert(DeletePortfolioShareInput, "You must provide a DeletePortfolioShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeletePortfolioShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePortfolioShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ScanProvisionedProducts
-- @param ScanProvisionedProductsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ScanProvisionedProductsAsync(ScanProvisionedProductsInput, cb)
	assert(ScanProvisionedProductsInput, "You must provide a ScanProvisionedProductsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ScanProvisionedProducts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScanProvisionedProductsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTagOption
-- @param CreateTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagOptionAsync(CreateTagOptionInput, cb)
	assert(CreateTagOptionInput, "You must provide a CreateTagOptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreateTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTagOptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProvisionedProduct
-- @param UpdateProvisionedProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProvisionedProductAsync(UpdateProvisionedProductInput, cb)
	assert(UpdateProvisionedProductInput, "You must provide a UpdateProvisionedProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProvisionedProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProvisionedProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProduct
-- @param UpdateProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProductAsync(UpdateProductInput, cb)
	assert(UpdateProductInput, "You must provide a UpdateProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.UpdateProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProvisioningArtifact
-- @param DescribeProvisioningArtifactInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisioningArtifactAsync(DescribeProvisioningArtifactInput, cb)
	assert(DescribeProvisioningArtifactInput, "You must provide a DescribeProvisioningArtifactInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningArtifact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProvisioningArtifactInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListConstraintsForPortfolio
-- @param ListConstraintsForPortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListConstraintsForPortfolioAsync(ListConstraintsForPortfolioInput, cb)
	assert(ListConstraintsForPortfolioInput, "You must provide a ListConstraintsForPortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ListConstraintsForPortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListConstraintsForPortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateTagOptionFromResource
-- @param DisassociateTagOptionFromResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateTagOptionFromResourceAsync(DisassociateTagOptionFromResourceInput, cb)
	assert(DisassociateTagOptionFromResourceInput, "You must provide a DisassociateTagOptionFromResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DisassociateTagOptionFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateTagOptionFromResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SearchProducts
-- @param SearchProductsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchProductsAsync(SearchProductsInput, cb)
	assert(SearchProductsInput, "You must provide a SearchProductsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.SearchProducts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SearchProductsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConstraint
-- @param DeleteConstraintInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConstraintAsync(DeleteConstraintInput, cb)
	assert(DeleteConstraintInput, "You must provide a DeleteConstraintInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DeleteConstraint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConstraintInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ProvisionProduct
-- @param ProvisionProductInput
-- @param cb Callback function accepting two args: response, error_message
function M.ProvisionProductAsync(ProvisionProductInput, cb)
	assert(ProvisionProductInput, "You must provide a ProvisionProductInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.ProvisionProduct",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ProvisionProductInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePortfolio
-- @param CreatePortfolioInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePortfolioAsync(CreatePortfolioInput, cb)
	assert(CreatePortfolioInput, "You must provide a CreatePortfolioInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.CreatePortfolio",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePortfolioInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProvisioningParameters
-- @param DescribeProvisioningParametersInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProvisioningParametersAsync(DescribeProvisioningParametersInput, cb)
	assert(DescribeProvisioningParametersInput, "You must provide a DescribeProvisioningParametersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeProvisioningParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProvisioningParametersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTagOption
-- @param DescribeTagOptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagOptionAsync(DescribeTagOptionInput, cb)
	assert(DescribeTagOptionInput, "You must provide a DescribeTagOptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWS242ServiceCatalogService.DescribeTagOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagOptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
