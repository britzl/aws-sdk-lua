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

local DisassociateTagOptionFromResourceInput_keys = { "ResourceId" = true, "TagOptionId" = true, nil }

function M.AssertDisassociateTagOptionFromResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTagOptionFromResourceInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["TagOptionId"] then M.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateTagOptionFromResourceInput_keys[k], "DisassociateTagOptionFromResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTagOptionFromResourceInput
--  
-- @param ResourceId [ResourceId] <p>Identifier of the resource from which to disassociate the TagOption.</p>
-- @param TagOptionId [TagOptionId] <p>Identifier of the TagOption to disassociate from the resource.</p>
-- Required parameter: ResourceId
-- Required parameter: TagOptionId
function M.DisassociateTagOptionFromResourceInput(ResourceId, TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTagOptionFromResourceInput")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagOptionId"] = TagOptionId,
	}
	M.AssertDisassociateTagOptionFromResourceInput(t)
	return t
end

local CreateTagOptionInput_keys = { "Value" = true, "Key" = true, nil }

function M.AssertCreateTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagOptionInput to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagOptionInput_keys[k], "CreateTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagOptionInput
--  
-- @param Value [TagOptionValue] <p>The TagOption value.</p>
-- @param Key [TagOptionKey] <p>The TagOption key.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.CreateTagOptionInput(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagOptionInput")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertCreateTagOptionInput(t)
	return t
end

local DescribeTagOptionOutput_keys = { "TagOptionDetail" = true, nil }

function M.AssertDescribeTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then M.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagOptionOutput_keys[k], "DescribeTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagOptionOutput
--  
-- @param TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.DescribeTagOptionOutput(TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = TagOptionDetail,
	}
	M.AssertDescribeTagOptionOutput(t)
	return t
end

local DescribePortfolioOutput_keys = { "TagOptions" = true, "PortfolioDetail" = true, "Tags" = true, nil }

function M.AssertDescribePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioOutput to be of type 'table'")
	if struct["TagOptions"] then M.AssertTagOptionDetails(struct["TagOptions"]) end
	if struct["PortfolioDetail"] then M.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DescribePortfolioOutput_keys[k], "DescribePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioOutput
--  
-- @param TagOptions [TagOptionDetails] <p>TagOptions associated with the portfolio.</p>
-- @param PortfolioDetail [PortfolioDetail] <p>Detailed portfolio information.</p>
-- @param Tags [Tags] <p>Tags associated with the portfolio.</p>
function M.DescribePortfolioOutput(TagOptions, PortfolioDetail, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePortfolioOutput")
	local t = { 
		["TagOptions"] = TagOptions,
		["PortfolioDetail"] = PortfolioDetail,
		["Tags"] = Tags,
	}
	M.AssertDescribePortfolioOutput(t)
	return t
end

local RejectPortfolioShareOutput_keys = { nil }

function M.AssertRejectPortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectPortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RejectPortfolioShareOutput_keys[k], "RejectPortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectPortfolioShareOutput
--  
function M.RejectPortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectPortfolioShareOutput")
	local t = { 
	}
	M.AssertRejectPortfolioShareOutput(t)
	return t
end

local RejectPortfolioShareInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, nil }

function M.AssertRejectPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(RejectPortfolioShareInput_keys[k], "RejectPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectPortfolioShareInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.RejectPortfolioShareInput(AcceptLanguage, PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
	}
	M.AssertRejectPortfolioShareInput(t)
	return t
end

local UsageInstruction_keys = { "Type" = true, "Value" = true, nil }

function M.AssertUsageInstruction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageInstruction to be of type 'table'")
	if struct["Type"] then M.AssertInstructionType(struct["Type"]) end
	if struct["Value"] then M.AssertInstructionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(UsageInstruction_keys[k], "UsageInstruction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageInstruction
-- <p>Additional information provided by the administrator.</p>
-- @param Type [InstructionType] <p>The usage instruction type for the value.</p>
-- @param Value [InstructionValue] <p>The usage instruction value for this type.</p>
function M.UsageInstruction(Type, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageInstruction")
	local t = { 
		["Type"] = Type,
		["Value"] = Value,
	}
	M.AssertUsageInstruction(t)
	return t
end

local UpdateProvisionedProductInput_keys = { "ProvisioningArtifactId" = true, "ProvisionedProductId" = true, "ProvisioningParameters" = true, "PathId" = true, "UpdateToken" = true, "AcceptLanguage" = true, "ProvisionedProductName" = true, "ProductId" = true, nil }

function M.AssertUpdateProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisionedProductInput to be of type 'table'")
	assert(struct["UpdateToken"], "Expected key UpdateToken to exist in table")
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionedProductId"] then M.AssertId(struct["ProvisionedProductId"]) end
	if struct["ProvisioningParameters"] then M.AssertUpdateProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["PathId"] then M.AssertId(struct["PathId"]) end
	if struct["UpdateToken"] then M.AssertIdempotencyToken(struct["UpdateToken"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisionedProductName"] then M.AssertProvisionedProductNameOrArn(struct["ProvisionedProductName"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProvisionedProductInput_keys[k], "UpdateProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisionedProductInput
--  
-- @param ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to update. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param ProvisioningParameters [UpdateProvisioningParameters] <p>A list of <code>ProvisioningParameter</code> objects used to update the ProvisionedProduct object.</p>
-- @param PathId [Id] <p>The identifier of the path to use in the updated ProvisionedProduct object. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param UpdateToken [IdempotencyToken] <p>The idempotency token that uniquely identifies the provisioning update request.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisionedProductName [ProvisionedProductNameOrArn] <p>The updated name of the ProvisionedProduct object. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param ProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- Required parameter: UpdateToken
function M.UpdateProvisionedProductInput(ProvisioningArtifactId, ProvisionedProductId, ProvisioningParameters, PathId, UpdateToken, AcceptLanguage, ProvisionedProductName, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisionedProductInput")
	local t = { 
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["ProvisionedProductId"] = ProvisionedProductId,
		["ProvisioningParameters"] = ProvisioningParameters,
		["PathId"] = PathId,
		["UpdateToken"] = UpdateToken,
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisionedProductName"] = ProvisionedProductName,
		["ProductId"] = ProductId,
	}
	M.AssertUpdateProvisionedProductInput(t)
	return t
end

local ProvisionProductInput_keys = { "ProvisioningArtifactId" = true, "ProvisionedProductName" = true, "Tags" = true, "ProvisioningParameters" = true, "PathId" = true, "ProvisionToken" = true, "AcceptLanguage" = true, "NotificationArns" = true, "ProductId" = true, nil }

function M.AssertProvisionProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionProductInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ProvisionedProductName"], "Expected key ProvisionedProductName to exist in table")
	assert(struct["ProvisionToken"], "Expected key ProvisionToken to exist in table")
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProvisionedProductName"] then M.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["ProvisioningParameters"] then M.AssertProvisioningParameters(struct["ProvisioningParameters"]) end
	if struct["PathId"] then M.AssertId(struct["PathId"]) end
	if struct["ProvisionToken"] then M.AssertIdempotencyToken(struct["ProvisionToken"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["NotificationArns"] then M.AssertNotificationArns(struct["NotificationArns"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionProductInput_keys[k], "ProvisionProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionProductInput
--  
-- @param ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param ProvisionedProductName [ProvisionedProductName] <p>A user-friendly name to identify the ProvisionedProduct object. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>
-- @param Tags [Tags] <p>A list of tags to use as provisioning options.</p>
-- @param ProvisioningParameters [ProvisioningParameters] <p>Parameters specified by the administrator that are required for provisioning the product.</p>
-- @param PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param ProvisionToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the provisioning request. </p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param NotificationArns [NotificationArns] <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
-- Required parameter: ProvisionedProductName
-- Required parameter: ProvisionToken
function M.ProvisionProductInput(ProvisioningArtifactId, ProvisionedProductName, Tags, ProvisioningParameters, PathId, ProvisionToken, AcceptLanguage, NotificationArns, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionProductInput")
	local t = { 
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["ProvisionedProductName"] = ProvisionedProductName,
		["Tags"] = Tags,
		["ProvisioningParameters"] = ProvisioningParameters,
		["PathId"] = PathId,
		["ProvisionToken"] = ProvisionToken,
		["AcceptLanguage"] = AcceptLanguage,
		["NotificationArns"] = NotificationArns,
		["ProductId"] = ProductId,
	}
	M.AssertProvisionProductInput(t)
	return t
end

local SearchProductsInput_keys = { "PageSize" = true, "PageToken" = true, "SortOrder" = true, "Filters" = true, "AcceptLanguage" = true, "SortBy" = true, nil }

function M.AssertSearchProductsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsInput to be of type 'table'")
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	if struct["Filters"] then M.AssertProductViewFilters(struct["Filters"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SortBy"] then M.AssertProductViewSortBy(struct["SortBy"]) end
	for k,_ in pairs(struct) do
		assert(SearchProductsInput_keys[k], "SearchProductsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsInput
--  
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
-- @param Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the calling user has access. </p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
function M.SearchProductsInput(PageSize, PageToken, SortOrder, Filters, AcceptLanguage, SortBy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsInput")
	local t = { 
		["PageSize"] = PageSize,
		["PageToken"] = PageToken,
		["SortOrder"] = SortOrder,
		["Filters"] = Filters,
		["AcceptLanguage"] = AcceptLanguage,
		["SortBy"] = SortBy,
	}
	M.AssertSearchProductsInput(t)
	return t
end

local CreateConstraintOutput_keys = { "Status" = true, "ConstraintParameters" = true, "ConstraintDetail" = true, nil }

function M.AssertCreateConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConstraintOutput to be of type 'table'")
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then M.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then M.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(CreateConstraintOutput_keys[k], "CreateConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConstraintOutput
--  
-- @param Status [Status] <p>The status of the current request.</p>
-- @param ConstraintParameters [ConstraintParameters] <p>The resulting constraint parameters.</p>
-- @param ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
function M.CreateConstraintOutput(Status, ConstraintParameters, ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConstraintOutput")
	local t = { 
		["Status"] = Status,
		["ConstraintParameters"] = ConstraintParameters,
		["ConstraintDetail"] = ConstraintDetail,
	}
	M.AssertCreateConstraintOutput(t)
	return t
end

local ListPortfoliosInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, nil }

function M.AssertListPortfoliosInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosInput to be of type 'table'")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfoliosInput_keys[k], "ListPortfoliosInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
function M.ListPortfoliosInput(AcceptLanguage, PageToken, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
	}
	M.AssertListPortfoliosInput(t)
	return t
end

local ProductViewAggregationValue_keys = { "ApproximateCount" = true, "Value" = true, nil }

function M.AssertProductViewAggregationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewAggregationValue to be of type 'table'")
	if struct["ApproximateCount"] then M.AssertApproximateCount(struct["ApproximateCount"]) end
	if struct["Value"] then M.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(ProductViewAggregationValue_keys[k], "ProductViewAggregationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewAggregationValue
-- <p>A single product view aggregation value/count pair, containing metadata about each product to which the calling user has access.</p>
-- @param ApproximateCount [ApproximateCount] <p>An approximate count of the products that match the value.</p>
-- @param Value [AttributeValue] <p>The value of the product view aggregation.</p>
function M.ProductViewAggregationValue(ApproximateCount, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewAggregationValue")
	local t = { 
		["ApproximateCount"] = ApproximateCount,
		["Value"] = Value,
	}
	M.AssertProductViewAggregationValue(t)
	return t
end

local DeletePortfolioInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDeletePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeletePortfolioInput_keys[k], "DeletePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the portfolio for the delete request.</p>
-- Required parameter: Id
function M.DeletePortfolioInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDeletePortfolioInput(t)
	return t
end

local ConstraintSummary_keys = { "Type" = true, "Description" = true, nil }

function M.AssertConstraintSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintSummary to be of type 'table'")
	if struct["Type"] then M.AssertConstraintType(struct["Type"]) end
	if struct["Description"] then M.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ConstraintSummary_keys[k], "ConstraintSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintSummary
-- <p>An administrator-specified constraint to apply when provisioning a product.</p>
-- @param Type [ConstraintType] <p>The type of the constraint. </p>
-- @param Description [ConstraintDescription] <p>The text description of the constraint.</p>
function M.ConstraintSummary(Type, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintSummary")
	local t = { 
		["Type"] = Type,
		["Description"] = Description,
	}
	M.AssertConstraintSummary(t)
	return t
end

local CreatePortfolioShareInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, "AccountId" = true, nil }

function M.AssertCreatePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(CreatePortfolioShareInput_keys[k], "CreatePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param AccountId [AccountId] <p>The account ID with which to share the portfolio.</p>
-- Required parameter: PortfolioId
-- Required parameter: AccountId
function M.CreatePortfolioShareInput(AcceptLanguage, PortfolioId, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
		["AccountId"] = AccountId,
	}
	M.AssertCreatePortfolioShareInput(t)
	return t
end

local AccessLevelFilter_keys = { "Value" = true, "Key" = true, nil }

function M.AssertAccessLevelFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessLevelFilter to be of type 'table'")
	if struct["Value"] then M.AssertAccessLevelFilterValue(struct["Value"]) end
	if struct["Key"] then M.AssertAccessLevelFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(AccessLevelFilter_keys[k], "AccessLevelFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessLevelFilter
-- <p>The access level to limit results.</p>
-- @param Value [AccessLevelFilterValue] <p>Specifies the user to which the access level applies. A value of <code>Self</code> is currently supported.</p>
-- @param Key [AccessLevelFilterKey] <p>Specifies the access level.</p> <p> <code>Account</code> allows results at the account level. </p> <p> <code>Role</code> allows results based on the federated role of the specified user.</p> <p> <code>User</code> allows results limited to the specified user. </p>
function M.AccessLevelFilter(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessLevelFilter")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertAccessLevelFilter(t)
	return t
end

local DescribeProvisioningParametersOutput_keys = { "TagOptions" = true, "ProvisioningArtifactParameters" = true, "ConstraintSummaries" = true, "UsageInstructions" = true, nil }

function M.AssertDescribeProvisioningParametersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningParametersOutput to be of type 'table'")
	if struct["TagOptions"] then M.AssertTagOptionSummaries(struct["TagOptions"]) end
	if struct["ProvisioningArtifactParameters"] then M.AssertProvisioningArtifactParameters(struct["ProvisioningArtifactParameters"]) end
	if struct["ConstraintSummaries"] then M.AssertConstraintSummaries(struct["ConstraintSummaries"]) end
	if struct["UsageInstructions"] then M.AssertUsageInstructions(struct["UsageInstructions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisioningParametersOutput_keys[k], "DescribeProvisioningParametersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningParametersOutput
--  
-- @param TagOptions [TagOptionSummaries] <p>List of TagOptions associated with the provisioned provisioning parameters.</p>
-- @param ProvisioningArtifactParameters [ProvisioningArtifactParameters] <p>The list of parameters used to successfully provision the product. Each parameter includes a list of allowable values and additional metadata about each parameter.</p>
-- @param ConstraintSummaries [ConstraintSummaries] <p>The list of constraint summaries that apply to provisioning this product.</p>
-- @param UsageInstructions [UsageInstructions] <p>Any additional metadata specifically related to the provisioning of the product. For example, see the <code>Version</code> field of the CloudFormation template.</p>
function M.DescribeProvisioningParametersOutput(TagOptions, ProvisioningArtifactParameters, ConstraintSummaries, UsageInstructions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningParametersOutput")
	local t = { 
		["TagOptions"] = TagOptions,
		["ProvisioningArtifactParameters"] = ProvisioningArtifactParameters,
		["ConstraintSummaries"] = ConstraintSummaries,
		["UsageInstructions"] = UsageInstructions,
	}
	M.AssertDescribeProvisioningParametersOutput(t)
	return t
end

local UpdateTagOptionOutput_keys = { "TagOptionDetail" = true, nil }

function M.AssertUpdateTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then M.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTagOptionOutput_keys[k], "UpdateTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagOptionOutput
--  
-- @param TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.UpdateTagOptionOutput(TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = TagOptionDetail,
	}
	M.AssertUpdateTagOptionOutput(t)
	return t
end

local TerminateProvisionedProductInput_keys = { "AcceptLanguage" = true, "ProvisionedProductId" = true, "TerminateToken" = true, "IgnoreErrors" = true, "ProvisionedProductName" = true, nil }

function M.AssertTerminateProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateProvisionedProductInput to be of type 'table'")
	assert(struct["TerminateToken"], "Expected key TerminateToken to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisionedProductId"] then M.AssertId(struct["ProvisionedProductId"]) end
	if struct["TerminateToken"] then M.AssertIdempotencyToken(struct["TerminateToken"]) end
	if struct["IgnoreErrors"] then M.AssertIgnoreErrors(struct["IgnoreErrors"]) end
	if struct["ProvisionedProductName"] then M.AssertProvisionedProductNameOrArn(struct["ProvisionedProductName"]) end
	for k,_ in pairs(struct) do
		assert(TerminateProvisionedProductInput_keys[k], "TerminateProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateProvisionedProductInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- @param TerminateToken [IdempotencyToken] <p>An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the ProvisionedProduct object is terminated, further requests to terminate the same ProvisionedProduct object always return <b>ResourceNotFound</b> regardless of the value of <code>TerminateToken</code>.</p>
-- @param IgnoreErrors [IgnoreErrors] <p>If set to true, AWS Service Catalog stops managing the specified ProvisionedProduct object even if it cannot delete the underlying resources.</p>
-- @param ProvisionedProductName [ProvisionedProductNameOrArn] <p>The name of the ProvisionedProduct object to terminate. Specify either <code>ProvisionedProductName</code> or <code>ProvisionedProductId</code>, but not both.</p>
-- Required parameter: TerminateToken
function M.TerminateProvisionedProductInput(AcceptLanguage, ProvisionedProductId, TerminateToken, IgnoreErrors, ProvisionedProductName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisionedProductId"] = ProvisionedProductId,
		["TerminateToken"] = TerminateToken,
		["IgnoreErrors"] = IgnoreErrors,
		["ProvisionedProductName"] = ProvisionedProductName,
	}
	M.AssertTerminateProvisionedProductInput(t)
	return t
end

local DescribeRecordInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "Id" = true, "PageSize" = true, nil }

function M.AssertDescribeRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRecordInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRecordInput_keys[k], "DescribeRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRecordInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param Id [Id] <p>The record identifier of the ProvisionedProduct object for which to retrieve output information. This is the <code>RecordDetail.RecordId</code> obtained from the request operation's response.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required parameter: Id
function M.DescribeRecordInput(AcceptLanguage, PageToken, Id, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRecordInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["Id"] = Id,
		["PageSize"] = PageSize,
	}
	M.AssertDescribeRecordInput(t)
	return t
end

local DescribeConstraintInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribeConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConstraintInput_keys[k], "DescribeConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConstraintInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the constraint.</p>
-- Required parameter: Id
function M.DescribeConstraintInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConstraintInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribeConstraintInput(t)
	return t
end

local InvalidStateException_keys = { nil }

function M.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidStateException_keys[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>An attempt was made to modify a resource that is in an invalid state. Inspect the resource you are using for this operation to ensure that all resource states are valid before retrying the operation.</p>
function M.InvalidStateException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStateException")
	local t = { 
	}
	M.AssertInvalidStateException(t)
	return t
end

local TagOptionSummary_keys = { "Values" = true, "Key" = true, nil }

function M.AssertTagOptionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionSummary to be of type 'table'")
	if struct["Values"] then M.AssertTagOptionValues(struct["Values"]) end
	if struct["Key"] then M.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(TagOptionSummary_keys[k], "TagOptionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionSummary
-- <p>The TagOption summary key-value pair.</p>
-- @param Values [TagOptionValues] <p>The TagOptionSummary value.</p>
-- @param Key [TagOptionKey] <p>The TagOptionSummary key.</p>
function M.TagOptionSummary(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionSummary")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertTagOptionSummary(t)
	return t
end

local UpdateProductOutput_keys = { "ProductViewDetail" = true, "Tags" = true, nil }

function M.AssertUpdateProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProductOutput to be of type 'table'")
	if struct["ProductViewDetail"] then M.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProductOutput_keys[k], "UpdateProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProductOutput
--  
-- @param ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- @param Tags [Tags] <p>Tags associated with the product.</p>
function M.UpdateProductOutput(ProductViewDetail, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProductOutput")
	local t = { 
		["ProductViewDetail"] = ProductViewDetail,
		["Tags"] = Tags,
	}
	M.AssertUpdateProductOutput(t)
	return t
end

local DeletePortfolioOutput_keys = { nil }

function M.AssertDeletePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeletePortfolioOutput_keys[k], "DeletePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioOutput
--  
function M.DeletePortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioOutput")
	local t = { 
	}
	M.AssertDeletePortfolioOutput(t)
	return t
end

local DescribeProvisioningArtifactInput_keys = { "AcceptLanguage" = true, "ProvisioningArtifactId" = true, "Verbose" = true, "ProductId" = true, nil }

function M.AssertDescribeProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Verbose"] then M.AssertVerbose(struct["Verbose"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisioningArtifactInput_keys[k], "DescribeProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningArtifactInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- @param Verbose [Verbose] <p>Enable a verbose level of details for the provisioning artifact.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProvisioningArtifactId
-- Required parameter: ProductId
function M.DescribeProvisioningArtifactInput(AcceptLanguage, ProvisioningArtifactId, Verbose, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["Verbose"] = Verbose,
		["ProductId"] = ProductId,
	}
	M.AssertDescribeProvisioningArtifactInput(t)
	return t
end

local CreateProductOutput_keys = { "ProductViewDetail" = true, "ProvisioningArtifactDetail" = true, "Tags" = true, nil }

function M.AssertCreateProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProductOutput to be of type 'table'")
	if struct["ProductViewDetail"] then M.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["ProvisioningArtifactDetail"] then M.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateProductOutput_keys[k], "CreateProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProductOutput
--  
-- @param ProductViewDetail [ProductViewDetail] <p>The resulting detailed product view information.</p>
-- @param ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param Tags [Tags] <p>Tags successfully associated with the new product.</p>
function M.CreateProductOutput(ProductViewDetail, ProvisioningArtifactDetail, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProductOutput")
	local t = { 
		["ProductViewDetail"] = ProductViewDetail,
		["ProvisioningArtifactDetail"] = ProvisioningArtifactDetail,
		["Tags"] = Tags,
	}
	M.AssertCreateProductOutput(t)
	return t
end

local ProvisioningParameter_keys = { "Value" = true, "Key" = true, nil }

function M.AssertProvisioningParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningParameter to be of type 'table'")
	if struct["Value"] then M.AssertParameterValue(struct["Value"]) end
	if struct["Key"] then M.AssertParameterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningParameter_keys[k], "ProvisioningParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningParameter
-- <p>The parameter key-value pairs used to provision a product.</p>
-- @param Value [ParameterValue] <p>The value to use for provisioning. Any constraints on this value can be found in <code>ProvisioningArtifactParameter</code> for <code>Key</code>.</p>
-- @param Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
function M.ProvisioningParameter(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningParameter")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertProvisioningParameter(t)
	return t
end

local ListPortfoliosForProductOutput_keys = { "NextPageToken" = true, "PortfolioDetails" = true, nil }

function M.AssertListPortfoliosForProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosForProductOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then M.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfoliosForProductOutput_keys[k], "ListPortfoliosForProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosForProductOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListPortfoliosForProductOutput(NextPageToken, PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosForProductOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["PortfolioDetails"] = PortfolioDetails,
	}
	M.AssertListPortfoliosForProductOutput(t)
	return t
end

local DeleteProductInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDeleteProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProductInput_keys[k], "DeleteProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProductInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the product for the delete request.</p>
-- Required parameter: Id
function M.DeleteProductInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProductInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDeleteProductInput(t)
	return t
end

local DeleteProductOutput_keys = { nil }

function M.AssertDeleteProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProductOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteProductOutput_keys[k], "DeleteProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProductOutput
--  
function M.DeleteProductOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProductOutput")
	local t = { 
	}
	M.AssertDeleteProductOutput(t)
	return t
end

local UpdatePortfolioInput_keys = { "RemoveTags" = true, "DisplayName" = true, "AddTags" = true, "ProviderName" = true, "AcceptLanguage" = true, "Id" = true, "Description" = true, nil }

function M.AssertUpdatePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["RemoveTags"] then M.AssertTagKeys(struct["RemoveTags"]) end
	if struct["DisplayName"] then M.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["AddTags"] then M.AssertAddTags(struct["AddTags"]) end
	if struct["ProviderName"] then M.AssertProviderName(struct["ProviderName"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Description"] then M.AssertPortfolioDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePortfolioInput_keys[k], "UpdatePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePortfolioInput
--  
-- @param RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the portfolio.</p>
-- @param DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the portfolio.</p>
-- @param ProviderName [ProviderName] <p>The updated name of the portfolio provider.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the portfolio for the update request.</p>
-- @param Description [PortfolioDescription] <p>The updated text description of the portfolio.</p>
-- Required parameter: Id
function M.UpdatePortfolioInput(RemoveTags, DisplayName, AddTags, ProviderName, AcceptLanguage, Id, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePortfolioInput")
	local t = { 
		["RemoveTags"] = RemoveTags,
		["DisplayName"] = DisplayName,
		["AddTags"] = AddTags,
		["ProviderName"] = ProviderName,
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
		["Description"] = Description,
	}
	M.AssertUpdatePortfolioInput(t)
	return t
end

local ProvisionProductOutput_keys = { "RecordDetail" = true, nil }

function M.AssertProvisionProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionProductOutput to be of type 'table'")
	if struct["RecordDetail"] then M.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionProductOutput_keys[k], "ProvisionProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionProductOutput
--  
-- @param RecordDetail [RecordDetail] <p>The detailed result of the <a>ProvisionProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object of the request, and a list of any errors that the request encountered. </p>
function M.ProvisionProductOutput(RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionProductOutput")
	local t = { 
		["RecordDetail"] = RecordDetail,
	}
	M.AssertProvisionProductOutput(t)
	return t
end

local DuplicateResourceException_keys = { nil }

function M.AssertDuplicateResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateResourceException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateResourceException_keys[k], "DuplicateResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateResourceException
-- <p>The specified resource is a duplicate.</p>
function M.DuplicateResourceException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateResourceException")
	local t = { 
	}
	M.AssertDuplicateResourceException(t)
	return t
end

local InvalidParametersException_keys = { nil }

function M.AssertInvalidParametersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParametersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParametersException_keys[k], "InvalidParametersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParametersException
-- <p>One or more parameters provided to the operation are invalid.</p>
function M.InvalidParametersException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParametersException")
	local t = { 
	}
	M.AssertInvalidParametersException(t)
	return t
end

local ListLaunchPathsOutput_keys = { "NextPageToken" = true, "LaunchPathSummaries" = true, nil }

function M.AssertListLaunchPathsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLaunchPathsOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["LaunchPathSummaries"] then M.AssertLaunchPathSummaries(struct["LaunchPathSummaries"]) end
	for k,_ in pairs(struct) do
		assert(ListLaunchPathsOutput_keys[k], "ListLaunchPathsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLaunchPathsOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param LaunchPathSummaries [LaunchPathSummaries] <p>List of launch path information summaries for the specified <code>PageToken</code>.</p>
function M.ListLaunchPathsOutput(NextPageToken, LaunchPathSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLaunchPathsOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["LaunchPathSummaries"] = LaunchPathSummaries,
	}
	M.AssertListLaunchPathsOutput(t)
	return t
end

local ProductViewSummary_keys = { "SupportDescription" = true, "Name" = true, "HasDefaultPath" = true, "ShortDescription" = true, "SupportUrl" = true, "Distributor" = true, "Owner" = true, "SupportEmail" = true, "Type" = true, "Id" = true, "ProductId" = true, nil }

function M.AssertProductViewSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewSummary to be of type 'table'")
	if struct["SupportDescription"] then M.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Name"] then M.AssertProductViewName(struct["Name"]) end
	if struct["HasDefaultPath"] then M.AssertHasDefaultPath(struct["HasDefaultPath"]) end
	if struct["ShortDescription"] then M.AssertProductViewShortDescription(struct["ShortDescription"]) end
	if struct["SupportUrl"] then M.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Distributor"] then M.AssertProductViewDistributor(struct["Distributor"]) end
	if struct["Owner"] then M.AssertProductViewOwner(struct["Owner"]) end
	if struct["SupportEmail"] then M.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Type"] then M.AssertProductType(struct["Type"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ProductViewSummary_keys[k], "ProductViewSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewSummary
-- <p>The summary metadata about the specified product.</p>
-- @param SupportDescription [SupportDescription] <p>The description of the support for this Product.</p>
-- @param Name [ProductViewName] <p>The name of the product.</p>
-- @param HasDefaultPath [HasDefaultPath] <p>A value of <code>false</code> indicates that the product does not have a default path, while a value of <code>true</code> indicates that it does. If it's false, call <a>ListLaunchPaths</a> to disambiguate between paths. If true, <a>ListLaunchPaths</a> is not required, and the output of the <a>ProductViewSummary</a> operation can be used directly with <a>DescribeProvisioningParameters</a>.</p>
-- @param ShortDescription [ProductViewShortDescription] <p>Short description of the product.</p>
-- @param SupportUrl [SupportUrl] <p>The URL information to obtain support for this Product.</p>
-- @param Distributor [ProductViewDistributor] <p>The distributor of the product. Contact the product administrator for the significance of this value.</p>
-- @param Owner [ProductViewOwner] <p>The owner of the product. Contact the product administrator for the significance of this value.</p>
-- @param SupportEmail [SupportEmail] <p>The email contact information to obtain support for this Product.</p>
-- @param Type [ProductType] <p>The product type. Contact the product administrator for the significance of this value. If this value is <code>MARKETPLACE</code>, the product was created by AWS Marketplace.</p>
-- @param Id [Id] <p>The product view identifier.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
function M.ProductViewSummary(SupportDescription, Name, HasDefaultPath, ShortDescription, SupportUrl, Distributor, Owner, SupportEmail, Type, Id, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewSummary")
	local t = { 
		["SupportDescription"] = SupportDescription,
		["Name"] = Name,
		["HasDefaultPath"] = HasDefaultPath,
		["ShortDescription"] = ShortDescription,
		["SupportUrl"] = SupportUrl,
		["Distributor"] = Distributor,
		["Owner"] = Owner,
		["SupportEmail"] = SupportEmail,
		["Type"] = Type,
		["Id"] = Id,
		["ProductId"] = ProductId,
	}
	M.AssertProductViewSummary(t)
	return t
end

local ConstraintDetail_keys = { "Owner" = true, "ConstraintId" = true, "Type" = true, "Description" = true, nil }

function M.AssertConstraintDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintDetail to be of type 'table'")
	if struct["Owner"] then M.AssertAccountId(struct["Owner"]) end
	if struct["ConstraintId"] then M.AssertId(struct["ConstraintId"]) end
	if struct["Type"] then M.AssertConstraintType(struct["Type"]) end
	if struct["Description"] then M.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ConstraintDetail_keys[k], "ConstraintDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintDetail
-- <p>Detailed constraint information.</p>
-- @param Owner [AccountId] <p>The owner of the constraint.</p>
-- @param ConstraintId [Id] <p>The identifier of the constraint.</p>
-- @param Type [ConstraintType] <p>The type of the constraint.</p>
-- @param Description [ConstraintDescription] <p>The text description of the constraint.</p>
function M.ConstraintDetail(Owner, ConstraintId, Type, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintDetail")
	local t = { 
		["Owner"] = Owner,
		["ConstraintId"] = ConstraintId,
		["Type"] = Type,
		["Description"] = Description,
	}
	M.AssertConstraintDetail(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Key-value pairs to associate with this provisioning. These tags are entirely discretionary and are propagated to the resources created in the provisioning.</p>
-- @param Value [TagValue] <p>The desired value for this key.</p>
-- @param Key [TagKey] <p>The <code>ProvisioningArtifactParameter.TagKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ListProvisioningArtifactsInput_keys = { "AcceptLanguage" = true, "ProductId" = true, nil }

function M.AssertListProvisioningArtifactsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ListProvisioningArtifactsInput_keys[k], "ListProvisioningArtifactsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
function M.ListProvisioningArtifactsInput(AcceptLanguage, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisioningArtifactsInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProductId"] = ProductId,
	}
	M.AssertListProvisioningArtifactsInput(t)
	return t
end

local DisassociateProductFromPortfolioInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, "ProductId" = true, nil }

function M.AssertDisassociateProductFromPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateProductFromPortfolioInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateProductFromPortfolioInput_keys[k], "DisassociateProductFromPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateProductFromPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: PortfolioId
function M.DisassociateProductFromPortfolioInput(AcceptLanguage, PortfolioId, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateProductFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
		["ProductId"] = ProductId,
	}
	M.AssertDisassociateProductFromPortfolioInput(t)
	return t
end

local DescribeRecordOutput_keys = { "RecordDetail" = true, "NextPageToken" = true, "RecordOutputs" = true, nil }

function M.AssertDescribeRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRecordOutput to be of type 'table'")
	if struct["RecordDetail"] then M.AssertRecordDetail(struct["RecordDetail"]) end
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["RecordOutputs"] then M.AssertRecordOutputs(struct["RecordOutputs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRecordOutput_keys[k], "DescribeRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRecordOutput
--  
-- @param RecordDetail [RecordDetail] <p>Detailed record information for the specified product. </p>
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param RecordOutputs [RecordOutputs] <p>A list of outputs for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
function M.DescribeRecordOutput(RecordDetail, NextPageToken, RecordOutputs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRecordOutput")
	local t = { 
		["RecordDetail"] = RecordDetail,
		["NextPageToken"] = NextPageToken,
		["RecordOutputs"] = RecordOutputs,
	}
	M.AssertDescribeRecordOutput(t)
	return t
end

local ProvisioningArtifactSummary_keys = { "CreatedTime" = true, "Description" = true, "ProvisioningArtifactMetadata" = true, "Id" = true, "Name" = true, nil }

function M.AssertProvisioningArtifactSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactSummary to be of type 'table'")
	if struct["CreatedTime"] then M.AssertProvisioningArtifactCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then M.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["ProvisioningArtifactMetadata"] then M.AssertProvisioningArtifactInfo(struct["ProvisioningArtifactMetadata"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Name"] then M.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningArtifactSummary_keys[k], "ProvisioningArtifactSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactSummary
-- <p>Stores summary information about a provisioning artifact.</p>
-- @param CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param Description [ProvisioningArtifactDescription] <p>The description of the provisioning artifact.</p>
-- @param ProvisioningArtifactMetadata [ProvisioningArtifactInfo] <p>The provisioning artifact metadata. This data is used with products created by AWS Marketplace.</p>
-- @param Id [Id] <p>The identifier of the provisioning artifact.</p>
-- @param Name [ProvisioningArtifactName] <p>The name of the provisioning artifact.</p>
function M.ProvisioningArtifactSummary(CreatedTime, Description, ProvisioningArtifactMetadata, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactSummary")
	local t = { 
		["CreatedTime"] = CreatedTime,
		["Description"] = Description,
		["ProvisioningArtifactMetadata"] = ProvisioningArtifactMetadata,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertProvisioningArtifactSummary(t)
	return t
end

local SearchProductsAsAdminInput_keys = { "ProductSource" = true, "PortfolioId" = true, "PageSize" = true, "PageToken" = true, "SortBy" = true, "Filters" = true, "AcceptLanguage" = true, "SortOrder" = true, nil }

function M.AssertSearchProductsAsAdminInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsAsAdminInput to be of type 'table'")
	if struct["ProductSource"] then M.AssertProductSource(struct["ProductSource"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["SortBy"] then M.AssertProductViewSortBy(struct["SortBy"]) end
	if struct["Filters"] then M.AssertProductViewFilters(struct["Filters"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(SearchProductsAsAdminInput_keys[k], "SearchProductsAsAdminInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsAsAdminInput
--  
-- @param ProductSource [ProductSource] <p>Access level of the source of the product.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param SortBy [ProductViewSortBy] <p>The sort field specifier. If no value is specified, results are not sorted.</p>
-- @param Filters [ProductViewFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all the products to which the administrator has access.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param SortOrder [SortOrder] <p>The sort order specifier. If no value is specified, results are not sorted.</p>
function M.SearchProductsAsAdminInput(ProductSource, PortfolioId, PageSize, PageToken, SortBy, Filters, AcceptLanguage, SortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsAsAdminInput")
	local t = { 
		["ProductSource"] = ProductSource,
		["PortfolioId"] = PortfolioId,
		["PageSize"] = PageSize,
		["PageToken"] = PageToken,
		["SortBy"] = SortBy,
		["Filters"] = Filters,
		["AcceptLanguage"] = AcceptLanguage,
		["SortOrder"] = SortOrder,
	}
	M.AssertSearchProductsAsAdminInput(t)
	return t
end

local UpdateProvisioningArtifactOutput_keys = { "ProvisioningArtifactDetail" = true, "Info" = true, "Status" = true, nil }

function M.AssertUpdateProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then M.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then M.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProvisioningArtifactOutput_keys[k], "UpdateProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningArtifactOutput
--  
-- @param ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact update request.</p>
-- @param Status [Status] <p>The status of the current request.</p>
function M.UpdateProvisioningArtifactOutput(ProvisioningArtifactDetail, Info, Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = ProvisioningArtifactDetail,
		["Info"] = Info,
		["Status"] = Status,
	}
	M.AssertUpdateProvisioningArtifactOutput(t)
	return t
end

local AssociateProductWithPortfolioInput_keys = { "AcceptLanguage" = true, "SourcePortfolioId" = true, "PortfolioId" = true, "ProductId" = true, nil }

function M.AssertAssociateProductWithPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateProductWithPortfolioInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["SourcePortfolioId"] then M.AssertId(struct["SourcePortfolioId"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateProductWithPortfolioInput_keys[k], "AssociateProductWithPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateProductWithPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param SourcePortfolioId [Id] <p>The identifier of the source portfolio to use with this association.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: PortfolioId
function M.AssociateProductWithPortfolioInput(AcceptLanguage, SourcePortfolioId, PortfolioId, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateProductWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["SourcePortfolioId"] = SourcePortfolioId,
		["PortfolioId"] = PortfolioId,
		["ProductId"] = ProductId,
	}
	M.AssertAssociateProductWithPortfolioInput(t)
	return t
end

local ParameterConstraints_keys = { "AllowedValues" = true, nil }

function M.AssertParameterConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterConstraints to be of type 'table'")
	if struct["AllowedValues"] then M.AssertAllowedValues(struct["AllowedValues"]) end
	for k,_ in pairs(struct) do
		assert(ParameterConstraints_keys[k], "ParameterConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterConstraints
-- <p>The constraints that the administrator has put on the parameter.</p>
-- @param AllowedValues [AllowedValues] <p>The values that the administrator has allowed for the parameter.</p>
function M.ParameterConstraints(AllowedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterConstraints")
	local t = { 
		["AllowedValues"] = AllowedValues,
	}
	M.AssertParameterConstraints(t)
	return t
end

local ListResourcesForTagOptionInput_keys = { "ResourceType" = true, "PageToken" = true, "PageSize" = true, "TagOptionId" = true, nil }

function M.AssertListResourcesForTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForTagOptionInput to be of type 'table'")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["TagOptionId"] then M.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(ListResourcesForTagOptionInput_keys[k], "ListResourcesForTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForTagOptionInput
--  
-- @param ResourceType [ResourceType] <p>Resource type.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param TagOptionId [TagOptionId] <p>Identifier of the TagOption.</p>
-- Required parameter: TagOptionId
function M.ListResourcesForTagOptionInput(ResourceType, PageToken, PageSize, TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesForTagOptionInput")
	local t = { 
		["ResourceType"] = ResourceType,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["TagOptionId"] = TagOptionId,
	}
	M.AssertListResourcesForTagOptionInput(t)
	return t
end

local UpdateTagOptionInput_keys = { "Active" = true, "Id" = true, "Value" = true, nil }

function M.AssertUpdateTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagOptionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Active"] then M.AssertTagOptionActive(struct["Active"]) end
	if struct["Id"] then M.AssertTagOptionId(struct["Id"]) end
	if struct["Value"] then M.AssertTagOptionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTagOptionInput_keys[k], "UpdateTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagOptionInput
--  
-- @param Active [TagOptionActive] <p>The updated active state.</p>
-- @param Id [TagOptionId] <p>The identifier of the constraint to update.</p>
-- @param Value [TagOptionValue] <p>The updated value.</p>
-- Required parameter: Id
function M.UpdateTagOptionInput(Active, Id, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagOptionInput")
	local t = { 
		["Active"] = Active,
		["Id"] = Id,
		["Value"] = Value,
	}
	M.AssertUpdateTagOptionInput(t)
	return t
end

local RecordTag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertRecordTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordTag to be of type 'table'")
	if struct["Value"] then M.AssertRecordTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertRecordTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(RecordTag_keys[k], "RecordTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordTag
-- <p>A tag associated with the record, stored as a key-value pair.</p>
-- @param Value [RecordTagValue] <p>The value for this tag.</p>
-- @param Key [RecordTagKey] <p>The key for this tag.</p>
function M.RecordTag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordTag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertRecordTag(t)
	return t
end

local TagOptionNotMigratedException_keys = { nil }

function M.AssertTagOptionNotMigratedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionNotMigratedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagOptionNotMigratedException_keys[k], "TagOptionNotMigratedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionNotMigratedException
-- <p>An operation requiring TagOptions failed because the TagOptions migration process has not been performed for this account. Please use the AWS console to perform the migration process before retrying the operation.</p>
function M.TagOptionNotMigratedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionNotMigratedException")
	local t = { 
	}
	M.AssertTagOptionNotMigratedException(t)
	return t
end

local ListPortfoliosForProductInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, "ProductId" = true, nil }

function M.AssertListPortfoliosForProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosForProductInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfoliosForProductInput_keys[k], "ListPortfoliosForProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosForProductInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
function M.ListPortfoliosForProductInput(AcceptLanguage, PageToken, PageSize, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosForProductInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["ProductId"] = ProductId,
	}
	M.AssertListPortfoliosForProductInput(t)
	return t
end

local ScanProvisionedProductsOutput_keys = { "NextPageToken" = true, "ProvisionedProducts" = true, nil }

function M.AssertScanProvisionedProductsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanProvisionedProductsOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisionedProducts"] then M.AssertProvisionedProductDetails(struct["ProvisionedProducts"]) end
	for k,_ in pairs(struct) do
		assert(ScanProvisionedProductsOutput_keys[k], "ScanProvisionedProductsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanProvisionedProductsOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param ProvisionedProducts [ProvisionedProductDetails] <p>A list of ProvisionedProduct detail objects.</p>
function M.ScanProvisionedProductsOutput(NextPageToken, ProvisionedProducts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanProvisionedProductsOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["ProvisionedProducts"] = ProvisionedProducts,
	}
	M.AssertScanProvisionedProductsOutput(t)
	return t
end

local CreatePortfolioShareOutput_keys = { nil }

function M.AssertCreatePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreatePortfolioShareOutput_keys[k], "CreatePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioShareOutput
--  
function M.CreatePortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioShareOutput")
	local t = { 
	}
	M.AssertCreatePortfolioShareOutput(t)
	return t
end

local CreateProductInput_keys = { "SupportEmail" = true, "Name" = true, "Tags" = true, "SupportUrl" = true, "Owner" = true, "IdempotencyToken" = true, "ProvisioningArtifactParameters" = true, "ProductType" = true, "AcceptLanguage" = true, "Distributor" = true, "SupportDescription" = true, "Description" = true, nil }

function M.AssertCreateProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProductInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Owner"], "Expected key Owner to exist in table")
	assert(struct["ProductType"], "Expected key ProductType to exist in table")
	assert(struct["ProvisioningArtifactParameters"], "Expected key ProvisioningArtifactParameters to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["SupportEmail"] then M.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Name"] then M.AssertProductViewName(struct["Name"]) end
	if struct["Tags"] then M.AssertAddTags(struct["Tags"]) end
	if struct["SupportUrl"] then M.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Owner"] then M.AssertProductViewOwner(struct["Owner"]) end
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["ProvisioningArtifactParameters"] then M.AssertProvisioningArtifactProperties(struct["ProvisioningArtifactParameters"]) end
	if struct["ProductType"] then M.AssertProductType(struct["ProductType"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Distributor"] then M.AssertProductViewOwner(struct["Distributor"]) end
	if struct["SupportDescription"] then M.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Description"] then M.AssertProductViewShortDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateProductInput_keys[k], "CreateProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProductInput
--  
-- @param SupportEmail [SupportEmail] <p>Contact email for product support.</p>
-- @param Name [ProductViewName] <p>The name of the product.</p>
-- @param Tags [AddTags] <p>Tags to associate with the new product.</p>
-- @param SupportUrl [SupportUrl] <p>Contact URL for product support.</p>
-- @param Owner [ProductViewOwner] <p>The owner of the product.</p>
-- @param IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param ProvisioningArtifactParameters [ProvisioningArtifactProperties] <p>Parameters for the provisioning artifact.</p>
-- @param ProductType [ProductType] <p>The type of the product to create.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Distributor [ProductViewOwner] <p>The distributor of the product.</p>
-- @param SupportDescription [SupportDescription] <p>Support information about the product.</p>
-- @param Description [ProductViewShortDescription] <p>The text description of the product.</p>
-- Required parameter: Name
-- Required parameter: Owner
-- Required parameter: ProductType
-- Required parameter: ProvisioningArtifactParameters
-- Required parameter: IdempotencyToken
function M.CreateProductInput(SupportEmail, Name, Tags, SupportUrl, Owner, IdempotencyToken, ProvisioningArtifactParameters, ProductType, AcceptLanguage, Distributor, SupportDescription, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProductInput")
	local t = { 
		["SupportEmail"] = SupportEmail,
		["Name"] = Name,
		["Tags"] = Tags,
		["SupportUrl"] = SupportUrl,
		["Owner"] = Owner,
		["IdempotencyToken"] = IdempotencyToken,
		["ProvisioningArtifactParameters"] = ProvisioningArtifactParameters,
		["ProductType"] = ProductType,
		["AcceptLanguage"] = AcceptLanguage,
		["Distributor"] = Distributor,
		["SupportDescription"] = SupportDescription,
		["Description"] = Description,
	}
	M.AssertCreateProductInput(t)
	return t
end

local ProvisioningArtifact_keys = { "CreatedTime" = true, "Description" = true, "Id" = true, "Name" = true, nil }

function M.AssertProvisioningArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifact to be of type 'table'")
	if struct["CreatedTime"] then M.AssertProvisioningArtifactCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then M.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Name"] then M.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningArtifact_keys[k], "ProvisioningArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifact
-- <p>Contains information indicating the ways in which a product can be provisioned.</p>
-- @param CreatedTime [ProvisioningArtifactCreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param Description [ProvisioningArtifactDescription] <p>The text description of the artifact.</p>
-- @param Id [Id] <p>The identifier for the artifact. This is sometimes referred to as the product version.</p>
-- @param Name [ProvisioningArtifactName] <p>The name of the artifact.</p>
function M.ProvisioningArtifact(CreatedTime, Description, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifact")
	local t = { 
		["CreatedTime"] = CreatedTime,
		["Description"] = Description,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertProvisioningArtifact(t)
	return t
end

local DescribeProductAsAdminInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribeProductAsAdminInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductAsAdminInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductAsAdminInput_keys[k], "DescribeProductAsAdminInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductAsAdminInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the product for which to retrieve information.</p>
-- Required parameter: Id
function M.DescribeProductAsAdminInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductAsAdminInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribeProductAsAdminInput(t)
	return t
end

local ResourceDetail_keys = { "CreatedTime" = true, "Description" = true, "Id" = true, "ARN" = true, "Name" = true, nil }

function M.AssertResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceDetail to be of type 'table'")
	if struct["CreatedTime"] then M.AssertResourceDetailCreatedTime(struct["CreatedTime"]) end
	if struct["Description"] then M.AssertResourceDetailDescription(struct["Description"]) end
	if struct["Id"] then M.AssertResourceDetailId(struct["Id"]) end
	if struct["ARN"] then M.AssertResourceDetailARN(struct["ARN"]) end
	if struct["Name"] then M.AssertResourceDetailName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ResourceDetail_keys[k], "ResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceDetail
-- <p>Detailed resource information.</p>
-- @param CreatedTime [ResourceDetailCreatedTime] <p>Creation time of the resource.</p>
-- @param Description [ResourceDetailDescription] <p>Description of the resource.</p>
-- @param Id [ResourceDetailId] <p>Identifier of the resource.</p>
-- @param ARN [ResourceDetailARN] <p>ARN of the resource.</p>
-- @param Name [ResourceDetailName] <p>Name of the resource.</p>
function M.ResourceDetail(CreatedTime, Description, Id, ARN, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceDetail")
	local t = { 
		["CreatedTime"] = CreatedTime,
		["Description"] = Description,
		["Id"] = Id,
		["ARN"] = ARN,
		["Name"] = Name,
	}
	M.AssertResourceDetail(t)
	return t
end

local ListConstraintsForPortfolioOutput_keys = { "NextPageToken" = true, "ConstraintDetails" = true, nil }

function M.AssertListConstraintsForPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConstraintsForPortfolioOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["ConstraintDetails"] then M.AssertConstraintDetails(struct["ConstraintDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListConstraintsForPortfolioOutput_keys[k], "ListConstraintsForPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConstraintsForPortfolioOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param ConstraintDetails [ConstraintDetails] <p>List of detailed constraint information objects.</p>
function M.ListConstraintsForPortfolioOutput(NextPageToken, ConstraintDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConstraintsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["ConstraintDetails"] = ConstraintDetails,
	}
	M.AssertListConstraintsForPortfolioOutput(t)
	return t
end

local DescribeProductViewInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribeProductViewInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductViewInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductViewInput_keys[k], "DescribeProductViewInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductViewInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The <code>ProductViewId</code> of the product to describe.</p>
-- Required parameter: Id
function M.DescribeProductViewInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductViewInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribeProductViewInput(t)
	return t
end

local RecordError_keys = { "Code" = true, "Description" = true, nil }

function M.AssertRecordError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordError to be of type 'table'")
	if struct["Code"] then M.AssertErrorCode(struct["Code"]) end
	if struct["Description"] then M.AssertErrorDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(RecordError_keys[k], "RecordError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordError
-- <p>The error code and description resulting from an operation.</p>
-- @param Code [ErrorCode] <p>The numeric value of the error.</p>
-- @param Description [ErrorDescription] <p>The text description of the error.</p>
function M.RecordError(Code, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordError")
	local t = { 
		["Code"] = Code,
		["Description"] = Description,
	}
	M.AssertRecordError(t)
	return t
end

local ProvisioningArtifactDetail_keys = { "CreatedTime" = true, "Description" = true, "Type" = true, "Id" = true, "Name" = true, nil }

function M.AssertProvisioningArtifactDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactDetail to be of type 'table'")
	if struct["CreatedTime"] then M.AssertCreationTime(struct["CreatedTime"]) end
	if struct["Description"] then M.AssertProvisioningArtifactName(struct["Description"]) end
	if struct["Type"] then M.AssertProvisioningArtifactType(struct["Type"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Name"] then M.AssertProvisioningArtifactName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningArtifactDetail_keys[k], "ProvisioningArtifactDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactDetail
-- <p>Detailed provisioning artifact information.</p>
-- @param CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- @param Description [ProvisioningArtifactName] <p>The text description of the provisioning artifact.</p>
-- @param Type [ProvisioningArtifactType] <p>The type of the provisioning artifact. The following provisioning artifact types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- @param Id [Id] <p>The identifier of the provisioning artifact. This is sometimes referred to as the product version.</p>
-- @param Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact.</p>
function M.ProvisioningArtifactDetail(CreatedTime, Description, Type, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactDetail")
	local t = { 
		["CreatedTime"] = CreatedTime,
		["Description"] = Description,
		["Type"] = Type,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertProvisioningArtifactDetail(t)
	return t
end

local AssociateProductWithPortfolioOutput_keys = { nil }

function M.AssertAssociateProductWithPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateProductWithPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociateProductWithPortfolioOutput_keys[k], "AssociateProductWithPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateProductWithPortfolioOutput
--  
function M.AssociateProductWithPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateProductWithPortfolioOutput")
	local t = { 
	}
	M.AssertAssociateProductWithPortfolioOutput(t)
	return t
end

local AssociatePrincipalWithPortfolioInput_keys = { "AcceptLanguage" = true, "PrincipalType" = true, "PrincipalARN" = true, "PortfolioId" = true, nil }

function M.AssertAssociatePrincipalWithPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatePrincipalWithPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["PrincipalARN"], "Expected key PrincipalARN to exist in table")
	assert(struct["PrincipalType"], "Expected key PrincipalType to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PrincipalType"] then M.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalARN"] then M.AssertPrincipalARN(struct["PrincipalARN"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(AssociatePrincipalWithPortfolioInput_keys[k], "AssociatePrincipalWithPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatePrincipalWithPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- @param PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: PrincipalARN
-- Required parameter: PrincipalType
function M.AssociatePrincipalWithPortfolioInput(AcceptLanguage, PrincipalType, PrincipalARN, PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociatePrincipalWithPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PrincipalType"] = PrincipalType,
		["PrincipalARN"] = PrincipalARN,
		["PortfolioId"] = PortfolioId,
	}
	M.AssertAssociatePrincipalWithPortfolioInput(t)
	return t
end

local UpdateProvisioningArtifactInput_keys = { "AcceptLanguage" = true, "ProvisioningArtifactId" = true, "Description" = true, "Name" = true, "ProductId" = true, nil }

function M.AssertUpdateProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["Description"] then M.AssertProvisioningArtifactDescription(struct["Description"]) end
	if struct["Name"] then M.AssertProvisioningArtifactName(struct["Name"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProvisioningArtifactInput_keys[k], "UpdateProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningArtifactInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the update request. This is sometimes referred to as the product version.</p>
-- @param Description [ProvisioningArtifactDescription] <p>The updated text description of the provisioning artifact.</p>
-- @param Name [ProvisioningArtifactName] <p>The updated name of the provisioning artifact.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.UpdateProvisioningArtifactInput(AcceptLanguage, ProvisioningArtifactId, Description, Name, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["Description"] = Description,
		["Name"] = Name,
		["ProductId"] = ProductId,
	}
	M.AssertUpdateProvisioningArtifactInput(t)
	return t
end

local DisassociateProductFromPortfolioOutput_keys = { nil }

function M.AssertDisassociateProductFromPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateProductFromPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateProductFromPortfolioOutput_keys[k], "DisassociateProductFromPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateProductFromPortfolioOutput
--  
function M.DisassociateProductFromPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateProductFromPortfolioOutput")
	local t = { 
	}
	M.AssertDisassociateProductFromPortfolioOutput(t)
	return t
end

local RecordOutput_keys = { "Description" = true, "OutputKey" = true, "OutputValue" = true, nil }

function M.AssertRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordOutput to be of type 'table'")
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["OutputKey"] then M.AssertOutputKey(struct["OutputKey"]) end
	if struct["OutputValue"] then M.AssertOutputValue(struct["OutputValue"]) end
	for k,_ in pairs(struct) do
		assert(RecordOutput_keys[k], "RecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordOutput
-- <p>An output for the specified Product object created as the result of a request. For example, a CloudFormation-backed product that creates an S3 bucket would have an output for the S3 bucket URL.</p>
-- @param Description [Description] <p>The text description of the output.</p>
-- @param OutputKey [OutputKey] <p>The output key.</p>
-- @param OutputValue [OutputValue] <p>The output value.</p>
function M.RecordOutput(Description, OutputKey, OutputValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordOutput")
	local t = { 
		["Description"] = Description,
		["OutputKey"] = OutputKey,
		["OutputValue"] = OutputValue,
	}
	M.AssertRecordOutput(t)
	return t
end

local DescribeProductOutput_keys = { "ProductViewSummary" = true, "ProvisioningArtifacts" = true, nil }

function M.AssertDescribeProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductOutput to be of type 'table'")
	if struct["ProductViewSummary"] then M.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["ProvisioningArtifacts"] then M.AssertProvisioningArtifacts(struct["ProvisioningArtifacts"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductOutput_keys[k], "DescribeProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductOutput
--  
-- @param ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- @param ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> parameter represent the ways the specified product can be provisioned.</p>
function M.DescribeProductOutput(ProductViewSummary, ProvisioningArtifacts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductOutput")
	local t = { 
		["ProductViewSummary"] = ProductViewSummary,
		["ProvisioningArtifacts"] = ProvisioningArtifacts,
	}
	M.AssertDescribeProductOutput(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The current limits of the service would have been exceeded by this operation. Reduce the resource use or increase the service limits and retry the operation.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local PortfolioDetail_keys = { "DisplayName" = true, "Description" = true, "ProviderName" = true, "CreatedTime" = true, "Id" = true, "ARN" = true, nil }

function M.AssertPortfolioDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortfolioDetail to be of type 'table'")
	if struct["DisplayName"] then M.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["Description"] then M.AssertPortfolioDescription(struct["Description"]) end
	if struct["ProviderName"] then M.AssertProviderName(struct["ProviderName"]) end
	if struct["CreatedTime"] then M.AssertCreationTime(struct["CreatedTime"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["ARN"] then M.AssertResourceARN(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(PortfolioDetail_keys[k], "PortfolioDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortfolioDetail
-- <p>Detailed portfolio information.</p>
-- @param DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- @param ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- @param CreatedTime [CreationTime] <p>The UTC timestamp of the creation time.</p>
-- @param Id [Id] <p>The identifier for the portfolio.</p>
-- @param ARN [ResourceARN] <p>The ARN assigned to the portfolio.</p>
function M.PortfolioDetail(DisplayName, Description, ProviderName, CreatedTime, Id, ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortfolioDetail")
	local t = { 
		["DisplayName"] = DisplayName,
		["Description"] = Description,
		["ProviderName"] = ProviderName,
		["CreatedTime"] = CreatedTime,
		["Id"] = Id,
		["ARN"] = ARN,
	}
	M.AssertPortfolioDetail(t)
	return t
end

local UpdateProductInput_keys = { "RemoveTags" = true, "SupportEmail" = true, "Description" = true, "SupportUrl" = true, "Owner" = true, "AddTags" = true, "AcceptLanguage" = true, "Distributor" = true, "SupportDescription" = true, "Id" = true, "Name" = true, nil }

function M.AssertUpdateProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["RemoveTags"] then M.AssertTagKeys(struct["RemoveTags"]) end
	if struct["SupportEmail"] then M.AssertSupportEmail(struct["SupportEmail"]) end
	if struct["Description"] then M.AssertProductViewShortDescription(struct["Description"]) end
	if struct["SupportUrl"] then M.AssertSupportUrl(struct["SupportUrl"]) end
	if struct["Owner"] then M.AssertProductViewOwner(struct["Owner"]) end
	if struct["AddTags"] then M.AssertAddTags(struct["AddTags"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Distributor"] then M.AssertProductViewOwner(struct["Distributor"]) end
	if struct["SupportDescription"] then M.AssertSupportDescription(struct["SupportDescription"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Name"] then M.AssertProductViewName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProductInput_keys[k], "UpdateProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProductInput
--  
-- @param RemoveTags [TagKeys] <p>Tags to remove from the existing list of tags associated with the product.</p>
-- @param SupportEmail [SupportEmail] <p>The updated support email for the product.</p>
-- @param Description [ProductViewShortDescription] <p>The updated text description of the product.</p>
-- @param SupportUrl [SupportUrl] <p>The updated support URL for the product.</p>
-- @param Owner [ProductViewOwner] <p>The updated owner of the product.</p>
-- @param AddTags [AddTags] <p>Tags to add to the existing list of tags associated with the product.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Distributor [ProductViewOwner] <p>The updated distributor of the product.</p>
-- @param SupportDescription [SupportDescription] <p>The updated support description for the product.</p>
-- @param Id [Id] <p>The identifier of the product for the update request.</p>
-- @param Name [ProductViewName] <p>The updated product name.</p>
-- Required parameter: Id
function M.UpdateProductInput(RemoveTags, SupportEmail, Description, SupportUrl, Owner, AddTags, AcceptLanguage, Distributor, SupportDescription, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProductInput")
	local t = { 
		["RemoveTags"] = RemoveTags,
		["SupportEmail"] = SupportEmail,
		["Description"] = Description,
		["SupportUrl"] = SupportUrl,
		["Owner"] = Owner,
		["AddTags"] = AddTags,
		["AcceptLanguage"] = AcceptLanguage,
		["Distributor"] = Distributor,
		["SupportDescription"] = SupportDescription,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertUpdateProductInput(t)
	return t
end

local DeleteProvisioningArtifactOutput_keys = { nil }

function M.AssertDeleteProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisioningArtifactOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteProvisioningArtifactOutput_keys[k], "DeleteProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisioningArtifactOutput
--  
function M.DeleteProvisioningArtifactOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProvisioningArtifactOutput")
	local t = { 
	}
	M.AssertDeleteProvisioningArtifactOutput(t)
	return t
end

local TerminateProvisionedProductOutput_keys = { "RecordDetail" = true, nil }

function M.AssertTerminateProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateProvisionedProductOutput to be of type 'table'")
	if struct["RecordDetail"] then M.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(TerminateProvisionedProductOutput_keys[k], "TerminateProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateProvisionedProductOutput
--  
-- @param RecordDetail [RecordDetail] <p>The detailed result of the <a>TerminateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
function M.TerminateProvisionedProductOutput(RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = RecordDetail,
	}
	M.AssertTerminateProvisionedProductOutput(t)
	return t
end

local ListPortfoliosOutput_keys = { "NextPageToken" = true, "PortfolioDetails" = true, nil }

function M.AssertListPortfoliosOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfoliosOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then M.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfoliosOutput_keys[k], "ListPortfoliosOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfoliosOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListPortfoliosOutput(NextPageToken, PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfoliosOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["PortfolioDetails"] = PortfolioDetails,
	}
	M.AssertListPortfoliosOutput(t)
	return t
end

local DescribeProvisioningParametersInput_keys = { "AcceptLanguage" = true, "ProvisioningArtifactId" = true, "PathId" = true, "ProductId" = true, nil }

function M.AssertDescribeProvisioningParametersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningParametersInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["PathId"] then M.AssertId(struct["PathId"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisioningParametersInput_keys[k], "DescribeProvisioningParametersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningParametersInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param PathId [Id] <p>The identifier of the path for this product's provisioning. This value is optional if the product has a default path, and is required if there is more than one path for the specified product.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.DescribeProvisioningParametersInput(AcceptLanguage, ProvisioningArtifactId, PathId, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningParametersInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["PathId"] = PathId,
		["ProductId"] = ProductId,
	}
	M.AssertDescribeProvisioningParametersInput(t)
	return t
end

local RecordDetail_keys = { "Status" = true, "UpdatedTime" = true, "ProvisionedProductName" = true, "RecordType" = true, "ProvisioningArtifactId" = true, "RecordId" = true, "ProvisionedProductType" = true, "RecordTags" = true, "RecordErrors" = true, "PathId" = true, "CreatedTime" = true, "ProvisionedProductId" = true, "ProductId" = true, nil }

function M.AssertRecordDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordDetail to be of type 'table'")
	if struct["Status"] then M.AssertRecordStatus(struct["Status"]) end
	if struct["UpdatedTime"] then M.AssertUpdatedTime(struct["UpdatedTime"]) end
	if struct["ProvisionedProductName"] then M.AssertProvisionedProductName(struct["ProvisionedProductName"]) end
	if struct["RecordType"] then M.AssertRecordType(struct["RecordType"]) end
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["RecordId"] then M.AssertId(struct["RecordId"]) end
	if struct["ProvisionedProductType"] then M.AssertProvisionedProductType(struct["ProvisionedProductType"]) end
	if struct["RecordTags"] then M.AssertRecordTags(struct["RecordTags"]) end
	if struct["RecordErrors"] then M.AssertRecordErrors(struct["RecordErrors"]) end
	if struct["PathId"] then M.AssertId(struct["PathId"]) end
	if struct["CreatedTime"] then M.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["ProvisionedProductId"] then M.AssertId(struct["ProvisionedProductId"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(RecordDetail_keys[k], "RecordDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordDetail
-- <p>The full details of a specific ProvisionedProduct object.</p>
-- @param Status [RecordStatus] <p>The status of the ProvisionedProduct object.</p> <p> <code>CREATED</code> - Request created but the operation has not yet started.</p> <p> <code>IN_PROGRESS</code> - The requested operation is in-progress.</p> <p> <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the requested operation failed and some remediation is occurring. For example, a rollback.</p> <p> <code>SUCCEEDED</code> - The requested operation has successfully completed.</p> <p> <code>FAILED</code> - The requested operation has completed but has failed. Investigate using the error messages returned.</p>
-- @param UpdatedTime [UpdatedTime] <p>The time when the record for the ProvisionedProduct object was last updated.</p>
-- @param ProvisionedProductName [ProvisionedProductName] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- @param RecordType [RecordType] <p>The record type for this record.</p>
-- @param ProvisioningArtifactId [Id] <p>The provisioning artifact identifier for this product. This is sometimes referred to as the product version.</p>
-- @param RecordId [Id] <p>The identifier of the ProvisionedProduct object record.</p>
-- @param ProvisionedProductType [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- @param RecordTags [RecordTags] <p>List of tags associated with this record.</p>
-- @param RecordErrors [RecordErrors] <p>A list of errors that occurred while processing the request.</p>
-- @param PathId [Id] <p>The identifier of the path for this product's provisioning.</p>
-- @param CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param ProvisionedProductId [Id] <p>The identifier of the ProvisionedProduct object.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
function M.RecordDetail(Status, UpdatedTime, ProvisionedProductName, RecordType, ProvisioningArtifactId, RecordId, ProvisionedProductType, RecordTags, RecordErrors, PathId, CreatedTime, ProvisionedProductId, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordDetail")
	local t = { 
		["Status"] = Status,
		["UpdatedTime"] = UpdatedTime,
		["ProvisionedProductName"] = ProvisionedProductName,
		["RecordType"] = RecordType,
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["RecordId"] = RecordId,
		["ProvisionedProductType"] = ProvisionedProductType,
		["RecordTags"] = RecordTags,
		["RecordErrors"] = RecordErrors,
		["PathId"] = PathId,
		["CreatedTime"] = CreatedTime,
		["ProvisionedProductId"] = ProvisionedProductId,
		["ProductId"] = ProductId,
	}
	M.AssertRecordDetail(t)
	return t
end

local ListTagOptionsFilters_keys = { "Active" = true, "Value" = true, "Key" = true, nil }

function M.AssertListTagOptionsFilters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsFilters to be of type 'table'")
	if struct["Active"] then M.AssertTagOptionActive(struct["Active"]) end
	if struct["Value"] then M.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagOptionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ListTagOptionsFilters_keys[k], "ListTagOptionsFilters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsFilters
-- <p>The ListTagOptions filters.</p>
-- @param Active [TagOptionActive] <p>The ListTagOptionsFilters active state.</p>
-- @param Value [TagOptionValue] <p>The ListTagOptionsFilters value.</p>
-- @param Key [TagOptionKey] <p>The ListTagOptionsFilters key.</p>
function M.ListTagOptionsFilters(Active, Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsFilters")
	local t = { 
		["Active"] = Active,
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertListTagOptionsFilters(t)
	return t
end

local ResourceInUseException_keys = { nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The operation was requested against a resource that is currently in use. Free the resource from use and retry the operation.</p>
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
	}
	M.AssertResourceInUseException(t)
	return t
end

local DeletePortfolioShareOutput_keys = { nil }

function M.AssertDeletePortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeletePortfolioShareOutput_keys[k], "DeletePortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareOutput
--  
function M.DeletePortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioShareOutput")
	local t = { 
	}
	M.AssertDeletePortfolioShareOutput(t)
	return t
end

local DescribeProductAsAdminOutput_keys = { "ProductViewDetail" = true, "TagOptions" = true, "ProvisioningArtifactSummaries" = true, "Tags" = true, nil }

function M.AssertDescribeProductAsAdminOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductAsAdminOutput to be of type 'table'")
	if struct["ProductViewDetail"] then M.AssertProductViewDetail(struct["ProductViewDetail"]) end
	if struct["TagOptions"] then M.AssertTagOptionDetails(struct["TagOptions"]) end
	if struct["ProvisioningArtifactSummaries"] then M.AssertProvisioningArtifactSummaries(struct["ProvisioningArtifactSummaries"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductAsAdminOutput_keys[k], "DescribeProductAsAdminOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductAsAdminOutput
--  
-- @param ProductViewDetail [ProductViewDetail] <p>Detailed product view information.</p>
-- @param TagOptions [TagOptionDetails] <p>List of TagOptions associated with the product.</p>
-- @param ProvisioningArtifactSummaries [ProvisioningArtifactSummaries] <p>A list of provisioning artifact summaries for the product.</p>
-- @param Tags [Tags] <p>Tags associated with the product.</p>
function M.DescribeProductAsAdminOutput(ProductViewDetail, TagOptions, ProvisioningArtifactSummaries, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductAsAdminOutput")
	local t = { 
		["ProductViewDetail"] = ProductViewDetail,
		["TagOptions"] = TagOptions,
		["ProvisioningArtifactSummaries"] = ProvisioningArtifactSummaries,
		["Tags"] = Tags,
	}
	M.AssertDescribeProductAsAdminOutput(t)
	return t
end

local ListTagOptionsInput_keys = { "PageToken" = true, "PageSize" = true, "Filters" = true, nil }

function M.AssertListTagOptionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsInput to be of type 'table'")
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["Filters"] then M.AssertListTagOptionsFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(ListTagOptionsInput_keys[k], "ListTagOptionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsInput
--  
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param Filters [ListTagOptionsFilters] <p>The list of filters with which to limit search results. If no search filters are specified, the output is all TagOptions. </p>
function M.ListTagOptionsInput(PageToken, PageSize, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsInput")
	local t = { 
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["Filters"] = Filters,
	}
	M.AssertListTagOptionsInput(t)
	return t
end

local ListTagOptionsOutput_keys = { "PageToken" = true, "TagOptionDetails" = true, nil }

function M.AssertListTagOptionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagOptionsOutput to be of type 'table'")
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["TagOptionDetails"] then M.AssertTagOptionDetails(struct["TagOptionDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListTagOptionsOutput_keys[k], "ListTagOptionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagOptionsOutput
--  
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param TagOptionDetails [TagOptionDetails] <p>The resulting detailed TagOption information.</p>
function M.ListTagOptionsOutput(PageToken, TagOptionDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagOptionsOutput")
	local t = { 
		["PageToken"] = PageToken,
		["TagOptionDetails"] = TagOptionDetails,
	}
	M.AssertListTagOptionsOutput(t)
	return t
end

local DescribeProvisionedProductInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribeProvisionedProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisionedProductInput_keys[k], "DescribeProvisionedProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The provisioned product identifier.</p>
-- Required parameter: Id
function M.DescribeProvisionedProductInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisionedProductInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribeProvisionedProductInput(t)
	return t
end

local ListPrincipalsForPortfolioInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PortfolioId" = true, "PageSize" = true, nil }

function M.AssertListPrincipalsForPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalsForPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalsForPortfolioInput_keys[k], "ListPrincipalsForPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalsForPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- Required parameter: PortfolioId
function M.ListPrincipalsForPortfolioInput(AcceptLanguage, PageToken, PortfolioId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PortfolioId"] = PortfolioId,
		["PageSize"] = PageSize,
	}
	M.AssertListPrincipalsForPortfolioInput(t)
	return t
end

local ListPortfolioAccessOutput_keys = { "NextPageToken" = true, "AccountIds" = true, nil }

function M.AssertListPortfolioAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfolioAccessOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["AccountIds"] then M.AssertAccountIds(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfolioAccessOutput_keys[k], "ListPortfolioAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfolioAccessOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param AccountIds [AccountIds] <p>List of account IDs associated with access to the portfolio.</p>
function M.ListPortfolioAccessOutput(NextPageToken, AccountIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfolioAccessOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["AccountIds"] = AccountIds,
	}
	M.AssertListPortfolioAccessOutput(t)
	return t
end

local LaunchPathSummary_keys = { "Name" = true, "ConstraintSummaries" = true, "Id" = true, "Tags" = true, nil }

function M.AssertLaunchPathSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LaunchPathSummary to be of type 'table'")
	if struct["Name"] then M.AssertPortfolioName(struct["Name"]) end
	if struct["ConstraintSummaries"] then M.AssertConstraintSummaries(struct["ConstraintSummaries"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(LaunchPathSummary_keys[k], "LaunchPathSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LaunchPathSummary
-- <p>Summary information about a path for a user to have access to a specified product.</p>
-- @param Name [PortfolioName] <p>Corresponds to the name of the portfolio to which the user was assigned.</p>
-- @param ConstraintSummaries [ConstraintSummaries] <p>List of constraints on the portfolio-product relationship.</p>
-- @param Id [Id] <p>The unique identifier of the product path.</p>
-- @param Tags [Tags] <p>List of tags used by this launch path.</p>
function M.LaunchPathSummary(Name, ConstraintSummaries, Id, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LaunchPathSummary")
	local t = { 
		["Name"] = Name,
		["ConstraintSummaries"] = ConstraintSummaries,
		["Id"] = Id,
		["Tags"] = Tags,
	}
	M.AssertLaunchPathSummary(t)
	return t
end

local DisassociateTagOptionFromResourceOutput_keys = { nil }

function M.AssertDisassociateTagOptionFromResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTagOptionFromResourceOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateTagOptionFromResourceOutput_keys[k], "DisassociateTagOptionFromResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTagOptionFromResourceOutput
--  
function M.DisassociateTagOptionFromResourceOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTagOptionFromResourceOutput")
	local t = { 
	}
	M.AssertDisassociateTagOptionFromResourceOutput(t)
	return t
end

local DisassociatePrincipalFromPortfolioOutput_keys = { nil }

function M.AssertDisassociatePrincipalFromPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociatePrincipalFromPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociatePrincipalFromPortfolioOutput_keys[k], "DisassociatePrincipalFromPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociatePrincipalFromPortfolioOutput
--  
function M.DisassociatePrincipalFromPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociatePrincipalFromPortfolioOutput")
	local t = { 
	}
	M.AssertDisassociatePrincipalFromPortfolioOutput(t)
	return t
end

local ListAcceptedPortfolioSharesInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, nil }

function M.AssertListAcceptedPortfolioSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAcceptedPortfolioSharesInput to be of type 'table'")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListAcceptedPortfolioSharesInput_keys[k], "ListAcceptedPortfolioSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAcceptedPortfolioSharesInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
function M.ListAcceptedPortfolioSharesInput(AcceptLanguage, PageToken, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAcceptedPortfolioSharesInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
	}
	M.AssertListAcceptedPortfolioSharesInput(t)
	return t
end

local DescribeProvisioningArtifactOutput_keys = { "ProvisioningArtifactDetail" = true, "Info" = true, "Status" = true, nil }

function M.AssertDescribeProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then M.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then M.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisioningArtifactOutput_keys[k], "DescribeProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisioningArtifactOutput
--  
-- @param ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>Detailed provisioning artifact information.</p>
-- @param Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact.</p>
-- @param Status [Status] <p>The status of the current request.</p>
function M.DescribeProvisioningArtifactOutput(ProvisioningArtifactDetail, Info, Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = ProvisioningArtifactDetail,
		["Info"] = Info,
		["Status"] = Status,
	}
	M.AssertDescribeProvisioningArtifactOutput(t)
	return t
end

local AssociatePrincipalWithPortfolioOutput_keys = { nil }

function M.AssertAssociatePrincipalWithPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatePrincipalWithPortfolioOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociatePrincipalWithPortfolioOutput_keys[k], "AssociatePrincipalWithPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatePrincipalWithPortfolioOutput
--  
function M.AssociatePrincipalWithPortfolioOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociatePrincipalWithPortfolioOutput")
	local t = { 
	}
	M.AssertAssociatePrincipalWithPortfolioOutput(t)
	return t
end

local ListAcceptedPortfolioSharesOutput_keys = { "NextPageToken" = true, "PortfolioDetails" = true, nil }

function M.AssertListAcceptedPortfolioSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAcceptedPortfolioSharesOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["PortfolioDetails"] then M.AssertPortfolioDetails(struct["PortfolioDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListAcceptedPortfolioSharesOutput_keys[k], "ListAcceptedPortfolioSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAcceptedPortfolioSharesOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param PortfolioDetails [PortfolioDetails] <p>List of detailed portfolio information objects.</p>
function M.ListAcceptedPortfolioSharesOutput(NextPageToken, PortfolioDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAcceptedPortfolioSharesOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["PortfolioDetails"] = PortfolioDetails,
	}
	M.AssertListAcceptedPortfolioSharesOutput(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource was not found.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local AcceptPortfolioShareInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, nil }

function M.AssertAcceptPortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptPortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(AcceptPortfolioShareInput_keys[k], "AcceptPortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptPortfolioShareInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.AcceptPortfolioShareInput(AcceptLanguage, PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptPortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
	}
	M.AssertAcceptPortfolioShareInput(t)
	return t
end

local DescribeProvisionedProductOutput_keys = { "ProvisionedProductDetail" = true, nil }

function M.AssertDescribeProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProvisionedProductOutput to be of type 'table'")
	if struct["ProvisionedProductDetail"] then M.AssertProvisionedProductDetail(struct["ProvisionedProductDetail"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProvisionedProductOutput_keys[k], "DescribeProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProvisionedProductOutput
--  
-- @param ProvisionedProductDetail [ProvisionedProductDetail] <p>Detailed provisioned product information.</p>
function M.DescribeProvisionedProductOutput(ProvisionedProductDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProvisionedProductOutput")
	local t = { 
		["ProvisionedProductDetail"] = ProvisionedProductDetail,
	}
	M.AssertDescribeProvisionedProductOutput(t)
	return t
end

local TagOptionDetail_keys = { "Active" = true, "Value" = true, "Key" = true, "Id" = true, nil }

function M.AssertTagOptionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOptionDetail to be of type 'table'")
	if struct["Active"] then M.AssertTagOptionActive(struct["Active"]) end
	if struct["Value"] then M.AssertTagOptionValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagOptionKey(struct["Key"]) end
	if struct["Id"] then M.AssertTagOptionId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(TagOptionDetail_keys[k], "TagOptionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOptionDetail
-- <p>The TagOption details.</p>
-- @param Active [TagOptionActive] <p>The TagOptionDetail active state.</p>
-- @param Value [TagOptionValue] <p>The TagOptionDetail value.</p>
-- @param Key [TagOptionKey] <p>The TagOptionDetail key.</p>
-- @param Id [TagOptionId] <p>The TagOptionDetail identifier.</p>
function M.TagOptionDetail(Active, Value, Key, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagOptionDetail")
	local t = { 
		["Active"] = Active,
		["Value"] = Value,
		["Key"] = Key,
		["Id"] = Id,
	}
	M.AssertTagOptionDetail(t)
	return t
end

local ListRecordHistoryOutput_keys = { "NextPageToken" = true, "RecordDetails" = true, nil }

function M.AssertListRecordHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistoryOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["RecordDetails"] then M.AssertRecordDetails(struct["RecordDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListRecordHistoryOutput_keys[k], "ListRecordHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistoryOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param RecordDetails [RecordDetails] <p>A list of record detail objects, listed in reverse chronological order.</p>
function M.ListRecordHistoryOutput(NextPageToken, RecordDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistoryOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["RecordDetails"] = RecordDetails,
	}
	M.AssertListRecordHistoryOutput(t)
	return t
end

local SearchProductsOutput_keys = { "NextPageToken" = true, "ProductViewAggregations" = true, "ProductViewSummaries" = true, nil }

function M.AssertSearchProductsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProductViewAggregations"] then M.AssertProductViewAggregations(struct["ProductViewAggregations"]) end
	if struct["ProductViewSummaries"] then M.AssertProductViewSummaries(struct["ProductViewSummaries"]) end
	for k,_ in pairs(struct) do
		assert(SearchProductsOutput_keys[k], "SearchProductsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param ProductViewAggregations [ProductViewAggregations] <p>A list of the product view aggregation value objects.</p>
-- @param ProductViewSummaries [ProductViewSummaries] <p>A list of the product view summary objects.</p>
function M.SearchProductsOutput(NextPageToken, ProductViewAggregations, ProductViewSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["ProductViewAggregations"] = ProductViewAggregations,
		["ProductViewSummaries"] = ProductViewSummaries,
	}
	M.AssertSearchProductsOutput(t)
	return t
end

local CreateProvisioningArtifactInput_keys = { "AcceptLanguage" = true, "IdempotencyToken" = true, "Parameters" = true, "ProductId" = true, nil }

function M.AssertCreateProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Parameters"] then M.AssertProvisioningArtifactProperties(struct["Parameters"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(CreateProvisioningArtifactInput_keys[k], "CreateProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisioningArtifactInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param Parameters [ProvisioningArtifactProperties] <p>The parameters to use when creating the new provisioning artifact.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: Parameters
-- Required parameter: IdempotencyToken
function M.CreateProvisioningArtifactInput(AcceptLanguage, IdempotencyToken, Parameters, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["IdempotencyToken"] = IdempotencyToken,
		["Parameters"] = Parameters,
		["ProductId"] = ProductId,
	}
	M.AssertCreateProvisioningArtifactInput(t)
	return t
end

local DescribeConstraintOutput_keys = { "Status" = true, "ConstraintParameters" = true, "ConstraintDetail" = true, nil }

function M.AssertDescribeConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConstraintOutput to be of type 'table'")
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then M.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then M.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConstraintOutput_keys[k], "DescribeConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConstraintOutput
--  
-- @param Status [Status] <p>The status of the current request.</p>
-- @param ConstraintParameters [ConstraintParameters] <p>The current parameters associated with the specified constraint.</p>
-- @param ConstraintDetail [ConstraintDetail] <p>Detailed constraint information.</p>
function M.DescribeConstraintOutput(Status, ConstraintParameters, ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConstraintOutput")
	local t = { 
		["Status"] = Status,
		["ConstraintParameters"] = ConstraintParameters,
		["ConstraintDetail"] = ConstraintDetail,
	}
	M.AssertDescribeConstraintOutput(t)
	return t
end

local CreatePortfolioOutput_keys = { "PortfolioDetail" = true, "Tags" = true, nil }

function M.AssertCreatePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioOutput to be of type 'table'")
	if struct["PortfolioDetail"] then M.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreatePortfolioOutput_keys[k], "CreatePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioOutput
--  
-- @param PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- @param Tags [Tags] <p>Tags successfully associated with the new portfolio.</p>
function M.CreatePortfolioOutput(PortfolioDetail, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = PortfolioDetail,
		["Tags"] = Tags,
	}
	M.AssertCreatePortfolioOutput(t)
	return t
end

local AcceptPortfolioShareOutput_keys = { nil }

function M.AssertAcceptPortfolioShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptPortfolioShareOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AcceptPortfolioShareOutput_keys[k], "AcceptPortfolioShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptPortfolioShareOutput
--  
function M.AcceptPortfolioShareOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptPortfolioShareOutput")
	local t = { 
	}
	M.AssertAcceptPortfolioShareOutput(t)
	return t
end

local UpdateConstraintInput_keys = { "AcceptLanguage" = true, "Id" = true, "Description" = true, nil }

function M.AssertUpdateConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Description"] then M.AssertConstraintDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConstraintInput_keys[k], "UpdateConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConstraintInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the constraint to update.</p>
-- @param Description [ConstraintDescription] <p>The updated text description of the constraint.</p>
-- Required parameter: Id
function M.UpdateConstraintInput(AcceptLanguage, Id, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConstraintInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
		["Description"] = Description,
	}
	M.AssertUpdateConstraintInput(t)
	return t
end

local ListRecordHistorySearchFilter_keys = { "Value" = true, "Key" = true, nil }

function M.AssertListRecordHistorySearchFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistorySearchFilter to be of type 'table'")
	if struct["Value"] then M.AssertSearchFilterValue(struct["Value"]) end
	if struct["Key"] then M.AssertSearchFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ListRecordHistorySearchFilter_keys[k], "ListRecordHistorySearchFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistorySearchFilter
-- <p>The search filter to limit results when listing request history records.</p>
-- @param Value [SearchFilterValue] <p>The filter value for <code>Key</code>.</p>
-- @param Key [SearchFilterKey] <p>The filter key.</p>
function M.ListRecordHistorySearchFilter(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistorySearchFilter")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertListRecordHistorySearchFilter(t)
	return t
end

local DescribePortfolioInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePortfolioInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribePortfolioInput_keys[k], "DescribePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the portfolio for which to retrieve information.</p>
-- Required parameter: Id
function M.DescribePortfolioInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribePortfolioInput(t)
	return t
end

local DescribeTagOptionInput_keys = { "Id" = true, nil }

function M.AssertDescribeTagOptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagOptionInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertTagOptionId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagOptionInput_keys[k], "DescribeTagOptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagOptionInput
--  
-- @param Id [TagOptionId] <p>The identifier of the TagOption.</p>
-- Required parameter: Id
function M.DescribeTagOptionInput(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagOptionInput")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDescribeTagOptionInput(t)
	return t
end

local CreateConstraintInput_keys = { "PortfolioId" = true, "Description" = true, "Parameters" = true, "IdempotencyToken" = true, "AcceptLanguage" = true, "Type" = true, "ProductId" = true, nil }

function M.AssertCreateConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConstraintInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["Description"] then M.AssertConstraintDescription(struct["Description"]) end
	if struct["Parameters"] then M.AssertConstraintParameters(struct["Parameters"]) end
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Type"] then M.AssertConstraintType(struct["Type"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(CreateConstraintInput_keys[k], "CreateConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConstraintInput
--  
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param Description [ConstraintDescription] <p>The text description of the constraint.</p>
-- @param Parameters [ConstraintParameters] <p>The constraint parameters. Expected values vary depending on which <b>Type</b> is specified. For examples, see the bottom of this topic.</p> <p>For Type <code>LAUNCH</code>, the <code>RoleArn</code> property is required. </p> <p>For Type <code>NOTIFICATION</code>, the <code>NotificationArns</code> property is required.</p> <p>For Type <code>TEMPLATE</code>, the <code>Rules</code> property is required.</p>
-- @param IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Type [ConstraintType] <p>The type of the constraint. Case-sensitive valid values are: <code>LAUNCH</code>, <code>NOTIFICATION</code>, or <code>TEMPLATE</code>. </p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: ProductId
-- Required parameter: Parameters
-- Required parameter: Type
-- Required parameter: IdempotencyToken
function M.CreateConstraintInput(PortfolioId, Description, Parameters, IdempotencyToken, AcceptLanguage, Type, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConstraintInput")
	local t = { 
		["PortfolioId"] = PortfolioId,
		["Description"] = Description,
		["Parameters"] = Parameters,
		["IdempotencyToken"] = IdempotencyToken,
		["AcceptLanguage"] = AcceptLanguage,
		["Type"] = Type,
		["ProductId"] = ProductId,
	}
	M.AssertCreateConstraintInput(t)
	return t
end

local AssociateTagOptionWithResourceInput_keys = { "ResourceId" = true, "TagOptionId" = true, nil }

function M.AssertAssociateTagOptionWithResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTagOptionWithResourceInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagOptionId"], "Expected key TagOptionId to exist in table")
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["TagOptionId"] then M.AssertTagOptionId(struct["TagOptionId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateTagOptionWithResourceInput_keys[k], "AssociateTagOptionWithResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTagOptionWithResourceInput
--  
-- @param ResourceId [ResourceId] <p>The resource identifier.</p>
-- @param TagOptionId [TagOptionId] <p>The TagOption identifier.</p>
-- Required parameter: ResourceId
-- Required parameter: TagOptionId
function M.AssociateTagOptionWithResourceInput(ResourceId, TagOptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTagOptionWithResourceInput")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagOptionId"] = TagOptionId,
	}
	M.AssertAssociateTagOptionWithResourceInput(t)
	return t
end

local DeletePortfolioShareInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, "AccountId" = true, nil }

function M.AssertDeletePortfolioShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePortfolioShareInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePortfolioShareInput_keys[k], "DeletePortfolioShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePortfolioShareInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param AccountId [AccountId] <p>The account ID associated with the share to delete.</p>
-- Required parameter: PortfolioId
-- Required parameter: AccountId
function M.DeletePortfolioShareInput(AcceptLanguage, PortfolioId, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePortfolioShareInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
		["AccountId"] = AccountId,
	}
	M.AssertDeletePortfolioShareInput(t)
	return t
end

local CreateProvisioningArtifactOutput_keys = { "ProvisioningArtifactDetail" = true, "Info" = true, "Status" = true, nil }

function M.AssertCreateProvisioningArtifactOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProvisioningArtifactOutput to be of type 'table'")
	if struct["ProvisioningArtifactDetail"] then M.AssertProvisioningArtifactDetail(struct["ProvisioningArtifactDetail"]) end
	if struct["Info"] then M.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(CreateProvisioningArtifactOutput_keys[k], "CreateProvisioningArtifactOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProvisioningArtifactOutput
--  
-- @param ProvisioningArtifactDetail [ProvisioningArtifactDetail] <p>The resulting detailed provisioning artifact information.</p>
-- @param Info [ProvisioningArtifactInfo] <p>Additional information about the creation request for the provisioning artifact.</p>
-- @param Status [Status] <p>The status of the current request.</p>
function M.CreateProvisioningArtifactOutput(ProvisioningArtifactDetail, Info, Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProvisioningArtifactOutput")
	local t = { 
		["ProvisioningArtifactDetail"] = ProvisioningArtifactDetail,
		["Info"] = Info,
		["Status"] = Status,
	}
	M.AssertCreateProvisioningArtifactOutput(t)
	return t
end

local CreateTagOptionOutput_keys = { "TagOptionDetail" = true, nil }

function M.AssertCreateTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagOptionOutput to be of type 'table'")
	if struct["TagOptionDetail"] then M.AssertTagOptionDetail(struct["TagOptionDetail"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagOptionOutput_keys[k], "CreateTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagOptionOutput
--  
-- @param TagOptionDetail [TagOptionDetail] <p>The resulting detailed TagOption information.</p>
function M.CreateTagOptionOutput(TagOptionDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagOptionOutput")
	local t = { 
		["TagOptionDetail"] = TagOptionDetail,
	}
	M.AssertCreateTagOptionOutput(t)
	return t
end

local DeleteConstraintOutput_keys = { nil }

function M.AssertDeleteConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConstraintOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteConstraintOutput_keys[k], "DeleteConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConstraintOutput
--  
function M.DeleteConstraintOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConstraintOutput")
	local t = { 
	}
	M.AssertDeleteConstraintOutput(t)
	return t
end

local ListRecordHistoryInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, "SearchFilter" = true, "AccessLevelFilter" = true, nil }

function M.AssertListRecordHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordHistoryInput to be of type 'table'")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["SearchFilter"] then M.AssertListRecordHistorySearchFilter(struct["SearchFilter"]) end
	if struct["AccessLevelFilter"] then M.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	for k,_ in pairs(struct) do
		assert(ListRecordHistoryInput_keys[k], "ListRecordHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordHistoryInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param SearchFilter [ListRecordHistorySearchFilter] <p>The filter to limit search results. </p>
-- @param AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
function M.ListRecordHistoryInput(AcceptLanguage, PageToken, PageSize, SearchFilter, AccessLevelFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordHistoryInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["SearchFilter"] = SearchFilter,
		["AccessLevelFilter"] = AccessLevelFilter,
	}
	M.AssertListRecordHistoryInput(t)
	return t
end

local ProductViewDetail_keys = { "ProductViewSummary" = true, "Status" = true, "ProductARN" = true, "CreatedTime" = true, nil }

function M.AssertProductViewDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductViewDetail to be of type 'table'")
	if struct["ProductViewSummary"] then M.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	if struct["ProductARN"] then M.AssertResourceARN(struct["ProductARN"]) end
	if struct["CreatedTime"] then M.AssertCreatedTime(struct["CreatedTime"]) end
	for k,_ in pairs(struct) do
		assert(ProductViewDetail_keys[k], "ProductViewDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductViewDetail
-- <p>Detailed product view information.</p>
-- @param ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product view.</p>
-- @param Status [Status] <p>Current status of the product.</p> <p> <code>AVAILABLE</code> - Product is available for use.</p> <p> <code>CREATING</code> - Creation of product started, not ready for use.</p> <p> <code>FAILED</code> - Action on product failed.</p>
-- @param ProductARN [ResourceARN] <p>The ARN associated with the product.</p>
-- @param CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
function M.ProductViewDetail(ProductViewSummary, Status, ProductARN, CreatedTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProductViewDetail")
	local t = { 
		["ProductViewSummary"] = ProductViewSummary,
		["Status"] = Status,
		["ProductARN"] = ProductARN,
		["CreatedTime"] = CreatedTime,
	}
	M.AssertProductViewDetail(t)
	return t
end

local DescribeProductViewOutput_keys = { "ProductViewSummary" = true, "ProvisioningArtifacts" = true, nil }

function M.AssertDescribeProductViewOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductViewOutput to be of type 'table'")
	if struct["ProductViewSummary"] then M.AssertProductViewSummary(struct["ProductViewSummary"]) end
	if struct["ProvisioningArtifacts"] then M.AssertProvisioningArtifacts(struct["ProvisioningArtifacts"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductViewOutput_keys[k], "DescribeProductViewOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductViewOutput
--  
-- @param ProductViewSummary [ProductViewSummary] <p>The summary metadata about the specified product.</p>
-- @param ProvisioningArtifacts [ProvisioningArtifacts] <p>A list of provisioning artifact objects for the specified product. The <code>ProvisioningArtifacts</code> represent the ways in which the specified product can be provisioned.</p>
function M.DescribeProductViewOutput(ProductViewSummary, ProvisioningArtifacts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductViewOutput")
	local t = { 
		["ProductViewSummary"] = ProductViewSummary,
		["ProvisioningArtifacts"] = ProvisioningArtifacts,
	}
	M.AssertDescribeProductViewOutput(t)
	return t
end

local UpdatePortfolioOutput_keys = { "PortfolioDetail" = true, "Tags" = true, nil }

function M.AssertUpdatePortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePortfolioOutput to be of type 'table'")
	if struct["PortfolioDetail"] then M.AssertPortfolioDetail(struct["PortfolioDetail"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePortfolioOutput_keys[k], "UpdatePortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePortfolioOutput
--  
-- @param PortfolioDetail [PortfolioDetail] <p>The resulting detailed portfolio information.</p>
-- @param Tags [Tags] <p>Tags associated with the portfolio.</p>
function M.UpdatePortfolioOutput(PortfolioDetail, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePortfolioOutput")
	local t = { 
		["PortfolioDetail"] = PortfolioDetail,
		["Tags"] = Tags,
	}
	M.AssertUpdatePortfolioOutput(t)
	return t
end

local ListPrincipalsForPortfolioOutput_keys = { "NextPageToken" = true, "Principals" = true, nil }

function M.AssertListPrincipalsForPortfolioOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalsForPortfolioOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["Principals"] then M.AssertPrincipals(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalsForPortfolioOutput_keys[k], "ListPrincipalsForPortfolioOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalsForPortfolioOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param Principals [Principals] <p>The IAM principals (users or roles) associated with the portfolio.</p>
function M.ListPrincipalsForPortfolioOutput(NextPageToken, Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalsForPortfolioOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["Principals"] = Principals,
	}
	M.AssertListPrincipalsForPortfolioOutput(t)
	return t
end

local UpdateProvisioningParameter_keys = { "Value" = true, "Key" = true, "UsePreviousValue" = true, nil }

function M.AssertUpdateProvisioningParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisioningParameter to be of type 'table'")
	if struct["Value"] then M.AssertParameterValue(struct["Value"]) end
	if struct["Key"] then M.AssertParameterKey(struct["Key"]) end
	if struct["UsePreviousValue"] then M.AssertUsePreviousValue(struct["UsePreviousValue"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProvisioningParameter_keys[k], "UpdateProvisioningParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisioningParameter
-- <p>The parameter key-value pair used to update a ProvisionedProduct object. If <code>UsePreviousValue</code> is set to true, <code>Value</code> is ignored and the value for <code>Key</code> is kept as previously set (current value).</p>
-- @param Value [ParameterValue] <p>The value to use for updating the product provisioning. Any constraints on this value can be found in the <code>ProvisioningArtifactParameter</code> parameter for <code>Key</code>.</p>
-- @param Key [ParameterKey] <p>The <code>ProvisioningArtifactParameter.ParameterKey</code> parameter from <a>DescribeProvisioningParameters</a>.</p>
-- @param UsePreviousValue [UsePreviousValue] <p>If true, uses the currently set value for <code>Key</code>, ignoring <code>UpdateProvisioningParameter.Value</code>.</p>
function M.UpdateProvisioningParameter(Value, Key, UsePreviousValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisioningParameter")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
		["UsePreviousValue"] = UsePreviousValue,
	}
	M.AssertUpdateProvisioningParameter(t)
	return t
end

local DisassociatePrincipalFromPortfolioInput_keys = { "AcceptLanguage" = true, "PrincipalARN" = true, "PortfolioId" = true, nil }

function M.AssertDisassociatePrincipalFromPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociatePrincipalFromPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	assert(struct["PrincipalARN"], "Expected key PrincipalARN to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PrincipalARN"] then M.AssertPrincipalARN(struct["PrincipalARN"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociatePrincipalFromPortfolioInput_keys[k], "DisassociatePrincipalFromPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociatePrincipalFromPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
-- Required parameter: PrincipalARN
function M.DisassociatePrincipalFromPortfolioInput(AcceptLanguage, PrincipalARN, PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociatePrincipalFromPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PrincipalARN"] = PrincipalARN,
		["PortfolioId"] = PortfolioId,
	}
	M.AssertDisassociatePrincipalFromPortfolioInput(t)
	return t
end

local ListProvisioningArtifactsOutput_keys = { "NextPageToken" = true, "ProvisioningArtifactDetails" = true, nil }

function M.AssertListProvisioningArtifactsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisioningArtifactsOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProvisioningArtifactDetails"] then M.AssertProvisioningArtifactDetails(struct["ProvisioningArtifactDetails"]) end
	for k,_ in pairs(struct) do
		assert(ListProvisioningArtifactsOutput_keys[k], "ListProvisioningArtifactsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisioningArtifactsOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param ProvisioningArtifactDetails [ProvisioningArtifactDetails] <p>List of detailed provisioning artifact information objects.</p>
function M.ListProvisioningArtifactsOutput(NextPageToken, ProvisioningArtifactDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisioningArtifactsOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["ProvisioningArtifactDetails"] = ProvisioningArtifactDetails,
	}
	M.AssertListProvisioningArtifactsOutput(t)
	return t
end

local ScanProvisionedProductsInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, "AccessLevelFilter" = true, nil }

function M.AssertScanProvisionedProductsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanProvisionedProductsInput to be of type 'table'")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["AccessLevelFilter"] then M.AssertAccessLevelFilter(struct["AccessLevelFilter"]) end
	for k,_ in pairs(struct) do
		assert(ScanProvisionedProductsInput_keys[k], "ScanProvisionedProductsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanProvisionedProductsInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param AccessLevelFilter [AccessLevelFilter] <p>The access level for obtaining results. If left unspecified, <code>User</code> level access is used.</p>
function M.ScanProvisionedProductsInput(AcceptLanguage, PageToken, PageSize, AccessLevelFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanProvisionedProductsInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["AccessLevelFilter"] = AccessLevelFilter,
	}
	M.AssertScanProvisionedProductsInput(t)
	return t
end

local ListResourcesForTagOptionOutput_keys = { "ResourceDetails" = true, "PageToken" = true, nil }

function M.AssertListResourcesForTagOptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesForTagOptionOutput to be of type 'table'")
	if struct["ResourceDetails"] then M.AssertResourceDetails(struct["ResourceDetails"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	for k,_ in pairs(struct) do
		assert(ListResourcesForTagOptionOutput_keys[k], "ListResourcesForTagOptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesForTagOptionOutput
--  
-- @param ResourceDetails [ResourceDetails] <p>The resulting detailed resource information.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
function M.ListResourcesForTagOptionOutput(ResourceDetails, PageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesForTagOptionOutput")
	local t = { 
		["ResourceDetails"] = ResourceDetails,
		["PageToken"] = PageToken,
	}
	M.AssertListResourcesForTagOptionOutput(t)
	return t
end

local ProvisionedProductDetail_keys = { "Status" = true, "Name" = true, "LastRecordId" = true, "IdempotencyToken" = true, "Arn" = true, "CreatedTime" = true, "Type" = true, "Id" = true, "StatusMessage" = true, nil }

function M.AssertProvisionedProductDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedProductDetail to be of type 'table'")
	if struct["Status"] then M.AssertProvisionedProductStatus(struct["Status"]) end
	if struct["Name"] then M.AssertProvisionedProductNameOrArn(struct["Name"]) end
	if struct["LastRecordId"] then M.AssertLastRequestId(struct["LastRecordId"]) end
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["Arn"] then M.AssertProvisionedProductNameOrArn(struct["Arn"]) end
	if struct["CreatedTime"] then M.AssertCreatedTime(struct["CreatedTime"]) end
	if struct["Type"] then M.AssertProvisionedProductType(struct["Type"]) end
	if struct["Id"] then M.AssertProvisionedProductId(struct["Id"]) end
	if struct["StatusMessage"] then M.AssertProvisionedProductStatusMessage(struct["StatusMessage"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedProductDetail_keys[k], "ProvisionedProductDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedProductDetail
-- <p>Detailed information about a ProvisionedProduct object.</p>
-- @param Status [ProvisionedProductStatus] <p>The current status of the ProvisionedProduct.</p> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent action request succeeded and completed.</p> <p> <code>UNDER_CHANGE</code> - Transitive state, operations performed may or may not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version. </p> <p> <code>ERROR</code> - Something unexpected happened such that the provisioned product exists but the stack is not running. For example, CloudFormation received an invalid parameter value and could not launch the stack.</p>
-- @param Name [ProvisionedProductNameOrArn] <p>The user-friendly name of the ProvisionedProduct object.</p>
-- @param LastRecordId [LastRequestId] <p>The record identifier of the last request performed on this ProvisionedProduct object.</p>
-- @param IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param Arn [ProvisionedProductNameOrArn] <p>The ARN associated with the ProvisionedProduct object.</p>
-- @param CreatedTime [CreatedTime] <p>The UTC timestamp of the creation time.</p>
-- @param Type [ProvisionedProductType] <p>The type of the ProvisionedProduct object.</p>
-- @param Id [ProvisionedProductId] <p>The identifier of the ProvisionedProduct object.</p>
-- @param StatusMessage [ProvisionedProductStatusMessage] <p>The current status message of the ProvisionedProduct.</p>
function M.ProvisionedProductDetail(Status, Name, LastRecordId, IdempotencyToken, Arn, CreatedTime, Type, Id, StatusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedProductDetail")
	local t = { 
		["Status"] = Status,
		["Name"] = Name,
		["LastRecordId"] = LastRecordId,
		["IdempotencyToken"] = IdempotencyToken,
		["Arn"] = Arn,
		["CreatedTime"] = CreatedTime,
		["Type"] = Type,
		["Id"] = Id,
		["StatusMessage"] = StatusMessage,
	}
	M.AssertProvisionedProductDetail(t)
	return t
end

local ProvisioningArtifactProperties_keys = { "Info" = true, "Type" = true, "Name" = true, "Description" = true, nil }

function M.AssertProvisioningArtifactProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactProperties to be of type 'table'")
	assert(struct["Info"], "Expected key Info to exist in table")
	if struct["Info"] then M.AssertProvisioningArtifactInfo(struct["Info"]) end
	if struct["Type"] then M.AssertProvisioningArtifactType(struct["Type"]) end
	if struct["Name"] then M.AssertProvisioningArtifactName(struct["Name"]) end
	if struct["Description"] then M.AssertProvisioningArtifactDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningArtifactProperties_keys[k], "ProvisioningArtifactProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactProperties
-- <p>Provisioning artifact properties. For example request JSON, see <a>CreateProvisioningArtifact</a>.</p>
-- @param Info [ProvisioningArtifactInfo] <p>Additional information about the provisioning artifact properties. When using this element in a request, you must specify <code>LoadTemplateFromURL</code>. For more information, see <a>CreateProvisioningArtifact</a>.</p>
-- @param Type [ProvisioningArtifactType] <p>The type of the provisioning artifact properties. The following provisioning artifact property types are used by AWS Marketplace products:</p> <p> <code>MARKETPLACE_AMI</code> - AMI products.</p> <p> <code>MARKETPLACE_CAR</code> - CAR (Cluster and AWS Resources) products.</p>
-- @param Name [ProvisioningArtifactName] <p>The name assigned to the provisioning artifact properties.</p>
-- @param Description [ProvisioningArtifactDescription] <p>The text description of the provisioning artifact properties.</p>
-- Required parameter: Info
function M.ProvisioningArtifactProperties(Info, Type, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactProperties")
	local t = { 
		["Info"] = Info,
		["Type"] = Type,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertProvisioningArtifactProperties(t)
	return t
end

local UpdateProvisionedProductOutput_keys = { "RecordDetail" = true, nil }

function M.AssertUpdateProvisionedProductOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProvisionedProductOutput to be of type 'table'")
	if struct["RecordDetail"] then M.AssertRecordDetail(struct["RecordDetail"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProvisionedProductOutput_keys[k], "UpdateProvisionedProductOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProvisionedProductOutput
--  
-- @param RecordDetail [RecordDetail] <p>The detailed result of the <a>UpdateProvisionedProduct</a> request, containing the inputs made to that request, the current state of the request, a pointer to the ProvisionedProduct object that the request is modifying, and a list of any errors that the request encountered.</p>
function M.UpdateProvisionedProductOutput(RecordDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProvisionedProductOutput")
	local t = { 
		["RecordDetail"] = RecordDetail,
	}
	M.AssertUpdateProvisionedProductOutput(t)
	return t
end

local UpdateConstraintOutput_keys = { "Status" = true, "ConstraintParameters" = true, "ConstraintDetail" = true, nil }

function M.AssertUpdateConstraintOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConstraintOutput to be of type 'table'")
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	if struct["ConstraintParameters"] then M.AssertConstraintParameters(struct["ConstraintParameters"]) end
	if struct["ConstraintDetail"] then M.AssertConstraintDetail(struct["ConstraintDetail"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConstraintOutput_keys[k], "UpdateConstraintOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConstraintOutput
--  
-- @param Status [Status] <p>The status of the current request.</p>
-- @param ConstraintParameters [ConstraintParameters] <p>The resulting updated constraint parameters.</p>
-- @param ConstraintDetail [ConstraintDetail] <p>The resulting detailed constraint information.</p>
function M.UpdateConstraintOutput(Status, ConstraintParameters, ConstraintDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConstraintOutput")
	local t = { 
		["Status"] = Status,
		["ConstraintParameters"] = ConstraintParameters,
		["ConstraintDetail"] = ConstraintDetail,
	}
	M.AssertUpdateConstraintOutput(t)
	return t
end

local DeleteConstraintInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDeleteConstraintInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConstraintInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConstraintInput_keys[k], "DeleteConstraintInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConstraintInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The identifier of the constraint to delete.</p>
-- Required parameter: Id
function M.DeleteConstraintInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConstraintInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDeleteConstraintInput(t)
	return t
end

local ListPortfolioAccessInput_keys = { "AcceptLanguage" = true, "PortfolioId" = true, nil }

function M.AssertListPortfolioAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPortfolioAccessInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	for k,_ in pairs(struct) do
		assert(ListPortfolioAccessInput_keys[k], "ListPortfolioAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPortfolioAccessInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- Required parameter: PortfolioId
function M.ListPortfolioAccessInput(AcceptLanguage, PortfolioId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPortfolioAccessInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PortfolioId"] = PortfolioId,
	}
	M.AssertListPortfolioAccessInput(t)
	return t
end

local AssociateTagOptionWithResourceOutput_keys = { nil }

function M.AssertAssociateTagOptionWithResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTagOptionWithResourceOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociateTagOptionWithResourceOutput_keys[k], "AssociateTagOptionWithResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTagOptionWithResourceOutput
--  
function M.AssociateTagOptionWithResourceOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTagOptionWithResourceOutput")
	local t = { 
	}
	M.AssertAssociateTagOptionWithResourceOutput(t)
	return t
end

local ListConstraintsForPortfolioInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PortfolioId" = true, "PageSize" = true, "ProductId" = true, nil }

function M.AssertListConstraintsForPortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConstraintsForPortfolioInput to be of type 'table'")
	assert(struct["PortfolioId"], "Expected key PortfolioId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PortfolioId"] then M.AssertId(struct["PortfolioId"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ListConstraintsForPortfolioInput_keys[k], "ListConstraintsForPortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConstraintsForPortfolioInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PortfolioId [Id] <p>The portfolio identifier.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: PortfolioId
function M.ListConstraintsForPortfolioInput(AcceptLanguage, PageToken, PortfolioId, PageSize, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConstraintsForPortfolioInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PortfolioId"] = PortfolioId,
		["PageSize"] = PageSize,
		["ProductId"] = ProductId,
	}
	M.AssertListConstraintsForPortfolioInput(t)
	return t
end

local DescribeProductInput_keys = { "AcceptLanguage" = true, "Id" = true, nil }

function M.AssertDescribeProductInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProductInput to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProductInput_keys[k], "DescribeProductInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProductInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param Id [Id] <p>The <code>ProductId</code> of the product to describe.</p>
-- Required parameter: Id
function M.DescribeProductInput(AcceptLanguage, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProductInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["Id"] = Id,
	}
	M.AssertDescribeProductInput(t)
	return t
end

local CreatePortfolioInput_keys = { "DisplayName" = true, "Description" = true, "ProviderName" = true, "Tags" = true, "IdempotencyToken" = true, "AcceptLanguage" = true, nil }

function M.AssertCreatePortfolioInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePortfolioInput to be of type 'table'")
	assert(struct["DisplayName"], "Expected key DisplayName to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	assert(struct["IdempotencyToken"], "Expected key IdempotencyToken to exist in table")
	if struct["DisplayName"] then M.AssertPortfolioDisplayName(struct["DisplayName"]) end
	if struct["Description"] then M.AssertPortfolioDescription(struct["Description"]) end
	if struct["ProviderName"] then M.AssertProviderName(struct["ProviderName"]) end
	if struct["Tags"] then M.AssertAddTags(struct["Tags"]) end
	if struct["IdempotencyToken"] then M.AssertIdempotencyToken(struct["IdempotencyToken"]) end
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	for k,_ in pairs(struct) do
		assert(CreatePortfolioInput_keys[k], "CreatePortfolioInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePortfolioInput
--  
-- @param DisplayName [PortfolioDisplayName] <p>The name to use for display purposes.</p>
-- @param Description [PortfolioDescription] <p>The text description of the portfolio.</p>
-- @param ProviderName [ProviderName] <p>The name of the portfolio provider.</p>
-- @param Tags [AddTags] <p>Tags to associate with the new portfolio.</p>
-- @param IdempotencyToken [IdempotencyToken] <p>A token to disambiguate duplicate requests. You can create multiple resources using the same input in multiple requests, provided that you also specify a different idempotency token for each request.</p>
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- Required parameter: DisplayName
-- Required parameter: ProviderName
-- Required parameter: IdempotencyToken
function M.CreatePortfolioInput(DisplayName, Description, ProviderName, Tags, IdempotencyToken, AcceptLanguage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePortfolioInput")
	local t = { 
		["DisplayName"] = DisplayName,
		["Description"] = Description,
		["ProviderName"] = ProviderName,
		["Tags"] = Tags,
		["IdempotencyToken"] = IdempotencyToken,
		["AcceptLanguage"] = AcceptLanguage,
	}
	M.AssertCreatePortfolioInput(t)
	return t
end

local SearchProductsAsAdminOutput_keys = { "NextPageToken" = true, "ProductViewDetails" = true, nil }

function M.AssertSearchProductsAsAdminOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProductsAsAdminOutput to be of type 'table'")
	if struct["NextPageToken"] then M.AssertPageToken(struct["NextPageToken"]) end
	if struct["ProductViewDetails"] then M.AssertProductViewDetails(struct["ProductViewDetails"]) end
	for k,_ in pairs(struct) do
		assert(SearchProductsAsAdminOutput_keys[k], "SearchProductsAsAdminOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProductsAsAdminOutput
--  
-- @param NextPageToken [PageToken] <p>The page token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
-- @param ProductViewDetails [ProductViewDetails] <p>List of detailed product view information objects.</p>
function M.SearchProductsAsAdminOutput(NextPageToken, ProductViewDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchProductsAsAdminOutput")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["ProductViewDetails"] = ProductViewDetails,
	}
	M.AssertSearchProductsAsAdminOutput(t)
	return t
end

local ProvisioningArtifactParameter_keys = { "ParameterType" = true, "ParameterConstraints" = true, "Description" = true, "DefaultValue" = true, "IsNoEcho" = true, "ParameterKey" = true, nil }

function M.AssertProvisioningArtifactParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisioningArtifactParameter to be of type 'table'")
	if struct["ParameterType"] then M.AssertParameterType(struct["ParameterType"]) end
	if struct["ParameterConstraints"] then M.AssertParameterConstraints(struct["ParameterConstraints"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["DefaultValue"] then M.AssertDefaultValue(struct["DefaultValue"]) end
	if struct["IsNoEcho"] then M.AssertNoEcho(struct["IsNoEcho"]) end
	if struct["ParameterKey"] then M.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(ProvisioningArtifactParameter_keys[k], "ProvisioningArtifactParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisioningArtifactParameter
-- <p>A parameter used to successfully provision the product. This value includes a list of allowable values and additional metadata. </p>
-- @param ParameterType [ParameterType] <p>The parameter type.</p>
-- @param ParameterConstraints [ParameterConstraints] <p>The list of constraints that the administrator has put on the parameter.</p>
-- @param Description [Description] <p>The text description of the parameter.</p>
-- @param DefaultValue [DefaultValue] <p>The default value for this parameter.</p>
-- @param IsNoEcho [NoEcho] <p>If this value is true, the value for this parameter is obfuscated from view when the parameter is retrieved. This parameter is used to hide sensitive information.</p>
-- @param ParameterKey [ParameterKey] <p>The parameter key. </p>
function M.ProvisioningArtifactParameter(ParameterType, ParameterConstraints, Description, DefaultValue, IsNoEcho, ParameterKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisioningArtifactParameter")
	local t = { 
		["ParameterType"] = ParameterType,
		["ParameterConstraints"] = ParameterConstraints,
		["Description"] = Description,
		["DefaultValue"] = DefaultValue,
		["IsNoEcho"] = IsNoEcho,
		["ParameterKey"] = ParameterKey,
	}
	M.AssertProvisioningArtifactParameter(t)
	return t
end

local DeleteProvisioningArtifactInput_keys = { "AcceptLanguage" = true, "ProvisioningArtifactId" = true, "ProductId" = true, nil }

function M.AssertDeleteProvisioningArtifactInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProvisioningArtifactInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["ProvisioningArtifactId"], "Expected key ProvisioningArtifactId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["ProvisioningArtifactId"] then M.AssertId(struct["ProvisioningArtifactId"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProvisioningArtifactInput_keys[k], "DeleteProvisioningArtifactInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProvisioningArtifactInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param ProvisioningArtifactId [Id] <p>The identifier of the provisioning artifact for the delete request. This is sometimes referred to as the product version.</p>
-- @param ProductId [Id] <p>The product identifier.</p>
-- Required parameter: ProductId
-- Required parameter: ProvisioningArtifactId
function M.DeleteProvisioningArtifactInput(AcceptLanguage, ProvisioningArtifactId, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProvisioningArtifactInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["ProvisioningArtifactId"] = ProvisioningArtifactId,
		["ProductId"] = ProductId,
	}
	M.AssertDeleteProvisioningArtifactInput(t)
	return t
end

local ListLaunchPathsInput_keys = { "AcceptLanguage" = true, "PageToken" = true, "PageSize" = true, "ProductId" = true, nil }

function M.AssertListLaunchPathsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLaunchPathsInput to be of type 'table'")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	if struct["AcceptLanguage"] then M.AssertAcceptLanguage(struct["AcceptLanguage"]) end
	if struct["PageToken"] then M.AssertPageToken(struct["PageToken"]) end
	if struct["PageSize"] then M.AssertPageSize(struct["PageSize"]) end
	if struct["ProductId"] then M.AssertId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(ListLaunchPathsInput_keys[k], "ListLaunchPathsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLaunchPathsInput
--  
-- @param AcceptLanguage [AcceptLanguage] <p>The language code to use for this operation. Supported language codes are as follows:</p> <p>"en" (English)</p> <p>"jp" (Japanese)</p> <p>"zh" (Chinese)</p> <p>If no code is specified, "en" is used as the default.</p>
-- @param PageToken [PageToken] <p>The page token of the first page retrieved. If null, this retrieves the first page of size <code>PageSize</code>.</p>
-- @param PageSize [PageSize] <p>The maximum number of items to return in the results. If more results exist than fit in the specified <code>PageSize</code>, the value of <code>NextPageToken</code> in the response is non-null.</p>
-- @param ProductId [Id] <p>The product identifier. Identifies the product for which to retrieve <code>LaunchPathSummaries</code> information.</p>
-- Required parameter: ProductId
function M.ListLaunchPathsInput(AcceptLanguage, PageToken, PageSize, ProductId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLaunchPathsInput")
	local t = { 
		["AcceptLanguage"] = AcceptLanguage,
		["PageToken"] = PageToken,
		["PageSize"] = PageSize,
		["ProductId"] = ProductId,
	}
	M.AssertListLaunchPathsInput(t)
	return t
end

local Principal_keys = { "PrincipalType" = true, "PrincipalARN" = true, nil }

function M.AssertPrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Principal to be of type 'table'")
	if struct["PrincipalType"] then M.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalARN"] then M.AssertPrincipalARN(struct["PrincipalARN"]) end
	for k,_ in pairs(struct) do
		assert(Principal_keys[k], "Principal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Principal
-- <p>A principal's ARN and type.</p>
-- @param PrincipalType [PrincipalType] <p>The principal type. Must be <code>IAM</code> </p>
-- @param PrincipalARN [PrincipalARN] <p>The ARN representing the principal (IAM user, role, or group).</p>
function M.Principal(PrincipalType, PrincipalARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Principal")
	local t = { 
		["PrincipalType"] = PrincipalType,
		["PrincipalARN"] = PrincipalARN,
	}
	M.AssertPrincipal(t)
	return t
end

function M.AssertResourceDetailId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailId to be of type 'string'")
end

--  
function M.ResourceDetailId(str)
	M.AssertResourceDetailId(str)
	return str
end

function M.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProviderName(str)
	M.AssertProviderName(str)
	return str
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertProvisionedProductName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9][a-zA-Z0-9._-]*"), "Expected string to match pattern '[a-zA-Z0-9][a-zA-Z0-9._-]*'")
end

--  
function M.ProvisionedProductName(str)
	M.AssertProvisionedProductName(str)
	return str
end

function M.AssertRecordType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordType to be of type 'string'")
end

--  
function M.RecordType(str)
	M.AssertRecordType(str)
	return str
end

function M.AssertAccessLevelFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLevelFilterKey to be of type 'string'")
end

--  
function M.AccessLevelFilterKey(str)
	M.AssertAccessLevelFilterKey(str)
	return str
end

function M.AssertProvisionedProductStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductStatusMessage to be of type 'string'")
end

--  
function M.ProvisionedProductStatusMessage(str)
	M.AssertProvisionedProductStatusMessage(str)
	return str
end

function M.AssertProductViewFilterBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewFilterBy to be of type 'string'")
end

--  
function M.ProductViewFilterBy(str)
	M.AssertProductViewFilterBy(str)
	return str
end

function M.AssertProvisionedProductStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductStatus to be of type 'string'")
end

--  
function M.ProvisionedProductStatus(str)
	M.AssertProvisionedProductStatus(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(str:match("^[0-9]{12}$"), "Expected string to match pattern '^[0-9]{12}$'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertProductViewSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewSortBy to be of type 'string'")
end

--  
function M.ProductViewSortBy(str)
	M.AssertProductViewSortBy(str)
	return str
end

function M.AssertProductSource(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductSource to be of type 'string'")
end

--  
function M.ProductSource(str)
	M.AssertProductSource(str)
	return str
end

function M.AssertPrincipalType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalType to be of type 'string'")
end

--  
function M.PrincipalType(str)
	M.AssertPrincipalType(str)
	return str
end

function M.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(str:match("[%u0009%u000a%u000d%u0020-%uD7FF%uE000-%uFFFD]*"), "Expected string to match pattern '[%u0009%u000a%u000d%u0020-%uD7FF%uE000-%uFFFD]*'")
end

--  
function M.PageToken(str)
	M.AssertPageToken(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertRecordTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordTagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$'")
end

--  
function M.RecordTagValue(str)
	M.AssertRecordTagValue(str)
	return str
end

function M.AssertResourceDetailName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailName to be of type 'string'")
end

--  
function M.ResourceDetailName(str)
	M.AssertResourceDetailName(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertTagOptionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagOptionKey(str)
	M.AssertTagOptionKey(str)
	return str
end

function M.AssertPrincipalARN(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalARN to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrincipalARN(str)
	M.AssertPrincipalARN(str)
	return str
end

function M.AssertProductViewOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewOwner to be of type 'string'")
end

--  
function M.ProductViewOwner(str)
	M.AssertProductViewOwner(str)
	return str
end

function M.AssertProvisioningArtifactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactName to be of type 'string'")
end

--  
function M.ProvisioningArtifactName(str)
	M.AssertProvisioningArtifactName(str)
	return str
end

function M.AssertProductViewName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewName to be of type 'string'")
end

--  
function M.ProductViewName(str)
	M.AssertProductViewName(str)
	return str
end

function M.AssertProvisionedProductType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductType to be of type 'string'")
end

--  
function M.ProvisionedProductType(str)
	M.AssertProvisionedProductType(str)
	return str
end

function M.AssertProductViewAggregationType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewAggregationType to be of type 'string'")
end

--  
function M.ProductViewAggregationType(str)
	M.AssertProductViewAggregationType(str)
	return str
end

function M.AssertLastRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected LastRequestId to be of type 'string'")
end

--  
function M.LastRequestId(str)
	M.AssertLastRequestId(str)
	return str
end

function M.AssertTagOptionId(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagOptionId(str)
	M.AssertTagOptionId(str)
	return str
end

function M.AssertProductViewShortDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewShortDescription to be of type 'string'")
end

--  
function M.ProductViewShortDescription(str)
	M.AssertProductViewShortDescription(str)
	return str
end

function M.AssertConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConstraintType(str)
	M.AssertConstraintType(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertSearchFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchFilterKey to be of type 'string'")
end

--  
function M.SearchFilterKey(str)
	M.AssertSearchFilterKey(str)
	return str
end

function M.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	M.AssertStatus(str)
	return str
end

function M.AssertProvisionedProductId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductId to be of type 'string'")
end

--  
function M.ProvisionedProductId(str)
	M.AssertProvisionedProductId(str)
	return str
end

function M.AssertProvisioningArtifactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactType to be of type 'string'")
end

--  
function M.ProvisioningArtifactType(str)
	M.AssertProvisioningArtifactType(str)
	return str
end

function M.AssertAllowedValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedValue to be of type 'string'")
end

--  
function M.AllowedValue(str)
	M.AssertAllowedValue(str)
	return str
end

function M.AssertErrorDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorDescription to be of type 'string'")
end

--  
function M.ErrorDescription(str)
	M.AssertErrorDescription(str)
	return str
end

function M.AssertPortfolioDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioDescription to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.PortfolioDescription(str)
	M.AssertPortfolioDescription(str)
	return str
end

function M.AssertParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterValue to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.ParameterValue(str)
	M.AssertParameterValue(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertResourceDetailARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailARN to be of type 'string'")
end

--  
function M.ResourceDetailARN(str)
	M.AssertResourceDetailARN(str)
	return str
end

function M.AssertAcceptLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected AcceptLanguage to be of type 'string'")
end

--  
function M.AcceptLanguage(str)
	M.AssertAcceptLanguage(str)
	return str
end

function M.AssertRecordStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordStatus to be of type 'string'")
end

--  
function M.RecordStatus(str)
	M.AssertRecordStatus(str)
	return str
end

function M.AssertProvisioningArtifactInfoValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactInfoValue to be of type 'string'")
end

--  
function M.ProvisioningArtifactInfoValue(str)
	M.AssertProvisioningArtifactInfoValue(str)
	return str
end

function M.AssertSupportEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportEmail to be of type 'string'")
end

--  
function M.SupportEmail(str)
	M.AssertSupportEmail(str)
	return str
end

function M.AssertInstructionType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstructionType to be of type 'string'")
end

--  
function M.InstructionType(str)
	M.AssertInstructionType(str)
	return str
end

function M.AssertPortfolioDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioDisplayName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PortfolioDisplayName(str)
	M.AssertPortfolioDisplayName(str)
	return str
end

function M.AssertProvisionedProductNameOrArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisionedProductNameOrArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-%.]{1,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[^/].{0,1023}"), "Expected string to match pattern '[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-%.]{1,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[^/].{0,1023}'")
end

--  
function M.ProvisionedProductNameOrArn(str)
	M.AssertProvisionedProductNameOrArn(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterKey(str)
	M.AssertParameterKey(str)
	return str
end

function M.AssertConstraintDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintDescription to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.ConstraintDescription(str)
	M.AssertConstraintDescription(str)
	return str
end

function M.AssertOutputValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputValue to be of type 'string'")
end

--  
function M.OutputValue(str)
	M.AssertOutputValue(str)
	return str
end

function M.AssertProvisioningArtifactDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactDescription to be of type 'string'")
end

--  
function M.ProvisioningArtifactDescription(str)
	M.AssertProvisioningArtifactDescription(str)
	return str
end

function M.AssertSupportUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportUrl to be of type 'string'")
end

--  
function M.SupportUrl(str)
	M.AssertSupportUrl(str)
	return str
end

function M.AssertSearchFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchFilterValue to be of type 'string'")
end

--  
function M.SearchFilterValue(str)
	M.AssertSearchFilterValue(str)
	return str
end

function M.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	M.AssertParameterType(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertPortfolioName(str)
	assert(str)
	assert(type(str) == "string", "Expected PortfolioName to be of type 'string'")
end

--  
function M.PortfolioName(str)
	M.AssertPortfolioName(str)
	return str
end

function M.AssertRecordTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordTagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$'")
end

--  
function M.RecordTagKey(str)
	M.AssertRecordTagKey(str)
	return str
end

function M.AssertConstraintParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintParameters to be of type 'string'")
end

--  
function M.ConstraintParameters(str)
	M.AssertConstraintParameters(str)
	return str
end

function M.AssertProvisioningArtifactInfoKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ProvisioningArtifactInfoKey to be of type 'string'")
end

--  
function M.ProvisioningArtifactInfoKey(str)
	M.AssertProvisioningArtifactInfoKey(str)
	return str
end

function M.AssertProductType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductType to be of type 'string'")
end

--  
function M.ProductType(str)
	M.AssertProductType(str)
	return str
end

function M.AssertResourceDetailDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDetailDescription to be of type 'string'")
end

--  
function M.ResourceDetailDescription(str)
	M.AssertResourceDetailDescription(str)
	return str
end

function M.AssertInstructionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstructionValue to be of type 'string'")
end

--  
function M.InstructionValue(str)
	M.AssertInstructionValue(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertAccessLevelFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessLevelFilterValue to be of type 'string'")
end

--  
function M.AccessLevelFilterValue(str)
	M.AssertAccessLevelFilterValue(str)
	return str
end

function M.AssertOutputKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputKey to be of type 'string'")
end

--  
function M.OutputKey(str)
	M.AssertOutputKey(str)
	return str
end

function M.AssertDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultValue to be of type 'string'")
end

--  
function M.DefaultValue(str)
	M.AssertDefaultValue(str)
	return str
end

function M.AssertTagOptionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagOptionValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagOptionValue(str)
	M.AssertTagOptionValue(str)
	return str
end

function M.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9][a-zA-Z0-9_-]*"), "Expected string to match pattern '[a-zA-Z0-9][a-zA-Z0-9_-]*'")
end

--  
function M.IdempotencyToken(str)
	M.AssertIdempotencyToken(str)
	return str
end

function M.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	M.AssertSortOrder(str)
	return str
end

function M.AssertProductViewFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewFilterValue to be of type 'string'")
end

--  
function M.ProductViewFilterValue(str)
	M.AssertProductViewFilterValue(str)
	return str
end

function M.AssertSupportDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportDescription to be of type 'string'")
end

--  
function M.SupportDescription(str)
	M.AssertSupportDescription(str)
	return str
end

function M.AssertProductViewDistributor(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductViewDistributor to be of type 'string'")
end

--  
function M.ProductViewDistributor(str)
	M.AssertProductViewDistributor(str)
	return str
end

function M.AssertNotificationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:[a-z0-9-%.]{1,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[^/].{0,1023}"), "Expected string to match pattern 'arn:[a-z0-9-%.]{1,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[a-z0-9-%.]{0,63}:[^/].{0,1023}'")
end

--  
function M.NotificationArn(str)
	M.AssertNotificationArn(str)
	return str
end

function M.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Id(str)
	M.AssertId(str)
	return str
end

function M.AssertApproximateCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ApproximateCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ApproximateCount(integer)
	M.AssertApproximateCount(integer)
	return integer
end

function M.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
end

function M.PageSize(integer)
	M.AssertPageSize(integer)
	return integer
end

function M.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	M.AssertUsePreviousValue(boolean)
	return boolean
end

function M.AssertNoEcho(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoEcho to be of type 'boolean'")
end

function M.NoEcho(boolean)
	M.AssertNoEcho(boolean)
	return boolean
end

function M.AssertIgnoreErrors(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IgnoreErrors to be of type 'boolean'")
end

function M.IgnoreErrors(boolean)
	M.AssertIgnoreErrors(boolean)
	return boolean
end

function M.AssertHasDefaultPath(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HasDefaultPath to be of type 'boolean'")
end

function M.HasDefaultPath(boolean)
	M.AssertHasDefaultPath(boolean)
	return boolean
end

function M.AssertTagOptionActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TagOptionActive to be of type 'boolean'")
end

function M.TagOptionActive(boolean)
	M.AssertTagOptionActive(boolean)
	return boolean
end

function M.AssertVerbose(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Verbose to be of type 'boolean'")
end

function M.Verbose(boolean)
	M.AssertVerbose(boolean)
	return boolean
end

function M.AssertProductViewFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected ProductViewFilters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertProductViewFilterBy(k)
		M.AssertProductViewFilterValues(v)
	end
end

function M.ProductViewFilters(map)
	M.AssertProductViewFilters(map)
	return map
end

function M.AssertProvisioningArtifactInfo(map)
	assert(map)
	assert(type(map) == "table", "Expected ProvisioningArtifactInfo to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertProvisioningArtifactInfoKey(k)
		M.AssertProvisioningArtifactInfoValue(v)
	end
end

function M.ProvisioningArtifactInfo(map)
	M.AssertProvisioningArtifactInfo(map)
	return map
end

function M.AssertProductViewAggregations(map)
	assert(map)
	assert(type(map) == "table", "Expected ProductViewAggregations to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertProductViewAggregationType(k)
		M.AssertProductViewAggregationValues(v)
	end
end

function M.ProductViewAggregations(map)
	M.AssertProductViewAggregations(map)
	return map
end

function M.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	M.AssertCreationTime(timestamp)
	return timestamp
end

function M.AssertCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTime to be of type 'string'")
end

function M.CreatedTime(timestamp)
	M.AssertCreatedTime(timestamp)
	return timestamp
end

function M.AssertProvisioningArtifactCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ProvisioningArtifactCreatedTime to be of type 'string'")
end

function M.ProvisioningArtifactCreatedTime(timestamp)
	M.AssertProvisioningArtifactCreatedTime(timestamp)
	return timestamp
end

function M.AssertResourceDetailCreatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResourceDetailCreatedTime to be of type 'string'")
end

function M.ResourceDetailCreatedTime(timestamp)
	M.AssertResourceDetailCreatedTime(timestamp)
	return timestamp
end

function M.AssertUpdatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected UpdatedTime to be of type 'string'")
end

function M.UpdatedTime(timestamp)
	M.AssertUpdatedTime(timestamp)
	return timestamp
end

function M.AssertConstraintDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ConstraintDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConstraintDetail(v)
	end
end

--  
-- List of ConstraintDetail objects
function M.ConstraintDetails(list)
	M.AssertConstraintDetails(list)
	return list
end

function M.AssertTagOptionDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagOptionDetail(v)
	end
end

--  
-- List of TagOptionDetail objects
function M.TagOptionDetails(list)
	M.AssertTagOptionDetails(list)
	return list
end

function M.AssertAccountIds(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.AccountIds(list)
	M.AssertAccountIds(list)
	return list
end

function M.AssertRecordOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordOutputs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecordOutput(v)
	end
end

--  
-- List of RecordOutput objects
function M.RecordOutputs(list)
	M.AssertRecordOutputs(list)
	return list
end

function M.AssertConstraintSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ConstraintSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConstraintSummary(v)
	end
end

--  
-- List of ConstraintSummary objects
function M.ConstraintSummaries(list)
	M.AssertConstraintSummaries(list)
	return list
end

function M.AssertUsageInstructions(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageInstructions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUsageInstruction(v)
	end
end

--  
-- List of UsageInstruction objects
function M.UsageInstructions(list)
	M.AssertUsageInstructions(list)
	return list
end

function M.AssertPortfolioDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected PortfolioDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPortfolioDetail(v)
	end
end

--  
-- List of PortfolioDetail objects
function M.PortfolioDetails(list)
	M.AssertPortfolioDetails(list)
	return list
end

function M.AssertPrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected Principals to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPrincipal(v)
	end
end

--  
-- List of Principal objects
function M.Principals(list)
	M.AssertPrincipals(list)
	return list
end

function M.AssertRecordTags(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordTags to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertRecordTag(v)
	end
end

--  
-- List of RecordTag objects
function M.RecordTags(list)
	M.AssertRecordTags(list)
	return list
end

function M.AssertRecordDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecordDetail(v)
	end
end

--  
-- List of RecordDetail objects
function M.RecordDetails(list)
	M.AssertRecordDetails(list)
	return list
end

function M.AssertAddTags(list)
	assert(list)
	assert(type(list) == "table", "Expected AddTags to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.AddTags(list)
	M.AssertAddTags(list)
	return list
end

function M.AssertProductViewDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProductViewDetail(v)
	end
end

--  
-- List of ProductViewDetail objects
function M.ProductViewDetails(list)
	M.AssertProductViewDetails(list)
	return list
end

function M.AssertProvisioningArtifacts(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifacts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisioningArtifact(v)
	end
end

--  
-- List of ProvisioningArtifact objects
function M.ProvisioningArtifacts(list)
	M.AssertProvisioningArtifacts(list)
	return list
end

function M.AssertAllowedValues(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAllowedValue(v)
	end
end

--  
-- List of AllowedValue objects
function M.AllowedValues(list)
	M.AssertAllowedValues(list)
	return list
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertProductViewFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProductViewFilterValue(v)
	end
end

--  
-- List of ProductViewFilterValue objects
function M.ProductViewFilterValues(list)
	M.AssertProductViewFilterValues(list)
	return list
end

function M.AssertNotificationArns(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationArns to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertNotificationArn(v)
	end
end

--  
-- List of NotificationArn objects
function M.NotificationArns(list)
	M.AssertNotificationArns(list)
	return list
end

function M.AssertProvisioningArtifactDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisioningArtifactDetail(v)
	end
end

--  
-- List of ProvisioningArtifactDetail objects
function M.ProvisioningArtifactDetails(list)
	M.AssertProvisioningArtifactDetails(list)
	return list
end

function M.AssertProvisionedProductDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedProductDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisionedProductDetail(v)
	end
end

--  
-- List of ProvisionedProductDetail objects
function M.ProvisionedProductDetails(list)
	M.AssertProvisionedProductDetails(list)
	return list
end

function M.AssertTagOptionValues(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagOptionValue(v)
	end
end

--  
-- List of TagOptionValue objects
function M.TagOptionValues(list)
	M.AssertTagOptionValues(list)
	return list
end

function M.AssertProvisioningArtifactParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactParameters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisioningArtifactParameter(v)
	end
end

--  
-- List of ProvisioningArtifactParameter objects
function M.ProvisioningArtifactParameters(list)
	M.AssertProvisioningArtifactParameters(list)
	return list
end

function M.AssertResourceDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceDetail(v)
	end
end

--  
-- List of ResourceDetail objects
function M.ResourceDetails(list)
	M.AssertResourceDetails(list)
	return list
end

function M.AssertProductViewAggregationValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewAggregationValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProductViewAggregationValue(v)
	end
end

--  
-- List of ProductViewAggregationValue objects
function M.ProductViewAggregationValues(list)
	M.AssertProductViewAggregationValues(list)
	return list
end

function M.AssertTagOptionSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TagOptionSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagOptionSummary(v)
	end
end

--  
-- List of TagOptionSummary objects
function M.TagOptionSummaries(list)
	M.AssertTagOptionSummaries(list)
	return list
end

function M.AssertRecordErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordErrors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecordError(v)
	end
end

--  
-- List of RecordError objects
function M.RecordErrors(list)
	M.AssertRecordErrors(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
	return list
end

function M.AssertLaunchPathSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected LaunchPathSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLaunchPathSummary(v)
	end
end

--  
-- List of LaunchPathSummary objects
function M.LaunchPathSummaries(list)
	M.AssertLaunchPathSummaries(list)
	return list
end

function M.AssertProvisioningParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningParameters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisioningParameter(v)
	end
end

--  
-- List of ProvisioningParameter objects
function M.ProvisioningParameters(list)
	M.AssertProvisioningParameters(list)
	return list
end

function M.AssertUpdateProvisioningParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected UpdateProvisioningParameters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUpdateProvisioningParameter(v)
	end
end

--  
-- List of UpdateProvisioningParameter objects
function M.UpdateProvisioningParameters(list)
	M.AssertUpdateProvisioningParameters(list)
	return list
end

function M.AssertProvisioningArtifactSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisioningArtifactSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisioningArtifactSummary(v)
	end
end

--  
-- List of ProvisioningArtifactSummary objects
function M.ProvisioningArtifactSummaries(list)
	M.AssertProvisioningArtifactSummaries(list)
	return list
end

function M.AssertProductViewSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductViewSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProductViewSummary(v)
	end
end

--  
-- List of ProductViewSummary objects
function M.ProductViewSummaries(list)
	M.AssertProductViewSummaries(list)
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
